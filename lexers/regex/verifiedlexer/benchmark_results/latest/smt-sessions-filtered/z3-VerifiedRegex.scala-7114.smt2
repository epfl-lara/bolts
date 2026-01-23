; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377036 () Bool)

(assert start!377036)

(declare-fun b!4005248 () Bool)

(declare-fun b_free!111417 () Bool)

(declare-fun b_next!112121 () Bool)

(assert (=> b!4005248 (= b_free!111417 (not b_next!112121))))

(declare-fun tp!1219063 () Bool)

(declare-fun b_and!307611 () Bool)

(assert (=> b!4005248 (= tp!1219063 b_and!307611)))

(declare-fun b_free!111419 () Bool)

(declare-fun b_next!112123 () Bool)

(assert (=> b!4005248 (= b_free!111419 (not b_next!112123))))

(declare-fun tp!1219069 () Bool)

(declare-fun b_and!307613 () Bool)

(assert (=> b!4005248 (= tp!1219069 b_and!307613)))

(declare-fun b!4005244 () Bool)

(declare-fun b_free!111421 () Bool)

(declare-fun b_next!112125 () Bool)

(assert (=> b!4005244 (= b_free!111421 (not b_next!112125))))

(declare-fun tp!1219065 () Bool)

(declare-fun b_and!307615 () Bool)

(assert (=> b!4005244 (= tp!1219065 b_and!307615)))

(declare-fun b_free!111423 () Bool)

(declare-fun b_next!112127 () Bool)

(assert (=> b!4005244 (= b_free!111423 (not b_next!112127))))

(declare-fun tp!1219073 () Bool)

(declare-fun b_and!307617 () Bool)

(assert (=> b!4005244 (= tp!1219073 b_and!307617)))

(declare-fun b!4005239 () Bool)

(declare-fun e!2483854 () Bool)

(declare-fun e!2483863 () Bool)

(assert (=> b!4005239 (= e!2483854 e!2483863)))

(declare-fun res!1627569 () Bool)

(assert (=> b!4005239 (=> res!1627569 e!2483863)))

(declare-datatypes ((C!23628 0))(
  ( (C!23629 (val!13908 Int)) )
))
(declare-datatypes ((List!43006 0))(
  ( (Nil!42882) (Cons!42882 (h!48302 C!23628) (t!332477 List!43006)) )
))
(declare-fun lt!1416911 () List!43006)

(declare-fun prefix!494 () List!43006)

(assert (=> b!4005239 (= res!1627569 (not (= lt!1416911 prefix!494)))))

(declare-fun lt!1416910 () List!43006)

(declare-fun lt!1416894 () List!43006)

(declare-fun ++!11218 (List!43006 List!43006) List!43006)

(assert (=> b!4005239 (= lt!1416911 (++!11218 lt!1416910 lt!1416894))))

(declare-fun getSuffix!2328 (List!43006 List!43006) List!43006)

(assert (=> b!4005239 (= lt!1416894 (getSuffix!2328 prefix!494 lt!1416910))))

(declare-fun isPrefix!3903 (List!43006 List!43006) Bool)

(assert (=> b!4005239 (isPrefix!3903 lt!1416910 prefix!494)))

(declare-datatypes ((Unit!61877 0))(
  ( (Unit!61878) )
))
(declare-fun lt!1416895 () Unit!61877)

(declare-fun lt!1416898 () List!43006)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!475 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> b!4005239 (= lt!1416895 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!475 prefix!494 lt!1416910 lt!1416898))))

(declare-fun b!4005240 () Bool)

(declare-fun e!2483865 () Bool)

(declare-fun tp_is_empty!20413 () Bool)

(declare-fun tp!1219064 () Bool)

(assert (=> b!4005240 (= e!2483865 (and tp_is_empty!20413 tp!1219064))))

(declare-datatypes ((IArray!26059 0))(
  ( (IArray!26060 (innerList!13087 List!43006)) )
))
(declare-datatypes ((Conc!13027 0))(
  ( (Node!13027 (left!32357 Conc!13027) (right!32687 Conc!13027) (csize!26284 Int) (cheight!13238 Int)) (Leaf!20142 (xs!16333 IArray!26059) (csize!26285 Int)) (Empty!13027) )
))
(declare-datatypes ((BalanceConc!25648 0))(
  ( (BalanceConc!25649 (c!692546 Conc!13027)) )
))
(declare-datatypes ((List!43007 0))(
  ( (Nil!42883) (Cons!42883 (h!48303 (_ BitVec 16)) (t!332478 List!43007)) )
))
(declare-datatypes ((TokenValue!7046 0))(
  ( (FloatLiteralValue!14092 (text!49767 List!43007)) (TokenValueExt!7045 (__x!26309 Int)) (Broken!35230 (value!214864 List!43007)) (Object!7169) (End!7046) (Def!7046) (Underscore!7046) (Match!7046) (Else!7046) (Error!7046) (Case!7046) (If!7046) (Extends!7046) (Abstract!7046) (Class!7046) (Val!7046) (DelimiterValue!14092 (del!7106 List!43007)) (KeywordValue!7052 (value!214865 List!43007)) (CommentValue!14092 (value!214866 List!43007)) (WhitespaceValue!14092 (value!214867 List!43007)) (IndentationValue!7046 (value!214868 List!43007)) (String!48947) (Int32!7046) (Broken!35231 (value!214869 List!43007)) (Boolean!7047) (Unit!61879) (OperatorValue!7049 (op!7106 List!43007)) (IdentifierValue!14092 (value!214870 List!43007)) (IdentifierValue!14093 (value!214871 List!43007)) (WhitespaceValue!14093 (value!214872 List!43007)) (True!14092) (False!14092) (Broken!35232 (value!214873 List!43007)) (Broken!35233 (value!214874 List!43007)) (True!14093) (RightBrace!7046) (RightBracket!7046) (Colon!7046) (Null!7046) (Comma!7046) (LeftBracket!7046) (False!14093) (LeftBrace!7046) (ImaginaryLiteralValue!7046 (text!49768 List!43007)) (StringLiteralValue!21138 (value!214875 List!43007)) (EOFValue!7046 (value!214876 List!43007)) (IdentValue!7046 (value!214877 List!43007)) (DelimiterValue!14093 (value!214878 List!43007)) (DedentValue!7046 (value!214879 List!43007)) (NewLineValue!7046 (value!214880 List!43007)) (IntegerValue!21138 (value!214881 (_ BitVec 32)) (text!49769 List!43007)) (IntegerValue!21139 (value!214882 Int) (text!49770 List!43007)) (Times!7046) (Or!7046) (Equal!7046) (Minus!7046) (Broken!35234 (value!214883 List!43007)) (And!7046) (Div!7046) (LessEqual!7046) (Mod!7046) (Concat!18767) (Not!7046) (Plus!7046) (SpaceValue!7046 (value!214884 List!43007)) (IntegerValue!21140 (value!214885 Int) (text!49771 List!43007)) (StringLiteralValue!21139 (text!49772 List!43007)) (FloatLiteralValue!14093 (text!49773 List!43007)) (BytesLiteralValue!7046 (value!214886 List!43007)) (CommentValue!14093 (value!214887 List!43007)) (StringLiteralValue!21140 (value!214888 List!43007)) (ErrorTokenValue!7046 (msg!7107 List!43007)) )
))
(declare-datatypes ((Regex!11721 0))(
  ( (ElementMatch!11721 (c!692547 C!23628)) (Concat!18768 (regOne!23954 Regex!11721) (regTwo!23954 Regex!11721)) (EmptyExpr!11721) (Star!11721 (reg!12050 Regex!11721)) (EmptyLang!11721) (Union!11721 (regOne!23955 Regex!11721) (regTwo!23955 Regex!11721)) )
))
(declare-datatypes ((String!48948 0))(
  ( (String!48949 (value!214889 String)) )
))
(declare-datatypes ((TokenValueInjection!13520 0))(
  ( (TokenValueInjection!13521 (toValue!9312 Int) (toChars!9171 Int)) )
))
(declare-datatypes ((Rule!13432 0))(
  ( (Rule!13433 (regex!6816 Regex!11721) (tag!7676 String!48948) (isSeparator!6816 Bool) (transformation!6816 TokenValueInjection!13520)) )
))
(declare-datatypes ((Token!12770 0))(
  ( (Token!12771 (value!214890 TokenValue!7046) (rule!9852 Rule!13432) (size!32061 Int) (originalCharacters!7416 List!43006)) )
))
(declare-fun token!484 () Token!12770)

(declare-fun e!2483856 () Bool)

(declare-fun tp!1219066 () Bool)

(declare-fun b!4005241 () Bool)

(declare-fun e!2483864 () Bool)

(declare-fun inv!21 (TokenValue!7046) Bool)

(assert (=> b!4005241 (= e!2483856 (and (inv!21 (value!214890 token!484)) e!2483864 tp!1219066))))

(declare-fun b!4005242 () Bool)

(declare-fun e!2483860 () Bool)

(declare-fun tp!1219067 () Bool)

(assert (=> b!4005242 (= e!2483860 (and tp_is_empty!20413 tp!1219067))))

(declare-fun b!4005243 () Bool)

(declare-fun e!2483871 () Bool)

(assert (=> b!4005243 (= e!2483871 e!2483854)))

(declare-fun res!1627561 () Bool)

(assert (=> b!4005243 (=> res!1627561 e!2483854)))

(assert (=> b!4005243 (= res!1627561 (not (isPrefix!3903 lt!1416910 lt!1416898)))))

(assert (=> b!4005243 (isPrefix!3903 prefix!494 lt!1416898)))

(declare-fun lt!1416904 () Unit!61877)

(declare-fun suffix!1299 () List!43006)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2744 (List!43006 List!43006) Unit!61877)

(assert (=> b!4005243 (= lt!1416904 (lemmaConcatTwoListThenFirstIsPrefix!2744 prefix!494 suffix!1299))))

(declare-fun lt!1416906 () List!43006)

(assert (=> b!4005243 (isPrefix!3903 lt!1416910 lt!1416906)))

(declare-fun lt!1416914 () Unit!61877)

(declare-fun suffixResult!105 () List!43006)

(assert (=> b!4005243 (= lt!1416914 (lemmaConcatTwoListThenFirstIsPrefix!2744 lt!1416910 suffixResult!105))))

(declare-fun e!2483868 () Bool)

(assert (=> b!4005244 (= e!2483868 (and tp!1219065 tp!1219073))))

(declare-fun b!4005245 () Bool)

(declare-fun res!1627563 () Bool)

(declare-fun e!2483872 () Bool)

(assert (=> b!4005245 (=> (not res!1627563) (not e!2483872))))

(declare-fun newSuffix!27 () List!43006)

(declare-fun size!32062 (List!43006) Int)

(assert (=> b!4005245 (= res!1627563 (>= (size!32062 suffix!1299) (size!32062 newSuffix!27)))))

(declare-fun b!4005247 () Bool)

(declare-fun e!2483876 () Bool)

(assert (=> b!4005247 (= e!2483863 e!2483876)))

(declare-fun res!1627573 () Bool)

(assert (=> b!4005247 (=> res!1627573 e!2483876)))

(declare-fun lt!1416912 () List!43006)

(declare-fun lt!1416896 () List!43006)

(assert (=> b!4005247 (= res!1627573 (or (not (= lt!1416898 lt!1416896)) (not (= lt!1416898 lt!1416912))))))

(assert (=> b!4005247 (= lt!1416896 lt!1416912)))

(declare-fun lt!1416903 () List!43006)

(assert (=> b!4005247 (= lt!1416912 (++!11218 lt!1416910 lt!1416903))))

(assert (=> b!4005247 (= lt!1416896 (++!11218 lt!1416911 suffix!1299))))

(assert (=> b!4005247 (= lt!1416903 (++!11218 lt!1416894 suffix!1299))))

(declare-fun lt!1416913 () Unit!61877)

(declare-fun lemmaConcatAssociativity!2528 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> b!4005247 (= lt!1416913 (lemmaConcatAssociativity!2528 lt!1416910 lt!1416894 suffix!1299))))

(declare-fun e!2483857 () Bool)

(assert (=> b!4005248 (= e!2483857 (and tp!1219063 tp!1219069))))

(declare-fun b!4005249 () Bool)

(declare-fun e!2483867 () Bool)

(declare-fun matchR!5682 (Regex!11721 List!43006) Bool)

(assert (=> b!4005249 (= e!2483867 (matchR!5682 (regex!6816 (rule!9852 token!484)) lt!1416910))))

(declare-fun lt!1416899 () List!43006)

(assert (=> b!4005249 (isPrefix!3903 lt!1416910 lt!1416899)))

(declare-fun lt!1416897 () Unit!61877)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!716 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> b!4005249 (= lt!1416897 (lemmaPrefixStaysPrefixWhenAddingToSuffix!716 lt!1416910 prefix!494 newSuffix!27))))

(declare-fun lt!1416909 () Unit!61877)

(assert (=> b!4005249 (= lt!1416909 (lemmaPrefixStaysPrefixWhenAddingToSuffix!716 lt!1416910 prefix!494 suffix!1299))))

(declare-fun b!4005250 () Bool)

(assert (=> b!4005250 (= e!2483876 e!2483867)))

(declare-fun res!1627570 () Bool)

(assert (=> b!4005250 (=> res!1627570 e!2483867)))

(declare-datatypes ((tuple2!42038 0))(
  ( (tuple2!42039 (_1!24153 Token!12770) (_2!24153 List!43006)) )
))
(declare-datatypes ((Option!9230 0))(
  ( (None!9229) (Some!9229 (v!39593 tuple2!42038)) )
))
(declare-fun lt!1416890 () Option!9230)

(declare-fun lt!1416915 () Option!9230)

(assert (=> b!4005250 (= res!1627570 (not (= lt!1416890 lt!1416915)))))

(declare-fun lt!1416900 () Int)

(declare-fun lt!1416891 () TokenValue!7046)

(assert (=> b!4005250 (= lt!1416890 (Some!9229 (tuple2!42039 (Token!12771 lt!1416891 (rule!9852 token!484) lt!1416900 lt!1416910) suffixResult!105)))))

(declare-datatypes ((LexerInterface!6405 0))(
  ( (LexerInterfaceExt!6402 (__x!26310 Int)) (Lexer!6403) )
))
(declare-fun thiss!21717 () LexerInterface!6405)

(declare-fun maxPrefixOneRule!2723 (LexerInterface!6405 Rule!13432 List!43006) Option!9230)

(assert (=> b!4005250 (= lt!1416890 (maxPrefixOneRule!2723 thiss!21717 (rule!9852 token!484) lt!1416898))))

(declare-fun apply!10013 (TokenValueInjection!13520 BalanceConc!25648) TokenValue!7046)

(declare-fun seqFromList!5041 (List!43006) BalanceConc!25648)

(assert (=> b!4005250 (= lt!1416891 (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 lt!1416910)))))

(declare-fun lt!1416905 () Unit!61877)

(declare-datatypes ((List!43008 0))(
  ( (Nil!42884) (Cons!42884 (h!48304 Rule!13432) (t!332479 List!43008)) )
))
(declare-fun rules!2999 () List!43008)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1541 (LexerInterface!6405 List!43008 List!43006 List!43006 List!43006 Rule!13432) Unit!61877)

(assert (=> b!4005250 (= lt!1416905 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1541 thiss!21717 rules!2999 lt!1416910 lt!1416898 suffixResult!105 (rule!9852 token!484)))))

(assert (=> b!4005250 (= lt!1416903 suffixResult!105)))

(declare-fun lt!1416893 () Unit!61877)

(declare-fun lemmaSamePrefixThenSameSuffix!2074 (List!43006 List!43006 List!43006 List!43006 List!43006) Unit!61877)

(assert (=> b!4005250 (= lt!1416893 (lemmaSamePrefixThenSameSuffix!2074 lt!1416910 lt!1416903 lt!1416910 suffixResult!105 lt!1416898))))

(assert (=> b!4005250 (isPrefix!3903 lt!1416910 lt!1416912)))

(declare-fun lt!1416908 () Unit!61877)

(assert (=> b!4005250 (= lt!1416908 (lemmaConcatTwoListThenFirstIsPrefix!2744 lt!1416910 lt!1416903))))

(declare-fun b!4005251 () Bool)

(declare-fun e!2483858 () Bool)

(declare-fun tp!1219072 () Bool)

(assert (=> b!4005251 (= e!2483858 (and tp_is_empty!20413 tp!1219072))))

(declare-fun b!4005252 () Bool)

(declare-fun e!2483855 () Bool)

(assert (=> b!4005252 (= e!2483872 e!2483855)))

(declare-fun res!1627564 () Bool)

(assert (=> b!4005252 (=> (not res!1627564) (not e!2483855))))

(declare-fun lt!1416892 () Int)

(assert (=> b!4005252 (= res!1627564 (>= lt!1416892 lt!1416900))))

(assert (=> b!4005252 (= lt!1416900 (size!32062 lt!1416910))))

(assert (=> b!4005252 (= lt!1416892 (size!32062 prefix!494))))

(declare-fun list!15930 (BalanceConc!25648) List!43006)

(declare-fun charsOf!4632 (Token!12770) BalanceConc!25648)

(assert (=> b!4005252 (= lt!1416910 (list!15930 (charsOf!4632 token!484)))))

(declare-fun tp!1219070 () Bool)

(declare-fun b!4005253 () Bool)

(declare-fun e!2483859 () Bool)

(declare-fun inv!57265 (String!48948) Bool)

(declare-fun inv!57268 (TokenValueInjection!13520) Bool)

(assert (=> b!4005253 (= e!2483859 (and tp!1219070 (inv!57265 (tag!7676 (h!48304 rules!2999))) (inv!57268 (transformation!6816 (h!48304 rules!2999))) e!2483868))))

(declare-fun tp!1219071 () Bool)

(declare-fun b!4005254 () Bool)

(assert (=> b!4005254 (= e!2483864 (and tp!1219071 (inv!57265 (tag!7676 (rule!9852 token!484))) (inv!57268 (transformation!6816 (rule!9852 token!484))) e!2483857))))

(declare-fun b!4005255 () Bool)

(declare-fun e!2483870 () Bool)

(assert (=> b!4005255 (= e!2483870 (not e!2483871))))

(declare-fun res!1627562 () Bool)

(assert (=> b!4005255 (=> res!1627562 e!2483871)))

(assert (=> b!4005255 (= res!1627562 (not (= lt!1416906 lt!1416898)))))

(assert (=> b!4005255 (= lt!1416906 (++!11218 lt!1416910 suffixResult!105))))

(declare-fun lt!1416902 () Unit!61877)

(declare-fun lemmaInv!1031 (TokenValueInjection!13520) Unit!61877)

(assert (=> b!4005255 (= lt!1416902 (lemmaInv!1031 (transformation!6816 (rule!9852 token!484))))))

(declare-fun ruleValid!2748 (LexerInterface!6405 Rule!13432) Bool)

(assert (=> b!4005255 (ruleValid!2748 thiss!21717 (rule!9852 token!484))))

(declare-fun lt!1416901 () Unit!61877)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1822 (LexerInterface!6405 Rule!13432 List!43008) Unit!61877)

(assert (=> b!4005255 (= lt!1416901 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1822 thiss!21717 (rule!9852 token!484) rules!2999))))

(declare-fun b!4005256 () Bool)

(declare-fun res!1627566 () Bool)

(assert (=> b!4005256 (=> (not res!1627566) (not e!2483872))))

(assert (=> b!4005256 (= res!1627566 (isPrefix!3903 newSuffix!27 suffix!1299))))

(declare-fun b!4005257 () Bool)

(declare-fun e!2483874 () Bool)

(declare-fun tp!1219068 () Bool)

(assert (=> b!4005257 (= e!2483874 (and e!2483859 tp!1219068))))

(declare-fun b!4005258 () Bool)

(declare-fun res!1627572 () Bool)

(assert (=> b!4005258 (=> (not res!1627572) (not e!2483872))))

(declare-fun isEmpty!25616 (List!43008) Bool)

(assert (=> b!4005258 (= res!1627572 (not (isEmpty!25616 rules!2999)))))

(declare-fun b!4005246 () Bool)

(declare-fun res!1627567 () Bool)

(assert (=> b!4005246 (=> (not res!1627567) (not e!2483872))))

(declare-fun rulesInvariant!5748 (LexerInterface!6405 List!43008) Bool)

(assert (=> b!4005246 (= res!1627567 (rulesInvariant!5748 thiss!21717 rules!2999))))

(declare-fun res!1627565 () Bool)

(assert (=> start!377036 (=> (not res!1627565) (not e!2483872))))

(get-info :version)

(assert (=> start!377036 (= res!1627565 ((_ is Lexer!6403) thiss!21717))))

(assert (=> start!377036 e!2483872))

(assert (=> start!377036 e!2483858))

(declare-fun inv!57269 (Token!12770) Bool)

(assert (=> start!377036 (and (inv!57269 token!484) e!2483856)))

(assert (=> start!377036 e!2483865))

(assert (=> start!377036 e!2483860))

(declare-fun e!2483862 () Bool)

(assert (=> start!377036 e!2483862))

(assert (=> start!377036 true))

(assert (=> start!377036 e!2483874))

(declare-fun e!2483873 () Bool)

(assert (=> start!377036 e!2483873))

(declare-fun b!4005259 () Bool)

(declare-fun e!2483875 () Bool)

(assert (=> b!4005259 (= e!2483875 e!2483870)))

(declare-fun res!1627571 () Bool)

(assert (=> b!4005259 (=> (not res!1627571) (not e!2483870))))

(declare-fun maxPrefix!3703 (LexerInterface!6405 List!43008 List!43006) Option!9230)

(assert (=> b!4005259 (= res!1627571 (= (maxPrefix!3703 thiss!21717 rules!2999 lt!1416898) lt!1416915))))

(assert (=> b!4005259 (= lt!1416915 (Some!9229 (tuple2!42039 token!484 suffixResult!105)))))

(assert (=> b!4005259 (= lt!1416898 (++!11218 prefix!494 suffix!1299))))

(declare-fun b!4005260 () Bool)

(declare-fun tp!1219062 () Bool)

(assert (=> b!4005260 (= e!2483873 (and tp_is_empty!20413 tp!1219062))))

(declare-fun b!4005261 () Bool)

(assert (=> b!4005261 (= e!2483855 e!2483875)))

(declare-fun res!1627568 () Bool)

(assert (=> b!4005261 (=> (not res!1627568) (not e!2483875))))

(declare-fun lt!1416907 () List!43006)

(assert (=> b!4005261 (= res!1627568 (= lt!1416907 lt!1416899))))

(assert (=> b!4005261 (= lt!1416899 (++!11218 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43006)

(assert (=> b!4005261 (= lt!1416907 (++!11218 lt!1416910 newSuffixResult!27))))

(declare-fun b!4005262 () Bool)

(declare-fun tp!1219074 () Bool)

(assert (=> b!4005262 (= e!2483862 (and tp_is_empty!20413 tp!1219074))))

(assert (= (and start!377036 res!1627565) b!4005258))

(assert (= (and b!4005258 res!1627572) b!4005246))

(assert (= (and b!4005246 res!1627567) b!4005245))

(assert (= (and b!4005245 res!1627563) b!4005256))

(assert (= (and b!4005256 res!1627566) b!4005252))

(assert (= (and b!4005252 res!1627564) b!4005261))

(assert (= (and b!4005261 res!1627568) b!4005259))

(assert (= (and b!4005259 res!1627571) b!4005255))

(assert (= (and b!4005255 (not res!1627562)) b!4005243))

(assert (= (and b!4005243 (not res!1627561)) b!4005239))

(assert (= (and b!4005239 (not res!1627569)) b!4005247))

(assert (= (and b!4005247 (not res!1627573)) b!4005250))

(assert (= (and b!4005250 (not res!1627570)) b!4005249))

(assert (= (and start!377036 ((_ is Cons!42882) prefix!494)) b!4005251))

(assert (= b!4005254 b!4005248))

(assert (= b!4005241 b!4005254))

(assert (= start!377036 b!4005241))

(assert (= (and start!377036 ((_ is Cons!42882) suffixResult!105)) b!4005240))

(assert (= (and start!377036 ((_ is Cons!42882) suffix!1299)) b!4005242))

(assert (= (and start!377036 ((_ is Cons!42882) newSuffix!27)) b!4005262))

(assert (= b!4005253 b!4005244))

(assert (= b!4005257 b!4005253))

(assert (= (and start!377036 ((_ is Cons!42884) rules!2999)) b!4005257))

(assert (= (and start!377036 ((_ is Cons!42882) newSuffixResult!27)) b!4005260))

(declare-fun m!4588191 () Bool)

(assert (=> b!4005256 m!4588191))

(declare-fun m!4588193 () Bool)

(assert (=> b!4005245 m!4588193))

(declare-fun m!4588195 () Bool)

(assert (=> b!4005245 m!4588195))

(declare-fun m!4588197 () Bool)

(assert (=> b!4005258 m!4588197))

(declare-fun m!4588199 () Bool)

(assert (=> b!4005246 m!4588199))

(declare-fun m!4588201 () Bool)

(assert (=> b!4005253 m!4588201))

(declare-fun m!4588203 () Bool)

(assert (=> b!4005253 m!4588203))

(declare-fun m!4588205 () Bool)

(assert (=> b!4005241 m!4588205))

(declare-fun m!4588207 () Bool)

(assert (=> b!4005249 m!4588207))

(declare-fun m!4588209 () Bool)

(assert (=> b!4005249 m!4588209))

(declare-fun m!4588211 () Bool)

(assert (=> b!4005249 m!4588211))

(declare-fun m!4588213 () Bool)

(assert (=> b!4005249 m!4588213))

(declare-fun m!4588215 () Bool)

(assert (=> start!377036 m!4588215))

(declare-fun m!4588217 () Bool)

(assert (=> b!4005239 m!4588217))

(declare-fun m!4588219 () Bool)

(assert (=> b!4005239 m!4588219))

(declare-fun m!4588221 () Bool)

(assert (=> b!4005239 m!4588221))

(declare-fun m!4588223 () Bool)

(assert (=> b!4005239 m!4588223))

(declare-fun m!4588225 () Bool)

(assert (=> b!4005261 m!4588225))

(declare-fun m!4588227 () Bool)

(assert (=> b!4005261 m!4588227))

(declare-fun m!4588229 () Bool)

(assert (=> b!4005259 m!4588229))

(declare-fun m!4588231 () Bool)

(assert (=> b!4005259 m!4588231))

(declare-fun m!4588233 () Bool)

(assert (=> b!4005254 m!4588233))

(declare-fun m!4588235 () Bool)

(assert (=> b!4005254 m!4588235))

(declare-fun m!4588237 () Bool)

(assert (=> b!4005247 m!4588237))

(declare-fun m!4588239 () Bool)

(assert (=> b!4005247 m!4588239))

(declare-fun m!4588241 () Bool)

(assert (=> b!4005247 m!4588241))

(declare-fun m!4588243 () Bool)

(assert (=> b!4005247 m!4588243))

(declare-fun m!4588245 () Bool)

(assert (=> b!4005252 m!4588245))

(declare-fun m!4588247 () Bool)

(assert (=> b!4005252 m!4588247))

(declare-fun m!4588249 () Bool)

(assert (=> b!4005252 m!4588249))

(assert (=> b!4005252 m!4588249))

(declare-fun m!4588251 () Bool)

(assert (=> b!4005252 m!4588251))

(declare-fun m!4588253 () Bool)

(assert (=> b!4005255 m!4588253))

(declare-fun m!4588255 () Bool)

(assert (=> b!4005255 m!4588255))

(declare-fun m!4588257 () Bool)

(assert (=> b!4005255 m!4588257))

(declare-fun m!4588259 () Bool)

(assert (=> b!4005255 m!4588259))

(declare-fun m!4588261 () Bool)

(assert (=> b!4005250 m!4588261))

(declare-fun m!4588263 () Bool)

(assert (=> b!4005250 m!4588263))

(declare-fun m!4588265 () Bool)

(assert (=> b!4005250 m!4588265))

(assert (=> b!4005250 m!4588265))

(declare-fun m!4588267 () Bool)

(assert (=> b!4005250 m!4588267))

(declare-fun m!4588269 () Bool)

(assert (=> b!4005250 m!4588269))

(declare-fun m!4588271 () Bool)

(assert (=> b!4005250 m!4588271))

(declare-fun m!4588273 () Bool)

(assert (=> b!4005250 m!4588273))

(declare-fun m!4588275 () Bool)

(assert (=> b!4005243 m!4588275))

(declare-fun m!4588277 () Bool)

(assert (=> b!4005243 m!4588277))

(declare-fun m!4588279 () Bool)

(assert (=> b!4005243 m!4588279))

(declare-fun m!4588281 () Bool)

(assert (=> b!4005243 m!4588281))

(declare-fun m!4588283 () Bool)

(assert (=> b!4005243 m!4588283))

(check-sat (not b!4005247) b_and!307611 (not b!4005242) (not b!4005260) tp_is_empty!20413 (not b!4005239) (not b_next!112121) (not b!4005249) (not b!4005254) (not b!4005257) (not b!4005240) (not b!4005253) b_and!307615 (not b_next!112125) (not b!4005259) (not b_next!112127) (not b!4005252) (not b!4005256) (not b!4005251) (not b!4005262) (not b!4005246) b_and!307613 (not b!4005258) b_and!307617 (not b!4005245) (not b!4005243) (not b!4005255) (not b!4005241) (not b_next!112123) (not b!4005261) (not start!377036) (not b!4005250))
(check-sat b_and!307611 (not b_next!112127) b_and!307613 (not b_next!112121) b_and!307617 (not b_next!112123) b_and!307615 (not b_next!112125))
(get-model)

(declare-fun d!1184779 () Bool)

(declare-fun lt!1416918 () Int)

(assert (=> d!1184779 (>= lt!1416918 0)))

(declare-fun e!2483879 () Int)

(assert (=> d!1184779 (= lt!1416918 e!2483879)))

(declare-fun c!692550 () Bool)

(assert (=> d!1184779 (= c!692550 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184779 (= (size!32062 lt!1416910) lt!1416918)))

(declare-fun b!4005267 () Bool)

(assert (=> b!4005267 (= e!2483879 0)))

(declare-fun b!4005268 () Bool)

(assert (=> b!4005268 (= e!2483879 (+ 1 (size!32062 (t!332477 lt!1416910))))))

(assert (= (and d!1184779 c!692550) b!4005267))

(assert (= (and d!1184779 (not c!692550)) b!4005268))

(declare-fun m!4588285 () Bool)

(assert (=> b!4005268 m!4588285))

(assert (=> b!4005252 d!1184779))

(declare-fun d!1184781 () Bool)

(declare-fun lt!1416919 () Int)

(assert (=> d!1184781 (>= lt!1416919 0)))

(declare-fun e!2483880 () Int)

(assert (=> d!1184781 (= lt!1416919 e!2483880)))

(declare-fun c!692551 () Bool)

(assert (=> d!1184781 (= c!692551 ((_ is Nil!42882) prefix!494))))

(assert (=> d!1184781 (= (size!32062 prefix!494) lt!1416919)))

(declare-fun b!4005269 () Bool)

(assert (=> b!4005269 (= e!2483880 0)))

(declare-fun b!4005270 () Bool)

(assert (=> b!4005270 (= e!2483880 (+ 1 (size!32062 (t!332477 prefix!494))))))

(assert (= (and d!1184781 c!692551) b!4005269))

(assert (= (and d!1184781 (not c!692551)) b!4005270))

(declare-fun m!4588287 () Bool)

(assert (=> b!4005270 m!4588287))

(assert (=> b!4005252 d!1184781))

(declare-fun d!1184783 () Bool)

(declare-fun list!15932 (Conc!13027) List!43006)

(assert (=> d!1184783 (= (list!15930 (charsOf!4632 token!484)) (list!15932 (c!692546 (charsOf!4632 token!484))))))

(declare-fun bs!589007 () Bool)

(assert (= bs!589007 d!1184783))

(declare-fun m!4588289 () Bool)

(assert (=> bs!589007 m!4588289))

(assert (=> b!4005252 d!1184783))

(declare-fun d!1184785 () Bool)

(declare-fun lt!1416922 () BalanceConc!25648)

(assert (=> d!1184785 (= (list!15930 lt!1416922) (originalCharacters!7416 token!484))))

(declare-fun dynLambda!18183 (Int TokenValue!7046) BalanceConc!25648)

(assert (=> d!1184785 (= lt!1416922 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))

(assert (=> d!1184785 (= (charsOf!4632 token!484) lt!1416922)))

(declare-fun b_lambda!116823 () Bool)

(assert (=> (not b_lambda!116823) (not d!1184785)))

(declare-fun t!332481 () Bool)

(declare-fun tb!240729 () Bool)

(assert (=> (and b!4005248 (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332481) tb!240729))

(declare-fun b!4005275 () Bool)

(declare-fun e!2483883 () Bool)

(declare-fun tp!1219077 () Bool)

(declare-fun inv!57272 (Conc!13027) Bool)

(assert (=> b!4005275 (= e!2483883 (and (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))) tp!1219077))))

(declare-fun result!291774 () Bool)

(declare-fun inv!57273 (BalanceConc!25648) Bool)

(assert (=> tb!240729 (= result!291774 (and (inv!57273 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))) e!2483883))))

(assert (= tb!240729 b!4005275))

(declare-fun m!4588291 () Bool)

(assert (=> b!4005275 m!4588291))

(declare-fun m!4588293 () Bool)

(assert (=> tb!240729 m!4588293))

(assert (=> d!1184785 t!332481))

(declare-fun b_and!307619 () Bool)

(assert (= b_and!307613 (and (=> t!332481 result!291774) b_and!307619)))

(declare-fun tb!240731 () Bool)

(declare-fun t!332483 () Bool)

(assert (=> (and b!4005244 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332483) tb!240731))

(declare-fun result!291778 () Bool)

(assert (= result!291778 result!291774))

(assert (=> d!1184785 t!332483))

(declare-fun b_and!307621 () Bool)

(assert (= b_and!307617 (and (=> t!332483 result!291778) b_and!307621)))

(declare-fun m!4588295 () Bool)

(assert (=> d!1184785 m!4588295))

(declare-fun m!4588297 () Bool)

(assert (=> d!1184785 m!4588297))

(assert (=> b!4005252 d!1184785))

(declare-fun d!1184787 () Bool)

(declare-fun c!692557 () Bool)

(assert (=> d!1184787 (= c!692557 ((_ is IntegerValue!21138) (value!214890 token!484)))))

(declare-fun e!2483890 () Bool)

(assert (=> d!1184787 (= (inv!21 (value!214890 token!484)) e!2483890)))

(declare-fun b!4005286 () Bool)

(declare-fun inv!16 (TokenValue!7046) Bool)

(assert (=> b!4005286 (= e!2483890 (inv!16 (value!214890 token!484)))))

(declare-fun b!4005287 () Bool)

(declare-fun e!2483891 () Bool)

(declare-fun inv!17 (TokenValue!7046) Bool)

(assert (=> b!4005287 (= e!2483891 (inv!17 (value!214890 token!484)))))

(declare-fun b!4005288 () Bool)

(declare-fun res!1627580 () Bool)

(declare-fun e!2483892 () Bool)

(assert (=> b!4005288 (=> res!1627580 e!2483892)))

(assert (=> b!4005288 (= res!1627580 (not ((_ is IntegerValue!21140) (value!214890 token!484))))))

(assert (=> b!4005288 (= e!2483891 e!2483892)))

(declare-fun b!4005289 () Bool)

(declare-fun inv!15 (TokenValue!7046) Bool)

(assert (=> b!4005289 (= e!2483892 (inv!15 (value!214890 token!484)))))

(declare-fun b!4005290 () Bool)

(assert (=> b!4005290 (= e!2483890 e!2483891)))

(declare-fun c!692556 () Bool)

(assert (=> b!4005290 (= c!692556 ((_ is IntegerValue!21139) (value!214890 token!484)))))

(assert (= (and d!1184787 c!692557) b!4005286))

(assert (= (and d!1184787 (not c!692557)) b!4005290))

(assert (= (and b!4005290 c!692556) b!4005287))

(assert (= (and b!4005290 (not c!692556)) b!4005288))

(assert (= (and b!4005288 (not res!1627580)) b!4005289))

(declare-fun m!4588299 () Bool)

(assert (=> b!4005286 m!4588299))

(declare-fun m!4588301 () Bool)

(assert (=> b!4005287 m!4588301))

(declare-fun m!4588303 () Bool)

(assert (=> b!4005289 m!4588303))

(assert (=> b!4005241 d!1184787))

(declare-fun d!1184789 () Bool)

(assert (=> d!1184789 (= lt!1416903 suffixResult!105)))

(declare-fun lt!1416927 () Unit!61877)

(declare-fun choose!24169 (List!43006 List!43006 List!43006 List!43006 List!43006) Unit!61877)

(assert (=> d!1184789 (= lt!1416927 (choose!24169 lt!1416910 lt!1416903 lt!1416910 suffixResult!105 lt!1416898))))

(assert (=> d!1184789 (isPrefix!3903 lt!1416910 lt!1416898)))

(assert (=> d!1184789 (= (lemmaSamePrefixThenSameSuffix!2074 lt!1416910 lt!1416903 lt!1416910 suffixResult!105 lt!1416898) lt!1416927)))

(declare-fun bs!589008 () Bool)

(assert (= bs!589008 d!1184789))

(declare-fun m!4588305 () Bool)

(assert (=> bs!589008 m!4588305))

(assert (=> bs!589008 m!4588279))

(assert (=> b!4005250 d!1184789))

(declare-fun d!1184793 () Bool)

(declare-fun dynLambda!18184 (Int BalanceConc!25648) TokenValue!7046)

(assert (=> d!1184793 (= (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 lt!1416910)) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910)))))

(declare-fun b_lambda!116825 () Bool)

(assert (=> (not b_lambda!116825) (not d!1184793)))

(declare-fun t!332485 () Bool)

(declare-fun tb!240733 () Bool)

(assert (=> (and b!4005248 (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332485) tb!240733))

(declare-fun result!291780 () Bool)

(assert (=> tb!240733 (= result!291780 (inv!21 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(declare-fun m!4588341 () Bool)

(assert (=> tb!240733 m!4588341))

(assert (=> d!1184793 t!332485))

(declare-fun b_and!307623 () Bool)

(assert (= b_and!307611 (and (=> t!332485 result!291780) b_and!307623)))

(declare-fun tb!240735 () Bool)

(declare-fun t!332487 () Bool)

(assert (=> (and b!4005244 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332487) tb!240735))

(declare-fun result!291784 () Bool)

(assert (= result!291784 result!291780))

(assert (=> d!1184793 t!332487))

(declare-fun b_and!307625 () Bool)

(assert (= b_and!307615 (and (=> t!332487 result!291784) b_and!307625)))

(assert (=> d!1184793 m!4588265))

(declare-fun m!4588343 () Bool)

(assert (=> d!1184793 m!4588343))

(assert (=> b!4005250 d!1184793))

(declare-fun d!1184801 () Bool)

(assert (=> d!1184801 (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 lt!1416903))))

(declare-fun lt!1416936 () Unit!61877)

(declare-fun choose!24170 (List!43006 List!43006) Unit!61877)

(assert (=> d!1184801 (= lt!1416936 (choose!24170 lt!1416910 lt!1416903))))

(assert (=> d!1184801 (= (lemmaConcatTwoListThenFirstIsPrefix!2744 lt!1416910 lt!1416903) lt!1416936)))

(declare-fun bs!589010 () Bool)

(assert (= bs!589010 d!1184801))

(assert (=> bs!589010 m!4588237))

(assert (=> bs!589010 m!4588237))

(declare-fun m!4588355 () Bool)

(assert (=> bs!589010 m!4588355))

(declare-fun m!4588357 () Bool)

(assert (=> bs!589010 m!4588357))

(assert (=> b!4005250 d!1184801))

(declare-fun b!4005355 () Bool)

(declare-fun res!1627610 () Bool)

(declare-fun e!2483934 () Bool)

(assert (=> b!4005355 (=> (not res!1627610) (not e!2483934))))

(declare-fun head!8510 (List!43006) C!23628)

(assert (=> b!4005355 (= res!1627610 (= (head!8510 lt!1416910) (head!8510 lt!1416912)))))

(declare-fun b!4005357 () Bool)

(declare-fun e!2483935 () Bool)

(assert (=> b!4005357 (= e!2483935 (>= (size!32062 lt!1416912) (size!32062 lt!1416910)))))

(declare-fun b!4005356 () Bool)

(declare-fun tail!6242 (List!43006) List!43006)

(assert (=> b!4005356 (= e!2483934 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416912)))))

(declare-fun d!1184809 () Bool)

(assert (=> d!1184809 e!2483935))

(declare-fun res!1627613 () Bool)

(assert (=> d!1184809 (=> res!1627613 e!2483935)))

(declare-fun lt!1416944 () Bool)

(assert (=> d!1184809 (= res!1627613 (not lt!1416944))))

(declare-fun e!2483933 () Bool)

(assert (=> d!1184809 (= lt!1416944 e!2483933)))

(declare-fun res!1627611 () Bool)

(assert (=> d!1184809 (=> res!1627611 e!2483933)))

(assert (=> d!1184809 (= res!1627611 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184809 (= (isPrefix!3903 lt!1416910 lt!1416912) lt!1416944)))

(declare-fun b!4005354 () Bool)

(assert (=> b!4005354 (= e!2483933 e!2483934)))

(declare-fun res!1627612 () Bool)

(assert (=> b!4005354 (=> (not res!1627612) (not e!2483934))))

(assert (=> b!4005354 (= res!1627612 (not ((_ is Nil!42882) lt!1416912)))))

(assert (= (and d!1184809 (not res!1627611)) b!4005354))

(assert (= (and b!4005354 res!1627612) b!4005355))

(assert (= (and b!4005355 res!1627610) b!4005356))

(assert (= (and d!1184809 (not res!1627613)) b!4005357))

(declare-fun m!4588383 () Bool)

(assert (=> b!4005355 m!4588383))

(declare-fun m!4588385 () Bool)

(assert (=> b!4005355 m!4588385))

(declare-fun m!4588387 () Bool)

(assert (=> b!4005357 m!4588387))

(assert (=> b!4005357 m!4588245))

(declare-fun m!4588389 () Bool)

(assert (=> b!4005356 m!4588389))

(declare-fun m!4588391 () Bool)

(assert (=> b!4005356 m!4588391))

(assert (=> b!4005356 m!4588389))

(assert (=> b!4005356 m!4588391))

(declare-fun m!4588393 () Bool)

(assert (=> b!4005356 m!4588393))

(assert (=> b!4005250 d!1184809))

(declare-fun d!1184821 () Bool)

(assert (=> d!1184821 (= (maxPrefixOneRule!2723 thiss!21717 (rule!9852 token!484) lt!1416898) (Some!9229 (tuple2!42039 (Token!12771 (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 lt!1416910)) (rule!9852 token!484) (size!32062 lt!1416910) lt!1416910) suffixResult!105)))))

(declare-fun lt!1416960 () Unit!61877)

(declare-fun choose!24172 (LexerInterface!6405 List!43008 List!43006 List!43006 List!43006 Rule!13432) Unit!61877)

(assert (=> d!1184821 (= lt!1416960 (choose!24172 thiss!21717 rules!2999 lt!1416910 lt!1416898 suffixResult!105 (rule!9852 token!484)))))

(assert (=> d!1184821 (not (isEmpty!25616 rules!2999))))

(assert (=> d!1184821 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1541 thiss!21717 rules!2999 lt!1416910 lt!1416898 suffixResult!105 (rule!9852 token!484)) lt!1416960)))

(declare-fun bs!589012 () Bool)

(assert (= bs!589012 d!1184821))

(declare-fun m!4588403 () Bool)

(assert (=> bs!589012 m!4588403))

(assert (=> bs!589012 m!4588265))

(assert (=> bs!589012 m!4588245))

(assert (=> bs!589012 m!4588269))

(assert (=> bs!589012 m!4588197))

(assert (=> bs!589012 m!4588265))

(assert (=> bs!589012 m!4588267))

(assert (=> b!4005250 d!1184821))

(declare-fun b!4005498 () Bool)

(declare-fun e!2484005 () Bool)

(declare-datatypes ((tuple2!42042 0))(
  ( (tuple2!42043 (_1!24155 List!43006) (_2!24155 List!43006)) )
))
(declare-fun findLongestMatchInner!1351 (Regex!11721 List!43006 Int List!43006 List!43006 Int) tuple2!42042)

(assert (=> b!4005498 (= e!2484005 (matchR!5682 (regex!6816 (rule!9852 token!484)) (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(declare-fun b!4005499 () Bool)

(declare-fun e!2484008 () Bool)

(declare-fun e!2484009 () Bool)

(assert (=> b!4005499 (= e!2484008 e!2484009)))

(declare-fun res!1627712 () Bool)

(assert (=> b!4005499 (=> (not res!1627712) (not e!2484009))))

(declare-fun lt!1417022 () Option!9230)

(declare-fun get!14094 (Option!9230) tuple2!42038)

(assert (=> b!4005499 (= res!1627712 (matchR!5682 (regex!6816 (rule!9852 token!484)) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))

(declare-fun b!4005500 () Bool)

(declare-fun res!1627709 () Bool)

(assert (=> b!4005500 (=> (not res!1627709) (not e!2484009))))

(assert (=> b!4005500 (= res!1627709 (= (value!214890 (_1!24153 (get!14094 lt!1417022))) (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))))))))

(declare-fun b!4005502 () Bool)

(assert (=> b!4005502 (= e!2484009 (= (size!32061 (_1!24153 (get!14094 lt!1417022))) (size!32062 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022))))))))

(declare-fun b!4005503 () Bool)

(declare-fun e!2484010 () Option!9230)

(declare-fun lt!1417025 () tuple2!42042)

(declare-fun size!32064 (BalanceConc!25648) Int)

(assert (=> b!4005503 (= e!2484010 (Some!9229 (tuple2!42039 (Token!12771 (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 (_1!24155 lt!1417025))) (rule!9852 token!484) (size!32064 (seqFromList!5041 (_1!24155 lt!1417025))) (_1!24155 lt!1417025)) (_2!24155 lt!1417025))))))

(declare-fun lt!1417024 () Unit!61877)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1324 (Regex!11721 List!43006) Unit!61877)

(assert (=> b!4005503 (= lt!1417024 (longestMatchIsAcceptedByMatchOrIsEmpty!1324 (regex!6816 (rule!9852 token!484)) lt!1416898))))

(declare-fun res!1627710 () Bool)

(declare-fun isEmpty!25619 (List!43006) Bool)

(assert (=> b!4005503 (= res!1627710 (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(assert (=> b!4005503 (=> res!1627710 e!2484005)))

(assert (=> b!4005503 e!2484005))

(declare-fun lt!1417023 () Unit!61877)

(assert (=> b!4005503 (= lt!1417023 lt!1417024)))

(declare-fun lt!1417021 () Unit!61877)

(declare-fun lemmaSemiInverse!1871 (TokenValueInjection!13520 BalanceConc!25648) Unit!61877)

(assert (=> b!4005503 (= lt!1417021 (lemmaSemiInverse!1871 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 (_1!24155 lt!1417025))))))

(declare-fun d!1184827 () Bool)

(assert (=> d!1184827 e!2484008))

(declare-fun res!1627714 () Bool)

(assert (=> d!1184827 (=> res!1627714 e!2484008)))

(declare-fun isEmpty!25620 (Option!9230) Bool)

(assert (=> d!1184827 (= res!1627714 (isEmpty!25620 lt!1417022))))

(assert (=> d!1184827 (= lt!1417022 e!2484010)))

(declare-fun c!692593 () Bool)

(assert (=> d!1184827 (= c!692593 (isEmpty!25619 (_1!24155 lt!1417025)))))

(declare-fun findLongestMatch!1264 (Regex!11721 List!43006) tuple2!42042)

(assert (=> d!1184827 (= lt!1417025 (findLongestMatch!1264 (regex!6816 (rule!9852 token!484)) lt!1416898))))

(assert (=> d!1184827 (ruleValid!2748 thiss!21717 (rule!9852 token!484))))

(assert (=> d!1184827 (= (maxPrefixOneRule!2723 thiss!21717 (rule!9852 token!484) lt!1416898) lt!1417022)))

(declare-fun b!4005501 () Bool)

(declare-fun res!1627715 () Bool)

(assert (=> b!4005501 (=> (not res!1627715) (not e!2484009))))

(assert (=> b!4005501 (= res!1627715 (< (size!32062 (_2!24153 (get!14094 lt!1417022))) (size!32062 lt!1416898)))))

(declare-fun b!4005504 () Bool)

(declare-fun res!1627713 () Bool)

(assert (=> b!4005504 (=> (not res!1627713) (not e!2484009))))

(assert (=> b!4005504 (= res!1627713 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))) (_2!24153 (get!14094 lt!1417022))) lt!1416898))))

(declare-fun b!4005505 () Bool)

(declare-fun res!1627711 () Bool)

(assert (=> b!4005505 (=> (not res!1627711) (not e!2484009))))

(assert (=> b!4005505 (= res!1627711 (= (rule!9852 (_1!24153 (get!14094 lt!1417022))) (rule!9852 token!484)))))

(declare-fun b!4005506 () Bool)

(assert (=> b!4005506 (= e!2484010 None!9229)))

(assert (= (and d!1184827 c!692593) b!4005506))

(assert (= (and d!1184827 (not c!692593)) b!4005503))

(assert (= (and b!4005503 (not res!1627710)) b!4005498))

(assert (= (and d!1184827 (not res!1627714)) b!4005499))

(assert (= (and b!4005499 res!1627712) b!4005504))

(assert (= (and b!4005504 res!1627713) b!4005501))

(assert (= (and b!4005501 res!1627715) b!4005505))

(assert (= (and b!4005505 res!1627711) b!4005500))

(assert (= (and b!4005500 res!1627709) b!4005502))

(declare-fun m!4588575 () Bool)

(assert (=> b!4005500 m!4588575))

(declare-fun m!4588577 () Bool)

(assert (=> b!4005500 m!4588577))

(assert (=> b!4005500 m!4588577))

(declare-fun m!4588579 () Bool)

(assert (=> b!4005500 m!4588579))

(assert (=> b!4005502 m!4588575))

(declare-fun m!4588581 () Bool)

(assert (=> b!4005502 m!4588581))

(declare-fun m!4588583 () Bool)

(assert (=> d!1184827 m!4588583))

(declare-fun m!4588585 () Bool)

(assert (=> d!1184827 m!4588585))

(declare-fun m!4588587 () Bool)

(assert (=> d!1184827 m!4588587))

(assert (=> d!1184827 m!4588257))

(declare-fun m!4588589 () Bool)

(assert (=> b!4005498 m!4588589))

(declare-fun m!4588591 () Bool)

(assert (=> b!4005498 m!4588591))

(assert (=> b!4005498 m!4588589))

(assert (=> b!4005498 m!4588591))

(declare-fun m!4588593 () Bool)

(assert (=> b!4005498 m!4588593))

(declare-fun m!4588595 () Bool)

(assert (=> b!4005498 m!4588595))

(declare-fun m!4588597 () Bool)

(assert (=> b!4005503 m!4588597))

(declare-fun m!4588599 () Bool)

(assert (=> b!4005503 m!4588599))

(assert (=> b!4005503 m!4588597))

(assert (=> b!4005503 m!4588597))

(declare-fun m!4588601 () Bool)

(assert (=> b!4005503 m!4588601))

(declare-fun m!4588603 () Bool)

(assert (=> b!4005503 m!4588603))

(assert (=> b!4005503 m!4588591))

(declare-fun m!4588605 () Bool)

(assert (=> b!4005503 m!4588605))

(assert (=> b!4005503 m!4588597))

(declare-fun m!4588607 () Bool)

(assert (=> b!4005503 m!4588607))

(assert (=> b!4005503 m!4588589))

(assert (=> b!4005503 m!4588591))

(assert (=> b!4005503 m!4588593))

(assert (=> b!4005503 m!4588589))

(assert (=> b!4005501 m!4588575))

(declare-fun m!4588609 () Bool)

(assert (=> b!4005501 m!4588609))

(assert (=> b!4005501 m!4588591))

(assert (=> b!4005499 m!4588575))

(declare-fun m!4588611 () Bool)

(assert (=> b!4005499 m!4588611))

(assert (=> b!4005499 m!4588611))

(declare-fun m!4588613 () Bool)

(assert (=> b!4005499 m!4588613))

(assert (=> b!4005499 m!4588613))

(declare-fun m!4588615 () Bool)

(assert (=> b!4005499 m!4588615))

(assert (=> b!4005505 m!4588575))

(assert (=> b!4005504 m!4588575))

(assert (=> b!4005504 m!4588611))

(assert (=> b!4005504 m!4588611))

(assert (=> b!4005504 m!4588613))

(assert (=> b!4005504 m!4588613))

(declare-fun m!4588617 () Bool)

(assert (=> b!4005504 m!4588617))

(assert (=> b!4005250 d!1184827))

(declare-fun d!1184873 () Bool)

(declare-fun fromListB!2308 (List!43006) BalanceConc!25648)

(assert (=> d!1184873 (= (seqFromList!5041 lt!1416910) (fromListB!2308 lt!1416910))))

(declare-fun bs!589020 () Bool)

(assert (= bs!589020 d!1184873))

(declare-fun m!4588639 () Bool)

(assert (=> bs!589020 m!4588639))

(assert (=> b!4005250 d!1184873))

(declare-fun d!1184881 () Bool)

(declare-fun res!1627765 () Bool)

(declare-fun e!2484060 () Bool)

(assert (=> d!1184881 (=> (not res!1627765) (not e!2484060))))

(assert (=> d!1184881 (= res!1627765 (not (isEmpty!25619 (originalCharacters!7416 token!484))))))

(assert (=> d!1184881 (= (inv!57269 token!484) e!2484060)))

(declare-fun b!4005597 () Bool)

(declare-fun res!1627766 () Bool)

(assert (=> b!4005597 (=> (not res!1627766) (not e!2484060))))

(assert (=> b!4005597 (= res!1627766 (= (originalCharacters!7416 token!484) (list!15930 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(declare-fun b!4005598 () Bool)

(assert (=> b!4005598 (= e!2484060 (= (size!32061 token!484) (size!32062 (originalCharacters!7416 token!484))))))

(assert (= (and d!1184881 res!1627765) b!4005597))

(assert (= (and b!4005597 res!1627766) b!4005598))

(declare-fun b_lambda!116833 () Bool)

(assert (=> (not b_lambda!116833) (not b!4005597)))

(assert (=> b!4005597 t!332481))

(declare-fun b_and!307639 () Bool)

(assert (= b_and!307619 (and (=> t!332481 result!291774) b_and!307639)))

(assert (=> b!4005597 t!332483))

(declare-fun b_and!307641 () Bool)

(assert (= b_and!307621 (and (=> t!332483 result!291778) b_and!307641)))

(declare-fun m!4588679 () Bool)

(assert (=> d!1184881 m!4588679))

(assert (=> b!4005597 m!4588297))

(assert (=> b!4005597 m!4588297))

(declare-fun m!4588681 () Bool)

(assert (=> b!4005597 m!4588681))

(declare-fun m!4588683 () Bool)

(assert (=> b!4005598 m!4588683))

(assert (=> start!377036 d!1184881))

(declare-fun d!1184899 () Bool)

(declare-fun e!2484077 () Bool)

(assert (=> d!1184899 e!2484077))

(declare-fun res!1627772 () Bool)

(assert (=> d!1184899 (=> (not res!1627772) (not e!2484077))))

(declare-fun lt!1417040 () List!43006)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6500 (List!43006) (InoxSet C!23628))

(assert (=> d!1184899 (= res!1627772 (= (content!6500 lt!1417040) ((_ map or) (content!6500 prefix!494) (content!6500 newSuffix!27))))))

(declare-fun e!2484078 () List!43006)

(assert (=> d!1184899 (= lt!1417040 e!2484078)))

(declare-fun c!692603 () Bool)

(assert (=> d!1184899 (= c!692603 ((_ is Nil!42882) prefix!494))))

(assert (=> d!1184899 (= (++!11218 prefix!494 newSuffix!27) lt!1417040)))

(declare-fun b!4005619 () Bool)

(assert (=> b!4005619 (= e!2484078 newSuffix!27)))

(declare-fun b!4005622 () Bool)

(assert (=> b!4005622 (= e!2484077 (or (not (= newSuffix!27 Nil!42882)) (= lt!1417040 prefix!494)))))

(declare-fun b!4005621 () Bool)

(declare-fun res!1627771 () Bool)

(assert (=> b!4005621 (=> (not res!1627771) (not e!2484077))))

(assert (=> b!4005621 (= res!1627771 (= (size!32062 lt!1417040) (+ (size!32062 prefix!494) (size!32062 newSuffix!27))))))

(declare-fun b!4005620 () Bool)

(assert (=> b!4005620 (= e!2484078 (Cons!42882 (h!48302 prefix!494) (++!11218 (t!332477 prefix!494) newSuffix!27)))))

(assert (= (and d!1184899 c!692603) b!4005619))

(assert (= (and d!1184899 (not c!692603)) b!4005620))

(assert (= (and d!1184899 res!1627772) b!4005621))

(assert (= (and b!4005621 res!1627771) b!4005622))

(declare-fun m!4588689 () Bool)

(assert (=> d!1184899 m!4588689))

(declare-fun m!4588691 () Bool)

(assert (=> d!1184899 m!4588691))

(declare-fun m!4588693 () Bool)

(assert (=> d!1184899 m!4588693))

(declare-fun m!4588695 () Bool)

(assert (=> b!4005621 m!4588695))

(assert (=> b!4005621 m!4588247))

(assert (=> b!4005621 m!4588195))

(declare-fun m!4588697 () Bool)

(assert (=> b!4005620 m!4588697))

(assert (=> b!4005261 d!1184899))

(declare-fun d!1184901 () Bool)

(declare-fun e!2484079 () Bool)

(assert (=> d!1184901 e!2484079))

(declare-fun res!1627774 () Bool)

(assert (=> d!1184901 (=> (not res!1627774) (not e!2484079))))

(declare-fun lt!1417041 () List!43006)

(assert (=> d!1184901 (= res!1627774 (= (content!6500 lt!1417041) ((_ map or) (content!6500 lt!1416910) (content!6500 newSuffixResult!27))))))

(declare-fun e!2484080 () List!43006)

(assert (=> d!1184901 (= lt!1417041 e!2484080)))

(declare-fun c!692604 () Bool)

(assert (=> d!1184901 (= c!692604 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184901 (= (++!11218 lt!1416910 newSuffixResult!27) lt!1417041)))

(declare-fun b!4005623 () Bool)

(assert (=> b!4005623 (= e!2484080 newSuffixResult!27)))

(declare-fun b!4005626 () Bool)

(assert (=> b!4005626 (= e!2484079 (or (not (= newSuffixResult!27 Nil!42882)) (= lt!1417041 lt!1416910)))))

(declare-fun b!4005625 () Bool)

(declare-fun res!1627773 () Bool)

(assert (=> b!4005625 (=> (not res!1627773) (not e!2484079))))

(assert (=> b!4005625 (= res!1627773 (= (size!32062 lt!1417041) (+ (size!32062 lt!1416910) (size!32062 newSuffixResult!27))))))

(declare-fun b!4005624 () Bool)

(assert (=> b!4005624 (= e!2484080 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) newSuffixResult!27)))))

(assert (= (and d!1184901 c!692604) b!4005623))

(assert (= (and d!1184901 (not c!692604)) b!4005624))

(assert (= (and d!1184901 res!1627774) b!4005625))

(assert (= (and b!4005625 res!1627773) b!4005626))

(declare-fun m!4588699 () Bool)

(assert (=> d!1184901 m!4588699))

(declare-fun m!4588701 () Bool)

(assert (=> d!1184901 m!4588701))

(declare-fun m!4588703 () Bool)

(assert (=> d!1184901 m!4588703))

(declare-fun m!4588705 () Bool)

(assert (=> b!4005625 m!4588705))

(assert (=> b!4005625 m!4588245))

(declare-fun m!4588707 () Bool)

(assert (=> b!4005625 m!4588707))

(declare-fun m!4588709 () Bool)

(assert (=> b!4005624 m!4588709))

(assert (=> b!4005261 d!1184901))

(declare-fun d!1184903 () Bool)

(declare-fun e!2484081 () Bool)

(assert (=> d!1184903 e!2484081))

(declare-fun res!1627776 () Bool)

(assert (=> d!1184903 (=> (not res!1627776) (not e!2484081))))

(declare-fun lt!1417042 () List!43006)

(assert (=> d!1184903 (= res!1627776 (= (content!6500 lt!1417042) ((_ map or) (content!6500 lt!1416910) (content!6500 lt!1416894))))))

(declare-fun e!2484082 () List!43006)

(assert (=> d!1184903 (= lt!1417042 e!2484082)))

(declare-fun c!692605 () Bool)

(assert (=> d!1184903 (= c!692605 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184903 (= (++!11218 lt!1416910 lt!1416894) lt!1417042)))

(declare-fun b!4005627 () Bool)

(assert (=> b!4005627 (= e!2484082 lt!1416894)))

(declare-fun b!4005630 () Bool)

(assert (=> b!4005630 (= e!2484081 (or (not (= lt!1416894 Nil!42882)) (= lt!1417042 lt!1416910)))))

(declare-fun b!4005629 () Bool)

(declare-fun res!1627775 () Bool)

(assert (=> b!4005629 (=> (not res!1627775) (not e!2484081))))

(assert (=> b!4005629 (= res!1627775 (= (size!32062 lt!1417042) (+ (size!32062 lt!1416910) (size!32062 lt!1416894))))))

(declare-fun b!4005628 () Bool)

(assert (=> b!4005628 (= e!2484082 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) lt!1416894)))))

(assert (= (and d!1184903 c!692605) b!4005627))

(assert (= (and d!1184903 (not c!692605)) b!4005628))

(assert (= (and d!1184903 res!1627776) b!4005629))

(assert (= (and b!4005629 res!1627775) b!4005630))

(declare-fun m!4588711 () Bool)

(assert (=> d!1184903 m!4588711))

(assert (=> d!1184903 m!4588701))

(declare-fun m!4588713 () Bool)

(assert (=> d!1184903 m!4588713))

(declare-fun m!4588715 () Bool)

(assert (=> b!4005629 m!4588715))

(assert (=> b!4005629 m!4588245))

(declare-fun m!4588717 () Bool)

(assert (=> b!4005629 m!4588717))

(declare-fun m!4588719 () Bool)

(assert (=> b!4005628 m!4588719))

(assert (=> b!4005239 d!1184903))

(declare-fun d!1184905 () Bool)

(declare-fun lt!1417045 () List!43006)

(assert (=> d!1184905 (= (++!11218 lt!1416910 lt!1417045) prefix!494)))

(declare-fun e!2484085 () List!43006)

(assert (=> d!1184905 (= lt!1417045 e!2484085)))

(declare-fun c!692608 () Bool)

(assert (=> d!1184905 (= c!692608 ((_ is Cons!42882) lt!1416910))))

(assert (=> d!1184905 (>= (size!32062 prefix!494) (size!32062 lt!1416910))))

(assert (=> d!1184905 (= (getSuffix!2328 prefix!494 lt!1416910) lt!1417045)))

(declare-fun b!4005635 () Bool)

(assert (=> b!4005635 (= e!2484085 (getSuffix!2328 (tail!6242 prefix!494) (t!332477 lt!1416910)))))

(declare-fun b!4005636 () Bool)

(assert (=> b!4005636 (= e!2484085 prefix!494)))

(assert (= (and d!1184905 c!692608) b!4005635))

(assert (= (and d!1184905 (not c!692608)) b!4005636))

(declare-fun m!4588721 () Bool)

(assert (=> d!1184905 m!4588721))

(assert (=> d!1184905 m!4588247))

(assert (=> d!1184905 m!4588245))

(declare-fun m!4588723 () Bool)

(assert (=> b!4005635 m!4588723))

(assert (=> b!4005635 m!4588723))

(declare-fun m!4588725 () Bool)

(assert (=> b!4005635 m!4588725))

(assert (=> b!4005239 d!1184905))

(declare-fun b!4005638 () Bool)

(declare-fun res!1627777 () Bool)

(declare-fun e!2484087 () Bool)

(assert (=> b!4005638 (=> (not res!1627777) (not e!2484087))))

(assert (=> b!4005638 (= res!1627777 (= (head!8510 lt!1416910) (head!8510 prefix!494)))))

(declare-fun b!4005640 () Bool)

(declare-fun e!2484088 () Bool)

(assert (=> b!4005640 (= e!2484088 (>= (size!32062 prefix!494) (size!32062 lt!1416910)))))

(declare-fun b!4005639 () Bool)

(assert (=> b!4005639 (= e!2484087 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 prefix!494)))))

(declare-fun d!1184907 () Bool)

(assert (=> d!1184907 e!2484088))

(declare-fun res!1627780 () Bool)

(assert (=> d!1184907 (=> res!1627780 e!2484088)))

(declare-fun lt!1417046 () Bool)

(assert (=> d!1184907 (= res!1627780 (not lt!1417046))))

(declare-fun e!2484086 () Bool)

(assert (=> d!1184907 (= lt!1417046 e!2484086)))

(declare-fun res!1627778 () Bool)

(assert (=> d!1184907 (=> res!1627778 e!2484086)))

(assert (=> d!1184907 (= res!1627778 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184907 (= (isPrefix!3903 lt!1416910 prefix!494) lt!1417046)))

(declare-fun b!4005637 () Bool)

(assert (=> b!4005637 (= e!2484086 e!2484087)))

(declare-fun res!1627779 () Bool)

(assert (=> b!4005637 (=> (not res!1627779) (not e!2484087))))

(assert (=> b!4005637 (= res!1627779 (not ((_ is Nil!42882) prefix!494)))))

(assert (= (and d!1184907 (not res!1627778)) b!4005637))

(assert (= (and b!4005637 res!1627779) b!4005638))

(assert (= (and b!4005638 res!1627777) b!4005639))

(assert (= (and d!1184907 (not res!1627780)) b!4005640))

(assert (=> b!4005638 m!4588383))

(declare-fun m!4588727 () Bool)

(assert (=> b!4005638 m!4588727))

(assert (=> b!4005640 m!4588247))

(assert (=> b!4005640 m!4588245))

(assert (=> b!4005639 m!4588389))

(assert (=> b!4005639 m!4588723))

(assert (=> b!4005639 m!4588389))

(assert (=> b!4005639 m!4588723))

(declare-fun m!4588729 () Bool)

(assert (=> b!4005639 m!4588729))

(assert (=> b!4005239 d!1184907))

(declare-fun d!1184909 () Bool)

(assert (=> d!1184909 (isPrefix!3903 lt!1416910 prefix!494)))

(declare-fun lt!1417049 () Unit!61877)

(declare-fun choose!24176 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> d!1184909 (= lt!1417049 (choose!24176 prefix!494 lt!1416910 lt!1416898))))

(assert (=> d!1184909 (isPrefix!3903 prefix!494 lt!1416898)))

(assert (=> d!1184909 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!475 prefix!494 lt!1416910 lt!1416898) lt!1417049)))

(declare-fun bs!589024 () Bool)

(assert (= bs!589024 d!1184909))

(assert (=> bs!589024 m!4588221))

(declare-fun m!4588731 () Bool)

(assert (=> bs!589024 m!4588731))

(assert (=> bs!589024 m!4588277))

(assert (=> b!4005239 d!1184909))

(declare-fun b!4005669 () Bool)

(declare-fun e!2484103 () Bool)

(declare-fun e!2484106 () Bool)

(assert (=> b!4005669 (= e!2484103 e!2484106)))

(declare-fun c!692616 () Bool)

(assert (=> b!4005669 (= c!692616 ((_ is EmptyLang!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun bm!286104 () Bool)

(declare-fun call!286109 () Bool)

(assert (=> bm!286104 (= call!286109 (isEmpty!25619 lt!1416910))))

(declare-fun b!4005670 () Bool)

(declare-fun e!2484104 () Bool)

(declare-fun derivativeStep!3519 (Regex!11721 C!23628) Regex!11721)

(assert (=> b!4005670 (= e!2484104 (matchR!5682 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)) (tail!6242 lt!1416910)))))

(declare-fun d!1184911 () Bool)

(assert (=> d!1184911 e!2484103))

(declare-fun c!692615 () Bool)

(assert (=> d!1184911 (= c!692615 ((_ is EmptyExpr!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun lt!1417052 () Bool)

(assert (=> d!1184911 (= lt!1417052 e!2484104)))

(declare-fun c!692617 () Bool)

(assert (=> d!1184911 (= c!692617 (isEmpty!25619 lt!1416910))))

(declare-fun validRegex!5310 (Regex!11721) Bool)

(assert (=> d!1184911 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1184911 (= (matchR!5682 (regex!6816 (rule!9852 token!484)) lt!1416910) lt!1417052)))

(declare-fun b!4005671 () Bool)

(declare-fun e!2484109 () Bool)

(assert (=> b!4005671 (= e!2484109 (= (head!8510 lt!1416910) (c!692547 (regex!6816 (rule!9852 token!484)))))))

(declare-fun b!4005672 () Bool)

(declare-fun e!2484107 () Bool)

(declare-fun e!2484108 () Bool)

(assert (=> b!4005672 (= e!2484107 e!2484108)))

(declare-fun res!1627803 () Bool)

(assert (=> b!4005672 (=> res!1627803 e!2484108)))

(assert (=> b!4005672 (= res!1627803 call!286109)))

(declare-fun b!4005673 () Bool)

(assert (=> b!4005673 (= e!2484106 (not lt!1417052))))

(declare-fun b!4005674 () Bool)

(declare-fun res!1627801 () Bool)

(assert (=> b!4005674 (=> res!1627801 e!2484108)))

(assert (=> b!4005674 (= res!1627801 (not (isEmpty!25619 (tail!6242 lt!1416910))))))

(declare-fun b!4005675 () Bool)

(assert (=> b!4005675 (= e!2484108 (not (= (head!8510 lt!1416910) (c!692547 (regex!6816 (rule!9852 token!484))))))))

(declare-fun b!4005676 () Bool)

(declare-fun res!1627798 () Bool)

(declare-fun e!2484105 () Bool)

(assert (=> b!4005676 (=> res!1627798 e!2484105)))

(assert (=> b!4005676 (= res!1627798 e!2484109)))

(declare-fun res!1627799 () Bool)

(assert (=> b!4005676 (=> (not res!1627799) (not e!2484109))))

(assert (=> b!4005676 (= res!1627799 lt!1417052)))

(declare-fun b!4005677 () Bool)

(assert (=> b!4005677 (= e!2484103 (= lt!1417052 call!286109))))

(declare-fun b!4005678 () Bool)

(assert (=> b!4005678 (= e!2484105 e!2484107)))

(declare-fun res!1627804 () Bool)

(assert (=> b!4005678 (=> (not res!1627804) (not e!2484107))))

(assert (=> b!4005678 (= res!1627804 (not lt!1417052))))

(declare-fun b!4005679 () Bool)

(declare-fun res!1627802 () Bool)

(assert (=> b!4005679 (=> (not res!1627802) (not e!2484109))))

(assert (=> b!4005679 (= res!1627802 (not call!286109))))

(declare-fun b!4005680 () Bool)

(declare-fun nullable!4110 (Regex!11721) Bool)

(assert (=> b!4005680 (= e!2484104 (nullable!4110 (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4005681 () Bool)

(declare-fun res!1627797 () Bool)

(assert (=> b!4005681 (=> (not res!1627797) (not e!2484109))))

(assert (=> b!4005681 (= res!1627797 (isEmpty!25619 (tail!6242 lt!1416910)))))

(declare-fun b!4005682 () Bool)

(declare-fun res!1627800 () Bool)

(assert (=> b!4005682 (=> res!1627800 e!2484105)))

(assert (=> b!4005682 (= res!1627800 (not ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484)))))))

(assert (=> b!4005682 (= e!2484106 e!2484105)))

(assert (= (and d!1184911 c!692617) b!4005680))

(assert (= (and d!1184911 (not c!692617)) b!4005670))

(assert (= (and d!1184911 c!692615) b!4005677))

(assert (= (and d!1184911 (not c!692615)) b!4005669))

(assert (= (and b!4005669 c!692616) b!4005673))

(assert (= (and b!4005669 (not c!692616)) b!4005682))

(assert (= (and b!4005682 (not res!1627800)) b!4005676))

(assert (= (and b!4005676 res!1627799) b!4005679))

(assert (= (and b!4005679 res!1627802) b!4005681))

(assert (= (and b!4005681 res!1627797) b!4005671))

(assert (= (and b!4005676 (not res!1627798)) b!4005678))

(assert (= (and b!4005678 res!1627804) b!4005672))

(assert (= (and b!4005672 (not res!1627803)) b!4005674))

(assert (= (and b!4005674 (not res!1627801)) b!4005675))

(assert (= (or b!4005677 b!4005672 b!4005679) bm!286104))

(assert (=> b!4005671 m!4588383))

(assert (=> b!4005674 m!4588389))

(assert (=> b!4005674 m!4588389))

(declare-fun m!4588733 () Bool)

(assert (=> b!4005674 m!4588733))

(declare-fun m!4588735 () Bool)

(assert (=> d!1184911 m!4588735))

(declare-fun m!4588737 () Bool)

(assert (=> d!1184911 m!4588737))

(assert (=> b!4005675 m!4588383))

(assert (=> b!4005681 m!4588389))

(assert (=> b!4005681 m!4588389))

(assert (=> b!4005681 m!4588733))

(assert (=> b!4005670 m!4588383))

(assert (=> b!4005670 m!4588383))

(declare-fun m!4588739 () Bool)

(assert (=> b!4005670 m!4588739))

(assert (=> b!4005670 m!4588389))

(assert (=> b!4005670 m!4588739))

(assert (=> b!4005670 m!4588389))

(declare-fun m!4588741 () Bool)

(assert (=> b!4005670 m!4588741))

(declare-fun m!4588743 () Bool)

(assert (=> b!4005680 m!4588743))

(assert (=> bm!286104 m!4588735))

(assert (=> b!4005249 d!1184911))

(declare-fun b!4005684 () Bool)

(declare-fun res!1627805 () Bool)

(declare-fun e!2484111 () Bool)

(assert (=> b!4005684 (=> (not res!1627805) (not e!2484111))))

(assert (=> b!4005684 (= res!1627805 (= (head!8510 lt!1416910) (head!8510 lt!1416899)))))

(declare-fun b!4005686 () Bool)

(declare-fun e!2484112 () Bool)

(assert (=> b!4005686 (= e!2484112 (>= (size!32062 lt!1416899) (size!32062 lt!1416910)))))

(declare-fun b!4005685 () Bool)

(assert (=> b!4005685 (= e!2484111 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416899)))))

(declare-fun d!1184913 () Bool)

(assert (=> d!1184913 e!2484112))

(declare-fun res!1627808 () Bool)

(assert (=> d!1184913 (=> res!1627808 e!2484112)))

(declare-fun lt!1417053 () Bool)

(assert (=> d!1184913 (= res!1627808 (not lt!1417053))))

(declare-fun e!2484110 () Bool)

(assert (=> d!1184913 (= lt!1417053 e!2484110)))

(declare-fun res!1627806 () Bool)

(assert (=> d!1184913 (=> res!1627806 e!2484110)))

(assert (=> d!1184913 (= res!1627806 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184913 (= (isPrefix!3903 lt!1416910 lt!1416899) lt!1417053)))

(declare-fun b!4005683 () Bool)

(assert (=> b!4005683 (= e!2484110 e!2484111)))

(declare-fun res!1627807 () Bool)

(assert (=> b!4005683 (=> (not res!1627807) (not e!2484111))))

(assert (=> b!4005683 (= res!1627807 (not ((_ is Nil!42882) lt!1416899)))))

(assert (= (and d!1184913 (not res!1627806)) b!4005683))

(assert (= (and b!4005683 res!1627807) b!4005684))

(assert (= (and b!4005684 res!1627805) b!4005685))

(assert (= (and d!1184913 (not res!1627808)) b!4005686))

(assert (=> b!4005684 m!4588383))

(declare-fun m!4588745 () Bool)

(assert (=> b!4005684 m!4588745))

(declare-fun m!4588747 () Bool)

(assert (=> b!4005686 m!4588747))

(assert (=> b!4005686 m!4588245))

(assert (=> b!4005685 m!4588389))

(declare-fun m!4588749 () Bool)

(assert (=> b!4005685 m!4588749))

(assert (=> b!4005685 m!4588389))

(assert (=> b!4005685 m!4588749))

(declare-fun m!4588751 () Bool)

(assert (=> b!4005685 m!4588751))

(assert (=> b!4005249 d!1184913))

(declare-fun d!1184915 () Bool)

(assert (=> d!1184915 (isPrefix!3903 lt!1416910 (++!11218 prefix!494 newSuffix!27))))

(declare-fun lt!1417056 () Unit!61877)

(declare-fun choose!24178 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> d!1184915 (= lt!1417056 (choose!24178 lt!1416910 prefix!494 newSuffix!27))))

(assert (=> d!1184915 (isPrefix!3903 lt!1416910 prefix!494)))

(assert (=> d!1184915 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!716 lt!1416910 prefix!494 newSuffix!27) lt!1417056)))

(declare-fun bs!589025 () Bool)

(assert (= bs!589025 d!1184915))

(assert (=> bs!589025 m!4588225))

(assert (=> bs!589025 m!4588225))

(declare-fun m!4588753 () Bool)

(assert (=> bs!589025 m!4588753))

(declare-fun m!4588755 () Bool)

(assert (=> bs!589025 m!4588755))

(assert (=> bs!589025 m!4588221))

(assert (=> b!4005249 d!1184915))

(declare-fun d!1184917 () Bool)

(assert (=> d!1184917 (isPrefix!3903 lt!1416910 (++!11218 prefix!494 suffix!1299))))

(declare-fun lt!1417057 () Unit!61877)

(assert (=> d!1184917 (= lt!1417057 (choose!24178 lt!1416910 prefix!494 suffix!1299))))

(assert (=> d!1184917 (isPrefix!3903 lt!1416910 prefix!494)))

(assert (=> d!1184917 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!716 lt!1416910 prefix!494 suffix!1299) lt!1417057)))

(declare-fun bs!589026 () Bool)

(assert (= bs!589026 d!1184917))

(assert (=> bs!589026 m!4588231))

(assert (=> bs!589026 m!4588231))

(declare-fun m!4588757 () Bool)

(assert (=> bs!589026 m!4588757))

(declare-fun m!4588759 () Bool)

(assert (=> bs!589026 m!4588759))

(assert (=> bs!589026 m!4588221))

(assert (=> b!4005249 d!1184917))

(declare-fun b!4005705 () Bool)

(declare-fun res!1627823 () Bool)

(declare-fun e!2484121 () Bool)

(assert (=> b!4005705 (=> (not res!1627823) (not e!2484121))))

(declare-fun lt!1417068 () Option!9230)

(assert (=> b!4005705 (= res!1627823 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))) (_2!24153 (get!14094 lt!1417068))) lt!1416898))))

(declare-fun b!4005706 () Bool)

(declare-fun res!1627829 () Bool)

(assert (=> b!4005706 (=> (not res!1627829) (not e!2484121))))

(assert (=> b!4005706 (= res!1627829 (matchR!5682 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun b!4005707 () Bool)

(declare-fun e!2484120 () Option!9230)

(declare-fun lt!1417070 () Option!9230)

(declare-fun lt!1417072 () Option!9230)

(assert (=> b!4005707 (= e!2484120 (ite (and ((_ is None!9229) lt!1417070) ((_ is None!9229) lt!1417072)) None!9229 (ite ((_ is None!9229) lt!1417072) lt!1417070 (ite ((_ is None!9229) lt!1417070) lt!1417072 (ite (>= (size!32061 (_1!24153 (v!39593 lt!1417070))) (size!32061 (_1!24153 (v!39593 lt!1417072)))) lt!1417070 lt!1417072)))))))

(declare-fun call!286112 () Option!9230)

(assert (=> b!4005707 (= lt!1417070 call!286112)))

(assert (=> b!4005707 (= lt!1417072 (maxPrefix!3703 thiss!21717 (t!332479 rules!2999) lt!1416898))))

(declare-fun b!4005708 () Bool)

(assert (=> b!4005708 (= e!2484120 call!286112)))

(declare-fun b!4005709 () Bool)

(declare-fun res!1627825 () Bool)

(assert (=> b!4005709 (=> (not res!1627825) (not e!2484121))))

(assert (=> b!4005709 (= res!1627825 (< (size!32062 (_2!24153 (get!14094 lt!1417068))) (size!32062 lt!1416898)))))

(declare-fun bm!286107 () Bool)

(assert (=> bm!286107 (= call!286112 (maxPrefixOneRule!2723 thiss!21717 (h!48304 rules!2999) lt!1416898))))

(declare-fun b!4005711 () Bool)

(declare-fun e!2484119 () Bool)

(assert (=> b!4005711 (= e!2484119 e!2484121)))

(declare-fun res!1627824 () Bool)

(assert (=> b!4005711 (=> (not res!1627824) (not e!2484121))))

(declare-fun isDefined!7062 (Option!9230) Bool)

(assert (=> b!4005711 (= res!1627824 (isDefined!7062 lt!1417068))))

(declare-fun b!4005712 () Bool)

(declare-fun res!1627827 () Bool)

(assert (=> b!4005712 (=> (not res!1627827) (not e!2484121))))

(assert (=> b!4005712 (= res!1627827 (= (value!214890 (_1!24153 (get!14094 lt!1417068))) (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun b!4005713 () Bool)

(declare-fun contains!8524 (List!43008 Rule!13432) Bool)

(assert (=> b!4005713 (= e!2484121 (contains!8524 rules!2999 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))

(declare-fun d!1184919 () Bool)

(assert (=> d!1184919 e!2484119))

(declare-fun res!1627826 () Bool)

(assert (=> d!1184919 (=> res!1627826 e!2484119)))

(assert (=> d!1184919 (= res!1627826 (isEmpty!25620 lt!1417068))))

(assert (=> d!1184919 (= lt!1417068 e!2484120)))

(declare-fun c!692620 () Bool)

(assert (=> d!1184919 (= c!692620 (and ((_ is Cons!42884) rules!2999) ((_ is Nil!42884) (t!332479 rules!2999))))))

(declare-fun lt!1417071 () Unit!61877)

(declare-fun lt!1417069 () Unit!61877)

(assert (=> d!1184919 (= lt!1417071 lt!1417069)))

(assert (=> d!1184919 (isPrefix!3903 lt!1416898 lt!1416898)))

(declare-fun lemmaIsPrefixRefl!2479 (List!43006 List!43006) Unit!61877)

(assert (=> d!1184919 (= lt!1417069 (lemmaIsPrefixRefl!2479 lt!1416898 lt!1416898))))

(declare-fun rulesValidInductive!2483 (LexerInterface!6405 List!43008) Bool)

(assert (=> d!1184919 (rulesValidInductive!2483 thiss!21717 rules!2999)))

(assert (=> d!1184919 (= (maxPrefix!3703 thiss!21717 rules!2999 lt!1416898) lt!1417068)))

(declare-fun b!4005710 () Bool)

(declare-fun res!1627828 () Bool)

(assert (=> b!4005710 (=> (not res!1627828) (not e!2484121))))

(assert (=> b!4005710 (= res!1627828 (= (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))) (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068)))))))

(assert (= (and d!1184919 c!692620) b!4005708))

(assert (= (and d!1184919 (not c!692620)) b!4005707))

(assert (= (or b!4005708 b!4005707) bm!286107))

(assert (= (and d!1184919 (not res!1627826)) b!4005711))

(assert (= (and b!4005711 res!1627824) b!4005710))

(assert (= (and b!4005710 res!1627828) b!4005709))

(assert (= (and b!4005709 res!1627825) b!4005705))

(assert (= (and b!4005705 res!1627823) b!4005712))

(assert (= (and b!4005712 res!1627827) b!4005706))

(assert (= (and b!4005706 res!1627829) b!4005713))

(declare-fun m!4588761 () Bool)

(assert (=> b!4005705 m!4588761))

(declare-fun m!4588763 () Bool)

(assert (=> b!4005705 m!4588763))

(assert (=> b!4005705 m!4588763))

(declare-fun m!4588765 () Bool)

(assert (=> b!4005705 m!4588765))

(assert (=> b!4005705 m!4588765))

(declare-fun m!4588767 () Bool)

(assert (=> b!4005705 m!4588767))

(declare-fun m!4588769 () Bool)

(assert (=> b!4005711 m!4588769))

(assert (=> b!4005710 m!4588761))

(assert (=> b!4005710 m!4588763))

(assert (=> b!4005710 m!4588763))

(assert (=> b!4005710 m!4588765))

(declare-fun m!4588771 () Bool)

(assert (=> b!4005707 m!4588771))

(declare-fun m!4588773 () Bool)

(assert (=> d!1184919 m!4588773))

(declare-fun m!4588775 () Bool)

(assert (=> d!1184919 m!4588775))

(declare-fun m!4588777 () Bool)

(assert (=> d!1184919 m!4588777))

(declare-fun m!4588779 () Bool)

(assert (=> d!1184919 m!4588779))

(assert (=> b!4005712 m!4588761))

(declare-fun m!4588781 () Bool)

(assert (=> b!4005712 m!4588781))

(assert (=> b!4005712 m!4588781))

(declare-fun m!4588783 () Bool)

(assert (=> b!4005712 m!4588783))

(assert (=> b!4005713 m!4588761))

(declare-fun m!4588785 () Bool)

(assert (=> b!4005713 m!4588785))

(assert (=> b!4005706 m!4588761))

(assert (=> b!4005706 m!4588763))

(assert (=> b!4005706 m!4588763))

(assert (=> b!4005706 m!4588765))

(assert (=> b!4005706 m!4588765))

(declare-fun m!4588787 () Bool)

(assert (=> b!4005706 m!4588787))

(assert (=> b!4005709 m!4588761))

(declare-fun m!4588789 () Bool)

(assert (=> b!4005709 m!4588789))

(assert (=> b!4005709 m!4588591))

(declare-fun m!4588791 () Bool)

(assert (=> bm!286107 m!4588791))

(assert (=> b!4005259 d!1184919))

(declare-fun d!1184921 () Bool)

(declare-fun e!2484122 () Bool)

(assert (=> d!1184921 e!2484122))

(declare-fun res!1627831 () Bool)

(assert (=> d!1184921 (=> (not res!1627831) (not e!2484122))))

(declare-fun lt!1417073 () List!43006)

(assert (=> d!1184921 (= res!1627831 (= (content!6500 lt!1417073) ((_ map or) (content!6500 prefix!494) (content!6500 suffix!1299))))))

(declare-fun e!2484123 () List!43006)

(assert (=> d!1184921 (= lt!1417073 e!2484123)))

(declare-fun c!692621 () Bool)

(assert (=> d!1184921 (= c!692621 ((_ is Nil!42882) prefix!494))))

(assert (=> d!1184921 (= (++!11218 prefix!494 suffix!1299) lt!1417073)))

(declare-fun b!4005714 () Bool)

(assert (=> b!4005714 (= e!2484123 suffix!1299)))

(declare-fun b!4005717 () Bool)

(assert (=> b!4005717 (= e!2484122 (or (not (= suffix!1299 Nil!42882)) (= lt!1417073 prefix!494)))))

(declare-fun b!4005716 () Bool)

(declare-fun res!1627830 () Bool)

(assert (=> b!4005716 (=> (not res!1627830) (not e!2484122))))

(assert (=> b!4005716 (= res!1627830 (= (size!32062 lt!1417073) (+ (size!32062 prefix!494) (size!32062 suffix!1299))))))

(declare-fun b!4005715 () Bool)

(assert (=> b!4005715 (= e!2484123 (Cons!42882 (h!48302 prefix!494) (++!11218 (t!332477 prefix!494) suffix!1299)))))

(assert (= (and d!1184921 c!692621) b!4005714))

(assert (= (and d!1184921 (not c!692621)) b!4005715))

(assert (= (and d!1184921 res!1627831) b!4005716))

(assert (= (and b!4005716 res!1627830) b!4005717))

(declare-fun m!4588793 () Bool)

(assert (=> d!1184921 m!4588793))

(assert (=> d!1184921 m!4588691))

(declare-fun m!4588795 () Bool)

(assert (=> d!1184921 m!4588795))

(declare-fun m!4588797 () Bool)

(assert (=> b!4005716 m!4588797))

(assert (=> b!4005716 m!4588247))

(assert (=> b!4005716 m!4588193))

(declare-fun m!4588799 () Bool)

(assert (=> b!4005715 m!4588799))

(assert (=> b!4005259 d!1184921))

(declare-fun d!1184923 () Bool)

(assert (=> d!1184923 (= (isEmpty!25616 rules!2999) ((_ is Nil!42884) rules!2999))))

(assert (=> b!4005258 d!1184923))

(declare-fun d!1184925 () Bool)

(declare-fun e!2484124 () Bool)

(assert (=> d!1184925 e!2484124))

(declare-fun res!1627833 () Bool)

(assert (=> d!1184925 (=> (not res!1627833) (not e!2484124))))

(declare-fun lt!1417074 () List!43006)

(assert (=> d!1184925 (= res!1627833 (= (content!6500 lt!1417074) ((_ map or) (content!6500 lt!1416910) (content!6500 lt!1416903))))))

(declare-fun e!2484125 () List!43006)

(assert (=> d!1184925 (= lt!1417074 e!2484125)))

(declare-fun c!692622 () Bool)

(assert (=> d!1184925 (= c!692622 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184925 (= (++!11218 lt!1416910 lt!1416903) lt!1417074)))

(declare-fun b!4005718 () Bool)

(assert (=> b!4005718 (= e!2484125 lt!1416903)))

(declare-fun b!4005721 () Bool)

(assert (=> b!4005721 (= e!2484124 (or (not (= lt!1416903 Nil!42882)) (= lt!1417074 lt!1416910)))))

(declare-fun b!4005720 () Bool)

(declare-fun res!1627832 () Bool)

(assert (=> b!4005720 (=> (not res!1627832) (not e!2484124))))

(assert (=> b!4005720 (= res!1627832 (= (size!32062 lt!1417074) (+ (size!32062 lt!1416910) (size!32062 lt!1416903))))))

(declare-fun b!4005719 () Bool)

(assert (=> b!4005719 (= e!2484125 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) lt!1416903)))))

(assert (= (and d!1184925 c!692622) b!4005718))

(assert (= (and d!1184925 (not c!692622)) b!4005719))

(assert (= (and d!1184925 res!1627833) b!4005720))

(assert (= (and b!4005720 res!1627832) b!4005721))

(declare-fun m!4588801 () Bool)

(assert (=> d!1184925 m!4588801))

(assert (=> d!1184925 m!4588701))

(declare-fun m!4588803 () Bool)

(assert (=> d!1184925 m!4588803))

(declare-fun m!4588805 () Bool)

(assert (=> b!4005720 m!4588805))

(assert (=> b!4005720 m!4588245))

(declare-fun m!4588807 () Bool)

(assert (=> b!4005720 m!4588807))

(declare-fun m!4588809 () Bool)

(assert (=> b!4005719 m!4588809))

(assert (=> b!4005247 d!1184925))

(declare-fun d!1184927 () Bool)

(declare-fun e!2484126 () Bool)

(assert (=> d!1184927 e!2484126))

(declare-fun res!1627835 () Bool)

(assert (=> d!1184927 (=> (not res!1627835) (not e!2484126))))

(declare-fun lt!1417075 () List!43006)

(assert (=> d!1184927 (= res!1627835 (= (content!6500 lt!1417075) ((_ map or) (content!6500 lt!1416911) (content!6500 suffix!1299))))))

(declare-fun e!2484127 () List!43006)

(assert (=> d!1184927 (= lt!1417075 e!2484127)))

(declare-fun c!692623 () Bool)

(assert (=> d!1184927 (= c!692623 ((_ is Nil!42882) lt!1416911))))

(assert (=> d!1184927 (= (++!11218 lt!1416911 suffix!1299) lt!1417075)))

(declare-fun b!4005722 () Bool)

(assert (=> b!4005722 (= e!2484127 suffix!1299)))

(declare-fun b!4005725 () Bool)

(assert (=> b!4005725 (= e!2484126 (or (not (= suffix!1299 Nil!42882)) (= lt!1417075 lt!1416911)))))

(declare-fun b!4005724 () Bool)

(declare-fun res!1627834 () Bool)

(assert (=> b!4005724 (=> (not res!1627834) (not e!2484126))))

(assert (=> b!4005724 (= res!1627834 (= (size!32062 lt!1417075) (+ (size!32062 lt!1416911) (size!32062 suffix!1299))))))

(declare-fun b!4005723 () Bool)

(assert (=> b!4005723 (= e!2484127 (Cons!42882 (h!48302 lt!1416911) (++!11218 (t!332477 lt!1416911) suffix!1299)))))

(assert (= (and d!1184927 c!692623) b!4005722))

(assert (= (and d!1184927 (not c!692623)) b!4005723))

(assert (= (and d!1184927 res!1627835) b!4005724))

(assert (= (and b!4005724 res!1627834) b!4005725))

(declare-fun m!4588811 () Bool)

(assert (=> d!1184927 m!4588811))

(declare-fun m!4588813 () Bool)

(assert (=> d!1184927 m!4588813))

(assert (=> d!1184927 m!4588795))

(declare-fun m!4588815 () Bool)

(assert (=> b!4005724 m!4588815))

(declare-fun m!4588817 () Bool)

(assert (=> b!4005724 m!4588817))

(assert (=> b!4005724 m!4588193))

(declare-fun m!4588819 () Bool)

(assert (=> b!4005723 m!4588819))

(assert (=> b!4005247 d!1184927))

(declare-fun d!1184929 () Bool)

(declare-fun e!2484128 () Bool)

(assert (=> d!1184929 e!2484128))

(declare-fun res!1627837 () Bool)

(assert (=> d!1184929 (=> (not res!1627837) (not e!2484128))))

(declare-fun lt!1417076 () List!43006)

(assert (=> d!1184929 (= res!1627837 (= (content!6500 lt!1417076) ((_ map or) (content!6500 lt!1416894) (content!6500 suffix!1299))))))

(declare-fun e!2484129 () List!43006)

(assert (=> d!1184929 (= lt!1417076 e!2484129)))

(declare-fun c!692624 () Bool)

(assert (=> d!1184929 (= c!692624 ((_ is Nil!42882) lt!1416894))))

(assert (=> d!1184929 (= (++!11218 lt!1416894 suffix!1299) lt!1417076)))

(declare-fun b!4005726 () Bool)

(assert (=> b!4005726 (= e!2484129 suffix!1299)))

(declare-fun b!4005729 () Bool)

(assert (=> b!4005729 (= e!2484128 (or (not (= suffix!1299 Nil!42882)) (= lt!1417076 lt!1416894)))))

(declare-fun b!4005728 () Bool)

(declare-fun res!1627836 () Bool)

(assert (=> b!4005728 (=> (not res!1627836) (not e!2484128))))

(assert (=> b!4005728 (= res!1627836 (= (size!32062 lt!1417076) (+ (size!32062 lt!1416894) (size!32062 suffix!1299))))))

(declare-fun b!4005727 () Bool)

(assert (=> b!4005727 (= e!2484129 (Cons!42882 (h!48302 lt!1416894) (++!11218 (t!332477 lt!1416894) suffix!1299)))))

(assert (= (and d!1184929 c!692624) b!4005726))

(assert (= (and d!1184929 (not c!692624)) b!4005727))

(assert (= (and d!1184929 res!1627837) b!4005728))

(assert (= (and b!4005728 res!1627836) b!4005729))

(declare-fun m!4588821 () Bool)

(assert (=> d!1184929 m!4588821))

(assert (=> d!1184929 m!4588713))

(assert (=> d!1184929 m!4588795))

(declare-fun m!4588823 () Bool)

(assert (=> b!4005728 m!4588823))

(assert (=> b!4005728 m!4588717))

(assert (=> b!4005728 m!4588193))

(declare-fun m!4588825 () Bool)

(assert (=> b!4005727 m!4588825))

(assert (=> b!4005247 d!1184929))

(declare-fun d!1184931 () Bool)

(assert (=> d!1184931 (= (++!11218 (++!11218 lt!1416910 lt!1416894) suffix!1299) (++!11218 lt!1416910 (++!11218 lt!1416894 suffix!1299)))))

(declare-fun lt!1417079 () Unit!61877)

(declare-fun choose!24179 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> d!1184931 (= lt!1417079 (choose!24179 lt!1416910 lt!1416894 suffix!1299))))

(assert (=> d!1184931 (= (lemmaConcatAssociativity!2528 lt!1416910 lt!1416894 suffix!1299) lt!1417079)))

(declare-fun bs!589027 () Bool)

(assert (= bs!589027 d!1184931))

(declare-fun m!4588827 () Bool)

(assert (=> bs!589027 m!4588827))

(assert (=> bs!589027 m!4588241))

(declare-fun m!4588829 () Bool)

(assert (=> bs!589027 m!4588829))

(assert (=> bs!589027 m!4588217))

(declare-fun m!4588831 () Bool)

(assert (=> bs!589027 m!4588831))

(assert (=> bs!589027 m!4588241))

(assert (=> bs!589027 m!4588217))

(assert (=> b!4005247 d!1184931))

(declare-fun d!1184933 () Bool)

(declare-fun res!1627840 () Bool)

(declare-fun e!2484132 () Bool)

(assert (=> d!1184933 (=> (not res!1627840) (not e!2484132))))

(declare-fun rulesValid!2651 (LexerInterface!6405 List!43008) Bool)

(assert (=> d!1184933 (= res!1627840 (rulesValid!2651 thiss!21717 rules!2999))))

(assert (=> d!1184933 (= (rulesInvariant!5748 thiss!21717 rules!2999) e!2484132)))

(declare-fun b!4005732 () Bool)

(declare-datatypes ((List!43010 0))(
  ( (Nil!42886) (Cons!42886 (h!48306 String!48948) (t!332505 List!43010)) )
))
(declare-fun noDuplicateTag!2652 (LexerInterface!6405 List!43008 List!43010) Bool)

(assert (=> b!4005732 (= e!2484132 (noDuplicateTag!2652 thiss!21717 rules!2999 Nil!42886))))

(assert (= (and d!1184933 res!1627840) b!4005732))

(declare-fun m!4588833 () Bool)

(assert (=> d!1184933 m!4588833))

(declare-fun m!4588835 () Bool)

(assert (=> b!4005732 m!4588835))

(assert (=> b!4005246 d!1184933))

(declare-fun b!4005734 () Bool)

(declare-fun res!1627841 () Bool)

(declare-fun e!2484134 () Bool)

(assert (=> b!4005734 (=> (not res!1627841) (not e!2484134))))

(assert (=> b!4005734 (= res!1627841 (= (head!8510 newSuffix!27) (head!8510 suffix!1299)))))

(declare-fun b!4005736 () Bool)

(declare-fun e!2484135 () Bool)

(assert (=> b!4005736 (= e!2484135 (>= (size!32062 suffix!1299) (size!32062 newSuffix!27)))))

(declare-fun b!4005735 () Bool)

(assert (=> b!4005735 (= e!2484134 (isPrefix!3903 (tail!6242 newSuffix!27) (tail!6242 suffix!1299)))))

(declare-fun d!1184935 () Bool)

(assert (=> d!1184935 e!2484135))

(declare-fun res!1627844 () Bool)

(assert (=> d!1184935 (=> res!1627844 e!2484135)))

(declare-fun lt!1417080 () Bool)

(assert (=> d!1184935 (= res!1627844 (not lt!1417080))))

(declare-fun e!2484133 () Bool)

(assert (=> d!1184935 (= lt!1417080 e!2484133)))

(declare-fun res!1627842 () Bool)

(assert (=> d!1184935 (=> res!1627842 e!2484133)))

(assert (=> d!1184935 (= res!1627842 ((_ is Nil!42882) newSuffix!27))))

(assert (=> d!1184935 (= (isPrefix!3903 newSuffix!27 suffix!1299) lt!1417080)))

(declare-fun b!4005733 () Bool)

(assert (=> b!4005733 (= e!2484133 e!2484134)))

(declare-fun res!1627843 () Bool)

(assert (=> b!4005733 (=> (not res!1627843) (not e!2484134))))

(assert (=> b!4005733 (= res!1627843 (not ((_ is Nil!42882) suffix!1299)))))

(assert (= (and d!1184935 (not res!1627842)) b!4005733))

(assert (= (and b!4005733 res!1627843) b!4005734))

(assert (= (and b!4005734 res!1627841) b!4005735))

(assert (= (and d!1184935 (not res!1627844)) b!4005736))

(declare-fun m!4588837 () Bool)

(assert (=> b!4005734 m!4588837))

(declare-fun m!4588839 () Bool)

(assert (=> b!4005734 m!4588839))

(assert (=> b!4005736 m!4588193))

(assert (=> b!4005736 m!4588195))

(declare-fun m!4588841 () Bool)

(assert (=> b!4005735 m!4588841))

(declare-fun m!4588843 () Bool)

(assert (=> b!4005735 m!4588843))

(assert (=> b!4005735 m!4588841))

(assert (=> b!4005735 m!4588843))

(declare-fun m!4588845 () Bool)

(assert (=> b!4005735 m!4588845))

(assert (=> b!4005256 d!1184935))

(declare-fun d!1184937 () Bool)

(declare-fun lt!1417081 () Int)

(assert (=> d!1184937 (>= lt!1417081 0)))

(declare-fun e!2484136 () Int)

(assert (=> d!1184937 (= lt!1417081 e!2484136)))

(declare-fun c!692625 () Bool)

(assert (=> d!1184937 (= c!692625 ((_ is Nil!42882) suffix!1299))))

(assert (=> d!1184937 (= (size!32062 suffix!1299) lt!1417081)))

(declare-fun b!4005737 () Bool)

(assert (=> b!4005737 (= e!2484136 0)))

(declare-fun b!4005738 () Bool)

(assert (=> b!4005738 (= e!2484136 (+ 1 (size!32062 (t!332477 suffix!1299))))))

(assert (= (and d!1184937 c!692625) b!4005737))

(assert (= (and d!1184937 (not c!692625)) b!4005738))

(declare-fun m!4588847 () Bool)

(assert (=> b!4005738 m!4588847))

(assert (=> b!4005245 d!1184937))

(declare-fun d!1184939 () Bool)

(declare-fun lt!1417082 () Int)

(assert (=> d!1184939 (>= lt!1417082 0)))

(declare-fun e!2484137 () Int)

(assert (=> d!1184939 (= lt!1417082 e!2484137)))

(declare-fun c!692626 () Bool)

(assert (=> d!1184939 (= c!692626 ((_ is Nil!42882) newSuffix!27))))

(assert (=> d!1184939 (= (size!32062 newSuffix!27) lt!1417082)))

(declare-fun b!4005739 () Bool)

(assert (=> b!4005739 (= e!2484137 0)))

(declare-fun b!4005740 () Bool)

(assert (=> b!4005740 (= e!2484137 (+ 1 (size!32062 (t!332477 newSuffix!27))))))

(assert (= (and d!1184939 c!692626) b!4005739))

(assert (= (and d!1184939 (not c!692626)) b!4005740))

(declare-fun m!4588849 () Bool)

(assert (=> b!4005740 m!4588849))

(assert (=> b!4005245 d!1184939))

(declare-fun d!1184941 () Bool)

(declare-fun e!2484138 () Bool)

(assert (=> d!1184941 e!2484138))

(declare-fun res!1627846 () Bool)

(assert (=> d!1184941 (=> (not res!1627846) (not e!2484138))))

(declare-fun lt!1417083 () List!43006)

(assert (=> d!1184941 (= res!1627846 (= (content!6500 lt!1417083) ((_ map or) (content!6500 lt!1416910) (content!6500 suffixResult!105))))))

(declare-fun e!2484139 () List!43006)

(assert (=> d!1184941 (= lt!1417083 e!2484139)))

(declare-fun c!692627 () Bool)

(assert (=> d!1184941 (= c!692627 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184941 (= (++!11218 lt!1416910 suffixResult!105) lt!1417083)))

(declare-fun b!4005741 () Bool)

(assert (=> b!4005741 (= e!2484139 suffixResult!105)))

(declare-fun b!4005744 () Bool)

(assert (=> b!4005744 (= e!2484138 (or (not (= suffixResult!105 Nil!42882)) (= lt!1417083 lt!1416910)))))

(declare-fun b!4005743 () Bool)

(declare-fun res!1627845 () Bool)

(assert (=> b!4005743 (=> (not res!1627845) (not e!2484138))))

(assert (=> b!4005743 (= res!1627845 (= (size!32062 lt!1417083) (+ (size!32062 lt!1416910) (size!32062 suffixResult!105))))))

(declare-fun b!4005742 () Bool)

(assert (=> b!4005742 (= e!2484139 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) suffixResult!105)))))

(assert (= (and d!1184941 c!692627) b!4005741))

(assert (= (and d!1184941 (not c!692627)) b!4005742))

(assert (= (and d!1184941 res!1627846) b!4005743))

(assert (= (and b!4005743 res!1627845) b!4005744))

(declare-fun m!4588851 () Bool)

(assert (=> d!1184941 m!4588851))

(assert (=> d!1184941 m!4588701))

(declare-fun m!4588853 () Bool)

(assert (=> d!1184941 m!4588853))

(declare-fun m!4588855 () Bool)

(assert (=> b!4005743 m!4588855))

(assert (=> b!4005743 m!4588245))

(declare-fun m!4588857 () Bool)

(assert (=> b!4005743 m!4588857))

(declare-fun m!4588859 () Bool)

(assert (=> b!4005742 m!4588859))

(assert (=> b!4005255 d!1184941))

(declare-fun d!1184943 () Bool)

(declare-fun e!2484142 () Bool)

(assert (=> d!1184943 e!2484142))

(declare-fun res!1627849 () Bool)

(assert (=> d!1184943 (=> (not res!1627849) (not e!2484142))))

(declare-fun semiInverseModEq!2917 (Int Int) Bool)

(assert (=> d!1184943 (= res!1627849 (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))))))

(declare-fun Unit!61881 () Unit!61877)

(assert (=> d!1184943 (= (lemmaInv!1031 (transformation!6816 (rule!9852 token!484))) Unit!61881)))

(declare-fun b!4005747 () Bool)

(declare-fun equivClasses!2816 (Int Int) Bool)

(assert (=> b!4005747 (= e!2484142 (equivClasses!2816 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))))))

(assert (= (and d!1184943 res!1627849) b!4005747))

(declare-fun m!4588861 () Bool)

(assert (=> d!1184943 m!4588861))

(declare-fun m!4588863 () Bool)

(assert (=> b!4005747 m!4588863))

(assert (=> b!4005255 d!1184943))

(declare-fun d!1184945 () Bool)

(declare-fun res!1627854 () Bool)

(declare-fun e!2484145 () Bool)

(assert (=> d!1184945 (=> (not res!1627854) (not e!2484145))))

(assert (=> d!1184945 (= res!1627854 (validRegex!5310 (regex!6816 (rule!9852 token!484))))))

(assert (=> d!1184945 (= (ruleValid!2748 thiss!21717 (rule!9852 token!484)) e!2484145)))

(declare-fun b!4005752 () Bool)

(declare-fun res!1627855 () Bool)

(assert (=> b!4005752 (=> (not res!1627855) (not e!2484145))))

(assert (=> b!4005752 (= res!1627855 (not (nullable!4110 (regex!6816 (rule!9852 token!484)))))))

(declare-fun b!4005753 () Bool)

(assert (=> b!4005753 (= e!2484145 (not (= (tag!7676 (rule!9852 token!484)) (String!48949 ""))))))

(assert (= (and d!1184945 res!1627854) b!4005752))

(assert (= (and b!4005752 res!1627855) b!4005753))

(assert (=> d!1184945 m!4588737))

(assert (=> b!4005752 m!4588743))

(assert (=> b!4005255 d!1184945))

(declare-fun d!1184947 () Bool)

(assert (=> d!1184947 (ruleValid!2748 thiss!21717 (rule!9852 token!484))))

(declare-fun lt!1417086 () Unit!61877)

(declare-fun choose!24180 (LexerInterface!6405 Rule!13432 List!43008) Unit!61877)

(assert (=> d!1184947 (= lt!1417086 (choose!24180 thiss!21717 (rule!9852 token!484) rules!2999))))

(assert (=> d!1184947 (contains!8524 rules!2999 (rule!9852 token!484))))

(assert (=> d!1184947 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1822 thiss!21717 (rule!9852 token!484) rules!2999) lt!1417086)))

(declare-fun bs!589028 () Bool)

(assert (= bs!589028 d!1184947))

(assert (=> bs!589028 m!4588257))

(declare-fun m!4588865 () Bool)

(assert (=> bs!589028 m!4588865))

(declare-fun m!4588867 () Bool)

(assert (=> bs!589028 m!4588867))

(assert (=> b!4005255 d!1184947))

(declare-fun d!1184949 () Bool)

(assert (=> d!1184949 (= (inv!57265 (tag!7676 (rule!9852 token!484))) (= (mod (str.len (value!214889 (tag!7676 (rule!9852 token!484)))) 2) 0))))

(assert (=> b!4005254 d!1184949))

(declare-fun d!1184951 () Bool)

(declare-fun res!1627858 () Bool)

(declare-fun e!2484148 () Bool)

(assert (=> d!1184951 (=> (not res!1627858) (not e!2484148))))

(assert (=> d!1184951 (= res!1627858 (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))))))

(assert (=> d!1184951 (= (inv!57268 (transformation!6816 (rule!9852 token!484))) e!2484148)))

(declare-fun b!4005756 () Bool)

(assert (=> b!4005756 (= e!2484148 (equivClasses!2816 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))))))

(assert (= (and d!1184951 res!1627858) b!4005756))

(assert (=> d!1184951 m!4588861))

(assert (=> b!4005756 m!4588863))

(assert (=> b!4005254 d!1184951))

(declare-fun b!4005758 () Bool)

(declare-fun res!1627859 () Bool)

(declare-fun e!2484150 () Bool)

(assert (=> b!4005758 (=> (not res!1627859) (not e!2484150))))

(assert (=> b!4005758 (= res!1627859 (= (head!8510 lt!1416910) (head!8510 lt!1416906)))))

(declare-fun b!4005760 () Bool)

(declare-fun e!2484151 () Bool)

(assert (=> b!4005760 (= e!2484151 (>= (size!32062 lt!1416906) (size!32062 lt!1416910)))))

(declare-fun b!4005759 () Bool)

(assert (=> b!4005759 (= e!2484150 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416906)))))

(declare-fun d!1184953 () Bool)

(assert (=> d!1184953 e!2484151))

(declare-fun res!1627862 () Bool)

(assert (=> d!1184953 (=> res!1627862 e!2484151)))

(declare-fun lt!1417087 () Bool)

(assert (=> d!1184953 (= res!1627862 (not lt!1417087))))

(declare-fun e!2484149 () Bool)

(assert (=> d!1184953 (= lt!1417087 e!2484149)))

(declare-fun res!1627860 () Bool)

(assert (=> d!1184953 (=> res!1627860 e!2484149)))

(assert (=> d!1184953 (= res!1627860 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184953 (= (isPrefix!3903 lt!1416910 lt!1416906) lt!1417087)))

(declare-fun b!4005757 () Bool)

(assert (=> b!4005757 (= e!2484149 e!2484150)))

(declare-fun res!1627861 () Bool)

(assert (=> b!4005757 (=> (not res!1627861) (not e!2484150))))

(assert (=> b!4005757 (= res!1627861 (not ((_ is Nil!42882) lt!1416906)))))

(assert (= (and d!1184953 (not res!1627860)) b!4005757))

(assert (= (and b!4005757 res!1627861) b!4005758))

(assert (= (and b!4005758 res!1627859) b!4005759))

(assert (= (and d!1184953 (not res!1627862)) b!4005760))

(assert (=> b!4005758 m!4588383))

(declare-fun m!4588869 () Bool)

(assert (=> b!4005758 m!4588869))

(declare-fun m!4588871 () Bool)

(assert (=> b!4005760 m!4588871))

(assert (=> b!4005760 m!4588245))

(assert (=> b!4005759 m!4588389))

(declare-fun m!4588873 () Bool)

(assert (=> b!4005759 m!4588873))

(assert (=> b!4005759 m!4588389))

(assert (=> b!4005759 m!4588873))

(declare-fun m!4588875 () Bool)

(assert (=> b!4005759 m!4588875))

(assert (=> b!4005243 d!1184953))

(declare-fun d!1184955 () Bool)

(assert (=> d!1184955 (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 suffixResult!105))))

(declare-fun lt!1417088 () Unit!61877)

(assert (=> d!1184955 (= lt!1417088 (choose!24170 lt!1416910 suffixResult!105))))

(assert (=> d!1184955 (= (lemmaConcatTwoListThenFirstIsPrefix!2744 lt!1416910 suffixResult!105) lt!1417088)))

(declare-fun bs!589029 () Bool)

(assert (= bs!589029 d!1184955))

(assert (=> bs!589029 m!4588253))

(assert (=> bs!589029 m!4588253))

(declare-fun m!4588877 () Bool)

(assert (=> bs!589029 m!4588877))

(declare-fun m!4588879 () Bool)

(assert (=> bs!589029 m!4588879))

(assert (=> b!4005243 d!1184955))

(declare-fun b!4005762 () Bool)

(declare-fun res!1627863 () Bool)

(declare-fun e!2484153 () Bool)

(assert (=> b!4005762 (=> (not res!1627863) (not e!2484153))))

(assert (=> b!4005762 (= res!1627863 (= (head!8510 lt!1416910) (head!8510 lt!1416898)))))

(declare-fun b!4005764 () Bool)

(declare-fun e!2484154 () Bool)

(assert (=> b!4005764 (= e!2484154 (>= (size!32062 lt!1416898) (size!32062 lt!1416910)))))

(declare-fun b!4005763 () Bool)

(assert (=> b!4005763 (= e!2484153 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416898)))))

(declare-fun d!1184957 () Bool)

(assert (=> d!1184957 e!2484154))

(declare-fun res!1627866 () Bool)

(assert (=> d!1184957 (=> res!1627866 e!2484154)))

(declare-fun lt!1417089 () Bool)

(assert (=> d!1184957 (= res!1627866 (not lt!1417089))))

(declare-fun e!2484152 () Bool)

(assert (=> d!1184957 (= lt!1417089 e!2484152)))

(declare-fun res!1627864 () Bool)

(assert (=> d!1184957 (=> res!1627864 e!2484152)))

(assert (=> d!1184957 (= res!1627864 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1184957 (= (isPrefix!3903 lt!1416910 lt!1416898) lt!1417089)))

(declare-fun b!4005761 () Bool)

(assert (=> b!4005761 (= e!2484152 e!2484153)))

(declare-fun res!1627865 () Bool)

(assert (=> b!4005761 (=> (not res!1627865) (not e!2484153))))

(assert (=> b!4005761 (= res!1627865 (not ((_ is Nil!42882) lt!1416898)))))

(assert (= (and d!1184957 (not res!1627864)) b!4005761))

(assert (= (and b!4005761 res!1627865) b!4005762))

(assert (= (and b!4005762 res!1627863) b!4005763))

(assert (= (and d!1184957 (not res!1627866)) b!4005764))

(assert (=> b!4005762 m!4588383))

(declare-fun m!4588881 () Bool)

(assert (=> b!4005762 m!4588881))

(assert (=> b!4005764 m!4588591))

(assert (=> b!4005764 m!4588245))

(assert (=> b!4005763 m!4588389))

(declare-fun m!4588883 () Bool)

(assert (=> b!4005763 m!4588883))

(assert (=> b!4005763 m!4588389))

(assert (=> b!4005763 m!4588883))

(declare-fun m!4588885 () Bool)

(assert (=> b!4005763 m!4588885))

(assert (=> b!4005243 d!1184957))

(declare-fun b!4005766 () Bool)

(declare-fun res!1627867 () Bool)

(declare-fun e!2484156 () Bool)

(assert (=> b!4005766 (=> (not res!1627867) (not e!2484156))))

(assert (=> b!4005766 (= res!1627867 (= (head!8510 prefix!494) (head!8510 lt!1416898)))))

(declare-fun b!4005768 () Bool)

(declare-fun e!2484157 () Bool)

(assert (=> b!4005768 (= e!2484157 (>= (size!32062 lt!1416898) (size!32062 prefix!494)))))

(declare-fun b!4005767 () Bool)

(assert (=> b!4005767 (= e!2484156 (isPrefix!3903 (tail!6242 prefix!494) (tail!6242 lt!1416898)))))

(declare-fun d!1184959 () Bool)

(assert (=> d!1184959 e!2484157))

(declare-fun res!1627870 () Bool)

(assert (=> d!1184959 (=> res!1627870 e!2484157)))

(declare-fun lt!1417090 () Bool)

(assert (=> d!1184959 (= res!1627870 (not lt!1417090))))

(declare-fun e!2484155 () Bool)

(assert (=> d!1184959 (= lt!1417090 e!2484155)))

(declare-fun res!1627868 () Bool)

(assert (=> d!1184959 (=> res!1627868 e!2484155)))

(assert (=> d!1184959 (= res!1627868 ((_ is Nil!42882) prefix!494))))

(assert (=> d!1184959 (= (isPrefix!3903 prefix!494 lt!1416898) lt!1417090)))

(declare-fun b!4005765 () Bool)

(assert (=> b!4005765 (= e!2484155 e!2484156)))

(declare-fun res!1627869 () Bool)

(assert (=> b!4005765 (=> (not res!1627869) (not e!2484156))))

(assert (=> b!4005765 (= res!1627869 (not ((_ is Nil!42882) lt!1416898)))))

(assert (= (and d!1184959 (not res!1627868)) b!4005765))

(assert (= (and b!4005765 res!1627869) b!4005766))

(assert (= (and b!4005766 res!1627867) b!4005767))

(assert (= (and d!1184959 (not res!1627870)) b!4005768))

(assert (=> b!4005766 m!4588727))

(assert (=> b!4005766 m!4588881))

(assert (=> b!4005768 m!4588591))

(assert (=> b!4005768 m!4588247))

(assert (=> b!4005767 m!4588723))

(assert (=> b!4005767 m!4588883))

(assert (=> b!4005767 m!4588723))

(assert (=> b!4005767 m!4588883))

(declare-fun m!4588887 () Bool)

(assert (=> b!4005767 m!4588887))

(assert (=> b!4005243 d!1184959))

(declare-fun d!1184961 () Bool)

(assert (=> d!1184961 (isPrefix!3903 prefix!494 (++!11218 prefix!494 suffix!1299))))

(declare-fun lt!1417091 () Unit!61877)

(assert (=> d!1184961 (= lt!1417091 (choose!24170 prefix!494 suffix!1299))))

(assert (=> d!1184961 (= (lemmaConcatTwoListThenFirstIsPrefix!2744 prefix!494 suffix!1299) lt!1417091)))

(declare-fun bs!589030 () Bool)

(assert (= bs!589030 d!1184961))

(assert (=> bs!589030 m!4588231))

(assert (=> bs!589030 m!4588231))

(declare-fun m!4588889 () Bool)

(assert (=> bs!589030 m!4588889))

(declare-fun m!4588891 () Bool)

(assert (=> bs!589030 m!4588891))

(assert (=> b!4005243 d!1184961))

(declare-fun d!1184963 () Bool)

(assert (=> d!1184963 (= (inv!57265 (tag!7676 (h!48304 rules!2999))) (= (mod (str.len (value!214889 (tag!7676 (h!48304 rules!2999)))) 2) 0))))

(assert (=> b!4005253 d!1184963))

(declare-fun d!1184965 () Bool)

(declare-fun res!1627871 () Bool)

(declare-fun e!2484158 () Bool)

(assert (=> d!1184965 (=> (not res!1627871) (not e!2484158))))

(assert (=> d!1184965 (= res!1627871 (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (h!48304 rules!2999)))))))

(assert (=> d!1184965 (= (inv!57268 (transformation!6816 (h!48304 rules!2999))) e!2484158)))

(declare-fun b!4005769 () Bool)

(assert (=> b!4005769 (= e!2484158 (equivClasses!2816 (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (h!48304 rules!2999)))))))

(assert (= (and d!1184965 res!1627871) b!4005769))

(declare-fun m!4588893 () Bool)

(assert (=> d!1184965 m!4588893))

(declare-fun m!4588895 () Bool)

(assert (=> b!4005769 m!4588895))

(assert (=> b!4005253 d!1184965))

(declare-fun b!4005774 () Bool)

(declare-fun e!2484161 () Bool)

(declare-fun tp!1219123 () Bool)

(assert (=> b!4005774 (= e!2484161 (and tp_is_empty!20413 tp!1219123))))

(assert (=> b!4005262 (= tp!1219074 e!2484161)))

(assert (= (and b!4005262 ((_ is Cons!42882) (t!332477 newSuffix!27))) b!4005774))

(declare-fun b!4005785 () Bool)

(declare-fun b_free!111429 () Bool)

(declare-fun b_next!112133 () Bool)

(assert (=> b!4005785 (= b_free!111429 (not b_next!112133))))

(declare-fun t!332502 () Bool)

(declare-fun tb!240749 () Bool)

(assert (=> (and b!4005785 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332502) tb!240749))

(declare-fun result!291812 () Bool)

(assert (= result!291812 result!291780))

(assert (=> d!1184793 t!332502))

(declare-fun tp!1219135 () Bool)

(declare-fun b_and!307647 () Bool)

(assert (=> b!4005785 (= tp!1219135 (and (=> t!332502 result!291812) b_and!307647))))

(declare-fun b_free!111431 () Bool)

(declare-fun b_next!112135 () Bool)

(assert (=> b!4005785 (= b_free!111431 (not b_next!112135))))

(declare-fun t!332504 () Bool)

(declare-fun tb!240751 () Bool)

(assert (=> (and b!4005785 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332504) tb!240751))

(declare-fun result!291814 () Bool)

(assert (= result!291814 result!291774))

(assert (=> d!1184785 t!332504))

(assert (=> b!4005597 t!332504))

(declare-fun b_and!307649 () Bool)

(declare-fun tp!1219134 () Bool)

(assert (=> b!4005785 (= tp!1219134 (and (=> t!332504 result!291814) b_and!307649))))

(declare-fun e!2484173 () Bool)

(assert (=> b!4005785 (= e!2484173 (and tp!1219135 tp!1219134))))

(declare-fun tp!1219132 () Bool)

(declare-fun b!4005784 () Bool)

(declare-fun e!2484172 () Bool)

(assert (=> b!4005784 (= e!2484172 (and tp!1219132 (inv!57265 (tag!7676 (h!48304 (t!332479 rules!2999)))) (inv!57268 (transformation!6816 (h!48304 (t!332479 rules!2999)))) e!2484173))))

(declare-fun b!4005783 () Bool)

(declare-fun e!2484171 () Bool)

(declare-fun tp!1219133 () Bool)

(assert (=> b!4005783 (= e!2484171 (and e!2484172 tp!1219133))))

(assert (=> b!4005257 (= tp!1219068 e!2484171)))

(assert (= b!4005784 b!4005785))

(assert (= b!4005783 b!4005784))

(assert (= (and b!4005257 ((_ is Cons!42884) (t!332479 rules!2999))) b!4005783))

(declare-fun m!4588897 () Bool)

(assert (=> b!4005784 m!4588897))

(declare-fun m!4588899 () Bool)

(assert (=> b!4005784 m!4588899))

(declare-fun b!4005786 () Bool)

(declare-fun e!2484174 () Bool)

(declare-fun tp!1219136 () Bool)

(assert (=> b!4005786 (= e!2484174 (and tp_is_empty!20413 tp!1219136))))

(assert (=> b!4005241 (= tp!1219066 e!2484174)))

(assert (= (and b!4005241 ((_ is Cons!42882) (originalCharacters!7416 token!484))) b!4005786))

(declare-fun b!4005787 () Bool)

(declare-fun e!2484175 () Bool)

(declare-fun tp!1219137 () Bool)

(assert (=> b!4005787 (= e!2484175 (and tp_is_empty!20413 tp!1219137))))

(assert (=> b!4005240 (= tp!1219064 e!2484175)))

(assert (= (and b!4005240 ((_ is Cons!42882) (t!332477 suffixResult!105))) b!4005787))

(declare-fun b!4005788 () Bool)

(declare-fun e!2484176 () Bool)

(declare-fun tp!1219138 () Bool)

(assert (=> b!4005788 (= e!2484176 (and tp_is_empty!20413 tp!1219138))))

(assert (=> b!4005251 (= tp!1219072 e!2484176)))

(assert (= (and b!4005251 ((_ is Cons!42882) (t!332477 prefix!494))) b!4005788))

(declare-fun b!4005789 () Bool)

(declare-fun e!2484177 () Bool)

(declare-fun tp!1219139 () Bool)

(assert (=> b!4005789 (= e!2484177 (and tp_is_empty!20413 tp!1219139))))

(assert (=> b!4005260 (= tp!1219062 e!2484177)))

(assert (= (and b!4005260 ((_ is Cons!42882) (t!332477 newSuffixResult!27))) b!4005789))

(declare-fun e!2484180 () Bool)

(assert (=> b!4005254 (= tp!1219071 e!2484180)))

(declare-fun b!4005802 () Bool)

(declare-fun tp!1219152 () Bool)

(assert (=> b!4005802 (= e!2484180 tp!1219152)))

(declare-fun b!4005801 () Bool)

(declare-fun tp!1219154 () Bool)

(declare-fun tp!1219151 () Bool)

(assert (=> b!4005801 (= e!2484180 (and tp!1219154 tp!1219151))))

(declare-fun b!4005803 () Bool)

(declare-fun tp!1219150 () Bool)

(declare-fun tp!1219153 () Bool)

(assert (=> b!4005803 (= e!2484180 (and tp!1219150 tp!1219153))))

(declare-fun b!4005800 () Bool)

(assert (=> b!4005800 (= e!2484180 tp_is_empty!20413)))

(assert (= (and b!4005254 ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484)))) b!4005800))

(assert (= (and b!4005254 ((_ is Concat!18768) (regex!6816 (rule!9852 token!484)))) b!4005801))

(assert (= (and b!4005254 ((_ is Star!11721) (regex!6816 (rule!9852 token!484)))) b!4005802))

(assert (= (and b!4005254 ((_ is Union!11721) (regex!6816 (rule!9852 token!484)))) b!4005803))

(declare-fun b!4005804 () Bool)

(declare-fun e!2484181 () Bool)

(declare-fun tp!1219155 () Bool)

(assert (=> b!4005804 (= e!2484181 (and tp_is_empty!20413 tp!1219155))))

(assert (=> b!4005242 (= tp!1219067 e!2484181)))

(assert (= (and b!4005242 ((_ is Cons!42882) (t!332477 suffix!1299))) b!4005804))

(declare-fun e!2484182 () Bool)

(assert (=> b!4005253 (= tp!1219070 e!2484182)))

(declare-fun b!4005807 () Bool)

(declare-fun tp!1219158 () Bool)

(assert (=> b!4005807 (= e!2484182 tp!1219158)))

(declare-fun b!4005806 () Bool)

(declare-fun tp!1219160 () Bool)

(declare-fun tp!1219157 () Bool)

(assert (=> b!4005806 (= e!2484182 (and tp!1219160 tp!1219157))))

(declare-fun b!4005808 () Bool)

(declare-fun tp!1219156 () Bool)

(declare-fun tp!1219159 () Bool)

(assert (=> b!4005808 (= e!2484182 (and tp!1219156 tp!1219159))))

(declare-fun b!4005805 () Bool)

(assert (=> b!4005805 (= e!2484182 tp_is_empty!20413)))

(assert (= (and b!4005253 ((_ is ElementMatch!11721) (regex!6816 (h!48304 rules!2999)))) b!4005805))

(assert (= (and b!4005253 ((_ is Concat!18768) (regex!6816 (h!48304 rules!2999)))) b!4005806))

(assert (= (and b!4005253 ((_ is Star!11721) (regex!6816 (h!48304 rules!2999)))) b!4005807))

(assert (= (and b!4005253 ((_ is Union!11721) (regex!6816 (h!48304 rules!2999)))) b!4005808))

(declare-fun b_lambda!116841 () Bool)

(assert (= b_lambda!116823 (or (and b!4005248 b_free!111419) (and b!4005244 b_free!111423 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111431 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) b_lambda!116841)))

(declare-fun b_lambda!116843 () Bool)

(assert (= b_lambda!116825 (or (and b!4005248 b_free!111417) (and b!4005244 b_free!111421 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111429 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) b_lambda!116843)))

(declare-fun b_lambda!116845 () Bool)

(assert (= b_lambda!116833 (or (and b!4005248 b_free!111419) (and b!4005244 b_free!111423 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111431 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) b_lambda!116845)))

(check-sat tp_is_empty!20413 (not d!1184955) (not b!4005598) (not b!4005275) (not bm!286104) (not b!4005503) (not d!1184903) (not b!4005502) (not d!1184801) (not d!1184931) (not d!1184947) (not b!4005287) (not b_next!112125) (not b!4005724) (not b!4005674) (not b!4005499) (not b!4005736) (not b!4005498) (not d!1184911) (not b!4005742) (not b!4005624) (not b!4005670) (not d!1184827) (not b!4005763) (not b!4005783) (not b!4005620) (not b!4005640) (not b!4005625) (not d!1184943) (not b!4005768) (not b!4005685) (not d!1184927) (not b!4005289) b_and!307625 (not b!4005504) (not d!1184785) (not b_next!112127) (not b!4005735) (not d!1184915) (not b!4005784) (not b!4005680) (not d!1184917) (not b!4005707) (not b!4005639) (not b!4005501) (not b!4005712) (not b!4005747) (not bm!286107) (not b!4005788) (not b!4005684) (not b_lambda!116841) (not b!4005286) (not b!4005728) b_and!307649 (not d!1184789) (not b!4005789) (not b!4005675) (not d!1184881) (not b!4005706) (not d!1184929) (not b!4005638) (not b!4005767) (not b_next!112121) (not d!1184919) b_and!307623 (not b!4005786) (not tb!240729) (not b!4005635) (not b!4005774) (not b!4005762) (not b!4005808) (not b!4005723) (not d!1184909) (not b!4005732) (not b!4005758) (not d!1184933) (not b!4005716) (not b!4005355) (not b!4005720) (not b!4005270) (not b!4005801) (not b!4005752) (not b!4005268) (not b!4005769) (not b!4005807) (not b!4005686) (not b_next!112135) (not b!4005505) (not d!1184901) (not b!4005804) (not b!4005500) (not d!1184941) (not d!1184951) (not d!1184921) b_and!307639 (not d!1184945) (not b_next!112123) (not b!4005803) (not d!1184965) (not b!4005756) (not b!4005705) (not b_lambda!116843) (not b!4005710) b_and!307647 (not d!1184783) (not b_lambda!116845) (not b!4005740) (not b!4005738) (not b!4005356) (not b!4005711) (not b!4005621) (not b!4005766) (not b!4005681) (not b!4005806) (not b!4005759) (not b!4005764) (not b!4005709) (not d!1184899) (not tb!240733) (not b!4005357) (not d!1184905) (not b!4005597) (not b!4005713) (not b_next!112133) b_and!307641 (not b!4005719) (not b!4005715) (not b!4005734) (not b!4005628) (not b!4005802) (not b!4005743) (not d!1184873) (not d!1184821) (not b!4005671) (not d!1184925) (not b!4005727) (not b!4005629) (not d!1184961) (not b!4005760) (not b!4005787))
(check-sat (not b_next!112125) b_and!307649 (not b_next!112135) b_and!307639 (not b_next!112123) b_and!307647 (not b_next!112133) b_and!307641 b_and!307625 (not b_next!112127) (not b_next!112121) b_and!307623)
(get-model)

(declare-fun d!1184975 () Bool)

(assert (=> d!1184975 (= (get!14094 lt!1417022) (v!39593 lt!1417022))))

(assert (=> b!4005502 d!1184975))

(declare-fun d!1184977 () Bool)

(declare-fun lt!1417094 () Int)

(assert (=> d!1184977 (>= lt!1417094 0)))

(declare-fun e!2484192 () Int)

(assert (=> d!1184977 (= lt!1417094 e!2484192)))

(declare-fun c!692632 () Bool)

(assert (=> d!1184977 (= c!692632 ((_ is Nil!42882) (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))))))

(assert (=> d!1184977 (= (size!32062 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))) lt!1417094)))

(declare-fun b!4005827 () Bool)

(assert (=> b!4005827 (= e!2484192 0)))

(declare-fun b!4005828 () Bool)

(assert (=> b!4005828 (= e!2484192 (+ 1 (size!32062 (t!332477 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))))))))

(assert (= (and d!1184977 c!692632) b!4005827))

(assert (= (and d!1184977 (not c!692632)) b!4005828))

(declare-fun m!4588921 () Bool)

(assert (=> b!4005828 m!4588921))

(assert (=> b!4005502 d!1184977))

(declare-fun d!1184979 () Bool)

(assert (=> d!1184979 true))

(declare-fun order!22465 () Int)

(declare-fun order!22463 () Int)

(declare-fun lambda!126970 () Int)

(declare-fun dynLambda!18185 (Int Int) Int)

(declare-fun dynLambda!18186 (Int Int) Int)

(assert (=> d!1184979 (< (dynLambda!18185 order!22463 (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (dynLambda!18186 order!22465 lambda!126970))))

(declare-fun Forall2!1068 (Int) Bool)

(assert (=> d!1184979 (= (equivClasses!2816 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (Forall2!1068 lambda!126970))))

(declare-fun bs!589037 () Bool)

(assert (= bs!589037 d!1184979))

(declare-fun m!4589059 () Bool)

(assert (=> bs!589037 m!4589059))

(assert (=> b!4005756 d!1184979))

(declare-fun d!1185035 () Bool)

(assert (=> d!1185035 (= (head!8510 lt!1416910) (h!48302 lt!1416910))))

(assert (=> b!4005355 d!1185035))

(declare-fun d!1185037 () Bool)

(assert (=> d!1185037 (= (head!8510 lt!1416912) (h!48302 lt!1416912))))

(assert (=> b!4005355 d!1185037))

(declare-fun d!1185039 () Bool)

(declare-fun c!692669 () Bool)

(assert (=> d!1185039 (= c!692669 ((_ is Nil!42882) lt!1417073))))

(declare-fun e!2484250 () (InoxSet C!23628))

(assert (=> d!1185039 (= (content!6500 lt!1417073) e!2484250)))

(declare-fun b!4005930 () Bool)

(assert (=> b!4005930 (= e!2484250 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005931 () Bool)

(assert (=> b!4005931 (= e!2484250 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417073) true) (content!6500 (t!332477 lt!1417073))))))

(assert (= (and d!1185039 c!692669) b!4005930))

(assert (= (and d!1185039 (not c!692669)) b!4005931))

(declare-fun m!4589061 () Bool)

(assert (=> b!4005931 m!4589061))

(declare-fun m!4589063 () Bool)

(assert (=> b!4005931 m!4589063))

(assert (=> d!1184921 d!1185039))

(declare-fun d!1185041 () Bool)

(declare-fun c!692670 () Bool)

(assert (=> d!1185041 (= c!692670 ((_ is Nil!42882) prefix!494))))

(declare-fun e!2484251 () (InoxSet C!23628))

(assert (=> d!1185041 (= (content!6500 prefix!494) e!2484251)))

(declare-fun b!4005932 () Bool)

(assert (=> b!4005932 (= e!2484251 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005933 () Bool)

(assert (=> b!4005933 (= e!2484251 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 prefix!494) true) (content!6500 (t!332477 prefix!494))))))

(assert (= (and d!1185041 c!692670) b!4005932))

(assert (= (and d!1185041 (not c!692670)) b!4005933))

(declare-fun m!4589065 () Bool)

(assert (=> b!4005933 m!4589065))

(declare-fun m!4589067 () Bool)

(assert (=> b!4005933 m!4589067))

(assert (=> d!1184921 d!1185041))

(declare-fun d!1185043 () Bool)

(declare-fun c!692671 () Bool)

(assert (=> d!1185043 (= c!692671 ((_ is Nil!42882) suffix!1299))))

(declare-fun e!2484252 () (InoxSet C!23628))

(assert (=> d!1185043 (= (content!6500 suffix!1299) e!2484252)))

(declare-fun b!4005934 () Bool)

(assert (=> b!4005934 (= e!2484252 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005935 () Bool)

(assert (=> b!4005935 (= e!2484252 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 suffix!1299) true) (content!6500 (t!332477 suffix!1299))))))

(assert (= (and d!1185043 c!692671) b!4005934))

(assert (= (and d!1185043 (not c!692671)) b!4005935))

(declare-fun m!4589069 () Bool)

(assert (=> b!4005935 m!4589069))

(declare-fun m!4589071 () Bool)

(assert (=> b!4005935 m!4589071))

(assert (=> d!1184921 d!1185043))

(declare-fun d!1185045 () Bool)

(declare-fun nullableFct!1145 (Regex!11721) Bool)

(assert (=> d!1185045 (= (nullable!4110 (regex!6816 (rule!9852 token!484))) (nullableFct!1145 (regex!6816 (rule!9852 token!484))))))

(declare-fun bs!589038 () Bool)

(assert (= bs!589038 d!1185045))

(declare-fun m!4589073 () Bool)

(assert (=> bs!589038 m!4589073))

(assert (=> b!4005680 d!1185045))

(declare-fun d!1185047 () Bool)

(assert (=> d!1185047 (= (isEmpty!25620 lt!1417068) (not ((_ is Some!9229) lt!1417068)))))

(assert (=> d!1184919 d!1185047))

(declare-fun b!4005937 () Bool)

(declare-fun res!1627909 () Bool)

(declare-fun e!2484254 () Bool)

(assert (=> b!4005937 (=> (not res!1627909) (not e!2484254))))

(assert (=> b!4005937 (= res!1627909 (= (head!8510 lt!1416898) (head!8510 lt!1416898)))))

(declare-fun b!4005939 () Bool)

(declare-fun e!2484255 () Bool)

(assert (=> b!4005939 (= e!2484255 (>= (size!32062 lt!1416898) (size!32062 lt!1416898)))))

(declare-fun b!4005938 () Bool)

(assert (=> b!4005938 (= e!2484254 (isPrefix!3903 (tail!6242 lt!1416898) (tail!6242 lt!1416898)))))

(declare-fun d!1185049 () Bool)

(assert (=> d!1185049 e!2484255))

(declare-fun res!1627912 () Bool)

(assert (=> d!1185049 (=> res!1627912 e!2484255)))

(declare-fun lt!1417193 () Bool)

(assert (=> d!1185049 (= res!1627912 (not lt!1417193))))

(declare-fun e!2484253 () Bool)

(assert (=> d!1185049 (= lt!1417193 e!2484253)))

(declare-fun res!1627910 () Bool)

(assert (=> d!1185049 (=> res!1627910 e!2484253)))

(assert (=> d!1185049 (= res!1627910 ((_ is Nil!42882) lt!1416898))))

(assert (=> d!1185049 (= (isPrefix!3903 lt!1416898 lt!1416898) lt!1417193)))

(declare-fun b!4005936 () Bool)

(assert (=> b!4005936 (= e!2484253 e!2484254)))

(declare-fun res!1627911 () Bool)

(assert (=> b!4005936 (=> (not res!1627911) (not e!2484254))))

(assert (=> b!4005936 (= res!1627911 (not ((_ is Nil!42882) lt!1416898)))))

(assert (= (and d!1185049 (not res!1627910)) b!4005936))

(assert (= (and b!4005936 res!1627911) b!4005937))

(assert (= (and b!4005937 res!1627909) b!4005938))

(assert (= (and d!1185049 (not res!1627912)) b!4005939))

(assert (=> b!4005937 m!4588881))

(assert (=> b!4005937 m!4588881))

(assert (=> b!4005939 m!4588591))

(assert (=> b!4005939 m!4588591))

(assert (=> b!4005938 m!4588883))

(assert (=> b!4005938 m!4588883))

(assert (=> b!4005938 m!4588883))

(assert (=> b!4005938 m!4588883))

(declare-fun m!4589075 () Bool)

(assert (=> b!4005938 m!4589075))

(assert (=> d!1184919 d!1185049))

(declare-fun d!1185051 () Bool)

(assert (=> d!1185051 (isPrefix!3903 lt!1416898 lt!1416898)))

(declare-fun lt!1417196 () Unit!61877)

(declare-fun choose!24181 (List!43006 List!43006) Unit!61877)

(assert (=> d!1185051 (= lt!1417196 (choose!24181 lt!1416898 lt!1416898))))

(assert (=> d!1185051 (= (lemmaIsPrefixRefl!2479 lt!1416898 lt!1416898) lt!1417196)))

(declare-fun bs!589039 () Bool)

(assert (= bs!589039 d!1185051))

(assert (=> bs!589039 m!4588775))

(declare-fun m!4589077 () Bool)

(assert (=> bs!589039 m!4589077))

(assert (=> d!1184919 d!1185051))

(declare-fun d!1185053 () Bool)

(assert (=> d!1185053 true))

(declare-fun lt!1417199 () Bool)

(declare-fun lambda!126973 () Int)

(declare-fun forall!8347 (List!43008 Int) Bool)

(assert (=> d!1185053 (= lt!1417199 (forall!8347 rules!2999 lambda!126973))))

(declare-fun e!2484261 () Bool)

(assert (=> d!1185053 (= lt!1417199 e!2484261)))

(declare-fun res!1627918 () Bool)

(assert (=> d!1185053 (=> res!1627918 e!2484261)))

(assert (=> d!1185053 (= res!1627918 (not ((_ is Cons!42884) rules!2999)))))

(assert (=> d!1185053 (= (rulesValidInductive!2483 thiss!21717 rules!2999) lt!1417199)))

(declare-fun b!4005944 () Bool)

(declare-fun e!2484260 () Bool)

(assert (=> b!4005944 (= e!2484261 e!2484260)))

(declare-fun res!1627917 () Bool)

(assert (=> b!4005944 (=> (not res!1627917) (not e!2484260))))

(assert (=> b!4005944 (= res!1627917 (ruleValid!2748 thiss!21717 (h!48304 rules!2999)))))

(declare-fun b!4005945 () Bool)

(assert (=> b!4005945 (= e!2484260 (rulesValidInductive!2483 thiss!21717 (t!332479 rules!2999)))))

(assert (= (and d!1185053 (not res!1627918)) b!4005944))

(assert (= (and b!4005944 res!1627917) b!4005945))

(declare-fun m!4589079 () Bool)

(assert (=> d!1185053 m!4589079))

(declare-fun m!4589081 () Bool)

(assert (=> b!4005944 m!4589081))

(declare-fun m!4589083 () Bool)

(assert (=> b!4005945 m!4589083))

(assert (=> d!1184919 d!1185053))

(declare-fun d!1185055 () Bool)

(declare-fun lt!1417200 () Int)

(assert (=> d!1185055 (>= lt!1417200 0)))

(declare-fun e!2484262 () Int)

(assert (=> d!1185055 (= lt!1417200 e!2484262)))

(declare-fun c!692672 () Bool)

(assert (=> d!1185055 (= c!692672 ((_ is Nil!42882) lt!1416899))))

(assert (=> d!1185055 (= (size!32062 lt!1416899) lt!1417200)))

(declare-fun b!4005948 () Bool)

(assert (=> b!4005948 (= e!2484262 0)))

(declare-fun b!4005949 () Bool)

(assert (=> b!4005949 (= e!2484262 (+ 1 (size!32062 (t!332477 lt!1416899))))))

(assert (= (and d!1185055 c!692672) b!4005948))

(assert (= (and d!1185055 (not c!692672)) b!4005949))

(declare-fun m!4589085 () Bool)

(assert (=> b!4005949 m!4589085))

(assert (=> b!4005686 d!1185055))

(assert (=> b!4005686 d!1184779))

(declare-fun d!1185057 () Bool)

(assert (=> d!1185057 true))

(declare-fun order!22467 () Int)

(declare-fun order!22469 () Int)

(declare-fun lambda!126976 () Int)

(declare-fun dynLambda!18187 (Int Int) Int)

(declare-fun dynLambda!18188 (Int Int) Int)

(assert (=> d!1185057 (< (dynLambda!18187 order!22467 (toChars!9171 (transformation!6816 (h!48304 rules!2999)))) (dynLambda!18188 order!22469 lambda!126976))))

(assert (=> d!1185057 true))

(assert (=> d!1185057 (< (dynLambda!18185 order!22463 (toValue!9312 (transformation!6816 (h!48304 rules!2999)))) (dynLambda!18188 order!22469 lambda!126976))))

(declare-fun Forall!1468 (Int) Bool)

(assert (=> d!1185057 (= (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (h!48304 rules!2999)))) (Forall!1468 lambda!126976))))

(declare-fun bs!589040 () Bool)

(assert (= bs!589040 d!1185057))

(declare-fun m!4589087 () Bool)

(assert (=> bs!589040 m!4589087))

(assert (=> d!1184965 d!1185057))

(declare-fun b!4005955 () Bool)

(declare-fun res!1627919 () Bool)

(declare-fun e!2484264 () Bool)

(assert (=> b!4005955 (=> (not res!1627919) (not e!2484264))))

(assert (=> b!4005955 (= res!1627919 (= (head!8510 (tail!6242 newSuffix!27)) (head!8510 (tail!6242 suffix!1299))))))

(declare-fun b!4005957 () Bool)

(declare-fun e!2484265 () Bool)

(assert (=> b!4005957 (= e!2484265 (>= (size!32062 (tail!6242 suffix!1299)) (size!32062 (tail!6242 newSuffix!27))))))

(declare-fun b!4005956 () Bool)

(assert (=> b!4005956 (= e!2484264 (isPrefix!3903 (tail!6242 (tail!6242 newSuffix!27)) (tail!6242 (tail!6242 suffix!1299))))))

(declare-fun d!1185059 () Bool)

(assert (=> d!1185059 e!2484265))

(declare-fun res!1627922 () Bool)

(assert (=> d!1185059 (=> res!1627922 e!2484265)))

(declare-fun lt!1417201 () Bool)

(assert (=> d!1185059 (= res!1627922 (not lt!1417201))))

(declare-fun e!2484263 () Bool)

(assert (=> d!1185059 (= lt!1417201 e!2484263)))

(declare-fun res!1627920 () Bool)

(assert (=> d!1185059 (=> res!1627920 e!2484263)))

(assert (=> d!1185059 (= res!1627920 ((_ is Nil!42882) (tail!6242 newSuffix!27)))))

(assert (=> d!1185059 (= (isPrefix!3903 (tail!6242 newSuffix!27) (tail!6242 suffix!1299)) lt!1417201)))

(declare-fun b!4005954 () Bool)

(assert (=> b!4005954 (= e!2484263 e!2484264)))

(declare-fun res!1627921 () Bool)

(assert (=> b!4005954 (=> (not res!1627921) (not e!2484264))))

(assert (=> b!4005954 (= res!1627921 (not ((_ is Nil!42882) (tail!6242 suffix!1299))))))

(assert (= (and d!1185059 (not res!1627920)) b!4005954))

(assert (= (and b!4005954 res!1627921) b!4005955))

(assert (= (and b!4005955 res!1627919) b!4005956))

(assert (= (and d!1185059 (not res!1627922)) b!4005957))

(assert (=> b!4005955 m!4588841))

(declare-fun m!4589089 () Bool)

(assert (=> b!4005955 m!4589089))

(assert (=> b!4005955 m!4588843))

(declare-fun m!4589091 () Bool)

(assert (=> b!4005955 m!4589091))

(assert (=> b!4005957 m!4588843))

(declare-fun m!4589093 () Bool)

(assert (=> b!4005957 m!4589093))

(assert (=> b!4005957 m!4588841))

(declare-fun m!4589095 () Bool)

(assert (=> b!4005957 m!4589095))

(assert (=> b!4005956 m!4588841))

(declare-fun m!4589097 () Bool)

(assert (=> b!4005956 m!4589097))

(assert (=> b!4005956 m!4588843))

(declare-fun m!4589099 () Bool)

(assert (=> b!4005956 m!4589099))

(assert (=> b!4005956 m!4589097))

(assert (=> b!4005956 m!4589099))

(declare-fun m!4589101 () Bool)

(assert (=> b!4005956 m!4589101))

(assert (=> b!4005735 d!1185059))

(declare-fun d!1185061 () Bool)

(assert (=> d!1185061 (= (tail!6242 newSuffix!27) (t!332477 newSuffix!27))))

(assert (=> b!4005735 d!1185061))

(declare-fun d!1185063 () Bool)

(assert (=> d!1185063 (= (tail!6242 suffix!1299) (t!332477 suffix!1299))))

(assert (=> b!4005735 d!1185063))

(declare-fun d!1185065 () Bool)

(assert (=> d!1185065 (= (isEmpty!25619 (originalCharacters!7416 token!484)) ((_ is Nil!42882) (originalCharacters!7416 token!484)))))

(assert (=> d!1184881 d!1185065))

(declare-fun d!1185067 () Bool)

(declare-fun c!692673 () Bool)

(assert (=> d!1185067 (= c!692673 ((_ is Nil!42882) lt!1417074))))

(declare-fun e!2484266 () (InoxSet C!23628))

(assert (=> d!1185067 (= (content!6500 lt!1417074) e!2484266)))

(declare-fun b!4005958 () Bool)

(assert (=> b!4005958 (= e!2484266 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005959 () Bool)

(assert (=> b!4005959 (= e!2484266 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417074) true) (content!6500 (t!332477 lt!1417074))))))

(assert (= (and d!1185067 c!692673) b!4005958))

(assert (= (and d!1185067 (not c!692673)) b!4005959))

(declare-fun m!4589103 () Bool)

(assert (=> b!4005959 m!4589103))

(declare-fun m!4589105 () Bool)

(assert (=> b!4005959 m!4589105))

(assert (=> d!1184925 d!1185067))

(declare-fun d!1185069 () Bool)

(declare-fun c!692674 () Bool)

(assert (=> d!1185069 (= c!692674 ((_ is Nil!42882) lt!1416910))))

(declare-fun e!2484267 () (InoxSet C!23628))

(assert (=> d!1185069 (= (content!6500 lt!1416910) e!2484267)))

(declare-fun b!4005960 () Bool)

(assert (=> b!4005960 (= e!2484267 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005961 () Bool)

(assert (=> b!4005961 (= e!2484267 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1416910) true) (content!6500 (t!332477 lt!1416910))))))

(assert (= (and d!1185069 c!692674) b!4005960))

(assert (= (and d!1185069 (not c!692674)) b!4005961))

(declare-fun m!4589107 () Bool)

(assert (=> b!4005961 m!4589107))

(declare-fun m!4589109 () Bool)

(assert (=> b!4005961 m!4589109))

(assert (=> d!1184925 d!1185069))

(declare-fun d!1185071 () Bool)

(declare-fun c!692675 () Bool)

(assert (=> d!1185071 (= c!692675 ((_ is Nil!42882) lt!1416903))))

(declare-fun e!2484268 () (InoxSet C!23628))

(assert (=> d!1185071 (= (content!6500 lt!1416903) e!2484268)))

(declare-fun b!4005962 () Bool)

(assert (=> b!4005962 (= e!2484268 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4005963 () Bool)

(assert (=> b!4005963 (= e!2484268 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1416903) true) (content!6500 (t!332477 lt!1416903))))))

(assert (= (and d!1185071 c!692675) b!4005962))

(assert (= (and d!1185071 (not c!692675)) b!4005963))

(declare-fun m!4589111 () Bool)

(assert (=> b!4005963 m!4589111))

(declare-fun m!4589113 () Bool)

(assert (=> b!4005963 m!4589113))

(assert (=> d!1184925 d!1185071))

(declare-fun d!1185073 () Bool)

(assert (=> d!1185073 (= (isDefined!7062 lt!1417068) (not (isEmpty!25620 lt!1417068)))))

(declare-fun bs!589041 () Bool)

(assert (= bs!589041 d!1185073))

(assert (=> bs!589041 m!4588773))

(assert (=> b!4005711 d!1185073))

(assert (=> b!4005758 d!1185035))

(declare-fun d!1185075 () Bool)

(assert (=> d!1185075 (= (head!8510 lt!1416906) (h!48302 lt!1416906))))

(assert (=> b!4005758 d!1185075))

(declare-fun d!1185077 () Bool)

(declare-fun e!2484269 () Bool)

(assert (=> d!1185077 e!2484269))

(declare-fun res!1627924 () Bool)

(assert (=> d!1185077 (=> (not res!1627924) (not e!2484269))))

(declare-fun lt!1417202 () List!43006)

(assert (=> d!1185077 (= res!1627924 (= (content!6500 lt!1417202) ((_ map or) (content!6500 (t!332477 lt!1416910)) (content!6500 lt!1416903))))))

(declare-fun e!2484270 () List!43006)

(assert (=> d!1185077 (= lt!1417202 e!2484270)))

(declare-fun c!692676 () Bool)

(assert (=> d!1185077 (= c!692676 ((_ is Nil!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185077 (= (++!11218 (t!332477 lt!1416910) lt!1416903) lt!1417202)))

(declare-fun b!4005964 () Bool)

(assert (=> b!4005964 (= e!2484270 lt!1416903)))

(declare-fun b!4005967 () Bool)

(assert (=> b!4005967 (= e!2484269 (or (not (= lt!1416903 Nil!42882)) (= lt!1417202 (t!332477 lt!1416910))))))

(declare-fun b!4005966 () Bool)

(declare-fun res!1627923 () Bool)

(assert (=> b!4005966 (=> (not res!1627923) (not e!2484269))))

(assert (=> b!4005966 (= res!1627923 (= (size!32062 lt!1417202) (+ (size!32062 (t!332477 lt!1416910)) (size!32062 lt!1416903))))))

(declare-fun b!4005965 () Bool)

(assert (=> b!4005965 (= e!2484270 (Cons!42882 (h!48302 (t!332477 lt!1416910)) (++!11218 (t!332477 (t!332477 lt!1416910)) lt!1416903)))))

(assert (= (and d!1185077 c!692676) b!4005964))

(assert (= (and d!1185077 (not c!692676)) b!4005965))

(assert (= (and d!1185077 res!1627924) b!4005966))

(assert (= (and b!4005966 res!1627923) b!4005967))

(declare-fun m!4589115 () Bool)

(assert (=> d!1185077 m!4589115))

(assert (=> d!1185077 m!4589109))

(assert (=> d!1185077 m!4588803))

(declare-fun m!4589117 () Bool)

(assert (=> b!4005966 m!4589117))

(assert (=> b!4005966 m!4588285))

(assert (=> b!4005966 m!4588807))

(declare-fun m!4589119 () Bool)

(assert (=> b!4005965 m!4589119))

(assert (=> b!4005719 d!1185077))

(declare-fun d!1185079 () Bool)

(declare-fun lt!1417203 () Int)

(assert (=> d!1185079 (>= lt!1417203 0)))

(declare-fun e!2484271 () Int)

(assert (=> d!1185079 (= lt!1417203 e!2484271)))

(declare-fun c!692677 () Bool)

(assert (=> d!1185079 (= c!692677 ((_ is Nil!42882) (originalCharacters!7416 token!484)))))

(assert (=> d!1185079 (= (size!32062 (originalCharacters!7416 token!484)) lt!1417203)))

(declare-fun b!4005968 () Bool)

(assert (=> b!4005968 (= e!2484271 0)))

(declare-fun b!4005969 () Bool)

(assert (=> b!4005969 (= e!2484271 (+ 1 (size!32062 (t!332477 (originalCharacters!7416 token!484)))))))

(assert (= (and d!1185079 c!692677) b!4005968))

(assert (= (and d!1185079 (not c!692677)) b!4005969))

(declare-fun m!4589121 () Bool)

(assert (=> b!4005969 m!4589121))

(assert (=> b!4005598 d!1185079))

(declare-fun d!1185081 () Bool)

(declare-fun res!1627929 () Bool)

(declare-fun e!2484276 () Bool)

(assert (=> d!1185081 (=> res!1627929 e!2484276)))

(assert (=> d!1185081 (= res!1627929 ((_ is Nil!42884) rules!2999))))

(assert (=> d!1185081 (= (noDuplicateTag!2652 thiss!21717 rules!2999 Nil!42886) e!2484276)))

(declare-fun b!4005974 () Bool)

(declare-fun e!2484277 () Bool)

(assert (=> b!4005974 (= e!2484276 e!2484277)))

(declare-fun res!1627930 () Bool)

(assert (=> b!4005974 (=> (not res!1627930) (not e!2484277))))

(declare-fun contains!8525 (List!43010 String!48948) Bool)

(assert (=> b!4005974 (= res!1627930 (not (contains!8525 Nil!42886 (tag!7676 (h!48304 rules!2999)))))))

(declare-fun b!4005975 () Bool)

(assert (=> b!4005975 (= e!2484277 (noDuplicateTag!2652 thiss!21717 (t!332479 rules!2999) (Cons!42886 (tag!7676 (h!48304 rules!2999)) Nil!42886)))))

(assert (= (and d!1185081 (not res!1627929)) b!4005974))

(assert (= (and b!4005974 res!1627930) b!4005975))

(declare-fun m!4589123 () Bool)

(assert (=> b!4005974 m!4589123))

(declare-fun m!4589125 () Bool)

(assert (=> b!4005975 m!4589125))

(assert (=> b!4005732 d!1185081))

(assert (=> b!4005671 d!1185035))

(declare-fun d!1185083 () Bool)

(declare-fun e!2484278 () Bool)

(assert (=> d!1185083 e!2484278))

(declare-fun res!1627932 () Bool)

(assert (=> d!1185083 (=> (not res!1627932) (not e!2484278))))

(declare-fun lt!1417204 () List!43006)

(assert (=> d!1185083 (= res!1627932 (= (content!6500 lt!1417204) ((_ map or) (content!6500 (t!332477 prefix!494)) (content!6500 suffix!1299))))))

(declare-fun e!2484279 () List!43006)

(assert (=> d!1185083 (= lt!1417204 e!2484279)))

(declare-fun c!692678 () Bool)

(assert (=> d!1185083 (= c!692678 ((_ is Nil!42882) (t!332477 prefix!494)))))

(assert (=> d!1185083 (= (++!11218 (t!332477 prefix!494) suffix!1299) lt!1417204)))

(declare-fun b!4005976 () Bool)

(assert (=> b!4005976 (= e!2484279 suffix!1299)))

(declare-fun b!4005979 () Bool)

(assert (=> b!4005979 (= e!2484278 (or (not (= suffix!1299 Nil!42882)) (= lt!1417204 (t!332477 prefix!494))))))

(declare-fun b!4005978 () Bool)

(declare-fun res!1627931 () Bool)

(assert (=> b!4005978 (=> (not res!1627931) (not e!2484278))))

(assert (=> b!4005978 (= res!1627931 (= (size!32062 lt!1417204) (+ (size!32062 (t!332477 prefix!494)) (size!32062 suffix!1299))))))

(declare-fun b!4005977 () Bool)

(assert (=> b!4005977 (= e!2484279 (Cons!42882 (h!48302 (t!332477 prefix!494)) (++!11218 (t!332477 (t!332477 prefix!494)) suffix!1299)))))

(assert (= (and d!1185083 c!692678) b!4005976))

(assert (= (and d!1185083 (not c!692678)) b!4005977))

(assert (= (and d!1185083 res!1627932) b!4005978))

(assert (= (and b!4005978 res!1627931) b!4005979))

(declare-fun m!4589127 () Bool)

(assert (=> d!1185083 m!4589127))

(assert (=> d!1185083 m!4589067))

(assert (=> d!1185083 m!4588795))

(declare-fun m!4589129 () Bool)

(assert (=> b!4005978 m!4589129))

(assert (=> b!4005978 m!4588287))

(assert (=> b!4005978 m!4588193))

(declare-fun m!4589131 () Bool)

(assert (=> b!4005977 m!4589131))

(assert (=> b!4005715 d!1185083))

(declare-fun d!1185085 () Bool)

(declare-fun charsToBigInt!1 (List!43007) Int)

(assert (=> d!1185085 (= (inv!17 (value!214890 token!484)) (= (charsToBigInt!1 (text!49770 (value!214890 token!484))) (value!214882 (value!214890 token!484))))))

(declare-fun bs!589042 () Bool)

(assert (= bs!589042 d!1185085))

(declare-fun m!4589133 () Bool)

(assert (=> bs!589042 m!4589133))

(assert (=> b!4005287 d!1185085))

(declare-fun b!4005981 () Bool)

(declare-fun res!1627933 () Bool)

(declare-fun e!2484281 () Bool)

(assert (=> b!4005981 (=> (not res!1627933) (not e!2484281))))

(assert (=> b!4005981 (= res!1627933 (= (head!8510 lt!1416910) (head!8510 (++!11218 lt!1416910 suffixResult!105))))))

(declare-fun b!4005983 () Bool)

(declare-fun e!2484282 () Bool)

(assert (=> b!4005983 (= e!2484282 (>= (size!32062 (++!11218 lt!1416910 suffixResult!105)) (size!32062 lt!1416910)))))

(declare-fun b!4005982 () Bool)

(assert (=> b!4005982 (= e!2484281 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 (++!11218 lt!1416910 suffixResult!105))))))

(declare-fun d!1185087 () Bool)

(assert (=> d!1185087 e!2484282))

(declare-fun res!1627936 () Bool)

(assert (=> d!1185087 (=> res!1627936 e!2484282)))

(declare-fun lt!1417205 () Bool)

(assert (=> d!1185087 (= res!1627936 (not lt!1417205))))

(declare-fun e!2484280 () Bool)

(assert (=> d!1185087 (= lt!1417205 e!2484280)))

(declare-fun res!1627934 () Bool)

(assert (=> d!1185087 (=> res!1627934 e!2484280)))

(assert (=> d!1185087 (= res!1627934 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185087 (= (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 suffixResult!105)) lt!1417205)))

(declare-fun b!4005980 () Bool)

(assert (=> b!4005980 (= e!2484280 e!2484281)))

(declare-fun res!1627935 () Bool)

(assert (=> b!4005980 (=> (not res!1627935) (not e!2484281))))

(assert (=> b!4005980 (= res!1627935 (not ((_ is Nil!42882) (++!11218 lt!1416910 suffixResult!105))))))

(assert (= (and d!1185087 (not res!1627934)) b!4005980))

(assert (= (and b!4005980 res!1627935) b!4005981))

(assert (= (and b!4005981 res!1627933) b!4005982))

(assert (= (and d!1185087 (not res!1627936)) b!4005983))

(assert (=> b!4005981 m!4588383))

(assert (=> b!4005981 m!4588253))

(declare-fun m!4589135 () Bool)

(assert (=> b!4005981 m!4589135))

(assert (=> b!4005983 m!4588253))

(declare-fun m!4589137 () Bool)

(assert (=> b!4005983 m!4589137))

(assert (=> b!4005983 m!4588245))

(assert (=> b!4005982 m!4588389))

(assert (=> b!4005982 m!4588253))

(declare-fun m!4589139 () Bool)

(assert (=> b!4005982 m!4589139))

(assert (=> b!4005982 m!4588389))

(assert (=> b!4005982 m!4589139))

(declare-fun m!4589141 () Bool)

(assert (=> b!4005982 m!4589141))

(assert (=> d!1184955 d!1185087))

(assert (=> d!1184955 d!1184941))

(declare-fun d!1185089 () Bool)

(assert (=> d!1185089 (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 suffixResult!105))))

(assert (=> d!1185089 true))

(declare-fun _$46!1634 () Unit!61877)

(assert (=> d!1185089 (= (choose!24170 lt!1416910 suffixResult!105) _$46!1634)))

(declare-fun bs!589043 () Bool)

(assert (= bs!589043 d!1185089))

(assert (=> bs!589043 m!4588253))

(assert (=> bs!589043 m!4588253))

(assert (=> bs!589043 m!4588877))

(assert (=> d!1184955 d!1185089))

(declare-fun d!1185091 () Bool)

(declare-fun lt!1417206 () Int)

(assert (=> d!1185091 (>= lt!1417206 0)))

(declare-fun e!2484283 () Int)

(assert (=> d!1185091 (= lt!1417206 e!2484283)))

(declare-fun c!692679 () Bool)

(assert (=> d!1185091 (= c!692679 ((_ is Nil!42882) (_2!24153 (get!14094 lt!1417022))))))

(assert (=> d!1185091 (= (size!32062 (_2!24153 (get!14094 lt!1417022))) lt!1417206)))

(declare-fun b!4005984 () Bool)

(assert (=> b!4005984 (= e!2484283 0)))

(declare-fun b!4005985 () Bool)

(assert (=> b!4005985 (= e!2484283 (+ 1 (size!32062 (t!332477 (_2!24153 (get!14094 lt!1417022))))))))

(assert (= (and d!1185091 c!692679) b!4005984))

(assert (= (and d!1185091 (not c!692679)) b!4005985))

(declare-fun m!4589143 () Bool)

(assert (=> b!4005985 m!4589143))

(assert (=> b!4005501 d!1185091))

(assert (=> b!4005501 d!1184975))

(declare-fun d!1185093 () Bool)

(declare-fun lt!1417207 () Int)

(assert (=> d!1185093 (>= lt!1417207 0)))

(declare-fun e!2484284 () Int)

(assert (=> d!1185093 (= lt!1417207 e!2484284)))

(declare-fun c!692680 () Bool)

(assert (=> d!1185093 (= c!692680 ((_ is Nil!42882) lt!1416898))))

(assert (=> d!1185093 (= (size!32062 lt!1416898) lt!1417207)))

(declare-fun b!4005986 () Bool)

(assert (=> b!4005986 (= e!2484284 0)))

(declare-fun b!4005987 () Bool)

(assert (=> b!4005987 (= e!2484284 (+ 1 (size!32062 (t!332477 lt!1416898))))))

(assert (= (and d!1185093 c!692680) b!4005986))

(assert (= (and d!1185093 (not c!692680)) b!4005987))

(declare-fun m!4589145 () Bool)

(assert (=> b!4005987 m!4589145))

(assert (=> b!4005501 d!1185093))

(assert (=> b!4005675 d!1185035))

(declare-fun b!4006006 () Bool)

(declare-fun res!1627949 () Bool)

(declare-fun e!2484300 () Bool)

(assert (=> b!4006006 (=> res!1627949 e!2484300)))

(assert (=> b!4006006 (= res!1627949 (not ((_ is Concat!18768) (regex!6816 (rule!9852 token!484)))))))

(declare-fun e!2484299 () Bool)

(assert (=> b!4006006 (= e!2484299 e!2484300)))

(declare-fun call!286147 () Bool)

(declare-fun c!692686 () Bool)

(declare-fun bm!286140 () Bool)

(declare-fun c!692685 () Bool)

(assert (=> bm!286140 (= call!286147 (validRegex!5310 (ite c!692686 (reg!12050 (regex!6816 (rule!9852 token!484))) (ite c!692685 (regTwo!23955 (regex!6816 (rule!9852 token!484))) (regTwo!23954 (regex!6816 (rule!9852 token!484)))))))))

(declare-fun b!4006007 () Bool)

(declare-fun e!2484302 () Bool)

(declare-fun e!2484305 () Bool)

(assert (=> b!4006007 (= e!2484302 e!2484305)))

(declare-fun res!1627950 () Bool)

(assert (=> b!4006007 (= res!1627950 (not (nullable!4110 (reg!12050 (regex!6816 (rule!9852 token!484))))))))

(assert (=> b!4006007 (=> (not res!1627950) (not e!2484305))))

(declare-fun d!1185095 () Bool)

(declare-fun res!1627947 () Bool)

(declare-fun e!2484304 () Bool)

(assert (=> d!1185095 (=> res!1627947 e!2484304)))

(assert (=> d!1185095 (= res!1627947 ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484))))))

(assert (=> d!1185095 (= (validRegex!5310 (regex!6816 (rule!9852 token!484))) e!2484304)))

(declare-fun bm!286141 () Bool)

(declare-fun call!286145 () Bool)

(assert (=> bm!286141 (= call!286145 (validRegex!5310 (ite c!692685 (regOne!23955 (regex!6816 (rule!9852 token!484))) (regOne!23954 (regex!6816 (rule!9852 token!484))))))))

(declare-fun b!4006008 () Bool)

(declare-fun res!1627951 () Bool)

(declare-fun e!2484301 () Bool)

(assert (=> b!4006008 (=> (not res!1627951) (not e!2484301))))

(assert (=> b!4006008 (= res!1627951 call!286145)))

(assert (=> b!4006008 (= e!2484299 e!2484301)))

(declare-fun b!4006009 () Bool)

(declare-fun call!286146 () Bool)

(assert (=> b!4006009 (= e!2484301 call!286146)))

(declare-fun b!4006010 () Bool)

(assert (=> b!4006010 (= e!2484304 e!2484302)))

(assert (=> b!4006010 (= c!692686 ((_ is Star!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun bm!286142 () Bool)

(assert (=> bm!286142 (= call!286146 call!286147)))

(declare-fun b!4006011 () Bool)

(assert (=> b!4006011 (= e!2484305 call!286147)))

(declare-fun b!4006012 () Bool)

(assert (=> b!4006012 (= e!2484302 e!2484299)))

(assert (=> b!4006012 (= c!692685 ((_ is Union!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006013 () Bool)

(declare-fun e!2484303 () Bool)

(assert (=> b!4006013 (= e!2484300 e!2484303)))

(declare-fun res!1627948 () Bool)

(assert (=> b!4006013 (=> (not res!1627948) (not e!2484303))))

(assert (=> b!4006013 (= res!1627948 call!286145)))

(declare-fun b!4006014 () Bool)

(assert (=> b!4006014 (= e!2484303 call!286146)))

(assert (= (and d!1185095 (not res!1627947)) b!4006010))

(assert (= (and b!4006010 c!692686) b!4006007))

(assert (= (and b!4006010 (not c!692686)) b!4006012))

(assert (= (and b!4006007 res!1627950) b!4006011))

(assert (= (and b!4006012 c!692685) b!4006008))

(assert (= (and b!4006012 (not c!692685)) b!4006006))

(assert (= (and b!4006008 res!1627951) b!4006009))

(assert (= (and b!4006006 (not res!1627949)) b!4006013))

(assert (= (and b!4006013 res!1627948) b!4006014))

(assert (= (or b!4006009 b!4006014) bm!286142))

(assert (= (or b!4006008 b!4006013) bm!286141))

(assert (= (or b!4006011 bm!286142) bm!286140))

(declare-fun m!4589147 () Bool)

(assert (=> bm!286140 m!4589147))

(declare-fun m!4589149 () Bool)

(assert (=> b!4006007 m!4589149))

(declare-fun m!4589151 () Bool)

(assert (=> bm!286141 m!4589151))

(assert (=> d!1184945 d!1185095))

(assert (=> b!4005764 d!1185093))

(assert (=> b!4005764 d!1184779))

(declare-fun d!1185097 () Bool)

(declare-fun e!2484306 () Bool)

(assert (=> d!1185097 e!2484306))

(declare-fun res!1627953 () Bool)

(assert (=> d!1185097 (=> (not res!1627953) (not e!2484306))))

(declare-fun lt!1417208 () List!43006)

(assert (=> d!1185097 (= res!1627953 (= (content!6500 lt!1417208) ((_ map or) (content!6500 lt!1416910) (content!6500 (++!11218 lt!1416894 suffix!1299)))))))

(declare-fun e!2484307 () List!43006)

(assert (=> d!1185097 (= lt!1417208 e!2484307)))

(declare-fun c!692687 () Bool)

(assert (=> d!1185097 (= c!692687 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185097 (= (++!11218 lt!1416910 (++!11218 lt!1416894 suffix!1299)) lt!1417208)))

(declare-fun b!4006015 () Bool)

(assert (=> b!4006015 (= e!2484307 (++!11218 lt!1416894 suffix!1299))))

(declare-fun b!4006018 () Bool)

(assert (=> b!4006018 (= e!2484306 (or (not (= (++!11218 lt!1416894 suffix!1299) Nil!42882)) (= lt!1417208 lt!1416910)))))

(declare-fun b!4006017 () Bool)

(declare-fun res!1627952 () Bool)

(assert (=> b!4006017 (=> (not res!1627952) (not e!2484306))))

(assert (=> b!4006017 (= res!1627952 (= (size!32062 lt!1417208) (+ (size!32062 lt!1416910) (size!32062 (++!11218 lt!1416894 suffix!1299)))))))

(declare-fun b!4006016 () Bool)

(assert (=> b!4006016 (= e!2484307 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) (++!11218 lt!1416894 suffix!1299))))))

(assert (= (and d!1185097 c!692687) b!4006015))

(assert (= (and d!1185097 (not c!692687)) b!4006016))

(assert (= (and d!1185097 res!1627953) b!4006017))

(assert (= (and b!4006017 res!1627952) b!4006018))

(declare-fun m!4589153 () Bool)

(assert (=> d!1185097 m!4589153))

(assert (=> d!1185097 m!4588701))

(assert (=> d!1185097 m!4588241))

(declare-fun m!4589155 () Bool)

(assert (=> d!1185097 m!4589155))

(declare-fun m!4589157 () Bool)

(assert (=> b!4006017 m!4589157))

(assert (=> b!4006017 m!4588245))

(assert (=> b!4006017 m!4588241))

(declare-fun m!4589159 () Bool)

(assert (=> b!4006017 m!4589159))

(assert (=> b!4006016 m!4588241))

(declare-fun m!4589161 () Bool)

(assert (=> b!4006016 m!4589161))

(assert (=> d!1184931 d!1185097))

(assert (=> d!1184931 d!1184929))

(declare-fun d!1185099 () Bool)

(assert (=> d!1185099 (= (++!11218 (++!11218 lt!1416910 lt!1416894) suffix!1299) (++!11218 lt!1416910 (++!11218 lt!1416894 suffix!1299)))))

(assert (=> d!1185099 true))

(declare-fun _$52!2249 () Unit!61877)

(assert (=> d!1185099 (= (choose!24179 lt!1416910 lt!1416894 suffix!1299) _$52!2249)))

(declare-fun bs!589044 () Bool)

(assert (= bs!589044 d!1185099))

(assert (=> bs!589044 m!4588217))

(assert (=> bs!589044 m!4588217))

(assert (=> bs!589044 m!4588831))

(assert (=> bs!589044 m!4588241))

(assert (=> bs!589044 m!4588241))

(assert (=> bs!589044 m!4588829))

(assert (=> d!1184931 d!1185099))

(declare-fun d!1185101 () Bool)

(declare-fun e!2484308 () Bool)

(assert (=> d!1185101 e!2484308))

(declare-fun res!1627955 () Bool)

(assert (=> d!1185101 (=> (not res!1627955) (not e!2484308))))

(declare-fun lt!1417209 () List!43006)

(assert (=> d!1185101 (= res!1627955 (= (content!6500 lt!1417209) ((_ map or) (content!6500 (++!11218 lt!1416910 lt!1416894)) (content!6500 suffix!1299))))))

(declare-fun e!2484309 () List!43006)

(assert (=> d!1185101 (= lt!1417209 e!2484309)))

(declare-fun c!692688 () Bool)

(assert (=> d!1185101 (= c!692688 ((_ is Nil!42882) (++!11218 lt!1416910 lt!1416894)))))

(assert (=> d!1185101 (= (++!11218 (++!11218 lt!1416910 lt!1416894) suffix!1299) lt!1417209)))

(declare-fun b!4006019 () Bool)

(assert (=> b!4006019 (= e!2484309 suffix!1299)))

(declare-fun b!4006022 () Bool)

(assert (=> b!4006022 (= e!2484308 (or (not (= suffix!1299 Nil!42882)) (= lt!1417209 (++!11218 lt!1416910 lt!1416894))))))

(declare-fun b!4006021 () Bool)

(declare-fun res!1627954 () Bool)

(assert (=> b!4006021 (=> (not res!1627954) (not e!2484308))))

(assert (=> b!4006021 (= res!1627954 (= (size!32062 lt!1417209) (+ (size!32062 (++!11218 lt!1416910 lt!1416894)) (size!32062 suffix!1299))))))

(declare-fun b!4006020 () Bool)

(assert (=> b!4006020 (= e!2484309 (Cons!42882 (h!48302 (++!11218 lt!1416910 lt!1416894)) (++!11218 (t!332477 (++!11218 lt!1416910 lt!1416894)) suffix!1299)))))

(assert (= (and d!1185101 c!692688) b!4006019))

(assert (= (and d!1185101 (not c!692688)) b!4006020))

(assert (= (and d!1185101 res!1627955) b!4006021))

(assert (= (and b!4006021 res!1627954) b!4006022))

(declare-fun m!4589163 () Bool)

(assert (=> d!1185101 m!4589163))

(assert (=> d!1185101 m!4588217))

(declare-fun m!4589165 () Bool)

(assert (=> d!1185101 m!4589165))

(assert (=> d!1185101 m!4588795))

(declare-fun m!4589167 () Bool)

(assert (=> b!4006021 m!4589167))

(assert (=> b!4006021 m!4588217))

(declare-fun m!4589169 () Bool)

(assert (=> b!4006021 m!4589169))

(assert (=> b!4006021 m!4588193))

(declare-fun m!4589171 () Bool)

(assert (=> b!4006020 m!4589171))

(assert (=> d!1184931 d!1185101))

(assert (=> d!1184931 d!1184903))

(declare-fun b!4006023 () Bool)

(declare-fun res!1627956 () Bool)

(declare-fun e!2484312 () Bool)

(assert (=> b!4006023 (=> (not res!1627956) (not e!2484312))))

(declare-fun lt!1417210 () Option!9230)

(assert (=> b!4006023 (= res!1627956 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417210)))) (_2!24153 (get!14094 lt!1417210))) lt!1416898))))

(declare-fun b!4006024 () Bool)

(declare-fun res!1627962 () Bool)

(assert (=> b!4006024 (=> (not res!1627962) (not e!2484312))))

(assert (=> b!4006024 (= res!1627962 (matchR!5682 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417210)))) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417210))))))))

(declare-fun b!4006025 () Bool)

(declare-fun e!2484311 () Option!9230)

(declare-fun lt!1417212 () Option!9230)

(declare-fun lt!1417214 () Option!9230)

(assert (=> b!4006025 (= e!2484311 (ite (and ((_ is None!9229) lt!1417212) ((_ is None!9229) lt!1417214)) None!9229 (ite ((_ is None!9229) lt!1417214) lt!1417212 (ite ((_ is None!9229) lt!1417212) lt!1417214 (ite (>= (size!32061 (_1!24153 (v!39593 lt!1417212))) (size!32061 (_1!24153 (v!39593 lt!1417214)))) lt!1417212 lt!1417214)))))))

(declare-fun call!286148 () Option!9230)

(assert (=> b!4006025 (= lt!1417212 call!286148)))

(assert (=> b!4006025 (= lt!1417214 (maxPrefix!3703 thiss!21717 (t!332479 (t!332479 rules!2999)) lt!1416898))))

(declare-fun b!4006026 () Bool)

(assert (=> b!4006026 (= e!2484311 call!286148)))

(declare-fun b!4006027 () Bool)

(declare-fun res!1627958 () Bool)

(assert (=> b!4006027 (=> (not res!1627958) (not e!2484312))))

(assert (=> b!4006027 (= res!1627958 (< (size!32062 (_2!24153 (get!14094 lt!1417210))) (size!32062 lt!1416898)))))

(declare-fun bm!286143 () Bool)

(assert (=> bm!286143 (= call!286148 (maxPrefixOneRule!2723 thiss!21717 (h!48304 (t!332479 rules!2999)) lt!1416898))))

(declare-fun b!4006029 () Bool)

(declare-fun e!2484310 () Bool)

(assert (=> b!4006029 (= e!2484310 e!2484312)))

(declare-fun res!1627957 () Bool)

(assert (=> b!4006029 (=> (not res!1627957) (not e!2484312))))

(assert (=> b!4006029 (= res!1627957 (isDefined!7062 lt!1417210))))

(declare-fun b!4006030 () Bool)

(declare-fun res!1627960 () Bool)

(assert (=> b!4006030 (=> (not res!1627960) (not e!2484312))))

(assert (=> b!4006030 (= res!1627960 (= (value!214890 (_1!24153 (get!14094 lt!1417210))) (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417210)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417210)))))))))

(declare-fun b!4006031 () Bool)

(assert (=> b!4006031 (= e!2484312 (contains!8524 (t!332479 rules!2999) (rule!9852 (_1!24153 (get!14094 lt!1417210)))))))

(declare-fun d!1185103 () Bool)

(assert (=> d!1185103 e!2484310))

(declare-fun res!1627959 () Bool)

(assert (=> d!1185103 (=> res!1627959 e!2484310)))

(assert (=> d!1185103 (= res!1627959 (isEmpty!25620 lt!1417210))))

(assert (=> d!1185103 (= lt!1417210 e!2484311)))

(declare-fun c!692689 () Bool)

(assert (=> d!1185103 (= c!692689 (and ((_ is Cons!42884) (t!332479 rules!2999)) ((_ is Nil!42884) (t!332479 (t!332479 rules!2999)))))))

(declare-fun lt!1417213 () Unit!61877)

(declare-fun lt!1417211 () Unit!61877)

(assert (=> d!1185103 (= lt!1417213 lt!1417211)))

(assert (=> d!1185103 (isPrefix!3903 lt!1416898 lt!1416898)))

(assert (=> d!1185103 (= lt!1417211 (lemmaIsPrefixRefl!2479 lt!1416898 lt!1416898))))

(assert (=> d!1185103 (rulesValidInductive!2483 thiss!21717 (t!332479 rules!2999))))

(assert (=> d!1185103 (= (maxPrefix!3703 thiss!21717 (t!332479 rules!2999) lt!1416898) lt!1417210)))

(declare-fun b!4006028 () Bool)

(declare-fun res!1627961 () Bool)

(assert (=> b!4006028 (=> (not res!1627961) (not e!2484312))))

(assert (=> b!4006028 (= res!1627961 (= (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417210)))) (originalCharacters!7416 (_1!24153 (get!14094 lt!1417210)))))))

(assert (= (and d!1185103 c!692689) b!4006026))

(assert (= (and d!1185103 (not c!692689)) b!4006025))

(assert (= (or b!4006026 b!4006025) bm!286143))

(assert (= (and d!1185103 (not res!1627959)) b!4006029))

(assert (= (and b!4006029 res!1627957) b!4006028))

(assert (= (and b!4006028 res!1627961) b!4006027))

(assert (= (and b!4006027 res!1627958) b!4006023))

(assert (= (and b!4006023 res!1627956) b!4006030))

(assert (= (and b!4006030 res!1627960) b!4006024))

(assert (= (and b!4006024 res!1627962) b!4006031))

(declare-fun m!4589173 () Bool)

(assert (=> b!4006023 m!4589173))

(declare-fun m!4589175 () Bool)

(assert (=> b!4006023 m!4589175))

(assert (=> b!4006023 m!4589175))

(declare-fun m!4589177 () Bool)

(assert (=> b!4006023 m!4589177))

(assert (=> b!4006023 m!4589177))

(declare-fun m!4589179 () Bool)

(assert (=> b!4006023 m!4589179))

(declare-fun m!4589181 () Bool)

(assert (=> b!4006029 m!4589181))

(assert (=> b!4006028 m!4589173))

(assert (=> b!4006028 m!4589175))

(assert (=> b!4006028 m!4589175))

(assert (=> b!4006028 m!4589177))

(declare-fun m!4589183 () Bool)

(assert (=> b!4006025 m!4589183))

(declare-fun m!4589185 () Bool)

(assert (=> d!1185103 m!4589185))

(assert (=> d!1185103 m!4588775))

(assert (=> d!1185103 m!4588777))

(assert (=> d!1185103 m!4589083))

(assert (=> b!4006030 m!4589173))

(declare-fun m!4589187 () Bool)

(assert (=> b!4006030 m!4589187))

(assert (=> b!4006030 m!4589187))

(declare-fun m!4589189 () Bool)

(assert (=> b!4006030 m!4589189))

(assert (=> b!4006031 m!4589173))

(declare-fun m!4589191 () Bool)

(assert (=> b!4006031 m!4589191))

(assert (=> b!4006024 m!4589173))

(assert (=> b!4006024 m!4589175))

(assert (=> b!4006024 m!4589175))

(assert (=> b!4006024 m!4589177))

(assert (=> b!4006024 m!4589177))

(declare-fun m!4589193 () Bool)

(assert (=> b!4006024 m!4589193))

(assert (=> b!4006027 m!4589173))

(declare-fun m!4589195 () Bool)

(assert (=> b!4006027 m!4589195))

(assert (=> b!4006027 m!4588591))

(declare-fun m!4589197 () Bool)

(assert (=> bm!286143 m!4589197))

(assert (=> b!4005707 d!1185103))

(assert (=> b!4005640 d!1184781))

(assert (=> b!4005640 d!1184779))

(declare-fun d!1185105 () Bool)

(declare-fun lt!1417215 () List!43006)

(assert (=> d!1185105 (= (++!11218 (t!332477 lt!1416910) lt!1417215) (tail!6242 prefix!494))))

(declare-fun e!2484313 () List!43006)

(assert (=> d!1185105 (= lt!1417215 e!2484313)))

(declare-fun c!692690 () Bool)

(assert (=> d!1185105 (= c!692690 ((_ is Cons!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185105 (>= (size!32062 (tail!6242 prefix!494)) (size!32062 (t!332477 lt!1416910)))))

(assert (=> d!1185105 (= (getSuffix!2328 (tail!6242 prefix!494) (t!332477 lt!1416910)) lt!1417215)))

(declare-fun b!4006032 () Bool)

(assert (=> b!4006032 (= e!2484313 (getSuffix!2328 (tail!6242 (tail!6242 prefix!494)) (t!332477 (t!332477 lt!1416910))))))

(declare-fun b!4006033 () Bool)

(assert (=> b!4006033 (= e!2484313 (tail!6242 prefix!494))))

(assert (= (and d!1185105 c!692690) b!4006032))

(assert (= (and d!1185105 (not c!692690)) b!4006033))

(declare-fun m!4589199 () Bool)

(assert (=> d!1185105 m!4589199))

(assert (=> d!1185105 m!4588723))

(declare-fun m!4589201 () Bool)

(assert (=> d!1185105 m!4589201))

(assert (=> d!1185105 m!4588285))

(assert (=> b!4006032 m!4588723))

(declare-fun m!4589203 () Bool)

(assert (=> b!4006032 m!4589203))

(assert (=> b!4006032 m!4589203))

(declare-fun m!4589205 () Bool)

(assert (=> b!4006032 m!4589205))

(assert (=> b!4005635 d!1185105))

(declare-fun d!1185107 () Bool)

(assert (=> d!1185107 (= (tail!6242 prefix!494) (t!332477 prefix!494))))

(assert (=> b!4005635 d!1185107))

(declare-fun bs!589045 () Bool)

(declare-fun d!1185109 () Bool)

(assert (= bs!589045 (and d!1185109 d!1185053)))

(declare-fun lambda!126979 () Int)

(assert (=> bs!589045 (= lambda!126979 lambda!126973)))

(assert (=> d!1185109 true))

(declare-fun lt!1417218 () Bool)

(assert (=> d!1185109 (= lt!1417218 (rulesValidInductive!2483 thiss!21717 rules!2999))))

(assert (=> d!1185109 (= lt!1417218 (forall!8347 rules!2999 lambda!126979))))

(assert (=> d!1185109 (= (rulesValid!2651 thiss!21717 rules!2999) lt!1417218)))

(declare-fun bs!589046 () Bool)

(assert (= bs!589046 d!1185109))

(assert (=> bs!589046 m!4588779))

(declare-fun m!4589207 () Bool)

(assert (=> bs!589046 m!4589207))

(assert (=> d!1184933 d!1185109))

(assert (=> b!4005505 d!1184975))

(declare-fun d!1185111 () Bool)

(assert (=> d!1185111 (= (head!8510 newSuffix!27) (h!48302 newSuffix!27))))

(assert (=> b!4005734 d!1185111))

(declare-fun d!1185113 () Bool)

(assert (=> d!1185113 (= (head!8510 suffix!1299) (h!48302 suffix!1299))))

(assert (=> b!4005734 d!1185113))

(declare-fun b!4006035 () Bool)

(declare-fun res!1627963 () Bool)

(declare-fun e!2484315 () Bool)

(assert (=> b!4006035 (=> (not res!1627963) (not e!2484315))))

(assert (=> b!4006035 (= res!1627963 (= (head!8510 (tail!6242 lt!1416910)) (head!8510 (tail!6242 lt!1416899))))))

(declare-fun b!4006037 () Bool)

(declare-fun e!2484316 () Bool)

(assert (=> b!4006037 (= e!2484316 (>= (size!32062 (tail!6242 lt!1416899)) (size!32062 (tail!6242 lt!1416910))))))

(declare-fun b!4006036 () Bool)

(assert (=> b!4006036 (= e!2484315 (isPrefix!3903 (tail!6242 (tail!6242 lt!1416910)) (tail!6242 (tail!6242 lt!1416899))))))

(declare-fun d!1185115 () Bool)

(assert (=> d!1185115 e!2484316))

(declare-fun res!1627966 () Bool)

(assert (=> d!1185115 (=> res!1627966 e!2484316)))

(declare-fun lt!1417219 () Bool)

(assert (=> d!1185115 (= res!1627966 (not lt!1417219))))

(declare-fun e!2484314 () Bool)

(assert (=> d!1185115 (= lt!1417219 e!2484314)))

(declare-fun res!1627964 () Bool)

(assert (=> d!1185115 (=> res!1627964 e!2484314)))

(assert (=> d!1185115 (= res!1627964 ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> d!1185115 (= (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416899)) lt!1417219)))

(declare-fun b!4006034 () Bool)

(assert (=> b!4006034 (= e!2484314 e!2484315)))

(declare-fun res!1627965 () Bool)

(assert (=> b!4006034 (=> (not res!1627965) (not e!2484315))))

(assert (=> b!4006034 (= res!1627965 (not ((_ is Nil!42882) (tail!6242 lt!1416899))))))

(assert (= (and d!1185115 (not res!1627964)) b!4006034))

(assert (= (and b!4006034 res!1627965) b!4006035))

(assert (= (and b!4006035 res!1627963) b!4006036))

(assert (= (and d!1185115 (not res!1627966)) b!4006037))

(assert (=> b!4006035 m!4588389))

(declare-fun m!4589209 () Bool)

(assert (=> b!4006035 m!4589209))

(assert (=> b!4006035 m!4588749))

(declare-fun m!4589211 () Bool)

(assert (=> b!4006035 m!4589211))

(assert (=> b!4006037 m!4588749))

(declare-fun m!4589213 () Bool)

(assert (=> b!4006037 m!4589213))

(assert (=> b!4006037 m!4588389))

(declare-fun m!4589215 () Bool)

(assert (=> b!4006037 m!4589215))

(assert (=> b!4006036 m!4588389))

(declare-fun m!4589217 () Bool)

(assert (=> b!4006036 m!4589217))

(assert (=> b!4006036 m!4588749))

(declare-fun m!4589219 () Bool)

(assert (=> b!4006036 m!4589219))

(assert (=> b!4006036 m!4589217))

(assert (=> b!4006036 m!4589219))

(declare-fun m!4589221 () Bool)

(assert (=> b!4006036 m!4589221))

(assert (=> b!4005685 d!1185115))

(declare-fun d!1185117 () Bool)

(assert (=> d!1185117 (= (tail!6242 lt!1416910) (t!332477 lt!1416910))))

(assert (=> b!4005685 d!1185117))

(declare-fun d!1185119 () Bool)

(assert (=> d!1185119 (= (tail!6242 lt!1416899) (t!332477 lt!1416899))))

(assert (=> b!4005685 d!1185119))

(declare-fun b!4006038 () Bool)

(declare-fun e!2484317 () Bool)

(assert (=> b!4006038 (= e!2484317 (matchR!5682 (regex!6816 (h!48304 rules!2999)) (_1!24155 (findLongestMatchInner!1351 (regex!6816 (h!48304 rules!2999)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(declare-fun b!4006039 () Bool)

(declare-fun e!2484318 () Bool)

(declare-fun e!2484319 () Bool)

(assert (=> b!4006039 (= e!2484318 e!2484319)))

(declare-fun res!1627970 () Bool)

(assert (=> b!4006039 (=> (not res!1627970) (not e!2484319))))

(declare-fun lt!1417221 () Option!9230)

(assert (=> b!4006039 (= res!1627970 (matchR!5682 (regex!6816 (h!48304 rules!2999)) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417221))))))))

(declare-fun b!4006040 () Bool)

(declare-fun res!1627967 () Bool)

(assert (=> b!4006040 (=> (not res!1627967) (not e!2484319))))

(assert (=> b!4006040 (= res!1627967 (= (value!214890 (_1!24153 (get!14094 lt!1417221))) (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417221)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417221)))))))))

(declare-fun b!4006042 () Bool)

(assert (=> b!4006042 (= e!2484319 (= (size!32061 (_1!24153 (get!14094 lt!1417221))) (size!32062 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417221))))))))

(declare-fun b!4006043 () Bool)

(declare-fun e!2484320 () Option!9230)

(declare-fun lt!1417224 () tuple2!42042)

(assert (=> b!4006043 (= e!2484320 (Some!9229 (tuple2!42039 (Token!12771 (apply!10013 (transformation!6816 (h!48304 rules!2999)) (seqFromList!5041 (_1!24155 lt!1417224))) (h!48304 rules!2999) (size!32064 (seqFromList!5041 (_1!24155 lt!1417224))) (_1!24155 lt!1417224)) (_2!24155 lt!1417224))))))

(declare-fun lt!1417223 () Unit!61877)

(assert (=> b!4006043 (= lt!1417223 (longestMatchIsAcceptedByMatchOrIsEmpty!1324 (regex!6816 (h!48304 rules!2999)) lt!1416898))))

(declare-fun res!1627968 () Bool)

(assert (=> b!4006043 (= res!1627968 (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (h!48304 rules!2999)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(assert (=> b!4006043 (=> res!1627968 e!2484317)))

(assert (=> b!4006043 e!2484317))

(declare-fun lt!1417222 () Unit!61877)

(assert (=> b!4006043 (= lt!1417222 lt!1417223)))

(declare-fun lt!1417220 () Unit!61877)

(assert (=> b!4006043 (= lt!1417220 (lemmaSemiInverse!1871 (transformation!6816 (h!48304 rules!2999)) (seqFromList!5041 (_1!24155 lt!1417224))))))

(declare-fun d!1185121 () Bool)

(assert (=> d!1185121 e!2484318))

(declare-fun res!1627972 () Bool)

(assert (=> d!1185121 (=> res!1627972 e!2484318)))

(assert (=> d!1185121 (= res!1627972 (isEmpty!25620 lt!1417221))))

(assert (=> d!1185121 (= lt!1417221 e!2484320)))

(declare-fun c!692691 () Bool)

(assert (=> d!1185121 (= c!692691 (isEmpty!25619 (_1!24155 lt!1417224)))))

(assert (=> d!1185121 (= lt!1417224 (findLongestMatch!1264 (regex!6816 (h!48304 rules!2999)) lt!1416898))))

(assert (=> d!1185121 (ruleValid!2748 thiss!21717 (h!48304 rules!2999))))

(assert (=> d!1185121 (= (maxPrefixOneRule!2723 thiss!21717 (h!48304 rules!2999) lt!1416898) lt!1417221)))

(declare-fun b!4006041 () Bool)

(declare-fun res!1627973 () Bool)

(assert (=> b!4006041 (=> (not res!1627973) (not e!2484319))))

(assert (=> b!4006041 (= res!1627973 (< (size!32062 (_2!24153 (get!14094 lt!1417221))) (size!32062 lt!1416898)))))

(declare-fun b!4006044 () Bool)

(declare-fun res!1627971 () Bool)

(assert (=> b!4006044 (=> (not res!1627971) (not e!2484319))))

(assert (=> b!4006044 (= res!1627971 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417221)))) (_2!24153 (get!14094 lt!1417221))) lt!1416898))))

(declare-fun b!4006045 () Bool)

(declare-fun res!1627969 () Bool)

(assert (=> b!4006045 (=> (not res!1627969) (not e!2484319))))

(assert (=> b!4006045 (= res!1627969 (= (rule!9852 (_1!24153 (get!14094 lt!1417221))) (h!48304 rules!2999)))))

(declare-fun b!4006046 () Bool)

(assert (=> b!4006046 (= e!2484320 None!9229)))

(assert (= (and d!1185121 c!692691) b!4006046))

(assert (= (and d!1185121 (not c!692691)) b!4006043))

(assert (= (and b!4006043 (not res!1627968)) b!4006038))

(assert (= (and d!1185121 (not res!1627972)) b!4006039))

(assert (= (and b!4006039 res!1627970) b!4006044))

(assert (= (and b!4006044 res!1627971) b!4006041))

(assert (= (and b!4006041 res!1627973) b!4006045))

(assert (= (and b!4006045 res!1627969) b!4006040))

(assert (= (and b!4006040 res!1627967) b!4006042))

(declare-fun m!4589223 () Bool)

(assert (=> b!4006040 m!4589223))

(declare-fun m!4589225 () Bool)

(assert (=> b!4006040 m!4589225))

(assert (=> b!4006040 m!4589225))

(declare-fun m!4589227 () Bool)

(assert (=> b!4006040 m!4589227))

(assert (=> b!4006042 m!4589223))

(declare-fun m!4589229 () Bool)

(assert (=> b!4006042 m!4589229))

(declare-fun m!4589231 () Bool)

(assert (=> d!1185121 m!4589231))

(declare-fun m!4589233 () Bool)

(assert (=> d!1185121 m!4589233))

(declare-fun m!4589235 () Bool)

(assert (=> d!1185121 m!4589235))

(assert (=> d!1185121 m!4589081))

(assert (=> b!4006038 m!4588589))

(assert (=> b!4006038 m!4588591))

(assert (=> b!4006038 m!4588589))

(assert (=> b!4006038 m!4588591))

(declare-fun m!4589237 () Bool)

(assert (=> b!4006038 m!4589237))

(declare-fun m!4589239 () Bool)

(assert (=> b!4006038 m!4589239))

(declare-fun m!4589241 () Bool)

(assert (=> b!4006043 m!4589241))

(declare-fun m!4589243 () Bool)

(assert (=> b!4006043 m!4589243))

(assert (=> b!4006043 m!4589241))

(assert (=> b!4006043 m!4589241))

(declare-fun m!4589245 () Bool)

(assert (=> b!4006043 m!4589245))

(declare-fun m!4589247 () Bool)

(assert (=> b!4006043 m!4589247))

(assert (=> b!4006043 m!4588591))

(declare-fun m!4589249 () Bool)

(assert (=> b!4006043 m!4589249))

(assert (=> b!4006043 m!4589241))

(declare-fun m!4589251 () Bool)

(assert (=> b!4006043 m!4589251))

(assert (=> b!4006043 m!4588589))

(assert (=> b!4006043 m!4588591))

(assert (=> b!4006043 m!4589237))

(assert (=> b!4006043 m!4588589))

(assert (=> b!4006041 m!4589223))

(declare-fun m!4589253 () Bool)

(assert (=> b!4006041 m!4589253))

(assert (=> b!4006041 m!4588591))

(assert (=> b!4006039 m!4589223))

(declare-fun m!4589255 () Bool)

(assert (=> b!4006039 m!4589255))

(assert (=> b!4006039 m!4589255))

(declare-fun m!4589257 () Bool)

(assert (=> b!4006039 m!4589257))

(assert (=> b!4006039 m!4589257))

(declare-fun m!4589259 () Bool)

(assert (=> b!4006039 m!4589259))

(assert (=> b!4006045 m!4589223))

(assert (=> b!4006044 m!4589223))

(assert (=> b!4006044 m!4589255))

(assert (=> b!4006044 m!4589255))

(assert (=> b!4006044 m!4589257))

(assert (=> b!4006044 m!4589257))

(declare-fun m!4589261 () Bool)

(assert (=> b!4006044 m!4589261))

(assert (=> bm!286107 d!1185121))

(declare-fun d!1185123 () Bool)

(assert (=> d!1185123 (= (inv!57265 (tag!7676 (h!48304 (t!332479 rules!2999)))) (= (mod (str.len (value!214889 (tag!7676 (h!48304 (t!332479 rules!2999))))) 2) 0))))

(assert (=> b!4005784 d!1185123))

(declare-fun d!1185125 () Bool)

(declare-fun res!1627974 () Bool)

(declare-fun e!2484321 () Bool)

(assert (=> d!1185125 (=> (not res!1627974) (not e!2484321))))

(assert (=> d!1185125 (= res!1627974 (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999))))))))

(assert (=> d!1185125 (= (inv!57268 (transformation!6816 (h!48304 (t!332479 rules!2999)))) e!2484321)))

(declare-fun b!4006047 () Bool)

(assert (=> b!4006047 (= e!2484321 (equivClasses!2816 (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999))))))))

(assert (= (and d!1185125 res!1627974) b!4006047))

(declare-fun m!4589263 () Bool)

(assert (=> d!1185125 m!4589263))

(declare-fun m!4589265 () Bool)

(assert (=> b!4006047 m!4589265))

(assert (=> b!4005784 d!1185125))

(declare-fun d!1185127 () Bool)

(assert (=> d!1185127 (= (list!15930 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))) (list!15932 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(declare-fun bs!589047 () Bool)

(assert (= bs!589047 d!1185127))

(declare-fun m!4589267 () Bool)

(assert (=> bs!589047 m!4589267))

(assert (=> b!4005597 d!1185127))

(declare-fun d!1185129 () Bool)

(declare-fun e!2484324 () Bool)

(assert (=> d!1185129 e!2484324))

(declare-fun res!1627977 () Bool)

(assert (=> d!1185129 (=> (not res!1627977) (not e!2484324))))

(declare-fun lt!1417227 () BalanceConc!25648)

(assert (=> d!1185129 (= res!1627977 (= (list!15930 lt!1417227) lt!1416910))))

(declare-fun fromList!840 (List!43006) Conc!13027)

(assert (=> d!1185129 (= lt!1417227 (BalanceConc!25649 (fromList!840 lt!1416910)))))

(assert (=> d!1185129 (= (fromListB!2308 lt!1416910) lt!1417227)))

(declare-fun b!4006050 () Bool)

(declare-fun isBalanced!3659 (Conc!13027) Bool)

(assert (=> b!4006050 (= e!2484324 (isBalanced!3659 (fromList!840 lt!1416910)))))

(assert (= (and d!1185129 res!1627977) b!4006050))

(declare-fun m!4589269 () Bool)

(assert (=> d!1185129 m!4589269))

(declare-fun m!4589271 () Bool)

(assert (=> d!1185129 m!4589271))

(assert (=> b!4006050 m!4589271))

(assert (=> b!4006050 m!4589271))

(declare-fun m!4589273 () Bool)

(assert (=> b!4006050 m!4589273))

(assert (=> d!1184873 d!1185129))

(declare-fun b!4006051 () Bool)

(declare-fun e!2484325 () Bool)

(declare-fun e!2484328 () Bool)

(assert (=> b!4006051 (= e!2484325 e!2484328)))

(declare-fun c!692694 () Bool)

(assert (=> b!4006051 (= c!692694 ((_ is EmptyLang!11721) (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910))))))

(declare-fun bm!286144 () Bool)

(declare-fun call!286149 () Bool)

(assert (=> bm!286144 (= call!286149 (isEmpty!25619 (tail!6242 lt!1416910)))))

(declare-fun b!4006052 () Bool)

(declare-fun e!2484326 () Bool)

(assert (=> b!4006052 (= e!2484326 (matchR!5682 (derivativeStep!3519 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)) (head!8510 (tail!6242 lt!1416910))) (tail!6242 (tail!6242 lt!1416910))))))

(declare-fun d!1185131 () Bool)

(assert (=> d!1185131 e!2484325))

(declare-fun c!692693 () Bool)

(assert (=> d!1185131 (= c!692693 ((_ is EmptyExpr!11721) (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910))))))

(declare-fun lt!1417228 () Bool)

(assert (=> d!1185131 (= lt!1417228 e!2484326)))

(declare-fun c!692695 () Bool)

(assert (=> d!1185131 (= c!692695 (isEmpty!25619 (tail!6242 lt!1416910)))))

(assert (=> d!1185131 (validRegex!5310 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)))))

(assert (=> d!1185131 (= (matchR!5682 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)) (tail!6242 lt!1416910)) lt!1417228)))

(declare-fun b!4006053 () Bool)

(declare-fun e!2484331 () Bool)

(assert (=> b!4006053 (= e!2484331 (= (head!8510 (tail!6242 lt!1416910)) (c!692547 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)))))))

(declare-fun b!4006054 () Bool)

(declare-fun e!2484329 () Bool)

(declare-fun e!2484330 () Bool)

(assert (=> b!4006054 (= e!2484329 e!2484330)))

(declare-fun res!1627984 () Bool)

(assert (=> b!4006054 (=> res!1627984 e!2484330)))

(assert (=> b!4006054 (= res!1627984 call!286149)))

(declare-fun b!4006055 () Bool)

(assert (=> b!4006055 (= e!2484328 (not lt!1417228))))

(declare-fun b!4006056 () Bool)

(declare-fun res!1627982 () Bool)

(assert (=> b!4006056 (=> res!1627982 e!2484330)))

(assert (=> b!4006056 (= res!1627982 (not (isEmpty!25619 (tail!6242 (tail!6242 lt!1416910)))))))

(declare-fun b!4006057 () Bool)

(assert (=> b!4006057 (= e!2484330 (not (= (head!8510 (tail!6242 lt!1416910)) (c!692547 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910))))))))

(declare-fun b!4006058 () Bool)

(declare-fun res!1627979 () Bool)

(declare-fun e!2484327 () Bool)

(assert (=> b!4006058 (=> res!1627979 e!2484327)))

(assert (=> b!4006058 (= res!1627979 e!2484331)))

(declare-fun res!1627980 () Bool)

(assert (=> b!4006058 (=> (not res!1627980) (not e!2484331))))

(assert (=> b!4006058 (= res!1627980 lt!1417228)))

(declare-fun b!4006059 () Bool)

(assert (=> b!4006059 (= e!2484325 (= lt!1417228 call!286149))))

(declare-fun b!4006060 () Bool)

(assert (=> b!4006060 (= e!2484327 e!2484329)))

(declare-fun res!1627985 () Bool)

(assert (=> b!4006060 (=> (not res!1627985) (not e!2484329))))

(assert (=> b!4006060 (= res!1627985 (not lt!1417228))))

(declare-fun b!4006061 () Bool)

(declare-fun res!1627983 () Bool)

(assert (=> b!4006061 (=> (not res!1627983) (not e!2484331))))

(assert (=> b!4006061 (= res!1627983 (not call!286149))))

(declare-fun b!4006062 () Bool)

(assert (=> b!4006062 (= e!2484326 (nullable!4110 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910))))))

(declare-fun b!4006063 () Bool)

(declare-fun res!1627978 () Bool)

(assert (=> b!4006063 (=> (not res!1627978) (not e!2484331))))

(assert (=> b!4006063 (= res!1627978 (isEmpty!25619 (tail!6242 (tail!6242 lt!1416910))))))

(declare-fun b!4006064 () Bool)

(declare-fun res!1627981 () Bool)

(assert (=> b!4006064 (=> res!1627981 e!2484327)))

(assert (=> b!4006064 (= res!1627981 (not ((_ is ElementMatch!11721) (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)))))))

(assert (=> b!4006064 (= e!2484328 e!2484327)))

(assert (= (and d!1185131 c!692695) b!4006062))

(assert (= (and d!1185131 (not c!692695)) b!4006052))

(assert (= (and d!1185131 c!692693) b!4006059))

(assert (= (and d!1185131 (not c!692693)) b!4006051))

(assert (= (and b!4006051 c!692694) b!4006055))

(assert (= (and b!4006051 (not c!692694)) b!4006064))

(assert (= (and b!4006064 (not res!1627981)) b!4006058))

(assert (= (and b!4006058 res!1627980) b!4006061))

(assert (= (and b!4006061 res!1627983) b!4006063))

(assert (= (and b!4006063 res!1627978) b!4006053))

(assert (= (and b!4006058 (not res!1627979)) b!4006060))

(assert (= (and b!4006060 res!1627985) b!4006054))

(assert (= (and b!4006054 (not res!1627984)) b!4006056))

(assert (= (and b!4006056 (not res!1627982)) b!4006057))

(assert (= (or b!4006059 b!4006054 b!4006061) bm!286144))

(assert (=> b!4006053 m!4588389))

(assert (=> b!4006053 m!4589209))

(assert (=> b!4006056 m!4588389))

(assert (=> b!4006056 m!4589217))

(assert (=> b!4006056 m!4589217))

(declare-fun m!4589275 () Bool)

(assert (=> b!4006056 m!4589275))

(assert (=> d!1185131 m!4588389))

(assert (=> d!1185131 m!4588733))

(assert (=> d!1185131 m!4588739))

(declare-fun m!4589277 () Bool)

(assert (=> d!1185131 m!4589277))

(assert (=> b!4006057 m!4588389))

(assert (=> b!4006057 m!4589209))

(assert (=> b!4006063 m!4588389))

(assert (=> b!4006063 m!4589217))

(assert (=> b!4006063 m!4589217))

(assert (=> b!4006063 m!4589275))

(assert (=> b!4006052 m!4588389))

(assert (=> b!4006052 m!4589209))

(assert (=> b!4006052 m!4588739))

(assert (=> b!4006052 m!4589209))

(declare-fun m!4589279 () Bool)

(assert (=> b!4006052 m!4589279))

(assert (=> b!4006052 m!4588389))

(assert (=> b!4006052 m!4589217))

(assert (=> b!4006052 m!4589279))

(assert (=> b!4006052 m!4589217))

(declare-fun m!4589281 () Bool)

(assert (=> b!4006052 m!4589281))

(assert (=> b!4006062 m!4588739))

(declare-fun m!4589283 () Bool)

(assert (=> b!4006062 m!4589283))

(assert (=> bm!286144 m!4588389))

(assert (=> bm!286144 m!4588733))

(assert (=> b!4005670 d!1185131))

(declare-fun b!4006085 () Bool)

(declare-fun e!2484344 () Regex!11721)

(declare-fun call!286158 () Regex!11721)

(declare-fun call!286160 () Regex!11721)

(assert (=> b!4006085 (= e!2484344 (Union!11721 (Concat!18768 call!286160 (regTwo!23954 (regex!6816 (rule!9852 token!484)))) call!286158))))

(declare-fun b!4006086 () Bool)

(declare-fun e!2484343 () Regex!11721)

(assert (=> b!4006086 (= e!2484343 EmptyLang!11721)))

(declare-fun b!4006087 () Bool)

(declare-fun e!2484346 () Regex!11721)

(declare-fun call!286159 () Regex!11721)

(assert (=> b!4006087 (= e!2484346 (Concat!18768 call!286159 (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006088 () Bool)

(declare-fun e!2484342 () Regex!11721)

(assert (=> b!4006088 (= e!2484342 e!2484346)))

(declare-fun c!692706 () Bool)

(assert (=> b!4006088 (= c!692706 ((_ is Star!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006089 () Bool)

(declare-fun call!286161 () Regex!11721)

(assert (=> b!4006089 (= e!2484342 (Union!11721 call!286161 call!286158))))

(declare-fun bm!286153 () Bool)

(assert (=> bm!286153 (= call!286159 call!286161)))

(declare-fun b!4006090 () Bool)

(declare-fun e!2484345 () Regex!11721)

(assert (=> b!4006090 (= e!2484345 (ite (= (head!8510 lt!1416910) (c!692547 (regex!6816 (rule!9852 token!484)))) EmptyExpr!11721 EmptyLang!11721))))

(declare-fun b!4006091 () Bool)

(declare-fun c!692708 () Bool)

(assert (=> b!4006091 (= c!692708 (nullable!4110 (regOne!23954 (regex!6816 (rule!9852 token!484)))))))

(assert (=> b!4006091 (= e!2484346 e!2484344)))

(declare-fun d!1185133 () Bool)

(declare-fun lt!1417231 () Regex!11721)

(assert (=> d!1185133 (validRegex!5310 lt!1417231)))

(assert (=> d!1185133 (= lt!1417231 e!2484343)))

(declare-fun c!692710 () Bool)

(assert (=> d!1185133 (= c!692710 (or ((_ is EmptyExpr!11721) (regex!6816 (rule!9852 token!484))) ((_ is EmptyLang!11721) (regex!6816 (rule!9852 token!484)))))))

(assert (=> d!1185133 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185133 (= (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 lt!1416910)) lt!1417231)))

(declare-fun c!692707 () Bool)

(declare-fun bm!286154 () Bool)

(assert (=> bm!286154 (= call!286161 (derivativeStep!3519 (ite c!692707 (regOne!23955 (regex!6816 (rule!9852 token!484))) (ite c!692706 (reg!12050 (regex!6816 (rule!9852 token!484))) (regOne!23954 (regex!6816 (rule!9852 token!484))))) (head!8510 lt!1416910)))))

(declare-fun bm!286155 () Bool)

(assert (=> bm!286155 (= call!286160 call!286159)))

(declare-fun b!4006092 () Bool)

(assert (=> b!4006092 (= c!692707 ((_ is Union!11721) (regex!6816 (rule!9852 token!484))))))

(assert (=> b!4006092 (= e!2484345 e!2484342)))

(declare-fun bm!286156 () Bool)

(assert (=> bm!286156 (= call!286158 (derivativeStep!3519 (ite c!692707 (regTwo!23955 (regex!6816 (rule!9852 token!484))) (regTwo!23954 (regex!6816 (rule!9852 token!484)))) (head!8510 lt!1416910)))))

(declare-fun b!4006093 () Bool)

(assert (=> b!4006093 (= e!2484344 (Union!11721 (Concat!18768 call!286160 (regTwo!23954 (regex!6816 (rule!9852 token!484)))) EmptyLang!11721))))

(declare-fun b!4006094 () Bool)

(assert (=> b!4006094 (= e!2484343 e!2484345)))

(declare-fun c!692709 () Bool)

(assert (=> b!4006094 (= c!692709 ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484))))))

(assert (= (and d!1185133 c!692710) b!4006086))

(assert (= (and d!1185133 (not c!692710)) b!4006094))

(assert (= (and b!4006094 c!692709) b!4006090))

(assert (= (and b!4006094 (not c!692709)) b!4006092))

(assert (= (and b!4006092 c!692707) b!4006089))

(assert (= (and b!4006092 (not c!692707)) b!4006088))

(assert (= (and b!4006088 c!692706) b!4006087))

(assert (= (and b!4006088 (not c!692706)) b!4006091))

(assert (= (and b!4006091 c!692708) b!4006085))

(assert (= (and b!4006091 (not c!692708)) b!4006093))

(assert (= (or b!4006085 b!4006093) bm!286155))

(assert (= (or b!4006087 bm!286155) bm!286153))

(assert (= (or b!4006089 bm!286153) bm!286154))

(assert (= (or b!4006089 b!4006085) bm!286156))

(declare-fun m!4589285 () Bool)

(assert (=> b!4006091 m!4589285))

(declare-fun m!4589287 () Bool)

(assert (=> d!1185133 m!4589287))

(assert (=> d!1185133 m!4588737))

(assert (=> bm!286154 m!4588383))

(declare-fun m!4589289 () Bool)

(assert (=> bm!286154 m!4589289))

(assert (=> bm!286156 m!4588383))

(declare-fun m!4589291 () Bool)

(assert (=> bm!286156 m!4589291))

(assert (=> b!4005670 d!1185133))

(assert (=> b!4005670 d!1185035))

(assert (=> b!4005670 d!1185117))

(assert (=> b!4005752 d!1185045))

(declare-fun d!1185135 () Bool)

(declare-fun lt!1417232 () Int)

(assert (=> d!1185135 (>= lt!1417232 0)))

(declare-fun e!2484347 () Int)

(assert (=> d!1185135 (= lt!1417232 e!2484347)))

(declare-fun c!692711 () Bool)

(assert (=> d!1185135 (= c!692711 ((_ is Nil!42882) lt!1417041))))

(assert (=> d!1185135 (= (size!32062 lt!1417041) lt!1417232)))

(declare-fun b!4006095 () Bool)

(assert (=> b!4006095 (= e!2484347 0)))

(declare-fun b!4006096 () Bool)

(assert (=> b!4006096 (= e!2484347 (+ 1 (size!32062 (t!332477 lt!1417041))))))

(assert (= (and d!1185135 c!692711) b!4006095))

(assert (= (and d!1185135 (not c!692711)) b!4006096))

(declare-fun m!4589293 () Bool)

(assert (=> b!4006096 m!4589293))

(assert (=> b!4005625 d!1185135))

(assert (=> b!4005625 d!1184779))

(declare-fun d!1185137 () Bool)

(declare-fun lt!1417233 () Int)

(assert (=> d!1185137 (>= lt!1417233 0)))

(declare-fun e!2484348 () Int)

(assert (=> d!1185137 (= lt!1417233 e!2484348)))

(declare-fun c!692712 () Bool)

(assert (=> d!1185137 (= c!692712 ((_ is Nil!42882) newSuffixResult!27))))

(assert (=> d!1185137 (= (size!32062 newSuffixResult!27) lt!1417233)))

(declare-fun b!4006097 () Bool)

(assert (=> b!4006097 (= e!2484348 0)))

(declare-fun b!4006098 () Bool)

(assert (=> b!4006098 (= e!2484348 (+ 1 (size!32062 (t!332477 newSuffixResult!27))))))

(assert (= (and d!1185137 c!692712) b!4006097))

(assert (= (and d!1185137 (not c!692712)) b!4006098))

(declare-fun m!4589295 () Bool)

(assert (=> b!4006098 m!4589295))

(assert (=> b!4005625 d!1185137))

(declare-fun bs!589048 () Bool)

(declare-fun d!1185139 () Bool)

(assert (= bs!589048 (and d!1185139 d!1184979)))

(declare-fun lambda!126980 () Int)

(assert (=> bs!589048 (= (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (= lambda!126980 lambda!126970))))

(assert (=> d!1185139 true))

(assert (=> d!1185139 (< (dynLambda!18185 order!22463 (toValue!9312 (transformation!6816 (h!48304 rules!2999)))) (dynLambda!18186 order!22465 lambda!126980))))

(assert (=> d!1185139 (= (equivClasses!2816 (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (h!48304 rules!2999)))) (Forall2!1068 lambda!126980))))

(declare-fun bs!589049 () Bool)

(assert (= bs!589049 d!1185139))

(declare-fun m!4589297 () Bool)

(assert (=> bs!589049 m!4589297))

(assert (=> b!4005769 d!1185139))

(declare-fun d!1185141 () Bool)

(declare-fun e!2484349 () Bool)

(assert (=> d!1185141 e!2484349))

(declare-fun res!1627987 () Bool)

(assert (=> d!1185141 (=> (not res!1627987) (not e!2484349))))

(declare-fun lt!1417234 () List!43006)

(assert (=> d!1185141 (= res!1627987 (= (content!6500 lt!1417234) ((_ map or) (content!6500 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (content!6500 (_2!24153 (get!14094 lt!1417022))))))))

(declare-fun e!2484350 () List!43006)

(assert (=> d!1185141 (= lt!1417234 e!2484350)))

(declare-fun c!692713 () Bool)

(assert (=> d!1185141 (= c!692713 ((_ is Nil!42882) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))

(assert (=> d!1185141 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))) (_2!24153 (get!14094 lt!1417022))) lt!1417234)))

(declare-fun b!4006099 () Bool)

(assert (=> b!4006099 (= e!2484350 (_2!24153 (get!14094 lt!1417022)))))

(declare-fun b!4006102 () Bool)

(assert (=> b!4006102 (= e!2484349 (or (not (= (_2!24153 (get!14094 lt!1417022)) Nil!42882)) (= lt!1417234 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))))))))

(declare-fun b!4006101 () Bool)

(declare-fun res!1627986 () Bool)

(assert (=> b!4006101 (=> (not res!1627986) (not e!2484349))))

(assert (=> b!4006101 (= res!1627986 (= (size!32062 lt!1417234) (+ (size!32062 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (size!32062 (_2!24153 (get!14094 lt!1417022))))))))

(declare-fun b!4006100 () Bool)

(assert (=> b!4006100 (= e!2484350 (Cons!42882 (h!48302 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (++!11218 (t!332477 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (_2!24153 (get!14094 lt!1417022)))))))

(assert (= (and d!1185141 c!692713) b!4006099))

(assert (= (and d!1185141 (not c!692713)) b!4006100))

(assert (= (and d!1185141 res!1627987) b!4006101))

(assert (= (and b!4006101 res!1627986) b!4006102))

(declare-fun m!4589299 () Bool)

(assert (=> d!1185141 m!4589299))

(assert (=> d!1185141 m!4588613))

(declare-fun m!4589301 () Bool)

(assert (=> d!1185141 m!4589301))

(declare-fun m!4589303 () Bool)

(assert (=> d!1185141 m!4589303))

(declare-fun m!4589305 () Bool)

(assert (=> b!4006101 m!4589305))

(assert (=> b!4006101 m!4588613))

(declare-fun m!4589307 () Bool)

(assert (=> b!4006101 m!4589307))

(assert (=> b!4006101 m!4588609))

(declare-fun m!4589309 () Bool)

(assert (=> b!4006100 m!4589309))

(assert (=> b!4005504 d!1185141))

(declare-fun d!1185143 () Bool)

(assert (=> d!1185143 (= (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))) (list!15932 (c!692546 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))

(declare-fun bs!589050 () Bool)

(assert (= bs!589050 d!1185143))

(declare-fun m!4589311 () Bool)

(assert (=> bs!589050 m!4589311))

(assert (=> b!4005504 d!1185143))

(declare-fun d!1185145 () Bool)

(declare-fun lt!1417235 () BalanceConc!25648)

(assert (=> d!1185145 (= (list!15930 lt!1417235) (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022))))))

(assert (=> d!1185145 (= lt!1417235 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022))))) (value!214890 (_1!24153 (get!14094 lt!1417022)))))))

(assert (=> d!1185145 (= (charsOf!4632 (_1!24153 (get!14094 lt!1417022))) lt!1417235)))

(declare-fun b_lambda!116851 () Bool)

(assert (=> (not b_lambda!116851) (not d!1185145)))

(declare-fun t!332519 () Bool)

(declare-fun tb!240765 () Bool)

(assert (=> (and b!4005248 (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332519) tb!240765))

(declare-fun b!4006103 () Bool)

(declare-fun e!2484351 () Bool)

(declare-fun tp!1219163 () Bool)

(assert (=> b!4006103 (= e!2484351 (and (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022))))) (value!214890 (_1!24153 (get!14094 lt!1417022)))))) tp!1219163))))

(declare-fun result!291830 () Bool)

(assert (=> tb!240765 (= result!291830 (and (inv!57273 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022))))) (value!214890 (_1!24153 (get!14094 lt!1417022))))) e!2484351))))

(assert (= tb!240765 b!4006103))

(declare-fun m!4589313 () Bool)

(assert (=> b!4006103 m!4589313))

(declare-fun m!4589315 () Bool)

(assert (=> tb!240765 m!4589315))

(assert (=> d!1185145 t!332519))

(declare-fun b_and!307663 () Bool)

(assert (= b_and!307639 (and (=> t!332519 result!291830) b_and!307663)))

(declare-fun tb!240767 () Bool)

(declare-fun t!332521 () Bool)

(assert (=> (and b!4005244 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332521) tb!240767))

(declare-fun result!291832 () Bool)

(assert (= result!291832 result!291830))

(assert (=> d!1185145 t!332521))

(declare-fun b_and!307665 () Bool)

(assert (= b_and!307641 (and (=> t!332521 result!291832) b_and!307665)))

(declare-fun t!332523 () Bool)

(declare-fun tb!240769 () Bool)

(assert (=> (and b!4005785 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332523) tb!240769))

(declare-fun result!291834 () Bool)

(assert (= result!291834 result!291830))

(assert (=> d!1185145 t!332523))

(declare-fun b_and!307667 () Bool)

(assert (= b_and!307649 (and (=> t!332523 result!291834) b_and!307667)))

(declare-fun m!4589317 () Bool)

(assert (=> d!1185145 m!4589317))

(declare-fun m!4589319 () Bool)

(assert (=> d!1185145 m!4589319))

(assert (=> b!4005504 d!1185145))

(assert (=> b!4005504 d!1184975))

(declare-fun b!4006105 () Bool)

(declare-fun res!1627988 () Bool)

(declare-fun e!2484353 () Bool)

(assert (=> b!4006105 (=> (not res!1627988) (not e!2484353))))

(assert (=> b!4006105 (= res!1627988 (= (head!8510 lt!1416910) (head!8510 (++!11218 prefix!494 newSuffix!27))))))

(declare-fun e!2484354 () Bool)

(declare-fun b!4006107 () Bool)

(assert (=> b!4006107 (= e!2484354 (>= (size!32062 (++!11218 prefix!494 newSuffix!27)) (size!32062 lt!1416910)))))

(declare-fun b!4006106 () Bool)

(assert (=> b!4006106 (= e!2484353 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 (++!11218 prefix!494 newSuffix!27))))))

(declare-fun d!1185147 () Bool)

(assert (=> d!1185147 e!2484354))

(declare-fun res!1627991 () Bool)

(assert (=> d!1185147 (=> res!1627991 e!2484354)))

(declare-fun lt!1417236 () Bool)

(assert (=> d!1185147 (= res!1627991 (not lt!1417236))))

(declare-fun e!2484352 () Bool)

(assert (=> d!1185147 (= lt!1417236 e!2484352)))

(declare-fun res!1627989 () Bool)

(assert (=> d!1185147 (=> res!1627989 e!2484352)))

(assert (=> d!1185147 (= res!1627989 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185147 (= (isPrefix!3903 lt!1416910 (++!11218 prefix!494 newSuffix!27)) lt!1417236)))

(declare-fun b!4006104 () Bool)

(assert (=> b!4006104 (= e!2484352 e!2484353)))

(declare-fun res!1627990 () Bool)

(assert (=> b!4006104 (=> (not res!1627990) (not e!2484353))))

(assert (=> b!4006104 (= res!1627990 (not ((_ is Nil!42882) (++!11218 prefix!494 newSuffix!27))))))

(assert (= (and d!1185147 (not res!1627989)) b!4006104))

(assert (= (and b!4006104 res!1627990) b!4006105))

(assert (= (and b!4006105 res!1627988) b!4006106))

(assert (= (and d!1185147 (not res!1627991)) b!4006107))

(assert (=> b!4006105 m!4588383))

(assert (=> b!4006105 m!4588225))

(declare-fun m!4589321 () Bool)

(assert (=> b!4006105 m!4589321))

(assert (=> b!4006107 m!4588225))

(declare-fun m!4589323 () Bool)

(assert (=> b!4006107 m!4589323))

(assert (=> b!4006107 m!4588245))

(assert (=> b!4006106 m!4588389))

(assert (=> b!4006106 m!4588225))

(declare-fun m!4589325 () Bool)

(assert (=> b!4006106 m!4589325))

(assert (=> b!4006106 m!4588389))

(assert (=> b!4006106 m!4589325))

(declare-fun m!4589327 () Bool)

(assert (=> b!4006106 m!4589327))

(assert (=> d!1184915 d!1185147))

(assert (=> d!1184915 d!1184899))

(declare-fun d!1185149 () Bool)

(assert (=> d!1185149 (isPrefix!3903 lt!1416910 (++!11218 prefix!494 newSuffix!27))))

(assert (=> d!1185149 true))

(declare-fun _$58!520 () Unit!61877)

(assert (=> d!1185149 (= (choose!24178 lt!1416910 prefix!494 newSuffix!27) _$58!520)))

(declare-fun bs!589051 () Bool)

(assert (= bs!589051 d!1185149))

(assert (=> bs!589051 m!4588225))

(assert (=> bs!589051 m!4588225))

(assert (=> bs!589051 m!4588753))

(assert (=> d!1184915 d!1185149))

(assert (=> d!1184915 d!1184907))

(declare-fun b!4006109 () Bool)

(declare-fun res!1627992 () Bool)

(declare-fun e!2484356 () Bool)

(assert (=> b!4006109 (=> (not res!1627992) (not e!2484356))))

(assert (=> b!4006109 (= res!1627992 (= (head!8510 prefix!494) (head!8510 (++!11218 prefix!494 suffix!1299))))))

(declare-fun b!4006111 () Bool)

(declare-fun e!2484357 () Bool)

(assert (=> b!4006111 (= e!2484357 (>= (size!32062 (++!11218 prefix!494 suffix!1299)) (size!32062 prefix!494)))))

(declare-fun b!4006110 () Bool)

(assert (=> b!4006110 (= e!2484356 (isPrefix!3903 (tail!6242 prefix!494) (tail!6242 (++!11218 prefix!494 suffix!1299))))))

(declare-fun d!1185151 () Bool)

(assert (=> d!1185151 e!2484357))

(declare-fun res!1627995 () Bool)

(assert (=> d!1185151 (=> res!1627995 e!2484357)))

(declare-fun lt!1417237 () Bool)

(assert (=> d!1185151 (= res!1627995 (not lt!1417237))))

(declare-fun e!2484355 () Bool)

(assert (=> d!1185151 (= lt!1417237 e!2484355)))

(declare-fun res!1627993 () Bool)

(assert (=> d!1185151 (=> res!1627993 e!2484355)))

(assert (=> d!1185151 (= res!1627993 ((_ is Nil!42882) prefix!494))))

(assert (=> d!1185151 (= (isPrefix!3903 prefix!494 (++!11218 prefix!494 suffix!1299)) lt!1417237)))

(declare-fun b!4006108 () Bool)

(assert (=> b!4006108 (= e!2484355 e!2484356)))

(declare-fun res!1627994 () Bool)

(assert (=> b!4006108 (=> (not res!1627994) (not e!2484356))))

(assert (=> b!4006108 (= res!1627994 (not ((_ is Nil!42882) (++!11218 prefix!494 suffix!1299))))))

(assert (= (and d!1185151 (not res!1627993)) b!4006108))

(assert (= (and b!4006108 res!1627994) b!4006109))

(assert (= (and b!4006109 res!1627992) b!4006110))

(assert (= (and d!1185151 (not res!1627995)) b!4006111))

(assert (=> b!4006109 m!4588727))

(assert (=> b!4006109 m!4588231))

(declare-fun m!4589329 () Bool)

(assert (=> b!4006109 m!4589329))

(assert (=> b!4006111 m!4588231))

(declare-fun m!4589331 () Bool)

(assert (=> b!4006111 m!4589331))

(assert (=> b!4006111 m!4588247))

(assert (=> b!4006110 m!4588723))

(assert (=> b!4006110 m!4588231))

(declare-fun m!4589333 () Bool)

(assert (=> b!4006110 m!4589333))

(assert (=> b!4006110 m!4588723))

(assert (=> b!4006110 m!4589333))

(declare-fun m!4589335 () Bool)

(assert (=> b!4006110 m!4589335))

(assert (=> d!1184961 d!1185151))

(assert (=> d!1184961 d!1184921))

(declare-fun d!1185153 () Bool)

(assert (=> d!1185153 (isPrefix!3903 prefix!494 (++!11218 prefix!494 suffix!1299))))

(assert (=> d!1185153 true))

(declare-fun _$46!1635 () Unit!61877)

(assert (=> d!1185153 (= (choose!24170 prefix!494 suffix!1299) _$46!1635)))

(declare-fun bs!589052 () Bool)

(assert (= bs!589052 d!1185153))

(assert (=> bs!589052 m!4588231))

(assert (=> bs!589052 m!4588231))

(assert (=> bs!589052 m!4588889))

(assert (=> d!1184961 d!1185153))

(declare-fun d!1185155 () Bool)

(declare-fun charsToInt!0 (List!43007) (_ BitVec 32))

(assert (=> d!1185155 (= (inv!16 (value!214890 token!484)) (= (charsToInt!0 (text!49769 (value!214890 token!484))) (value!214881 (value!214890 token!484))))))

(declare-fun bs!589053 () Bool)

(assert (= bs!589053 d!1185155))

(declare-fun m!4589337 () Bool)

(assert (=> bs!589053 m!4589337))

(assert (=> b!4005286 d!1185155))

(declare-fun bs!589054 () Bool)

(declare-fun d!1185157 () Bool)

(assert (= bs!589054 (and d!1185157 d!1185057)))

(declare-fun lambda!126981 () Int)

(assert (=> bs!589054 (= (and (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (h!48304 rules!2999)))) (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (h!48304 rules!2999))))) (= lambda!126981 lambda!126976))))

(assert (=> d!1185157 true))

(assert (=> d!1185157 (< (dynLambda!18187 order!22467 (toChars!9171 (transformation!6816 (rule!9852 token!484)))) (dynLambda!18188 order!22469 lambda!126981))))

(assert (=> d!1185157 true))

(assert (=> d!1185157 (< (dynLambda!18185 order!22463 (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (dynLambda!18188 order!22469 lambda!126981))))

(assert (=> d!1185157 (= (semiInverseModEq!2917 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (Forall!1468 lambda!126981))))

(declare-fun bs!589055 () Bool)

(assert (= bs!589055 d!1185157))

(declare-fun m!4589339 () Bool)

(assert (=> bs!589055 m!4589339))

(assert (=> d!1184943 d!1185157))

(declare-fun d!1185159 () Bool)

(assert (=> d!1185159 (= (isEmpty!25619 (tail!6242 lt!1416910)) ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> b!4005674 d!1185159))

(assert (=> b!4005674 d!1185117))

(assert (=> b!4005768 d!1185093))

(assert (=> b!4005768 d!1184781))

(assert (=> d!1184951 d!1185157))

(assert (=> b!4005500 d!1184975))

(declare-fun d!1185161 () Bool)

(assert (=> d!1185161 (= (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022))))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022))))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022))))))))

(declare-fun b_lambda!116853 () Bool)

(assert (=> (not b_lambda!116853) (not d!1185161)))

(declare-fun tb!240771 () Bool)

(declare-fun t!332525 () Bool)

(assert (=> (and b!4005248 (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332525) tb!240771))

(declare-fun result!291836 () Bool)

(assert (=> tb!240771 (= result!291836 (inv!21 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022))))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))))))))

(declare-fun m!4589341 () Bool)

(assert (=> tb!240771 m!4589341))

(assert (=> d!1185161 t!332525))

(declare-fun b_and!307669 () Bool)

(assert (= b_and!307623 (and (=> t!332525 result!291836) b_and!307669)))

(declare-fun tb!240773 () Bool)

(declare-fun t!332527 () Bool)

(assert (=> (and b!4005244 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332527) tb!240773))

(declare-fun result!291838 () Bool)

(assert (= result!291838 result!291836))

(assert (=> d!1185161 t!332527))

(declare-fun b_and!307671 () Bool)

(assert (= b_and!307625 (and (=> t!332527 result!291838) b_and!307671)))

(declare-fun tb!240775 () Bool)

(declare-fun t!332529 () Bool)

(assert (=> (and b!4005785 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332529) tb!240775))

(declare-fun result!291840 () Bool)

(assert (= result!291840 result!291836))

(assert (=> d!1185161 t!332529))

(declare-fun b_and!307673 () Bool)

(assert (= b_and!307647 (and (=> t!332529 result!291840) b_and!307673)))

(assert (=> d!1185161 m!4588577))

(declare-fun m!4589343 () Bool)

(assert (=> d!1185161 m!4589343))

(assert (=> b!4005500 d!1185161))

(declare-fun d!1185163 () Bool)

(assert (=> d!1185163 (= (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))) (fromListB!2308 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417022)))))))

(declare-fun bs!589056 () Bool)

(assert (= bs!589056 d!1185163))

(declare-fun m!4589345 () Bool)

(assert (=> bs!589056 m!4589345))

(assert (=> b!4005500 d!1185163))

(declare-fun d!1185165 () Bool)

(declare-fun lt!1417238 () Int)

(assert (=> d!1185165 (>= lt!1417238 0)))

(declare-fun e!2484359 () Int)

(assert (=> d!1185165 (= lt!1417238 e!2484359)))

(declare-fun c!692714 () Bool)

(assert (=> d!1185165 (= c!692714 ((_ is Nil!42882) lt!1417076))))

(assert (=> d!1185165 (= (size!32062 lt!1417076) lt!1417238)))

(declare-fun b!4006112 () Bool)

(assert (=> b!4006112 (= e!2484359 0)))

(declare-fun b!4006113 () Bool)

(assert (=> b!4006113 (= e!2484359 (+ 1 (size!32062 (t!332477 lt!1417076))))))

(assert (= (and d!1185165 c!692714) b!4006112))

(assert (= (and d!1185165 (not c!692714)) b!4006113))

(declare-fun m!4589347 () Bool)

(assert (=> b!4006113 m!4589347))

(assert (=> b!4005728 d!1185165))

(declare-fun d!1185167 () Bool)

(declare-fun lt!1417239 () Int)

(assert (=> d!1185167 (>= lt!1417239 0)))

(declare-fun e!2484360 () Int)

(assert (=> d!1185167 (= lt!1417239 e!2484360)))

(declare-fun c!692715 () Bool)

(assert (=> d!1185167 (= c!692715 ((_ is Nil!42882) lt!1416894))))

(assert (=> d!1185167 (= (size!32062 lt!1416894) lt!1417239)))

(declare-fun b!4006114 () Bool)

(assert (=> b!4006114 (= e!2484360 0)))

(declare-fun b!4006115 () Bool)

(assert (=> b!4006115 (= e!2484360 (+ 1 (size!32062 (t!332477 lt!1416894))))))

(assert (= (and d!1185167 c!692715) b!4006114))

(assert (= (and d!1185167 (not c!692715)) b!4006115))

(declare-fun m!4589349 () Bool)

(assert (=> b!4006115 m!4589349))

(assert (=> b!4005728 d!1185167))

(assert (=> b!4005728 d!1184937))

(declare-fun b!4006117 () Bool)

(declare-fun res!1627996 () Bool)

(declare-fun e!2484362 () Bool)

(assert (=> b!4006117 (=> (not res!1627996) (not e!2484362))))

(assert (=> b!4006117 (= res!1627996 (= (head!8510 (tail!6242 lt!1416910)) (head!8510 (tail!6242 lt!1416898))))))

(declare-fun b!4006119 () Bool)

(declare-fun e!2484363 () Bool)

(assert (=> b!4006119 (= e!2484363 (>= (size!32062 (tail!6242 lt!1416898)) (size!32062 (tail!6242 lt!1416910))))))

(declare-fun b!4006118 () Bool)

(assert (=> b!4006118 (= e!2484362 (isPrefix!3903 (tail!6242 (tail!6242 lt!1416910)) (tail!6242 (tail!6242 lt!1416898))))))

(declare-fun d!1185169 () Bool)

(assert (=> d!1185169 e!2484363))

(declare-fun res!1627999 () Bool)

(assert (=> d!1185169 (=> res!1627999 e!2484363)))

(declare-fun lt!1417240 () Bool)

(assert (=> d!1185169 (= res!1627999 (not lt!1417240))))

(declare-fun e!2484361 () Bool)

(assert (=> d!1185169 (= lt!1417240 e!2484361)))

(declare-fun res!1627997 () Bool)

(assert (=> d!1185169 (=> res!1627997 e!2484361)))

(assert (=> d!1185169 (= res!1627997 ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> d!1185169 (= (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416898)) lt!1417240)))

(declare-fun b!4006116 () Bool)

(assert (=> b!4006116 (= e!2484361 e!2484362)))

(declare-fun res!1627998 () Bool)

(assert (=> b!4006116 (=> (not res!1627998) (not e!2484362))))

(assert (=> b!4006116 (= res!1627998 (not ((_ is Nil!42882) (tail!6242 lt!1416898))))))

(assert (= (and d!1185169 (not res!1627997)) b!4006116))

(assert (= (and b!4006116 res!1627998) b!4006117))

(assert (= (and b!4006117 res!1627996) b!4006118))

(assert (= (and d!1185169 (not res!1627999)) b!4006119))

(assert (=> b!4006117 m!4588389))

(assert (=> b!4006117 m!4589209))

(assert (=> b!4006117 m!4588883))

(declare-fun m!4589351 () Bool)

(assert (=> b!4006117 m!4589351))

(assert (=> b!4006119 m!4588883))

(declare-fun m!4589353 () Bool)

(assert (=> b!4006119 m!4589353))

(assert (=> b!4006119 m!4588389))

(assert (=> b!4006119 m!4589215))

(assert (=> b!4006118 m!4588389))

(assert (=> b!4006118 m!4589217))

(assert (=> b!4006118 m!4588883))

(declare-fun m!4589355 () Bool)

(assert (=> b!4006118 m!4589355))

(assert (=> b!4006118 m!4589217))

(assert (=> b!4006118 m!4589355))

(declare-fun m!4589357 () Bool)

(assert (=> b!4006118 m!4589357))

(assert (=> b!4005763 d!1185169))

(assert (=> b!4005763 d!1185117))

(declare-fun d!1185171 () Bool)

(assert (=> d!1185171 (= (tail!6242 lt!1416898) (t!332477 lt!1416898))))

(assert (=> b!4005763 d!1185171))

(declare-fun d!1185173 () Bool)

(declare-fun c!692720 () Bool)

(assert (=> d!1185173 (= c!692720 ((_ is Empty!13027) (c!692546 (charsOf!4632 token!484))))))

(declare-fun e!2484368 () List!43006)

(assert (=> d!1185173 (= (list!15932 (c!692546 (charsOf!4632 token!484))) e!2484368)))

(declare-fun b!4006128 () Bool)

(assert (=> b!4006128 (= e!2484368 Nil!42882)))

(declare-fun b!4006131 () Bool)

(declare-fun e!2484369 () List!43006)

(assert (=> b!4006131 (= e!2484369 (++!11218 (list!15932 (left!32357 (c!692546 (charsOf!4632 token!484)))) (list!15932 (right!32687 (c!692546 (charsOf!4632 token!484))))))))

(declare-fun b!4006130 () Bool)

(declare-fun list!15933 (IArray!26059) List!43006)

(assert (=> b!4006130 (= e!2484369 (list!15933 (xs!16333 (c!692546 (charsOf!4632 token!484)))))))

(declare-fun b!4006129 () Bool)

(assert (=> b!4006129 (= e!2484368 e!2484369)))

(declare-fun c!692721 () Bool)

(assert (=> b!4006129 (= c!692721 ((_ is Leaf!20142) (c!692546 (charsOf!4632 token!484))))))

(assert (= (and d!1185173 c!692720) b!4006128))

(assert (= (and d!1185173 (not c!692720)) b!4006129))

(assert (= (and b!4006129 c!692721) b!4006130))

(assert (= (and b!4006129 (not c!692721)) b!4006131))

(declare-fun m!4589359 () Bool)

(assert (=> b!4006131 m!4589359))

(declare-fun m!4589361 () Bool)

(assert (=> b!4006131 m!4589361))

(assert (=> b!4006131 m!4589359))

(assert (=> b!4006131 m!4589361))

(declare-fun m!4589363 () Bool)

(assert (=> b!4006131 m!4589363))

(declare-fun m!4589365 () Bool)

(assert (=> b!4006130 m!4589365))

(assert (=> d!1184783 d!1185173))

(declare-fun d!1185175 () Bool)

(declare-fun lt!1417241 () Int)

(assert (=> d!1185175 (>= lt!1417241 0)))

(declare-fun e!2484370 () Int)

(assert (=> d!1185175 (= lt!1417241 e!2484370)))

(declare-fun c!692722 () Bool)

(assert (=> d!1185175 (= c!692722 ((_ is Nil!42882) lt!1416912))))

(assert (=> d!1185175 (= (size!32062 lt!1416912) lt!1417241)))

(declare-fun b!4006132 () Bool)

(assert (=> b!4006132 (= e!2484370 0)))

(declare-fun b!4006133 () Bool)

(assert (=> b!4006133 (= e!2484370 (+ 1 (size!32062 (t!332477 lt!1416912))))))

(assert (= (and d!1185175 c!692722) b!4006132))

(assert (= (and d!1185175 (not c!692722)) b!4006133))

(declare-fun m!4589367 () Bool)

(assert (=> b!4006133 m!4589367))

(assert (=> b!4005357 d!1185175))

(assert (=> b!4005357 d!1184779))

(declare-fun d!1185177 () Bool)

(declare-fun c!692723 () Bool)

(assert (=> d!1185177 (= c!692723 ((_ is Nil!42882) lt!1417040))))

(declare-fun e!2484371 () (InoxSet C!23628))

(assert (=> d!1185177 (= (content!6500 lt!1417040) e!2484371)))

(declare-fun b!4006134 () Bool)

(assert (=> b!4006134 (= e!2484371 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006135 () Bool)

(assert (=> b!4006135 (= e!2484371 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417040) true) (content!6500 (t!332477 lt!1417040))))))

(assert (= (and d!1185177 c!692723) b!4006134))

(assert (= (and d!1185177 (not c!692723)) b!4006135))

(declare-fun m!4589369 () Bool)

(assert (=> b!4006135 m!4589369))

(declare-fun m!4589371 () Bool)

(assert (=> b!4006135 m!4589371))

(assert (=> d!1184899 d!1185177))

(assert (=> d!1184899 d!1185041))

(declare-fun d!1185179 () Bool)

(declare-fun c!692724 () Bool)

(assert (=> d!1185179 (= c!692724 ((_ is Nil!42882) newSuffix!27))))

(declare-fun e!2484372 () (InoxSet C!23628))

(assert (=> d!1185179 (= (content!6500 newSuffix!27) e!2484372)))

(declare-fun b!4006136 () Bool)

(assert (=> b!4006136 (= e!2484372 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006137 () Bool)

(assert (=> b!4006137 (= e!2484372 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 newSuffix!27) true) (content!6500 (t!332477 newSuffix!27))))))

(assert (= (and d!1185179 c!692724) b!4006136))

(assert (= (and d!1185179 (not c!692724)) b!4006137))

(declare-fun m!4589373 () Bool)

(assert (=> b!4006137 m!4589373))

(declare-fun m!4589375 () Bool)

(assert (=> b!4006137 m!4589375))

(assert (=> d!1184899 d!1185179))

(declare-fun d!1185181 () Bool)

(declare-fun c!692725 () Bool)

(assert (=> d!1185181 (= c!692725 ((_ is Nil!42882) lt!1417041))))

(declare-fun e!2484373 () (InoxSet C!23628))

(assert (=> d!1185181 (= (content!6500 lt!1417041) e!2484373)))

(declare-fun b!4006138 () Bool)

(assert (=> b!4006138 (= e!2484373 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006139 () Bool)

(assert (=> b!4006139 (= e!2484373 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417041) true) (content!6500 (t!332477 lt!1417041))))))

(assert (= (and d!1185181 c!692725) b!4006138))

(assert (= (and d!1185181 (not c!692725)) b!4006139))

(declare-fun m!4589377 () Bool)

(assert (=> b!4006139 m!4589377))

(declare-fun m!4589379 () Bool)

(assert (=> b!4006139 m!4589379))

(assert (=> d!1184901 d!1185181))

(assert (=> d!1184901 d!1185069))

(declare-fun d!1185183 () Bool)

(declare-fun c!692726 () Bool)

(assert (=> d!1185183 (= c!692726 ((_ is Nil!42882) newSuffixResult!27))))

(declare-fun e!2484374 () (InoxSet C!23628))

(assert (=> d!1185183 (= (content!6500 newSuffixResult!27) e!2484374)))

(declare-fun b!4006140 () Bool)

(assert (=> b!4006140 (= e!2484374 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006141 () Bool)

(assert (=> b!4006141 (= e!2484374 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 newSuffixResult!27) true) (content!6500 (t!332477 newSuffixResult!27))))))

(assert (= (and d!1185183 c!692726) b!4006140))

(assert (= (and d!1185183 (not c!692726)) b!4006141))

(declare-fun m!4589381 () Bool)

(assert (=> b!4006141 m!4589381))

(declare-fun m!4589383 () Bool)

(assert (=> b!4006141 m!4589383))

(assert (=> d!1184901 d!1185183))

(declare-fun b!4006142 () Bool)

(declare-fun e!2484375 () Bool)

(declare-fun e!2484378 () Bool)

(assert (=> b!4006142 (= e!2484375 e!2484378)))

(declare-fun c!692728 () Bool)

(assert (=> b!4006142 (= c!692728 ((_ is EmptyLang!11721) (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun bm!286157 () Bool)

(declare-fun call!286162 () Bool)

(assert (=> bm!286157 (= call!286162 (isEmpty!25619 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun b!4006143 () Bool)

(declare-fun e!2484376 () Bool)

(assert (=> b!4006143 (= e!2484376 (matchR!5682 (derivativeStep!3519 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))))) (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun d!1185185 () Bool)

(assert (=> d!1185185 e!2484375))

(declare-fun c!692727 () Bool)

(assert (=> d!1185185 (= c!692727 ((_ is EmptyExpr!11721) (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun lt!1417242 () Bool)

(assert (=> d!1185185 (= lt!1417242 e!2484376)))

(declare-fun c!692729 () Bool)

(assert (=> d!1185185 (= c!692729 (isEmpty!25619 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))

(assert (=> d!1185185 (validRegex!5310 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))

(assert (=> d!1185185 (= (matchR!5682 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) lt!1417242)))

(declare-fun b!4006144 () Bool)

(declare-fun e!2484381 () Bool)

(assert (=> b!4006144 (= e!2484381 (= (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (c!692547 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun b!4006145 () Bool)

(declare-fun e!2484379 () Bool)

(declare-fun e!2484380 () Bool)

(assert (=> b!4006145 (= e!2484379 e!2484380)))

(declare-fun res!1628006 () Bool)

(assert (=> b!4006145 (=> res!1628006 e!2484380)))

(assert (=> b!4006145 (= res!1628006 call!286162)))

(declare-fun b!4006146 () Bool)

(assert (=> b!4006146 (= e!2484378 (not lt!1417242))))

(declare-fun b!4006147 () Bool)

(declare-fun res!1628004 () Bool)

(assert (=> b!4006147 (=> res!1628004 e!2484380)))

(assert (=> b!4006147 (= res!1628004 (not (isEmpty!25619 (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))))

(declare-fun b!4006148 () Bool)

(assert (=> b!4006148 (= e!2484380 (not (= (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (c!692547 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))))))))

(declare-fun b!4006149 () Bool)

(declare-fun res!1628001 () Bool)

(declare-fun e!2484377 () Bool)

(assert (=> b!4006149 (=> res!1628001 e!2484377)))

(assert (=> b!4006149 (= res!1628001 e!2484381)))

(declare-fun res!1628002 () Bool)

(assert (=> b!4006149 (=> (not res!1628002) (not e!2484381))))

(assert (=> b!4006149 (= res!1628002 lt!1417242)))

(declare-fun b!4006150 () Bool)

(assert (=> b!4006150 (= e!2484375 (= lt!1417242 call!286162))))

(declare-fun b!4006151 () Bool)

(assert (=> b!4006151 (= e!2484377 e!2484379)))

(declare-fun res!1628007 () Bool)

(assert (=> b!4006151 (=> (not res!1628007) (not e!2484379))))

(assert (=> b!4006151 (= res!1628007 (not lt!1417242))))

(declare-fun b!4006152 () Bool)

(declare-fun res!1628005 () Bool)

(assert (=> b!4006152 (=> (not res!1628005) (not e!2484381))))

(assert (=> b!4006152 (= res!1628005 (not call!286162))))

(declare-fun b!4006153 () Bool)

(assert (=> b!4006153 (= e!2484376 (nullable!4110 (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun b!4006154 () Bool)

(declare-fun res!1628000 () Bool)

(assert (=> b!4006154 (=> (not res!1628000) (not e!2484381))))

(assert (=> b!4006154 (= res!1628000 (isEmpty!25619 (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun b!4006155 () Bool)

(declare-fun res!1628003 () Bool)

(assert (=> b!4006155 (=> res!1628003 e!2484377)))

(assert (=> b!4006155 (= res!1628003 (not ((_ is ElementMatch!11721) (regex!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))))

(assert (=> b!4006155 (= e!2484378 e!2484377)))

(assert (= (and d!1185185 c!692729) b!4006153))

(assert (= (and d!1185185 (not c!692729)) b!4006143))

(assert (= (and d!1185185 c!692727) b!4006150))

(assert (= (and d!1185185 (not c!692727)) b!4006142))

(assert (= (and b!4006142 c!692728) b!4006146))

(assert (= (and b!4006142 (not c!692728)) b!4006155))

(assert (= (and b!4006155 (not res!1628003)) b!4006149))

(assert (= (and b!4006149 res!1628002) b!4006152))

(assert (= (and b!4006152 res!1628005) b!4006154))

(assert (= (and b!4006154 res!1628000) b!4006144))

(assert (= (and b!4006149 (not res!1628001)) b!4006151))

(assert (= (and b!4006151 res!1628007) b!4006145))

(assert (= (and b!4006145 (not res!1628006)) b!4006147))

(assert (= (and b!4006147 (not res!1628004)) b!4006148))

(assert (= (or b!4006150 b!4006145 b!4006152) bm!286157))

(assert (=> b!4006144 m!4588765))

(declare-fun m!4589385 () Bool)

(assert (=> b!4006144 m!4589385))

(assert (=> b!4006147 m!4588765))

(declare-fun m!4589387 () Bool)

(assert (=> b!4006147 m!4589387))

(assert (=> b!4006147 m!4589387))

(declare-fun m!4589389 () Bool)

(assert (=> b!4006147 m!4589389))

(assert (=> d!1185185 m!4588765))

(declare-fun m!4589391 () Bool)

(assert (=> d!1185185 m!4589391))

(declare-fun m!4589393 () Bool)

(assert (=> d!1185185 m!4589393))

(assert (=> b!4006148 m!4588765))

(assert (=> b!4006148 m!4589385))

(assert (=> b!4006154 m!4588765))

(assert (=> b!4006154 m!4589387))

(assert (=> b!4006154 m!4589387))

(assert (=> b!4006154 m!4589389))

(assert (=> b!4006143 m!4588765))

(assert (=> b!4006143 m!4589385))

(assert (=> b!4006143 m!4589385))

(declare-fun m!4589395 () Bool)

(assert (=> b!4006143 m!4589395))

(assert (=> b!4006143 m!4588765))

(assert (=> b!4006143 m!4589387))

(assert (=> b!4006143 m!4589395))

(assert (=> b!4006143 m!4589387))

(declare-fun m!4589397 () Bool)

(assert (=> b!4006143 m!4589397))

(declare-fun m!4589399 () Bool)

(assert (=> b!4006153 m!4589399))

(assert (=> bm!286157 m!4588765))

(assert (=> bm!286157 m!4589391))

(assert (=> b!4005706 d!1185185))

(declare-fun d!1185187 () Bool)

(assert (=> d!1185187 (= (get!14094 lt!1417068) (v!39593 lt!1417068))))

(assert (=> b!4005706 d!1185187))

(declare-fun d!1185189 () Bool)

(assert (=> d!1185189 (= (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))) (list!15932 (c!692546 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun bs!589057 () Bool)

(assert (= bs!589057 d!1185189))

(declare-fun m!4589401 () Bool)

(assert (=> bs!589057 m!4589401))

(assert (=> b!4005706 d!1185189))

(declare-fun d!1185191 () Bool)

(declare-fun lt!1417243 () BalanceConc!25648)

(assert (=> d!1185191 (= (list!15930 lt!1417243) (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068))))))

(assert (=> d!1185191 (= lt!1417243 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))) (value!214890 (_1!24153 (get!14094 lt!1417068)))))))

(assert (=> d!1185191 (= (charsOf!4632 (_1!24153 (get!14094 lt!1417068))) lt!1417243)))

(declare-fun b_lambda!116855 () Bool)

(assert (=> (not b_lambda!116855) (not d!1185191)))

(declare-fun t!332532 () Bool)

(declare-fun tb!240777 () Bool)

(assert (=> (and b!4005248 (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332532) tb!240777))

(declare-fun b!4006156 () Bool)

(declare-fun e!2484382 () Bool)

(declare-fun tp!1219164 () Bool)

(assert (=> b!4006156 (= e!2484382 (and (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))) (value!214890 (_1!24153 (get!14094 lt!1417068)))))) tp!1219164))))

(declare-fun result!291842 () Bool)

(assert (=> tb!240777 (= result!291842 (and (inv!57273 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))) (value!214890 (_1!24153 (get!14094 lt!1417068))))) e!2484382))))

(assert (= tb!240777 b!4006156))

(declare-fun m!4589403 () Bool)

(assert (=> b!4006156 m!4589403))

(declare-fun m!4589405 () Bool)

(assert (=> tb!240777 m!4589405))

(assert (=> d!1185191 t!332532))

(declare-fun b_and!307675 () Bool)

(assert (= b_and!307663 (and (=> t!332532 result!291842) b_and!307675)))

(declare-fun t!332534 () Bool)

(declare-fun tb!240779 () Bool)

(assert (=> (and b!4005244 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332534) tb!240779))

(declare-fun result!291844 () Bool)

(assert (= result!291844 result!291842))

(assert (=> d!1185191 t!332534))

(declare-fun b_and!307677 () Bool)

(assert (= b_and!307665 (and (=> t!332534 result!291844) b_and!307677)))

(declare-fun tb!240781 () Bool)

(declare-fun t!332536 () Bool)

(assert (=> (and b!4005785 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332536) tb!240781))

(declare-fun result!291846 () Bool)

(assert (= result!291846 result!291842))

(assert (=> d!1185191 t!332536))

(declare-fun b_and!307679 () Bool)

(assert (= b_and!307667 (and (=> t!332536 result!291846) b_and!307679)))

(declare-fun m!4589407 () Bool)

(assert (=> d!1185191 m!4589407))

(declare-fun m!4589409 () Bool)

(assert (=> d!1185191 m!4589409))

(assert (=> b!4005706 d!1185191))

(declare-fun b!4006158 () Bool)

(declare-fun res!1628008 () Bool)

(declare-fun e!2484384 () Bool)

(assert (=> b!4006158 (=> (not res!1628008) (not e!2484384))))

(assert (=> b!4006158 (= res!1628008 (= (head!8510 (tail!6242 lt!1416910)) (head!8510 (tail!6242 prefix!494))))))

(declare-fun b!4006160 () Bool)

(declare-fun e!2484385 () Bool)

(assert (=> b!4006160 (= e!2484385 (>= (size!32062 (tail!6242 prefix!494)) (size!32062 (tail!6242 lt!1416910))))))

(declare-fun b!4006159 () Bool)

(assert (=> b!4006159 (= e!2484384 (isPrefix!3903 (tail!6242 (tail!6242 lt!1416910)) (tail!6242 (tail!6242 prefix!494))))))

(declare-fun d!1185193 () Bool)

(assert (=> d!1185193 e!2484385))

(declare-fun res!1628011 () Bool)

(assert (=> d!1185193 (=> res!1628011 e!2484385)))

(declare-fun lt!1417244 () Bool)

(assert (=> d!1185193 (= res!1628011 (not lt!1417244))))

(declare-fun e!2484383 () Bool)

(assert (=> d!1185193 (= lt!1417244 e!2484383)))

(declare-fun res!1628009 () Bool)

(assert (=> d!1185193 (=> res!1628009 e!2484383)))

(assert (=> d!1185193 (= res!1628009 ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> d!1185193 (= (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 prefix!494)) lt!1417244)))

(declare-fun b!4006157 () Bool)

(assert (=> b!4006157 (= e!2484383 e!2484384)))

(declare-fun res!1628010 () Bool)

(assert (=> b!4006157 (=> (not res!1628010) (not e!2484384))))

(assert (=> b!4006157 (= res!1628010 (not ((_ is Nil!42882) (tail!6242 prefix!494))))))

(assert (= (and d!1185193 (not res!1628009)) b!4006157))

(assert (= (and b!4006157 res!1628010) b!4006158))

(assert (= (and b!4006158 res!1628008) b!4006159))

(assert (= (and d!1185193 (not res!1628011)) b!4006160))

(assert (=> b!4006158 m!4588389))

(assert (=> b!4006158 m!4589209))

(assert (=> b!4006158 m!4588723))

(declare-fun m!4589411 () Bool)

(assert (=> b!4006158 m!4589411))

(assert (=> b!4006160 m!4588723))

(assert (=> b!4006160 m!4589201))

(assert (=> b!4006160 m!4588389))

(assert (=> b!4006160 m!4589215))

(assert (=> b!4006159 m!4588389))

(assert (=> b!4006159 m!4589217))

(assert (=> b!4006159 m!4588723))

(assert (=> b!4006159 m!4589203))

(assert (=> b!4006159 m!4589217))

(assert (=> b!4006159 m!4589203))

(declare-fun m!4589413 () Bool)

(assert (=> b!4006159 m!4589413))

(assert (=> b!4005639 d!1185193))

(assert (=> b!4005639 d!1185117))

(assert (=> b!4005639 d!1185107))

(declare-fun d!1185195 () Bool)

(declare-fun lt!1417245 () Int)

(assert (=> d!1185195 (>= lt!1417245 0)))

(declare-fun e!2484386 () Int)

(assert (=> d!1185195 (= lt!1417245 e!2484386)))

(declare-fun c!692730 () Bool)

(assert (=> d!1185195 (= c!692730 ((_ is Nil!42882) (t!332477 prefix!494)))))

(assert (=> d!1185195 (= (size!32062 (t!332477 prefix!494)) lt!1417245)))

(declare-fun b!4006161 () Bool)

(assert (=> b!4006161 (= e!2484386 0)))

(declare-fun b!4006162 () Bool)

(assert (=> b!4006162 (= e!2484386 (+ 1 (size!32062 (t!332477 (t!332477 prefix!494)))))))

(assert (= (and d!1185195 c!692730) b!4006161))

(assert (= (and d!1185195 (not c!692730)) b!4006162))

(declare-fun m!4589415 () Bool)

(assert (=> b!4006162 m!4589415))

(assert (=> b!4005270 d!1185195))

(declare-fun d!1185197 () Bool)

(assert (=> d!1185197 (= lt!1416903 suffixResult!105)))

(assert (=> d!1185197 true))

(declare-fun _$63!1034 () Unit!61877)

(assert (=> d!1185197 (= (choose!24169 lt!1416910 lt!1416903 lt!1416910 suffixResult!105 lt!1416898) _$63!1034)))

(assert (=> d!1184789 d!1185197))

(assert (=> d!1184789 d!1184957))

(declare-fun d!1185199 () Bool)

(declare-fun lt!1417248 () Bool)

(declare-fun content!6501 (List!43008) (InoxSet Rule!13432))

(assert (=> d!1185199 (= lt!1417248 (select (content!6501 rules!2999) (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))

(declare-fun e!2484391 () Bool)

(assert (=> d!1185199 (= lt!1417248 e!2484391)))

(declare-fun res!1628016 () Bool)

(assert (=> d!1185199 (=> (not res!1628016) (not e!2484391))))

(assert (=> d!1185199 (= res!1628016 ((_ is Cons!42884) rules!2999))))

(assert (=> d!1185199 (= (contains!8524 rules!2999 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) lt!1417248)))

(declare-fun b!4006167 () Bool)

(declare-fun e!2484392 () Bool)

(assert (=> b!4006167 (= e!2484391 e!2484392)))

(declare-fun res!1628017 () Bool)

(assert (=> b!4006167 (=> res!1628017 e!2484392)))

(assert (=> b!4006167 (= res!1628017 (= (h!48304 rules!2999) (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))

(declare-fun b!4006168 () Bool)

(assert (=> b!4006168 (= e!2484392 (contains!8524 (t!332479 rules!2999) (rule!9852 (_1!24153 (get!14094 lt!1417068)))))))

(assert (= (and d!1185199 res!1628016) b!4006167))

(assert (= (and b!4006167 (not res!1628017)) b!4006168))

(declare-fun m!4589417 () Bool)

(assert (=> d!1185199 m!4589417))

(declare-fun m!4589419 () Bool)

(assert (=> d!1185199 m!4589419))

(declare-fun m!4589421 () Bool)

(assert (=> b!4006168 m!4589421))

(assert (=> b!4005713 d!1185199))

(assert (=> b!4005713 d!1185187))

(declare-fun d!1185201 () Bool)

(declare-fun lt!1417249 () Int)

(assert (=> d!1185201 (>= lt!1417249 0)))

(declare-fun e!2484393 () Int)

(assert (=> d!1185201 (= lt!1417249 e!2484393)))

(declare-fun c!692731 () Bool)

(assert (=> d!1185201 (= c!692731 ((_ is Nil!42882) lt!1416906))))

(assert (=> d!1185201 (= (size!32062 lt!1416906) lt!1417249)))

(declare-fun b!4006169 () Bool)

(assert (=> b!4006169 (= e!2484393 0)))

(declare-fun b!4006170 () Bool)

(assert (=> b!4006170 (= e!2484393 (+ 1 (size!32062 (t!332477 lt!1416906))))))

(assert (= (and d!1185201 c!692731) b!4006169))

(assert (= (and d!1185201 (not c!692731)) b!4006170))

(declare-fun m!4589423 () Bool)

(assert (=> b!4006170 m!4589423))

(assert (=> b!4005760 d!1185201))

(assert (=> b!4005760 d!1184779))

(assert (=> b!4005747 d!1184979))

(declare-fun d!1185203 () Bool)

(declare-fun c!692732 () Bool)

(assert (=> d!1185203 (= c!692732 ((_ is Nil!42882) lt!1417076))))

(declare-fun e!2484394 () (InoxSet C!23628))

(assert (=> d!1185203 (= (content!6500 lt!1417076) e!2484394)))

(declare-fun b!4006171 () Bool)

(assert (=> b!4006171 (= e!2484394 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006172 () Bool)

(assert (=> b!4006172 (= e!2484394 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417076) true) (content!6500 (t!332477 lt!1417076))))))

(assert (= (and d!1185203 c!692732) b!4006171))

(assert (= (and d!1185203 (not c!692732)) b!4006172))

(declare-fun m!4589425 () Bool)

(assert (=> b!4006172 m!4589425))

(declare-fun m!4589427 () Bool)

(assert (=> b!4006172 m!4589427))

(assert (=> d!1184929 d!1185203))

(declare-fun d!1185205 () Bool)

(declare-fun c!692733 () Bool)

(assert (=> d!1185205 (= c!692733 ((_ is Nil!42882) lt!1416894))))

(declare-fun e!2484395 () (InoxSet C!23628))

(assert (=> d!1185205 (= (content!6500 lt!1416894) e!2484395)))

(declare-fun b!4006173 () Bool)

(assert (=> b!4006173 (= e!2484395 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006174 () Bool)

(assert (=> b!4006174 (= e!2484395 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1416894) true) (content!6500 (t!332477 lt!1416894))))))

(assert (= (and d!1185205 c!692733) b!4006173))

(assert (= (and d!1185205 (not c!692733)) b!4006174))

(declare-fun m!4589429 () Bool)

(assert (=> b!4006174 m!4589429))

(declare-fun m!4589431 () Bool)

(assert (=> b!4006174 m!4589431))

(assert (=> d!1184929 d!1185205))

(assert (=> d!1184929 d!1185043))

(declare-fun d!1185207 () Bool)

(declare-fun e!2484396 () Bool)

(assert (=> d!1185207 e!2484396))

(declare-fun res!1628019 () Bool)

(assert (=> d!1185207 (=> (not res!1628019) (not e!2484396))))

(declare-fun lt!1417250 () List!43006)

(assert (=> d!1185207 (= res!1628019 (= (content!6500 lt!1417250) ((_ map or) (content!6500 lt!1416910) (content!6500 lt!1417045))))))

(declare-fun e!2484397 () List!43006)

(assert (=> d!1185207 (= lt!1417250 e!2484397)))

(declare-fun c!692734 () Bool)

(assert (=> d!1185207 (= c!692734 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185207 (= (++!11218 lt!1416910 lt!1417045) lt!1417250)))

(declare-fun b!4006175 () Bool)

(assert (=> b!4006175 (= e!2484397 lt!1417045)))

(declare-fun b!4006178 () Bool)

(assert (=> b!4006178 (= e!2484396 (or (not (= lt!1417045 Nil!42882)) (= lt!1417250 lt!1416910)))))

(declare-fun b!4006177 () Bool)

(declare-fun res!1628018 () Bool)

(assert (=> b!4006177 (=> (not res!1628018) (not e!2484396))))

(assert (=> b!4006177 (= res!1628018 (= (size!32062 lt!1417250) (+ (size!32062 lt!1416910) (size!32062 lt!1417045))))))

(declare-fun b!4006176 () Bool)

(assert (=> b!4006176 (= e!2484397 (Cons!42882 (h!48302 lt!1416910) (++!11218 (t!332477 lt!1416910) lt!1417045)))))

(assert (= (and d!1185207 c!692734) b!4006175))

(assert (= (and d!1185207 (not c!692734)) b!4006176))

(assert (= (and d!1185207 res!1628019) b!4006177))

(assert (= (and b!4006177 res!1628018) b!4006178))

(declare-fun m!4589433 () Bool)

(assert (=> d!1185207 m!4589433))

(assert (=> d!1185207 m!4588701))

(declare-fun m!4589435 () Bool)

(assert (=> d!1185207 m!4589435))

(declare-fun m!4589437 () Bool)

(assert (=> b!4006177 m!4589437))

(assert (=> b!4006177 m!4588245))

(declare-fun m!4589439 () Bool)

(assert (=> b!4006177 m!4589439))

(declare-fun m!4589441 () Bool)

(assert (=> b!4006176 m!4589441))

(assert (=> d!1184905 d!1185207))

(assert (=> d!1184905 d!1184781))

(assert (=> d!1184905 d!1184779))

(assert (=> b!4005684 d!1185035))

(declare-fun d!1185209 () Bool)

(assert (=> d!1185209 (= (head!8510 lt!1416899) (h!48302 lt!1416899))))

(assert (=> b!4005684 d!1185209))

(assert (=> b!4005710 d!1185189))

(assert (=> b!4005710 d!1185191))

(assert (=> b!4005710 d!1185187))

(declare-fun d!1185211 () Bool)

(declare-fun lt!1417251 () Int)

(assert (=> d!1185211 (>= lt!1417251 0)))

(declare-fun e!2484398 () Int)

(assert (=> d!1185211 (= lt!1417251 e!2484398)))

(declare-fun c!692735 () Bool)

(assert (=> d!1185211 (= c!692735 ((_ is Nil!42882) lt!1417083))))

(assert (=> d!1185211 (= (size!32062 lt!1417083) lt!1417251)))

(declare-fun b!4006179 () Bool)

(assert (=> b!4006179 (= e!2484398 0)))

(declare-fun b!4006180 () Bool)

(assert (=> b!4006180 (= e!2484398 (+ 1 (size!32062 (t!332477 lt!1417083))))))

(assert (= (and d!1185211 c!692735) b!4006179))

(assert (= (and d!1185211 (not c!692735)) b!4006180))

(declare-fun m!4589443 () Bool)

(assert (=> b!4006180 m!4589443))

(assert (=> b!4005743 d!1185211))

(assert (=> b!4005743 d!1184779))

(declare-fun d!1185213 () Bool)

(declare-fun lt!1417252 () Int)

(assert (=> d!1185213 (>= lt!1417252 0)))

(declare-fun e!2484399 () Int)

(assert (=> d!1185213 (= lt!1417252 e!2484399)))

(declare-fun c!692736 () Bool)

(assert (=> d!1185213 (= c!692736 ((_ is Nil!42882) suffixResult!105))))

(assert (=> d!1185213 (= (size!32062 suffixResult!105) lt!1417252)))

(declare-fun b!4006181 () Bool)

(assert (=> b!4006181 (= e!2484399 0)))

(declare-fun b!4006182 () Bool)

(assert (=> b!4006182 (= e!2484399 (+ 1 (size!32062 (t!332477 suffixResult!105))))))

(assert (= (and d!1185213 c!692736) b!4006181))

(assert (= (and d!1185213 (not c!692736)) b!4006182))

(declare-fun m!4589445 () Bool)

(assert (=> b!4006182 m!4589445))

(assert (=> b!4005743 d!1185213))

(declare-fun d!1185215 () Bool)

(declare-fun lt!1417253 () Int)

(assert (=> d!1185215 (>= lt!1417253 0)))

(declare-fun e!2484400 () Int)

(assert (=> d!1185215 (= lt!1417253 e!2484400)))

(declare-fun c!692737 () Bool)

(assert (=> d!1185215 (= c!692737 ((_ is Nil!42882) (t!332477 newSuffix!27)))))

(assert (=> d!1185215 (= (size!32062 (t!332477 newSuffix!27)) lt!1417253)))

(declare-fun b!4006183 () Bool)

(assert (=> b!4006183 (= e!2484400 0)))

(declare-fun b!4006184 () Bool)

(assert (=> b!4006184 (= e!2484400 (+ 1 (size!32062 (t!332477 (t!332477 newSuffix!27)))))))

(assert (= (and d!1185215 c!692737) b!4006183))

(assert (= (and d!1185215 (not c!692737)) b!4006184))

(declare-fun m!4589447 () Bool)

(assert (=> b!4006184 m!4589447))

(assert (=> b!4005740 d!1185215))

(declare-fun d!1185217 () Bool)

(declare-fun lt!1417254 () Int)

(assert (=> d!1185217 (>= lt!1417254 0)))

(declare-fun e!2484401 () Int)

(assert (=> d!1185217 (= lt!1417254 e!2484401)))

(declare-fun c!692738 () Bool)

(assert (=> d!1185217 (= c!692738 ((_ is Nil!42882) lt!1417042))))

(assert (=> d!1185217 (= (size!32062 lt!1417042) lt!1417254)))

(declare-fun b!4006185 () Bool)

(assert (=> b!4006185 (= e!2484401 0)))

(declare-fun b!4006186 () Bool)

(assert (=> b!4006186 (= e!2484401 (+ 1 (size!32062 (t!332477 lt!1417042))))))

(assert (= (and d!1185217 c!692738) b!4006185))

(assert (= (and d!1185217 (not c!692738)) b!4006186))

(declare-fun m!4589449 () Bool)

(assert (=> b!4006186 m!4589449))

(assert (=> b!4005629 d!1185217))

(assert (=> b!4005629 d!1184779))

(assert (=> b!4005629 d!1185167))

(declare-fun d!1185219 () Bool)

(assert (=> d!1185219 (= (isEmpty!25619 lt!1416910) ((_ is Nil!42882) lt!1416910))))

(assert (=> bm!286104 d!1185219))

(declare-fun d!1185221 () Bool)

(assert (=> d!1185221 (= (list!15930 lt!1416922) (list!15932 (c!692546 lt!1416922)))))

(declare-fun bs!589058 () Bool)

(assert (= bs!589058 d!1185221))

(declare-fun m!4589451 () Bool)

(assert (=> bs!589058 m!4589451))

(assert (=> d!1184785 d!1185221))

(declare-fun d!1185223 () Bool)

(declare-fun lt!1417255 () Int)

(assert (=> d!1185223 (>= lt!1417255 0)))

(declare-fun e!2484402 () Int)

(assert (=> d!1185223 (= lt!1417255 e!2484402)))

(declare-fun c!692739 () Bool)

(assert (=> d!1185223 (= c!692739 ((_ is Nil!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185223 (= (size!32062 (t!332477 lt!1416910)) lt!1417255)))

(declare-fun b!4006187 () Bool)

(assert (=> b!4006187 (= e!2484402 0)))

(declare-fun b!4006188 () Bool)

(assert (=> b!4006188 (= e!2484402 (+ 1 (size!32062 (t!332477 (t!332477 lt!1416910)))))))

(assert (= (and d!1185223 c!692739) b!4006187))

(assert (= (and d!1185223 (not c!692739)) b!4006188))

(declare-fun m!4589453 () Bool)

(assert (=> b!4006188 m!4589453))

(assert (=> b!4005268 d!1185223))

(declare-fun d!1185225 () Bool)

(declare-fun e!2484403 () Bool)

(assert (=> d!1185225 e!2484403))

(declare-fun res!1628021 () Bool)

(assert (=> d!1185225 (=> (not res!1628021) (not e!2484403))))

(declare-fun lt!1417256 () List!43006)

(assert (=> d!1185225 (= res!1628021 (= (content!6500 lt!1417256) ((_ map or) (content!6500 (t!332477 lt!1416910)) (content!6500 newSuffixResult!27))))))

(declare-fun e!2484404 () List!43006)

(assert (=> d!1185225 (= lt!1417256 e!2484404)))

(declare-fun c!692740 () Bool)

(assert (=> d!1185225 (= c!692740 ((_ is Nil!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185225 (= (++!11218 (t!332477 lt!1416910) newSuffixResult!27) lt!1417256)))

(declare-fun b!4006189 () Bool)

(assert (=> b!4006189 (= e!2484404 newSuffixResult!27)))

(declare-fun b!4006192 () Bool)

(assert (=> b!4006192 (= e!2484403 (or (not (= newSuffixResult!27 Nil!42882)) (= lt!1417256 (t!332477 lt!1416910))))))

(declare-fun b!4006191 () Bool)

(declare-fun res!1628020 () Bool)

(assert (=> b!4006191 (=> (not res!1628020) (not e!2484403))))

(assert (=> b!4006191 (= res!1628020 (= (size!32062 lt!1417256) (+ (size!32062 (t!332477 lt!1416910)) (size!32062 newSuffixResult!27))))))

(declare-fun b!4006190 () Bool)

(assert (=> b!4006190 (= e!2484404 (Cons!42882 (h!48302 (t!332477 lt!1416910)) (++!11218 (t!332477 (t!332477 lt!1416910)) newSuffixResult!27)))))

(assert (= (and d!1185225 c!692740) b!4006189))

(assert (= (and d!1185225 (not c!692740)) b!4006190))

(assert (= (and d!1185225 res!1628021) b!4006191))

(assert (= (and b!4006191 res!1628020) b!4006192))

(declare-fun m!4589455 () Bool)

(assert (=> d!1185225 m!4589455))

(assert (=> d!1185225 m!4589109))

(assert (=> d!1185225 m!4588703))

(declare-fun m!4589457 () Bool)

(assert (=> b!4006191 m!4589457))

(assert (=> b!4006191 m!4588285))

(assert (=> b!4006191 m!4588707))

(declare-fun m!4589459 () Bool)

(assert (=> b!4006190 m!4589459))

(assert (=> b!4005624 d!1185225))

(declare-fun d!1185227 () Bool)

(declare-fun lt!1417257 () Int)

(assert (=> d!1185227 (>= lt!1417257 0)))

(declare-fun e!2484405 () Int)

(assert (=> d!1185227 (= lt!1417257 e!2484405)))

(declare-fun c!692741 () Bool)

(assert (=> d!1185227 (= c!692741 ((_ is Nil!42882) lt!1417040))))

(assert (=> d!1185227 (= (size!32062 lt!1417040) lt!1417257)))

(declare-fun b!4006193 () Bool)

(assert (=> b!4006193 (= e!2484405 0)))

(declare-fun b!4006194 () Bool)

(assert (=> b!4006194 (= e!2484405 (+ 1 (size!32062 (t!332477 lt!1417040))))))

(assert (= (and d!1185227 c!692741) b!4006193))

(assert (= (and d!1185227 (not c!692741)) b!4006194))

(declare-fun m!4589461 () Bool)

(assert (=> b!4006194 m!4589461))

(assert (=> b!4005621 d!1185227))

(assert (=> b!4005621 d!1184781))

(assert (=> b!4005621 d!1184939))

(declare-fun bm!286187 () Bool)

(declare-fun call!286193 () C!23628)

(assert (=> bm!286187 (= call!286193 (head!8510 lt!1416898))))

(declare-fun b!4006319 () Bool)

(declare-fun e!2484481 () tuple2!42042)

(declare-fun call!286196 () tuple2!42042)

(assert (=> b!4006319 (= e!2484481 call!286196)))

(declare-fun b!4006320 () Bool)

(declare-fun e!2484475 () tuple2!42042)

(declare-fun lt!1417354 () tuple2!42042)

(assert (=> b!4006320 (= e!2484475 lt!1417354)))

(declare-fun b!4006321 () Bool)

(declare-fun e!2484477 () tuple2!42042)

(assert (=> b!4006321 (= e!2484477 (tuple2!42043 Nil!42882 lt!1416898))))

(declare-fun b!4006322 () Bool)

(assert (=> b!4006322 (= e!2484475 (tuple2!42043 Nil!42882 lt!1416898))))

(declare-fun b!4006323 () Bool)

(declare-fun e!2484480 () tuple2!42042)

(assert (=> b!4006323 (= e!2484480 (tuple2!42043 Nil!42882 lt!1416898))))

(declare-fun b!4006324 () Bool)

(declare-fun c!692789 () Bool)

(declare-fun call!286198 () Bool)

(assert (=> b!4006324 (= c!692789 call!286198)))

(declare-fun lt!1417364 () Unit!61877)

(declare-fun lt!1417342 () Unit!61877)

(assert (=> b!4006324 (= lt!1417364 lt!1417342)))

(declare-fun lt!1417355 () C!23628)

(declare-fun lt!1417339 () List!43006)

(assert (=> b!4006324 (= (++!11218 (++!11218 Nil!42882 (Cons!42882 lt!1417355 Nil!42882)) lt!1417339) lt!1416898)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1239 (List!43006 C!23628 List!43006 List!43006) Unit!61877)

(assert (=> b!4006324 (= lt!1417342 (lemmaMoveElementToOtherListKeepsConcatEq!1239 Nil!42882 lt!1417355 lt!1417339 lt!1416898))))

(assert (=> b!4006324 (= lt!1417339 (tail!6242 lt!1416898))))

(assert (=> b!4006324 (= lt!1417355 (head!8510 lt!1416898))))

(declare-fun lt!1417356 () Unit!61877)

(declare-fun lt!1417361 () Unit!61877)

(assert (=> b!4006324 (= lt!1417356 lt!1417361)))

(assert (=> b!4006324 (isPrefix!3903 (++!11218 Nil!42882 (Cons!42882 (head!8510 (getSuffix!2328 lt!1416898 Nil!42882)) Nil!42882)) lt!1416898)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!621 (List!43006 List!43006) Unit!61877)

(assert (=> b!4006324 (= lt!1417361 (lemmaAddHeadSuffixToPrefixStillPrefix!621 Nil!42882 lt!1416898))))

(declare-fun lt!1417353 () Unit!61877)

(declare-fun lt!1417359 () Unit!61877)

(assert (=> b!4006324 (= lt!1417353 lt!1417359)))

(assert (=> b!4006324 (= lt!1417359 (lemmaAddHeadSuffixToPrefixStillPrefix!621 Nil!42882 lt!1416898))))

(declare-fun lt!1417347 () List!43006)

(assert (=> b!4006324 (= lt!1417347 (++!11218 Nil!42882 (Cons!42882 (head!8510 lt!1416898) Nil!42882)))))

(declare-fun lt!1417345 () Unit!61877)

(declare-fun e!2484476 () Unit!61877)

(assert (=> b!4006324 (= lt!1417345 e!2484476)))

(declare-fun c!692790 () Bool)

(assert (=> b!4006324 (= c!692790 (= (size!32062 Nil!42882) (size!32062 lt!1416898)))))

(declare-fun lt!1417337 () Unit!61877)

(declare-fun lt!1417343 () Unit!61877)

(assert (=> b!4006324 (= lt!1417337 lt!1417343)))

(assert (=> b!4006324 (<= (size!32062 Nil!42882) (size!32062 lt!1416898))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!429 (List!43006 List!43006) Unit!61877)

(assert (=> b!4006324 (= lt!1417343 (lemmaIsPrefixThenSmallerEqSize!429 Nil!42882 lt!1416898))))

(declare-fun e!2484479 () tuple2!42042)

(assert (=> b!4006324 (= e!2484479 e!2484481)))

(declare-fun b!4006325 () Bool)

(assert (=> b!4006325 (= e!2484480 (tuple2!42043 Nil!42882 Nil!42882))))

(declare-fun b!4006326 () Bool)

(assert (=> b!4006326 (= e!2484481 e!2484475)))

(assert (=> b!4006326 (= lt!1417354 call!286196)))

(declare-fun c!692788 () Bool)

(assert (=> b!4006326 (= c!692788 (isEmpty!25619 (_1!24155 lt!1417354)))))

(declare-fun bm!286188 () Bool)

(assert (=> bm!286188 (= call!286198 (nullable!4110 (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006327 () Bool)

(declare-fun e!2484478 () Bool)

(declare-fun lt!1417341 () tuple2!42042)

(assert (=> b!4006327 (= e!2484478 (>= (size!32062 (_1!24155 lt!1417341)) (size!32062 Nil!42882)))))

(declare-fun b!4006328 () Bool)

(declare-fun Unit!61885 () Unit!61877)

(assert (=> b!4006328 (= e!2484476 Unit!61885)))

(declare-fun call!286197 () List!43006)

(declare-fun call!286195 () Regex!11721)

(declare-fun bm!286189 () Bool)

(assert (=> bm!286189 (= call!286196 (findLongestMatchInner!1351 call!286195 lt!1417347 (+ (size!32062 Nil!42882) 1) call!286197 lt!1416898 (size!32062 lt!1416898)))))

(declare-fun bm!286190 () Bool)

(declare-fun call!286194 () Unit!61877)

(declare-fun lemmaIsPrefixSameLengthThenSameList!897 (List!43006 List!43006 List!43006) Unit!61877)

(assert (=> bm!286190 (= call!286194 (lemmaIsPrefixSameLengthThenSameList!897 lt!1416898 Nil!42882 lt!1416898))))

(declare-fun b!4006329 () Bool)

(declare-fun e!2484474 () Bool)

(assert (=> b!4006329 (= e!2484474 e!2484478)))

(declare-fun res!1628045 () Bool)

(assert (=> b!4006329 (=> res!1628045 e!2484478)))

(assert (=> b!4006329 (= res!1628045 (isEmpty!25619 (_1!24155 lt!1417341)))))

(declare-fun bm!286191 () Bool)

(assert (=> bm!286191 (= call!286195 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) call!286193))))

(declare-fun bm!286192 () Bool)

(declare-fun call!286199 () Bool)

(assert (=> bm!286192 (= call!286199 (isPrefix!3903 lt!1416898 lt!1416898))))

(declare-fun b!4006330 () Bool)

(declare-fun c!692791 () Bool)

(assert (=> b!4006330 (= c!692791 call!286198)))

(declare-fun lt!1417351 () Unit!61877)

(declare-fun lt!1417340 () Unit!61877)

(assert (=> b!4006330 (= lt!1417351 lt!1417340)))

(assert (=> b!4006330 (= lt!1416898 Nil!42882)))

(assert (=> b!4006330 (= lt!1417340 call!286194)))

(declare-fun lt!1417363 () Unit!61877)

(declare-fun lt!1417349 () Unit!61877)

(assert (=> b!4006330 (= lt!1417363 lt!1417349)))

(assert (=> b!4006330 call!286199))

(declare-fun call!286192 () Unit!61877)

(assert (=> b!4006330 (= lt!1417349 call!286192)))

(assert (=> b!4006330 (= e!2484479 e!2484480)))

(declare-fun d!1185229 () Bool)

(assert (=> d!1185229 e!2484474))

(declare-fun res!1628044 () Bool)

(assert (=> d!1185229 (=> (not res!1628044) (not e!2484474))))

(assert (=> d!1185229 (= res!1628044 (= (++!11218 (_1!24155 lt!1417341) (_2!24155 lt!1417341)) lt!1416898))))

(assert (=> d!1185229 (= lt!1417341 e!2484477)))

(declare-fun c!692792 () Bool)

(declare-fun lostCause!995 (Regex!11721) Bool)

(assert (=> d!1185229 (= c!692792 (lostCause!995 (regex!6816 (rule!9852 token!484))))))

(declare-fun lt!1417338 () Unit!61877)

(declare-fun Unit!61886 () Unit!61877)

(assert (=> d!1185229 (= lt!1417338 Unit!61886)))

(assert (=> d!1185229 (= (getSuffix!2328 lt!1416898 Nil!42882) lt!1416898)))

(declare-fun lt!1417360 () Unit!61877)

(declare-fun lt!1417346 () Unit!61877)

(assert (=> d!1185229 (= lt!1417360 lt!1417346)))

(declare-fun lt!1417344 () List!43006)

(assert (=> d!1185229 (= lt!1416898 lt!1417344)))

(assert (=> d!1185229 (= lt!1417346 (lemmaSamePrefixThenSameSuffix!2074 Nil!42882 lt!1416898 Nil!42882 lt!1417344 lt!1416898))))

(assert (=> d!1185229 (= lt!1417344 (getSuffix!2328 lt!1416898 Nil!42882))))

(declare-fun lt!1417348 () Unit!61877)

(declare-fun lt!1417358 () Unit!61877)

(assert (=> d!1185229 (= lt!1417348 lt!1417358)))

(assert (=> d!1185229 (isPrefix!3903 Nil!42882 (++!11218 Nil!42882 lt!1416898))))

(assert (=> d!1185229 (= lt!1417358 (lemmaConcatTwoListThenFirstIsPrefix!2744 Nil!42882 lt!1416898))))

(assert (=> d!1185229 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185229 (= (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)) lt!1417341)))

(declare-fun bm!286193 () Bool)

(assert (=> bm!286193 (= call!286192 (lemmaIsPrefixRefl!2479 lt!1416898 lt!1416898))))

(declare-fun b!4006331 () Bool)

(assert (=> b!4006331 (= e!2484477 e!2484479)))

(declare-fun c!692793 () Bool)

(assert (=> b!4006331 (= c!692793 (= (size!32062 Nil!42882) (size!32062 lt!1416898)))))

(declare-fun b!4006332 () Bool)

(declare-fun Unit!61887 () Unit!61877)

(assert (=> b!4006332 (= e!2484476 Unit!61887)))

(declare-fun lt!1417362 () Unit!61877)

(assert (=> b!4006332 (= lt!1417362 call!286192)))

(assert (=> b!4006332 call!286199))

(declare-fun lt!1417357 () Unit!61877)

(assert (=> b!4006332 (= lt!1417357 lt!1417362)))

(declare-fun lt!1417352 () Unit!61877)

(assert (=> b!4006332 (= lt!1417352 call!286194)))

(assert (=> b!4006332 (= lt!1416898 Nil!42882)))

(declare-fun lt!1417350 () Unit!61877)

(assert (=> b!4006332 (= lt!1417350 lt!1417352)))

(assert (=> b!4006332 false))

(declare-fun bm!286194 () Bool)

(assert (=> bm!286194 (= call!286197 (tail!6242 lt!1416898))))

(assert (= (and d!1185229 c!692792) b!4006321))

(assert (= (and d!1185229 (not c!692792)) b!4006331))

(assert (= (and b!4006331 c!692793) b!4006330))

(assert (= (and b!4006331 (not c!692793)) b!4006324))

(assert (= (and b!4006330 c!692791) b!4006325))

(assert (= (and b!4006330 (not c!692791)) b!4006323))

(assert (= (and b!4006324 c!692790) b!4006332))

(assert (= (and b!4006324 (not c!692790)) b!4006328))

(assert (= (and b!4006324 c!692789) b!4006326))

(assert (= (and b!4006324 (not c!692789)) b!4006319))

(assert (= (and b!4006326 c!692788) b!4006322))

(assert (= (and b!4006326 (not c!692788)) b!4006320))

(assert (= (or b!4006326 b!4006319) bm!286187))

(assert (= (or b!4006326 b!4006319) bm!286194))

(assert (= (or b!4006326 b!4006319) bm!286191))

(assert (= (or b!4006326 b!4006319) bm!286189))

(assert (= (or b!4006330 b!4006332) bm!286192))

(assert (= (or b!4006330 b!4006324) bm!286188))

(assert (= (or b!4006330 b!4006332) bm!286190))

(assert (= (or b!4006330 b!4006332) bm!286193))

(assert (= (and d!1185229 res!1628044) b!4006329))

(assert (= (and b!4006329 (not res!1628045)) b!4006327))

(declare-fun m!4589577 () Bool)

(assert (=> b!4006326 m!4589577))

(assert (=> bm!286194 m!4588883))

(assert (=> bm!286188 m!4588743))

(assert (=> bm!286193 m!4588777))

(assert (=> bm!286192 m!4588775))

(declare-fun m!4589579 () Bool)

(assert (=> b!4006327 m!4589579))

(assert (=> b!4006327 m!4588589))

(assert (=> bm!286187 m!4588881))

(declare-fun m!4589581 () Bool)

(assert (=> bm!286190 m!4589581))

(declare-fun m!4589583 () Bool)

(assert (=> b!4006324 m!4589583))

(declare-fun m!4589585 () Bool)

(assert (=> b!4006324 m!4589585))

(declare-fun m!4589587 () Bool)

(assert (=> b!4006324 m!4589587))

(assert (=> b!4006324 m!4589583))

(declare-fun m!4589589 () Bool)

(assert (=> b!4006324 m!4589589))

(declare-fun m!4589591 () Bool)

(assert (=> b!4006324 m!4589591))

(declare-fun m!4589593 () Bool)

(assert (=> b!4006324 m!4589593))

(assert (=> b!4006324 m!4588883))

(declare-fun m!4589595 () Bool)

(assert (=> b!4006324 m!4589595))

(assert (=> b!4006324 m!4588591))

(assert (=> b!4006324 m!4588881))

(assert (=> b!4006324 m!4589585))

(declare-fun m!4589597 () Bool)

(assert (=> b!4006324 m!4589597))

(assert (=> b!4006324 m!4588589))

(declare-fun m!4589599 () Bool)

(assert (=> b!4006324 m!4589599))

(assert (=> b!4006324 m!4589591))

(declare-fun m!4589601 () Bool)

(assert (=> b!4006324 m!4589601))

(declare-fun m!4589603 () Bool)

(assert (=> bm!286191 m!4589603))

(assert (=> bm!286189 m!4588591))

(declare-fun m!4589605 () Bool)

(assert (=> bm!286189 m!4589605))

(declare-fun m!4589607 () Bool)

(assert (=> d!1185229 m!4589607))

(declare-fun m!4589609 () Bool)

(assert (=> d!1185229 m!4589609))

(declare-fun m!4589611 () Bool)

(assert (=> d!1185229 m!4589611))

(assert (=> d!1185229 m!4589607))

(assert (=> d!1185229 m!4588737))

(assert (=> d!1185229 m!4589585))

(declare-fun m!4589613 () Bool)

(assert (=> d!1185229 m!4589613))

(declare-fun m!4589615 () Bool)

(assert (=> d!1185229 m!4589615))

(declare-fun m!4589617 () Bool)

(assert (=> d!1185229 m!4589617))

(declare-fun m!4589619 () Bool)

(assert (=> b!4006329 m!4589619))

(assert (=> b!4005503 d!1185229))

(declare-fun bs!589071 () Bool)

(declare-fun d!1185307 () Bool)

(assert (= bs!589071 (and d!1185307 d!1185057)))

(declare-fun lambda!126994 () Int)

(assert (=> bs!589071 (= (and (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (h!48304 rules!2999)))) (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (h!48304 rules!2999))))) (= lambda!126994 lambda!126976))))

(declare-fun bs!589072 () Bool)

(assert (= bs!589072 (and d!1185307 d!1185157)))

(assert (=> bs!589072 (= lambda!126994 lambda!126981)))

(declare-fun b!4006341 () Bool)

(declare-fun e!2484486 () Bool)

(assert (=> b!4006341 (= e!2484486 true)))

(assert (=> d!1185307 e!2484486))

(assert (= d!1185307 b!4006341))

(assert (=> b!4006341 (< (dynLambda!18185 order!22463 (toValue!9312 (transformation!6816 (rule!9852 token!484)))) (dynLambda!18188 order!22469 lambda!126994))))

(assert (=> b!4006341 (< (dynLambda!18187 order!22467 (toChars!9171 (transformation!6816 (rule!9852 token!484)))) (dynLambda!18188 order!22469 lambda!126994))))

(assert (=> d!1185307 (= (list!15930 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 (_1!24155 lt!1417025))))) (list!15930 (seqFromList!5041 (_1!24155 lt!1417025))))))

(declare-fun lt!1417391 () Unit!61877)

(declare-fun ForallOf!805 (Int BalanceConc!25648) Unit!61877)

(assert (=> d!1185307 (= lt!1417391 (ForallOf!805 lambda!126994 (seqFromList!5041 (_1!24155 lt!1417025))))))

(assert (=> d!1185307 (= (lemmaSemiInverse!1871 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 (_1!24155 lt!1417025))) lt!1417391)))

(declare-fun b_lambda!116863 () Bool)

(assert (=> (not b_lambda!116863) (not d!1185307)))

(declare-fun t!332550 () Bool)

(declare-fun tb!240795 () Bool)

(assert (=> (and b!4005248 (= (toChars!9171 (transformation!6816 (rule!9852 token!484))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332550) tb!240795))

(declare-fun tp!1219166 () Bool)

(declare-fun b!4006342 () Bool)

(declare-fun e!2484487 () Bool)

(assert (=> b!4006342 (= e!2484487 (and (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 (_1!24155 lt!1417025)))))) tp!1219166))))

(declare-fun result!291860 () Bool)

(assert (=> tb!240795 (= result!291860 (and (inv!57273 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 (_1!24155 lt!1417025))))) e!2484487))))

(assert (= tb!240795 b!4006342))

(declare-fun m!4589643 () Bool)

(assert (=> b!4006342 m!4589643))

(declare-fun m!4589645 () Bool)

(assert (=> tb!240795 m!4589645))

(assert (=> d!1185307 t!332550))

(declare-fun b_and!307699 () Bool)

(assert (= b_and!307675 (and (=> t!332550 result!291860) b_and!307699)))

(declare-fun t!332552 () Bool)

(declare-fun tb!240797 () Bool)

(assert (=> (and b!4005244 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332552) tb!240797))

(declare-fun result!291862 () Bool)

(assert (= result!291862 result!291860))

(assert (=> d!1185307 t!332552))

(declare-fun b_and!307701 () Bool)

(assert (= b_and!307677 (and (=> t!332552 result!291862) b_and!307701)))

(declare-fun t!332554 () Bool)

(declare-fun tb!240799 () Bool)

(assert (=> (and b!4005785 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332554) tb!240799))

(declare-fun result!291864 () Bool)

(assert (= result!291864 result!291860))

(assert (=> d!1185307 t!332554))

(declare-fun b_and!307703 () Bool)

(assert (= b_and!307679 (and (=> t!332554 result!291864) b_and!307703)))

(declare-fun b_lambda!116865 () Bool)

(assert (=> (not b_lambda!116865) (not d!1185307)))

(declare-fun t!332556 () Bool)

(declare-fun tb!240801 () Bool)

(assert (=> (and b!4005248 (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332556) tb!240801))

(declare-fun result!291866 () Bool)

(assert (=> tb!240801 (= result!291866 (inv!21 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 (_1!24155 lt!1417025)))))))

(declare-fun m!4589647 () Bool)

(assert (=> tb!240801 m!4589647))

(assert (=> d!1185307 t!332556))

(declare-fun b_and!307705 () Bool)

(assert (= b_and!307669 (and (=> t!332556 result!291866) b_and!307705)))

(declare-fun t!332558 () Bool)

(declare-fun tb!240803 () Bool)

(assert (=> (and b!4005244 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332558) tb!240803))

(declare-fun result!291868 () Bool)

(assert (= result!291868 result!291866))

(assert (=> d!1185307 t!332558))

(declare-fun b_and!307707 () Bool)

(assert (= b_and!307671 (and (=> t!332558 result!291868) b_and!307707)))

(declare-fun tb!240805 () Bool)

(declare-fun t!332560 () Bool)

(assert (=> (and b!4005785 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332560) tb!240805))

(declare-fun result!291870 () Bool)

(assert (= result!291870 result!291866))

(assert (=> d!1185307 t!332560))

(declare-fun b_and!307709 () Bool)

(assert (= b_and!307673 (and (=> t!332560 result!291870) b_and!307709)))

(assert (=> d!1185307 m!4588597))

(declare-fun m!4589649 () Bool)

(assert (=> d!1185307 m!4589649))

(assert (=> d!1185307 m!4588597))

(declare-fun m!4589651 () Bool)

(assert (=> d!1185307 m!4589651))

(assert (=> d!1185307 m!4588597))

(declare-fun m!4589653 () Bool)

(assert (=> d!1185307 m!4589653))

(declare-fun m!4589655 () Bool)

(assert (=> d!1185307 m!4589655))

(declare-fun m!4589657 () Bool)

(assert (=> d!1185307 m!4589657))

(assert (=> d!1185307 m!4589651))

(assert (=> d!1185307 m!4589655))

(assert (=> b!4005503 d!1185307))

(assert (=> b!4005503 d!1185093))

(declare-fun d!1185317 () Bool)

(assert (=> d!1185317 (= (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 (_1!24155 lt!1417025))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 (_1!24155 lt!1417025))))))

(declare-fun b_lambda!116867 () Bool)

(assert (=> (not b_lambda!116867) (not d!1185317)))

(assert (=> d!1185317 t!332556))

(declare-fun b_and!307711 () Bool)

(assert (= b_and!307705 (and (=> t!332556 result!291866) b_and!307711)))

(assert (=> d!1185317 t!332558))

(declare-fun b_and!307713 () Bool)

(assert (= b_and!307707 (and (=> t!332558 result!291868) b_and!307713)))

(assert (=> d!1185317 t!332560))

(declare-fun b_and!307715 () Bool)

(assert (= b_and!307709 (and (=> t!332560 result!291870) b_and!307715)))

(assert (=> d!1185317 m!4588597))

(assert (=> d!1185317 m!4589651))

(assert (=> b!4005503 d!1185317))

(declare-fun d!1185319 () Bool)

(assert (=> d!1185319 (= (seqFromList!5041 (_1!24155 lt!1417025)) (fromListB!2308 (_1!24155 lt!1417025)))))

(declare-fun bs!589074 () Bool)

(assert (= bs!589074 d!1185319))

(declare-fun m!4589659 () Bool)

(assert (=> bs!589074 m!4589659))

(assert (=> b!4005503 d!1185319))

(declare-fun d!1185321 () Bool)

(declare-fun lt!1417395 () Int)

(assert (=> d!1185321 (>= lt!1417395 0)))

(declare-fun e!2484493 () Int)

(assert (=> d!1185321 (= lt!1417395 e!2484493)))

(declare-fun c!692796 () Bool)

(assert (=> d!1185321 (= c!692796 ((_ is Nil!42882) Nil!42882))))

(assert (=> d!1185321 (= (size!32062 Nil!42882) lt!1417395)))

(declare-fun b!4006347 () Bool)

(assert (=> b!4006347 (= e!2484493 0)))

(declare-fun b!4006348 () Bool)

(assert (=> b!4006348 (= e!2484493 (+ 1 (size!32062 (t!332477 Nil!42882))))))

(assert (= (and d!1185321 c!692796) b!4006347))

(assert (= (and d!1185321 (not c!692796)) b!4006348))

(declare-fun m!4589661 () Bool)

(assert (=> b!4006348 m!4589661))

(assert (=> b!4005503 d!1185321))

(declare-fun d!1185323 () Bool)

(assert (=> d!1185323 (= (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))) ((_ is Nil!42882) (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(assert (=> b!4005503 d!1185323))

(declare-fun d!1185325 () Bool)

(declare-fun e!2484518 () Bool)

(assert (=> d!1185325 e!2484518))

(declare-fun res!1628074 () Bool)

(assert (=> d!1185325 (=> res!1628074 e!2484518)))

(assert (=> d!1185325 (= res!1628074 (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(declare-fun lt!1417409 () Unit!61877)

(declare-fun choose!24183 (Regex!11721 List!43006) Unit!61877)

(assert (=> d!1185325 (= lt!1417409 (choose!24183 (regex!6816 (rule!9852 token!484)) lt!1416898))))

(assert (=> d!1185325 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185325 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1324 (regex!6816 (rule!9852 token!484)) lt!1416898) lt!1417409)))

(declare-fun b!4006385 () Bool)

(assert (=> b!4006385 (= e!2484518 (matchR!5682 (regex!6816 (rule!9852 token!484)) (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(assert (= (and d!1185325 (not res!1628074)) b!4006385))

(assert (=> d!1185325 m!4588591))

(declare-fun m!4589735 () Bool)

(assert (=> d!1185325 m!4589735))

(assert (=> d!1185325 m!4588603))

(assert (=> d!1185325 m!4588737))

(assert (=> d!1185325 m!4588589))

(assert (=> d!1185325 m!4588591))

(assert (=> d!1185325 m!4588593))

(assert (=> d!1185325 m!4588589))

(assert (=> b!4006385 m!4588589))

(assert (=> b!4006385 m!4588591))

(assert (=> b!4006385 m!4588589))

(assert (=> b!4006385 m!4588591))

(assert (=> b!4006385 m!4588593))

(assert (=> b!4006385 m!4588595))

(assert (=> b!4005503 d!1185325))

(declare-fun d!1185359 () Bool)

(declare-fun lt!1417413 () Int)

(assert (=> d!1185359 (= lt!1417413 (size!32062 (list!15930 (seqFromList!5041 (_1!24155 lt!1417025)))))))

(declare-fun size!32066 (Conc!13027) Int)

(assert (=> d!1185359 (= lt!1417413 (size!32066 (c!692546 (seqFromList!5041 (_1!24155 lt!1417025)))))))

(assert (=> d!1185359 (= (size!32064 (seqFromList!5041 (_1!24155 lt!1417025))) lt!1417413)))

(declare-fun bs!589078 () Bool)

(assert (= bs!589078 d!1185359))

(assert (=> bs!589078 m!4588597))

(assert (=> bs!589078 m!4589649))

(assert (=> bs!589078 m!4589649))

(declare-fun m!4589739 () Bool)

(assert (=> bs!589078 m!4589739))

(declare-fun m!4589741 () Bool)

(assert (=> bs!589078 m!4589741))

(assert (=> b!4005503 d!1185359))

(declare-fun d!1185361 () Bool)

(declare-fun c!692809 () Bool)

(assert (=> d!1185361 (= c!692809 ((_ is Nil!42882) lt!1417083))))

(declare-fun e!2484534 () (InoxSet C!23628))

(assert (=> d!1185361 (= (content!6500 lt!1417083) e!2484534)))

(declare-fun b!4006406 () Bool)

(assert (=> b!4006406 (= e!2484534 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006407 () Bool)

(assert (=> b!4006407 (= e!2484534 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417083) true) (content!6500 (t!332477 lt!1417083))))))

(assert (= (and d!1185361 c!692809) b!4006406))

(assert (= (and d!1185361 (not c!692809)) b!4006407))

(declare-fun m!4589743 () Bool)

(assert (=> b!4006407 m!4589743))

(declare-fun m!4589745 () Bool)

(assert (=> b!4006407 m!4589745))

(assert (=> d!1184941 d!1185361))

(assert (=> d!1184941 d!1185069))

(declare-fun d!1185363 () Bool)

(declare-fun c!692810 () Bool)

(assert (=> d!1185363 (= c!692810 ((_ is Nil!42882) suffixResult!105))))

(declare-fun e!2484535 () (InoxSet C!23628))

(assert (=> d!1185363 (= (content!6500 suffixResult!105) e!2484535)))

(declare-fun b!4006408 () Bool)

(assert (=> b!4006408 (= e!2484535 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006409 () Bool)

(assert (=> b!4006409 (= e!2484535 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 suffixResult!105) true) (content!6500 (t!332477 suffixResult!105))))))

(assert (= (and d!1185363 c!692810) b!4006408))

(assert (= (and d!1185363 (not c!692810)) b!4006409))

(declare-fun m!4589747 () Bool)

(assert (=> b!4006409 m!4589747))

(declare-fun m!4589749 () Bool)

(assert (=> b!4006409 m!4589749))

(assert (=> d!1184941 d!1185363))

(declare-fun d!1185365 () Bool)

(declare-fun c!692815 () Bool)

(assert (=> d!1185365 (= c!692815 ((_ is Node!13027) (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(declare-fun e!2484547 () Bool)

(assert (=> d!1185365 (= (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))) e!2484547)))

(declare-fun b!4006425 () Bool)

(declare-fun inv!57274 (Conc!13027) Bool)

(assert (=> b!4006425 (= e!2484547 (inv!57274 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(declare-fun b!4006426 () Bool)

(declare-fun e!2484548 () Bool)

(assert (=> b!4006426 (= e!2484547 e!2484548)))

(declare-fun res!1628092 () Bool)

(assert (=> b!4006426 (= res!1628092 (not ((_ is Leaf!20142) (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))))))

(assert (=> b!4006426 (=> res!1628092 e!2484548)))

(declare-fun b!4006427 () Bool)

(declare-fun inv!57275 (Conc!13027) Bool)

(assert (=> b!4006427 (= e!2484548 (inv!57275 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(assert (= (and d!1185365 c!692815) b!4006425))

(assert (= (and d!1185365 (not c!692815)) b!4006426))

(assert (= (and b!4006426 (not res!1628092)) b!4006427))

(declare-fun m!4589757 () Bool)

(assert (=> b!4006425 m!4589757))

(declare-fun m!4589759 () Bool)

(assert (=> b!4006427 m!4589759))

(assert (=> b!4005275 d!1185365))

(assert (=> b!4005762 d!1185035))

(declare-fun d!1185369 () Bool)

(assert (=> d!1185369 (= (head!8510 lt!1416898) (h!48302 lt!1416898))))

(assert (=> b!4005762 d!1185369))

(declare-fun b!4006433 () Bool)

(declare-fun res!1628097 () Bool)

(declare-fun e!2484553 () Bool)

(assert (=> b!4006433 (=> (not res!1628097) (not e!2484553))))

(assert (=> b!4006433 (= res!1628097 (= (head!8510 (tail!6242 prefix!494)) (head!8510 (tail!6242 lt!1416898))))))

(declare-fun b!4006435 () Bool)

(declare-fun e!2484554 () Bool)

(assert (=> b!4006435 (= e!2484554 (>= (size!32062 (tail!6242 lt!1416898)) (size!32062 (tail!6242 prefix!494))))))

(declare-fun b!4006434 () Bool)

(assert (=> b!4006434 (= e!2484553 (isPrefix!3903 (tail!6242 (tail!6242 prefix!494)) (tail!6242 (tail!6242 lt!1416898))))))

(declare-fun d!1185371 () Bool)

(assert (=> d!1185371 e!2484554))

(declare-fun res!1628100 () Bool)

(assert (=> d!1185371 (=> res!1628100 e!2484554)))

(declare-fun lt!1417415 () Bool)

(assert (=> d!1185371 (= res!1628100 (not lt!1417415))))

(declare-fun e!2484552 () Bool)

(assert (=> d!1185371 (= lt!1417415 e!2484552)))

(declare-fun res!1628098 () Bool)

(assert (=> d!1185371 (=> res!1628098 e!2484552)))

(assert (=> d!1185371 (= res!1628098 ((_ is Nil!42882) (tail!6242 prefix!494)))))

(assert (=> d!1185371 (= (isPrefix!3903 (tail!6242 prefix!494) (tail!6242 lt!1416898)) lt!1417415)))

(declare-fun b!4006432 () Bool)

(assert (=> b!4006432 (= e!2484552 e!2484553)))

(declare-fun res!1628099 () Bool)

(assert (=> b!4006432 (=> (not res!1628099) (not e!2484553))))

(assert (=> b!4006432 (= res!1628099 (not ((_ is Nil!42882) (tail!6242 lt!1416898))))))

(assert (= (and d!1185371 (not res!1628098)) b!4006432))

(assert (= (and b!4006432 res!1628099) b!4006433))

(assert (= (and b!4006433 res!1628097) b!4006434))

(assert (= (and d!1185371 (not res!1628100)) b!4006435))

(assert (=> b!4006433 m!4588723))

(assert (=> b!4006433 m!4589411))

(assert (=> b!4006433 m!4588883))

(assert (=> b!4006433 m!4589351))

(assert (=> b!4006435 m!4588883))

(assert (=> b!4006435 m!4589353))

(assert (=> b!4006435 m!4588723))

(assert (=> b!4006435 m!4589201))

(assert (=> b!4006434 m!4588723))

(assert (=> b!4006434 m!4589203))

(assert (=> b!4006434 m!4588883))

(assert (=> b!4006434 m!4589355))

(assert (=> b!4006434 m!4589203))

(assert (=> b!4006434 m!4589355))

(declare-fun m!4589769 () Bool)

(assert (=> b!4006434 m!4589769))

(assert (=> b!4005767 d!1185371))

(assert (=> b!4005767 d!1185107))

(assert (=> b!4005767 d!1185171))

(declare-fun d!1185377 () Bool)

(declare-fun c!692817 () Bool)

(assert (=> d!1185377 (= c!692817 ((_ is IntegerValue!21138) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(declare-fun e!2484555 () Bool)

(assert (=> d!1185377 (= (inv!21 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))) e!2484555)))

(declare-fun b!4006436 () Bool)

(assert (=> b!4006436 (= e!2484555 (inv!16 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(declare-fun b!4006437 () Bool)

(declare-fun e!2484556 () Bool)

(assert (=> b!4006437 (= e!2484556 (inv!17 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(declare-fun b!4006438 () Bool)

(declare-fun res!1628101 () Bool)

(declare-fun e!2484557 () Bool)

(assert (=> b!4006438 (=> res!1628101 e!2484557)))

(assert (=> b!4006438 (= res!1628101 (not ((_ is IntegerValue!21140) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910)))))))

(assert (=> b!4006438 (= e!2484556 e!2484557)))

(declare-fun b!4006439 () Bool)

(assert (=> b!4006439 (= e!2484557 (inv!15 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(declare-fun b!4006440 () Bool)

(assert (=> b!4006440 (= e!2484555 e!2484556)))

(declare-fun c!692816 () Bool)

(assert (=> b!4006440 (= c!692816 ((_ is IntegerValue!21139) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 token!484))) (seqFromList!5041 lt!1416910))))))

(assert (= (and d!1185377 c!692817) b!4006436))

(assert (= (and d!1185377 (not c!692817)) b!4006440))

(assert (= (and b!4006440 c!692816) b!4006437))

(assert (= (and b!4006440 (not c!692816)) b!4006438))

(assert (= (and b!4006438 (not res!1628101)) b!4006439))

(declare-fun m!4589771 () Bool)

(assert (=> b!4006436 m!4589771))

(declare-fun m!4589773 () Bool)

(assert (=> b!4006437 m!4589773))

(declare-fun m!4589775 () Bool)

(assert (=> b!4006439 m!4589775))

(assert (=> tb!240733 d!1185377))

(assert (=> d!1184821 d!1184779))

(assert (=> d!1184821 d!1184923))

(assert (=> d!1184821 d!1184793))

(declare-fun d!1185379 () Bool)

(assert (=> d!1185379 (= (maxPrefixOneRule!2723 thiss!21717 (rule!9852 token!484) lt!1416898) (Some!9229 (tuple2!42039 (Token!12771 (apply!10013 (transformation!6816 (rule!9852 token!484)) (seqFromList!5041 lt!1416910)) (rule!9852 token!484) (size!32062 lt!1416910) lt!1416910) suffixResult!105)))))

(assert (=> d!1185379 true))

(declare-fun _$59!641 () Unit!61877)

(assert (=> d!1185379 (= (choose!24172 thiss!21717 rules!2999 lt!1416910 lt!1416898 suffixResult!105 (rule!9852 token!484)) _$59!641)))

(declare-fun bs!589081 () Bool)

(assert (= bs!589081 d!1185379))

(assert (=> bs!589081 m!4588269))

(assert (=> bs!589081 m!4588265))

(assert (=> bs!589081 m!4588265))

(assert (=> bs!589081 m!4588267))

(assert (=> bs!589081 m!4588245))

(assert (=> d!1184821 d!1185379))

(assert (=> d!1184821 d!1184827))

(assert (=> d!1184821 d!1184873))

(declare-fun d!1185409 () Bool)

(declare-fun e!2484581 () Bool)

(assert (=> d!1185409 e!2484581))

(declare-fun res!1628128 () Bool)

(assert (=> d!1185409 (=> (not res!1628128) (not e!2484581))))

(declare-fun lt!1417426 () List!43006)

(assert (=> d!1185409 (= res!1628128 (= (content!6500 lt!1417426) ((_ map or) (content!6500 (t!332477 lt!1416894)) (content!6500 suffix!1299))))))

(declare-fun e!2484582 () List!43006)

(assert (=> d!1185409 (= lt!1417426 e!2484582)))

(declare-fun c!692826 () Bool)

(assert (=> d!1185409 (= c!692826 ((_ is Nil!42882) (t!332477 lt!1416894)))))

(assert (=> d!1185409 (= (++!11218 (t!332477 lt!1416894) suffix!1299) lt!1417426)))

(declare-fun b!4006482 () Bool)

(assert (=> b!4006482 (= e!2484582 suffix!1299)))

(declare-fun b!4006485 () Bool)

(assert (=> b!4006485 (= e!2484581 (or (not (= suffix!1299 Nil!42882)) (= lt!1417426 (t!332477 lt!1416894))))))

(declare-fun b!4006484 () Bool)

(declare-fun res!1628127 () Bool)

(assert (=> b!4006484 (=> (not res!1628127) (not e!2484581))))

(assert (=> b!4006484 (= res!1628127 (= (size!32062 lt!1417426) (+ (size!32062 (t!332477 lt!1416894)) (size!32062 suffix!1299))))))

(declare-fun b!4006483 () Bool)

(assert (=> b!4006483 (= e!2484582 (Cons!42882 (h!48302 (t!332477 lt!1416894)) (++!11218 (t!332477 (t!332477 lt!1416894)) suffix!1299)))))

(assert (= (and d!1185409 c!692826) b!4006482))

(assert (= (and d!1185409 (not c!692826)) b!4006483))

(assert (= (and d!1185409 res!1628128) b!4006484))

(assert (= (and b!4006484 res!1628127) b!4006485))

(declare-fun m!4589871 () Bool)

(assert (=> d!1185409 m!4589871))

(assert (=> d!1185409 m!4589431))

(assert (=> d!1185409 m!4588795))

(declare-fun m!4589873 () Bool)

(assert (=> b!4006484 m!4589873))

(assert (=> b!4006484 m!4589349))

(assert (=> b!4006484 m!4588193))

(declare-fun m!4589875 () Bool)

(assert (=> b!4006483 m!4589875))

(assert (=> b!4005727 d!1185409))

(declare-fun b!4006486 () Bool)

(declare-fun e!2484583 () Bool)

(declare-fun e!2484586 () Bool)

(assert (=> b!4006486 (= e!2484583 e!2484586)))

(declare-fun c!692828 () Bool)

(assert (=> b!4006486 (= c!692828 ((_ is EmptyLang!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun bm!286205 () Bool)

(declare-fun call!286210 () Bool)

(assert (=> bm!286205 (= call!286210 (isEmpty!25619 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))

(declare-fun b!4006487 () Bool)

(declare-fun e!2484584 () Bool)

(assert (=> b!4006487 (= e!2484584 (matchR!5682 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))))) (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))))))))

(declare-fun d!1185413 () Bool)

(assert (=> d!1185413 e!2484583))

(declare-fun c!692827 () Bool)

(assert (=> d!1185413 (= c!692827 ((_ is EmptyExpr!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun lt!1417427 () Bool)

(assert (=> d!1185413 (= lt!1417427 e!2484584)))

(declare-fun c!692829 () Bool)

(assert (=> d!1185413 (= c!692829 (isEmpty!25619 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))

(assert (=> d!1185413 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185413 (= (matchR!5682 (regex!6816 (rule!9852 token!484)) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) lt!1417427)))

(declare-fun b!4006488 () Bool)

(declare-fun e!2484589 () Bool)

(assert (=> b!4006488 (= e!2484589 (= (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (c!692547 (regex!6816 (rule!9852 token!484)))))))

(declare-fun b!4006489 () Bool)

(declare-fun e!2484587 () Bool)

(declare-fun e!2484588 () Bool)

(assert (=> b!4006489 (= e!2484587 e!2484588)))

(declare-fun res!1628135 () Bool)

(assert (=> b!4006489 (=> res!1628135 e!2484588)))

(assert (=> b!4006489 (= res!1628135 call!286210)))

(declare-fun b!4006490 () Bool)

(assert (=> b!4006490 (= e!2484586 (not lt!1417427))))

(declare-fun b!4006491 () Bool)

(declare-fun res!1628133 () Bool)

(assert (=> b!4006491 (=> res!1628133 e!2484588)))

(assert (=> b!4006491 (= res!1628133 (not (isEmpty!25619 (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))))))))

(declare-fun b!4006492 () Bool)

(assert (=> b!4006492 (= e!2484588 (not (= (head!8510 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022))))) (c!692547 (regex!6816 (rule!9852 token!484))))))))

(declare-fun b!4006493 () Bool)

(declare-fun res!1628130 () Bool)

(declare-fun e!2484585 () Bool)

(assert (=> b!4006493 (=> res!1628130 e!2484585)))

(assert (=> b!4006493 (= res!1628130 e!2484589)))

(declare-fun res!1628131 () Bool)

(assert (=> b!4006493 (=> (not res!1628131) (not e!2484589))))

(assert (=> b!4006493 (= res!1628131 lt!1417427)))

(declare-fun b!4006494 () Bool)

(assert (=> b!4006494 (= e!2484583 (= lt!1417427 call!286210))))

(declare-fun b!4006495 () Bool)

(assert (=> b!4006495 (= e!2484585 e!2484587)))

(declare-fun res!1628136 () Bool)

(assert (=> b!4006495 (=> (not res!1628136) (not e!2484587))))

(assert (=> b!4006495 (= res!1628136 (not lt!1417427))))

(declare-fun b!4006496 () Bool)

(declare-fun res!1628134 () Bool)

(assert (=> b!4006496 (=> (not res!1628134) (not e!2484589))))

(assert (=> b!4006496 (= res!1628134 (not call!286210))))

(declare-fun b!4006497 () Bool)

(assert (=> b!4006497 (= e!2484584 (nullable!4110 (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006498 () Bool)

(declare-fun res!1628129 () Bool)

(assert (=> b!4006498 (=> (not res!1628129) (not e!2484589))))

(assert (=> b!4006498 (= res!1628129 (isEmpty!25619 (tail!6242 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417022)))))))))

(declare-fun b!4006499 () Bool)

(declare-fun res!1628132 () Bool)

(assert (=> b!4006499 (=> res!1628132 e!2484585)))

(assert (=> b!4006499 (= res!1628132 (not ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484)))))))

(assert (=> b!4006499 (= e!2484586 e!2484585)))

(assert (= (and d!1185413 c!692829) b!4006497))

(assert (= (and d!1185413 (not c!692829)) b!4006487))

(assert (= (and d!1185413 c!692827) b!4006494))

(assert (= (and d!1185413 (not c!692827)) b!4006486))

(assert (= (and b!4006486 c!692828) b!4006490))

(assert (= (and b!4006486 (not c!692828)) b!4006499))

(assert (= (and b!4006499 (not res!1628132)) b!4006493))

(assert (= (and b!4006493 res!1628131) b!4006496))

(assert (= (and b!4006496 res!1628134) b!4006498))

(assert (= (and b!4006498 res!1628129) b!4006488))

(assert (= (and b!4006493 (not res!1628130)) b!4006495))

(assert (= (and b!4006495 res!1628136) b!4006489))

(assert (= (and b!4006489 (not res!1628135)) b!4006491))

(assert (= (and b!4006491 (not res!1628133)) b!4006492))

(assert (= (or b!4006494 b!4006489 b!4006496) bm!286205))

(assert (=> b!4006488 m!4588613))

(declare-fun m!4589877 () Bool)

(assert (=> b!4006488 m!4589877))

(assert (=> b!4006491 m!4588613))

(declare-fun m!4589879 () Bool)

(assert (=> b!4006491 m!4589879))

(assert (=> b!4006491 m!4589879))

(declare-fun m!4589881 () Bool)

(assert (=> b!4006491 m!4589881))

(assert (=> d!1185413 m!4588613))

(declare-fun m!4589883 () Bool)

(assert (=> d!1185413 m!4589883))

(assert (=> d!1185413 m!4588737))

(assert (=> b!4006492 m!4588613))

(assert (=> b!4006492 m!4589877))

(assert (=> b!4006498 m!4588613))

(assert (=> b!4006498 m!4589879))

(assert (=> b!4006498 m!4589879))

(assert (=> b!4006498 m!4589881))

(assert (=> b!4006487 m!4588613))

(assert (=> b!4006487 m!4589877))

(assert (=> b!4006487 m!4589877))

(declare-fun m!4589885 () Bool)

(assert (=> b!4006487 m!4589885))

(assert (=> b!4006487 m!4588613))

(assert (=> b!4006487 m!4589879))

(assert (=> b!4006487 m!4589885))

(assert (=> b!4006487 m!4589879))

(declare-fun m!4589887 () Bool)

(assert (=> b!4006487 m!4589887))

(assert (=> b!4006497 m!4588743))

(assert (=> bm!286205 m!4588613))

(assert (=> bm!286205 m!4589883))

(assert (=> b!4005499 d!1185413))

(assert (=> b!4005499 d!1185143))

(assert (=> b!4005499 d!1185145))

(assert (=> b!4005499 d!1184975))

(declare-fun d!1185415 () Bool)

(declare-fun lt!1417428 () Int)

(assert (=> d!1185415 (>= lt!1417428 0)))

(declare-fun e!2484590 () Int)

(assert (=> d!1185415 (= lt!1417428 e!2484590)))

(declare-fun c!692830 () Bool)

(assert (=> d!1185415 (= c!692830 ((_ is Nil!42882) lt!1417075))))

(assert (=> d!1185415 (= (size!32062 lt!1417075) lt!1417428)))

(declare-fun b!4006500 () Bool)

(assert (=> b!4006500 (= e!2484590 0)))

(declare-fun b!4006501 () Bool)

(assert (=> b!4006501 (= e!2484590 (+ 1 (size!32062 (t!332477 lt!1417075))))))

(assert (= (and d!1185415 c!692830) b!4006500))

(assert (= (and d!1185415 (not c!692830)) b!4006501))

(declare-fun m!4589889 () Bool)

(assert (=> b!4006501 m!4589889))

(assert (=> b!4005724 d!1185415))

(declare-fun d!1185417 () Bool)

(declare-fun lt!1417429 () Int)

(assert (=> d!1185417 (>= lt!1417429 0)))

(declare-fun e!2484591 () Int)

(assert (=> d!1185417 (= lt!1417429 e!2484591)))

(declare-fun c!692831 () Bool)

(assert (=> d!1185417 (= c!692831 ((_ is Nil!42882) lt!1416911))))

(assert (=> d!1185417 (= (size!32062 lt!1416911) lt!1417429)))

(declare-fun b!4006502 () Bool)

(assert (=> b!4006502 (= e!2484591 0)))

(declare-fun b!4006503 () Bool)

(assert (=> b!4006503 (= e!2484591 (+ 1 (size!32062 (t!332477 lt!1416911))))))

(assert (= (and d!1185417 c!692831) b!4006502))

(assert (= (and d!1185417 (not c!692831)) b!4006503))

(declare-fun m!4589891 () Bool)

(assert (=> b!4006503 m!4589891))

(assert (=> b!4005724 d!1185417))

(assert (=> b!4005724 d!1184937))

(declare-fun b!4006507 () Bool)

(declare-fun res!1628139 () Bool)

(declare-fun e!2484595 () Bool)

(assert (=> b!4006507 (=> (not res!1628139) (not e!2484595))))

(assert (=> b!4006507 (= res!1628139 (= (head!8510 lt!1416910) (head!8510 (++!11218 lt!1416910 lt!1416903))))))

(declare-fun b!4006509 () Bool)

(declare-fun e!2484596 () Bool)

(assert (=> b!4006509 (= e!2484596 (>= (size!32062 (++!11218 lt!1416910 lt!1416903)) (size!32062 lt!1416910)))))

(declare-fun b!4006508 () Bool)

(assert (=> b!4006508 (= e!2484595 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 (++!11218 lt!1416910 lt!1416903))))))

(declare-fun d!1185419 () Bool)

(assert (=> d!1185419 e!2484596))

(declare-fun res!1628142 () Bool)

(assert (=> d!1185419 (=> res!1628142 e!2484596)))

(declare-fun lt!1417430 () Bool)

(assert (=> d!1185419 (= res!1628142 (not lt!1417430))))

(declare-fun e!2484594 () Bool)

(assert (=> d!1185419 (= lt!1417430 e!2484594)))

(declare-fun res!1628140 () Bool)

(assert (=> d!1185419 (=> res!1628140 e!2484594)))

(assert (=> d!1185419 (= res!1628140 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185419 (= (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 lt!1416903)) lt!1417430)))

(declare-fun b!4006506 () Bool)

(assert (=> b!4006506 (= e!2484594 e!2484595)))

(declare-fun res!1628141 () Bool)

(assert (=> b!4006506 (=> (not res!1628141) (not e!2484595))))

(assert (=> b!4006506 (= res!1628141 (not ((_ is Nil!42882) (++!11218 lt!1416910 lt!1416903))))))

(assert (= (and d!1185419 (not res!1628140)) b!4006506))

(assert (= (and b!4006506 res!1628141) b!4006507))

(assert (= (and b!4006507 res!1628139) b!4006508))

(assert (= (and d!1185419 (not res!1628142)) b!4006509))

(assert (=> b!4006507 m!4588383))

(assert (=> b!4006507 m!4588237))

(declare-fun m!4589893 () Bool)

(assert (=> b!4006507 m!4589893))

(assert (=> b!4006509 m!4588237))

(declare-fun m!4589895 () Bool)

(assert (=> b!4006509 m!4589895))

(assert (=> b!4006509 m!4588245))

(assert (=> b!4006508 m!4588389))

(assert (=> b!4006508 m!4588237))

(declare-fun m!4589897 () Bool)

(assert (=> b!4006508 m!4589897))

(assert (=> b!4006508 m!4588389))

(assert (=> b!4006508 m!4589897))

(declare-fun m!4589899 () Bool)

(assert (=> b!4006508 m!4589899))

(assert (=> d!1184801 d!1185419))

(assert (=> d!1184801 d!1184925))

(declare-fun d!1185421 () Bool)

(assert (=> d!1185421 (isPrefix!3903 lt!1416910 (++!11218 lt!1416910 lt!1416903))))

(assert (=> d!1185421 true))

(declare-fun _$46!1640 () Unit!61877)

(assert (=> d!1185421 (= (choose!24170 lt!1416910 lt!1416903) _$46!1640)))

(declare-fun bs!589083 () Bool)

(assert (= bs!589083 d!1185421))

(assert (=> bs!589083 m!4588237))

(assert (=> bs!589083 m!4588237))

(assert (=> bs!589083 m!4588355))

(assert (=> d!1184801 d!1185421))

(assert (=> d!1184947 d!1184945))

(declare-fun d!1185423 () Bool)

(assert (=> d!1185423 (ruleValid!2748 thiss!21717 (rule!9852 token!484))))

(assert (=> d!1185423 true))

(declare-fun _$65!1434 () Unit!61877)

(assert (=> d!1185423 (= (choose!24180 thiss!21717 (rule!9852 token!484) rules!2999) _$65!1434)))

(declare-fun bs!589084 () Bool)

(assert (= bs!589084 d!1185423))

(assert (=> bs!589084 m!4588257))

(assert (=> d!1184947 d!1185423))

(declare-fun d!1185425 () Bool)

(declare-fun lt!1417431 () Bool)

(assert (=> d!1185425 (= lt!1417431 (select (content!6501 rules!2999) (rule!9852 token!484)))))

(declare-fun e!2484597 () Bool)

(assert (=> d!1185425 (= lt!1417431 e!2484597)))

(declare-fun res!1628143 () Bool)

(assert (=> d!1185425 (=> (not res!1628143) (not e!2484597))))

(assert (=> d!1185425 (= res!1628143 ((_ is Cons!42884) rules!2999))))

(assert (=> d!1185425 (= (contains!8524 rules!2999 (rule!9852 token!484)) lt!1417431)))

(declare-fun b!4006512 () Bool)

(declare-fun e!2484598 () Bool)

(assert (=> b!4006512 (= e!2484597 e!2484598)))

(declare-fun res!1628144 () Bool)

(assert (=> b!4006512 (=> res!1628144 e!2484598)))

(assert (=> b!4006512 (= res!1628144 (= (h!48304 rules!2999) (rule!9852 token!484)))))

(declare-fun b!4006513 () Bool)

(assert (=> b!4006513 (= e!2484598 (contains!8524 (t!332479 rules!2999) (rule!9852 token!484)))))

(assert (= (and d!1185425 res!1628143) b!4006512))

(assert (= (and b!4006512 (not res!1628144)) b!4006513))

(assert (=> d!1185425 m!4589417))

(declare-fun m!4589903 () Bool)

(assert (=> d!1185425 m!4589903))

(declare-fun m!4589905 () Bool)

(assert (=> b!4006513 m!4589905))

(assert (=> d!1184947 d!1185425))

(declare-fun d!1185429 () Bool)

(declare-fun lt!1417433 () Int)

(assert (=> d!1185429 (>= lt!1417433 0)))

(declare-fun e!2484601 () Int)

(assert (=> d!1185429 (= lt!1417433 e!2484601)))

(declare-fun c!692833 () Bool)

(assert (=> d!1185429 (= c!692833 ((_ is Nil!42882) (_2!24153 (get!14094 lt!1417068))))))

(assert (=> d!1185429 (= (size!32062 (_2!24153 (get!14094 lt!1417068))) lt!1417433)))

(declare-fun b!4006518 () Bool)

(assert (=> b!4006518 (= e!2484601 0)))

(declare-fun b!4006519 () Bool)

(assert (=> b!4006519 (= e!2484601 (+ 1 (size!32062 (t!332477 (_2!24153 (get!14094 lt!1417068))))))))

(assert (= (and d!1185429 c!692833) b!4006518))

(assert (= (and d!1185429 (not c!692833)) b!4006519))

(declare-fun m!4589907 () Bool)

(assert (=> b!4006519 m!4589907))

(assert (=> b!4005709 d!1185429))

(assert (=> b!4005709 d!1185187))

(assert (=> b!4005709 d!1185093))

(assert (=> b!4005681 d!1185159))

(assert (=> b!4005681 d!1185117))

(declare-fun d!1185431 () Bool)

(assert (=> d!1185431 (= (inv!57273 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))) (isBalanced!3659 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))))))

(declare-fun bs!589087 () Bool)

(assert (= bs!589087 d!1185431))

(declare-fun m!4589923 () Bool)

(assert (=> bs!589087 m!4589923))

(assert (=> tb!240729 d!1185431))

(declare-fun b!4006530 () Bool)

(declare-fun res!1628154 () Bool)

(declare-fun e!2484606 () Bool)

(assert (=> b!4006530 (=> (not res!1628154) (not e!2484606))))

(assert (=> b!4006530 (= res!1628154 (= (head!8510 (tail!6242 lt!1416910)) (head!8510 (tail!6242 lt!1416912))))))

(declare-fun b!4006532 () Bool)

(declare-fun e!2484607 () Bool)

(assert (=> b!4006532 (= e!2484607 (>= (size!32062 (tail!6242 lt!1416912)) (size!32062 (tail!6242 lt!1416910))))))

(declare-fun b!4006531 () Bool)

(assert (=> b!4006531 (= e!2484606 (isPrefix!3903 (tail!6242 (tail!6242 lt!1416910)) (tail!6242 (tail!6242 lt!1416912))))))

(declare-fun d!1185437 () Bool)

(assert (=> d!1185437 e!2484607))

(declare-fun res!1628157 () Bool)

(assert (=> d!1185437 (=> res!1628157 e!2484607)))

(declare-fun lt!1417439 () Bool)

(assert (=> d!1185437 (= res!1628157 (not lt!1417439))))

(declare-fun e!2484605 () Bool)

(assert (=> d!1185437 (= lt!1417439 e!2484605)))

(declare-fun res!1628155 () Bool)

(assert (=> d!1185437 (=> res!1628155 e!2484605)))

(assert (=> d!1185437 (= res!1628155 ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> d!1185437 (= (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416912)) lt!1417439)))

(declare-fun b!4006529 () Bool)

(assert (=> b!4006529 (= e!2484605 e!2484606)))

(declare-fun res!1628156 () Bool)

(assert (=> b!4006529 (=> (not res!1628156) (not e!2484606))))

(assert (=> b!4006529 (= res!1628156 (not ((_ is Nil!42882) (tail!6242 lt!1416912))))))

(assert (= (and d!1185437 (not res!1628155)) b!4006529))

(assert (= (and b!4006529 res!1628156) b!4006530))

(assert (= (and b!4006530 res!1628154) b!4006531))

(assert (= (and d!1185437 (not res!1628157)) b!4006532))

(assert (=> b!4006530 m!4588389))

(assert (=> b!4006530 m!4589209))

(assert (=> b!4006530 m!4588391))

(declare-fun m!4589925 () Bool)

(assert (=> b!4006530 m!4589925))

(assert (=> b!4006532 m!4588391))

(declare-fun m!4589927 () Bool)

(assert (=> b!4006532 m!4589927))

(assert (=> b!4006532 m!4588389))

(assert (=> b!4006532 m!4589215))

(assert (=> b!4006531 m!4588389))

(assert (=> b!4006531 m!4589217))

(assert (=> b!4006531 m!4588391))

(declare-fun m!4589929 () Bool)

(assert (=> b!4006531 m!4589929))

(assert (=> b!4006531 m!4589217))

(assert (=> b!4006531 m!4589929))

(declare-fun m!4589931 () Bool)

(assert (=> b!4006531 m!4589931))

(assert (=> b!4005356 d!1185437))

(assert (=> b!4005356 d!1185117))

(declare-fun d!1185439 () Bool)

(assert (=> d!1185439 (= (tail!6242 lt!1416912) (t!332477 lt!1416912))))

(assert (=> b!4005356 d!1185439))

(declare-fun d!1185441 () Bool)

(declare-fun charsToBigInt!0 (List!43007 Int) Int)

(assert (=> d!1185441 (= (inv!15 (value!214890 token!484)) (= (charsToBigInt!0 (text!49771 (value!214890 token!484)) 0) (value!214885 (value!214890 token!484))))))

(declare-fun bs!589088 () Bool)

(assert (= bs!589088 d!1185441))

(declare-fun m!4589969 () Bool)

(assert (=> bs!589088 m!4589969))

(assert (=> b!4005289 d!1185441))

(assert (=> d!1184911 d!1185219))

(assert (=> d!1184911 d!1185095))

(declare-fun d!1185453 () Bool)

(declare-fun e!2484613 () Bool)

(assert (=> d!1185453 e!2484613))

(declare-fun res!1628161 () Bool)

(assert (=> d!1185453 (=> (not res!1628161) (not e!2484613))))

(declare-fun lt!1417443 () List!43006)

(assert (=> d!1185453 (= res!1628161 (= (content!6500 lt!1417443) ((_ map or) (content!6500 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (content!6500 (_2!24153 (get!14094 lt!1417068))))))))

(declare-fun e!2484614 () List!43006)

(assert (=> d!1185453 (= lt!1417443 e!2484614)))

(declare-fun c!692839 () Bool)

(assert (=> d!1185453 (= c!692839 ((_ is Nil!42882) (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))))))

(assert (=> d!1185453 (= (++!11218 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))) (_2!24153 (get!14094 lt!1417068))) lt!1417443)))

(declare-fun b!4006543 () Bool)

(assert (=> b!4006543 (= e!2484614 (_2!24153 (get!14094 lt!1417068)))))

(declare-fun b!4006546 () Bool)

(assert (=> b!4006546 (= e!2484613 (or (not (= (_2!24153 (get!14094 lt!1417068)) Nil!42882)) (= lt!1417443 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun b!4006545 () Bool)

(declare-fun res!1628160 () Bool)

(assert (=> b!4006545 (=> (not res!1628160) (not e!2484613))))

(assert (=> b!4006545 (= res!1628160 (= (size!32062 lt!1417443) (+ (size!32062 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (size!32062 (_2!24153 (get!14094 lt!1417068))))))))

(declare-fun b!4006544 () Bool)

(assert (=> b!4006544 (= e!2484614 (Cons!42882 (h!48302 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (++!11218 (t!332477 (list!15930 (charsOf!4632 (_1!24153 (get!14094 lt!1417068))))) (_2!24153 (get!14094 lt!1417068)))))))

(assert (= (and d!1185453 c!692839) b!4006543))

(assert (= (and d!1185453 (not c!692839)) b!4006544))

(assert (= (and d!1185453 res!1628161) b!4006545))

(assert (= (and b!4006545 res!1628160) b!4006546))

(declare-fun m!4589977 () Bool)

(assert (=> d!1185453 m!4589977))

(assert (=> d!1185453 m!4588765))

(declare-fun m!4589979 () Bool)

(assert (=> d!1185453 m!4589979))

(declare-fun m!4589981 () Bool)

(assert (=> d!1185453 m!4589981))

(declare-fun m!4589983 () Bool)

(assert (=> b!4006545 m!4589983))

(assert (=> b!4006545 m!4588765))

(declare-fun m!4589985 () Bool)

(assert (=> b!4006545 m!4589985))

(assert (=> b!4006545 m!4588789))

(declare-fun m!4589987 () Bool)

(assert (=> b!4006544 m!4589987))

(assert (=> b!4005705 d!1185453))

(assert (=> b!4005705 d!1185189))

(assert (=> b!4005705 d!1185191))

(assert (=> b!4005705 d!1185187))

(assert (=> b!4005638 d!1185035))

(declare-fun d!1185461 () Bool)

(assert (=> d!1185461 (= (head!8510 prefix!494) (h!48302 prefix!494))))

(assert (=> b!4005638 d!1185461))

(assert (=> b!4005736 d!1184937))

(assert (=> b!4005736 d!1184939))

(assert (=> b!4005712 d!1185187))

(declare-fun d!1185463 () Bool)

(assert (=> d!1185463 (= (apply!10013 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068))))) (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068))))))))

(declare-fun b_lambda!116873 () Bool)

(assert (=> (not b_lambda!116873) (not d!1185463)))

(declare-fun t!332574 () Bool)

(declare-fun tb!240819 () Bool)

(assert (=> (and b!4005248 (= (toValue!9312 (transformation!6816 (rule!9852 token!484))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332574) tb!240819))

(declare-fun result!291884 () Bool)

(assert (=> tb!240819 (= result!291884 (inv!21 (dynLambda!18184 (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068))))) (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068)))))))))

(declare-fun m!4589989 () Bool)

(assert (=> tb!240819 m!4589989))

(assert (=> d!1185463 t!332574))

(declare-fun b_and!307729 () Bool)

(assert (= b_and!307711 (and (=> t!332574 result!291884) b_and!307729)))

(declare-fun t!332576 () Bool)

(declare-fun tb!240821 () Bool)

(assert (=> (and b!4005244 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332576) tb!240821))

(declare-fun result!291886 () Bool)

(assert (= result!291886 result!291884))

(assert (=> d!1185463 t!332576))

(declare-fun b_and!307731 () Bool)

(assert (= b_and!307713 (and (=> t!332576 result!291886) b_and!307731)))

(declare-fun t!332578 () Bool)

(declare-fun tb!240823 () Bool)

(assert (=> (and b!4005785 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332578) tb!240823))

(declare-fun result!291888 () Bool)

(assert (= result!291888 result!291884))

(assert (=> d!1185463 t!332578))

(declare-fun b_and!307733 () Bool)

(assert (= b_and!307715 (and (=> t!332578 result!291888) b_and!307733)))

(assert (=> d!1185463 m!4588781))

(declare-fun m!4589993 () Bool)

(assert (=> d!1185463 m!4589993))

(assert (=> b!4005712 d!1185463))

(declare-fun d!1185469 () Bool)

(assert (=> d!1185469 (= (seqFromList!5041 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068)))) (fromListB!2308 (originalCharacters!7416 (_1!24153 (get!14094 lt!1417068)))))))

(declare-fun bs!589091 () Bool)

(assert (= bs!589091 d!1185469))

(declare-fun m!4589995 () Bool)

(assert (=> bs!589091 m!4589995))

(assert (=> b!4005712 d!1185469))

(assert (=> d!1184909 d!1184907))

(declare-fun d!1185473 () Bool)

(assert (=> d!1185473 (isPrefix!3903 lt!1416910 prefix!494)))

(assert (=> d!1185473 true))

(declare-fun _$69!232 () Unit!61877)

(assert (=> d!1185473 (= (choose!24176 prefix!494 lt!1416910 lt!1416898) _$69!232)))

(declare-fun bs!589092 () Bool)

(assert (= bs!589092 d!1185473))

(assert (=> bs!589092 m!4588221))

(assert (=> d!1184909 d!1185473))

(assert (=> d!1184909 d!1184959))

(declare-fun d!1185479 () Bool)

(declare-fun c!692844 () Bool)

(assert (=> d!1185479 (= c!692844 ((_ is Nil!42882) lt!1417075))))

(declare-fun e!2484627 () (InoxSet C!23628))

(assert (=> d!1185479 (= (content!6500 lt!1417075) e!2484627)))

(declare-fun b!4006564 () Bool)

(assert (=> b!4006564 (= e!2484627 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006565 () Bool)

(assert (=> b!4006565 (= e!2484627 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417075) true) (content!6500 (t!332477 lt!1417075))))))

(assert (= (and d!1185479 c!692844) b!4006564))

(assert (= (and d!1185479 (not c!692844)) b!4006565))

(declare-fun m!4590009 () Bool)

(assert (=> b!4006565 m!4590009))

(declare-fun m!4590011 () Bool)

(assert (=> b!4006565 m!4590011))

(assert (=> d!1184927 d!1185479))

(declare-fun d!1185485 () Bool)

(declare-fun c!692846 () Bool)

(assert (=> d!1185485 (= c!692846 ((_ is Nil!42882) lt!1416911))))

(declare-fun e!2484629 () (InoxSet C!23628))

(assert (=> d!1185485 (= (content!6500 lt!1416911) e!2484629)))

(declare-fun b!4006568 () Bool)

(assert (=> b!4006568 (= e!2484629 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006569 () Bool)

(assert (=> b!4006569 (= e!2484629 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1416911) true) (content!6500 (t!332477 lt!1416911))))))

(assert (= (and d!1185485 c!692846) b!4006568))

(assert (= (and d!1185485 (not c!692846)) b!4006569))

(declare-fun m!4590013 () Bool)

(assert (=> b!4006569 m!4590013))

(declare-fun m!4590017 () Bool)

(assert (=> b!4006569 m!4590017))

(assert (=> d!1184927 d!1185485))

(assert (=> d!1184927 d!1185043))

(declare-fun d!1185489 () Bool)

(assert (=> d!1185489 (= (isEmpty!25620 lt!1417022) (not ((_ is Some!9229) lt!1417022)))))

(assert (=> d!1184827 d!1185489))

(declare-fun d!1185493 () Bool)

(assert (=> d!1185493 (= (isEmpty!25619 (_1!24155 lt!1417025)) ((_ is Nil!42882) (_1!24155 lt!1417025)))))

(assert (=> d!1184827 d!1185493))

(declare-fun d!1185495 () Bool)

(declare-fun lt!1417483 () tuple2!42042)

(assert (=> d!1185495 (= (++!11218 (_1!24155 lt!1417483) (_2!24155 lt!1417483)) lt!1416898)))

(declare-fun sizeTr!258 (List!43006 Int) Int)

(assert (=> d!1185495 (= lt!1417483 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 0 lt!1416898 lt!1416898 (sizeTr!258 lt!1416898 0)))))

(declare-fun lt!1417479 () Unit!61877)

(declare-fun lt!1417484 () Unit!61877)

(assert (=> d!1185495 (= lt!1417479 lt!1417484)))

(declare-fun lt!1417478 () List!43006)

(declare-fun lt!1417482 () Int)

(assert (=> d!1185495 (= (sizeTr!258 lt!1417478 lt!1417482) (+ (size!32062 lt!1417478) lt!1417482))))

(declare-fun lemmaSizeTrEqualsSize!257 (List!43006 Int) Unit!61877)

(assert (=> d!1185495 (= lt!1417484 (lemmaSizeTrEqualsSize!257 lt!1417478 lt!1417482))))

(assert (=> d!1185495 (= lt!1417482 0)))

(assert (=> d!1185495 (= lt!1417478 Nil!42882)))

(declare-fun lt!1417477 () Unit!61877)

(declare-fun lt!1417481 () Unit!61877)

(assert (=> d!1185495 (= lt!1417477 lt!1417481)))

(declare-fun lt!1417480 () Int)

(assert (=> d!1185495 (= (sizeTr!258 lt!1416898 lt!1417480) (+ (size!32062 lt!1416898) lt!1417480))))

(assert (=> d!1185495 (= lt!1417481 (lemmaSizeTrEqualsSize!257 lt!1416898 lt!1417480))))

(assert (=> d!1185495 (= lt!1417480 0)))

(assert (=> d!1185495 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185495 (= (findLongestMatch!1264 (regex!6816 (rule!9852 token!484)) lt!1416898) lt!1417483)))

(declare-fun bs!589096 () Bool)

(assert (= bs!589096 d!1185495))

(declare-fun m!4590061 () Bool)

(assert (=> bs!589096 m!4590061))

(declare-fun m!4590063 () Bool)

(assert (=> bs!589096 m!4590063))

(assert (=> bs!589096 m!4588737))

(declare-fun m!4590065 () Bool)

(assert (=> bs!589096 m!4590065))

(assert (=> bs!589096 m!4588591))

(declare-fun m!4590067 () Bool)

(assert (=> bs!589096 m!4590067))

(declare-fun m!4590069 () Bool)

(assert (=> bs!589096 m!4590069))

(declare-fun m!4590071 () Bool)

(assert (=> bs!589096 m!4590071))

(declare-fun m!4590073 () Bool)

(assert (=> bs!589096 m!4590073))

(assert (=> bs!589096 m!4590071))

(declare-fun m!4590075 () Bool)

(assert (=> bs!589096 m!4590075))

(assert (=> d!1184827 d!1185495))

(assert (=> d!1184827 d!1184945))

(declare-fun d!1185521 () Bool)

(declare-fun e!2484654 () Bool)

(assert (=> d!1185521 e!2484654))

(declare-fun res!1628192 () Bool)

(assert (=> d!1185521 (=> (not res!1628192) (not e!2484654))))

(declare-fun lt!1417485 () List!43006)

(assert (=> d!1185521 (= res!1628192 (= (content!6500 lt!1417485) ((_ map or) (content!6500 (t!332477 lt!1416910)) (content!6500 suffixResult!105))))))

(declare-fun e!2484655 () List!43006)

(assert (=> d!1185521 (= lt!1417485 e!2484655)))

(declare-fun c!692855 () Bool)

(assert (=> d!1185521 (= c!692855 ((_ is Nil!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185521 (= (++!11218 (t!332477 lt!1416910) suffixResult!105) lt!1417485)))

(declare-fun b!4006606 () Bool)

(assert (=> b!4006606 (= e!2484655 suffixResult!105)))

(declare-fun b!4006609 () Bool)

(assert (=> b!4006609 (= e!2484654 (or (not (= suffixResult!105 Nil!42882)) (= lt!1417485 (t!332477 lt!1416910))))))

(declare-fun b!4006608 () Bool)

(declare-fun res!1628191 () Bool)

(assert (=> b!4006608 (=> (not res!1628191) (not e!2484654))))

(assert (=> b!4006608 (= res!1628191 (= (size!32062 lt!1417485) (+ (size!32062 (t!332477 lt!1416910)) (size!32062 suffixResult!105))))))

(declare-fun b!4006607 () Bool)

(assert (=> b!4006607 (= e!2484655 (Cons!42882 (h!48302 (t!332477 lt!1416910)) (++!11218 (t!332477 (t!332477 lt!1416910)) suffixResult!105)))))

(assert (= (and d!1185521 c!692855) b!4006606))

(assert (= (and d!1185521 (not c!692855)) b!4006607))

(assert (= (and d!1185521 res!1628192) b!4006608))

(assert (= (and b!4006608 res!1628191) b!4006609))

(declare-fun m!4590077 () Bool)

(assert (=> d!1185521 m!4590077))

(assert (=> d!1185521 m!4589109))

(assert (=> d!1185521 m!4588853))

(declare-fun m!4590079 () Bool)

(assert (=> b!4006608 m!4590079))

(assert (=> b!4006608 m!4588285))

(assert (=> b!4006608 m!4588857))

(declare-fun m!4590081 () Bool)

(assert (=> b!4006607 m!4590081))

(assert (=> b!4005742 d!1185521))

(declare-fun b!4006615 () Bool)

(declare-fun res!1628193 () Bool)

(declare-fun e!2484659 () Bool)

(assert (=> b!4006615 (=> (not res!1628193) (not e!2484659))))

(assert (=> b!4006615 (= res!1628193 (= (head!8510 (tail!6242 lt!1416910)) (head!8510 (tail!6242 lt!1416906))))))

(declare-fun b!4006617 () Bool)

(declare-fun e!2484660 () Bool)

(assert (=> b!4006617 (= e!2484660 (>= (size!32062 (tail!6242 lt!1416906)) (size!32062 (tail!6242 lt!1416910))))))

(declare-fun b!4006616 () Bool)

(assert (=> b!4006616 (= e!2484659 (isPrefix!3903 (tail!6242 (tail!6242 lt!1416910)) (tail!6242 (tail!6242 lt!1416906))))))

(declare-fun d!1185523 () Bool)

(assert (=> d!1185523 e!2484660))

(declare-fun res!1628196 () Bool)

(assert (=> d!1185523 (=> res!1628196 e!2484660)))

(declare-fun lt!1417486 () Bool)

(assert (=> d!1185523 (= res!1628196 (not lt!1417486))))

(declare-fun e!2484658 () Bool)

(assert (=> d!1185523 (= lt!1417486 e!2484658)))

(declare-fun res!1628194 () Bool)

(assert (=> d!1185523 (=> res!1628194 e!2484658)))

(assert (=> d!1185523 (= res!1628194 ((_ is Nil!42882) (tail!6242 lt!1416910)))))

(assert (=> d!1185523 (= (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 lt!1416906)) lt!1417486)))

(declare-fun b!4006614 () Bool)

(assert (=> b!4006614 (= e!2484658 e!2484659)))

(declare-fun res!1628195 () Bool)

(assert (=> b!4006614 (=> (not res!1628195) (not e!2484659))))

(assert (=> b!4006614 (= res!1628195 (not ((_ is Nil!42882) (tail!6242 lt!1416906))))))

(assert (= (and d!1185523 (not res!1628194)) b!4006614))

(assert (= (and b!4006614 res!1628195) b!4006615))

(assert (= (and b!4006615 res!1628193) b!4006616))

(assert (= (and d!1185523 (not res!1628196)) b!4006617))

(assert (=> b!4006615 m!4588389))

(assert (=> b!4006615 m!4589209))

(assert (=> b!4006615 m!4588873))

(declare-fun m!4590089 () Bool)

(assert (=> b!4006615 m!4590089))

(assert (=> b!4006617 m!4588873))

(declare-fun m!4590091 () Bool)

(assert (=> b!4006617 m!4590091))

(assert (=> b!4006617 m!4588389))

(assert (=> b!4006617 m!4589215))

(assert (=> b!4006616 m!4588389))

(assert (=> b!4006616 m!4589217))

(assert (=> b!4006616 m!4588873))

(declare-fun m!4590095 () Bool)

(assert (=> b!4006616 m!4590095))

(assert (=> b!4006616 m!4589217))

(assert (=> b!4006616 m!4590095))

(declare-fun m!4590097 () Bool)

(assert (=> b!4006616 m!4590097))

(assert (=> b!4005759 d!1185523))

(assert (=> b!4005759 d!1185117))

(declare-fun d!1185527 () Bool)

(assert (=> d!1185527 (= (tail!6242 lt!1416906) (t!332477 lt!1416906))))

(assert (=> b!4005759 d!1185527))

(declare-fun d!1185529 () Bool)

(declare-fun lt!1417488 () Int)

(assert (=> d!1185529 (>= lt!1417488 0)))

(declare-fun e!2484662 () Int)

(assert (=> d!1185529 (= lt!1417488 e!2484662)))

(declare-fun c!692859 () Bool)

(assert (=> d!1185529 (= c!692859 ((_ is Nil!42882) (t!332477 suffix!1299)))))

(assert (=> d!1185529 (= (size!32062 (t!332477 suffix!1299)) lt!1417488)))

(declare-fun b!4006620 () Bool)

(assert (=> b!4006620 (= e!2484662 0)))

(declare-fun b!4006621 () Bool)

(assert (=> b!4006621 (= e!2484662 (+ 1 (size!32062 (t!332477 (t!332477 suffix!1299)))))))

(assert (= (and d!1185529 c!692859) b!4006620))

(assert (= (and d!1185529 (not c!692859)) b!4006621))

(declare-fun m!4590101 () Bool)

(assert (=> b!4006621 m!4590101))

(assert (=> b!4005738 d!1185529))

(declare-fun d!1185533 () Bool)

(declare-fun c!692861 () Bool)

(assert (=> d!1185533 (= c!692861 ((_ is Nil!42882) lt!1417042))))

(declare-fun e!2484664 () (InoxSet C!23628))

(assert (=> d!1185533 (= (content!6500 lt!1417042) e!2484664)))

(declare-fun b!4006624 () Bool)

(assert (=> b!4006624 (= e!2484664 ((as const (Array C!23628 Bool)) false))))

(declare-fun b!4006625 () Bool)

(assert (=> b!4006625 (= e!2484664 ((_ map or) (store ((as const (Array C!23628 Bool)) false) (h!48302 lt!1417042) true) (content!6500 (t!332477 lt!1417042))))))

(assert (= (and d!1185533 c!692861) b!4006624))

(assert (= (and d!1185533 (not c!692861)) b!4006625))

(declare-fun m!4590105 () Bool)

(assert (=> b!4006625 m!4590105))

(declare-fun m!4590107 () Bool)

(assert (=> b!4006625 m!4590107))

(assert (=> d!1184903 d!1185533))

(assert (=> d!1184903 d!1185069))

(assert (=> d!1184903 d!1185205))

(declare-fun b!4006628 () Bool)

(declare-fun e!2484666 () Bool)

(declare-fun e!2484669 () Bool)

(assert (=> b!4006628 (= e!2484666 e!2484669)))

(declare-fun c!692864 () Bool)

(assert (=> b!4006628 (= c!692864 ((_ is EmptyLang!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun bm!286207 () Bool)

(declare-fun call!286212 () Bool)

(assert (=> bm!286207 (= call!286212 (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(declare-fun b!4006629 () Bool)

(declare-fun e!2484667 () Bool)

(assert (=> b!4006629 (= e!2484667 (matchR!5682 (derivativeStep!3519 (regex!6816 (rule!9852 token!484)) (head!8510 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898))))) (tail!6242 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898))))))))

(declare-fun d!1185537 () Bool)

(assert (=> d!1185537 e!2484666))

(declare-fun c!692863 () Bool)

(assert (=> d!1185537 (= c!692863 ((_ is EmptyExpr!11721) (regex!6816 (rule!9852 token!484))))))

(declare-fun lt!1417491 () Bool)

(assert (=> d!1185537 (= lt!1417491 e!2484667)))

(declare-fun c!692865 () Bool)

(assert (=> d!1185537 (= c!692865 (isEmpty!25619 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))

(assert (=> d!1185537 (validRegex!5310 (regex!6816 (rule!9852 token!484)))))

(assert (=> d!1185537 (= (matchR!5682 (regex!6816 (rule!9852 token!484)) (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))) lt!1417491)))

(declare-fun b!4006630 () Bool)

(declare-fun e!2484672 () Bool)

(assert (=> b!4006630 (= e!2484672 (= (head!8510 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))) (c!692547 (regex!6816 (rule!9852 token!484)))))))

(declare-fun b!4006631 () Bool)

(declare-fun e!2484670 () Bool)

(declare-fun e!2484671 () Bool)

(assert (=> b!4006631 (= e!2484670 e!2484671)))

(declare-fun res!1628203 () Bool)

(assert (=> b!4006631 (=> res!1628203 e!2484671)))

(assert (=> b!4006631 (= res!1628203 call!286212)))

(declare-fun b!4006632 () Bool)

(assert (=> b!4006632 (= e!2484669 (not lt!1417491))))

(declare-fun b!4006633 () Bool)

(declare-fun res!1628201 () Bool)

(assert (=> b!4006633 (=> res!1628201 e!2484671)))

(assert (=> b!4006633 (= res!1628201 (not (isEmpty!25619 (tail!6242 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))))))))

(declare-fun b!4006634 () Bool)

(assert (=> b!4006634 (= e!2484671 (not (= (head!8510 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898)))) (c!692547 (regex!6816 (rule!9852 token!484))))))))

(declare-fun b!4006635 () Bool)

(declare-fun res!1628198 () Bool)

(declare-fun e!2484668 () Bool)

(assert (=> b!4006635 (=> res!1628198 e!2484668)))

(assert (=> b!4006635 (= res!1628198 e!2484672)))

(declare-fun res!1628199 () Bool)

(assert (=> b!4006635 (=> (not res!1628199) (not e!2484672))))

(assert (=> b!4006635 (= res!1628199 lt!1417491)))

(declare-fun b!4006636 () Bool)

(assert (=> b!4006636 (= e!2484666 (= lt!1417491 call!286212))))

(declare-fun b!4006637 () Bool)

(assert (=> b!4006637 (= e!2484668 e!2484670)))

(declare-fun res!1628204 () Bool)

(assert (=> b!4006637 (=> (not res!1628204) (not e!2484670))))

(assert (=> b!4006637 (= res!1628204 (not lt!1417491))))

(declare-fun b!4006638 () Bool)

(declare-fun res!1628202 () Bool)

(assert (=> b!4006638 (=> (not res!1628202) (not e!2484672))))

(assert (=> b!4006638 (= res!1628202 (not call!286212))))

(declare-fun b!4006639 () Bool)

(assert (=> b!4006639 (= e!2484667 (nullable!4110 (regex!6816 (rule!9852 token!484))))))

(declare-fun b!4006640 () Bool)

(declare-fun res!1628197 () Bool)

(assert (=> b!4006640 (=> (not res!1628197) (not e!2484672))))

(assert (=> b!4006640 (= res!1628197 (isEmpty!25619 (tail!6242 (_1!24155 (findLongestMatchInner!1351 (regex!6816 (rule!9852 token!484)) Nil!42882 (size!32062 Nil!42882) lt!1416898 lt!1416898 (size!32062 lt!1416898))))))))

(declare-fun b!4006641 () Bool)

(declare-fun res!1628200 () Bool)

(assert (=> b!4006641 (=> res!1628200 e!2484668)))

(assert (=> b!4006641 (= res!1628200 (not ((_ is ElementMatch!11721) (regex!6816 (rule!9852 token!484)))))))

(assert (=> b!4006641 (= e!2484669 e!2484668)))

(assert (= (and d!1185537 c!692865) b!4006639))

(assert (= (and d!1185537 (not c!692865)) b!4006629))

(assert (= (and d!1185537 c!692863) b!4006636))

(assert (= (and d!1185537 (not c!692863)) b!4006628))

(assert (= (and b!4006628 c!692864) b!4006632))

(assert (= (and b!4006628 (not c!692864)) b!4006641))

(assert (= (and b!4006641 (not res!1628200)) b!4006635))

(assert (= (and b!4006635 res!1628199) b!4006638))

(assert (= (and b!4006638 res!1628202) b!4006640))

(assert (= (and b!4006640 res!1628197) b!4006630))

(assert (= (and b!4006635 (not res!1628198)) b!4006637))

(assert (= (and b!4006637 res!1628204) b!4006631))

(assert (= (and b!4006631 (not res!1628203)) b!4006633))

(assert (= (and b!4006633 (not res!1628201)) b!4006634))

(assert (= (or b!4006636 b!4006631 b!4006638) bm!286207))

(declare-fun m!4590115 () Bool)

(assert (=> b!4006630 m!4590115))

(declare-fun m!4590117 () Bool)

(assert (=> b!4006633 m!4590117))

(assert (=> b!4006633 m!4590117))

(declare-fun m!4590119 () Bool)

(assert (=> b!4006633 m!4590119))

(assert (=> d!1185537 m!4588603))

(assert (=> d!1185537 m!4588737))

(assert (=> b!4006634 m!4590115))

(assert (=> b!4006640 m!4590117))

(assert (=> b!4006640 m!4590117))

(assert (=> b!4006640 m!4590119))

(assert (=> b!4006629 m!4590115))

(assert (=> b!4006629 m!4590115))

(declare-fun m!4590121 () Bool)

(assert (=> b!4006629 m!4590121))

(assert (=> b!4006629 m!4590117))

(assert (=> b!4006629 m!4590121))

(assert (=> b!4006629 m!4590117))

(declare-fun m!4590125 () Bool)

(assert (=> b!4006629 m!4590125))

(assert (=> b!4006639 m!4588743))

(assert (=> bm!286207 m!4588603))

(assert (=> b!4005498 d!1185537))

(assert (=> b!4005498 d!1185229))

(assert (=> b!4005498 d!1185321))

(assert (=> b!4005498 d!1185093))

(declare-fun d!1185545 () Bool)

(declare-fun e!2484676 () Bool)

(assert (=> d!1185545 e!2484676))

(declare-fun res!1628210 () Bool)

(assert (=> d!1185545 (=> (not res!1628210) (not e!2484676))))

(declare-fun lt!1417493 () List!43006)

(assert (=> d!1185545 (= res!1628210 (= (content!6500 lt!1417493) ((_ map or) (content!6500 (t!332477 lt!1416911)) (content!6500 suffix!1299))))))

(declare-fun e!2484677 () List!43006)

(assert (=> d!1185545 (= lt!1417493 e!2484677)))

(declare-fun c!692866 () Bool)

(assert (=> d!1185545 (= c!692866 ((_ is Nil!42882) (t!332477 lt!1416911)))))

(assert (=> d!1185545 (= (++!11218 (t!332477 lt!1416911) suffix!1299) lt!1417493)))

(declare-fun b!4006646 () Bool)

(assert (=> b!4006646 (= e!2484677 suffix!1299)))

(declare-fun b!4006649 () Bool)

(assert (=> b!4006649 (= e!2484676 (or (not (= suffix!1299 Nil!42882)) (= lt!1417493 (t!332477 lt!1416911))))))

(declare-fun b!4006648 () Bool)

(declare-fun res!1628209 () Bool)

(assert (=> b!4006648 (=> (not res!1628209) (not e!2484676))))

(assert (=> b!4006648 (= res!1628209 (= (size!32062 lt!1417493) (+ (size!32062 (t!332477 lt!1416911)) (size!32062 suffix!1299))))))

(declare-fun b!4006647 () Bool)

(assert (=> b!4006647 (= e!2484677 (Cons!42882 (h!48302 (t!332477 lt!1416911)) (++!11218 (t!332477 (t!332477 lt!1416911)) suffix!1299)))))

(assert (= (and d!1185545 c!692866) b!4006646))

(assert (= (and d!1185545 (not c!692866)) b!4006647))

(assert (= (and d!1185545 res!1628210) b!4006648))

(assert (= (and b!4006648 res!1628209) b!4006649))

(declare-fun m!4590133 () Bool)

(assert (=> d!1185545 m!4590133))

(assert (=> d!1185545 m!4590017))

(assert (=> d!1185545 m!4588795))

(declare-fun m!4590135 () Bool)

(assert (=> b!4006648 m!4590135))

(assert (=> b!4006648 m!4589891))

(assert (=> b!4006648 m!4588193))

(declare-fun m!4590137 () Bool)

(assert (=> b!4006647 m!4590137))

(assert (=> b!4005723 d!1185545))

(declare-fun d!1185551 () Bool)

(declare-fun lt!1417494 () Int)

(assert (=> d!1185551 (>= lt!1417494 0)))

(declare-fun e!2484678 () Int)

(assert (=> d!1185551 (= lt!1417494 e!2484678)))

(declare-fun c!692867 () Bool)

(assert (=> d!1185551 (= c!692867 ((_ is Nil!42882) lt!1417074))))

(assert (=> d!1185551 (= (size!32062 lt!1417074) lt!1417494)))

(declare-fun b!4006650 () Bool)

(assert (=> b!4006650 (= e!2484678 0)))

(declare-fun b!4006651 () Bool)

(assert (=> b!4006651 (= e!2484678 (+ 1 (size!32062 (t!332477 lt!1417074))))))

(assert (= (and d!1185551 c!692867) b!4006650))

(assert (= (and d!1185551 (not c!692867)) b!4006651))

(declare-fun m!4590139 () Bool)

(assert (=> b!4006651 m!4590139))

(assert (=> b!4005720 d!1185551))

(assert (=> b!4005720 d!1184779))

(declare-fun d!1185553 () Bool)

(declare-fun lt!1417495 () Int)

(assert (=> d!1185553 (>= lt!1417495 0)))

(declare-fun e!2484679 () Int)

(assert (=> d!1185553 (= lt!1417495 e!2484679)))

(declare-fun c!692868 () Bool)

(assert (=> d!1185553 (= c!692868 ((_ is Nil!42882) lt!1416903))))

(assert (=> d!1185553 (= (size!32062 lt!1416903) lt!1417495)))

(declare-fun b!4006652 () Bool)

(assert (=> b!4006652 (= e!2484679 0)))

(declare-fun b!4006653 () Bool)

(assert (=> b!4006653 (= e!2484679 (+ 1 (size!32062 (t!332477 lt!1416903))))))

(assert (= (and d!1185553 c!692868) b!4006652))

(assert (= (and d!1185553 (not c!692868)) b!4006653))

(declare-fun m!4590141 () Bool)

(assert (=> b!4006653 m!4590141))

(assert (=> b!4005720 d!1185553))

(declare-fun d!1185555 () Bool)

(declare-fun e!2484680 () Bool)

(assert (=> d!1185555 e!2484680))

(declare-fun res!1628212 () Bool)

(assert (=> d!1185555 (=> (not res!1628212) (not e!2484680))))

(declare-fun lt!1417496 () List!43006)

(assert (=> d!1185555 (= res!1628212 (= (content!6500 lt!1417496) ((_ map or) (content!6500 (t!332477 lt!1416910)) (content!6500 lt!1416894))))))

(declare-fun e!2484681 () List!43006)

(assert (=> d!1185555 (= lt!1417496 e!2484681)))

(declare-fun c!692869 () Bool)

(assert (=> d!1185555 (= c!692869 ((_ is Nil!42882) (t!332477 lt!1416910)))))

(assert (=> d!1185555 (= (++!11218 (t!332477 lt!1416910) lt!1416894) lt!1417496)))

(declare-fun b!4006654 () Bool)

(assert (=> b!4006654 (= e!2484681 lt!1416894)))

(declare-fun b!4006657 () Bool)

(assert (=> b!4006657 (= e!2484680 (or (not (= lt!1416894 Nil!42882)) (= lt!1417496 (t!332477 lt!1416910))))))

(declare-fun b!4006656 () Bool)

(declare-fun res!1628211 () Bool)

(assert (=> b!4006656 (=> (not res!1628211) (not e!2484680))))

(assert (=> b!4006656 (= res!1628211 (= (size!32062 lt!1417496) (+ (size!32062 (t!332477 lt!1416910)) (size!32062 lt!1416894))))))

(declare-fun b!4006655 () Bool)

(assert (=> b!4006655 (= e!2484681 (Cons!42882 (h!48302 (t!332477 lt!1416910)) (++!11218 (t!332477 (t!332477 lt!1416910)) lt!1416894)))))

(assert (= (and d!1185555 c!692869) b!4006654))

(assert (= (and d!1185555 (not c!692869)) b!4006655))

(assert (= (and d!1185555 res!1628212) b!4006656))

(assert (= (and b!4006656 res!1628211) b!4006657))

(declare-fun m!4590143 () Bool)

(assert (=> d!1185555 m!4590143))

(assert (=> d!1185555 m!4589109))

(assert (=> d!1185555 m!4588713))

(declare-fun m!4590145 () Bool)

(assert (=> b!4006656 m!4590145))

(assert (=> b!4006656 m!4588285))

(assert (=> b!4006656 m!4588717))

(declare-fun m!4590147 () Bool)

(assert (=> b!4006655 m!4590147))

(assert (=> b!4005628 d!1185555))

(assert (=> b!4005766 d!1185461))

(assert (=> b!4005766 d!1185369))

(declare-fun b!4006659 () Bool)

(declare-fun res!1628213 () Bool)

(declare-fun e!2484683 () Bool)

(assert (=> b!4006659 (=> (not res!1628213) (not e!2484683))))

(assert (=> b!4006659 (= res!1628213 (= (head!8510 lt!1416910) (head!8510 (++!11218 prefix!494 suffix!1299))))))

(declare-fun b!4006661 () Bool)

(declare-fun e!2484684 () Bool)

(assert (=> b!4006661 (= e!2484684 (>= (size!32062 (++!11218 prefix!494 suffix!1299)) (size!32062 lt!1416910)))))

(declare-fun b!4006660 () Bool)

(assert (=> b!4006660 (= e!2484683 (isPrefix!3903 (tail!6242 lt!1416910) (tail!6242 (++!11218 prefix!494 suffix!1299))))))

(declare-fun d!1185557 () Bool)

(assert (=> d!1185557 e!2484684))

(declare-fun res!1628216 () Bool)

(assert (=> d!1185557 (=> res!1628216 e!2484684)))

(declare-fun lt!1417497 () Bool)

(assert (=> d!1185557 (= res!1628216 (not lt!1417497))))

(declare-fun e!2484682 () Bool)

(assert (=> d!1185557 (= lt!1417497 e!2484682)))

(declare-fun res!1628214 () Bool)

(assert (=> d!1185557 (=> res!1628214 e!2484682)))

(assert (=> d!1185557 (= res!1628214 ((_ is Nil!42882) lt!1416910))))

(assert (=> d!1185557 (= (isPrefix!3903 lt!1416910 (++!11218 prefix!494 suffix!1299)) lt!1417497)))

(declare-fun b!4006658 () Bool)

(assert (=> b!4006658 (= e!2484682 e!2484683)))

(declare-fun res!1628215 () Bool)

(assert (=> b!4006658 (=> (not res!1628215) (not e!2484683))))

(assert (=> b!4006658 (= res!1628215 (not ((_ is Nil!42882) (++!11218 prefix!494 suffix!1299))))))

(assert (= (and d!1185557 (not res!1628214)) b!4006658))

(assert (= (and b!4006658 res!1628215) b!4006659))

(assert (= (and b!4006659 res!1628213) b!4006660))

(assert (= (and d!1185557 (not res!1628216)) b!4006661))

(assert (=> b!4006659 m!4588383))

(assert (=> b!4006659 m!4588231))

(assert (=> b!4006659 m!4589329))

(assert (=> b!4006661 m!4588231))

(assert (=> b!4006661 m!4589331))

(assert (=> b!4006661 m!4588245))

(assert (=> b!4006660 m!4588389))

(assert (=> b!4006660 m!4588231))

(assert (=> b!4006660 m!4589333))

(assert (=> b!4006660 m!4588389))

(assert (=> b!4006660 m!4589333))

(declare-fun m!4590149 () Bool)

(assert (=> b!4006660 m!4590149))

(assert (=> d!1184917 d!1185557))

(assert (=> d!1184917 d!1184921))

(declare-fun d!1185559 () Bool)

(assert (=> d!1185559 (isPrefix!3903 lt!1416910 (++!11218 prefix!494 suffix!1299))))

(assert (=> d!1185559 true))

(declare-fun _$58!522 () Unit!61877)

(assert (=> d!1185559 (= (choose!24178 lt!1416910 prefix!494 suffix!1299) _$58!522)))

(declare-fun bs!589100 () Bool)

(assert (= bs!589100 d!1185559))

(assert (=> bs!589100 m!4588231))

(assert (=> bs!589100 m!4588231))

(assert (=> bs!589100 m!4588757))

(assert (=> d!1184917 d!1185559))

(assert (=> d!1184917 d!1184907))

(declare-fun d!1185561 () Bool)

(declare-fun lt!1417498 () Int)

(assert (=> d!1185561 (>= lt!1417498 0)))

(declare-fun e!2484685 () Int)

(assert (=> d!1185561 (= lt!1417498 e!2484685)))

(declare-fun c!692870 () Bool)

(assert (=> d!1185561 (= c!692870 ((_ is Nil!42882) lt!1417073))))

(assert (=> d!1185561 (= (size!32062 lt!1417073) lt!1417498)))

(declare-fun b!4006662 () Bool)

(assert (=> b!4006662 (= e!2484685 0)))

(declare-fun b!4006663 () Bool)

(assert (=> b!4006663 (= e!2484685 (+ 1 (size!32062 (t!332477 lt!1417073))))))

(assert (= (and d!1185561 c!692870) b!4006662))

(assert (= (and d!1185561 (not c!692870)) b!4006663))

(declare-fun m!4590151 () Bool)

(assert (=> b!4006663 m!4590151))

(assert (=> b!4005716 d!1185561))

(assert (=> b!4005716 d!1184781))

(assert (=> b!4005716 d!1184937))

(declare-fun d!1185563 () Bool)

(declare-fun e!2484688 () Bool)

(assert (=> d!1185563 e!2484688))

(declare-fun res!1628218 () Bool)

(assert (=> d!1185563 (=> (not res!1628218) (not e!2484688))))

(declare-fun lt!1417499 () List!43006)

(assert (=> d!1185563 (= res!1628218 (= (content!6500 lt!1417499) ((_ map or) (content!6500 (t!332477 prefix!494)) (content!6500 newSuffix!27))))))

(declare-fun e!2484689 () List!43006)

(assert (=> d!1185563 (= lt!1417499 e!2484689)))

(declare-fun c!692873 () Bool)

(assert (=> d!1185563 (= c!692873 ((_ is Nil!42882) (t!332477 prefix!494)))))

(assert (=> d!1185563 (= (++!11218 (t!332477 prefix!494) newSuffix!27) lt!1417499)))

(declare-fun b!4006668 () Bool)

(assert (=> b!4006668 (= e!2484689 newSuffix!27)))

(declare-fun b!4006671 () Bool)

(assert (=> b!4006671 (= e!2484688 (or (not (= newSuffix!27 Nil!42882)) (= lt!1417499 (t!332477 prefix!494))))))

(declare-fun b!4006670 () Bool)

(declare-fun res!1628217 () Bool)

(assert (=> b!4006670 (=> (not res!1628217) (not e!2484688))))

(assert (=> b!4006670 (= res!1628217 (= (size!32062 lt!1417499) (+ (size!32062 (t!332477 prefix!494)) (size!32062 newSuffix!27))))))

(declare-fun b!4006669 () Bool)

(assert (=> b!4006669 (= e!2484689 (Cons!42882 (h!48302 (t!332477 prefix!494)) (++!11218 (t!332477 (t!332477 prefix!494)) newSuffix!27)))))

(assert (= (and d!1185563 c!692873) b!4006668))

(assert (= (and d!1185563 (not c!692873)) b!4006669))

(assert (= (and d!1185563 res!1628218) b!4006670))

(assert (= (and b!4006670 res!1628217) b!4006671))

(declare-fun m!4590153 () Bool)

(assert (=> d!1185563 m!4590153))

(assert (=> d!1185563 m!4589067))

(assert (=> d!1185563 m!4588693))

(declare-fun m!4590155 () Bool)

(assert (=> b!4006670 m!4590155))

(assert (=> b!4006670 m!4588287))

(assert (=> b!4006670 m!4588195))

(declare-fun m!4590157 () Bool)

(assert (=> b!4006669 m!4590157))

(assert (=> b!4005620 d!1185563))

(declare-fun e!2484697 () Bool)

(assert (=> b!4005802 (= tp!1219152 e!2484697)))

(declare-fun b!4006683 () Bool)

(declare-fun tp!1219169 () Bool)

(assert (=> b!4006683 (= e!2484697 tp!1219169)))

(declare-fun b!4006682 () Bool)

(declare-fun tp!1219171 () Bool)

(declare-fun tp!1219168 () Bool)

(assert (=> b!4006682 (= e!2484697 (and tp!1219171 tp!1219168))))

(declare-fun b!4006684 () Bool)

(declare-fun tp!1219167 () Bool)

(declare-fun tp!1219170 () Bool)

(assert (=> b!4006684 (= e!2484697 (and tp!1219167 tp!1219170))))

(declare-fun b!4006681 () Bool)

(assert (=> b!4006681 (= e!2484697 tp_is_empty!20413)))

(assert (= (and b!4005802 ((_ is ElementMatch!11721) (reg!12050 (regex!6816 (rule!9852 token!484))))) b!4006681))

(assert (= (and b!4005802 ((_ is Concat!18768) (reg!12050 (regex!6816 (rule!9852 token!484))))) b!4006682))

(assert (= (and b!4005802 ((_ is Star!11721) (reg!12050 (regex!6816 (rule!9852 token!484))))) b!4006683))

(assert (= (and b!4005802 ((_ is Union!11721) (reg!12050 (regex!6816 (rule!9852 token!484))))) b!4006684))

(declare-fun e!2484699 () Bool)

(assert (=> b!4005801 (= tp!1219154 e!2484699)))

(declare-fun b!4006689 () Bool)

(declare-fun tp!1219174 () Bool)

(assert (=> b!4006689 (= e!2484699 tp!1219174)))

(declare-fun b!4006688 () Bool)

(declare-fun tp!1219176 () Bool)

(declare-fun tp!1219173 () Bool)

(assert (=> b!4006688 (= e!2484699 (and tp!1219176 tp!1219173))))

(declare-fun b!4006690 () Bool)

(declare-fun tp!1219172 () Bool)

(declare-fun tp!1219175 () Bool)

(assert (=> b!4006690 (= e!2484699 (and tp!1219172 tp!1219175))))

(declare-fun b!4006687 () Bool)

(assert (=> b!4006687 (= e!2484699 tp_is_empty!20413)))

(assert (= (and b!4005801 ((_ is ElementMatch!11721) (regOne!23954 (regex!6816 (rule!9852 token!484))))) b!4006687))

(assert (= (and b!4005801 ((_ is Concat!18768) (regOne!23954 (regex!6816 (rule!9852 token!484))))) b!4006688))

(assert (= (and b!4005801 ((_ is Star!11721) (regOne!23954 (regex!6816 (rule!9852 token!484))))) b!4006689))

(assert (= (and b!4005801 ((_ is Union!11721) (regOne!23954 (regex!6816 (rule!9852 token!484))))) b!4006690))

(declare-fun e!2484701 () Bool)

(assert (=> b!4005801 (= tp!1219151 e!2484701)))

(declare-fun b!4006695 () Bool)

(declare-fun tp!1219179 () Bool)

(assert (=> b!4006695 (= e!2484701 tp!1219179)))

(declare-fun b!4006694 () Bool)

(declare-fun tp!1219181 () Bool)

(declare-fun tp!1219178 () Bool)

(assert (=> b!4006694 (= e!2484701 (and tp!1219181 tp!1219178))))

(declare-fun b!4006696 () Bool)

(declare-fun tp!1219177 () Bool)

(declare-fun tp!1219180 () Bool)

(assert (=> b!4006696 (= e!2484701 (and tp!1219177 tp!1219180))))

(declare-fun b!4006693 () Bool)

(assert (=> b!4006693 (= e!2484701 tp_is_empty!20413)))

(assert (= (and b!4005801 ((_ is ElementMatch!11721) (regTwo!23954 (regex!6816 (rule!9852 token!484))))) b!4006693))

(assert (= (and b!4005801 ((_ is Concat!18768) (regTwo!23954 (regex!6816 (rule!9852 token!484))))) b!4006694))

(assert (= (and b!4005801 ((_ is Star!11721) (regTwo!23954 (regex!6816 (rule!9852 token!484))))) b!4006695))

(assert (= (and b!4005801 ((_ is Union!11721) (regTwo!23954 (regex!6816 (rule!9852 token!484))))) b!4006696))

(declare-fun e!2484702 () Bool)

(assert (=> b!4005806 (= tp!1219160 e!2484702)))

(declare-fun b!4006699 () Bool)

(declare-fun tp!1219184 () Bool)

(assert (=> b!4006699 (= e!2484702 tp!1219184)))

(declare-fun b!4006698 () Bool)

(declare-fun tp!1219186 () Bool)

(declare-fun tp!1219183 () Bool)

(assert (=> b!4006698 (= e!2484702 (and tp!1219186 tp!1219183))))

(declare-fun b!4006700 () Bool)

(declare-fun tp!1219182 () Bool)

(declare-fun tp!1219185 () Bool)

(assert (=> b!4006700 (= e!2484702 (and tp!1219182 tp!1219185))))

(declare-fun b!4006697 () Bool)

(assert (=> b!4006697 (= e!2484702 tp_is_empty!20413)))

(assert (= (and b!4005806 ((_ is ElementMatch!11721) (regOne!23954 (regex!6816 (h!48304 rules!2999))))) b!4006697))

(assert (= (and b!4005806 ((_ is Concat!18768) (regOne!23954 (regex!6816 (h!48304 rules!2999))))) b!4006698))

(assert (= (and b!4005806 ((_ is Star!11721) (regOne!23954 (regex!6816 (h!48304 rules!2999))))) b!4006699))

(assert (= (and b!4005806 ((_ is Union!11721) (regOne!23954 (regex!6816 (h!48304 rules!2999))))) b!4006700))

(declare-fun e!2484705 () Bool)

(assert (=> b!4005806 (= tp!1219157 e!2484705)))

(declare-fun b!4006707 () Bool)

(declare-fun tp!1219189 () Bool)

(assert (=> b!4006707 (= e!2484705 tp!1219189)))

(declare-fun b!4006706 () Bool)

(declare-fun tp!1219191 () Bool)

(declare-fun tp!1219188 () Bool)

(assert (=> b!4006706 (= e!2484705 (and tp!1219191 tp!1219188))))

(declare-fun b!4006708 () Bool)

(declare-fun tp!1219187 () Bool)

(declare-fun tp!1219190 () Bool)

(assert (=> b!4006708 (= e!2484705 (and tp!1219187 tp!1219190))))

(declare-fun b!4006705 () Bool)

(assert (=> b!4006705 (= e!2484705 tp_is_empty!20413)))

(assert (= (and b!4005806 ((_ is ElementMatch!11721) (regTwo!23954 (regex!6816 (h!48304 rules!2999))))) b!4006705))

(assert (= (and b!4005806 ((_ is Concat!18768) (regTwo!23954 (regex!6816 (h!48304 rules!2999))))) b!4006706))

(assert (= (and b!4005806 ((_ is Star!11721) (regTwo!23954 (regex!6816 (h!48304 rules!2999))))) b!4006707))

(assert (= (and b!4005806 ((_ is Union!11721) (regTwo!23954 (regex!6816 (h!48304 rules!2999))))) b!4006708))

(declare-fun b!4006709 () Bool)

(declare-fun e!2484706 () Bool)

(declare-fun tp!1219192 () Bool)

(assert (=> b!4006709 (= e!2484706 (and tp_is_empty!20413 tp!1219192))))

(assert (=> b!4005774 (= tp!1219123 e!2484706)))

(assert (= (and b!4005774 ((_ is Cons!42882) (t!332477 (t!332477 newSuffix!27)))) b!4006709))

(declare-fun tp!1219204 () Bool)

(declare-fun e!2484713 () Bool)

(declare-fun tp!1219205 () Bool)

(declare-fun b!4006722 () Bool)

(assert (=> b!4006722 (= e!2484713 (and (inv!57272 (left!32357 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))) tp!1219205 (inv!57272 (right!32687 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))) tp!1219204))))

(declare-fun b!4006724 () Bool)

(declare-fun e!2484712 () Bool)

(declare-fun tp!1219206 () Bool)

(assert (=> b!4006724 (= e!2484712 tp!1219206)))

(declare-fun b!4006723 () Bool)

(declare-fun inv!57276 (IArray!26059) Bool)

(assert (=> b!4006723 (= e!2484713 (and (inv!57276 (xs!16333 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))) e!2484712))))

(assert (=> b!4005275 (= tp!1219077 (and (inv!57272 (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484)))) e!2484713))))

(assert (= (and b!4005275 ((_ is Node!13027) (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))) b!4006722))

(assert (= b!4006723 b!4006724))

(assert (= (and b!4005275 ((_ is Leaf!20142) (c!692546 (dynLambda!18183 (toChars!9171 (transformation!6816 (rule!9852 token!484))) (value!214890 token!484))))) b!4006723))

(declare-fun m!4590185 () Bool)

(assert (=> b!4006722 m!4590185))

(declare-fun m!4590187 () Bool)

(assert (=> b!4006722 m!4590187))

(declare-fun m!4590189 () Bool)

(assert (=> b!4006723 m!4590189))

(assert (=> b!4005275 m!4588291))

(declare-fun e!2484716 () Bool)

(assert (=> b!4005803 (= tp!1219150 e!2484716)))

(declare-fun b!4006735 () Bool)

(declare-fun tp!1219219 () Bool)

(assert (=> b!4006735 (= e!2484716 tp!1219219)))

(declare-fun b!4006734 () Bool)

(declare-fun tp!1219221 () Bool)

(declare-fun tp!1219218 () Bool)

(assert (=> b!4006734 (= e!2484716 (and tp!1219221 tp!1219218))))

(declare-fun b!4006736 () Bool)

(declare-fun tp!1219217 () Bool)

(declare-fun tp!1219220 () Bool)

(assert (=> b!4006736 (= e!2484716 (and tp!1219217 tp!1219220))))

(declare-fun b!4006733 () Bool)

(assert (=> b!4006733 (= e!2484716 tp_is_empty!20413)))

(assert (= (and b!4005803 ((_ is ElementMatch!11721) (regOne!23955 (regex!6816 (rule!9852 token!484))))) b!4006733))

(assert (= (and b!4005803 ((_ is Concat!18768) (regOne!23955 (regex!6816 (rule!9852 token!484))))) b!4006734))

(assert (= (and b!4005803 ((_ is Star!11721) (regOne!23955 (regex!6816 (rule!9852 token!484))))) b!4006735))

(assert (= (and b!4005803 ((_ is Union!11721) (regOne!23955 (regex!6816 (rule!9852 token!484))))) b!4006736))

(declare-fun e!2484718 () Bool)

(assert (=> b!4005803 (= tp!1219153 e!2484718)))

(declare-fun b!4006743 () Bool)

(declare-fun tp!1219229 () Bool)

(assert (=> b!4006743 (= e!2484718 tp!1219229)))

(declare-fun b!4006742 () Bool)

(declare-fun tp!1219231 () Bool)

(declare-fun tp!1219228 () Bool)

(assert (=> b!4006742 (= e!2484718 (and tp!1219231 tp!1219228))))

(declare-fun b!4006744 () Bool)

(declare-fun tp!1219227 () Bool)

(declare-fun tp!1219230 () Bool)

(assert (=> b!4006744 (= e!2484718 (and tp!1219227 tp!1219230))))

(declare-fun b!4006741 () Bool)

(assert (=> b!4006741 (= e!2484718 tp_is_empty!20413)))

(assert (= (and b!4005803 ((_ is ElementMatch!11721) (regTwo!23955 (regex!6816 (rule!9852 token!484))))) b!4006741))

(assert (= (and b!4005803 ((_ is Concat!18768) (regTwo!23955 (regex!6816 (rule!9852 token!484))))) b!4006742))

(assert (= (and b!4005803 ((_ is Star!11721) (regTwo!23955 (regex!6816 (rule!9852 token!484))))) b!4006743))

(assert (= (and b!4005803 ((_ is Union!11721) (regTwo!23955 (regex!6816 (rule!9852 token!484))))) b!4006744))

(declare-fun b!4006750 () Bool)

(declare-fun e!2484721 () Bool)

(declare-fun tp!1219238 () Bool)

(assert (=> b!4006750 (= e!2484721 (and tp_is_empty!20413 tp!1219238))))

(assert (=> b!4005789 (= tp!1219139 e!2484721)))

(assert (= (and b!4005789 ((_ is Cons!42882) (t!332477 (t!332477 newSuffixResult!27)))) b!4006750))

(declare-fun e!2484722 () Bool)

(assert (=> b!4005784 (= tp!1219132 e!2484722)))

(declare-fun b!4006753 () Bool)

(declare-fun tp!1219241 () Bool)

(assert (=> b!4006753 (= e!2484722 tp!1219241)))

(declare-fun b!4006752 () Bool)

(declare-fun tp!1219243 () Bool)

(declare-fun tp!1219240 () Bool)

(assert (=> b!4006752 (= e!2484722 (and tp!1219243 tp!1219240))))

(declare-fun b!4006754 () Bool)

(declare-fun tp!1219239 () Bool)

(declare-fun tp!1219242 () Bool)

(assert (=> b!4006754 (= e!2484722 (and tp!1219239 tp!1219242))))

(declare-fun b!4006751 () Bool)

(assert (=> b!4006751 (= e!2484722 tp_is_empty!20413)))

(assert (= (and b!4005784 ((_ is ElementMatch!11721) (regex!6816 (h!48304 (t!332479 rules!2999))))) b!4006751))

(assert (= (and b!4005784 ((_ is Concat!18768) (regex!6816 (h!48304 (t!332479 rules!2999))))) b!4006752))

(assert (= (and b!4005784 ((_ is Star!11721) (regex!6816 (h!48304 (t!332479 rules!2999))))) b!4006753))

(assert (= (and b!4005784 ((_ is Union!11721) (regex!6816 (h!48304 (t!332479 rules!2999))))) b!4006754))

(declare-fun b!4006757 () Bool)

(declare-fun e!2484725 () Bool)

(declare-fun tp!1219246 () Bool)

(assert (=> b!4006757 (= e!2484725 (and tp_is_empty!20413 tp!1219246))))

(assert (=> b!4005786 (= tp!1219136 e!2484725)))

(assert (= (and b!4005786 ((_ is Cons!42882) (t!332477 (originalCharacters!7416 token!484)))) b!4006757))

(declare-fun b!4006764 () Bool)

(declare-fun b_free!111433 () Bool)

(declare-fun b_next!112137 () Bool)

(assert (=> b!4006764 (= b_free!111433 (not b_next!112137))))

(declare-fun tb!240825 () Bool)

(declare-fun t!332581 () Bool)

(assert (=> (and b!4006764 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332581) tb!240825))

(declare-fun result!291892 () Bool)

(assert (= result!291892 result!291884))

(assert (=> d!1185463 t!332581))

(declare-fun t!332583 () Bool)

(declare-fun tb!240827 () Bool)

(assert (=> (and b!4006764 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332583) tb!240827))

(declare-fun result!291896 () Bool)

(assert (= result!291896 result!291866))

(assert (=> d!1185317 t!332583))

(declare-fun tb!240829 () Bool)

(declare-fun t!332585 () Bool)

(assert (=> (and b!4006764 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332585) tb!240829))

(declare-fun result!291898 () Bool)

(assert (= result!291898 result!291836))

(assert (=> d!1185161 t!332585))

(declare-fun t!332587 () Bool)

(declare-fun tb!240831 () Bool)

(assert (=> (and b!4006764 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 token!484)))) t!332587) tb!240831))

(declare-fun result!291900 () Bool)

(assert (= result!291900 result!291780))

(assert (=> d!1184793 t!332587))

(assert (=> d!1185307 t!332583))

(declare-fun b_and!307735 () Bool)

(declare-fun tp!1219255 () Bool)

(assert (=> b!4006764 (= tp!1219255 (and (=> t!332581 result!291892) (=> t!332587 result!291900) (=> t!332585 result!291898) (=> t!332583 result!291896) b_and!307735))))

(declare-fun b_free!111435 () Bool)

(declare-fun b_next!112139 () Bool)

(assert (=> b!4006764 (= b_free!111435 (not b_next!112139))))

(declare-fun t!332589 () Bool)

(declare-fun tb!240833 () Bool)

(assert (=> (and b!4006764 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332589) tb!240833))

(declare-fun result!291902 () Bool)

(assert (= result!291902 result!291774))

(assert (=> d!1184785 t!332589))

(declare-fun t!332591 () Bool)

(declare-fun tb!240835 () Bool)

(assert (=> (and b!4006764 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toChars!9171 (transformation!6816 (rule!9852 token!484)))) t!332591) tb!240835))

(declare-fun result!291904 () Bool)

(assert (= result!291904 result!291860))

(assert (=> d!1185307 t!332591))

(declare-fun t!332593 () Bool)

(declare-fun tb!240837 () Bool)

(assert (=> (and b!4006764 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417022)))))) t!332593) tb!240837))

(declare-fun result!291906 () Bool)

(assert (= result!291906 result!291830))

(assert (=> d!1185145 t!332593))

(assert (=> b!4005597 t!332589))

(declare-fun tb!240839 () Bool)

(declare-fun t!332595 () Bool)

(assert (=> (and b!4006764 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toChars!9171 (transformation!6816 (rule!9852 (_1!24153 (get!14094 lt!1417068)))))) t!332595) tb!240839))

(declare-fun result!291908 () Bool)

(assert (= result!291908 result!291842))

(assert (=> d!1185191 t!332595))

(declare-fun tp!1219254 () Bool)

(declare-fun b_and!307737 () Bool)

(assert (=> b!4006764 (= tp!1219254 (and (=> t!332595 result!291908) (=> t!332593 result!291906) (=> t!332589 result!291902) (=> t!332591 result!291904) b_and!307737))))

(declare-fun e!2484730 () Bool)

(assert (=> b!4006764 (= e!2484730 (and tp!1219255 tp!1219254))))

(declare-fun e!2484729 () Bool)

(declare-fun b!4006763 () Bool)

(declare-fun tp!1219252 () Bool)

(assert (=> b!4006763 (= e!2484729 (and tp!1219252 (inv!57265 (tag!7676 (h!48304 (t!332479 (t!332479 rules!2999))))) (inv!57268 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) e!2484730))))

(declare-fun b!4006762 () Bool)

(declare-fun e!2484728 () Bool)

(declare-fun tp!1219253 () Bool)

(assert (=> b!4006762 (= e!2484728 (and e!2484729 tp!1219253))))

(assert (=> b!4005783 (= tp!1219133 e!2484728)))

(assert (= b!4006763 b!4006764))

(assert (= b!4006762 b!4006763))

(assert (= (and b!4005783 ((_ is Cons!42884) (t!332479 (t!332479 rules!2999)))) b!4006762))

(declare-fun m!4590191 () Bool)

(assert (=> b!4006763 m!4590191))

(declare-fun m!4590193 () Bool)

(assert (=> b!4006763 m!4590193))

(declare-fun b!4006774 () Bool)

(declare-fun e!2484736 () Bool)

(declare-fun tp!1219263 () Bool)

(assert (=> b!4006774 (= e!2484736 (and tp_is_empty!20413 tp!1219263))))

(assert (=> b!4005788 (= tp!1219138 e!2484736)))

(assert (= (and b!4005788 ((_ is Cons!42882) (t!332477 (t!332477 prefix!494)))) b!4006774))

(declare-fun e!2484739 () Bool)

(assert (=> b!4005807 (= tp!1219158 e!2484739)))

(declare-fun b!4006780 () Bool)

(declare-fun tp!1219269 () Bool)

(assert (=> b!4006780 (= e!2484739 tp!1219269)))

(declare-fun b!4006779 () Bool)

(declare-fun tp!1219271 () Bool)

(declare-fun tp!1219268 () Bool)

(assert (=> b!4006779 (= e!2484739 (and tp!1219271 tp!1219268))))

(declare-fun b!4006781 () Bool)

(declare-fun tp!1219267 () Bool)

(declare-fun tp!1219270 () Bool)

(assert (=> b!4006781 (= e!2484739 (and tp!1219267 tp!1219270))))

(declare-fun b!4006778 () Bool)

(assert (=> b!4006778 (= e!2484739 tp_is_empty!20413)))

(assert (= (and b!4005807 ((_ is ElementMatch!11721) (reg!12050 (regex!6816 (h!48304 rules!2999))))) b!4006778))

(assert (= (and b!4005807 ((_ is Concat!18768) (reg!12050 (regex!6816 (h!48304 rules!2999))))) b!4006779))

(assert (= (and b!4005807 ((_ is Star!11721) (reg!12050 (regex!6816 (h!48304 rules!2999))))) b!4006780))

(assert (= (and b!4005807 ((_ is Union!11721) (reg!12050 (regex!6816 (h!48304 rules!2999))))) b!4006781))

(declare-fun b!4006782 () Bool)

(declare-fun e!2484740 () Bool)

(declare-fun tp!1219272 () Bool)

(assert (=> b!4006782 (= e!2484740 (and tp_is_empty!20413 tp!1219272))))

(assert (=> b!4005787 (= tp!1219137 e!2484740)))

(assert (= (and b!4005787 ((_ is Cons!42882) (t!332477 (t!332477 suffixResult!105)))) b!4006782))

(declare-fun b!4006783 () Bool)

(declare-fun e!2484741 () Bool)

(declare-fun tp!1219273 () Bool)

(assert (=> b!4006783 (= e!2484741 (and tp_is_empty!20413 tp!1219273))))

(assert (=> b!4005804 (= tp!1219155 e!2484741)))

(assert (= (and b!4005804 ((_ is Cons!42882) (t!332477 (t!332477 suffix!1299)))) b!4006783))

(declare-fun e!2484743 () Bool)

(assert (=> b!4005808 (= tp!1219156 e!2484743)))

(declare-fun b!4006790 () Bool)

(declare-fun tp!1219281 () Bool)

(assert (=> b!4006790 (= e!2484743 tp!1219281)))

(declare-fun b!4006789 () Bool)

(declare-fun tp!1219283 () Bool)

(declare-fun tp!1219280 () Bool)

(assert (=> b!4006789 (= e!2484743 (and tp!1219283 tp!1219280))))

(declare-fun b!4006791 () Bool)

(declare-fun tp!1219279 () Bool)

(declare-fun tp!1219282 () Bool)

(assert (=> b!4006791 (= e!2484743 (and tp!1219279 tp!1219282))))

(declare-fun b!4006788 () Bool)

(assert (=> b!4006788 (= e!2484743 tp_is_empty!20413)))

(assert (= (and b!4005808 ((_ is ElementMatch!11721) (regOne!23955 (regex!6816 (h!48304 rules!2999))))) b!4006788))

(assert (= (and b!4005808 ((_ is Concat!18768) (regOne!23955 (regex!6816 (h!48304 rules!2999))))) b!4006789))

(assert (= (and b!4005808 ((_ is Star!11721) (regOne!23955 (regex!6816 (h!48304 rules!2999))))) b!4006790))

(assert (= (and b!4005808 ((_ is Union!11721) (regOne!23955 (regex!6816 (h!48304 rules!2999))))) b!4006791))

(declare-fun e!2484745 () Bool)

(assert (=> b!4005808 (= tp!1219159 e!2484745)))

(declare-fun b!4006794 () Bool)

(declare-fun tp!1219287 () Bool)

(assert (=> b!4006794 (= e!2484745 tp!1219287)))

(declare-fun b!4006793 () Bool)

(declare-fun tp!1219291 () Bool)

(declare-fun tp!1219286 () Bool)

(assert (=> b!4006793 (= e!2484745 (and tp!1219291 tp!1219286))))

(declare-fun b!4006795 () Bool)

(declare-fun tp!1219285 () Bool)

(declare-fun tp!1219288 () Bool)

(assert (=> b!4006795 (= e!2484745 (and tp!1219285 tp!1219288))))

(declare-fun b!4006792 () Bool)

(assert (=> b!4006792 (= e!2484745 tp_is_empty!20413)))

(assert (= (and b!4005808 ((_ is ElementMatch!11721) (regTwo!23955 (regex!6816 (h!48304 rules!2999))))) b!4006792))

(assert (= (and b!4005808 ((_ is Concat!18768) (regTwo!23955 (regex!6816 (h!48304 rules!2999))))) b!4006793))

(assert (= (and b!4005808 ((_ is Star!11721) (regTwo!23955 (regex!6816 (h!48304 rules!2999))))) b!4006794))

(assert (= (and b!4005808 ((_ is Union!11721) (regTwo!23955 (regex!6816 (h!48304 rules!2999))))) b!4006795))

(declare-fun b_lambda!116875 () Bool)

(assert (= b_lambda!116863 (or (and b!4005248 b_free!111419) (and b!4005244 b_free!111423 (= (toChars!9171 (transformation!6816 (h!48304 rules!2999))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111431 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) (and b!4006764 b_free!111435 (= (toChars!9171 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toChars!9171 (transformation!6816 (rule!9852 token!484))))) b_lambda!116875)))

(declare-fun b_lambda!116877 () Bool)

(assert (= b_lambda!116867 (or (and b!4005248 b_free!111417) (and b!4005244 b_free!111421 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111429 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) (and b!4006764 b_free!111433 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) b_lambda!116877)))

(declare-fun b_lambda!116879 () Bool)

(assert (= b_lambda!116865 (or (and b!4005248 b_free!111417) (and b!4005244 b_free!111421 (= (toValue!9312 (transformation!6816 (h!48304 rules!2999))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) (and b!4005785 b_free!111429 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 rules!2999)))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) (and b!4006764 b_free!111433 (= (toValue!9312 (transformation!6816 (h!48304 (t!332479 (t!332479 rules!2999))))) (toValue!9312 (transformation!6816 (rule!9852 token!484))))) b_lambda!116879)))

(check-sat (not b!4006184) (not b!4006348) (not b!4005275) (not b!4006698) (not b!4006544) (not b!4006656) (not b!4006653) (not d!1185133) (not b!4006648) (not b!4006565) (not b!4006107) (not b!4006190) (not b!4006342) (not b!4006503) (not b!4006035) (not d!1185425) (not tb!240795) (not b!4006025) (not b!4006790) (not b!4006043) (not b!4006781) (not b_next!112125) (not d!1185163) (not d!1185101) (not b!4006057) (not b!4006091) (not d!1185185) (not b!4006042) (not b!4005957) (not d!1185153) (not b!4006038) (not b!4006156) (not b!4006724) (not d!1185563) (not bm!286191) (not b!4006744) b_and!307731 (not b!4006028) (not b!4006385) (not b!4006056) (not d!1185143) (not d!1185409) (not b!4006508) (not tb!240819) (not d!1185121) (not b!4006143) (not tb!240771) (not bm!286205) (not bm!286192) (not b!4006722) (not d!1185469) (not b!4006655) (not b!4005961) (not b!4006794) b_and!307735 (not b!4006569) (not d!1185325) (not b!4006135) (not d!1185145) (not bm!286140) (not bm!286187) (not b!4006425) (not d!1185057) (not bm!286144) (not b!4006498) (not b!4006052) (not b!4006630) (not b_next!112127) (not d!1185125) (not b!4005828) (not b!4006488) (not b!4006501) b_and!307699 (not b!4006162) (not b!4006326) (not b!4006172) (not b!4005963) (not b!4006690) (not d!1185053) (not bm!286156) (not b!4006427) (not b!4006194) (not b!4006118) (not b!4005937) (not b!4006750) (not b!4006497) (not b!4006670) (not b!4005966) (not b!4006329) (not b!4006633) (not b!4006509) (not b!4005944) (not b!4006096) (not b!4006617) (not d!1185423) (not tb!240801) (not b!4006053) (not b!4006783) (not b!4006607) (not b!4005982) (not b!4006017) (not b_lambda!116841) (not b!4006098) (not d!1185319) (not b!4006723) tp_is_empty!20413 (not b!4006615) (not b!4006437) (not b!4005974) (not b!4006029) (not d!1185149) (not b!4006435) (not b!4006434) (not b!4005983) (not b!4006144) (not d!1185473) (not b!4006409) (not b!4006154) (not b!4006176) (not d!1185083) (not b!4006793) (not b!4006695) (not b!4006530) (not b!4006708) (not b!4006699) (not tb!240777) (not b!4005955) (not b!4006762) (not b!4006634) (not d!1185189) (not b!4006754) (not b!4006682) (not b!4006407) (not b!4006139) (not d!1185453) (not b!4006040) b_and!307729 (not b!4006752) (not d!1185413) (not b!4006757) (not b!4006492) (not b_next!112121) (not b!4006105) (not d!1185545) (not d!1185559) (not b!4005975) (not b_lambda!116853) (not b_lambda!116877) (not b!4006186) (not b!4005985) (not d!1185089) (not b!4006168) (not b!4006159) (not b!4005939) (not b!4006027) (not b!4006047) (not b_next!112139) (not d!1185103) (not b!4006106) (not d!1185229) (not b!4006039) (not b!4006709) (not b!4006484) (not d!1185045) (not b!4006789) (not bm!286154) (not b!4005987) b_and!307737 (not b_lambda!116879) (not b!4006519) (not b!4006491) (not b!4005969) (not b!4006020) (not b!4006110) (not b!4006532) b_and!307733 (not b!4006621) (not d!1185141) (not bm!286193) (not b!4006045) (not b!4006109) (not b!4006032) (not b!4006763) (not b!4005978) (not b!4005938) (not b!4006131) (not b!4006327) (not bm!286141) (not b!4006684) (not b!4006531) (not b!4006696) (not d!1185109) (not b_next!112137) (not b!4006147) (not d!1185421) (not b_next!112135) (not b!4006774) (not b!4006182) (not b!4006007) (not d!1185431) (not b!4006647) (not b!4006103) (not b!4005931) (not b!4006791) (not b!4005956) (not b!4006683) (not d!1185097) (not b_lambda!116873) (not b!4006545) (not b!4006100) (not bm!286189) (not b!4006115) (not b!4005949) (not d!1185221) (not d!1185495) b_and!307701 (not b!4006616) (not b!4006487) (not b!4006119) (not b_next!112123) (not b!4005959) (not b!4006024) (not b!4006130) (not b!4006031) (not d!1185379) (not b_lambda!116843) (not b!4006707) (not d!1185155) (not b!4006513) (not b!4006625) (not b!4005965) (not b!4006037) (not b!4006433) (not b!4006640) (not d!1184979) (not b!4006170) (not tb!240765) (not b!4006688) (not b!4006753) (not d!1185307) (not b_lambda!116845) (not b!4006062) (not b!4005977) (not b!4006063) (not b!4006639) (not b!4006117) (not b!4006191) (not d!1185441) (not b!4006736) (not d!1185051) (not b!4006044) (not b!4006483) (not b!4006188) (not b!4006160) (not bm!286207) (not b!4005981) (not d!1185157) (not b!4006663) (not b_lambda!116851) (not b!4006113) b_and!307703 (not b!4006158) (not bm!286194) (not b!4006436) (not b!4006030) (not b!4005935) (not b!4006111) (not d!1185207) (not b!4006742) (not d!1185077) (not bm!286143) (not b!4006036) (not bm!286157) (not b_lambda!116855) (not b!4006782) (not b!4006148) (not b_next!112133) (not b!4006507) (not b!4006324) (not b!4005933) (not b!4006041) (not b!4006101) (not b_lambda!116875) (not b!4006700) (not d!1185225) (not b!4006141) (not b!4006795) (not b!4006174) (not b!4006021) (not b!4006706) (not b!4006133) (not d!1185105) (not d!1185555) (not b!4006439) (not b!4006651) (not b!4006629) (not b!4006694) (not d!1185085) (not d!1185127) (not d!1185199) (not d!1185359) (not b!4006050) (not b!4006137) (not d!1185191) (not b!4006177) (not b!4006659) (not d!1185131) (not b!4006180) (not b!4006153) (not b!4006023) (not d!1185521) (not d!1185099) (not bm!286188) (not b!4006661) (not b!4006779) (not b!4006780) (not d!1185073) (not b!4006735) (not b!4006660) (not b!4005945) (not b!4006689) (not b!4006608) (not b!4006016) (not b!4006743) (not bm!286190) (not b!4006669) (not b!4006734) (not d!1185129) (not d!1185537) (not d!1185139))
(check-sat (not b_next!112125) b_and!307731 b_and!307735 (not b_next!112139) b_and!307737 b_and!307733 b_and!307701 (not b_next!112123) b_and!307703 (not b_next!112133) b_and!307699 (not b_next!112127) b_and!307729 (not b_next!112121) (not b_next!112137) (not b_next!112135))
