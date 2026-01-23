; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383428 () Bool)

(assert start!383428)

(declare-fun b!4065127 () Bool)

(declare-fun b_free!113081 () Bool)

(declare-fun b_next!113785 () Bool)

(assert (=> b!4065127 (= b_free!113081 (not b_next!113785))))

(declare-fun tp!1230797 () Bool)

(declare-fun b_and!312483 () Bool)

(assert (=> b!4065127 (= tp!1230797 b_and!312483)))

(declare-fun b_free!113083 () Bool)

(declare-fun b_next!113787 () Bool)

(assert (=> b!4065127 (= b_free!113083 (not b_next!113787))))

(declare-fun tp!1230792 () Bool)

(declare-fun b_and!312485 () Bool)

(assert (=> b!4065127 (= tp!1230792 b_and!312485)))

(declare-fun b!4065130 () Bool)

(declare-fun b_free!113085 () Bool)

(declare-fun b_next!113789 () Bool)

(assert (=> b!4065130 (= b_free!113085 (not b_next!113789))))

(declare-fun tp!1230798 () Bool)

(declare-fun b_and!312487 () Bool)

(assert (=> b!4065130 (= tp!1230798 b_and!312487)))

(declare-fun b_free!113087 () Bool)

(declare-fun b_next!113791 () Bool)

(assert (=> b!4065130 (= b_free!113087 (not b_next!113791))))

(declare-fun tp!1230801 () Bool)

(declare-fun b_and!312489 () Bool)

(assert (=> b!4065130 (= tp!1230801 b_and!312489)))

(declare-fun b!4065117 () Bool)

(declare-datatypes ((Unit!62924 0))(
  ( (Unit!62925) )
))
(declare-fun e!2522737 () Unit!62924)

(declare-fun Unit!62926 () Unit!62924)

(assert (=> b!4065117 (= e!2522737 Unit!62926)))

(declare-datatypes ((C!23944 0))(
  ( (C!23945 (val!14066 Int)) )
))
(declare-datatypes ((List!43547 0))(
  ( (Nil!43423) (Cons!43423 (h!48843 C!23944) (t!336802 List!43547)) )
))
(declare-datatypes ((IArray!26375 0))(
  ( (IArray!26376 (innerList!13245 List!43547)) )
))
(declare-datatypes ((Conc!13185 0))(
  ( (Node!13185 (left!32666 Conc!13185) (right!32996 Conc!13185) (csize!26600 Int) (cheight!13396 Int)) (Leaf!20379 (xs!16491 IArray!26375) (csize!26601 Int)) (Empty!13185) )
))
(declare-datatypes ((BalanceConc!25964 0))(
  ( (BalanceConc!25965 (c!701936 Conc!13185)) )
))
(declare-datatypes ((List!43548 0))(
  ( (Nil!43424) (Cons!43424 (h!48844 (_ BitVec 16)) (t!336803 List!43548)) )
))
(declare-datatypes ((TokenValue!7204 0))(
  ( (FloatLiteralValue!14408 (text!50873 List!43548)) (TokenValueExt!7203 (__x!26625 Int)) (Broken!36020 (value!219367 List!43548)) (Object!7327) (End!7204) (Def!7204) (Underscore!7204) (Match!7204) (Else!7204) (Error!7204) (Case!7204) (If!7204) (Extends!7204) (Abstract!7204) (Class!7204) (Val!7204) (DelimiterValue!14408 (del!7264 List!43548)) (KeywordValue!7210 (value!219368 List!43548)) (CommentValue!14408 (value!219369 List!43548)) (WhitespaceValue!14408 (value!219370 List!43548)) (IndentationValue!7204 (value!219371 List!43548)) (String!49737) (Int32!7204) (Broken!36021 (value!219372 List!43548)) (Boolean!7205) (Unit!62927) (OperatorValue!7207 (op!7264 List!43548)) (IdentifierValue!14408 (value!219373 List!43548)) (IdentifierValue!14409 (value!219374 List!43548)) (WhitespaceValue!14409 (value!219375 List!43548)) (True!14408) (False!14408) (Broken!36022 (value!219376 List!43548)) (Broken!36023 (value!219377 List!43548)) (True!14409) (RightBrace!7204) (RightBracket!7204) (Colon!7204) (Null!7204) (Comma!7204) (LeftBracket!7204) (False!14409) (LeftBrace!7204) (ImaginaryLiteralValue!7204 (text!50874 List!43548)) (StringLiteralValue!21612 (value!219378 List!43548)) (EOFValue!7204 (value!219379 List!43548)) (IdentValue!7204 (value!219380 List!43548)) (DelimiterValue!14409 (value!219381 List!43548)) (DedentValue!7204 (value!219382 List!43548)) (NewLineValue!7204 (value!219383 List!43548)) (IntegerValue!21612 (value!219384 (_ BitVec 32)) (text!50875 List!43548)) (IntegerValue!21613 (value!219385 Int) (text!50876 List!43548)) (Times!7204) (Or!7204) (Equal!7204) (Minus!7204) (Broken!36024 (value!219386 List!43548)) (And!7204) (Div!7204) (LessEqual!7204) (Mod!7204) (Concat!19083) (Not!7204) (Plus!7204) (SpaceValue!7204 (value!219387 List!43548)) (IntegerValue!21614 (value!219388 Int) (text!50877 List!43548)) (StringLiteralValue!21613 (text!50878 List!43548)) (FloatLiteralValue!14409 (text!50879 List!43548)) (BytesLiteralValue!7204 (value!219389 List!43548)) (CommentValue!14409 (value!219390 List!43548)) (StringLiteralValue!21614 (value!219391 List!43548)) (ErrorTokenValue!7204 (msg!7265 List!43548)) )
))
(declare-datatypes ((Regex!11879 0))(
  ( (ElementMatch!11879 (c!701937 C!23944)) (Concat!19084 (regOne!24270 Regex!11879) (regTwo!24270 Regex!11879)) (EmptyExpr!11879) (Star!11879 (reg!12208 Regex!11879)) (EmptyLang!11879) (Union!11879 (regOne!24271 Regex!11879) (regTwo!24271 Regex!11879)) )
))
(declare-datatypes ((String!49738 0))(
  ( (String!49739 (value!219392 String)) )
))
(declare-datatypes ((TokenValueInjection!13836 0))(
  ( (TokenValueInjection!13837 (toValue!9534 Int) (toChars!9393 Int)) )
))
(declare-datatypes ((Rule!13748 0))(
  ( (Rule!13749 (regex!6974 Regex!11879) (tag!7834 String!49738) (isSeparator!6974 Bool) (transformation!6974 TokenValueInjection!13836)) )
))
(declare-datatypes ((Token!13086 0))(
  ( (Token!13087 (value!219393 TokenValue!7204) (rule!10072 Rule!13748) (size!32465 Int) (originalCharacters!7574 List!43547)) )
))
(declare-fun token!484 () Token!13086)

(declare-datatypes ((tuple2!42478 0))(
  ( (tuple2!42479 (_1!24373 Token!13086) (_2!24373 List!43547)) )
))
(declare-datatypes ((Option!9388 0))(
  ( (None!9387) (Some!9387 (v!39813 tuple2!42478)) )
))
(declare-fun lt!1453852 () Option!9388)

(declare-fun lt!1453861 () List!43547)

(declare-datatypes ((LexerInterface!6563 0))(
  ( (LexerInterfaceExt!6560 (__x!26626 Int)) (Lexer!6561) )
))
(declare-fun thiss!21717 () LexerInterface!6563)

(declare-datatypes ((List!43549 0))(
  ( (Nil!43425) (Cons!43425 (h!48845 Rule!13748) (t!336804 List!43549)) )
))
(declare-fun rules!2999 () List!43549)

(declare-fun lt!1453903 () List!43547)

(declare-fun lt!1453841 () Unit!62924)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!302 (LexerInterface!6563 List!43549 Rule!13748 List!43547 List!43547 Rule!13748) Unit!62924)

(assert (=> b!4065117 (= lt!1453841 (lemmaMaxPrefNoSmallerRuleMatches!302 thiss!21717 rules!2999 (rule!10072 token!484) lt!1453861 lt!1453903 (rule!10072 (_1!24373 (v!39813 lt!1453852)))))))

(declare-fun res!1658899 () Bool)

(declare-fun matchR!5832 (Regex!11879 List!43547) Bool)

(assert (=> b!4065117 (= res!1658899 (not (matchR!5832 (regex!6974 (rule!10072 (_1!24373 (v!39813 lt!1453852)))) lt!1453861)))))

(declare-fun e!2522733 () Bool)

(assert (=> b!4065117 (=> (not res!1658899) (not e!2522733))))

(assert (=> b!4065117 e!2522733))

(declare-fun b!4065118 () Bool)

(assert (=> b!4065118 (= e!2522733 false)))

(declare-fun b!4065119 () Bool)

(declare-fun e!2522716 () Bool)

(declare-fun e!2522710 () Bool)

(assert (=> b!4065119 (= e!2522716 e!2522710)))

(declare-fun res!1658884 () Bool)

(assert (=> b!4065119 (=> (not res!1658884) (not e!2522710))))

(declare-fun lt!1453875 () List!43547)

(declare-fun lt!1453845 () List!43547)

(assert (=> b!4065119 (= res!1658884 (= lt!1453875 lt!1453845))))

(declare-fun prefix!494 () List!43547)

(declare-fun newSuffix!27 () List!43547)

(declare-fun ++!11376 (List!43547 List!43547) List!43547)

(assert (=> b!4065119 (= lt!1453845 (++!11376 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43547)

(assert (=> b!4065119 (= lt!1453875 (++!11376 lt!1453861 newSuffixResult!27))))

(declare-fun b!4065121 () Bool)

(declare-fun e!2522713 () Unit!62924)

(declare-fun Unit!62928 () Unit!62924)

(assert (=> b!4065121 (= e!2522713 Unit!62928)))

(declare-fun lt!1453880 () List!43547)

(declare-fun lt!1453894 () Unit!62924)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!500 (LexerInterface!6563 List!43549 Rule!13748 List!43547 List!43547 List!43547 Rule!13748) Unit!62924)

(assert (=> b!4065121 (= lt!1453894 (lemmaMaxPrefixOutputsMaxPrefix!500 thiss!21717 rules!2999 (rule!10072 (_1!24373 (v!39813 lt!1453852))) lt!1453880 lt!1453845 lt!1453861 (rule!10072 token!484)))))

(assert (=> b!4065121 false))

(declare-fun b!4065122 () Bool)

(declare-fun res!1658889 () Bool)

(declare-fun e!2522745 () Bool)

(assert (=> b!4065122 (=> res!1658889 e!2522745)))

(declare-fun isPrefix!4061 (List!43547 List!43547) Bool)

(assert (=> b!4065122 (= res!1658889 (not (isPrefix!4061 lt!1453880 lt!1453845)))))

(declare-fun b!4065123 () Bool)

(declare-fun e!2522719 () Bool)

(declare-fun tp_is_empty!20729 () Bool)

(declare-fun tp!1230804 () Bool)

(assert (=> b!4065123 (= e!2522719 (and tp_is_empty!20729 tp!1230804))))

(declare-fun e!2522722 () Bool)

(declare-fun b!4065124 () Bool)

(declare-fun lt!1453872 () Int)

(assert (=> b!4065124 (= e!2522722 (and (= (size!32465 token!484) lt!1453872) (= (originalCharacters!7574 token!484) lt!1453861)))))

(declare-fun b!4065125 () Bool)

(declare-fun e!2522740 () Bool)

(assert (=> b!4065125 (= e!2522740 false)))

(assert (=> b!4065125 (not (matchR!5832 (regex!6974 (rule!10072 token!484)) lt!1453880))))

(declare-fun lt!1453889 () Unit!62924)

(assert (=> b!4065125 (= lt!1453889 (lemmaMaxPrefNoSmallerRuleMatches!302 thiss!21717 rules!2999 (rule!10072 (_1!24373 (v!39813 lt!1453852))) lt!1453880 lt!1453845 (rule!10072 token!484)))))

(declare-fun b!4065126 () Bool)

(declare-fun e!2522741 () Bool)

(declare-fun tp!1230799 () Bool)

(assert (=> b!4065126 (= e!2522741 (and tp_is_empty!20729 tp!1230799))))

(declare-fun e!2522744 () Bool)

(assert (=> b!4065127 (= e!2522744 (and tp!1230797 tp!1230792))))

(declare-fun b!4065128 () Bool)

(declare-fun tp!1230794 () Bool)

(declare-fun e!2522721 () Bool)

(declare-fun inv!58048 (String!49738) Bool)

(declare-fun inv!58051 (TokenValueInjection!13836) Bool)

(assert (=> b!4065128 (= e!2522721 (and tp!1230794 (inv!58048 (tag!7834 (rule!10072 token!484))) (inv!58051 (transformation!6974 (rule!10072 token!484))) e!2522744))))

(declare-fun b!4065129 () Bool)

(declare-fun e!2522728 () Bool)

(assert (=> b!4065129 (= e!2522728 e!2522716)))

(declare-fun res!1658873 () Bool)

(assert (=> b!4065129 (=> (not res!1658873) (not e!2522716))))

(declare-fun lt!1453877 () Int)

(assert (=> b!4065129 (= res!1658873 (>= lt!1453877 lt!1453872))))

(declare-fun size!32466 (List!43547) Int)

(assert (=> b!4065129 (= lt!1453872 (size!32466 lt!1453861))))

(assert (=> b!4065129 (= lt!1453877 (size!32466 prefix!494))))

(declare-fun list!16188 (BalanceConc!25964) List!43547)

(declare-fun charsOf!4790 (Token!13086) BalanceConc!25964)

(assert (=> b!4065129 (= lt!1453861 (list!16188 (charsOf!4790 token!484)))))

(declare-fun e!2522730 () Bool)

(assert (=> b!4065130 (= e!2522730 (and tp!1230798 tp!1230801))))

(declare-fun b!4065131 () Bool)

(declare-fun res!1658875 () Bool)

(assert (=> b!4065131 (=> (not res!1658875) (not e!2522722))))

(declare-fun lt!1453904 () TokenValue!7204)

(assert (=> b!4065131 (= res!1658875 (= (value!219393 token!484) lt!1453904))))

(declare-fun b!4065132 () Bool)

(declare-fun e!2522725 () Bool)

(declare-fun tp!1230800 () Bool)

(assert (=> b!4065132 (= e!2522725 (and tp_is_empty!20729 tp!1230800))))

(declare-fun b!4065133 () Bool)

(declare-fun e!2522723 () Bool)

(assert (=> b!4065133 (= e!2522723 e!2522745)))

(declare-fun res!1658877 () Bool)

(assert (=> b!4065133 (=> res!1658877 e!2522745)))

(declare-fun lt!1453879 () Int)

(assert (=> b!4065133 (= res!1658877 (not (= lt!1453872 lt!1453879)))))

(declare-fun lt!1453844 () Unit!62924)

(assert (=> b!4065133 (= lt!1453844 e!2522713)))

(declare-fun c!701933 () Bool)

(assert (=> b!4065133 (= c!701933 (< lt!1453879 lt!1453872))))

(declare-fun lt!1453901 () Unit!62924)

(declare-fun e!2522718 () Unit!62924)

(assert (=> b!4065133 (= lt!1453901 e!2522718)))

(declare-fun c!701935 () Bool)

(assert (=> b!4065133 (= c!701935 (> lt!1453879 lt!1453872))))

(declare-fun lt!1453849 () List!43547)

(assert (=> b!4065133 (= (_2!24373 (v!39813 lt!1453852)) lt!1453849)))

(declare-fun lt!1453892 () Unit!62924)

(declare-fun lemmaSamePrefixThenSameSuffix!2222 (List!43547 List!43547 List!43547 List!43547 List!43547) Unit!62924)

(assert (=> b!4065133 (= lt!1453892 (lemmaSamePrefixThenSameSuffix!2222 lt!1453880 (_2!24373 (v!39813 lt!1453852)) lt!1453880 lt!1453849 lt!1453845))))

(declare-fun lt!1453886 () List!43547)

(assert (=> b!4065133 (isPrefix!4061 lt!1453880 lt!1453886)))

(declare-fun lt!1453851 () Unit!62924)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2896 (List!43547 List!43547) Unit!62924)

(assert (=> b!4065133 (= lt!1453851 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453880 lt!1453849))))

(declare-fun b!4065134 () Bool)

(declare-fun e!2522729 () Bool)

(declare-fun e!2522711 () Bool)

(assert (=> b!4065134 (= e!2522729 e!2522711)))

(declare-fun res!1658890 () Bool)

(assert (=> b!4065134 (=> res!1658890 e!2522711)))

(declare-fun lt!1453864 () Option!9388)

(declare-fun lt!1453859 () Option!9388)

(assert (=> b!4065134 (= res!1658890 (not (= lt!1453864 lt!1453859)))))

(declare-fun lt!1453899 () Token!13086)

(declare-fun suffixResult!105 () List!43547)

(assert (=> b!4065134 (= lt!1453864 (Some!9387 (tuple2!42479 lt!1453899 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2873 (LexerInterface!6563 Rule!13748 List!43547) Option!9388)

(assert (=> b!4065134 (= lt!1453864 (maxPrefixOneRule!2873 thiss!21717 (rule!10072 token!484) lt!1453903))))

(assert (=> b!4065134 (= lt!1453899 (Token!13087 lt!1453904 (rule!10072 token!484) lt!1453872 lt!1453861))))

(declare-fun apply!10163 (TokenValueInjection!13836 BalanceConc!25964) TokenValue!7204)

(declare-fun seqFromList!5191 (List!43547) BalanceConc!25964)

(assert (=> b!4065134 (= lt!1453904 (apply!10163 (transformation!6974 (rule!10072 token!484)) (seqFromList!5191 lt!1453861)))))

(declare-fun lt!1453863 () Unit!62924)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1679 (LexerInterface!6563 List!43549 List!43547 List!43547 List!43547 Rule!13748) Unit!62924)

(assert (=> b!4065134 (= lt!1453863 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1679 thiss!21717 rules!2999 lt!1453861 lt!1453903 suffixResult!105 (rule!10072 token!484)))))

(declare-fun lt!1453887 () List!43547)

(assert (=> b!4065134 (= lt!1453887 suffixResult!105)))

(declare-fun lt!1453900 () Unit!62924)

(assert (=> b!4065134 (= lt!1453900 (lemmaSamePrefixThenSameSuffix!2222 lt!1453861 lt!1453887 lt!1453861 suffixResult!105 lt!1453903))))

(declare-fun lt!1453842 () List!43547)

(assert (=> b!4065134 (isPrefix!4061 lt!1453861 lt!1453842)))

(declare-fun lt!1453847 () Unit!62924)

(assert (=> b!4065134 (= lt!1453847 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453861 lt!1453887))))

(declare-fun b!4065135 () Bool)

(declare-fun e!2522734 () Bool)

(declare-fun e!2522715 () Bool)

(assert (=> b!4065135 (= e!2522734 e!2522715)))

(declare-fun res!1658882 () Bool)

(assert (=> b!4065135 (=> res!1658882 e!2522715)))

(assert (=> b!4065135 (= res!1658882 (not (isPrefix!4061 lt!1453861 lt!1453903)))))

(assert (=> b!4065135 (isPrefix!4061 prefix!494 lt!1453903)))

(declare-fun lt!1453854 () Unit!62924)

(declare-fun suffix!1299 () List!43547)

(assert (=> b!4065135 (= lt!1453854 (lemmaConcatTwoListThenFirstIsPrefix!2896 prefix!494 suffix!1299))))

(declare-fun lt!1453867 () List!43547)

(assert (=> b!4065135 (isPrefix!4061 lt!1453861 lt!1453867)))

(declare-fun lt!1453846 () Unit!62924)

(assert (=> b!4065135 (= lt!1453846 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453861 suffixResult!105))))

(declare-fun tp!1230796 () Bool)

(declare-fun e!2522735 () Bool)

(declare-fun b!4065136 () Bool)

(assert (=> b!4065136 (= e!2522735 (and tp!1230796 (inv!58048 (tag!7834 (h!48845 rules!2999))) (inv!58051 (transformation!6974 (h!48845 rules!2999))) e!2522730))))

(declare-fun b!4065137 () Bool)

(declare-fun res!1658902 () Bool)

(assert (=> b!4065137 (=> res!1658902 e!2522740)))

(assert (=> b!4065137 (= res!1658902 (not (matchR!5832 (regex!6974 (rule!10072 (_1!24373 (v!39813 lt!1453852)))) lt!1453880)))))

(declare-fun b!4065138 () Bool)

(declare-fun e!2522743 () Bool)

(declare-fun tp!1230802 () Bool)

(assert (=> b!4065138 (= e!2522743 (and tp_is_empty!20729 tp!1230802))))

(declare-fun b!4065139 () Bool)

(declare-fun e!2522731 () Bool)

(assert (=> b!4065139 (= e!2522731 (not e!2522734))))

(declare-fun res!1658900 () Bool)

(assert (=> b!4065139 (=> res!1658900 e!2522734)))

(assert (=> b!4065139 (= res!1658900 (not (= lt!1453867 lt!1453903)))))

(assert (=> b!4065139 (= lt!1453867 (++!11376 lt!1453861 suffixResult!105))))

(declare-fun lt!1453878 () Unit!62924)

(declare-fun lemmaInv!1183 (TokenValueInjection!13836) Unit!62924)

(assert (=> b!4065139 (= lt!1453878 (lemmaInv!1183 (transformation!6974 (rule!10072 token!484))))))

(declare-fun ruleValid!2904 (LexerInterface!6563 Rule!13748) Bool)

(assert (=> b!4065139 (ruleValid!2904 thiss!21717 (rule!10072 token!484))))

(declare-fun lt!1453865 () Unit!62924)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1974 (LexerInterface!6563 Rule!13748 List!43549) Unit!62924)

(assert (=> b!4065139 (= lt!1453865 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1974 thiss!21717 (rule!10072 token!484) rules!2999))))

(declare-fun tp!1230793 () Bool)

(declare-fun e!2522717 () Bool)

(declare-fun b!4065140 () Bool)

(declare-fun inv!21 (TokenValue!7204) Bool)

(assert (=> b!4065140 (= e!2522717 (and (inv!21 (value!219393 token!484)) e!2522721 tp!1230793))))

(declare-fun b!4065141 () Bool)

(declare-fun e!2522726 () Bool)

(declare-fun e!2522746 () Bool)

(assert (=> b!4065141 (= e!2522726 e!2522746)))

(declare-fun res!1658894 () Bool)

(assert (=> b!4065141 (=> res!1658894 e!2522746)))

(declare-fun lt!1453860 () List!43547)

(assert (=> b!4065141 (= res!1658894 (not (= lt!1453860 lt!1453903)))))

(declare-fun lt!1453882 () List!43547)

(assert (=> b!4065141 (= lt!1453860 (++!11376 lt!1453861 lt!1453882))))

(declare-fun getSuffix!2478 (List!43547 List!43547) List!43547)

(assert (=> b!4065141 (= lt!1453882 (getSuffix!2478 lt!1453903 lt!1453861))))

(assert (=> b!4065141 e!2522722))

(declare-fun res!1658898 () Bool)

(assert (=> b!4065141 (=> (not res!1658898) (not e!2522722))))

(assert (=> b!4065141 (= res!1658898 (isPrefix!4061 lt!1453903 lt!1453903))))

(declare-fun lt!1453896 () Unit!62924)

(declare-fun lemmaIsPrefixRefl!2628 (List!43547 List!43547) Unit!62924)

(assert (=> b!4065141 (= lt!1453896 (lemmaIsPrefixRefl!2628 lt!1453903 lt!1453903))))

(declare-fun b!4065142 () Bool)

(declare-fun e!2522739 () Bool)

(assert (=> b!4065142 (= e!2522739 false)))

(declare-fun b!4065143 () Bool)

(declare-fun e!2522708 () Bool)

(declare-fun e!2522712 () Bool)

(assert (=> b!4065143 (= e!2522708 e!2522712)))

(declare-fun res!1658880 () Bool)

(assert (=> b!4065143 (=> res!1658880 e!2522712)))

(declare-fun lt!1453893 () List!43547)

(assert (=> b!4065143 (= res!1658880 (not (= lt!1453893 lt!1453903)))))

(declare-fun lt!1453856 () List!43547)

(assert (=> b!4065143 (= lt!1453893 (++!11376 prefix!494 lt!1453856))))

(declare-fun lt!1453848 () List!43547)

(assert (=> b!4065143 (= lt!1453893 (++!11376 lt!1453845 lt!1453848))))

(declare-fun lt!1453870 () Unit!62924)

(declare-fun lemmaConcatAssociativity!2678 (List!43547 List!43547 List!43547) Unit!62924)

(assert (=> b!4065143 (= lt!1453870 (lemmaConcatAssociativity!2678 prefix!494 newSuffix!27 lt!1453848))))

(declare-fun b!4065120 () Bool)

(declare-fun Unit!62929 () Unit!62924)

(assert (=> b!4065120 (= e!2522718 Unit!62929)))

(declare-fun res!1658883 () Bool)

(assert (=> start!383428 (=> (not res!1658883) (not e!2522728))))

(get-info :version)

(assert (=> start!383428 (= res!1658883 ((_ is Lexer!6561) thiss!21717))))

(assert (=> start!383428 e!2522728))

(assert (=> start!383428 e!2522725))

(declare-fun inv!58052 (Token!13086) Bool)

(assert (=> start!383428 (and (inv!58052 token!484) e!2522717)))

(assert (=> start!383428 e!2522743))

(assert (=> start!383428 e!2522741))

(assert (=> start!383428 e!2522719))

(assert (=> start!383428 true))

(declare-fun e!2522709 () Bool)

(assert (=> start!383428 e!2522709))

(declare-fun e!2522720 () Bool)

(assert (=> start!383428 e!2522720))

(declare-fun b!4065144 () Bool)

(declare-fun e!2522727 () Bool)

(assert (=> b!4065144 (= e!2522727 e!2522723)))

(declare-fun res!1658896 () Bool)

(assert (=> b!4065144 (=> res!1658896 e!2522723)))

(assert (=> b!4065144 (= res!1658896 (not (= lt!1453886 lt!1453845)))))

(assert (=> b!4065144 (= lt!1453886 (++!11376 lt!1453880 lt!1453849))))

(assert (=> b!4065144 (= lt!1453849 (getSuffix!2478 lt!1453845 lt!1453880))))

(declare-fun b!4065145 () Bool)

(declare-fun res!1658893 () Bool)

(assert (=> b!4065145 (=> (not res!1658893) (not e!2522728))))

(assert (=> b!4065145 (= res!1658893 (>= (size!32466 suffix!1299) (size!32466 newSuffix!27)))))

(declare-fun b!4065146 () Bool)

(assert (=> b!4065146 (= e!2522711 e!2522726)))

(declare-fun res!1658874 () Bool)

(assert (=> b!4065146 (=> res!1658874 e!2522726)))

(assert (=> b!4065146 (= res!1658874 (not (matchR!5832 (regex!6974 (rule!10072 token!484)) lt!1453861)))))

(assert (=> b!4065146 (isPrefix!4061 lt!1453861 lt!1453845)))

(declare-fun lt!1453869 () Unit!62924)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!854 (List!43547 List!43547 List!43547) Unit!62924)

(assert (=> b!4065146 (= lt!1453869 (lemmaPrefixStaysPrefixWhenAddingToSuffix!854 lt!1453861 prefix!494 newSuffix!27))))

(declare-fun lt!1453884 () Unit!62924)

(assert (=> b!4065146 (= lt!1453884 (lemmaPrefixStaysPrefixWhenAddingToSuffix!854 lt!1453861 prefix!494 suffix!1299))))

(declare-fun b!4065147 () Bool)

(declare-fun res!1658897 () Bool)

(assert (=> b!4065147 (=> (not res!1658897) (not e!2522728))))

(declare-fun rulesInvariant!5906 (LexerInterface!6563 List!43549) Bool)

(assert (=> b!4065147 (= res!1658897 (rulesInvariant!5906 thiss!21717 rules!2999))))

(declare-fun b!4065148 () Bool)

(declare-fun res!1658876 () Bool)

(assert (=> b!4065148 (=> (not res!1658876) (not e!2522728))))

(assert (=> b!4065148 (= res!1658876 (isPrefix!4061 newSuffix!27 suffix!1299))))

(declare-fun b!4065149 () Bool)

(declare-fun e!2522732 () Bool)

(assert (=> b!4065149 (= e!2522732 e!2522729)))

(declare-fun res!1658891 () Bool)

(assert (=> b!4065149 (=> res!1658891 e!2522729)))

(declare-fun lt!1453902 () List!43547)

(assert (=> b!4065149 (= res!1658891 (or (not (= lt!1453903 lt!1453902)) (not (= lt!1453903 lt!1453842))))))

(assert (=> b!4065149 (= lt!1453902 lt!1453842)))

(assert (=> b!4065149 (= lt!1453842 (++!11376 lt!1453861 lt!1453887))))

(declare-fun lt!1453868 () List!43547)

(assert (=> b!4065149 (= lt!1453902 (++!11376 lt!1453868 suffix!1299))))

(declare-fun lt!1453905 () List!43547)

(assert (=> b!4065149 (= lt!1453887 (++!11376 lt!1453905 suffix!1299))))

(declare-fun lt!1453876 () Unit!62924)

(assert (=> b!4065149 (= lt!1453876 (lemmaConcatAssociativity!2678 lt!1453861 lt!1453905 suffix!1299))))

(declare-fun b!4065150 () Bool)

(declare-fun res!1658878 () Bool)

(assert (=> b!4065150 (=> (not res!1658878) (not e!2522722))))

(assert (=> b!4065150 (= res!1658878 (= (size!32465 token!484) (size!32466 (originalCharacters!7574 token!484))))))

(declare-fun b!4065151 () Bool)

(declare-fun tp!1230795 () Bool)

(assert (=> b!4065151 (= e!2522720 (and tp_is_empty!20729 tp!1230795))))

(declare-fun b!4065152 () Bool)

(declare-fun Unit!62930 () Unit!62924)

(assert (=> b!4065152 (= e!2522737 Unit!62930)))

(declare-fun b!4065153 () Bool)

(declare-fun e!2522724 () Bool)

(declare-fun e!2522714 () Bool)

(assert (=> b!4065153 (= e!2522724 e!2522714)))

(declare-fun res!1658892 () Bool)

(assert (=> b!4065153 (=> res!1658892 e!2522714)))

(declare-fun lt!1453883 () Option!9388)

(assert (=> b!4065153 (= res!1658892 (not (= lt!1453883 (Some!9387 (v!39813 lt!1453852)))))))

(assert (=> b!4065153 (isPrefix!4061 lt!1453880 (++!11376 lt!1453880 newSuffixResult!27))))

(declare-fun lt!1453885 () Unit!62924)

(assert (=> b!4065153 (= lt!1453885 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453880 newSuffixResult!27))))

(declare-fun lt!1453890 () List!43547)

(assert (=> b!4065153 (isPrefix!4061 lt!1453880 lt!1453890)))

(assert (=> b!4065153 (= lt!1453890 (++!11376 lt!1453880 (_2!24373 (v!39813 lt!1453852))))))

(declare-fun lt!1453874 () Unit!62924)

(assert (=> b!4065153 (= lt!1453874 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453880 (_2!24373 (v!39813 lt!1453852))))))

(declare-fun lt!1453853 () TokenValue!7204)

(assert (=> b!4065153 (= lt!1453883 (Some!9387 (tuple2!42479 (Token!13087 lt!1453853 (rule!10072 (_1!24373 (v!39813 lt!1453852))) lt!1453879 lt!1453880) (_2!24373 (v!39813 lt!1453852)))))))

(assert (=> b!4065153 (= lt!1453883 (maxPrefixOneRule!2873 thiss!21717 (rule!10072 (_1!24373 (v!39813 lt!1453852))) lt!1453845))))

(assert (=> b!4065153 (= lt!1453879 (size!32466 lt!1453880))))

(assert (=> b!4065153 (= lt!1453853 (apply!10163 (transformation!6974 (rule!10072 (_1!24373 (v!39813 lt!1453852)))) (seqFromList!5191 lt!1453880)))))

(declare-fun lt!1453866 () Unit!62924)

(assert (=> b!4065153 (= lt!1453866 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1679 thiss!21717 rules!2999 lt!1453880 lt!1453845 (_2!24373 (v!39813 lt!1453852)) (rule!10072 (_1!24373 (v!39813 lt!1453852)))))))

(assert (=> b!4065153 (= lt!1453880 (list!16188 (charsOf!4790 (_1!24373 (v!39813 lt!1453852)))))))

(declare-fun lt!1453898 () Unit!62924)

(assert (=> b!4065153 (= lt!1453898 (lemmaInv!1183 (transformation!6974 (rule!10072 (_1!24373 (v!39813 lt!1453852))))))))

(assert (=> b!4065153 (ruleValid!2904 thiss!21717 (rule!10072 (_1!24373 (v!39813 lt!1453852))))))

(declare-fun lt!1453843 () Unit!62924)

(assert (=> b!4065153 (= lt!1453843 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1974 thiss!21717 (rule!10072 (_1!24373 (v!39813 lt!1453852))) rules!2999))))

(declare-fun lt!1453840 () Unit!62924)

(declare-fun lemmaCharactersSize!1493 (Token!13086) Unit!62924)

(assert (=> b!4065153 (= lt!1453840 (lemmaCharactersSize!1493 token!484))))

(declare-fun lt!1453850 () Unit!62924)

(assert (=> b!4065153 (= lt!1453850 (lemmaCharactersSize!1493 (_1!24373 (v!39813 lt!1453852))))))

(declare-fun b!4065154 () Bool)

(assert (=> b!4065154 (= e!2522745 e!2522740)))

(declare-fun res!1658881 () Bool)

(assert (=> b!4065154 (=> res!1658881 e!2522740)))

(declare-fun lt!1453862 () Int)

(declare-fun lt!1453895 () Int)

(assert (=> b!4065154 (= res!1658881 (<= lt!1453862 lt!1453895))))

(declare-fun lt!1453873 () Unit!62924)

(assert (=> b!4065154 (= lt!1453873 e!2522737)))

(declare-fun c!701934 () Bool)

(assert (=> b!4065154 (= c!701934 (< lt!1453862 lt!1453895))))

(declare-fun getIndex!586 (List!43549 Rule!13748) Int)

(assert (=> b!4065154 (= lt!1453895 (getIndex!586 rules!2999 (rule!10072 token!484)))))

(assert (=> b!4065154 (= lt!1453862 (getIndex!586 rules!2999 (rule!10072 (_1!24373 (v!39813 lt!1453852)))))))

(assert (=> b!4065154 (= (_2!24373 (v!39813 lt!1453852)) newSuffixResult!27)))

(declare-fun lt!1453858 () Unit!62924)

(assert (=> b!4065154 (= lt!1453858 (lemmaSamePrefixThenSameSuffix!2222 lt!1453880 (_2!24373 (v!39813 lt!1453852)) lt!1453861 newSuffixResult!27 lt!1453845))))

(assert (=> b!4065154 (= lt!1453880 lt!1453861)))

(declare-fun lt!1453855 () Unit!62924)

(declare-fun lemmaIsPrefixSameLengthThenSameList!951 (List!43547 List!43547 List!43547) Unit!62924)

(assert (=> b!4065154 (= lt!1453855 (lemmaIsPrefixSameLengthThenSameList!951 lt!1453880 lt!1453861 lt!1453845))))

(declare-fun b!4065155 () Bool)

(declare-fun res!1658886 () Bool)

(assert (=> b!4065155 (=> (not res!1658886) (not e!2522728))))

(declare-fun isEmpty!25915 (List!43549) Bool)

(assert (=> b!4065155 (= res!1658886 (not (isEmpty!25915 rules!2999)))))

(declare-fun b!4065156 () Bool)

(declare-fun res!1658895 () Bool)

(assert (=> b!4065156 (=> res!1658895 e!2522727)))

(assert (=> b!4065156 (= res!1658895 (not (= lt!1453890 lt!1453845)))))

(declare-fun b!4065157 () Bool)

(assert (=> b!4065157 (= e!2522710 e!2522731)))

(declare-fun res!1658879 () Bool)

(assert (=> b!4065157 (=> (not res!1658879) (not e!2522731))))

(declare-fun maxPrefix!3861 (LexerInterface!6563 List!43549 List!43547) Option!9388)

(assert (=> b!4065157 (= res!1658879 (= (maxPrefix!3861 thiss!21717 rules!2999 lt!1453903) lt!1453859))))

(declare-fun lt!1453897 () tuple2!42478)

(assert (=> b!4065157 (= lt!1453859 (Some!9387 lt!1453897))))

(assert (=> b!4065157 (= lt!1453897 (tuple2!42479 token!484 suffixResult!105))))

(assert (=> b!4065157 (= lt!1453903 (++!11376 prefix!494 suffix!1299))))

(declare-fun b!4065158 () Bool)

(assert (=> b!4065158 (= e!2522746 e!2522724)))

(declare-fun res!1658901 () Bool)

(assert (=> b!4065158 (=> res!1658901 e!2522724)))

(assert (=> b!4065158 (= res!1658901 (not ((_ is Some!9387) lt!1453852)))))

(assert (=> b!4065158 (= lt!1453852 (maxPrefix!3861 thiss!21717 rules!2999 lt!1453845))))

(assert (=> b!4065158 (and (= suffixResult!105 lt!1453882) (= lt!1453897 (tuple2!42479 lt!1453899 lt!1453882)))))

(declare-fun lt!1453891 () Unit!62924)

(assert (=> b!4065158 (= lt!1453891 (lemmaSamePrefixThenSameSuffix!2222 lt!1453861 suffixResult!105 lt!1453861 lt!1453882 lt!1453903))))

(assert (=> b!4065158 (isPrefix!4061 lt!1453861 lt!1453860)))

(declare-fun lt!1453881 () Unit!62924)

(assert (=> b!4065158 (= lt!1453881 (lemmaConcatTwoListThenFirstIsPrefix!2896 lt!1453861 lt!1453882))))

(declare-fun b!4065159 () Bool)

(assert (=> b!4065159 (= e!2522712 e!2522727)))

(declare-fun res!1658885 () Bool)

(assert (=> b!4065159 (=> res!1658885 e!2522727)))

(assert (=> b!4065159 (= res!1658885 (not (isPrefix!4061 lt!1453880 lt!1453903)))))

(assert (=> b!4065159 (isPrefix!4061 lt!1453880 lt!1453893)))

(declare-fun lt!1453857 () Unit!62924)

(assert (=> b!4065159 (= lt!1453857 (lemmaPrefixStaysPrefixWhenAddingToSuffix!854 lt!1453880 lt!1453845 lt!1453848))))

(declare-fun b!4065160 () Bool)

(declare-fun tp!1230803 () Bool)

(assert (=> b!4065160 (= e!2522709 (and e!2522735 tp!1230803))))

(declare-fun b!4065161 () Bool)

(declare-fun Unit!62931 () Unit!62924)

(assert (=> b!4065161 (= e!2522713 Unit!62931)))

(declare-fun b!4065162 () Bool)

(assert (=> b!4065162 (= e!2522714 e!2522708)))

(declare-fun res!1658888 () Bool)

(assert (=> b!4065162 (=> res!1658888 e!2522708)))

(assert (=> b!4065162 (= res!1658888 (not (= lt!1453856 suffix!1299)))))

(assert (=> b!4065162 (= lt!1453856 (++!11376 newSuffix!27 lt!1453848))))

(assert (=> b!4065162 (= lt!1453848 (getSuffix!2478 suffix!1299 newSuffix!27))))

(declare-fun b!4065163 () Bool)

(assert (=> b!4065163 (= e!2522715 e!2522732)))

(declare-fun res!1658887 () Bool)

(assert (=> b!4065163 (=> res!1658887 e!2522732)))

(assert (=> b!4065163 (= res!1658887 (not (= lt!1453868 prefix!494)))))

(assert (=> b!4065163 (= lt!1453868 (++!11376 lt!1453861 lt!1453905))))

(assert (=> b!4065163 (= lt!1453905 (getSuffix!2478 prefix!494 lt!1453861))))

(assert (=> b!4065163 (isPrefix!4061 lt!1453861 prefix!494)))

(declare-fun lt!1453888 () Unit!62924)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!625 (List!43547 List!43547 List!43547) Unit!62924)

(assert (=> b!4065163 (= lt!1453888 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!625 prefix!494 lt!1453861 lt!1453903))))

(declare-fun b!4065164 () Bool)

(declare-fun Unit!62932 () Unit!62924)

(assert (=> b!4065164 (= e!2522718 Unit!62932)))

(declare-fun lt!1453871 () Unit!62924)

(assert (=> b!4065164 (= lt!1453871 (lemmaMaxPrefixOutputsMaxPrefix!500 thiss!21717 rules!2999 (rule!10072 token!484) lt!1453861 lt!1453903 lt!1453880 (rule!10072 (_1!24373 (v!39813 lt!1453852)))))))

(declare-fun res!1658903 () Bool)

(assert (=> b!4065164 (= res!1658903 (not (matchR!5832 (regex!6974 (rule!10072 (_1!24373 (v!39813 lt!1453852)))) lt!1453880)))))

(assert (=> b!4065164 (=> (not res!1658903) (not e!2522739))))

(assert (=> b!4065164 e!2522739))

(assert (= (and start!383428 res!1658883) b!4065155))

(assert (= (and b!4065155 res!1658886) b!4065147))

(assert (= (and b!4065147 res!1658897) b!4065145))

(assert (= (and b!4065145 res!1658893) b!4065148))

(assert (= (and b!4065148 res!1658876) b!4065129))

(assert (= (and b!4065129 res!1658873) b!4065119))

(assert (= (and b!4065119 res!1658884) b!4065157))

(assert (= (and b!4065157 res!1658879) b!4065139))

(assert (= (and b!4065139 (not res!1658900)) b!4065135))

(assert (= (and b!4065135 (not res!1658882)) b!4065163))

(assert (= (and b!4065163 (not res!1658887)) b!4065149))

(assert (= (and b!4065149 (not res!1658891)) b!4065134))

(assert (= (and b!4065134 (not res!1658890)) b!4065146))

(assert (= (and b!4065146 (not res!1658874)) b!4065141))

(assert (= (and b!4065141 res!1658898) b!4065131))

(assert (= (and b!4065131 res!1658875) b!4065150))

(assert (= (and b!4065150 res!1658878) b!4065124))

(assert (= (and b!4065141 (not res!1658894)) b!4065158))

(assert (= (and b!4065158 (not res!1658901)) b!4065153))

(assert (= (and b!4065153 (not res!1658892)) b!4065162))

(assert (= (and b!4065162 (not res!1658888)) b!4065143))

(assert (= (and b!4065143 (not res!1658880)) b!4065159))

(assert (= (and b!4065159 (not res!1658885)) b!4065156))

(assert (= (and b!4065156 (not res!1658895)) b!4065144))

(assert (= (and b!4065144 (not res!1658896)) b!4065133))

(assert (= (and b!4065133 c!701935) b!4065164))

(assert (= (and b!4065133 (not c!701935)) b!4065120))

(assert (= (and b!4065164 res!1658903) b!4065142))

(assert (= (and b!4065133 c!701933) b!4065121))

(assert (= (and b!4065133 (not c!701933)) b!4065161))

(assert (= (and b!4065133 (not res!1658877)) b!4065122))

(assert (= (and b!4065122 (not res!1658889)) b!4065154))

(assert (= (and b!4065154 c!701934) b!4065117))

(assert (= (and b!4065154 (not c!701934)) b!4065152))

(assert (= (and b!4065117 res!1658899) b!4065118))

(assert (= (and b!4065154 (not res!1658881)) b!4065137))

(assert (= (and b!4065137 (not res!1658902)) b!4065125))

(assert (= (and start!383428 ((_ is Cons!43423) prefix!494)) b!4065132))

(assert (= b!4065128 b!4065127))

(assert (= b!4065140 b!4065128))

(assert (= start!383428 b!4065140))

(assert (= (and start!383428 ((_ is Cons!43423) suffixResult!105)) b!4065138))

(assert (= (and start!383428 ((_ is Cons!43423) suffix!1299)) b!4065126))

(assert (= (and start!383428 ((_ is Cons!43423) newSuffix!27)) b!4065123))

(assert (= b!4065136 b!4065130))

(assert (= b!4065160 b!4065136))

(assert (= (and start!383428 ((_ is Cons!43425) rules!2999)) b!4065160))

(assert (= (and start!383428 ((_ is Cons!43423) newSuffixResult!27)) b!4065151))

(declare-fun m!4672511 () Bool)

(assert (=> b!4065159 m!4672511))

(declare-fun m!4672513 () Bool)

(assert (=> b!4065159 m!4672513))

(declare-fun m!4672515 () Bool)

(assert (=> b!4065159 m!4672515))

(declare-fun m!4672517 () Bool)

(assert (=> b!4065154 m!4672517))

(declare-fun m!4672519 () Bool)

(assert (=> b!4065154 m!4672519))

(declare-fun m!4672521 () Bool)

(assert (=> b!4065154 m!4672521))

(declare-fun m!4672523 () Bool)

(assert (=> b!4065154 m!4672523))

(declare-fun m!4672525 () Bool)

(assert (=> b!4065164 m!4672525))

(declare-fun m!4672527 () Bool)

(assert (=> b!4065164 m!4672527))

(declare-fun m!4672529 () Bool)

(assert (=> b!4065149 m!4672529))

(declare-fun m!4672531 () Bool)

(assert (=> b!4065149 m!4672531))

(declare-fun m!4672533 () Bool)

(assert (=> b!4065149 m!4672533))

(declare-fun m!4672535 () Bool)

(assert (=> b!4065149 m!4672535))

(declare-fun m!4672537 () Bool)

(assert (=> b!4065148 m!4672537))

(declare-fun m!4672539 () Bool)

(assert (=> b!4065158 m!4672539))

(declare-fun m!4672541 () Bool)

(assert (=> b!4065158 m!4672541))

(declare-fun m!4672543 () Bool)

(assert (=> b!4065158 m!4672543))

(declare-fun m!4672545 () Bool)

(assert (=> b!4065158 m!4672545))

(declare-fun m!4672547 () Bool)

(assert (=> b!4065153 m!4672547))

(declare-fun m!4672549 () Bool)

(assert (=> b!4065153 m!4672549))

(declare-fun m!4672551 () Bool)

(assert (=> b!4065153 m!4672551))

(declare-fun m!4672553 () Bool)

(assert (=> b!4065153 m!4672553))

(declare-fun m!4672555 () Bool)

(assert (=> b!4065153 m!4672555))

(declare-fun m!4672557 () Bool)

(assert (=> b!4065153 m!4672557))

(declare-fun m!4672559 () Bool)

(assert (=> b!4065153 m!4672559))

(declare-fun m!4672561 () Bool)

(assert (=> b!4065153 m!4672561))

(declare-fun m!4672563 () Bool)

(assert (=> b!4065153 m!4672563))

(declare-fun m!4672565 () Bool)

(assert (=> b!4065153 m!4672565))

(declare-fun m!4672567 () Bool)

(assert (=> b!4065153 m!4672567))

(declare-fun m!4672569 () Bool)

(assert (=> b!4065153 m!4672569))

(declare-fun m!4672571 () Bool)

(assert (=> b!4065153 m!4672571))

(assert (=> b!4065153 m!4672567))

(assert (=> b!4065153 m!4672557))

(declare-fun m!4672573 () Bool)

(assert (=> b!4065153 m!4672573))

(declare-fun m!4672575 () Bool)

(assert (=> b!4065153 m!4672575))

(declare-fun m!4672577 () Bool)

(assert (=> b!4065153 m!4672577))

(assert (=> b!4065153 m!4672561))

(declare-fun m!4672579 () Bool)

(assert (=> b!4065153 m!4672579))

(declare-fun m!4672581 () Bool)

(assert (=> b!4065153 m!4672581))

(declare-fun m!4672583 () Bool)

(assert (=> b!4065135 m!4672583))

(declare-fun m!4672585 () Bool)

(assert (=> b!4065135 m!4672585))

(declare-fun m!4672587 () Bool)

(assert (=> b!4065135 m!4672587))

(declare-fun m!4672589 () Bool)

(assert (=> b!4065135 m!4672589))

(declare-fun m!4672591 () Bool)

(assert (=> b!4065135 m!4672591))

(declare-fun m!4672593 () Bool)

(assert (=> b!4065117 m!4672593))

(declare-fun m!4672595 () Bool)

(assert (=> b!4065117 m!4672595))

(declare-fun m!4672597 () Bool)

(assert (=> b!4065129 m!4672597))

(declare-fun m!4672599 () Bool)

(assert (=> b!4065129 m!4672599))

(declare-fun m!4672601 () Bool)

(assert (=> b!4065129 m!4672601))

(assert (=> b!4065129 m!4672601))

(declare-fun m!4672603 () Bool)

(assert (=> b!4065129 m!4672603))

(declare-fun m!4672605 () Bool)

(assert (=> b!4065136 m!4672605))

(declare-fun m!4672607 () Bool)

(assert (=> b!4065136 m!4672607))

(declare-fun m!4672609 () Bool)

(assert (=> b!4065144 m!4672609))

(declare-fun m!4672611 () Bool)

(assert (=> b!4065144 m!4672611))

(declare-fun m!4672613 () Bool)

(assert (=> b!4065157 m!4672613))

(declare-fun m!4672615 () Bool)

(assert (=> b!4065157 m!4672615))

(declare-fun m!4672617 () Bool)

(assert (=> b!4065141 m!4672617))

(declare-fun m!4672619 () Bool)

(assert (=> b!4065141 m!4672619))

(declare-fun m!4672621 () Bool)

(assert (=> b!4065141 m!4672621))

(declare-fun m!4672623 () Bool)

(assert (=> b!4065141 m!4672623))

(declare-fun m!4672625 () Bool)

(assert (=> b!4065119 m!4672625))

(declare-fun m!4672627 () Bool)

(assert (=> b!4065119 m!4672627))

(assert (=> b!4065137 m!4672527))

(declare-fun m!4672629 () Bool)

(assert (=> start!383428 m!4672629))

(declare-fun m!4672631 () Bool)

(assert (=> b!4065163 m!4672631))

(declare-fun m!4672633 () Bool)

(assert (=> b!4065163 m!4672633))

(declare-fun m!4672635 () Bool)

(assert (=> b!4065163 m!4672635))

(declare-fun m!4672637 () Bool)

(assert (=> b!4065163 m!4672637))

(declare-fun m!4672639 () Bool)

(assert (=> b!4065134 m!4672639))

(declare-fun m!4672641 () Bool)

(assert (=> b!4065134 m!4672641))

(declare-fun m!4672643 () Bool)

(assert (=> b!4065134 m!4672643))

(declare-fun m!4672645 () Bool)

(assert (=> b!4065134 m!4672645))

(declare-fun m!4672647 () Bool)

(assert (=> b!4065134 m!4672647))

(declare-fun m!4672649 () Bool)

(assert (=> b!4065134 m!4672649))

(declare-fun m!4672651 () Bool)

(assert (=> b!4065134 m!4672651))

(assert (=> b!4065134 m!4672643))

(declare-fun m!4672653 () Bool)

(assert (=> b!4065133 m!4672653))

(declare-fun m!4672655 () Bool)

(assert (=> b!4065133 m!4672655))

(declare-fun m!4672657 () Bool)

(assert (=> b!4065133 m!4672657))

(declare-fun m!4672659 () Bool)

(assert (=> b!4065122 m!4672659))

(declare-fun m!4672661 () Bool)

(assert (=> b!4065150 m!4672661))

(declare-fun m!4672663 () Bool)

(assert (=> b!4065139 m!4672663))

(declare-fun m!4672665 () Bool)

(assert (=> b!4065139 m!4672665))

(declare-fun m!4672667 () Bool)

(assert (=> b!4065139 m!4672667))

(declare-fun m!4672669 () Bool)

(assert (=> b!4065139 m!4672669))

(declare-fun m!4672671 () Bool)

(assert (=> b!4065128 m!4672671))

(declare-fun m!4672673 () Bool)

(assert (=> b!4065128 m!4672673))

(declare-fun m!4672675 () Bool)

(assert (=> b!4065147 m!4672675))

(declare-fun m!4672677 () Bool)

(assert (=> b!4065121 m!4672677))

(declare-fun m!4672679 () Bool)

(assert (=> b!4065140 m!4672679))

(declare-fun m!4672681 () Bool)

(assert (=> b!4065145 m!4672681))

(declare-fun m!4672683 () Bool)

(assert (=> b!4065145 m!4672683))

(declare-fun m!4672685 () Bool)

(assert (=> b!4065146 m!4672685))

(declare-fun m!4672687 () Bool)

(assert (=> b!4065146 m!4672687))

(declare-fun m!4672689 () Bool)

(assert (=> b!4065146 m!4672689))

(declare-fun m!4672691 () Bool)

(assert (=> b!4065146 m!4672691))

(declare-fun m!4672693 () Bool)

(assert (=> b!4065155 m!4672693))

(declare-fun m!4672695 () Bool)

(assert (=> b!4065162 m!4672695))

(declare-fun m!4672697 () Bool)

(assert (=> b!4065162 m!4672697))

(declare-fun m!4672699 () Bool)

(assert (=> b!4065143 m!4672699))

(declare-fun m!4672701 () Bool)

(assert (=> b!4065143 m!4672701))

(declare-fun m!4672703 () Bool)

(assert (=> b!4065143 m!4672703))

(declare-fun m!4672705 () Bool)

(assert (=> b!4065125 m!4672705))

(declare-fun m!4672707 () Bool)

(assert (=> b!4065125 m!4672707))

(check-sat (not b!4065150) (not b_next!113789) (not b!4065157) (not b!4065134) (not b!4065128) (not b!4065147) (not b_next!113787) (not b!4065126) b_and!312489 (not b!4065155) (not b!4065164) (not b!4065129) (not b!4065123) (not b!4065139) (not b!4065122) (not b!4065125) (not b!4065163) (not b!4065121) (not b!4065141) (not b!4065144) (not b!4065148) b_and!312485 (not b!4065132) (not b!4065149) b_and!312487 (not b!4065151) (not b!4065136) (not b!4065135) (not b!4065117) (not b!4065154) (not b!4065143) (not b!4065160) (not b!4065137) (not b_next!113785) (not start!383428) (not b!4065140) (not b!4065119) (not b!4065133) (not b!4065158) b_and!312483 (not b_next!113791) (not b!4065162) (not b!4065145) (not b!4065159) tp_is_empty!20729 (not b!4065146) (not b!4065153) (not b!4065138))
(check-sat (not b_next!113789) b_and!312485 b_and!312487 (not b_next!113787) (not b_next!113785) b_and!312489 b_and!312483 (not b_next!113791))
