; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383708 () Bool)

(assert start!383708)

(declare-fun b!4067939 () Bool)

(declare-fun b_free!113161 () Bool)

(declare-fun b_next!113865 () Bool)

(assert (=> b!4067939 (= b_free!113161 (not b_next!113865))))

(declare-fun tp!1231280 () Bool)

(declare-fun b_and!312643 () Bool)

(assert (=> b!4067939 (= tp!1231280 b_and!312643)))

(declare-fun b_free!113163 () Bool)

(declare-fun b_next!113867 () Bool)

(assert (=> b!4067939 (= b_free!113163 (not b_next!113867))))

(declare-fun tp!1231290 () Bool)

(declare-fun b_and!312645 () Bool)

(assert (=> b!4067939 (= tp!1231290 b_and!312645)))

(declare-fun b!4067956 () Bool)

(declare-fun b_free!113165 () Bool)

(declare-fun b_next!113869 () Bool)

(assert (=> b!4067956 (= b_free!113165 (not b_next!113869))))

(declare-fun tp!1231288 () Bool)

(declare-fun b_and!312647 () Bool)

(assert (=> b!4067956 (= tp!1231288 b_and!312647)))

(declare-fun b_free!113167 () Bool)

(declare-fun b_next!113871 () Bool)

(assert (=> b!4067956 (= b_free!113167 (not b_next!113871))))

(declare-fun tp!1231283 () Bool)

(declare-fun b_and!312649 () Bool)

(assert (=> b!4067956 (= tp!1231283 b_and!312649)))

(declare-fun b!4067935 () Bool)

(declare-fun e!2524593 () Bool)

(declare-fun tp_is_empty!20745 () Bool)

(declare-fun tp!1231285 () Bool)

(assert (=> b!4067935 (= e!2524593 (and tp_is_empty!20745 tp!1231285))))

(declare-fun b!4067936 () Bool)

(declare-fun res!1660535 () Bool)

(declare-fun e!2524596 () Bool)

(assert (=> b!4067936 (=> (not res!1660535) (not e!2524596))))

(declare-datatypes ((C!23960 0))(
  ( (C!23961 (val!14074 Int)) )
))
(declare-datatypes ((List!43575 0))(
  ( (Nil!43451) (Cons!43451 (h!48871 C!23960) (t!336926 List!43575)) )
))
(declare-datatypes ((IArray!26391 0))(
  ( (IArray!26392 (innerList!13253 List!43575)) )
))
(declare-datatypes ((Conc!13193 0))(
  ( (Node!13193 (left!32678 Conc!13193) (right!33008 Conc!13193) (csize!26616 Int) (cheight!13404 Int)) (Leaf!20391 (xs!16499 IArray!26391) (csize!26617 Int)) (Empty!13193) )
))
(declare-datatypes ((BalanceConc!25980 0))(
  ( (BalanceConc!25981 (c!702316 Conc!13193)) )
))
(declare-datatypes ((List!43576 0))(
  ( (Nil!43452) (Cons!43452 (h!48872 (_ BitVec 16)) (t!336927 List!43576)) )
))
(declare-datatypes ((TokenValue!7212 0))(
  ( (FloatLiteralValue!14424 (text!50929 List!43576)) (TokenValueExt!7211 (__x!26641 Int)) (Broken!36060 (value!219595 List!43576)) (Object!7335) (End!7212) (Def!7212) (Underscore!7212) (Match!7212) (Else!7212) (Error!7212) (Case!7212) (If!7212) (Extends!7212) (Abstract!7212) (Class!7212) (Val!7212) (DelimiterValue!14424 (del!7272 List!43576)) (KeywordValue!7218 (value!219596 List!43576)) (CommentValue!14424 (value!219597 List!43576)) (WhitespaceValue!14424 (value!219598 List!43576)) (IndentationValue!7212 (value!219599 List!43576)) (String!49777) (Int32!7212) (Broken!36061 (value!219600 List!43576)) (Boolean!7213) (Unit!63018) (OperatorValue!7215 (op!7272 List!43576)) (IdentifierValue!14424 (value!219601 List!43576)) (IdentifierValue!14425 (value!219602 List!43576)) (WhitespaceValue!14425 (value!219603 List!43576)) (True!14424) (False!14424) (Broken!36062 (value!219604 List!43576)) (Broken!36063 (value!219605 List!43576)) (True!14425) (RightBrace!7212) (RightBracket!7212) (Colon!7212) (Null!7212) (Comma!7212) (LeftBracket!7212) (False!14425) (LeftBrace!7212) (ImaginaryLiteralValue!7212 (text!50930 List!43576)) (StringLiteralValue!21636 (value!219606 List!43576)) (EOFValue!7212 (value!219607 List!43576)) (IdentValue!7212 (value!219608 List!43576)) (DelimiterValue!14425 (value!219609 List!43576)) (DedentValue!7212 (value!219610 List!43576)) (NewLineValue!7212 (value!219611 List!43576)) (IntegerValue!21636 (value!219612 (_ BitVec 32)) (text!50931 List!43576)) (IntegerValue!21637 (value!219613 Int) (text!50932 List!43576)) (Times!7212) (Or!7212) (Equal!7212) (Minus!7212) (Broken!36064 (value!219614 List!43576)) (And!7212) (Div!7212) (LessEqual!7212) (Mod!7212) (Concat!19099) (Not!7212) (Plus!7212) (SpaceValue!7212 (value!219615 List!43576)) (IntegerValue!21638 (value!219616 Int) (text!50933 List!43576)) (StringLiteralValue!21637 (text!50934 List!43576)) (FloatLiteralValue!14425 (text!50935 List!43576)) (BytesLiteralValue!7212 (value!219617 List!43576)) (CommentValue!14425 (value!219618 List!43576)) (StringLiteralValue!21638 (value!219619 List!43576)) (ErrorTokenValue!7212 (msg!7273 List!43576)) )
))
(declare-datatypes ((Regex!11887 0))(
  ( (ElementMatch!11887 (c!702317 C!23960)) (Concat!19100 (regOne!24286 Regex!11887) (regTwo!24286 Regex!11887)) (EmptyExpr!11887) (Star!11887 (reg!12216 Regex!11887)) (EmptyLang!11887) (Union!11887 (regOne!24287 Regex!11887) (regTwo!24287 Regex!11887)) )
))
(declare-datatypes ((String!49778 0))(
  ( (String!49779 (value!219620 String)) )
))
(declare-datatypes ((TokenValueInjection!13852 0))(
  ( (TokenValueInjection!13853 (toValue!9542 Int) (toChars!9401 Int)) )
))
(declare-datatypes ((Rule!13764 0))(
  ( (Rule!13765 (regex!6982 Regex!11887) (tag!7842 String!49778) (isSeparator!6982 Bool) (transformation!6982 TokenValueInjection!13852)) )
))
(declare-datatypes ((Token!13102 0))(
  ( (Token!13103 (value!219621 TokenValue!7212) (rule!10084 Rule!13764) (size!32485 Int) (originalCharacters!7582 List!43575)) )
))
(declare-fun token!484 () Token!13102)

(declare-fun lt!1455921 () TokenValue!7212)

(assert (=> b!4067936 (= res!1660535 (= (value!219621 token!484) lt!1455921))))

(declare-fun b!4067937 () Bool)

(declare-fun res!1660547 () Bool)

(declare-fun e!2524606 () Bool)

(assert (=> b!4067937 (=> (not res!1660547) (not e!2524606))))

(declare-fun suffix!1299 () List!43575)

(declare-fun newSuffix!27 () List!43575)

(declare-fun size!32486 (List!43575) Int)

(assert (=> b!4067937 (= res!1660547 (>= (size!32486 suffix!1299) (size!32486 newSuffix!27)))))

(declare-fun e!2524604 () Bool)

(assert (=> b!4067939 (= e!2524604 (and tp!1231280 tp!1231290))))

(declare-fun b!4067940 () Bool)

(declare-fun e!2524613 () Bool)

(declare-fun e!2524601 () Bool)

(assert (=> b!4067940 (= e!2524613 e!2524601)))

(declare-fun res!1660548 () Bool)

(assert (=> b!4067940 (=> res!1660548 e!2524601)))

(declare-datatypes ((tuple2!42502 0))(
  ( (tuple2!42503 (_1!24385 Token!13102) (_2!24385 List!43575)) )
))
(declare-datatypes ((Option!9396 0))(
  ( (None!9395) (Some!9395 (v!39825 tuple2!42502)) )
))
(declare-fun lt!1455896 () Option!9396)

(declare-fun lt!1455913 () Option!9396)

(assert (=> b!4067940 (= res!1660548 (not (= lt!1455896 lt!1455913)))))

(declare-fun lt!1455915 () Token!13102)

(declare-fun suffixResult!105 () List!43575)

(assert (=> b!4067940 (= lt!1455896 (Some!9395 (tuple2!42503 lt!1455915 suffixResult!105)))))

(declare-fun lt!1455926 () List!43575)

(declare-datatypes ((LexerInterface!6571 0))(
  ( (LexerInterfaceExt!6568 (__x!26642 Int)) (Lexer!6569) )
))
(declare-fun thiss!21717 () LexerInterface!6571)

(declare-fun maxPrefixOneRule!2881 (LexerInterface!6571 Rule!13764 List!43575) Option!9396)

(assert (=> b!4067940 (= lt!1455896 (maxPrefixOneRule!2881 thiss!21717 (rule!10084 token!484) lt!1455926))))

(declare-fun lt!1455907 () List!43575)

(declare-fun lt!1455895 () Int)

(assert (=> b!4067940 (= lt!1455915 (Token!13103 lt!1455921 (rule!10084 token!484) lt!1455895 lt!1455907))))

(declare-fun apply!10171 (TokenValueInjection!13852 BalanceConc!25980) TokenValue!7212)

(declare-fun seqFromList!5199 (List!43575) BalanceConc!25980)

(assert (=> b!4067940 (= lt!1455921 (apply!10171 (transformation!6982 (rule!10084 token!484)) (seqFromList!5199 lt!1455907)))))

(declare-datatypes ((Unit!63019 0))(
  ( (Unit!63020) )
))
(declare-fun lt!1455917 () Unit!63019)

(declare-datatypes ((List!43577 0))(
  ( (Nil!43453) (Cons!43453 (h!48873 Rule!13764) (t!336928 List!43577)) )
))
(declare-fun rules!2999 () List!43577)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1687 (LexerInterface!6571 List!43577 List!43575 List!43575 List!43575 Rule!13764) Unit!63019)

(assert (=> b!4067940 (= lt!1455917 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1687 thiss!21717 rules!2999 lt!1455907 lt!1455926 suffixResult!105 (rule!10084 token!484)))))

(declare-fun lt!1455901 () List!43575)

(assert (=> b!4067940 (= lt!1455901 suffixResult!105)))

(declare-fun lt!1455908 () Unit!63019)

(declare-fun lemmaSamePrefixThenSameSuffix!2230 (List!43575 List!43575 List!43575 List!43575 List!43575) Unit!63019)

(assert (=> b!4067940 (= lt!1455908 (lemmaSamePrefixThenSameSuffix!2230 lt!1455907 lt!1455901 lt!1455907 suffixResult!105 lt!1455926))))

(declare-fun lt!1455900 () List!43575)

(declare-fun isPrefix!4069 (List!43575 List!43575) Bool)

(assert (=> b!4067940 (isPrefix!4069 lt!1455907 lt!1455900)))

(declare-fun lt!1455916 () Unit!63019)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2904 (List!43575 List!43575) Unit!63019)

(assert (=> b!4067940 (= lt!1455916 (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 lt!1455901))))

(declare-fun b!4067941 () Bool)

(declare-fun res!1660549 () Bool)

(assert (=> b!4067941 (=> (not res!1660549) (not e!2524606))))

(declare-fun isEmpty!25931 (List!43577) Bool)

(assert (=> b!4067941 (= res!1660549 (not (isEmpty!25931 rules!2999)))))

(declare-fun b!4067942 () Bool)

(declare-fun e!2524595 () Bool)

(declare-fun e!2524591 () Bool)

(assert (=> b!4067942 (= e!2524595 e!2524591)))

(declare-fun res!1660550 () Bool)

(assert (=> b!4067942 (=> res!1660550 e!2524591)))

(declare-fun lt!1455924 () List!43575)

(assert (=> b!4067942 (= res!1660550 (not (= lt!1455924 lt!1455926)))))

(declare-fun lt!1455914 () List!43575)

(declare-fun ++!11384 (List!43575 List!43575) List!43575)

(assert (=> b!4067942 (= lt!1455924 (++!11384 lt!1455907 lt!1455914))))

(declare-fun getSuffix!2486 (List!43575 List!43575) List!43575)

(assert (=> b!4067942 (= lt!1455914 (getSuffix!2486 lt!1455926 lt!1455907))))

(assert (=> b!4067942 e!2524596))

(declare-fun res!1660543 () Bool)

(assert (=> b!4067942 (=> (not res!1660543) (not e!2524596))))

(assert (=> b!4067942 (= res!1660543 (isPrefix!4069 lt!1455926 lt!1455926))))

(declare-fun lt!1455927 () Unit!63019)

(declare-fun lemmaIsPrefixRefl!2636 (List!43575 List!43575) Unit!63019)

(assert (=> b!4067942 (= lt!1455927 (lemmaIsPrefixRefl!2636 lt!1455926 lt!1455926))))

(declare-fun b!4067943 () Bool)

(declare-fun e!2524597 () Bool)

(declare-fun e!2524594 () Bool)

(assert (=> b!4067943 (= e!2524597 e!2524594)))

(declare-fun res!1660546 () Bool)

(assert (=> b!4067943 (=> res!1660546 e!2524594)))

(declare-fun lt!1455905 () List!43575)

(declare-fun prefix!494 () List!43575)

(assert (=> b!4067943 (= res!1660546 (not (= lt!1455905 prefix!494)))))

(declare-fun lt!1455922 () List!43575)

(assert (=> b!4067943 (= lt!1455905 (++!11384 lt!1455907 lt!1455922))))

(assert (=> b!4067943 (= lt!1455922 (getSuffix!2486 prefix!494 lt!1455907))))

(assert (=> b!4067943 (isPrefix!4069 lt!1455907 prefix!494)))

(declare-fun lt!1455923 () Unit!63019)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!633 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> b!4067943 (= lt!1455923 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!633 prefix!494 lt!1455907 lt!1455926))))

(declare-fun b!4067944 () Bool)

(declare-fun e!2524611 () Bool)

(assert (=> b!4067944 (= e!2524606 e!2524611)))

(declare-fun res!1660551 () Bool)

(assert (=> b!4067944 (=> (not res!1660551) (not e!2524611))))

(declare-fun lt!1455918 () Int)

(assert (=> b!4067944 (= res!1660551 (>= lt!1455918 lt!1455895))))

(assert (=> b!4067944 (= lt!1455895 (size!32486 lt!1455907))))

(assert (=> b!4067944 (= lt!1455918 (size!32486 prefix!494))))

(declare-fun list!16200 (BalanceConc!25980) List!43575)

(declare-fun charsOf!4798 (Token!13102) BalanceConc!25980)

(assert (=> b!4067944 (= lt!1455907 (list!16200 (charsOf!4798 token!484)))))

(declare-fun b!4067945 () Bool)

(assert (=> b!4067945 (= e!2524594 e!2524613)))

(declare-fun res!1660544 () Bool)

(assert (=> b!4067945 (=> res!1660544 e!2524613)))

(declare-fun lt!1455909 () List!43575)

(assert (=> b!4067945 (= res!1660544 (or (not (= lt!1455926 lt!1455909)) (not (= lt!1455926 lt!1455900))))))

(assert (=> b!4067945 (= lt!1455909 lt!1455900)))

(assert (=> b!4067945 (= lt!1455900 (++!11384 lt!1455907 lt!1455901))))

(assert (=> b!4067945 (= lt!1455909 (++!11384 lt!1455905 suffix!1299))))

(assert (=> b!4067945 (= lt!1455901 (++!11384 lt!1455922 suffix!1299))))

(declare-fun lt!1455920 () Unit!63019)

(declare-fun lemmaConcatAssociativity!2686 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> b!4067945 (= lt!1455920 (lemmaConcatAssociativity!2686 lt!1455907 lt!1455922 suffix!1299))))

(declare-fun b!4067946 () Bool)

(declare-fun e!2524602 () Bool)

(declare-fun e!2524603 () Bool)

(declare-fun tp!1231284 () Bool)

(assert (=> b!4067946 (= e!2524602 (and e!2524603 tp!1231284))))

(declare-fun b!4067947 () Bool)

(declare-fun e!2524590 () Bool)

(declare-fun tp!1231287 () Bool)

(assert (=> b!4067947 (= e!2524590 (and tp_is_empty!20745 tp!1231287))))

(declare-fun b!4067948 () Bool)

(declare-fun e!2524600 () Bool)

(assert (=> b!4067948 (= e!2524591 e!2524600)))

(declare-fun res!1660542 () Bool)

(assert (=> b!4067948 (=> res!1660542 e!2524600)))

(declare-fun lt!1455919 () List!43575)

(get-info :version)

(declare-fun maxPrefix!3869 (LexerInterface!6571 List!43577 List!43575) Option!9396)

(assert (=> b!4067948 (= res!1660542 ((_ is Some!9395) (maxPrefix!3869 thiss!21717 rules!2999 lt!1455919)))))

(declare-fun lt!1455904 () tuple2!42502)

(assert (=> b!4067948 (and (= suffixResult!105 lt!1455914) (= lt!1455904 (tuple2!42503 lt!1455915 lt!1455914)))))

(declare-fun lt!1455902 () Unit!63019)

(assert (=> b!4067948 (= lt!1455902 (lemmaSamePrefixThenSameSuffix!2230 lt!1455907 suffixResult!105 lt!1455907 lt!1455914 lt!1455926))))

(assert (=> b!4067948 (isPrefix!4069 lt!1455907 lt!1455924)))

(declare-fun lt!1455898 () Unit!63019)

(assert (=> b!4067948 (= lt!1455898 (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 lt!1455914))))

(declare-fun b!4067949 () Bool)

(declare-fun e!2524592 () Bool)

(declare-fun tp!1231291 () Bool)

(assert (=> b!4067949 (= e!2524592 (and tp_is_empty!20745 tp!1231291))))

(declare-fun b!4067950 () Bool)

(declare-fun e!2524615 () Bool)

(declare-fun e!2524616 () Bool)

(assert (=> b!4067950 (= e!2524615 (not e!2524616))))

(declare-fun res!1660539 () Bool)

(assert (=> b!4067950 (=> res!1660539 e!2524616)))

(declare-fun lt!1455903 () List!43575)

(assert (=> b!4067950 (= res!1660539 (not (= lt!1455903 lt!1455926)))))

(assert (=> b!4067950 (= lt!1455903 (++!11384 lt!1455907 suffixResult!105))))

(declare-fun lt!1455899 () Unit!63019)

(declare-fun lemmaInv!1191 (TokenValueInjection!13852) Unit!63019)

(assert (=> b!4067950 (= lt!1455899 (lemmaInv!1191 (transformation!6982 (rule!10084 token!484))))))

(declare-fun ruleValid!2912 (LexerInterface!6571 Rule!13764) Bool)

(assert (=> b!4067950 (ruleValid!2912 thiss!21717 (rule!10084 token!484))))

(declare-fun lt!1455912 () Unit!63019)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1982 (LexerInterface!6571 Rule!13764 List!43577) Unit!63019)

(assert (=> b!4067950 (= lt!1455912 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1982 thiss!21717 (rule!10084 token!484) rules!2999))))

(declare-fun b!4067951 () Bool)

(assert (=> b!4067951 (= e!2524601 e!2524595)))

(declare-fun res!1660538 () Bool)

(assert (=> b!4067951 (=> res!1660538 e!2524595)))

(declare-fun matchR!5840 (Regex!11887 List!43575) Bool)

(assert (=> b!4067951 (= res!1660538 (not (matchR!5840 (regex!6982 (rule!10084 token!484)) lt!1455907)))))

(assert (=> b!4067951 (isPrefix!4069 lt!1455907 lt!1455919)))

(declare-fun lt!1455897 () Unit!63019)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!862 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> b!4067951 (= lt!1455897 (lemmaPrefixStaysPrefixWhenAddingToSuffix!862 lt!1455907 prefix!494 newSuffix!27))))

(declare-fun lt!1455925 () Unit!63019)

(assert (=> b!4067951 (= lt!1455925 (lemmaPrefixStaysPrefixWhenAddingToSuffix!862 lt!1455907 prefix!494 suffix!1299))))

(declare-fun b!4067952 () Bool)

(declare-fun e!2524609 () Bool)

(assert (=> b!4067952 (= e!2524609 e!2524615)))

(declare-fun res!1660540 () Bool)

(assert (=> b!4067952 (=> (not res!1660540) (not e!2524615))))

(assert (=> b!4067952 (= res!1660540 (= (maxPrefix!3869 thiss!21717 rules!2999 lt!1455926) lt!1455913))))

(assert (=> b!4067952 (= lt!1455913 (Some!9395 lt!1455904))))

(assert (=> b!4067952 (= lt!1455904 (tuple2!42503 token!484 suffixResult!105))))

(assert (=> b!4067952 (= lt!1455926 (++!11384 prefix!494 suffix!1299))))

(declare-fun b!4067953 () Bool)

(declare-fun e!2524608 () Bool)

(declare-fun tp!1231286 () Bool)

(assert (=> b!4067953 (= e!2524608 (and tp_is_empty!20745 tp!1231286))))

(declare-fun b!4067954 () Bool)

(declare-fun res!1660541 () Bool)

(assert (=> b!4067954 (=> (not res!1660541) (not e!2524606))))

(assert (=> b!4067954 (= res!1660541 (isPrefix!4069 newSuffix!27 suffix!1299))))

(declare-fun b!4067955 () Bool)

(declare-fun e!2524607 () Bool)

(declare-fun tp!1231292 () Bool)

(assert (=> b!4067955 (= e!2524607 (and tp_is_empty!20745 tp!1231292))))

(declare-fun e!2524599 () Bool)

(assert (=> b!4067956 (= e!2524599 (and tp!1231288 tp!1231283))))

(declare-fun b!4067957 () Bool)

(assert (=> b!4067957 (= e!2524611 e!2524609)))

(declare-fun res!1660534 () Bool)

(assert (=> b!4067957 (=> (not res!1660534) (not e!2524609))))

(declare-fun lt!1455911 () List!43575)

(assert (=> b!4067957 (= res!1660534 (= lt!1455911 lt!1455919))))

(assert (=> b!4067957 (= lt!1455919 (++!11384 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43575)

(assert (=> b!4067957 (= lt!1455911 (++!11384 lt!1455907 newSuffixResult!27))))

(declare-fun b!4067958 () Bool)

(declare-fun rulesValidInductive!2555 (LexerInterface!6571 List!43577) Bool)

(assert (=> b!4067958 (= e!2524600 (rulesValidInductive!2555 thiss!21717 rules!2999))))

(declare-fun tp!1231289 () Bool)

(declare-fun b!4067938 () Bool)

(declare-fun inv!58084 (String!49778) Bool)

(declare-fun inv!58087 (TokenValueInjection!13852) Bool)

(assert (=> b!4067938 (= e!2524603 (and tp!1231289 (inv!58084 (tag!7842 (h!48873 rules!2999))) (inv!58087 (transformation!6982 (h!48873 rules!2999))) e!2524599))))

(declare-fun res!1660533 () Bool)

(assert (=> start!383708 (=> (not res!1660533) (not e!2524606))))

(assert (=> start!383708 (= res!1660533 ((_ is Lexer!6569) thiss!21717))))

(assert (=> start!383708 e!2524606))

(assert (=> start!383708 e!2524607))

(declare-fun e!2524612 () Bool)

(declare-fun inv!58088 (Token!13102) Bool)

(assert (=> start!383708 (and (inv!58088 token!484) e!2524612)))

(assert (=> start!383708 e!2524592))

(assert (=> start!383708 e!2524593))

(assert (=> start!383708 e!2524608))

(assert (=> start!383708 true))

(assert (=> start!383708 e!2524602))

(assert (=> start!383708 e!2524590))

(declare-fun b!4067959 () Bool)

(declare-fun res!1660537 () Bool)

(assert (=> b!4067959 (=> (not res!1660537) (not e!2524606))))

(declare-fun rulesInvariant!5914 (LexerInterface!6571 List!43577) Bool)

(assert (=> b!4067959 (= res!1660537 (rulesInvariant!5914 thiss!21717 rules!2999))))

(declare-fun b!4067960 () Bool)

(declare-fun tp!1231281 () Bool)

(declare-fun e!2524605 () Bool)

(declare-fun inv!21 (TokenValue!7212) Bool)

(assert (=> b!4067960 (= e!2524612 (and (inv!21 (value!219621 token!484)) e!2524605 tp!1231281))))

(declare-fun b!4067961 () Bool)

(assert (=> b!4067961 (= e!2524616 e!2524597)))

(declare-fun res!1660545 () Bool)

(assert (=> b!4067961 (=> res!1660545 e!2524597)))

(assert (=> b!4067961 (= res!1660545 (not (isPrefix!4069 lt!1455907 lt!1455926)))))

(assert (=> b!4067961 (isPrefix!4069 prefix!494 lt!1455926)))

(declare-fun lt!1455910 () Unit!63019)

(assert (=> b!4067961 (= lt!1455910 (lemmaConcatTwoListThenFirstIsPrefix!2904 prefix!494 suffix!1299))))

(assert (=> b!4067961 (isPrefix!4069 lt!1455907 lt!1455903)))

(declare-fun lt!1455906 () Unit!63019)

(assert (=> b!4067961 (= lt!1455906 (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 suffixResult!105))))

(declare-fun b!4067962 () Bool)

(declare-fun res!1660536 () Bool)

(assert (=> b!4067962 (=> (not res!1660536) (not e!2524596))))

(assert (=> b!4067962 (= res!1660536 (= (size!32485 token!484) (size!32486 (originalCharacters!7582 token!484))))))

(declare-fun b!4067963 () Bool)

(assert (=> b!4067963 (= e!2524596 (and (= (size!32485 token!484) lt!1455895) (= (originalCharacters!7582 token!484) lt!1455907)))))

(declare-fun b!4067964 () Bool)

(declare-fun tp!1231282 () Bool)

(assert (=> b!4067964 (= e!2524605 (and tp!1231282 (inv!58084 (tag!7842 (rule!10084 token!484))) (inv!58087 (transformation!6982 (rule!10084 token!484))) e!2524604))))

(assert (= (and start!383708 res!1660533) b!4067941))

(assert (= (and b!4067941 res!1660549) b!4067959))

(assert (= (and b!4067959 res!1660537) b!4067937))

(assert (= (and b!4067937 res!1660547) b!4067954))

(assert (= (and b!4067954 res!1660541) b!4067944))

(assert (= (and b!4067944 res!1660551) b!4067957))

(assert (= (and b!4067957 res!1660534) b!4067952))

(assert (= (and b!4067952 res!1660540) b!4067950))

(assert (= (and b!4067950 (not res!1660539)) b!4067961))

(assert (= (and b!4067961 (not res!1660545)) b!4067943))

(assert (= (and b!4067943 (not res!1660546)) b!4067945))

(assert (= (and b!4067945 (not res!1660544)) b!4067940))

(assert (= (and b!4067940 (not res!1660548)) b!4067951))

(assert (= (and b!4067951 (not res!1660538)) b!4067942))

(assert (= (and b!4067942 res!1660543) b!4067936))

(assert (= (and b!4067936 res!1660535) b!4067962))

(assert (= (and b!4067962 res!1660536) b!4067963))

(assert (= (and b!4067942 (not res!1660550)) b!4067948))

(assert (= (and b!4067948 (not res!1660542)) b!4067958))

(assert (= (and start!383708 ((_ is Cons!43451) prefix!494)) b!4067955))

(assert (= b!4067964 b!4067939))

(assert (= b!4067960 b!4067964))

(assert (= start!383708 b!4067960))

(assert (= (and start!383708 ((_ is Cons!43451) suffixResult!105)) b!4067949))

(assert (= (and start!383708 ((_ is Cons!43451) suffix!1299)) b!4067935))

(assert (= (and start!383708 ((_ is Cons!43451) newSuffix!27)) b!4067953))

(assert (= b!4067938 b!4067956))

(assert (= b!4067946 b!4067938))

(assert (= (and start!383708 ((_ is Cons!43453) rules!2999)) b!4067946))

(assert (= (and start!383708 ((_ is Cons!43451) newSuffixResult!27)) b!4067947))

(declare-fun m!4676443 () Bool)

(assert (=> b!4067944 m!4676443))

(declare-fun m!4676445 () Bool)

(assert (=> b!4067944 m!4676445))

(declare-fun m!4676447 () Bool)

(assert (=> b!4067944 m!4676447))

(assert (=> b!4067944 m!4676447))

(declare-fun m!4676449 () Bool)

(assert (=> b!4067944 m!4676449))

(declare-fun m!4676451 () Bool)

(assert (=> b!4067964 m!4676451))

(declare-fun m!4676453 () Bool)

(assert (=> b!4067964 m!4676453))

(declare-fun m!4676455 () Bool)

(assert (=> b!4067962 m!4676455))

(declare-fun m!4676457 () Bool)

(assert (=> b!4067948 m!4676457))

(declare-fun m!4676459 () Bool)

(assert (=> b!4067948 m!4676459))

(declare-fun m!4676461 () Bool)

(assert (=> b!4067948 m!4676461))

(declare-fun m!4676463 () Bool)

(assert (=> b!4067948 m!4676463))

(declare-fun m!4676465 () Bool)

(assert (=> b!4067957 m!4676465))

(declare-fun m!4676467 () Bool)

(assert (=> b!4067957 m!4676467))

(declare-fun m!4676469 () Bool)

(assert (=> b!4067951 m!4676469))

(declare-fun m!4676471 () Bool)

(assert (=> b!4067951 m!4676471))

(declare-fun m!4676473 () Bool)

(assert (=> b!4067951 m!4676473))

(declare-fun m!4676475 () Bool)

(assert (=> b!4067951 m!4676475))

(declare-fun m!4676477 () Bool)

(assert (=> b!4067954 m!4676477))

(declare-fun m!4676479 () Bool)

(assert (=> b!4067959 m!4676479))

(declare-fun m!4676481 () Bool)

(assert (=> b!4067945 m!4676481))

(declare-fun m!4676483 () Bool)

(assert (=> b!4067945 m!4676483))

(declare-fun m!4676485 () Bool)

(assert (=> b!4067945 m!4676485))

(declare-fun m!4676487 () Bool)

(assert (=> b!4067945 m!4676487))

(declare-fun m!4676489 () Bool)

(assert (=> b!4067960 m!4676489))

(declare-fun m!4676491 () Bool)

(assert (=> b!4067942 m!4676491))

(declare-fun m!4676493 () Bool)

(assert (=> b!4067942 m!4676493))

(declare-fun m!4676495 () Bool)

(assert (=> b!4067942 m!4676495))

(declare-fun m!4676497 () Bool)

(assert (=> b!4067942 m!4676497))

(declare-fun m!4676499 () Bool)

(assert (=> b!4067937 m!4676499))

(declare-fun m!4676501 () Bool)

(assert (=> b!4067937 m!4676501))

(declare-fun m!4676503 () Bool)

(assert (=> b!4067943 m!4676503))

(declare-fun m!4676505 () Bool)

(assert (=> b!4067943 m!4676505))

(declare-fun m!4676507 () Bool)

(assert (=> b!4067943 m!4676507))

(declare-fun m!4676509 () Bool)

(assert (=> b!4067943 m!4676509))

(declare-fun m!4676511 () Bool)

(assert (=> start!383708 m!4676511))

(declare-fun m!4676513 () Bool)

(assert (=> b!4067938 m!4676513))

(declare-fun m!4676515 () Bool)

(assert (=> b!4067938 m!4676515))

(declare-fun m!4676517 () Bool)

(assert (=> b!4067940 m!4676517))

(declare-fun m!4676519 () Bool)

(assert (=> b!4067940 m!4676519))

(declare-fun m!4676521 () Bool)

(assert (=> b!4067940 m!4676521))

(declare-fun m!4676523 () Bool)

(assert (=> b!4067940 m!4676523))

(assert (=> b!4067940 m!4676519))

(declare-fun m!4676525 () Bool)

(assert (=> b!4067940 m!4676525))

(declare-fun m!4676527 () Bool)

(assert (=> b!4067940 m!4676527))

(declare-fun m!4676529 () Bool)

(assert (=> b!4067940 m!4676529))

(declare-fun m!4676531 () Bool)

(assert (=> b!4067941 m!4676531))

(declare-fun m!4676533 () Bool)

(assert (=> b!4067961 m!4676533))

(declare-fun m!4676535 () Bool)

(assert (=> b!4067961 m!4676535))

(declare-fun m!4676537 () Bool)

(assert (=> b!4067961 m!4676537))

(declare-fun m!4676539 () Bool)

(assert (=> b!4067961 m!4676539))

(declare-fun m!4676541 () Bool)

(assert (=> b!4067961 m!4676541))

(declare-fun m!4676543 () Bool)

(assert (=> b!4067950 m!4676543))

(declare-fun m!4676545 () Bool)

(assert (=> b!4067950 m!4676545))

(declare-fun m!4676547 () Bool)

(assert (=> b!4067950 m!4676547))

(declare-fun m!4676549 () Bool)

(assert (=> b!4067950 m!4676549))

(declare-fun m!4676551 () Bool)

(assert (=> b!4067952 m!4676551))

(declare-fun m!4676553 () Bool)

(assert (=> b!4067952 m!4676553))

(declare-fun m!4676555 () Bool)

(assert (=> b!4067958 m!4676555))

(check-sat (not b!4067962) (not b!4067943) tp_is_empty!20745 (not b!4067937) (not b!4067964) (not b!4067950) (not b_next!113867) (not b!4067947) (not b!4067935) b_and!312649 (not b!4067938) (not b!4067945) b_and!312645 (not b!4067961) (not b!4067942) (not b!4067953) (not b!4067940) (not b!4067948) (not b!4067959) (not b!4067946) (not b!4067954) (not b!4067951) (not b!4067960) (not b!4067952) (not b_next!113869) b_and!312647 (not b!4067958) (not b!4067944) (not b!4067949) (not b_next!113865) (not b!4067941) (not start!383708) (not b_next!113871) (not b!4067955) (not b!4067957) b_and!312643)
(check-sat b_and!312645 (not b_next!113865) (not b_next!113867) (not b_next!113871) b_and!312643 b_and!312649 (not b_next!113869) b_and!312647)
(get-model)

(declare-fun d!1209158 () Bool)

(declare-fun lt!1455930 () Int)

(assert (=> d!1209158 (>= lt!1455930 0)))

(declare-fun e!2524619 () Int)

(assert (=> d!1209158 (= lt!1455930 e!2524619)))

(declare-fun c!702320 () Bool)

(assert (=> d!1209158 (= c!702320 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209158 (= (size!32486 lt!1455907) lt!1455930)))

(declare-fun b!4067969 () Bool)

(assert (=> b!4067969 (= e!2524619 0)))

(declare-fun b!4067970 () Bool)

(assert (=> b!4067970 (= e!2524619 (+ 1 (size!32486 (t!336926 lt!1455907))))))

(assert (= (and d!1209158 c!702320) b!4067969))

(assert (= (and d!1209158 (not c!702320)) b!4067970))

(declare-fun m!4676557 () Bool)

(assert (=> b!4067970 m!4676557))

(assert (=> b!4067944 d!1209158))

(declare-fun d!1209160 () Bool)

(declare-fun lt!1455931 () Int)

(assert (=> d!1209160 (>= lt!1455931 0)))

(declare-fun e!2524620 () Int)

(assert (=> d!1209160 (= lt!1455931 e!2524620)))

(declare-fun c!702321 () Bool)

(assert (=> d!1209160 (= c!702321 ((_ is Nil!43451) prefix!494))))

(assert (=> d!1209160 (= (size!32486 prefix!494) lt!1455931)))

(declare-fun b!4067971 () Bool)

(assert (=> b!4067971 (= e!2524620 0)))

(declare-fun b!4067972 () Bool)

(assert (=> b!4067972 (= e!2524620 (+ 1 (size!32486 (t!336926 prefix!494))))))

(assert (= (and d!1209160 c!702321) b!4067971))

(assert (= (and d!1209160 (not c!702321)) b!4067972))

(declare-fun m!4676559 () Bool)

(assert (=> b!4067972 m!4676559))

(assert (=> b!4067944 d!1209160))

(declare-fun d!1209162 () Bool)

(declare-fun list!16201 (Conc!13193) List!43575)

(assert (=> d!1209162 (= (list!16200 (charsOf!4798 token!484)) (list!16201 (c!702316 (charsOf!4798 token!484))))))

(declare-fun bs!592453 () Bool)

(assert (= bs!592453 d!1209162))

(declare-fun m!4676561 () Bool)

(assert (=> bs!592453 m!4676561))

(assert (=> b!4067944 d!1209162))

(declare-fun d!1209164 () Bool)

(declare-fun lt!1455934 () BalanceConc!25980)

(assert (=> d!1209164 (= (list!16200 lt!1455934) (originalCharacters!7582 token!484))))

(declare-fun dynLambda!18455 (Int TokenValue!7212) BalanceConc!25980)

(assert (=> d!1209164 (= lt!1455934 (dynLambda!18455 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (value!219621 token!484)))))

(assert (=> d!1209164 (= (charsOf!4798 token!484) lt!1455934)))

(declare-fun b_lambda!118839 () Bool)

(assert (=> (not b_lambda!118839) (not d!1209164)))

(declare-fun t!336930 () Bool)

(declare-fun tb!244577 () Bool)

(assert (=> (and b!4067939 (= (toChars!9401 (transformation!6982 (rule!10084 token!484))) (toChars!9401 (transformation!6982 (rule!10084 token!484)))) t!336930) tb!244577))

(declare-fun b!4067977 () Bool)

(declare-fun e!2524623 () Bool)

(declare-fun tp!1231295 () Bool)

(declare-fun inv!58089 (Conc!13193) Bool)

(assert (=> b!4067977 (= e!2524623 (and (inv!58089 (c!702316 (dynLambda!18455 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (value!219621 token!484)))) tp!1231295))))

(declare-fun result!296394 () Bool)

(declare-fun inv!58090 (BalanceConc!25980) Bool)

(assert (=> tb!244577 (= result!296394 (and (inv!58090 (dynLambda!18455 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (value!219621 token!484))) e!2524623))))

(assert (= tb!244577 b!4067977))

(declare-fun m!4676563 () Bool)

(assert (=> b!4067977 m!4676563))

(declare-fun m!4676565 () Bool)

(assert (=> tb!244577 m!4676565))

(assert (=> d!1209164 t!336930))

(declare-fun b_and!312651 () Bool)

(assert (= b_and!312645 (and (=> t!336930 result!296394) b_and!312651)))

(declare-fun tb!244579 () Bool)

(declare-fun t!336932 () Bool)

(assert (=> (and b!4067956 (= (toChars!9401 (transformation!6982 (h!48873 rules!2999))) (toChars!9401 (transformation!6982 (rule!10084 token!484)))) t!336932) tb!244579))

(declare-fun result!296398 () Bool)

(assert (= result!296398 result!296394))

(assert (=> d!1209164 t!336932))

(declare-fun b_and!312653 () Bool)

(assert (= b_and!312649 (and (=> t!336932 result!296398) b_and!312653)))

(declare-fun m!4676567 () Bool)

(assert (=> d!1209164 m!4676567))

(declare-fun m!4676569 () Bool)

(assert (=> d!1209164 m!4676569))

(assert (=> b!4067944 d!1209164))

(declare-fun b!4067987 () Bool)

(declare-fun e!2524629 () List!43575)

(assert (=> b!4067987 (= e!2524629 (Cons!43451 (h!48871 lt!1455907) (++!11384 (t!336926 lt!1455907) lt!1455901)))))

(declare-fun b!4067988 () Bool)

(declare-fun res!1660561 () Bool)

(declare-fun e!2524628 () Bool)

(assert (=> b!4067988 (=> (not res!1660561) (not e!2524628))))

(declare-fun lt!1455937 () List!43575)

(assert (=> b!4067988 (= res!1660561 (= (size!32486 lt!1455937) (+ (size!32486 lt!1455907) (size!32486 lt!1455901))))))

(declare-fun d!1209166 () Bool)

(assert (=> d!1209166 e!2524628))

(declare-fun res!1660560 () Bool)

(assert (=> d!1209166 (=> (not res!1660560) (not e!2524628))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6637 (List!43575) (InoxSet C!23960))

(assert (=> d!1209166 (= res!1660560 (= (content!6637 lt!1455937) ((_ map or) (content!6637 lt!1455907) (content!6637 lt!1455901))))))

(assert (=> d!1209166 (= lt!1455937 e!2524629)))

(declare-fun c!702324 () Bool)

(assert (=> d!1209166 (= c!702324 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209166 (= (++!11384 lt!1455907 lt!1455901) lt!1455937)))

(declare-fun b!4067986 () Bool)

(assert (=> b!4067986 (= e!2524629 lt!1455901)))

(declare-fun b!4067989 () Bool)

(assert (=> b!4067989 (= e!2524628 (or (not (= lt!1455901 Nil!43451)) (= lt!1455937 lt!1455907)))))

(assert (= (and d!1209166 c!702324) b!4067986))

(assert (= (and d!1209166 (not c!702324)) b!4067987))

(assert (= (and d!1209166 res!1660560) b!4067988))

(assert (= (and b!4067988 res!1660561) b!4067989))

(declare-fun m!4676571 () Bool)

(assert (=> b!4067987 m!4676571))

(declare-fun m!4676573 () Bool)

(assert (=> b!4067988 m!4676573))

(assert (=> b!4067988 m!4676443))

(declare-fun m!4676575 () Bool)

(assert (=> b!4067988 m!4676575))

(declare-fun m!4676577 () Bool)

(assert (=> d!1209166 m!4676577))

(declare-fun m!4676579 () Bool)

(assert (=> d!1209166 m!4676579))

(declare-fun m!4676581 () Bool)

(assert (=> d!1209166 m!4676581))

(assert (=> b!4067945 d!1209166))

(declare-fun b!4067993 () Bool)

(declare-fun e!2524633 () List!43575)

(assert (=> b!4067993 (= e!2524633 (Cons!43451 (h!48871 lt!1455905) (++!11384 (t!336926 lt!1455905) suffix!1299)))))

(declare-fun b!4067994 () Bool)

(declare-fun res!1660565 () Bool)

(declare-fun e!2524632 () Bool)

(assert (=> b!4067994 (=> (not res!1660565) (not e!2524632))))

(declare-fun lt!1455938 () List!43575)

(assert (=> b!4067994 (= res!1660565 (= (size!32486 lt!1455938) (+ (size!32486 lt!1455905) (size!32486 suffix!1299))))))

(declare-fun d!1209170 () Bool)

(assert (=> d!1209170 e!2524632))

(declare-fun res!1660564 () Bool)

(assert (=> d!1209170 (=> (not res!1660564) (not e!2524632))))

(assert (=> d!1209170 (= res!1660564 (= (content!6637 lt!1455938) ((_ map or) (content!6637 lt!1455905) (content!6637 suffix!1299))))))

(assert (=> d!1209170 (= lt!1455938 e!2524633)))

(declare-fun c!702325 () Bool)

(assert (=> d!1209170 (= c!702325 ((_ is Nil!43451) lt!1455905))))

(assert (=> d!1209170 (= (++!11384 lt!1455905 suffix!1299) lt!1455938)))

(declare-fun b!4067992 () Bool)

(assert (=> b!4067992 (= e!2524633 suffix!1299)))

(declare-fun b!4067995 () Bool)

(assert (=> b!4067995 (= e!2524632 (or (not (= suffix!1299 Nil!43451)) (= lt!1455938 lt!1455905)))))

(assert (= (and d!1209170 c!702325) b!4067992))

(assert (= (and d!1209170 (not c!702325)) b!4067993))

(assert (= (and d!1209170 res!1660564) b!4067994))

(assert (= (and b!4067994 res!1660565) b!4067995))

(declare-fun m!4676583 () Bool)

(assert (=> b!4067993 m!4676583))

(declare-fun m!4676585 () Bool)

(assert (=> b!4067994 m!4676585))

(declare-fun m!4676587 () Bool)

(assert (=> b!4067994 m!4676587))

(assert (=> b!4067994 m!4676499))

(declare-fun m!4676591 () Bool)

(assert (=> d!1209170 m!4676591))

(declare-fun m!4676595 () Bool)

(assert (=> d!1209170 m!4676595))

(declare-fun m!4676597 () Bool)

(assert (=> d!1209170 m!4676597))

(assert (=> b!4067945 d!1209170))

(declare-fun b!4067998 () Bool)

(declare-fun e!2524636 () List!43575)

(assert (=> b!4067998 (= e!2524636 (Cons!43451 (h!48871 lt!1455922) (++!11384 (t!336926 lt!1455922) suffix!1299)))))

(declare-fun b!4067999 () Bool)

(declare-fun res!1660568 () Bool)

(declare-fun e!2524635 () Bool)

(assert (=> b!4067999 (=> (not res!1660568) (not e!2524635))))

(declare-fun lt!1455939 () List!43575)

(assert (=> b!4067999 (= res!1660568 (= (size!32486 lt!1455939) (+ (size!32486 lt!1455922) (size!32486 suffix!1299))))))

(declare-fun d!1209174 () Bool)

(assert (=> d!1209174 e!2524635))

(declare-fun res!1660567 () Bool)

(assert (=> d!1209174 (=> (not res!1660567) (not e!2524635))))

(assert (=> d!1209174 (= res!1660567 (= (content!6637 lt!1455939) ((_ map or) (content!6637 lt!1455922) (content!6637 suffix!1299))))))

(assert (=> d!1209174 (= lt!1455939 e!2524636)))

(declare-fun c!702326 () Bool)

(assert (=> d!1209174 (= c!702326 ((_ is Nil!43451) lt!1455922))))

(assert (=> d!1209174 (= (++!11384 lt!1455922 suffix!1299) lt!1455939)))

(declare-fun b!4067997 () Bool)

(assert (=> b!4067997 (= e!2524636 suffix!1299)))

(declare-fun b!4068000 () Bool)

(assert (=> b!4068000 (= e!2524635 (or (not (= suffix!1299 Nil!43451)) (= lt!1455939 lt!1455922)))))

(assert (= (and d!1209174 c!702326) b!4067997))

(assert (= (and d!1209174 (not c!702326)) b!4067998))

(assert (= (and d!1209174 res!1660567) b!4067999))

(assert (= (and b!4067999 res!1660568) b!4068000))

(declare-fun m!4676599 () Bool)

(assert (=> b!4067998 m!4676599))

(declare-fun m!4676601 () Bool)

(assert (=> b!4067999 m!4676601))

(declare-fun m!4676603 () Bool)

(assert (=> b!4067999 m!4676603))

(assert (=> b!4067999 m!4676499))

(declare-fun m!4676605 () Bool)

(assert (=> d!1209174 m!4676605))

(declare-fun m!4676607 () Bool)

(assert (=> d!1209174 m!4676607))

(assert (=> d!1209174 m!4676597))

(assert (=> b!4067945 d!1209174))

(declare-fun d!1209178 () Bool)

(assert (=> d!1209178 (= (++!11384 (++!11384 lt!1455907 lt!1455922) suffix!1299) (++!11384 lt!1455907 (++!11384 lt!1455922 suffix!1299)))))

(declare-fun lt!1455942 () Unit!63019)

(declare-fun choose!24790 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> d!1209178 (= lt!1455942 (choose!24790 lt!1455907 lt!1455922 suffix!1299))))

(assert (=> d!1209178 (= (lemmaConcatAssociativity!2686 lt!1455907 lt!1455922 suffix!1299) lt!1455942)))

(declare-fun bs!592454 () Bool)

(assert (= bs!592454 d!1209178))

(assert (=> bs!592454 m!4676485))

(declare-fun m!4676609 () Bool)

(assert (=> bs!592454 m!4676609))

(assert (=> bs!592454 m!4676485))

(declare-fun m!4676611 () Bool)

(assert (=> bs!592454 m!4676611))

(assert (=> bs!592454 m!4676503))

(assert (=> bs!592454 m!4676503))

(declare-fun m!4676613 () Bool)

(assert (=> bs!592454 m!4676613))

(assert (=> b!4067945 d!1209178))

(declare-fun d!1209180 () Bool)

(assert (=> d!1209180 (= (isEmpty!25931 rules!2999) ((_ is Nil!43453) rules!2999))))

(assert (=> b!4067941 d!1209180))

(declare-fun b!4068077 () Bool)

(declare-fun e!2524677 () Option!9396)

(declare-fun lt!1455966 () Option!9396)

(declare-fun lt!1455968 () Option!9396)

(assert (=> b!4068077 (= e!2524677 (ite (and ((_ is None!9395) lt!1455966) ((_ is None!9395) lt!1455968)) None!9395 (ite ((_ is None!9395) lt!1455968) lt!1455966 (ite ((_ is None!9395) lt!1455966) lt!1455968 (ite (>= (size!32485 (_1!24385 (v!39825 lt!1455966))) (size!32485 (_1!24385 (v!39825 lt!1455968)))) lt!1455966 lt!1455968)))))))

(declare-fun call!288318 () Option!9396)

(assert (=> b!4068077 (= lt!1455966 call!288318)))

(assert (=> b!4068077 (= lt!1455968 (maxPrefix!3869 thiss!21717 (t!336928 rules!2999) lt!1455926))))

(declare-fun b!4068078 () Bool)

(declare-fun res!1660628 () Bool)

(declare-fun e!2524679 () Bool)

(assert (=> b!4068078 (=> (not res!1660628) (not e!2524679))))

(declare-fun lt!1455965 () Option!9396)

(declare-fun get!14249 (Option!9396) tuple2!42502)

(assert (=> b!4068078 (= res!1660628 (matchR!5840 (regex!6982 (rule!10084 (_1!24385 (get!14249 lt!1455965)))) (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1455965))))))))

(declare-fun d!1209182 () Bool)

(declare-fun e!2524678 () Bool)

(assert (=> d!1209182 e!2524678))

(declare-fun res!1660624 () Bool)

(assert (=> d!1209182 (=> res!1660624 e!2524678)))

(declare-fun isEmpty!25934 (Option!9396) Bool)

(assert (=> d!1209182 (= res!1660624 (isEmpty!25934 lt!1455965))))

(assert (=> d!1209182 (= lt!1455965 e!2524677)))

(declare-fun c!702338 () Bool)

(assert (=> d!1209182 (= c!702338 (and ((_ is Cons!43453) rules!2999) ((_ is Nil!43453) (t!336928 rules!2999))))))

(declare-fun lt!1455969 () Unit!63019)

(declare-fun lt!1455967 () Unit!63019)

(assert (=> d!1209182 (= lt!1455969 lt!1455967)))

(assert (=> d!1209182 (isPrefix!4069 lt!1455926 lt!1455926)))

(assert (=> d!1209182 (= lt!1455967 (lemmaIsPrefixRefl!2636 lt!1455926 lt!1455926))))

(assert (=> d!1209182 (rulesValidInductive!2555 thiss!21717 rules!2999)))

(assert (=> d!1209182 (= (maxPrefix!3869 thiss!21717 rules!2999 lt!1455926) lt!1455965)))

(declare-fun bm!288313 () Bool)

(assert (=> bm!288313 (= call!288318 (maxPrefixOneRule!2881 thiss!21717 (h!48873 rules!2999) lt!1455926))))

(declare-fun b!4068079 () Bool)

(declare-fun contains!8648 (List!43577 Rule!13764) Bool)

(assert (=> b!4068079 (= e!2524679 (contains!8648 rules!2999 (rule!10084 (_1!24385 (get!14249 lt!1455965)))))))

(declare-fun b!4068080 () Bool)

(declare-fun res!1660629 () Bool)

(assert (=> b!4068080 (=> (not res!1660629) (not e!2524679))))

(assert (=> b!4068080 (= res!1660629 (= (value!219621 (_1!24385 (get!14249 lt!1455965))) (apply!10171 (transformation!6982 (rule!10084 (_1!24385 (get!14249 lt!1455965)))) (seqFromList!5199 (originalCharacters!7582 (_1!24385 (get!14249 lt!1455965)))))))))

(declare-fun b!4068081 () Bool)

(declare-fun res!1660625 () Bool)

(assert (=> b!4068081 (=> (not res!1660625) (not e!2524679))))

(assert (=> b!4068081 (= res!1660625 (< (size!32486 (_2!24385 (get!14249 lt!1455965))) (size!32486 lt!1455926)))))

(declare-fun b!4068082 () Bool)

(declare-fun res!1660623 () Bool)

(assert (=> b!4068082 (=> (not res!1660623) (not e!2524679))))

(assert (=> b!4068082 (= res!1660623 (= (++!11384 (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1455965)))) (_2!24385 (get!14249 lt!1455965))) lt!1455926))))

(declare-fun b!4068083 () Bool)

(assert (=> b!4068083 (= e!2524678 e!2524679)))

(declare-fun res!1660626 () Bool)

(assert (=> b!4068083 (=> (not res!1660626) (not e!2524679))))

(declare-fun isDefined!7134 (Option!9396) Bool)

(assert (=> b!4068083 (= res!1660626 (isDefined!7134 lt!1455965))))

(declare-fun b!4068084 () Bool)

(declare-fun res!1660627 () Bool)

(assert (=> b!4068084 (=> (not res!1660627) (not e!2524679))))

(assert (=> b!4068084 (= res!1660627 (= (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1455965)))) (originalCharacters!7582 (_1!24385 (get!14249 lt!1455965)))))))

(declare-fun b!4068085 () Bool)

(assert (=> b!4068085 (= e!2524677 call!288318)))

(assert (= (and d!1209182 c!702338) b!4068085))

(assert (= (and d!1209182 (not c!702338)) b!4068077))

(assert (= (or b!4068085 b!4068077) bm!288313))

(assert (= (and d!1209182 (not res!1660624)) b!4068083))

(assert (= (and b!4068083 res!1660626) b!4068084))

(assert (= (and b!4068084 res!1660627) b!4068081))

(assert (= (and b!4068081 res!1660625) b!4068082))

(assert (= (and b!4068082 res!1660623) b!4068080))

(assert (= (and b!4068080 res!1660629) b!4068078))

(assert (= (and b!4068078 res!1660628) b!4068079))

(declare-fun m!4676647 () Bool)

(assert (=> b!4068079 m!4676647))

(declare-fun m!4676649 () Bool)

(assert (=> b!4068079 m!4676649))

(assert (=> b!4068080 m!4676647))

(declare-fun m!4676651 () Bool)

(assert (=> b!4068080 m!4676651))

(assert (=> b!4068080 m!4676651))

(declare-fun m!4676653 () Bool)

(assert (=> b!4068080 m!4676653))

(declare-fun m!4676655 () Bool)

(assert (=> bm!288313 m!4676655))

(declare-fun m!4676657 () Bool)

(assert (=> b!4068077 m!4676657))

(assert (=> b!4068082 m!4676647))

(declare-fun m!4676659 () Bool)

(assert (=> b!4068082 m!4676659))

(assert (=> b!4068082 m!4676659))

(declare-fun m!4676661 () Bool)

(assert (=> b!4068082 m!4676661))

(assert (=> b!4068082 m!4676661))

(declare-fun m!4676663 () Bool)

(assert (=> b!4068082 m!4676663))

(declare-fun m!4676665 () Bool)

(assert (=> d!1209182 m!4676665))

(assert (=> d!1209182 m!4676495))

(assert (=> d!1209182 m!4676497))

(assert (=> d!1209182 m!4676555))

(declare-fun m!4676667 () Bool)

(assert (=> b!4068083 m!4676667))

(assert (=> b!4068084 m!4676647))

(assert (=> b!4068084 m!4676659))

(assert (=> b!4068084 m!4676659))

(assert (=> b!4068084 m!4676661))

(assert (=> b!4068081 m!4676647))

(declare-fun m!4676669 () Bool)

(assert (=> b!4068081 m!4676669))

(declare-fun m!4676671 () Bool)

(assert (=> b!4068081 m!4676671))

(assert (=> b!4068078 m!4676647))

(assert (=> b!4068078 m!4676659))

(assert (=> b!4068078 m!4676659))

(assert (=> b!4068078 m!4676661))

(assert (=> b!4068078 m!4676661))

(declare-fun m!4676673 () Bool)

(assert (=> b!4068078 m!4676673))

(assert (=> b!4067952 d!1209182))

(declare-fun b!4068087 () Bool)

(declare-fun e!2524681 () List!43575)

(assert (=> b!4068087 (= e!2524681 (Cons!43451 (h!48871 prefix!494) (++!11384 (t!336926 prefix!494) suffix!1299)))))

(declare-fun b!4068088 () Bool)

(declare-fun res!1660631 () Bool)

(declare-fun e!2524680 () Bool)

(assert (=> b!4068088 (=> (not res!1660631) (not e!2524680))))

(declare-fun lt!1455970 () List!43575)

(assert (=> b!4068088 (= res!1660631 (= (size!32486 lt!1455970) (+ (size!32486 prefix!494) (size!32486 suffix!1299))))))

(declare-fun d!1209192 () Bool)

(assert (=> d!1209192 e!2524680))

(declare-fun res!1660630 () Bool)

(assert (=> d!1209192 (=> (not res!1660630) (not e!2524680))))

(assert (=> d!1209192 (= res!1660630 (= (content!6637 lt!1455970) ((_ map or) (content!6637 prefix!494) (content!6637 suffix!1299))))))

(assert (=> d!1209192 (= lt!1455970 e!2524681)))

(declare-fun c!702339 () Bool)

(assert (=> d!1209192 (= c!702339 ((_ is Nil!43451) prefix!494))))

(assert (=> d!1209192 (= (++!11384 prefix!494 suffix!1299) lt!1455970)))

(declare-fun b!4068086 () Bool)

(assert (=> b!4068086 (= e!2524681 suffix!1299)))

(declare-fun b!4068089 () Bool)

(assert (=> b!4068089 (= e!2524680 (or (not (= suffix!1299 Nil!43451)) (= lt!1455970 prefix!494)))))

(assert (= (and d!1209192 c!702339) b!4068086))

(assert (= (and d!1209192 (not c!702339)) b!4068087))

(assert (= (and d!1209192 res!1660630) b!4068088))

(assert (= (and b!4068088 res!1660631) b!4068089))

(declare-fun m!4676675 () Bool)

(assert (=> b!4068087 m!4676675))

(declare-fun m!4676677 () Bool)

(assert (=> b!4068088 m!4676677))

(assert (=> b!4068088 m!4676445))

(assert (=> b!4068088 m!4676499))

(declare-fun m!4676679 () Bool)

(assert (=> d!1209192 m!4676679))

(declare-fun m!4676681 () Bool)

(assert (=> d!1209192 m!4676681))

(assert (=> d!1209192 m!4676597))

(assert (=> b!4067952 d!1209192))

(declare-fun b!4068091 () Bool)

(declare-fun e!2524683 () List!43575)

(assert (=> b!4068091 (= e!2524683 (Cons!43451 (h!48871 lt!1455907) (++!11384 (t!336926 lt!1455907) lt!1455914)))))

(declare-fun b!4068092 () Bool)

(declare-fun res!1660633 () Bool)

(declare-fun e!2524682 () Bool)

(assert (=> b!4068092 (=> (not res!1660633) (not e!2524682))))

(declare-fun lt!1455971 () List!43575)

(assert (=> b!4068092 (= res!1660633 (= (size!32486 lt!1455971) (+ (size!32486 lt!1455907) (size!32486 lt!1455914))))))

(declare-fun d!1209194 () Bool)

(assert (=> d!1209194 e!2524682))

(declare-fun res!1660632 () Bool)

(assert (=> d!1209194 (=> (not res!1660632) (not e!2524682))))

(assert (=> d!1209194 (= res!1660632 (= (content!6637 lt!1455971) ((_ map or) (content!6637 lt!1455907) (content!6637 lt!1455914))))))

(assert (=> d!1209194 (= lt!1455971 e!2524683)))

(declare-fun c!702340 () Bool)

(assert (=> d!1209194 (= c!702340 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209194 (= (++!11384 lt!1455907 lt!1455914) lt!1455971)))

(declare-fun b!4068090 () Bool)

(assert (=> b!4068090 (= e!2524683 lt!1455914)))

(declare-fun b!4068093 () Bool)

(assert (=> b!4068093 (= e!2524682 (or (not (= lt!1455914 Nil!43451)) (= lt!1455971 lt!1455907)))))

(assert (= (and d!1209194 c!702340) b!4068090))

(assert (= (and d!1209194 (not c!702340)) b!4068091))

(assert (= (and d!1209194 res!1660632) b!4068092))

(assert (= (and b!4068092 res!1660633) b!4068093))

(declare-fun m!4676683 () Bool)

(assert (=> b!4068091 m!4676683))

(declare-fun m!4676685 () Bool)

(assert (=> b!4068092 m!4676685))

(assert (=> b!4068092 m!4676443))

(declare-fun m!4676687 () Bool)

(assert (=> b!4068092 m!4676687))

(declare-fun m!4676689 () Bool)

(assert (=> d!1209194 m!4676689))

(assert (=> d!1209194 m!4676579))

(declare-fun m!4676691 () Bool)

(assert (=> d!1209194 m!4676691))

(assert (=> b!4067942 d!1209194))

(declare-fun d!1209196 () Bool)

(declare-fun lt!1455974 () List!43575)

(assert (=> d!1209196 (= (++!11384 lt!1455907 lt!1455974) lt!1455926)))

(declare-fun e!2524686 () List!43575)

(assert (=> d!1209196 (= lt!1455974 e!2524686)))

(declare-fun c!702343 () Bool)

(assert (=> d!1209196 (= c!702343 ((_ is Cons!43451) lt!1455907))))

(assert (=> d!1209196 (>= (size!32486 lt!1455926) (size!32486 lt!1455907))))

(assert (=> d!1209196 (= (getSuffix!2486 lt!1455926 lt!1455907) lt!1455974)))

(declare-fun b!4068098 () Bool)

(declare-fun tail!6315 (List!43575) List!43575)

(assert (=> b!4068098 (= e!2524686 (getSuffix!2486 (tail!6315 lt!1455926) (t!336926 lt!1455907)))))

(declare-fun b!4068099 () Bool)

(assert (=> b!4068099 (= e!2524686 lt!1455926)))

(assert (= (and d!1209196 c!702343) b!4068098))

(assert (= (and d!1209196 (not c!702343)) b!4068099))

(declare-fun m!4676693 () Bool)

(assert (=> d!1209196 m!4676693))

(assert (=> d!1209196 m!4676671))

(assert (=> d!1209196 m!4676443))

(declare-fun m!4676695 () Bool)

(assert (=> b!4068098 m!4676695))

(assert (=> b!4068098 m!4676695))

(declare-fun m!4676697 () Bool)

(assert (=> b!4068098 m!4676697))

(assert (=> b!4067942 d!1209196))

(declare-fun d!1209198 () Bool)

(declare-fun e!2524694 () Bool)

(assert (=> d!1209198 e!2524694))

(declare-fun res!1660644 () Bool)

(assert (=> d!1209198 (=> res!1660644 e!2524694)))

(declare-fun lt!1455977 () Bool)

(assert (=> d!1209198 (= res!1660644 (not lt!1455977))))

(declare-fun e!2524693 () Bool)

(assert (=> d!1209198 (= lt!1455977 e!2524693)))

(declare-fun res!1660643 () Bool)

(assert (=> d!1209198 (=> res!1660643 e!2524693)))

(assert (=> d!1209198 (= res!1660643 ((_ is Nil!43451) lt!1455926))))

(assert (=> d!1209198 (= (isPrefix!4069 lt!1455926 lt!1455926) lt!1455977)))

(declare-fun b!4068108 () Bool)

(declare-fun e!2524695 () Bool)

(assert (=> b!4068108 (= e!2524693 e!2524695)))

(declare-fun res!1660642 () Bool)

(assert (=> b!4068108 (=> (not res!1660642) (not e!2524695))))

(assert (=> b!4068108 (= res!1660642 (not ((_ is Nil!43451) lt!1455926)))))

(declare-fun b!4068110 () Bool)

(assert (=> b!4068110 (= e!2524695 (isPrefix!4069 (tail!6315 lt!1455926) (tail!6315 lt!1455926)))))

(declare-fun b!4068109 () Bool)

(declare-fun res!1660645 () Bool)

(assert (=> b!4068109 (=> (not res!1660645) (not e!2524695))))

(declare-fun head!8583 (List!43575) C!23960)

(assert (=> b!4068109 (= res!1660645 (= (head!8583 lt!1455926) (head!8583 lt!1455926)))))

(declare-fun b!4068111 () Bool)

(assert (=> b!4068111 (= e!2524694 (>= (size!32486 lt!1455926) (size!32486 lt!1455926)))))

(assert (= (and d!1209198 (not res!1660643)) b!4068108))

(assert (= (and b!4068108 res!1660642) b!4068109))

(assert (= (and b!4068109 res!1660645) b!4068110))

(assert (= (and d!1209198 (not res!1660644)) b!4068111))

(assert (=> b!4068110 m!4676695))

(assert (=> b!4068110 m!4676695))

(assert (=> b!4068110 m!4676695))

(assert (=> b!4068110 m!4676695))

(declare-fun m!4676699 () Bool)

(assert (=> b!4068110 m!4676699))

(declare-fun m!4676701 () Bool)

(assert (=> b!4068109 m!4676701))

(assert (=> b!4068109 m!4676701))

(assert (=> b!4068111 m!4676671))

(assert (=> b!4068111 m!4676671))

(assert (=> b!4067942 d!1209198))

(declare-fun d!1209200 () Bool)

(assert (=> d!1209200 (isPrefix!4069 lt!1455926 lt!1455926)))

(declare-fun lt!1455980 () Unit!63019)

(declare-fun choose!24792 (List!43575 List!43575) Unit!63019)

(assert (=> d!1209200 (= lt!1455980 (choose!24792 lt!1455926 lt!1455926))))

(assert (=> d!1209200 (= (lemmaIsPrefixRefl!2636 lt!1455926 lt!1455926) lt!1455980)))

(declare-fun bs!592457 () Bool)

(assert (= bs!592457 d!1209200))

(assert (=> bs!592457 m!4676495))

(declare-fun m!4676703 () Bool)

(assert (=> bs!592457 m!4676703))

(assert (=> b!4067942 d!1209200))

(declare-fun d!1209202 () Bool)

(assert (=> d!1209202 (= (inv!58084 (tag!7842 (rule!10084 token!484))) (= (mod (str.len (value!219620 (tag!7842 (rule!10084 token!484)))) 2) 0))))

(assert (=> b!4067964 d!1209202))

(declare-fun d!1209204 () Bool)

(declare-fun res!1660648 () Bool)

(declare-fun e!2524698 () Bool)

(assert (=> d!1209204 (=> (not res!1660648) (not e!2524698))))

(declare-fun semiInverseModEq!2987 (Int Int) Bool)

(assert (=> d!1209204 (= res!1660648 (semiInverseModEq!2987 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))))))

(assert (=> d!1209204 (= (inv!58087 (transformation!6982 (rule!10084 token!484))) e!2524698)))

(declare-fun b!4068114 () Bool)

(declare-fun equivClasses!2886 (Int Int) Bool)

(assert (=> b!4068114 (= e!2524698 (equivClasses!2886 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))))))

(assert (= (and d!1209204 res!1660648) b!4068114))

(declare-fun m!4676705 () Bool)

(assert (=> d!1209204 m!4676705))

(declare-fun m!4676707 () Bool)

(assert (=> b!4068114 m!4676707))

(assert (=> b!4067964 d!1209204))

(declare-fun b!4068116 () Bool)

(declare-fun e!2524700 () List!43575)

(assert (=> b!4068116 (= e!2524700 (Cons!43451 (h!48871 lt!1455907) (++!11384 (t!336926 lt!1455907) lt!1455922)))))

(declare-fun b!4068117 () Bool)

(declare-fun res!1660650 () Bool)

(declare-fun e!2524699 () Bool)

(assert (=> b!4068117 (=> (not res!1660650) (not e!2524699))))

(declare-fun lt!1455981 () List!43575)

(assert (=> b!4068117 (= res!1660650 (= (size!32486 lt!1455981) (+ (size!32486 lt!1455907) (size!32486 lt!1455922))))))

(declare-fun d!1209206 () Bool)

(assert (=> d!1209206 e!2524699))

(declare-fun res!1660649 () Bool)

(assert (=> d!1209206 (=> (not res!1660649) (not e!2524699))))

(assert (=> d!1209206 (= res!1660649 (= (content!6637 lt!1455981) ((_ map or) (content!6637 lt!1455907) (content!6637 lt!1455922))))))

(assert (=> d!1209206 (= lt!1455981 e!2524700)))

(declare-fun c!702344 () Bool)

(assert (=> d!1209206 (= c!702344 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209206 (= (++!11384 lt!1455907 lt!1455922) lt!1455981)))

(declare-fun b!4068115 () Bool)

(assert (=> b!4068115 (= e!2524700 lt!1455922)))

(declare-fun b!4068118 () Bool)

(assert (=> b!4068118 (= e!2524699 (or (not (= lt!1455922 Nil!43451)) (= lt!1455981 lt!1455907)))))

(assert (= (and d!1209206 c!702344) b!4068115))

(assert (= (and d!1209206 (not c!702344)) b!4068116))

(assert (= (and d!1209206 res!1660649) b!4068117))

(assert (= (and b!4068117 res!1660650) b!4068118))

(declare-fun m!4676709 () Bool)

(assert (=> b!4068116 m!4676709))

(declare-fun m!4676711 () Bool)

(assert (=> b!4068117 m!4676711))

(assert (=> b!4068117 m!4676443))

(assert (=> b!4068117 m!4676603))

(declare-fun m!4676713 () Bool)

(assert (=> d!1209206 m!4676713))

(assert (=> d!1209206 m!4676579))

(assert (=> d!1209206 m!4676607))

(assert (=> b!4067943 d!1209206))

(declare-fun d!1209208 () Bool)

(declare-fun lt!1455982 () List!43575)

(assert (=> d!1209208 (= (++!11384 lt!1455907 lt!1455982) prefix!494)))

(declare-fun e!2524701 () List!43575)

(assert (=> d!1209208 (= lt!1455982 e!2524701)))

(declare-fun c!702345 () Bool)

(assert (=> d!1209208 (= c!702345 ((_ is Cons!43451) lt!1455907))))

(assert (=> d!1209208 (>= (size!32486 prefix!494) (size!32486 lt!1455907))))

(assert (=> d!1209208 (= (getSuffix!2486 prefix!494 lt!1455907) lt!1455982)))

(declare-fun b!4068119 () Bool)

(assert (=> b!4068119 (= e!2524701 (getSuffix!2486 (tail!6315 prefix!494) (t!336926 lt!1455907)))))

(declare-fun b!4068120 () Bool)

(assert (=> b!4068120 (= e!2524701 prefix!494)))

(assert (= (and d!1209208 c!702345) b!4068119))

(assert (= (and d!1209208 (not c!702345)) b!4068120))

(declare-fun m!4676715 () Bool)

(assert (=> d!1209208 m!4676715))

(assert (=> d!1209208 m!4676445))

(assert (=> d!1209208 m!4676443))

(declare-fun m!4676717 () Bool)

(assert (=> b!4068119 m!4676717))

(assert (=> b!4068119 m!4676717))

(declare-fun m!4676719 () Bool)

(assert (=> b!4068119 m!4676719))

(assert (=> b!4067943 d!1209208))

(declare-fun d!1209210 () Bool)

(declare-fun e!2524703 () Bool)

(assert (=> d!1209210 e!2524703))

(declare-fun res!1660653 () Bool)

(assert (=> d!1209210 (=> res!1660653 e!2524703)))

(declare-fun lt!1455983 () Bool)

(assert (=> d!1209210 (= res!1660653 (not lt!1455983))))

(declare-fun e!2524702 () Bool)

(assert (=> d!1209210 (= lt!1455983 e!2524702)))

(declare-fun res!1660652 () Bool)

(assert (=> d!1209210 (=> res!1660652 e!2524702)))

(assert (=> d!1209210 (= res!1660652 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209210 (= (isPrefix!4069 lt!1455907 prefix!494) lt!1455983)))

(declare-fun b!4068121 () Bool)

(declare-fun e!2524704 () Bool)

(assert (=> b!4068121 (= e!2524702 e!2524704)))

(declare-fun res!1660651 () Bool)

(assert (=> b!4068121 (=> (not res!1660651) (not e!2524704))))

(assert (=> b!4068121 (= res!1660651 (not ((_ is Nil!43451) prefix!494)))))

(declare-fun b!4068123 () Bool)

(assert (=> b!4068123 (= e!2524704 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 prefix!494)))))

(declare-fun b!4068122 () Bool)

(declare-fun res!1660654 () Bool)

(assert (=> b!4068122 (=> (not res!1660654) (not e!2524704))))

(assert (=> b!4068122 (= res!1660654 (= (head!8583 lt!1455907) (head!8583 prefix!494)))))

(declare-fun b!4068124 () Bool)

(assert (=> b!4068124 (= e!2524703 (>= (size!32486 prefix!494) (size!32486 lt!1455907)))))

(assert (= (and d!1209210 (not res!1660652)) b!4068121))

(assert (= (and b!4068121 res!1660651) b!4068122))

(assert (= (and b!4068122 res!1660654) b!4068123))

(assert (= (and d!1209210 (not res!1660653)) b!4068124))

(declare-fun m!4676721 () Bool)

(assert (=> b!4068123 m!4676721))

(assert (=> b!4068123 m!4676717))

(assert (=> b!4068123 m!4676721))

(assert (=> b!4068123 m!4676717))

(declare-fun m!4676723 () Bool)

(assert (=> b!4068123 m!4676723))

(declare-fun m!4676725 () Bool)

(assert (=> b!4068122 m!4676725))

(declare-fun m!4676727 () Bool)

(assert (=> b!4068122 m!4676727))

(assert (=> b!4068124 m!4676445))

(assert (=> b!4068124 m!4676443))

(assert (=> b!4067943 d!1209210))

(declare-fun d!1209212 () Bool)

(assert (=> d!1209212 (isPrefix!4069 lt!1455907 prefix!494)))

(declare-fun lt!1455986 () Unit!63019)

(declare-fun choose!24793 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> d!1209212 (= lt!1455986 (choose!24793 prefix!494 lt!1455907 lt!1455926))))

(assert (=> d!1209212 (isPrefix!4069 prefix!494 lt!1455926)))

(assert (=> d!1209212 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!633 prefix!494 lt!1455907 lt!1455926) lt!1455986)))

(declare-fun bs!592458 () Bool)

(assert (= bs!592458 d!1209212))

(assert (=> bs!592458 m!4676507))

(declare-fun m!4676729 () Bool)

(assert (=> bs!592458 m!4676729))

(assert (=> bs!592458 m!4676537))

(assert (=> b!4067943 d!1209212))

(declare-fun d!1209214 () Bool)

(declare-fun e!2524706 () Bool)

(assert (=> d!1209214 e!2524706))

(declare-fun res!1660657 () Bool)

(assert (=> d!1209214 (=> res!1660657 e!2524706)))

(declare-fun lt!1455987 () Bool)

(assert (=> d!1209214 (= res!1660657 (not lt!1455987))))

(declare-fun e!2524705 () Bool)

(assert (=> d!1209214 (= lt!1455987 e!2524705)))

(declare-fun res!1660656 () Bool)

(assert (=> d!1209214 (=> res!1660656 e!2524705)))

(assert (=> d!1209214 (= res!1660656 ((_ is Nil!43451) newSuffix!27))))

(assert (=> d!1209214 (= (isPrefix!4069 newSuffix!27 suffix!1299) lt!1455987)))

(declare-fun b!4068125 () Bool)

(declare-fun e!2524707 () Bool)

(assert (=> b!4068125 (= e!2524705 e!2524707)))

(declare-fun res!1660655 () Bool)

(assert (=> b!4068125 (=> (not res!1660655) (not e!2524707))))

(assert (=> b!4068125 (= res!1660655 (not ((_ is Nil!43451) suffix!1299)))))

(declare-fun b!4068127 () Bool)

(assert (=> b!4068127 (= e!2524707 (isPrefix!4069 (tail!6315 newSuffix!27) (tail!6315 suffix!1299)))))

(declare-fun b!4068126 () Bool)

(declare-fun res!1660658 () Bool)

(assert (=> b!4068126 (=> (not res!1660658) (not e!2524707))))

(assert (=> b!4068126 (= res!1660658 (= (head!8583 newSuffix!27) (head!8583 suffix!1299)))))

(declare-fun b!4068128 () Bool)

(assert (=> b!4068128 (= e!2524706 (>= (size!32486 suffix!1299) (size!32486 newSuffix!27)))))

(assert (= (and d!1209214 (not res!1660656)) b!4068125))

(assert (= (and b!4068125 res!1660655) b!4068126))

(assert (= (and b!4068126 res!1660658) b!4068127))

(assert (= (and d!1209214 (not res!1660657)) b!4068128))

(declare-fun m!4676731 () Bool)

(assert (=> b!4068127 m!4676731))

(declare-fun m!4676733 () Bool)

(assert (=> b!4068127 m!4676733))

(assert (=> b!4068127 m!4676731))

(assert (=> b!4068127 m!4676733))

(declare-fun m!4676735 () Bool)

(assert (=> b!4068127 m!4676735))

(declare-fun m!4676737 () Bool)

(assert (=> b!4068126 m!4676737))

(declare-fun m!4676739 () Bool)

(assert (=> b!4068126 m!4676739))

(assert (=> b!4068128 m!4676499))

(assert (=> b!4068128 m!4676501))

(assert (=> b!4067954 d!1209214))

(declare-fun d!1209216 () Bool)

(declare-fun c!702350 () Bool)

(assert (=> d!1209216 (= c!702350 ((_ is IntegerValue!21636) (value!219621 token!484)))))

(declare-fun e!2524714 () Bool)

(assert (=> d!1209216 (= (inv!21 (value!219621 token!484)) e!2524714)))

(declare-fun b!4068139 () Bool)

(declare-fun e!2524715 () Bool)

(declare-fun inv!17 (TokenValue!7212) Bool)

(assert (=> b!4068139 (= e!2524715 (inv!17 (value!219621 token!484)))))

(declare-fun b!4068140 () Bool)

(declare-fun e!2524716 () Bool)

(declare-fun inv!15 (TokenValue!7212) Bool)

(assert (=> b!4068140 (= e!2524716 (inv!15 (value!219621 token!484)))))

(declare-fun b!4068141 () Bool)

(declare-fun res!1660661 () Bool)

(assert (=> b!4068141 (=> res!1660661 e!2524716)))

(assert (=> b!4068141 (= res!1660661 (not ((_ is IntegerValue!21638) (value!219621 token!484))))))

(assert (=> b!4068141 (= e!2524715 e!2524716)))

(declare-fun b!4068142 () Bool)

(declare-fun inv!16 (TokenValue!7212) Bool)

(assert (=> b!4068142 (= e!2524714 (inv!16 (value!219621 token!484)))))

(declare-fun b!4068143 () Bool)

(assert (=> b!4068143 (= e!2524714 e!2524715)))

(declare-fun c!702351 () Bool)

(assert (=> b!4068143 (= c!702351 ((_ is IntegerValue!21637) (value!219621 token!484)))))

(assert (= (and d!1209216 c!702350) b!4068142))

(assert (= (and d!1209216 (not c!702350)) b!4068143))

(assert (= (and b!4068143 c!702351) b!4068139))

(assert (= (and b!4068143 (not c!702351)) b!4068141))

(assert (= (and b!4068141 (not res!1660661)) b!4068140))

(declare-fun m!4676741 () Bool)

(assert (=> b!4068139 m!4676741))

(declare-fun m!4676743 () Bool)

(assert (=> b!4068140 m!4676743))

(declare-fun m!4676745 () Bool)

(assert (=> b!4068142 m!4676745))

(assert (=> b!4067960 d!1209216))

(declare-fun b!4068145 () Bool)

(declare-fun e!2524718 () List!43575)

(assert (=> b!4068145 (= e!2524718 (Cons!43451 (h!48871 lt!1455907) (++!11384 (t!336926 lt!1455907) suffixResult!105)))))

(declare-fun b!4068146 () Bool)

(declare-fun res!1660663 () Bool)

(declare-fun e!2524717 () Bool)

(assert (=> b!4068146 (=> (not res!1660663) (not e!2524717))))

(declare-fun lt!1455988 () List!43575)

(assert (=> b!4068146 (= res!1660663 (= (size!32486 lt!1455988) (+ (size!32486 lt!1455907) (size!32486 suffixResult!105))))))

(declare-fun d!1209218 () Bool)

(assert (=> d!1209218 e!2524717))

(declare-fun res!1660662 () Bool)

(assert (=> d!1209218 (=> (not res!1660662) (not e!2524717))))

(assert (=> d!1209218 (= res!1660662 (= (content!6637 lt!1455988) ((_ map or) (content!6637 lt!1455907) (content!6637 suffixResult!105))))))

(assert (=> d!1209218 (= lt!1455988 e!2524718)))

(declare-fun c!702352 () Bool)

(assert (=> d!1209218 (= c!702352 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209218 (= (++!11384 lt!1455907 suffixResult!105) lt!1455988)))

(declare-fun b!4068144 () Bool)

(assert (=> b!4068144 (= e!2524718 suffixResult!105)))

(declare-fun b!4068147 () Bool)

(assert (=> b!4068147 (= e!2524717 (or (not (= suffixResult!105 Nil!43451)) (= lt!1455988 lt!1455907)))))

(assert (= (and d!1209218 c!702352) b!4068144))

(assert (= (and d!1209218 (not c!702352)) b!4068145))

(assert (= (and d!1209218 res!1660662) b!4068146))

(assert (= (and b!4068146 res!1660663) b!4068147))

(declare-fun m!4676747 () Bool)

(assert (=> b!4068145 m!4676747))

(declare-fun m!4676749 () Bool)

(assert (=> b!4068146 m!4676749))

(assert (=> b!4068146 m!4676443))

(declare-fun m!4676751 () Bool)

(assert (=> b!4068146 m!4676751))

(declare-fun m!4676753 () Bool)

(assert (=> d!1209218 m!4676753))

(assert (=> d!1209218 m!4676579))

(declare-fun m!4676755 () Bool)

(assert (=> d!1209218 m!4676755))

(assert (=> b!4067950 d!1209218))

(declare-fun d!1209220 () Bool)

(declare-fun e!2524721 () Bool)

(assert (=> d!1209220 e!2524721))

(declare-fun res!1660666 () Bool)

(assert (=> d!1209220 (=> (not res!1660666) (not e!2524721))))

(assert (=> d!1209220 (= res!1660666 (semiInverseModEq!2987 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))))))

(declare-fun Unit!63021 () Unit!63019)

(assert (=> d!1209220 (= (lemmaInv!1191 (transformation!6982 (rule!10084 token!484))) Unit!63021)))

(declare-fun b!4068150 () Bool)

(assert (=> b!4068150 (= e!2524721 (equivClasses!2886 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))))))

(assert (= (and d!1209220 res!1660666) b!4068150))

(assert (=> d!1209220 m!4676705))

(assert (=> b!4068150 m!4676707))

(assert (=> b!4067950 d!1209220))

(declare-fun d!1209222 () Bool)

(declare-fun res!1660671 () Bool)

(declare-fun e!2524724 () Bool)

(assert (=> d!1209222 (=> (not res!1660671) (not e!2524724))))

(declare-fun validRegex!5380 (Regex!11887) Bool)

(assert (=> d!1209222 (= res!1660671 (validRegex!5380 (regex!6982 (rule!10084 token!484))))))

(assert (=> d!1209222 (= (ruleValid!2912 thiss!21717 (rule!10084 token!484)) e!2524724)))

(declare-fun b!4068155 () Bool)

(declare-fun res!1660672 () Bool)

(assert (=> b!4068155 (=> (not res!1660672) (not e!2524724))))

(declare-fun nullable!4180 (Regex!11887) Bool)

(assert (=> b!4068155 (= res!1660672 (not (nullable!4180 (regex!6982 (rule!10084 token!484)))))))

(declare-fun b!4068156 () Bool)

(assert (=> b!4068156 (= e!2524724 (not (= (tag!7842 (rule!10084 token!484)) (String!49779 ""))))))

(assert (= (and d!1209222 res!1660671) b!4068155))

(assert (= (and b!4068155 res!1660672) b!4068156))

(declare-fun m!4676757 () Bool)

(assert (=> d!1209222 m!4676757))

(declare-fun m!4676759 () Bool)

(assert (=> b!4068155 m!4676759))

(assert (=> b!4067950 d!1209222))

(declare-fun d!1209224 () Bool)

(assert (=> d!1209224 (ruleValid!2912 thiss!21717 (rule!10084 token!484))))

(declare-fun lt!1455991 () Unit!63019)

(declare-fun choose!24794 (LexerInterface!6571 Rule!13764 List!43577) Unit!63019)

(assert (=> d!1209224 (= lt!1455991 (choose!24794 thiss!21717 (rule!10084 token!484) rules!2999))))

(assert (=> d!1209224 (contains!8648 rules!2999 (rule!10084 token!484))))

(assert (=> d!1209224 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1982 thiss!21717 (rule!10084 token!484) rules!2999) lt!1455991)))

(declare-fun bs!592459 () Bool)

(assert (= bs!592459 d!1209224))

(assert (=> bs!592459 m!4676547))

(declare-fun m!4676761 () Bool)

(assert (=> bs!592459 m!4676761))

(declare-fun m!4676763 () Bool)

(assert (=> bs!592459 m!4676763))

(assert (=> b!4067950 d!1209224))

(declare-fun d!1209226 () Bool)

(declare-fun e!2524726 () Bool)

(assert (=> d!1209226 e!2524726))

(declare-fun res!1660675 () Bool)

(assert (=> d!1209226 (=> res!1660675 e!2524726)))

(declare-fun lt!1455992 () Bool)

(assert (=> d!1209226 (= res!1660675 (not lt!1455992))))

(declare-fun e!2524725 () Bool)

(assert (=> d!1209226 (= lt!1455992 e!2524725)))

(declare-fun res!1660674 () Bool)

(assert (=> d!1209226 (=> res!1660674 e!2524725)))

(assert (=> d!1209226 (= res!1660674 ((_ is Nil!43451) prefix!494))))

(assert (=> d!1209226 (= (isPrefix!4069 prefix!494 lt!1455926) lt!1455992)))

(declare-fun b!4068157 () Bool)

(declare-fun e!2524727 () Bool)

(assert (=> b!4068157 (= e!2524725 e!2524727)))

(declare-fun res!1660673 () Bool)

(assert (=> b!4068157 (=> (not res!1660673) (not e!2524727))))

(assert (=> b!4068157 (= res!1660673 (not ((_ is Nil!43451) lt!1455926)))))

(declare-fun b!4068159 () Bool)

(assert (=> b!4068159 (= e!2524727 (isPrefix!4069 (tail!6315 prefix!494) (tail!6315 lt!1455926)))))

(declare-fun b!4068158 () Bool)

(declare-fun res!1660676 () Bool)

(assert (=> b!4068158 (=> (not res!1660676) (not e!2524727))))

(assert (=> b!4068158 (= res!1660676 (= (head!8583 prefix!494) (head!8583 lt!1455926)))))

(declare-fun b!4068160 () Bool)

(assert (=> b!4068160 (= e!2524726 (>= (size!32486 lt!1455926) (size!32486 prefix!494)))))

(assert (= (and d!1209226 (not res!1660674)) b!4068157))

(assert (= (and b!4068157 res!1660673) b!4068158))

(assert (= (and b!4068158 res!1660676) b!4068159))

(assert (= (and d!1209226 (not res!1660675)) b!4068160))

(assert (=> b!4068159 m!4676717))

(assert (=> b!4068159 m!4676695))

(assert (=> b!4068159 m!4676717))

(assert (=> b!4068159 m!4676695))

(declare-fun m!4676765 () Bool)

(assert (=> b!4068159 m!4676765))

(assert (=> b!4068158 m!4676727))

(assert (=> b!4068158 m!4676701))

(assert (=> b!4068160 m!4676671))

(assert (=> b!4068160 m!4676445))

(assert (=> b!4067961 d!1209226))

(declare-fun d!1209228 () Bool)

(declare-fun e!2524729 () Bool)

(assert (=> d!1209228 e!2524729))

(declare-fun res!1660679 () Bool)

(assert (=> d!1209228 (=> res!1660679 e!2524729)))

(declare-fun lt!1455993 () Bool)

(assert (=> d!1209228 (= res!1660679 (not lt!1455993))))

(declare-fun e!2524728 () Bool)

(assert (=> d!1209228 (= lt!1455993 e!2524728)))

(declare-fun res!1660678 () Bool)

(assert (=> d!1209228 (=> res!1660678 e!2524728)))

(assert (=> d!1209228 (= res!1660678 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209228 (= (isPrefix!4069 lt!1455907 lt!1455903) lt!1455993)))

(declare-fun b!4068161 () Bool)

(declare-fun e!2524730 () Bool)

(assert (=> b!4068161 (= e!2524728 e!2524730)))

(declare-fun res!1660677 () Bool)

(assert (=> b!4068161 (=> (not res!1660677) (not e!2524730))))

(assert (=> b!4068161 (= res!1660677 (not ((_ is Nil!43451) lt!1455903)))))

(declare-fun b!4068163 () Bool)

(assert (=> b!4068163 (= e!2524730 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 lt!1455903)))))

(declare-fun b!4068162 () Bool)

(declare-fun res!1660680 () Bool)

(assert (=> b!4068162 (=> (not res!1660680) (not e!2524730))))

(assert (=> b!4068162 (= res!1660680 (= (head!8583 lt!1455907) (head!8583 lt!1455903)))))

(declare-fun b!4068164 () Bool)

(assert (=> b!4068164 (= e!2524729 (>= (size!32486 lt!1455903) (size!32486 lt!1455907)))))

(assert (= (and d!1209228 (not res!1660678)) b!4068161))

(assert (= (and b!4068161 res!1660677) b!4068162))

(assert (= (and b!4068162 res!1660680) b!4068163))

(assert (= (and d!1209228 (not res!1660679)) b!4068164))

(assert (=> b!4068163 m!4676721))

(declare-fun m!4676767 () Bool)

(assert (=> b!4068163 m!4676767))

(assert (=> b!4068163 m!4676721))

(assert (=> b!4068163 m!4676767))

(declare-fun m!4676769 () Bool)

(assert (=> b!4068163 m!4676769))

(assert (=> b!4068162 m!4676725))

(declare-fun m!4676771 () Bool)

(assert (=> b!4068162 m!4676771))

(declare-fun m!4676773 () Bool)

(assert (=> b!4068164 m!4676773))

(assert (=> b!4068164 m!4676443))

(assert (=> b!4067961 d!1209228))

(declare-fun d!1209230 () Bool)

(assert (=> d!1209230 (isPrefix!4069 lt!1455907 (++!11384 lt!1455907 suffixResult!105))))

(declare-fun lt!1455996 () Unit!63019)

(declare-fun choose!24795 (List!43575 List!43575) Unit!63019)

(assert (=> d!1209230 (= lt!1455996 (choose!24795 lt!1455907 suffixResult!105))))

(assert (=> d!1209230 (= (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 suffixResult!105) lt!1455996)))

(declare-fun bs!592460 () Bool)

(assert (= bs!592460 d!1209230))

(assert (=> bs!592460 m!4676543))

(assert (=> bs!592460 m!4676543))

(declare-fun m!4676775 () Bool)

(assert (=> bs!592460 m!4676775))

(declare-fun m!4676777 () Bool)

(assert (=> bs!592460 m!4676777))

(assert (=> b!4067961 d!1209230))

(declare-fun d!1209232 () Bool)

(assert (=> d!1209232 (isPrefix!4069 prefix!494 (++!11384 prefix!494 suffix!1299))))

(declare-fun lt!1455997 () Unit!63019)

(assert (=> d!1209232 (= lt!1455997 (choose!24795 prefix!494 suffix!1299))))

(assert (=> d!1209232 (= (lemmaConcatTwoListThenFirstIsPrefix!2904 prefix!494 suffix!1299) lt!1455997)))

(declare-fun bs!592461 () Bool)

(assert (= bs!592461 d!1209232))

(assert (=> bs!592461 m!4676553))

(assert (=> bs!592461 m!4676553))

(declare-fun m!4676779 () Bool)

(assert (=> bs!592461 m!4676779))

(declare-fun m!4676781 () Bool)

(assert (=> bs!592461 m!4676781))

(assert (=> b!4067961 d!1209232))

(declare-fun d!1209234 () Bool)

(declare-fun e!2524732 () Bool)

(assert (=> d!1209234 e!2524732))

(declare-fun res!1660683 () Bool)

(assert (=> d!1209234 (=> res!1660683 e!2524732)))

(declare-fun lt!1455998 () Bool)

(assert (=> d!1209234 (= res!1660683 (not lt!1455998))))

(declare-fun e!2524731 () Bool)

(assert (=> d!1209234 (= lt!1455998 e!2524731)))

(declare-fun res!1660682 () Bool)

(assert (=> d!1209234 (=> res!1660682 e!2524731)))

(assert (=> d!1209234 (= res!1660682 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209234 (= (isPrefix!4069 lt!1455907 lt!1455926) lt!1455998)))

(declare-fun b!4068165 () Bool)

(declare-fun e!2524733 () Bool)

(assert (=> b!4068165 (= e!2524731 e!2524733)))

(declare-fun res!1660681 () Bool)

(assert (=> b!4068165 (=> (not res!1660681) (not e!2524733))))

(assert (=> b!4068165 (= res!1660681 (not ((_ is Nil!43451) lt!1455926)))))

(declare-fun b!4068167 () Bool)

(assert (=> b!4068167 (= e!2524733 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 lt!1455926)))))

(declare-fun b!4068166 () Bool)

(declare-fun res!1660684 () Bool)

(assert (=> b!4068166 (=> (not res!1660684) (not e!2524733))))

(assert (=> b!4068166 (= res!1660684 (= (head!8583 lt!1455907) (head!8583 lt!1455926)))))

(declare-fun b!4068168 () Bool)

(assert (=> b!4068168 (= e!2524732 (>= (size!32486 lt!1455926) (size!32486 lt!1455907)))))

(assert (= (and d!1209234 (not res!1660682)) b!4068165))

(assert (= (and b!4068165 res!1660681) b!4068166))

(assert (= (and b!4068166 res!1660684) b!4068167))

(assert (= (and d!1209234 (not res!1660683)) b!4068168))

(assert (=> b!4068167 m!4676721))

(assert (=> b!4068167 m!4676695))

(assert (=> b!4068167 m!4676721))

(assert (=> b!4068167 m!4676695))

(declare-fun m!4676783 () Bool)

(assert (=> b!4068167 m!4676783))

(assert (=> b!4068166 m!4676725))

(assert (=> b!4068166 m!4676701))

(assert (=> b!4068168 m!4676671))

(assert (=> b!4068168 m!4676443))

(assert (=> b!4067961 d!1209234))

(declare-fun d!1209236 () Bool)

(declare-fun e!2524735 () Bool)

(assert (=> d!1209236 e!2524735))

(declare-fun res!1660687 () Bool)

(assert (=> d!1209236 (=> res!1660687 e!2524735)))

(declare-fun lt!1455999 () Bool)

(assert (=> d!1209236 (= res!1660687 (not lt!1455999))))

(declare-fun e!2524734 () Bool)

(assert (=> d!1209236 (= lt!1455999 e!2524734)))

(declare-fun res!1660686 () Bool)

(assert (=> d!1209236 (=> res!1660686 e!2524734)))

(assert (=> d!1209236 (= res!1660686 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209236 (= (isPrefix!4069 lt!1455907 lt!1455900) lt!1455999)))

(declare-fun b!4068169 () Bool)

(declare-fun e!2524736 () Bool)

(assert (=> b!4068169 (= e!2524734 e!2524736)))

(declare-fun res!1660685 () Bool)

(assert (=> b!4068169 (=> (not res!1660685) (not e!2524736))))

(assert (=> b!4068169 (= res!1660685 (not ((_ is Nil!43451) lt!1455900)))))

(declare-fun b!4068171 () Bool)

(assert (=> b!4068171 (= e!2524736 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 lt!1455900)))))

(declare-fun b!4068170 () Bool)

(declare-fun res!1660688 () Bool)

(assert (=> b!4068170 (=> (not res!1660688) (not e!2524736))))

(assert (=> b!4068170 (= res!1660688 (= (head!8583 lt!1455907) (head!8583 lt!1455900)))))

(declare-fun b!4068172 () Bool)

(assert (=> b!4068172 (= e!2524735 (>= (size!32486 lt!1455900) (size!32486 lt!1455907)))))

(assert (= (and d!1209236 (not res!1660686)) b!4068169))

(assert (= (and b!4068169 res!1660685) b!4068170))

(assert (= (and b!4068170 res!1660688) b!4068171))

(assert (= (and d!1209236 (not res!1660687)) b!4068172))

(assert (=> b!4068171 m!4676721))

(declare-fun m!4676785 () Bool)

(assert (=> b!4068171 m!4676785))

(assert (=> b!4068171 m!4676721))

(assert (=> b!4068171 m!4676785))

(declare-fun m!4676787 () Bool)

(assert (=> b!4068171 m!4676787))

(assert (=> b!4068170 m!4676725))

(declare-fun m!4676789 () Bool)

(assert (=> b!4068170 m!4676789))

(declare-fun m!4676791 () Bool)

(assert (=> b!4068172 m!4676791))

(assert (=> b!4068172 m!4676443))

(assert (=> b!4067940 d!1209236))

(declare-fun d!1209238 () Bool)

(declare-fun dynLambda!18458 (Int BalanceConc!25980) TokenValue!7212)

(assert (=> d!1209238 (= (apply!10171 (transformation!6982 (rule!10084 token!484)) (seqFromList!5199 lt!1455907)) (dynLambda!18458 (toValue!9542 (transformation!6982 (rule!10084 token!484))) (seqFromList!5199 lt!1455907)))))

(declare-fun b_lambda!118841 () Bool)

(assert (=> (not b_lambda!118841) (not d!1209238)))

(declare-fun t!336934 () Bool)

(declare-fun tb!244581 () Bool)

(assert (=> (and b!4067939 (= (toValue!9542 (transformation!6982 (rule!10084 token!484))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))) t!336934) tb!244581))

(declare-fun result!296400 () Bool)

(assert (=> tb!244581 (= result!296400 (inv!21 (dynLambda!18458 (toValue!9542 (transformation!6982 (rule!10084 token!484))) (seqFromList!5199 lt!1455907))))))

(declare-fun m!4676793 () Bool)

(assert (=> tb!244581 m!4676793))

(assert (=> d!1209238 t!336934))

(declare-fun b_and!312655 () Bool)

(assert (= b_and!312643 (and (=> t!336934 result!296400) b_and!312655)))

(declare-fun t!336936 () Bool)

(declare-fun tb!244583 () Bool)

(assert (=> (and b!4067956 (= (toValue!9542 (transformation!6982 (h!48873 rules!2999))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))) t!336936) tb!244583))

(declare-fun result!296404 () Bool)

(assert (= result!296404 result!296400))

(assert (=> d!1209238 t!336936))

(declare-fun b_and!312657 () Bool)

(assert (= b_and!312647 (and (=> t!336936 result!296404) b_and!312657)))

(assert (=> d!1209238 m!4676519))

(declare-fun m!4676795 () Bool)

(assert (=> d!1209238 m!4676795))

(assert (=> b!4067940 d!1209238))

(declare-fun b!4068193 () Bool)

(declare-fun e!2524749 () Bool)

(declare-fun e!2524748 () Bool)

(assert (=> b!4068193 (= e!2524749 e!2524748)))

(declare-fun res!1660705 () Bool)

(assert (=> b!4068193 (=> (not res!1660705) (not e!2524748))))

(declare-fun lt!1456014 () Option!9396)

(assert (=> b!4068193 (= res!1660705 (matchR!5840 (regex!6982 (rule!10084 token!484)) (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1456014))))))))

(declare-fun b!4068194 () Bool)

(declare-fun res!1660707 () Bool)

(assert (=> b!4068194 (=> (not res!1660707) (not e!2524748))))

(assert (=> b!4068194 (= res!1660707 (= (++!11384 (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1456014)))) (_2!24385 (get!14249 lt!1456014))) lt!1455926))))

(declare-fun b!4068195 () Bool)

(assert (=> b!4068195 (= e!2524748 (= (size!32485 (_1!24385 (get!14249 lt!1456014))) (size!32486 (originalCharacters!7582 (_1!24385 (get!14249 lt!1456014))))))))

(declare-fun b!4068196 () Bool)

(declare-fun res!1660703 () Bool)

(assert (=> b!4068196 (=> (not res!1660703) (not e!2524748))))

(assert (=> b!4068196 (= res!1660703 (= (rule!10084 (_1!24385 (get!14249 lt!1456014))) (rule!10084 token!484)))))

(declare-fun b!4068197 () Bool)

(declare-fun e!2524750 () Option!9396)

(declare-datatypes ((tuple2!42506 0))(
  ( (tuple2!42507 (_1!24387 List!43575) (_2!24387 List!43575)) )
))
(declare-fun lt!1456010 () tuple2!42506)

(declare-fun size!32488 (BalanceConc!25980) Int)

(assert (=> b!4068197 (= e!2524750 (Some!9395 (tuple2!42503 (Token!13103 (apply!10171 (transformation!6982 (rule!10084 token!484)) (seqFromList!5199 (_1!24387 lt!1456010))) (rule!10084 token!484) (size!32488 (seqFromList!5199 (_1!24387 lt!1456010))) (_1!24387 lt!1456010)) (_2!24387 lt!1456010))))))

(declare-fun lt!1456013 () Unit!63019)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1390 (Regex!11887 List!43575) Unit!63019)

(assert (=> b!4068197 (= lt!1456013 (longestMatchIsAcceptedByMatchOrIsEmpty!1390 (regex!6982 (rule!10084 token!484)) lt!1455926))))

(declare-fun res!1660709 () Bool)

(declare-fun isEmpty!25935 (List!43575) Bool)

(declare-fun findLongestMatchInner!1417 (Regex!11887 List!43575 Int List!43575 List!43575 Int) tuple2!42506)

(assert (=> b!4068197 (= res!1660709 (isEmpty!25935 (_1!24387 (findLongestMatchInner!1417 (regex!6982 (rule!10084 token!484)) Nil!43451 (size!32486 Nil!43451) lt!1455926 lt!1455926 (size!32486 lt!1455926)))))))

(declare-fun e!2524751 () Bool)

(assert (=> b!4068197 (=> res!1660709 e!2524751)))

(assert (=> b!4068197 e!2524751))

(declare-fun lt!1456011 () Unit!63019)

(assert (=> b!4068197 (= lt!1456011 lt!1456013)))

(declare-fun lt!1456012 () Unit!63019)

(declare-fun lemmaSemiInverse!1949 (TokenValueInjection!13852 BalanceConc!25980) Unit!63019)

(assert (=> b!4068197 (= lt!1456012 (lemmaSemiInverse!1949 (transformation!6982 (rule!10084 token!484)) (seqFromList!5199 (_1!24387 lt!1456010))))))

(declare-fun b!4068198 () Bool)

(declare-fun res!1660706 () Bool)

(assert (=> b!4068198 (=> (not res!1660706) (not e!2524748))))

(assert (=> b!4068198 (= res!1660706 (= (value!219621 (_1!24385 (get!14249 lt!1456014))) (apply!10171 (transformation!6982 (rule!10084 (_1!24385 (get!14249 lt!1456014)))) (seqFromList!5199 (originalCharacters!7582 (_1!24385 (get!14249 lt!1456014)))))))))

(declare-fun b!4068200 () Bool)

(declare-fun res!1660704 () Bool)

(assert (=> b!4068200 (=> (not res!1660704) (not e!2524748))))

(assert (=> b!4068200 (= res!1660704 (< (size!32486 (_2!24385 (get!14249 lt!1456014))) (size!32486 lt!1455926)))))

(declare-fun b!4068201 () Bool)

(assert (=> b!4068201 (= e!2524751 (matchR!5840 (regex!6982 (rule!10084 token!484)) (_1!24387 (findLongestMatchInner!1417 (regex!6982 (rule!10084 token!484)) Nil!43451 (size!32486 Nil!43451) lt!1455926 lt!1455926 (size!32486 lt!1455926)))))))

(declare-fun d!1209240 () Bool)

(assert (=> d!1209240 e!2524749))

(declare-fun res!1660708 () Bool)

(assert (=> d!1209240 (=> res!1660708 e!2524749)))

(assert (=> d!1209240 (= res!1660708 (isEmpty!25934 lt!1456014))))

(assert (=> d!1209240 (= lt!1456014 e!2524750)))

(declare-fun c!702355 () Bool)

(assert (=> d!1209240 (= c!702355 (isEmpty!25935 (_1!24387 lt!1456010)))))

(declare-fun findLongestMatch!1330 (Regex!11887 List!43575) tuple2!42506)

(assert (=> d!1209240 (= lt!1456010 (findLongestMatch!1330 (regex!6982 (rule!10084 token!484)) lt!1455926))))

(assert (=> d!1209240 (ruleValid!2912 thiss!21717 (rule!10084 token!484))))

(assert (=> d!1209240 (= (maxPrefixOneRule!2881 thiss!21717 (rule!10084 token!484) lt!1455926) lt!1456014)))

(declare-fun b!4068199 () Bool)

(assert (=> b!4068199 (= e!2524750 None!9395)))

(assert (= (and d!1209240 c!702355) b!4068199))

(assert (= (and d!1209240 (not c!702355)) b!4068197))

(assert (= (and b!4068197 (not res!1660709)) b!4068201))

(assert (= (and d!1209240 (not res!1660708)) b!4068193))

(assert (= (and b!4068193 res!1660705) b!4068194))

(assert (= (and b!4068194 res!1660707) b!4068200))

(assert (= (and b!4068200 res!1660704) b!4068196))

(assert (= (and b!4068196 res!1660703) b!4068198))

(assert (= (and b!4068198 res!1660706) b!4068195))

(declare-fun m!4676797 () Bool)

(assert (=> b!4068197 m!4676797))

(assert (=> b!4068197 m!4676671))

(declare-fun m!4676799 () Bool)

(assert (=> b!4068197 m!4676799))

(assert (=> b!4068197 m!4676671))

(declare-fun m!4676801 () Bool)

(assert (=> b!4068197 m!4676801))

(assert (=> b!4068197 m!4676797))

(declare-fun m!4676803 () Bool)

(assert (=> b!4068197 m!4676803))

(declare-fun m!4676805 () Bool)

(assert (=> b!4068197 m!4676805))

(assert (=> b!4068197 m!4676797))

(declare-fun m!4676807 () Bool)

(assert (=> b!4068197 m!4676807))

(assert (=> b!4068197 m!4676797))

(declare-fun m!4676809 () Bool)

(assert (=> b!4068197 m!4676809))

(declare-fun m!4676811 () Bool)

(assert (=> b!4068197 m!4676811))

(assert (=> b!4068197 m!4676799))

(declare-fun m!4676813 () Bool)

(assert (=> b!4068198 m!4676813))

(declare-fun m!4676815 () Bool)

(assert (=> b!4068198 m!4676815))

(assert (=> b!4068198 m!4676815))

(declare-fun m!4676817 () Bool)

(assert (=> b!4068198 m!4676817))

(assert (=> b!4068196 m!4676813))

(assert (=> b!4068195 m!4676813))

(declare-fun m!4676819 () Bool)

(assert (=> b!4068195 m!4676819))

(assert (=> b!4068201 m!4676799))

(assert (=> b!4068201 m!4676671))

(assert (=> b!4068201 m!4676799))

(assert (=> b!4068201 m!4676671))

(assert (=> b!4068201 m!4676801))

(declare-fun m!4676821 () Bool)

(assert (=> b!4068201 m!4676821))

(assert (=> b!4068200 m!4676813))

(declare-fun m!4676823 () Bool)

(assert (=> b!4068200 m!4676823))

(assert (=> b!4068200 m!4676671))

(declare-fun m!4676825 () Bool)

(assert (=> d!1209240 m!4676825))

(declare-fun m!4676827 () Bool)

(assert (=> d!1209240 m!4676827))

(declare-fun m!4676829 () Bool)

(assert (=> d!1209240 m!4676829))

(assert (=> d!1209240 m!4676547))

(assert (=> b!4068194 m!4676813))

(declare-fun m!4676831 () Bool)

(assert (=> b!4068194 m!4676831))

(assert (=> b!4068194 m!4676831))

(declare-fun m!4676833 () Bool)

(assert (=> b!4068194 m!4676833))

(assert (=> b!4068194 m!4676833))

(declare-fun m!4676835 () Bool)

(assert (=> b!4068194 m!4676835))

(assert (=> b!4068193 m!4676813))

(assert (=> b!4068193 m!4676831))

(assert (=> b!4068193 m!4676831))

(assert (=> b!4068193 m!4676833))

(assert (=> b!4068193 m!4676833))

(declare-fun m!4676837 () Bool)

(assert (=> b!4068193 m!4676837))

(assert (=> b!4067940 d!1209240))

(declare-fun d!1209242 () Bool)

(assert (=> d!1209242 (= (maxPrefixOneRule!2881 thiss!21717 (rule!10084 token!484) lt!1455926) (Some!9395 (tuple2!42503 (Token!13103 (apply!10171 (transformation!6982 (rule!10084 token!484)) (seqFromList!5199 lt!1455907)) (rule!10084 token!484) (size!32486 lt!1455907) lt!1455907) suffixResult!105)))))

(declare-fun lt!1456017 () Unit!63019)

(declare-fun choose!24798 (LexerInterface!6571 List!43577 List!43575 List!43575 List!43575 Rule!13764) Unit!63019)

(assert (=> d!1209242 (= lt!1456017 (choose!24798 thiss!21717 rules!2999 lt!1455907 lt!1455926 suffixResult!105 (rule!10084 token!484)))))

(assert (=> d!1209242 (not (isEmpty!25931 rules!2999))))

(assert (=> d!1209242 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1687 thiss!21717 rules!2999 lt!1455907 lt!1455926 suffixResult!105 (rule!10084 token!484)) lt!1456017)))

(declare-fun bs!592462 () Bool)

(assert (= bs!592462 d!1209242))

(assert (=> bs!592462 m!4676443))

(assert (=> bs!592462 m!4676519))

(assert (=> bs!592462 m!4676525))

(declare-fun m!4676839 () Bool)

(assert (=> bs!592462 m!4676839))

(assert (=> bs!592462 m!4676529))

(assert (=> bs!592462 m!4676531))

(assert (=> bs!592462 m!4676519))

(assert (=> b!4067940 d!1209242))

(declare-fun d!1209244 () Bool)

(declare-fun fromListB!2374 (List!43575) BalanceConc!25980)

(assert (=> d!1209244 (= (seqFromList!5199 lt!1455907) (fromListB!2374 lt!1455907))))

(declare-fun bs!592463 () Bool)

(assert (= bs!592463 d!1209244))

(declare-fun m!4676841 () Bool)

(assert (=> bs!592463 m!4676841))

(assert (=> b!4067940 d!1209244))

(declare-fun d!1209246 () Bool)

(assert (=> d!1209246 (isPrefix!4069 lt!1455907 (++!11384 lt!1455907 lt!1455901))))

(declare-fun lt!1456018 () Unit!63019)

(assert (=> d!1209246 (= lt!1456018 (choose!24795 lt!1455907 lt!1455901))))

(assert (=> d!1209246 (= (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 lt!1455901) lt!1456018)))

(declare-fun bs!592464 () Bool)

(assert (= bs!592464 d!1209246))

(assert (=> bs!592464 m!4676481))

(assert (=> bs!592464 m!4676481))

(declare-fun m!4676843 () Bool)

(assert (=> bs!592464 m!4676843))

(declare-fun m!4676845 () Bool)

(assert (=> bs!592464 m!4676845))

(assert (=> b!4067940 d!1209246))

(declare-fun d!1209248 () Bool)

(assert (=> d!1209248 (= lt!1455901 suffixResult!105)))

(declare-fun lt!1456021 () Unit!63019)

(declare-fun choose!24799 (List!43575 List!43575 List!43575 List!43575 List!43575) Unit!63019)

(assert (=> d!1209248 (= lt!1456021 (choose!24799 lt!1455907 lt!1455901 lt!1455907 suffixResult!105 lt!1455926))))

(assert (=> d!1209248 (isPrefix!4069 lt!1455907 lt!1455926)))

(assert (=> d!1209248 (= (lemmaSamePrefixThenSameSuffix!2230 lt!1455907 lt!1455901 lt!1455907 suffixResult!105 lt!1455926) lt!1456021)))

(declare-fun bs!592465 () Bool)

(assert (= bs!592465 d!1209248))

(declare-fun m!4676847 () Bool)

(assert (=> bs!592465 m!4676847))

(assert (=> bs!592465 m!4676535))

(assert (=> b!4067940 d!1209248))

(declare-fun b!4068250 () Bool)

(declare-fun e!2524780 () Bool)

(assert (=> b!4068250 (= e!2524780 (nullable!4180 (regex!6982 (rule!10084 token!484))))))

(declare-fun b!4068251 () Bool)

(declare-fun e!2524782 () Bool)

(declare-fun e!2524778 () Bool)

(assert (=> b!4068251 (= e!2524782 e!2524778)))

(declare-fun res!1660738 () Bool)

(assert (=> b!4068251 (=> res!1660738 e!2524778)))

(declare-fun call!288321 () Bool)

(assert (=> b!4068251 (= res!1660738 call!288321)))

(declare-fun d!1209250 () Bool)

(declare-fun e!2524777 () Bool)

(assert (=> d!1209250 e!2524777))

(declare-fun c!702366 () Bool)

(assert (=> d!1209250 (= c!702366 ((_ is EmptyExpr!11887) (regex!6982 (rule!10084 token!484))))))

(declare-fun lt!1456029 () Bool)

(assert (=> d!1209250 (= lt!1456029 e!2524780)))

(declare-fun c!702367 () Bool)

(assert (=> d!1209250 (= c!702367 (isEmpty!25935 lt!1455907))))

(assert (=> d!1209250 (validRegex!5380 (regex!6982 (rule!10084 token!484)))))

(assert (=> d!1209250 (= (matchR!5840 (regex!6982 (rule!10084 token!484)) lt!1455907) lt!1456029)))

(declare-fun bm!288316 () Bool)

(assert (=> bm!288316 (= call!288321 (isEmpty!25935 lt!1455907))))

(declare-fun b!4068252 () Bool)

(declare-fun e!2524776 () Bool)

(assert (=> b!4068252 (= e!2524776 (not lt!1456029))))

(declare-fun b!4068253 () Bool)

(assert (=> b!4068253 (= e!2524777 (= lt!1456029 call!288321))))

(declare-fun b!4068254 () Bool)

(declare-fun res!1660741 () Bool)

(declare-fun e!2524781 () Bool)

(assert (=> b!4068254 (=> res!1660741 e!2524781)))

(assert (=> b!4068254 (= res!1660741 (not ((_ is ElementMatch!11887) (regex!6982 (rule!10084 token!484)))))))

(assert (=> b!4068254 (= e!2524776 e!2524781)))

(declare-fun b!4068255 () Bool)

(assert (=> b!4068255 (= e!2524778 (not (= (head!8583 lt!1455907) (c!702317 (regex!6982 (rule!10084 token!484))))))))

(declare-fun b!4068256 () Bool)

(declare-fun derivativeStep!3585 (Regex!11887 C!23960) Regex!11887)

(assert (=> b!4068256 (= e!2524780 (matchR!5840 (derivativeStep!3585 (regex!6982 (rule!10084 token!484)) (head!8583 lt!1455907)) (tail!6315 lt!1455907)))))

(declare-fun b!4068257 () Bool)

(declare-fun e!2524779 () Bool)

(assert (=> b!4068257 (= e!2524779 (= (head!8583 lt!1455907) (c!702317 (regex!6982 (rule!10084 token!484)))))))

(declare-fun b!4068258 () Bool)

(assert (=> b!4068258 (= e!2524777 e!2524776)))

(declare-fun c!702368 () Bool)

(assert (=> b!4068258 (= c!702368 ((_ is EmptyLang!11887) (regex!6982 (rule!10084 token!484))))))

(declare-fun b!4068259 () Bool)

(declare-fun res!1660742 () Bool)

(assert (=> b!4068259 (=> res!1660742 e!2524778)))

(assert (=> b!4068259 (= res!1660742 (not (isEmpty!25935 (tail!6315 lt!1455907))))))

(declare-fun b!4068260 () Bool)

(declare-fun res!1660736 () Bool)

(assert (=> b!4068260 (=> (not res!1660736) (not e!2524779))))

(assert (=> b!4068260 (= res!1660736 (not call!288321))))

(declare-fun b!4068261 () Bool)

(declare-fun res!1660739 () Bool)

(assert (=> b!4068261 (=> res!1660739 e!2524781)))

(assert (=> b!4068261 (= res!1660739 e!2524779)))

(declare-fun res!1660740 () Bool)

(assert (=> b!4068261 (=> (not res!1660740) (not e!2524779))))

(assert (=> b!4068261 (= res!1660740 lt!1456029)))

(declare-fun b!4068262 () Bool)

(assert (=> b!4068262 (= e!2524781 e!2524782)))

(declare-fun res!1660743 () Bool)

(assert (=> b!4068262 (=> (not res!1660743) (not e!2524782))))

(assert (=> b!4068262 (= res!1660743 (not lt!1456029))))

(declare-fun b!4068263 () Bool)

(declare-fun res!1660737 () Bool)

(assert (=> b!4068263 (=> (not res!1660737) (not e!2524779))))

(assert (=> b!4068263 (= res!1660737 (isEmpty!25935 (tail!6315 lt!1455907)))))

(assert (= (and d!1209250 c!702367) b!4068250))

(assert (= (and d!1209250 (not c!702367)) b!4068256))

(assert (= (and d!1209250 c!702366) b!4068253))

(assert (= (and d!1209250 (not c!702366)) b!4068258))

(assert (= (and b!4068258 c!702368) b!4068252))

(assert (= (and b!4068258 (not c!702368)) b!4068254))

(assert (= (and b!4068254 (not res!1660741)) b!4068261))

(assert (= (and b!4068261 res!1660740) b!4068260))

(assert (= (and b!4068260 res!1660736) b!4068263))

(assert (= (and b!4068263 res!1660737) b!4068257))

(assert (= (and b!4068261 (not res!1660739)) b!4068262))

(assert (= (and b!4068262 res!1660743) b!4068251))

(assert (= (and b!4068251 (not res!1660738)) b!4068259))

(assert (= (and b!4068259 (not res!1660742)) b!4068255))

(assert (= (or b!4068253 b!4068251 b!4068260) bm!288316))

(assert (=> b!4068255 m!4676725))

(assert (=> b!4068259 m!4676721))

(assert (=> b!4068259 m!4676721))

(declare-fun m!4676877 () Bool)

(assert (=> b!4068259 m!4676877))

(declare-fun m!4676879 () Bool)

(assert (=> bm!288316 m!4676879))

(assert (=> b!4068257 m!4676725))

(assert (=> b!4068256 m!4676725))

(assert (=> b!4068256 m!4676725))

(declare-fun m!4676881 () Bool)

(assert (=> b!4068256 m!4676881))

(assert (=> b!4068256 m!4676721))

(assert (=> b!4068256 m!4676881))

(assert (=> b!4068256 m!4676721))

(declare-fun m!4676883 () Bool)

(assert (=> b!4068256 m!4676883))

(assert (=> b!4068263 m!4676721))

(assert (=> b!4068263 m!4676721))

(assert (=> b!4068263 m!4676877))

(assert (=> b!4068250 m!4676759))

(assert (=> d!1209250 m!4676879))

(assert (=> d!1209250 m!4676757))

(assert (=> b!4067951 d!1209250))

(declare-fun d!1209258 () Bool)

(declare-fun e!2524784 () Bool)

(assert (=> d!1209258 e!2524784))

(declare-fun res!1660746 () Bool)

(assert (=> d!1209258 (=> res!1660746 e!2524784)))

(declare-fun lt!1456030 () Bool)

(assert (=> d!1209258 (= res!1660746 (not lt!1456030))))

(declare-fun e!2524783 () Bool)

(assert (=> d!1209258 (= lt!1456030 e!2524783)))

(declare-fun res!1660745 () Bool)

(assert (=> d!1209258 (=> res!1660745 e!2524783)))

(assert (=> d!1209258 (= res!1660745 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209258 (= (isPrefix!4069 lt!1455907 lt!1455919) lt!1456030)))

(declare-fun b!4068264 () Bool)

(declare-fun e!2524785 () Bool)

(assert (=> b!4068264 (= e!2524783 e!2524785)))

(declare-fun res!1660744 () Bool)

(assert (=> b!4068264 (=> (not res!1660744) (not e!2524785))))

(assert (=> b!4068264 (= res!1660744 (not ((_ is Nil!43451) lt!1455919)))))

(declare-fun b!4068266 () Bool)

(assert (=> b!4068266 (= e!2524785 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 lt!1455919)))))

(declare-fun b!4068265 () Bool)

(declare-fun res!1660747 () Bool)

(assert (=> b!4068265 (=> (not res!1660747) (not e!2524785))))

(assert (=> b!4068265 (= res!1660747 (= (head!8583 lt!1455907) (head!8583 lt!1455919)))))

(declare-fun b!4068267 () Bool)

(assert (=> b!4068267 (= e!2524784 (>= (size!32486 lt!1455919) (size!32486 lt!1455907)))))

(assert (= (and d!1209258 (not res!1660745)) b!4068264))

(assert (= (and b!4068264 res!1660744) b!4068265))

(assert (= (and b!4068265 res!1660747) b!4068266))

(assert (= (and d!1209258 (not res!1660746)) b!4068267))

(assert (=> b!4068266 m!4676721))

(declare-fun m!4676885 () Bool)

(assert (=> b!4068266 m!4676885))

(assert (=> b!4068266 m!4676721))

(assert (=> b!4068266 m!4676885))

(declare-fun m!4676887 () Bool)

(assert (=> b!4068266 m!4676887))

(assert (=> b!4068265 m!4676725))

(declare-fun m!4676889 () Bool)

(assert (=> b!4068265 m!4676889))

(declare-fun m!4676891 () Bool)

(assert (=> b!4068267 m!4676891))

(assert (=> b!4068267 m!4676443))

(assert (=> b!4067951 d!1209258))

(declare-fun d!1209260 () Bool)

(assert (=> d!1209260 (isPrefix!4069 lt!1455907 (++!11384 prefix!494 newSuffix!27))))

(declare-fun lt!1456033 () Unit!63019)

(declare-fun choose!24801 (List!43575 List!43575 List!43575) Unit!63019)

(assert (=> d!1209260 (= lt!1456033 (choose!24801 lt!1455907 prefix!494 newSuffix!27))))

(assert (=> d!1209260 (isPrefix!4069 lt!1455907 prefix!494)))

(assert (=> d!1209260 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!862 lt!1455907 prefix!494 newSuffix!27) lt!1456033)))

(declare-fun bs!592466 () Bool)

(assert (= bs!592466 d!1209260))

(assert (=> bs!592466 m!4676465))

(assert (=> bs!592466 m!4676465))

(declare-fun m!4676893 () Bool)

(assert (=> bs!592466 m!4676893))

(declare-fun m!4676895 () Bool)

(assert (=> bs!592466 m!4676895))

(assert (=> bs!592466 m!4676507))

(assert (=> b!4067951 d!1209260))

(declare-fun d!1209262 () Bool)

(assert (=> d!1209262 (isPrefix!4069 lt!1455907 (++!11384 prefix!494 suffix!1299))))

(declare-fun lt!1456034 () Unit!63019)

(assert (=> d!1209262 (= lt!1456034 (choose!24801 lt!1455907 prefix!494 suffix!1299))))

(assert (=> d!1209262 (isPrefix!4069 lt!1455907 prefix!494)))

(assert (=> d!1209262 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!862 lt!1455907 prefix!494 suffix!1299) lt!1456034)))

(declare-fun bs!592467 () Bool)

(assert (= bs!592467 d!1209262))

(assert (=> bs!592467 m!4676553))

(assert (=> bs!592467 m!4676553))

(declare-fun m!4676897 () Bool)

(assert (=> bs!592467 m!4676897))

(declare-fun m!4676899 () Bool)

(assert (=> bs!592467 m!4676899))

(assert (=> bs!592467 m!4676507))

(assert (=> b!4067951 d!1209262))

(declare-fun d!1209264 () Bool)

(declare-fun lt!1456035 () Int)

(assert (=> d!1209264 (>= lt!1456035 0)))

(declare-fun e!2524786 () Int)

(assert (=> d!1209264 (= lt!1456035 e!2524786)))

(declare-fun c!702369 () Bool)

(assert (=> d!1209264 (= c!702369 ((_ is Nil!43451) (originalCharacters!7582 token!484)))))

(assert (=> d!1209264 (= (size!32486 (originalCharacters!7582 token!484)) lt!1456035)))

(declare-fun b!4068268 () Bool)

(assert (=> b!4068268 (= e!2524786 0)))

(declare-fun b!4068269 () Bool)

(assert (=> b!4068269 (= e!2524786 (+ 1 (size!32486 (t!336926 (originalCharacters!7582 token!484)))))))

(assert (= (and d!1209264 c!702369) b!4068268))

(assert (= (and d!1209264 (not c!702369)) b!4068269))

(declare-fun m!4676901 () Bool)

(assert (=> b!4068269 m!4676901))

(assert (=> b!4067962 d!1209264))

(declare-fun b!4068271 () Bool)

(declare-fun e!2524788 () List!43575)

(assert (=> b!4068271 (= e!2524788 (Cons!43451 (h!48871 prefix!494) (++!11384 (t!336926 prefix!494) newSuffix!27)))))

(declare-fun b!4068272 () Bool)

(declare-fun res!1660749 () Bool)

(declare-fun e!2524787 () Bool)

(assert (=> b!4068272 (=> (not res!1660749) (not e!2524787))))

(declare-fun lt!1456036 () List!43575)

(assert (=> b!4068272 (= res!1660749 (= (size!32486 lt!1456036) (+ (size!32486 prefix!494) (size!32486 newSuffix!27))))))

(declare-fun d!1209266 () Bool)

(assert (=> d!1209266 e!2524787))

(declare-fun res!1660748 () Bool)

(assert (=> d!1209266 (=> (not res!1660748) (not e!2524787))))

(assert (=> d!1209266 (= res!1660748 (= (content!6637 lt!1456036) ((_ map or) (content!6637 prefix!494) (content!6637 newSuffix!27))))))

(assert (=> d!1209266 (= lt!1456036 e!2524788)))

(declare-fun c!702370 () Bool)

(assert (=> d!1209266 (= c!702370 ((_ is Nil!43451) prefix!494))))

(assert (=> d!1209266 (= (++!11384 prefix!494 newSuffix!27) lt!1456036)))

(declare-fun b!4068270 () Bool)

(assert (=> b!4068270 (= e!2524788 newSuffix!27)))

(declare-fun b!4068273 () Bool)

(assert (=> b!4068273 (= e!2524787 (or (not (= newSuffix!27 Nil!43451)) (= lt!1456036 prefix!494)))))

(assert (= (and d!1209266 c!702370) b!4068270))

(assert (= (and d!1209266 (not c!702370)) b!4068271))

(assert (= (and d!1209266 res!1660748) b!4068272))

(assert (= (and b!4068272 res!1660749) b!4068273))

(declare-fun m!4676903 () Bool)

(assert (=> b!4068271 m!4676903))

(declare-fun m!4676905 () Bool)

(assert (=> b!4068272 m!4676905))

(assert (=> b!4068272 m!4676445))

(assert (=> b!4068272 m!4676501))

(declare-fun m!4676907 () Bool)

(assert (=> d!1209266 m!4676907))

(assert (=> d!1209266 m!4676681))

(declare-fun m!4676909 () Bool)

(assert (=> d!1209266 m!4676909))

(assert (=> b!4067957 d!1209266))

(declare-fun b!4068275 () Bool)

(declare-fun e!2524790 () List!43575)

(assert (=> b!4068275 (= e!2524790 (Cons!43451 (h!48871 lt!1455907) (++!11384 (t!336926 lt!1455907) newSuffixResult!27)))))

(declare-fun b!4068276 () Bool)

(declare-fun res!1660751 () Bool)

(declare-fun e!2524789 () Bool)

(assert (=> b!4068276 (=> (not res!1660751) (not e!2524789))))

(declare-fun lt!1456037 () List!43575)

(assert (=> b!4068276 (= res!1660751 (= (size!32486 lt!1456037) (+ (size!32486 lt!1455907) (size!32486 newSuffixResult!27))))))

(declare-fun d!1209268 () Bool)

(assert (=> d!1209268 e!2524789))

(declare-fun res!1660750 () Bool)

(assert (=> d!1209268 (=> (not res!1660750) (not e!2524789))))

(assert (=> d!1209268 (= res!1660750 (= (content!6637 lt!1456037) ((_ map or) (content!6637 lt!1455907) (content!6637 newSuffixResult!27))))))

(assert (=> d!1209268 (= lt!1456037 e!2524790)))

(declare-fun c!702371 () Bool)

(assert (=> d!1209268 (= c!702371 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209268 (= (++!11384 lt!1455907 newSuffixResult!27) lt!1456037)))

(declare-fun b!4068274 () Bool)

(assert (=> b!4068274 (= e!2524790 newSuffixResult!27)))

(declare-fun b!4068277 () Bool)

(assert (=> b!4068277 (= e!2524789 (or (not (= newSuffixResult!27 Nil!43451)) (= lt!1456037 lt!1455907)))))

(assert (= (and d!1209268 c!702371) b!4068274))

(assert (= (and d!1209268 (not c!702371)) b!4068275))

(assert (= (and d!1209268 res!1660750) b!4068276))

(assert (= (and b!4068276 res!1660751) b!4068277))

(declare-fun m!4676911 () Bool)

(assert (=> b!4068275 m!4676911))

(declare-fun m!4676913 () Bool)

(assert (=> b!4068276 m!4676913))

(assert (=> b!4068276 m!4676443))

(declare-fun m!4676915 () Bool)

(assert (=> b!4068276 m!4676915))

(declare-fun m!4676917 () Bool)

(assert (=> d!1209268 m!4676917))

(assert (=> d!1209268 m!4676579))

(declare-fun m!4676919 () Bool)

(assert (=> d!1209268 m!4676919))

(assert (=> b!4067957 d!1209268))

(declare-fun d!1209270 () Bool)

(declare-fun res!1660756 () Bool)

(declare-fun e!2524793 () Bool)

(assert (=> d!1209270 (=> (not res!1660756) (not e!2524793))))

(assert (=> d!1209270 (= res!1660756 (not (isEmpty!25935 (originalCharacters!7582 token!484))))))

(assert (=> d!1209270 (= (inv!58088 token!484) e!2524793)))

(declare-fun b!4068282 () Bool)

(declare-fun res!1660757 () Bool)

(assert (=> b!4068282 (=> (not res!1660757) (not e!2524793))))

(assert (=> b!4068282 (= res!1660757 (= (originalCharacters!7582 token!484) (list!16200 (dynLambda!18455 (toChars!9401 (transformation!6982 (rule!10084 token!484))) (value!219621 token!484)))))))

(declare-fun b!4068283 () Bool)

(assert (=> b!4068283 (= e!2524793 (= (size!32485 token!484) (size!32486 (originalCharacters!7582 token!484))))))

(assert (= (and d!1209270 res!1660756) b!4068282))

(assert (= (and b!4068282 res!1660757) b!4068283))

(declare-fun b_lambda!118843 () Bool)

(assert (=> (not b_lambda!118843) (not b!4068282)))

(assert (=> b!4068282 t!336930))

(declare-fun b_and!312659 () Bool)

(assert (= b_and!312651 (and (=> t!336930 result!296394) b_and!312659)))

(assert (=> b!4068282 t!336932))

(declare-fun b_and!312661 () Bool)

(assert (= b_and!312653 (and (=> t!336932 result!296398) b_and!312661)))

(declare-fun m!4676921 () Bool)

(assert (=> d!1209270 m!4676921))

(assert (=> b!4068282 m!4676569))

(assert (=> b!4068282 m!4676569))

(declare-fun m!4676923 () Bool)

(assert (=> b!4068282 m!4676923))

(assert (=> b!4068283 m!4676455))

(assert (=> start!383708 d!1209270))

(declare-fun d!1209272 () Bool)

(assert (=> d!1209272 true))

(declare-fun lt!1456129 () Bool)

(declare-fun lambda!127585 () Int)

(declare-fun forall!8384 (List!43577 Int) Bool)

(assert (=> d!1209272 (= lt!1456129 (forall!8384 rules!2999 lambda!127585))))

(declare-fun e!2524923 () Bool)

(assert (=> d!1209272 (= lt!1456129 e!2524923)))

(declare-fun res!1660879 () Bool)

(assert (=> d!1209272 (=> res!1660879 e!2524923)))

(assert (=> d!1209272 (= res!1660879 (not ((_ is Cons!43453) rules!2999)))))

(assert (=> d!1209272 (= (rulesValidInductive!2555 thiss!21717 rules!2999) lt!1456129)))

(declare-fun b!4068513 () Bool)

(declare-fun e!2524924 () Bool)

(assert (=> b!4068513 (= e!2524923 e!2524924)))

(declare-fun res!1660880 () Bool)

(assert (=> b!4068513 (=> (not res!1660880) (not e!2524924))))

(assert (=> b!4068513 (= res!1660880 (ruleValid!2912 thiss!21717 (h!48873 rules!2999)))))

(declare-fun b!4068514 () Bool)

(assert (=> b!4068514 (= e!2524924 (rulesValidInductive!2555 thiss!21717 (t!336928 rules!2999)))))

(assert (= (and d!1209272 (not res!1660879)) b!4068513))

(assert (= (and b!4068513 res!1660880) b!4068514))

(declare-fun m!4677231 () Bool)

(assert (=> d!1209272 m!4677231))

(declare-fun m!4677233 () Bool)

(assert (=> b!4068513 m!4677233))

(declare-fun m!4677235 () Bool)

(assert (=> b!4068514 m!4677235))

(assert (=> b!4067958 d!1209272))

(declare-fun d!1209368 () Bool)

(declare-fun lt!1456130 () Int)

(assert (=> d!1209368 (>= lt!1456130 0)))

(declare-fun e!2524925 () Int)

(assert (=> d!1209368 (= lt!1456130 e!2524925)))

(declare-fun c!702403 () Bool)

(assert (=> d!1209368 (= c!702403 ((_ is Nil!43451) suffix!1299))))

(assert (=> d!1209368 (= (size!32486 suffix!1299) lt!1456130)))

(declare-fun b!4068517 () Bool)

(assert (=> b!4068517 (= e!2524925 0)))

(declare-fun b!4068518 () Bool)

(assert (=> b!4068518 (= e!2524925 (+ 1 (size!32486 (t!336926 suffix!1299))))))

(assert (= (and d!1209368 c!702403) b!4068517))

(assert (= (and d!1209368 (not c!702403)) b!4068518))

(declare-fun m!4677237 () Bool)

(assert (=> b!4068518 m!4677237))

(assert (=> b!4067937 d!1209368))

(declare-fun d!1209370 () Bool)

(declare-fun lt!1456131 () Int)

(assert (=> d!1209370 (>= lt!1456131 0)))

(declare-fun e!2524926 () Int)

(assert (=> d!1209370 (= lt!1456131 e!2524926)))

(declare-fun c!702404 () Bool)

(assert (=> d!1209370 (= c!702404 ((_ is Nil!43451) newSuffix!27))))

(assert (=> d!1209370 (= (size!32486 newSuffix!27) lt!1456131)))

(declare-fun b!4068519 () Bool)

(assert (=> b!4068519 (= e!2524926 0)))

(declare-fun b!4068520 () Bool)

(assert (=> b!4068520 (= e!2524926 (+ 1 (size!32486 (t!336926 newSuffix!27))))))

(assert (= (and d!1209370 c!702404) b!4068519))

(assert (= (and d!1209370 (not c!702404)) b!4068520))

(declare-fun m!4677239 () Bool)

(assert (=> b!4068520 m!4677239))

(assert (=> b!4067937 d!1209370))

(declare-fun b!4068521 () Bool)

(declare-fun e!2524927 () Option!9396)

(declare-fun lt!1456133 () Option!9396)

(declare-fun lt!1456135 () Option!9396)

(assert (=> b!4068521 (= e!2524927 (ite (and ((_ is None!9395) lt!1456133) ((_ is None!9395) lt!1456135)) None!9395 (ite ((_ is None!9395) lt!1456135) lt!1456133 (ite ((_ is None!9395) lt!1456133) lt!1456135 (ite (>= (size!32485 (_1!24385 (v!39825 lt!1456133))) (size!32485 (_1!24385 (v!39825 lt!1456135)))) lt!1456133 lt!1456135)))))))

(declare-fun call!288326 () Option!9396)

(assert (=> b!4068521 (= lt!1456133 call!288326)))

(assert (=> b!4068521 (= lt!1456135 (maxPrefix!3869 thiss!21717 (t!336928 rules!2999) lt!1455919))))

(declare-fun b!4068522 () Bool)

(declare-fun res!1660886 () Bool)

(declare-fun e!2524929 () Bool)

(assert (=> b!4068522 (=> (not res!1660886) (not e!2524929))))

(declare-fun lt!1456132 () Option!9396)

(assert (=> b!4068522 (= res!1660886 (matchR!5840 (regex!6982 (rule!10084 (_1!24385 (get!14249 lt!1456132)))) (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1456132))))))))

(declare-fun d!1209372 () Bool)

(declare-fun e!2524928 () Bool)

(assert (=> d!1209372 e!2524928))

(declare-fun res!1660882 () Bool)

(assert (=> d!1209372 (=> res!1660882 e!2524928)))

(assert (=> d!1209372 (= res!1660882 (isEmpty!25934 lt!1456132))))

(assert (=> d!1209372 (= lt!1456132 e!2524927)))

(declare-fun c!702405 () Bool)

(assert (=> d!1209372 (= c!702405 (and ((_ is Cons!43453) rules!2999) ((_ is Nil!43453) (t!336928 rules!2999))))))

(declare-fun lt!1456136 () Unit!63019)

(declare-fun lt!1456134 () Unit!63019)

(assert (=> d!1209372 (= lt!1456136 lt!1456134)))

(assert (=> d!1209372 (isPrefix!4069 lt!1455919 lt!1455919)))

(assert (=> d!1209372 (= lt!1456134 (lemmaIsPrefixRefl!2636 lt!1455919 lt!1455919))))

(assert (=> d!1209372 (rulesValidInductive!2555 thiss!21717 rules!2999)))

(assert (=> d!1209372 (= (maxPrefix!3869 thiss!21717 rules!2999 lt!1455919) lt!1456132)))

(declare-fun bm!288321 () Bool)

(assert (=> bm!288321 (= call!288326 (maxPrefixOneRule!2881 thiss!21717 (h!48873 rules!2999) lt!1455919))))

(declare-fun b!4068523 () Bool)

(assert (=> b!4068523 (= e!2524929 (contains!8648 rules!2999 (rule!10084 (_1!24385 (get!14249 lt!1456132)))))))

(declare-fun b!4068524 () Bool)

(declare-fun res!1660887 () Bool)

(assert (=> b!4068524 (=> (not res!1660887) (not e!2524929))))

(assert (=> b!4068524 (= res!1660887 (= (value!219621 (_1!24385 (get!14249 lt!1456132))) (apply!10171 (transformation!6982 (rule!10084 (_1!24385 (get!14249 lt!1456132)))) (seqFromList!5199 (originalCharacters!7582 (_1!24385 (get!14249 lt!1456132)))))))))

(declare-fun b!4068525 () Bool)

(declare-fun res!1660883 () Bool)

(assert (=> b!4068525 (=> (not res!1660883) (not e!2524929))))

(assert (=> b!4068525 (= res!1660883 (< (size!32486 (_2!24385 (get!14249 lt!1456132))) (size!32486 lt!1455919)))))

(declare-fun b!4068526 () Bool)

(declare-fun res!1660881 () Bool)

(assert (=> b!4068526 (=> (not res!1660881) (not e!2524929))))

(assert (=> b!4068526 (= res!1660881 (= (++!11384 (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1456132)))) (_2!24385 (get!14249 lt!1456132))) lt!1455919))))

(declare-fun b!4068527 () Bool)

(assert (=> b!4068527 (= e!2524928 e!2524929)))

(declare-fun res!1660884 () Bool)

(assert (=> b!4068527 (=> (not res!1660884) (not e!2524929))))

(assert (=> b!4068527 (= res!1660884 (isDefined!7134 lt!1456132))))

(declare-fun b!4068528 () Bool)

(declare-fun res!1660885 () Bool)

(assert (=> b!4068528 (=> (not res!1660885) (not e!2524929))))

(assert (=> b!4068528 (= res!1660885 (= (list!16200 (charsOf!4798 (_1!24385 (get!14249 lt!1456132)))) (originalCharacters!7582 (_1!24385 (get!14249 lt!1456132)))))))

(declare-fun b!4068529 () Bool)

(assert (=> b!4068529 (= e!2524927 call!288326)))

(assert (= (and d!1209372 c!702405) b!4068529))

(assert (= (and d!1209372 (not c!702405)) b!4068521))

(assert (= (or b!4068529 b!4068521) bm!288321))

(assert (= (and d!1209372 (not res!1660882)) b!4068527))

(assert (= (and b!4068527 res!1660884) b!4068528))

(assert (= (and b!4068528 res!1660885) b!4068525))

(assert (= (and b!4068525 res!1660883) b!4068526))

(assert (= (and b!4068526 res!1660881) b!4068524))

(assert (= (and b!4068524 res!1660887) b!4068522))

(assert (= (and b!4068522 res!1660886) b!4068523))

(declare-fun m!4677241 () Bool)

(assert (=> b!4068523 m!4677241))

(declare-fun m!4677243 () Bool)

(assert (=> b!4068523 m!4677243))

(assert (=> b!4068524 m!4677241))

(declare-fun m!4677245 () Bool)

(assert (=> b!4068524 m!4677245))

(assert (=> b!4068524 m!4677245))

(declare-fun m!4677247 () Bool)

(assert (=> b!4068524 m!4677247))

(declare-fun m!4677249 () Bool)

(assert (=> bm!288321 m!4677249))

(declare-fun m!4677251 () Bool)

(assert (=> b!4068521 m!4677251))

(assert (=> b!4068526 m!4677241))

(declare-fun m!4677253 () Bool)

(assert (=> b!4068526 m!4677253))

(assert (=> b!4068526 m!4677253))

(declare-fun m!4677255 () Bool)

(assert (=> b!4068526 m!4677255))

(assert (=> b!4068526 m!4677255))

(declare-fun m!4677257 () Bool)

(assert (=> b!4068526 m!4677257))

(declare-fun m!4677259 () Bool)

(assert (=> d!1209372 m!4677259))

(declare-fun m!4677261 () Bool)

(assert (=> d!1209372 m!4677261))

(declare-fun m!4677263 () Bool)

(assert (=> d!1209372 m!4677263))

(assert (=> d!1209372 m!4676555))

(declare-fun m!4677265 () Bool)

(assert (=> b!4068527 m!4677265))

(assert (=> b!4068528 m!4677241))

(assert (=> b!4068528 m!4677253))

(assert (=> b!4068528 m!4677253))

(assert (=> b!4068528 m!4677255))

(assert (=> b!4068525 m!4677241))

(declare-fun m!4677267 () Bool)

(assert (=> b!4068525 m!4677267))

(assert (=> b!4068525 m!4676891))

(assert (=> b!4068522 m!4677241))

(assert (=> b!4068522 m!4677253))

(assert (=> b!4068522 m!4677253))

(assert (=> b!4068522 m!4677255))

(assert (=> b!4068522 m!4677255))

(declare-fun m!4677269 () Bool)

(assert (=> b!4068522 m!4677269))

(assert (=> b!4067948 d!1209372))

(declare-fun d!1209374 () Bool)

(assert (=> d!1209374 (= suffixResult!105 lt!1455914)))

(declare-fun lt!1456137 () Unit!63019)

(assert (=> d!1209374 (= lt!1456137 (choose!24799 lt!1455907 suffixResult!105 lt!1455907 lt!1455914 lt!1455926))))

(assert (=> d!1209374 (isPrefix!4069 lt!1455907 lt!1455926)))

(assert (=> d!1209374 (= (lemmaSamePrefixThenSameSuffix!2230 lt!1455907 suffixResult!105 lt!1455907 lt!1455914 lt!1455926) lt!1456137)))

(declare-fun bs!592481 () Bool)

(assert (= bs!592481 d!1209374))

(declare-fun m!4677271 () Bool)

(assert (=> bs!592481 m!4677271))

(assert (=> bs!592481 m!4676535))

(assert (=> b!4067948 d!1209374))

(declare-fun d!1209376 () Bool)

(declare-fun e!2524931 () Bool)

(assert (=> d!1209376 e!2524931))

(declare-fun res!1660890 () Bool)

(assert (=> d!1209376 (=> res!1660890 e!2524931)))

(declare-fun lt!1456138 () Bool)

(assert (=> d!1209376 (= res!1660890 (not lt!1456138))))

(declare-fun e!2524930 () Bool)

(assert (=> d!1209376 (= lt!1456138 e!2524930)))

(declare-fun res!1660889 () Bool)

(assert (=> d!1209376 (=> res!1660889 e!2524930)))

(assert (=> d!1209376 (= res!1660889 ((_ is Nil!43451) lt!1455907))))

(assert (=> d!1209376 (= (isPrefix!4069 lt!1455907 lt!1455924) lt!1456138)))

(declare-fun b!4068530 () Bool)

(declare-fun e!2524932 () Bool)

(assert (=> b!4068530 (= e!2524930 e!2524932)))

(declare-fun res!1660888 () Bool)

(assert (=> b!4068530 (=> (not res!1660888) (not e!2524932))))

(assert (=> b!4068530 (= res!1660888 (not ((_ is Nil!43451) lt!1455924)))))

(declare-fun b!4068532 () Bool)

(assert (=> b!4068532 (= e!2524932 (isPrefix!4069 (tail!6315 lt!1455907) (tail!6315 lt!1455924)))))

(declare-fun b!4068531 () Bool)

(declare-fun res!1660891 () Bool)

(assert (=> b!4068531 (=> (not res!1660891) (not e!2524932))))

(assert (=> b!4068531 (= res!1660891 (= (head!8583 lt!1455907) (head!8583 lt!1455924)))))

(declare-fun b!4068533 () Bool)

(assert (=> b!4068533 (= e!2524931 (>= (size!32486 lt!1455924) (size!32486 lt!1455907)))))

(assert (= (and d!1209376 (not res!1660889)) b!4068530))

(assert (= (and b!4068530 res!1660888) b!4068531))

(assert (= (and b!4068531 res!1660891) b!4068532))

(assert (= (and d!1209376 (not res!1660890)) b!4068533))

(assert (=> b!4068532 m!4676721))

(declare-fun m!4677273 () Bool)

(assert (=> b!4068532 m!4677273))

(assert (=> b!4068532 m!4676721))

(assert (=> b!4068532 m!4677273))

(declare-fun m!4677275 () Bool)

(assert (=> b!4068532 m!4677275))

(assert (=> b!4068531 m!4676725))

(declare-fun m!4677277 () Bool)

(assert (=> b!4068531 m!4677277))

(declare-fun m!4677279 () Bool)

(assert (=> b!4068533 m!4677279))

(assert (=> b!4068533 m!4676443))

(assert (=> b!4067948 d!1209376))

(declare-fun d!1209378 () Bool)

(assert (=> d!1209378 (isPrefix!4069 lt!1455907 (++!11384 lt!1455907 lt!1455914))))

(declare-fun lt!1456139 () Unit!63019)

(assert (=> d!1209378 (= lt!1456139 (choose!24795 lt!1455907 lt!1455914))))

(assert (=> d!1209378 (= (lemmaConcatTwoListThenFirstIsPrefix!2904 lt!1455907 lt!1455914) lt!1456139)))

(declare-fun bs!592482 () Bool)

(assert (= bs!592482 d!1209378))

(assert (=> bs!592482 m!4676491))

(assert (=> bs!592482 m!4676491))

(declare-fun m!4677281 () Bool)

(assert (=> bs!592482 m!4677281))

(declare-fun m!4677283 () Bool)

(assert (=> bs!592482 m!4677283))

(assert (=> b!4067948 d!1209378))

(declare-fun d!1209380 () Bool)

(declare-fun res!1660894 () Bool)

(declare-fun e!2524935 () Bool)

(assert (=> d!1209380 (=> (not res!1660894) (not e!2524935))))

(declare-fun rulesValid!2722 (LexerInterface!6571 List!43577) Bool)

(assert (=> d!1209380 (= res!1660894 (rulesValid!2722 thiss!21717 rules!2999))))

(assert (=> d!1209380 (= (rulesInvariant!5914 thiss!21717 rules!2999) e!2524935)))

(declare-fun b!4068536 () Bool)

(declare-datatypes ((List!43579 0))(
  ( (Nil!43455) (Cons!43455 (h!48875 String!49778) (t!336954 List!43579)) )
))
(declare-fun noDuplicateTag!2723 (LexerInterface!6571 List!43577 List!43579) Bool)

(assert (=> b!4068536 (= e!2524935 (noDuplicateTag!2723 thiss!21717 rules!2999 Nil!43455))))

(assert (= (and d!1209380 res!1660894) b!4068536))

(declare-fun m!4677285 () Bool)

(assert (=> d!1209380 m!4677285))

(declare-fun m!4677287 () Bool)

(assert (=> b!4068536 m!4677287))

(assert (=> b!4067959 d!1209380))

(declare-fun d!1209382 () Bool)

(assert (=> d!1209382 (= (inv!58084 (tag!7842 (h!48873 rules!2999))) (= (mod (str.len (value!219620 (tag!7842 (h!48873 rules!2999)))) 2) 0))))

(assert (=> b!4067938 d!1209382))

(declare-fun d!1209384 () Bool)

(declare-fun res!1660895 () Bool)

(declare-fun e!2524936 () Bool)

(assert (=> d!1209384 (=> (not res!1660895) (not e!2524936))))

(assert (=> d!1209384 (= res!1660895 (semiInverseModEq!2987 (toChars!9401 (transformation!6982 (h!48873 rules!2999))) (toValue!9542 (transformation!6982 (h!48873 rules!2999)))))))

(assert (=> d!1209384 (= (inv!58087 (transformation!6982 (h!48873 rules!2999))) e!2524936)))

(declare-fun b!4068537 () Bool)

(assert (=> b!4068537 (= e!2524936 (equivClasses!2886 (toChars!9401 (transformation!6982 (h!48873 rules!2999))) (toValue!9542 (transformation!6982 (h!48873 rules!2999)))))))

(assert (= (and d!1209384 res!1660895) b!4068537))

(declare-fun m!4677289 () Bool)

(assert (=> d!1209384 m!4677289))

(declare-fun m!4677291 () Bool)

(assert (=> b!4068537 m!4677291))

(assert (=> b!4067938 d!1209384))

(declare-fun b!4068542 () Bool)

(declare-fun e!2524939 () Bool)

(declare-fun tp!1231341 () Bool)

(assert (=> b!4068542 (= e!2524939 (and tp_is_empty!20745 tp!1231341))))

(assert (=> b!4067949 (= tp!1231291 e!2524939)))

(assert (= (and b!4067949 ((_ is Cons!43451) (t!336926 suffixResult!105))) b!4068542))

(declare-fun b!4068543 () Bool)

(declare-fun e!2524940 () Bool)

(declare-fun tp!1231342 () Bool)

(assert (=> b!4068543 (= e!2524940 (and tp_is_empty!20745 tp!1231342))))

(assert (=> b!4067960 (= tp!1231281 e!2524940)))

(assert (= (and b!4067960 ((_ is Cons!43451) (originalCharacters!7582 token!484))) b!4068543))

(declare-fun b!4068544 () Bool)

(declare-fun e!2524941 () Bool)

(declare-fun tp!1231343 () Bool)

(assert (=> b!4068544 (= e!2524941 (and tp_is_empty!20745 tp!1231343))))

(assert (=> b!4067955 (= tp!1231292 e!2524941)))

(assert (= (and b!4067955 ((_ is Cons!43451) (t!336926 prefix!494))) b!4068544))

(declare-fun b!4068545 () Bool)

(declare-fun e!2524942 () Bool)

(declare-fun tp!1231344 () Bool)

(assert (=> b!4068545 (= e!2524942 (and tp_is_empty!20745 tp!1231344))))

(assert (=> b!4067935 (= tp!1231285 e!2524942)))

(assert (= (and b!4067935 ((_ is Cons!43451) (t!336926 suffix!1299))) b!4068545))

(declare-fun b!4068556 () Bool)

(declare-fun b_free!113173 () Bool)

(declare-fun b_next!113877 () Bool)

(assert (=> b!4068556 (= b_free!113173 (not b_next!113877))))

(declare-fun tb!244597 () Bool)

(declare-fun t!336951 () Bool)

(assert (=> (and b!4068556 (= (toValue!9542 (transformation!6982 (h!48873 (t!336928 rules!2999)))) (toValue!9542 (transformation!6982 (rule!10084 token!484)))) t!336951) tb!244597))

(declare-fun result!296432 () Bool)

(assert (= result!296432 result!296400))

(assert (=> d!1209238 t!336951))

(declare-fun tp!1231355 () Bool)

(declare-fun b_and!312679 () Bool)

(assert (=> b!4068556 (= tp!1231355 (and (=> t!336951 result!296432) b_and!312679))))

(declare-fun b_free!113175 () Bool)

(declare-fun b_next!113879 () Bool)

(assert (=> b!4068556 (= b_free!113175 (not b_next!113879))))

(declare-fun t!336953 () Bool)

(declare-fun tb!244599 () Bool)

(assert (=> (and b!4068556 (= (toChars!9401 (transformation!6982 (h!48873 (t!336928 rules!2999)))) (toChars!9401 (transformation!6982 (rule!10084 token!484)))) t!336953) tb!244599))

(declare-fun result!296434 () Bool)

(assert (= result!296434 result!296394))

(assert (=> d!1209164 t!336953))

(assert (=> b!4068282 t!336953))

(declare-fun b_and!312681 () Bool)

(declare-fun tp!1231353 () Bool)

(assert (=> b!4068556 (= tp!1231353 (and (=> t!336953 result!296434) b_and!312681))))

(declare-fun e!2524954 () Bool)

(assert (=> b!4068556 (= e!2524954 (and tp!1231355 tp!1231353))))

(declare-fun b!4068555 () Bool)

(declare-fun e!2524951 () Bool)

(declare-fun tp!1231354 () Bool)

(assert (=> b!4068555 (= e!2524951 (and tp!1231354 (inv!58084 (tag!7842 (h!48873 (t!336928 rules!2999)))) (inv!58087 (transformation!6982 (h!48873 (t!336928 rules!2999)))) e!2524954))))

(declare-fun b!4068554 () Bool)

(declare-fun e!2524953 () Bool)

(declare-fun tp!1231356 () Bool)

(assert (=> b!4068554 (= e!2524953 (and e!2524951 tp!1231356))))

(assert (=> b!4067946 (= tp!1231284 e!2524953)))

(assert (= b!4068555 b!4068556))

(assert (= b!4068554 b!4068555))

(assert (= (and b!4067946 ((_ is Cons!43453) (t!336928 rules!2999))) b!4068554))

(declare-fun m!4677293 () Bool)

(assert (=> b!4068555 m!4677293))

(declare-fun m!4677295 () Bool)

(assert (=> b!4068555 m!4677295))

(declare-fun b!4068557 () Bool)

(declare-fun e!2524955 () Bool)

(declare-fun tp!1231357 () Bool)

(assert (=> b!4068557 (= e!2524955 (and tp_is_empty!20745 tp!1231357))))

(assert (=> b!4067947 (= tp!1231287 e!2524955)))

(assert (= (and b!4067947 ((_ is Cons!43451) (t!336926 newSuffixResult!27))) b!4068557))

(declare-fun b!4068558 () Bool)

(declare-fun e!2524956 () Bool)

(declare-fun tp!1231358 () Bool)

(assert (=> b!4068558 (= e!2524956 (and tp_is_empty!20745 tp!1231358))))

(assert (=> b!4067953 (= tp!1231286 e!2524956)))

(assert (= (and b!4067953 ((_ is Cons!43451) (t!336926 newSuffix!27))) b!4068558))

(declare-fun b!4068572 () Bool)

(declare-fun e!2524959 () Bool)

(declare-fun tp!1231373 () Bool)

(declare-fun tp!1231372 () Bool)

(assert (=> b!4068572 (= e!2524959 (and tp!1231373 tp!1231372))))

(declare-fun b!4068569 () Bool)

(assert (=> b!4068569 (= e!2524959 tp_is_empty!20745)))

(declare-fun b!4068571 () Bool)

(declare-fun tp!1231371 () Bool)

(assert (=> b!4068571 (= e!2524959 tp!1231371)))

(assert (=> b!4067964 (= tp!1231282 e!2524959)))

(declare-fun b!4068570 () Bool)

(declare-fun tp!1231370 () Bool)

(declare-fun tp!1231369 () Bool)

(assert (=> b!4068570 (= e!2524959 (and tp!1231370 tp!1231369))))

(assert (= (and b!4067964 ((_ is ElementMatch!11887) (regex!6982 (rule!10084 token!484)))) b!4068569))

(assert (= (and b!4067964 ((_ is Concat!19100) (regex!6982 (rule!10084 token!484)))) b!4068570))

(assert (= (and b!4067964 ((_ is Star!11887) (regex!6982 (rule!10084 token!484)))) b!4068571))

(assert (= (and b!4067964 ((_ is Union!11887) (regex!6982 (rule!10084 token!484)))) b!4068572))

(declare-fun b!4068576 () Bool)

(declare-fun e!2524960 () Bool)

(declare-fun tp!1231378 () Bool)

(declare-fun tp!1231377 () Bool)

(assert (=> b!4068576 (= e!2524960 (and tp!1231378 tp!1231377))))

(declare-fun b!4068573 () Bool)

(assert (=> b!4068573 (= e!2524960 tp_is_empty!20745)))

(declare-fun b!4068575 () Bool)

(declare-fun tp!1231376 () Bool)

(assert (=> b!4068575 (= e!2524960 tp!1231376)))

(assert (=> b!4067938 (= tp!1231289 e!2524960)))

(declare-fun b!4068574 () Bool)

(declare-fun tp!1231375 () Bool)

(declare-fun tp!1231374 () Bool)

(assert (=> b!4068574 (= e!2524960 (and tp!1231375 tp!1231374))))

(assert (= (and b!4067938 ((_ is ElementMatch!11887) (regex!6982 (h!48873 rules!2999)))) b!4068573))

(assert (= (and b!4067938 ((_ is Concat!19100) (regex!6982 (h!48873 rules!2999)))) b!4068574))

(assert (= (and b!4067938 ((_ is Star!11887) (regex!6982 (h!48873 rules!2999)))) b!4068575))

(assert (= (and b!4067938 ((_ is Union!11887) (regex!6982 (h!48873 rules!2999)))) b!4068576))

(declare-fun b_lambda!118857 () Bool)

(assert (= b_lambda!118841 (or (and b!4067939 b_free!113161) (and b!4067956 b_free!113165 (= (toValue!9542 (transformation!6982 (h!48873 rules!2999))) (toValue!9542 (transformation!6982 (rule!10084 token!484))))) (and b!4068556 b_free!113173 (= (toValue!9542 (transformation!6982 (h!48873 (t!336928 rules!2999)))) (toValue!9542 (transformation!6982 (rule!10084 token!484))))) b_lambda!118857)))

(declare-fun b_lambda!118859 () Bool)

(assert (= b_lambda!118839 (or (and b!4067939 b_free!113163) (and b!4067956 b_free!113167 (= (toChars!9401 (transformation!6982 (h!48873 rules!2999))) (toChars!9401 (transformation!6982 (rule!10084 token!484))))) (and b!4068556 b_free!113175 (= (toChars!9401 (transformation!6982 (h!48873 (t!336928 rules!2999)))) (toChars!9401 (transformation!6982 (rule!10084 token!484))))) b_lambda!118859)))

(declare-fun b_lambda!118861 () Bool)

(assert (= b_lambda!118843 (or (and b!4067939 b_free!113163) (and b!4067956 b_free!113167 (= (toChars!9401 (transformation!6982 (h!48873 rules!2999))) (toChars!9401 (transformation!6982 (rule!10084 token!484))))) (and b!4068556 b_free!113175 (= (toChars!9401 (transformation!6982 (h!48873 (t!336928 rules!2999)))) (toChars!9401 (transformation!6982 (rule!10084 token!484))))) b_lambda!118861)))

(check-sat b_and!312657 (not d!1209166) (not d!1209192) (not b!4068554) (not b!4068123) (not b!4068250) (not d!1209384) (not b!4068536) (not b!4068282) (not b!4068555) (not b!4068283) (not d!1209378) (not b!4067999) (not b!4068571) (not d!1209272) (not b!4068575) (not b!4068127) (not b!4068124) (not b!4068159) (not bm!288321) (not b!4068576) (not tb!244577) (not d!1209268) (not d!1209162) (not b!4068092) (not b!4068200) (not b!4068166) (not b!4068527) (not b_lambda!118857) (not b!4068139) (not d!1209262) (not d!1209208) (not b!4068533) (not d!1209196) (not b!4068267) (not b!4068255) (not d!1209204) (not b!4067970) (not b!4068116) (not b_next!113879) (not b!4068557) (not b!4068276) (not b!4068109) (not d!1209270) (not b!4067994) (not b!4068145) (not b!4068196) b_and!312681 (not bm!288313) (not b!4068194) (not d!1209374) (not d!1209250) (not b!4068081) (not b!4068167) (not b!4067998) (not d!1209194) (not b!4068523) (not b!4068197) (not d!1209230) (not b!4068574) (not b!4068518) (not b!4068526) (not b!4068146) (not bm!288316) (not b!4068080) (not b!4067972) tp_is_empty!20745 (not b!4068269) (not b!4068195) (not b!4068259) (not b!4067977) (not b!4068522) (not d!1209242) (not b!4068098) (not b!4068265) (not b!4068542) (not b_next!113869) (not b!4068520) (not b!4068155) (not b!4068201) (not d!1209212) (not b!4068078) (not b!4068079) (not d!1209170) (not b!4068122) (not d!1209220) (not b!4068256) (not d!1209218) (not b!4068572) (not b!4068142) (not b!4068083) (not b!4068531) (not b!4068168) (not b!4068128) (not b!4068528) (not b!4068537) (not b_next!113865) (not d!1209200) (not b!4068164) (not b!4068524) (not b!4068543) (not b!4068525) (not b_lambda!118861) (not b!4068114) (not b_next!113877) (not b!4068263) (not b!4068514) (not b!4068544) (not d!1209244) (not d!1209248) (not d!1209182) (not b!4068198) b_and!312659 (not b!4068084) (not tb!244581) (not d!1209222) (not b!4068158) (not b!4068160) (not b!4068163) (not b!4068170) b_and!312679 (not b!4068091) (not b!4068257) (not b!4068545) (not b_next!113867) (not d!1209224) (not d!1209206) (not b!4068275) (not b!4068119) (not b!4068266) (not d!1209372) (not b!4068570) (not d!1209232) (not b!4068193) (not d!1209178) (not b!4068111) (not d!1209260) (not b!4068558) (not b_next!113871) (not b!4068521) (not b!4067987) (not b!4068117) (not d!1209240) (not b!4068532) (not b!4068271) b_and!312655 (not b!4068087) (not b!4068171) (not b!4068162) (not d!1209266) (not b!4068110) (not b!4068088) (not d!1209164) (not b!4068126) (not d!1209246) (not b!4068150) b_and!312661 (not b!4068140) (not b_lambda!118859) (not b!4068082) (not b!4068172) (not b!4068272) (not b!4068077) (not b!4067993) (not d!1209174) (not d!1209380) (not b!4068513) (not b!4067988))
(check-sat (not b_next!113879) b_and!312681 (not b_next!113869) (not b_next!113865) (not b_next!113877) b_and!312659 b_and!312679 (not b_next!113867) (not b_next!113871) b_and!312655 b_and!312661 b_and!312657)
