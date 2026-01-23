; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381484 () Bool)

(assert start!381484)

(declare-fun b!4044918 () Bool)

(declare-fun b_free!112585 () Bool)

(declare-fun b_next!113289 () Bool)

(assert (=> b!4044918 (= b_free!112585 (not b_next!113289))))

(declare-fun tp!1227464 () Bool)

(declare-fun b_and!311043 () Bool)

(assert (=> b!4044918 (= tp!1227464 b_and!311043)))

(declare-fun b_free!112587 () Bool)

(declare-fun b_next!113291 () Bool)

(assert (=> b!4044918 (= b_free!112587 (not b_next!113291))))

(declare-fun tp!1227459 () Bool)

(declare-fun b_and!311045 () Bool)

(assert (=> b!4044918 (= tp!1227459 b_and!311045)))

(declare-fun b!4044928 () Bool)

(declare-fun b_free!112589 () Bool)

(declare-fun b_next!113293 () Bool)

(assert (=> b!4044928 (= b_free!112589 (not b_next!113293))))

(declare-fun tp!1227460 () Bool)

(declare-fun b_and!311047 () Bool)

(assert (=> b!4044928 (= tp!1227460 b_and!311047)))

(declare-fun b_free!112591 () Bool)

(declare-fun b_next!113295 () Bool)

(assert (=> b!4044928 (= b_free!112591 (not b_next!113295))))

(declare-fun tp!1227455 () Bool)

(declare-fun b_and!311049 () Bool)

(assert (=> b!4044928 (= tp!1227455 b_and!311049)))

(declare-fun b!4044901 () Bool)

(declare-fun e!2509639 () Bool)

(declare-fun e!2509646 () Bool)

(declare-fun tp!1227456 () Bool)

(assert (=> b!4044901 (= e!2509639 (and e!2509646 tp!1227456))))

(declare-fun b!4044902 () Bool)

(declare-fun res!1647534 () Bool)

(declare-fun e!2509636 () Bool)

(assert (=> b!4044902 (=> (not res!1647534) (not e!2509636))))

(declare-datatypes ((C!23848 0))(
  ( (C!23849 (val!14018 Int)) )
))
(declare-datatypes ((List!43381 0))(
  ( (Nil!43257) (Cons!43257 (h!48677 C!23848) (t!335478 List!43381)) )
))
(declare-datatypes ((IArray!26279 0))(
  ( (IArray!26280 (innerList!13197 List!43381)) )
))
(declare-datatypes ((Conc!13137 0))(
  ( (Node!13137 (left!32582 Conc!13137) (right!32912 Conc!13137) (csize!26504 Int) (cheight!13348 Int)) (Leaf!20307 (xs!16443 IArray!26279) (csize!26505 Int)) (Empty!13137) )
))
(declare-datatypes ((BalanceConc!25868 0))(
  ( (BalanceConc!25869 (c!698866 Conc!13137)) )
))
(declare-datatypes ((List!43382 0))(
  ( (Nil!43258) (Cons!43258 (h!48678 (_ BitVec 16)) (t!335479 List!43382)) )
))
(declare-datatypes ((TokenValue!7156 0))(
  ( (FloatLiteralValue!14312 (text!50537 List!43382)) (TokenValueExt!7155 (__x!26529 Int)) (Broken!35780 (value!217999 List!43382)) (Object!7279) (End!7156) (Def!7156) (Underscore!7156) (Match!7156) (Else!7156) (Error!7156) (Case!7156) (If!7156) (Extends!7156) (Abstract!7156) (Class!7156) (Val!7156) (DelimiterValue!14312 (del!7216 List!43382)) (KeywordValue!7162 (value!218000 List!43382)) (CommentValue!14312 (value!218001 List!43382)) (WhitespaceValue!14312 (value!218002 List!43382)) (IndentationValue!7156 (value!218003 List!43382)) (String!49497) (Int32!7156) (Broken!35781 (value!218004 List!43382)) (Boolean!7157) (Unit!62502) (OperatorValue!7159 (op!7216 List!43382)) (IdentifierValue!14312 (value!218005 List!43382)) (IdentifierValue!14313 (value!218006 List!43382)) (WhitespaceValue!14313 (value!218007 List!43382)) (True!14312) (False!14312) (Broken!35782 (value!218008 List!43382)) (Broken!35783 (value!218009 List!43382)) (True!14313) (RightBrace!7156) (RightBracket!7156) (Colon!7156) (Null!7156) (Comma!7156) (LeftBracket!7156) (False!14313) (LeftBrace!7156) (ImaginaryLiteralValue!7156 (text!50538 List!43382)) (StringLiteralValue!21468 (value!218010 List!43382)) (EOFValue!7156 (value!218011 List!43382)) (IdentValue!7156 (value!218012 List!43382)) (DelimiterValue!14313 (value!218013 List!43382)) (DedentValue!7156 (value!218014 List!43382)) (NewLineValue!7156 (value!218015 List!43382)) (IntegerValue!21468 (value!218016 (_ BitVec 32)) (text!50539 List!43382)) (IntegerValue!21469 (value!218017 Int) (text!50540 List!43382)) (Times!7156) (Or!7156) (Equal!7156) (Minus!7156) (Broken!35784 (value!218018 List!43382)) (And!7156) (Div!7156) (LessEqual!7156) (Mod!7156) (Concat!18987) (Not!7156) (Plus!7156) (SpaceValue!7156 (value!218019 List!43382)) (IntegerValue!21470 (value!218020 Int) (text!50541 List!43382)) (StringLiteralValue!21469 (text!50542 List!43382)) (FloatLiteralValue!14313 (text!50543 List!43382)) (BytesLiteralValue!7156 (value!218021 List!43382)) (CommentValue!14313 (value!218022 List!43382)) (StringLiteralValue!21470 (value!218023 List!43382)) (ErrorTokenValue!7156 (msg!7217 List!43382)) )
))
(declare-datatypes ((Regex!11831 0))(
  ( (ElementMatch!11831 (c!698867 C!23848)) (Concat!18988 (regOne!24174 Regex!11831) (regTwo!24174 Regex!11831)) (EmptyExpr!11831) (Star!11831 (reg!12160 Regex!11831)) (EmptyLang!11831) (Union!11831 (regOne!24175 Regex!11831) (regTwo!24175 Regex!11831)) )
))
(declare-datatypes ((String!49498 0))(
  ( (String!49499 (value!218024 String)) )
))
(declare-datatypes ((TokenValueInjection!13740 0))(
  ( (TokenValueInjection!13741 (toValue!9474 Int) (toChars!9333 Int)) )
))
(declare-datatypes ((Rule!13652 0))(
  ( (Rule!13653 (regex!6926 Regex!11831) (tag!7786 String!49498) (isSeparator!6926 Bool) (transformation!6926 TokenValueInjection!13740)) )
))
(declare-datatypes ((Token!12990 0))(
  ( (Token!12991 (value!218025 TokenValue!7156) (rule!10002 Rule!13652) (size!32341 Int) (originalCharacters!7526 List!43381)) )
))
(declare-fun token!484 () Token!12990)

(declare-fun size!32342 (List!43381) Int)

(assert (=> b!4044902 (= res!1647534 (= (size!32341 token!484) (size!32342 (originalCharacters!7526 token!484))))))

(declare-fun b!4044903 () Bool)

(declare-fun e!2509631 () Bool)

(declare-fun e!2509652 () Bool)

(assert (=> b!4044903 (= e!2509631 e!2509652)))

(declare-fun res!1647546 () Bool)

(assert (=> b!4044903 (=> res!1647546 e!2509652)))

(declare-datatypes ((tuple2!42338 0))(
  ( (tuple2!42339 (_1!24303 Token!12990) (_2!24303 List!43381)) )
))
(declare-datatypes ((Option!9340 0))(
  ( (None!9339) (Some!9339 (v!39743 tuple2!42338)) )
))
(declare-fun lt!1439942 () Option!9340)

(declare-fun lt!1439975 () Option!9340)

(assert (=> b!4044903 (= res!1647546 (not (= lt!1439942 lt!1439975)))))

(declare-fun lt!1439955 () Token!12990)

(declare-fun suffixResult!105 () List!43381)

(assert (=> b!4044903 (= lt!1439942 (Some!9339 (tuple2!42339 lt!1439955 suffixResult!105)))))

(declare-datatypes ((LexerInterface!6515 0))(
  ( (LexerInterfaceExt!6512 (__x!26530 Int)) (Lexer!6513) )
))
(declare-fun thiss!21717 () LexerInterface!6515)

(declare-fun lt!1439958 () List!43381)

(declare-fun maxPrefixOneRule!2825 (LexerInterface!6515 Rule!13652 List!43381) Option!9340)

(assert (=> b!4044903 (= lt!1439942 (maxPrefixOneRule!2825 thiss!21717 (rule!10002 token!484) lt!1439958))))

(declare-fun lt!1439928 () TokenValue!7156)

(declare-fun lt!1439963 () Int)

(declare-fun lt!1439932 () List!43381)

(assert (=> b!4044903 (= lt!1439955 (Token!12991 lt!1439928 (rule!10002 token!484) lt!1439963 lt!1439932))))

(declare-fun apply!10115 (TokenValueInjection!13740 BalanceConc!25868) TokenValue!7156)

(declare-fun seqFromList!5143 (List!43381) BalanceConc!25868)

(assert (=> b!4044903 (= lt!1439928 (apply!10115 (transformation!6926 (rule!10002 token!484)) (seqFromList!5143 lt!1439932)))))

(declare-datatypes ((Unit!62503 0))(
  ( (Unit!62504) )
))
(declare-fun lt!1439936 () Unit!62503)

(declare-datatypes ((List!43383 0))(
  ( (Nil!43259) (Cons!43259 (h!48679 Rule!13652) (t!335480 List!43383)) )
))
(declare-fun rules!2999 () List!43383)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1631 (LexerInterface!6515 List!43383 List!43381 List!43381 List!43381 Rule!13652) Unit!62503)

(assert (=> b!4044903 (= lt!1439936 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1631 thiss!21717 rules!2999 lt!1439932 lt!1439958 suffixResult!105 (rule!10002 token!484)))))

(declare-fun lt!1439930 () List!43381)

(assert (=> b!4044903 (= lt!1439930 suffixResult!105)))

(declare-fun lt!1439947 () Unit!62503)

(declare-fun lemmaSamePrefixThenSameSuffix!2174 (List!43381 List!43381 List!43381 List!43381 List!43381) Unit!62503)

(assert (=> b!4044903 (= lt!1439947 (lemmaSamePrefixThenSameSuffix!2174 lt!1439932 lt!1439930 lt!1439932 suffixResult!105 lt!1439958))))

(declare-fun lt!1439938 () List!43381)

(declare-fun isPrefix!4013 (List!43381 List!43381) Bool)

(assert (=> b!4044903 (isPrefix!4013 lt!1439932 lt!1439938)))

(declare-fun lt!1439931 () Unit!62503)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2848 (List!43381 List!43381) Unit!62503)

(assert (=> b!4044903 (= lt!1439931 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439932 lt!1439930))))

(declare-fun b!4044904 () Bool)

(declare-fun e!2509658 () Bool)

(declare-fun e!2509643 () Bool)

(assert (=> b!4044904 (= e!2509658 e!2509643)))

(declare-fun res!1647541 () Bool)

(assert (=> b!4044904 (=> (not res!1647541) (not e!2509643))))

(declare-fun lt!1439940 () Int)

(assert (=> b!4044904 (= res!1647541 (>= lt!1439940 lt!1439963))))

(assert (=> b!4044904 (= lt!1439963 (size!32342 lt!1439932))))

(declare-fun prefix!494 () List!43381)

(assert (=> b!4044904 (= lt!1439940 (size!32342 prefix!494))))

(declare-fun list!16112 (BalanceConc!25868) List!43381)

(declare-fun charsOf!4742 (Token!12990) BalanceConc!25868)

(assert (=> b!4044904 (= lt!1439932 (list!16112 (charsOf!4742 token!484)))))

(declare-fun b!4044905 () Bool)

(declare-fun e!2509642 () Bool)

(declare-fun e!2509651 () Bool)

(assert (=> b!4044905 (= e!2509642 e!2509651)))

(declare-fun res!1647551 () Bool)

(assert (=> b!4044905 (=> res!1647551 e!2509651)))

(assert (=> b!4044905 (= res!1647551 (not (isPrefix!4013 lt!1439932 lt!1439958)))))

(assert (=> b!4044905 (isPrefix!4013 prefix!494 lt!1439958)))

(declare-fun lt!1439935 () Unit!62503)

(declare-fun suffix!1299 () List!43381)

(assert (=> b!4044905 (= lt!1439935 (lemmaConcatTwoListThenFirstIsPrefix!2848 prefix!494 suffix!1299))))

(declare-fun lt!1439972 () List!43381)

(assert (=> b!4044905 (isPrefix!4013 lt!1439932 lt!1439972)))

(declare-fun lt!1439941 () Unit!62503)

(assert (=> b!4044905 (= lt!1439941 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439932 suffixResult!105))))

(declare-fun b!4044906 () Bool)

(declare-fun tp!1227461 () Bool)

(declare-fun e!2509640 () Bool)

(declare-fun e!2509644 () Bool)

(declare-fun inv!21 (TokenValue!7156) Bool)

(assert (=> b!4044906 (= e!2509644 (and (inv!21 (value!218025 token!484)) e!2509640 tp!1227461))))

(declare-fun b!4044907 () Bool)

(declare-fun e!2509650 () Bool)

(declare-fun e!2509645 () Bool)

(assert (=> b!4044907 (= e!2509650 e!2509645)))

(declare-fun res!1647535 () Bool)

(assert (=> b!4044907 (=> res!1647535 e!2509645)))

(declare-fun lt!1439929 () Option!9340)

(get-info :version)

(assert (=> b!4044907 (= res!1647535 (not ((_ is Some!9339) lt!1439929)))))

(declare-fun lt!1439966 () List!43381)

(declare-fun maxPrefix!3813 (LexerInterface!6515 List!43383 List!43381) Option!9340)

(assert (=> b!4044907 (= lt!1439929 (maxPrefix!3813 thiss!21717 rules!2999 lt!1439966))))

(declare-fun lt!1439957 () tuple2!42338)

(declare-fun lt!1439962 () List!43381)

(assert (=> b!4044907 (and (= suffixResult!105 lt!1439962) (= lt!1439957 (tuple2!42339 lt!1439955 lt!1439962)))))

(declare-fun lt!1439971 () Unit!62503)

(assert (=> b!4044907 (= lt!1439971 (lemmaSamePrefixThenSameSuffix!2174 lt!1439932 suffixResult!105 lt!1439932 lt!1439962 lt!1439958))))

(declare-fun lt!1439934 () List!43381)

(assert (=> b!4044907 (isPrefix!4013 lt!1439932 lt!1439934)))

(declare-fun lt!1439939 () Unit!62503)

(assert (=> b!4044907 (= lt!1439939 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439932 lt!1439962))))

(declare-fun b!4044908 () Bool)

(declare-fun e!2509648 () Bool)

(declare-fun tp_is_empty!20633 () Bool)

(declare-fun tp!1227454 () Bool)

(assert (=> b!4044908 (= e!2509648 (and tp_is_empty!20633 tp!1227454))))

(declare-fun b!4044909 () Bool)

(declare-fun e!2509629 () Bool)

(assert (=> b!4044909 (= e!2509652 e!2509629)))

(declare-fun res!1647554 () Bool)

(assert (=> b!4044909 (=> res!1647554 e!2509629)))

(declare-fun matchR!5784 (Regex!11831 List!43381) Bool)

(assert (=> b!4044909 (= res!1647554 (not (matchR!5784 (regex!6926 (rule!10002 token!484)) lt!1439932)))))

(assert (=> b!4044909 (isPrefix!4013 lt!1439932 lt!1439966)))

(declare-fun newSuffix!27 () List!43381)

(declare-fun lt!1439952 () Unit!62503)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!806 (List!43381 List!43381 List!43381) Unit!62503)

(assert (=> b!4044909 (= lt!1439952 (lemmaPrefixStaysPrefixWhenAddingToSuffix!806 lt!1439932 prefix!494 newSuffix!27))))

(declare-fun lt!1439951 () Unit!62503)

(assert (=> b!4044909 (= lt!1439951 (lemmaPrefixStaysPrefixWhenAddingToSuffix!806 lt!1439932 prefix!494 suffix!1299))))

(declare-fun b!4044910 () Bool)

(declare-fun e!2509655 () Bool)

(declare-fun tp!1227457 () Bool)

(assert (=> b!4044910 (= e!2509655 (and tp_is_empty!20633 tp!1227457))))

(declare-fun b!4044911 () Bool)

(declare-fun e!2509653 () Bool)

(declare-fun e!2509657 () Bool)

(assert (=> b!4044911 (= e!2509653 e!2509657)))

(declare-fun res!1647548 () Bool)

(assert (=> b!4044911 (=> (not res!1647548) (not e!2509657))))

(assert (=> b!4044911 (= res!1647548 (= (maxPrefix!3813 thiss!21717 rules!2999 lt!1439958) lt!1439975))))

(assert (=> b!4044911 (= lt!1439975 (Some!9339 lt!1439957))))

(assert (=> b!4044911 (= lt!1439957 (tuple2!42339 token!484 suffixResult!105))))

(declare-fun ++!11328 (List!43381 List!43381) List!43381)

(assert (=> b!4044911 (= lt!1439958 (++!11328 prefix!494 suffix!1299))))

(declare-fun b!4044912 () Bool)

(declare-fun res!1647536 () Bool)

(assert (=> b!4044912 (=> (not res!1647536) (not e!2509658))))

(assert (=> b!4044912 (= res!1647536 (>= (size!32342 suffix!1299) (size!32342 newSuffix!27)))))

(declare-fun b!4044913 () Bool)

(declare-fun e!2509634 () Bool)

(declare-fun e!2509637 () Bool)

(assert (=> b!4044913 (= e!2509634 e!2509637)))

(declare-fun res!1647532 () Bool)

(assert (=> b!4044913 (=> res!1647532 e!2509637)))

(declare-fun lt!1439950 () List!43381)

(assert (=> b!4044913 (= res!1647532 (not (= lt!1439950 lt!1439966)))))

(declare-fun lt!1439965 () List!43381)

(declare-fun lt!1439937 () List!43381)

(assert (=> b!4044913 (= lt!1439950 (++!11328 lt!1439965 lt!1439937))))

(declare-fun getSuffix!2430 (List!43381 List!43381) List!43381)

(assert (=> b!4044913 (= lt!1439937 (getSuffix!2430 lt!1439966 lt!1439965))))

(declare-fun b!4044914 () Bool)

(assert (=> b!4044914 (= e!2509636 (and (= (size!32341 token!484) lt!1439963) (= (originalCharacters!7526 token!484) lt!1439932)))))

(declare-fun b!4044915 () Bool)

(declare-fun e!2509627 () Bool)

(declare-fun tp!1227465 () Bool)

(assert (=> b!4044915 (= e!2509627 (and tp_is_empty!20633 tp!1227465))))

(declare-fun tp!1227463 () Bool)

(declare-fun e!2509641 () Bool)

(declare-fun b!4044916 () Bool)

(declare-fun inv!57819 (String!49498) Bool)

(declare-fun inv!57822 (TokenValueInjection!13740) Bool)

(assert (=> b!4044916 (= e!2509640 (and tp!1227463 (inv!57819 (tag!7786 (rule!10002 token!484))) (inv!57822 (transformation!6926 (rule!10002 token!484))) e!2509641))))

(declare-fun b!4044917 () Bool)

(declare-fun res!1647531 () Bool)

(assert (=> b!4044917 (=> (not res!1647531) (not e!2509658))))

(declare-fun rulesInvariant!5858 (LexerInterface!6515 List!43383) Bool)

(assert (=> b!4044917 (= res!1647531 (rulesInvariant!5858 thiss!21717 rules!2999))))

(assert (=> b!4044918 (= e!2509641 (and tp!1227464 tp!1227459))))

(declare-fun b!4044919 () Bool)

(declare-fun e!2509630 () Bool)

(assert (=> b!4044919 (= e!2509645 e!2509630)))

(declare-fun res!1647538 () Bool)

(assert (=> b!4044919 (=> res!1647538 e!2509630)))

(declare-fun lt!1439948 () Option!9340)

(assert (=> b!4044919 (= res!1647538 (not (= lt!1439948 (Some!9339 (v!39743 lt!1439929)))))))

(declare-fun newSuffixResult!27 () List!43381)

(assert (=> b!4044919 (isPrefix!4013 lt!1439965 (++!11328 lt!1439965 newSuffixResult!27))))

(declare-fun lt!1439924 () Unit!62503)

(assert (=> b!4044919 (= lt!1439924 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439965 newSuffixResult!27))))

(declare-fun lt!1439925 () List!43381)

(assert (=> b!4044919 (isPrefix!4013 lt!1439965 lt!1439925)))

(assert (=> b!4044919 (= lt!1439925 (++!11328 lt!1439965 (_2!24303 (v!39743 lt!1439929))))))

(declare-fun lt!1439945 () Unit!62503)

(assert (=> b!4044919 (= lt!1439945 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439965 (_2!24303 (v!39743 lt!1439929))))))

(declare-fun lt!1439943 () Int)

(declare-fun lt!1439946 () TokenValue!7156)

(assert (=> b!4044919 (= lt!1439948 (Some!9339 (tuple2!42339 (Token!12991 lt!1439946 (rule!10002 (_1!24303 (v!39743 lt!1439929))) lt!1439943 lt!1439965) (_2!24303 (v!39743 lt!1439929)))))))

(assert (=> b!4044919 (= lt!1439948 (maxPrefixOneRule!2825 thiss!21717 (rule!10002 (_1!24303 (v!39743 lt!1439929))) lt!1439966))))

(assert (=> b!4044919 (= lt!1439943 (size!32342 lt!1439965))))

(assert (=> b!4044919 (= lt!1439946 (apply!10115 (transformation!6926 (rule!10002 (_1!24303 (v!39743 lt!1439929)))) (seqFromList!5143 lt!1439965)))))

(declare-fun lt!1439954 () Unit!62503)

(assert (=> b!4044919 (= lt!1439954 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1631 thiss!21717 rules!2999 lt!1439965 lt!1439966 (_2!24303 (v!39743 lt!1439929)) (rule!10002 (_1!24303 (v!39743 lt!1439929)))))))

(assert (=> b!4044919 (= lt!1439965 (list!16112 (charsOf!4742 (_1!24303 (v!39743 lt!1439929)))))))

(declare-fun lt!1439976 () Unit!62503)

(declare-fun lemmaInv!1135 (TokenValueInjection!13740) Unit!62503)

(assert (=> b!4044919 (= lt!1439976 (lemmaInv!1135 (transformation!6926 (rule!10002 (_1!24303 (v!39743 lt!1439929))))))))

(declare-fun ruleValid!2856 (LexerInterface!6515 Rule!13652) Bool)

(assert (=> b!4044919 (ruleValid!2856 thiss!21717 (rule!10002 (_1!24303 (v!39743 lt!1439929))))))

(declare-fun lt!1439959 () Unit!62503)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1926 (LexerInterface!6515 Rule!13652 List!43383) Unit!62503)

(assert (=> b!4044919 (= lt!1439959 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1926 thiss!21717 (rule!10002 (_1!24303 (v!39743 lt!1439929))) rules!2999))))

(declare-fun lt!1439953 () Unit!62503)

(declare-fun lemmaCharactersSize!1445 (Token!12990) Unit!62503)

(assert (=> b!4044919 (= lt!1439953 (lemmaCharactersSize!1445 token!484))))

(declare-fun lt!1439960 () Unit!62503)

(assert (=> b!4044919 (= lt!1439960 (lemmaCharactersSize!1445 (_1!24303 (v!39743 lt!1439929))))))

(declare-fun b!4044920 () Bool)

(declare-fun tp!1227462 () Bool)

(declare-fun e!2509633 () Bool)

(assert (=> b!4044920 (= e!2509646 (and tp!1227462 (inv!57819 (tag!7786 (h!48679 rules!2999))) (inv!57822 (transformation!6926 (h!48679 rules!2999))) e!2509633))))

(declare-fun b!4044921 () Bool)

(assert (=> b!4044921 (= e!2509629 e!2509650)))

(declare-fun res!1647544 () Bool)

(assert (=> b!4044921 (=> res!1647544 e!2509650)))

(assert (=> b!4044921 (= res!1647544 (not (= lt!1439934 lt!1439958)))))

(assert (=> b!4044921 (= lt!1439934 (++!11328 lt!1439932 lt!1439962))))

(assert (=> b!4044921 (= lt!1439962 (getSuffix!2430 lt!1439958 lt!1439932))))

(assert (=> b!4044921 e!2509636))

(declare-fun res!1647555 () Bool)

(assert (=> b!4044921 (=> (not res!1647555) (not e!2509636))))

(assert (=> b!4044921 (= res!1647555 (isPrefix!4013 lt!1439958 lt!1439958))))

(declare-fun lt!1439977 () Unit!62503)

(declare-fun lemmaIsPrefixRefl!2580 (List!43381 List!43381) Unit!62503)

(assert (=> b!4044921 (= lt!1439977 (lemmaIsPrefixRefl!2580 lt!1439958 lt!1439958))))

(declare-fun b!4044922 () Bool)

(declare-fun e!2509638 () Bool)

(assert (=> b!4044922 (= e!2509630 e!2509638)))

(declare-fun res!1647553 () Bool)

(assert (=> b!4044922 (=> res!1647553 e!2509638)))

(declare-fun lt!1439969 () List!43381)

(assert (=> b!4044922 (= res!1647553 (not (= lt!1439969 suffix!1299)))))

(declare-fun lt!1439964 () List!43381)

(assert (=> b!4044922 (= lt!1439969 (++!11328 newSuffix!27 lt!1439964))))

(assert (=> b!4044922 (= lt!1439964 (getSuffix!2430 suffix!1299 newSuffix!27))))

(declare-fun b!4044923 () Bool)

(declare-fun res!1647545 () Bool)

(assert (=> b!4044923 (=> (not res!1647545) (not e!2509636))))

(assert (=> b!4044923 (= res!1647545 (= (value!218025 token!484) lt!1439928))))

(declare-fun b!4044924 () Bool)

(declare-fun e!2509647 () Bool)

(assert (=> b!4044924 (= e!2509651 e!2509647)))

(declare-fun res!1647549 () Bool)

(assert (=> b!4044924 (=> res!1647549 e!2509647)))

(declare-fun lt!1439933 () List!43381)

(assert (=> b!4044924 (= res!1647549 (not (= lt!1439933 prefix!494)))))

(declare-fun lt!1439927 () List!43381)

(assert (=> b!4044924 (= lt!1439933 (++!11328 lt!1439932 lt!1439927))))

(assert (=> b!4044924 (= lt!1439927 (getSuffix!2430 prefix!494 lt!1439932))))

(assert (=> b!4044924 (isPrefix!4013 lt!1439932 prefix!494)))

(declare-fun lt!1439973 () Unit!62503)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!577 (List!43381 List!43381 List!43381) Unit!62503)

(assert (=> b!4044924 (= lt!1439973 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!577 prefix!494 lt!1439932 lt!1439958))))

(declare-fun b!4044925 () Bool)

(declare-fun e!2509656 () Bool)

(declare-fun tp!1227458 () Bool)

(assert (=> b!4044925 (= e!2509656 (and tp_is_empty!20633 tp!1227458))))

(declare-fun b!4044926 () Bool)

(assert (=> b!4044926 (= e!2509657 (not e!2509642))))

(declare-fun res!1647547 () Bool)

(assert (=> b!4044926 (=> res!1647547 e!2509642)))

(assert (=> b!4044926 (= res!1647547 (not (= lt!1439972 lt!1439958)))))

(assert (=> b!4044926 (= lt!1439972 (++!11328 lt!1439932 suffixResult!105))))

(declare-fun lt!1439944 () Unit!62503)

(assert (=> b!4044926 (= lt!1439944 (lemmaInv!1135 (transformation!6926 (rule!10002 token!484))))))

(assert (=> b!4044926 (ruleValid!2856 thiss!21717 (rule!10002 token!484))))

(declare-fun lt!1439967 () Unit!62503)

(assert (=> b!4044926 (= lt!1439967 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1926 thiss!21717 (rule!10002 token!484) rules!2999))))

(declare-fun b!4044927 () Bool)

(assert (=> b!4044927 (= e!2509637 (isPrefix!4013 lt!1439965 lt!1439966))))

(assert (=> b!4044927 (isPrefix!4013 lt!1439965 lt!1439950)))

(declare-fun lt!1439968 () Unit!62503)

(assert (=> b!4044927 (= lt!1439968 (lemmaConcatTwoListThenFirstIsPrefix!2848 lt!1439965 lt!1439937))))

(assert (=> b!4044928 (= e!2509633 (and tp!1227460 tp!1227455))))

(declare-fun b!4044929 () Bool)

(assert (=> b!4044929 (= e!2509643 e!2509653)))

(declare-fun res!1647552 () Bool)

(assert (=> b!4044929 (=> (not res!1647552) (not e!2509653))))

(declare-fun lt!1439949 () List!43381)

(assert (=> b!4044929 (= res!1647552 (= lt!1439949 lt!1439966))))

(assert (=> b!4044929 (= lt!1439966 (++!11328 prefix!494 newSuffix!27))))

(assert (=> b!4044929 (= lt!1439949 (++!11328 lt!1439932 newSuffixResult!27))))

(declare-fun b!4044930 () Bool)

(declare-fun e!2509632 () Bool)

(assert (=> b!4044930 (= e!2509638 e!2509632)))

(declare-fun res!1647542 () Bool)

(assert (=> b!4044930 (=> res!1647542 e!2509632)))

(declare-fun lt!1439970 () List!43381)

(assert (=> b!4044930 (= res!1647542 (not (= lt!1439970 lt!1439958)))))

(assert (=> b!4044930 (= lt!1439970 (++!11328 prefix!494 lt!1439969))))

(assert (=> b!4044930 (= lt!1439970 (++!11328 lt!1439966 lt!1439964))))

(declare-fun lt!1439926 () Unit!62503)

(declare-fun lemmaConcatAssociativity!2630 (List!43381 List!43381 List!43381) Unit!62503)

(assert (=> b!4044930 (= lt!1439926 (lemmaConcatAssociativity!2630 prefix!494 newSuffix!27 lt!1439964))))

(declare-fun b!4044931 () Bool)

(declare-fun res!1647533 () Bool)

(assert (=> b!4044931 (=> res!1647533 e!2509634)))

(assert (=> b!4044931 (= res!1647533 (not (= lt!1439925 lt!1439966)))))

(declare-fun b!4044932 () Bool)

(declare-fun e!2509649 () Bool)

(declare-fun tp!1227466 () Bool)

(assert (=> b!4044932 (= e!2509649 (and tp_is_empty!20633 tp!1227466))))

(declare-fun b!4044933 () Bool)

(assert (=> b!4044933 (= e!2509632 e!2509634)))

(declare-fun res!1647539 () Bool)

(assert (=> b!4044933 (=> res!1647539 e!2509634)))

(assert (=> b!4044933 (= res!1647539 (not (isPrefix!4013 lt!1439965 lt!1439958)))))

(assert (=> b!4044933 (isPrefix!4013 lt!1439965 lt!1439970)))

(declare-fun lt!1439974 () Unit!62503)

(assert (=> b!4044933 (= lt!1439974 (lemmaPrefixStaysPrefixWhenAddingToSuffix!806 lt!1439965 lt!1439966 lt!1439964))))

(declare-fun b!4044934 () Bool)

(declare-fun res!1647550 () Bool)

(assert (=> b!4044934 (=> (not res!1647550) (not e!2509658))))

(assert (=> b!4044934 (= res!1647550 (isPrefix!4013 newSuffix!27 suffix!1299))))

(declare-fun res!1647537 () Bool)

(assert (=> start!381484 (=> (not res!1647537) (not e!2509658))))

(assert (=> start!381484 (= res!1647537 ((_ is Lexer!6513) thiss!21717))))

(assert (=> start!381484 e!2509658))

(assert (=> start!381484 e!2509649))

(declare-fun inv!57823 (Token!12990) Bool)

(assert (=> start!381484 (and (inv!57823 token!484) e!2509644)))

(assert (=> start!381484 e!2509655))

(assert (=> start!381484 e!2509656))

(assert (=> start!381484 e!2509648))

(assert (=> start!381484 true))

(assert (=> start!381484 e!2509639))

(assert (=> start!381484 e!2509627))

(declare-fun b!4044935 () Bool)

(declare-fun res!1647540 () Bool)

(assert (=> b!4044935 (=> (not res!1647540) (not e!2509658))))

(declare-fun isEmpty!25819 (List!43383) Bool)

(assert (=> b!4044935 (= res!1647540 (not (isEmpty!25819 rules!2999)))))

(declare-fun b!4044936 () Bool)

(assert (=> b!4044936 (= e!2509647 e!2509631)))

(declare-fun res!1647543 () Bool)

(assert (=> b!4044936 (=> res!1647543 e!2509631)))

(declare-fun lt!1439961 () List!43381)

(assert (=> b!4044936 (= res!1647543 (or (not (= lt!1439958 lt!1439961)) (not (= lt!1439958 lt!1439938))))))

(assert (=> b!4044936 (= lt!1439961 lt!1439938)))

(assert (=> b!4044936 (= lt!1439938 (++!11328 lt!1439932 lt!1439930))))

(assert (=> b!4044936 (= lt!1439961 (++!11328 lt!1439933 suffix!1299))))

(assert (=> b!4044936 (= lt!1439930 (++!11328 lt!1439927 suffix!1299))))

(declare-fun lt!1439956 () Unit!62503)

(assert (=> b!4044936 (= lt!1439956 (lemmaConcatAssociativity!2630 lt!1439932 lt!1439927 suffix!1299))))

(assert (= (and start!381484 res!1647537) b!4044935))

(assert (= (and b!4044935 res!1647540) b!4044917))

(assert (= (and b!4044917 res!1647531) b!4044912))

(assert (= (and b!4044912 res!1647536) b!4044934))

(assert (= (and b!4044934 res!1647550) b!4044904))

(assert (= (and b!4044904 res!1647541) b!4044929))

(assert (= (and b!4044929 res!1647552) b!4044911))

(assert (= (and b!4044911 res!1647548) b!4044926))

(assert (= (and b!4044926 (not res!1647547)) b!4044905))

(assert (= (and b!4044905 (not res!1647551)) b!4044924))

(assert (= (and b!4044924 (not res!1647549)) b!4044936))

(assert (= (and b!4044936 (not res!1647543)) b!4044903))

(assert (= (and b!4044903 (not res!1647546)) b!4044909))

(assert (= (and b!4044909 (not res!1647554)) b!4044921))

(assert (= (and b!4044921 res!1647555) b!4044923))

(assert (= (and b!4044923 res!1647545) b!4044902))

(assert (= (and b!4044902 res!1647534) b!4044914))

(assert (= (and b!4044921 (not res!1647544)) b!4044907))

(assert (= (and b!4044907 (not res!1647535)) b!4044919))

(assert (= (and b!4044919 (not res!1647538)) b!4044922))

(assert (= (and b!4044922 (not res!1647553)) b!4044930))

(assert (= (and b!4044930 (not res!1647542)) b!4044933))

(assert (= (and b!4044933 (not res!1647539)) b!4044931))

(assert (= (and b!4044931 (not res!1647533)) b!4044913))

(assert (= (and b!4044913 (not res!1647532)) b!4044927))

(assert (= (and start!381484 ((_ is Cons!43257) prefix!494)) b!4044932))

(assert (= b!4044916 b!4044918))

(assert (= b!4044906 b!4044916))

(assert (= start!381484 b!4044906))

(assert (= (and start!381484 ((_ is Cons!43257) suffixResult!105)) b!4044910))

(assert (= (and start!381484 ((_ is Cons!43257) suffix!1299)) b!4044925))

(assert (= (and start!381484 ((_ is Cons!43257) newSuffix!27)) b!4044908))

(assert (= b!4044920 b!4044928))

(assert (= b!4044901 b!4044920))

(assert (= (and start!381484 ((_ is Cons!43259) rules!2999)) b!4044901))

(assert (= (and start!381484 ((_ is Cons!43257) newSuffixResult!27)) b!4044915))

(declare-fun m!4642879 () Bool)

(assert (=> b!4044921 m!4642879))

(declare-fun m!4642881 () Bool)

(assert (=> b!4044921 m!4642881))

(declare-fun m!4642883 () Bool)

(assert (=> b!4044921 m!4642883))

(declare-fun m!4642885 () Bool)

(assert (=> b!4044921 m!4642885))

(declare-fun m!4642887 () Bool)

(assert (=> b!4044903 m!4642887))

(declare-fun m!4642889 () Bool)

(assert (=> b!4044903 m!4642889))

(declare-fun m!4642891 () Bool)

(assert (=> b!4044903 m!4642891))

(declare-fun m!4642893 () Bool)

(assert (=> b!4044903 m!4642893))

(declare-fun m!4642895 () Bool)

(assert (=> b!4044903 m!4642895))

(declare-fun m!4642897 () Bool)

(assert (=> b!4044903 m!4642897))

(declare-fun m!4642899 () Bool)

(assert (=> b!4044903 m!4642899))

(assert (=> b!4044903 m!4642887))

(declare-fun m!4642901 () Bool)

(assert (=> b!4044913 m!4642901))

(declare-fun m!4642903 () Bool)

(assert (=> b!4044913 m!4642903))

(declare-fun m!4642905 () Bool)

(assert (=> b!4044902 m!4642905))

(declare-fun m!4642907 () Bool)

(assert (=> b!4044927 m!4642907))

(declare-fun m!4642909 () Bool)

(assert (=> b!4044927 m!4642909))

(declare-fun m!4642911 () Bool)

(assert (=> b!4044927 m!4642911))

(declare-fun m!4642913 () Bool)

(assert (=> b!4044926 m!4642913))

(declare-fun m!4642915 () Bool)

(assert (=> b!4044926 m!4642915))

(declare-fun m!4642917 () Bool)

(assert (=> b!4044926 m!4642917))

(declare-fun m!4642919 () Bool)

(assert (=> b!4044926 m!4642919))

(declare-fun m!4642921 () Bool)

(assert (=> b!4044929 m!4642921))

(declare-fun m!4642923 () Bool)

(assert (=> b!4044929 m!4642923))

(declare-fun m!4642925 () Bool)

(assert (=> b!4044906 m!4642925))

(declare-fun m!4642927 () Bool)

(assert (=> b!4044935 m!4642927))

(declare-fun m!4642929 () Bool)

(assert (=> b!4044905 m!4642929))

(declare-fun m!4642931 () Bool)

(assert (=> b!4044905 m!4642931))

(declare-fun m!4642933 () Bool)

(assert (=> b!4044905 m!4642933))

(declare-fun m!4642935 () Bool)

(assert (=> b!4044905 m!4642935))

(declare-fun m!4642937 () Bool)

(assert (=> b!4044905 m!4642937))

(declare-fun m!4642939 () Bool)

(assert (=> b!4044933 m!4642939))

(declare-fun m!4642941 () Bool)

(assert (=> b!4044933 m!4642941))

(declare-fun m!4642943 () Bool)

(assert (=> b!4044933 m!4642943))

(declare-fun m!4642945 () Bool)

(assert (=> b!4044909 m!4642945))

(declare-fun m!4642947 () Bool)

(assert (=> b!4044909 m!4642947))

(declare-fun m!4642949 () Bool)

(assert (=> b!4044909 m!4642949))

(declare-fun m!4642951 () Bool)

(assert (=> b!4044909 m!4642951))

(declare-fun m!4642953 () Bool)

(assert (=> b!4044922 m!4642953))

(declare-fun m!4642955 () Bool)

(assert (=> b!4044922 m!4642955))

(declare-fun m!4642957 () Bool)

(assert (=> b!4044911 m!4642957))

(declare-fun m!4642959 () Bool)

(assert (=> b!4044911 m!4642959))

(declare-fun m!4642961 () Bool)

(assert (=> b!4044907 m!4642961))

(declare-fun m!4642963 () Bool)

(assert (=> b!4044907 m!4642963))

(declare-fun m!4642965 () Bool)

(assert (=> b!4044907 m!4642965))

(declare-fun m!4642967 () Bool)

(assert (=> b!4044907 m!4642967))

(declare-fun m!4642969 () Bool)

(assert (=> b!4044917 m!4642969))

(declare-fun m!4642971 () Bool)

(assert (=> b!4044936 m!4642971))

(declare-fun m!4642973 () Bool)

(assert (=> b!4044936 m!4642973))

(declare-fun m!4642975 () Bool)

(assert (=> b!4044936 m!4642975))

(declare-fun m!4642977 () Bool)

(assert (=> b!4044936 m!4642977))

(declare-fun m!4642979 () Bool)

(assert (=> b!4044934 m!4642979))

(declare-fun m!4642981 () Bool)

(assert (=> start!381484 m!4642981))

(declare-fun m!4642983 () Bool)

(assert (=> b!4044924 m!4642983))

(declare-fun m!4642985 () Bool)

(assert (=> b!4044924 m!4642985))

(declare-fun m!4642987 () Bool)

(assert (=> b!4044924 m!4642987))

(declare-fun m!4642989 () Bool)

(assert (=> b!4044924 m!4642989))

(declare-fun m!4642991 () Bool)

(assert (=> b!4044916 m!4642991))

(declare-fun m!4642993 () Bool)

(assert (=> b!4044916 m!4642993))

(declare-fun m!4642995 () Bool)

(assert (=> b!4044930 m!4642995))

(declare-fun m!4642997 () Bool)

(assert (=> b!4044930 m!4642997))

(declare-fun m!4642999 () Bool)

(assert (=> b!4044930 m!4642999))

(declare-fun m!4643001 () Bool)

(assert (=> b!4044904 m!4643001))

(declare-fun m!4643003 () Bool)

(assert (=> b!4044904 m!4643003))

(declare-fun m!4643005 () Bool)

(assert (=> b!4044904 m!4643005))

(assert (=> b!4044904 m!4643005))

(declare-fun m!4643007 () Bool)

(assert (=> b!4044904 m!4643007))

(declare-fun m!4643009 () Bool)

(assert (=> b!4044912 m!4643009))

(declare-fun m!4643011 () Bool)

(assert (=> b!4044912 m!4643011))

(declare-fun m!4643013 () Bool)

(assert (=> b!4044920 m!4643013))

(declare-fun m!4643015 () Bool)

(assert (=> b!4044920 m!4643015))

(declare-fun m!4643017 () Bool)

(assert (=> b!4044919 m!4643017))

(declare-fun m!4643019 () Bool)

(assert (=> b!4044919 m!4643019))

(declare-fun m!4643021 () Bool)

(assert (=> b!4044919 m!4643021))

(declare-fun m!4643023 () Bool)

(assert (=> b!4044919 m!4643023))

(declare-fun m!4643025 () Bool)

(assert (=> b!4044919 m!4643025))

(declare-fun m!4643027 () Bool)

(assert (=> b!4044919 m!4643027))

(declare-fun m!4643029 () Bool)

(assert (=> b!4044919 m!4643029))

(assert (=> b!4044919 m!4643027))

(declare-fun m!4643031 () Bool)

(assert (=> b!4044919 m!4643031))

(declare-fun m!4643033 () Bool)

(assert (=> b!4044919 m!4643033))

(declare-fun m!4643035 () Bool)

(assert (=> b!4044919 m!4643035))

(assert (=> b!4044919 m!4643023))

(declare-fun m!4643037 () Bool)

(assert (=> b!4044919 m!4643037))

(declare-fun m!4643039 () Bool)

(assert (=> b!4044919 m!4643039))

(declare-fun m!4643041 () Bool)

(assert (=> b!4044919 m!4643041))

(assert (=> b!4044919 m!4643025))

(declare-fun m!4643043 () Bool)

(assert (=> b!4044919 m!4643043))

(declare-fun m!4643045 () Bool)

(assert (=> b!4044919 m!4643045))

(declare-fun m!4643047 () Bool)

(assert (=> b!4044919 m!4643047))

(declare-fun m!4643049 () Bool)

(assert (=> b!4044919 m!4643049))

(declare-fun m!4643051 () Bool)

(assert (=> b!4044919 m!4643051))

(check-sat (not b_next!113293) b_and!311047 (not b!4044903) (not b!4044932) (not b!4044927) (not b!4044922) (not b!4044929) tp_is_empty!20633 (not b!4044917) (not b!4044919) (not b!4044904) b_and!311045 (not b!4044926) (not b!4044909) (not b!4044907) (not b_next!113289) (not b_next!113295) (not b!4044936) b_and!311049 (not b!4044913) (not b!4044908) b_and!311043 (not b!4044930) (not b!4044935) (not b!4044902) (not b!4044911) (not b!4044924) (not b!4044920) (not b!4044925) (not b!4044915) (not b!4044933) (not b!4044906) (not b!4044916) (not start!381484) (not b!4044910) (not b!4044921) (not b!4044912) (not b!4044934) (not b_next!113291) (not b!4044905) (not b!4044901))
(check-sat (not b_next!113293) b_and!311047 (not b_next!113289) b_and!311043 (not b_next!113291) b_and!311045 (not b_next!113295) b_and!311049)
