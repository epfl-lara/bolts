; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378172 () Bool)

(assert start!378172)

(declare-fun b!4015155 () Bool)

(declare-fun b_free!111665 () Bool)

(declare-fun b_next!112369 () Bool)

(assert (=> b!4015155 (= b_free!111665 (not b_next!112369))))

(declare-fun tp!1220939 () Bool)

(declare-fun b_and!308487 () Bool)

(assert (=> b!4015155 (= tp!1220939 b_and!308487)))

(declare-fun b_free!111667 () Bool)

(declare-fun b_next!112371 () Bool)

(assert (=> b!4015155 (= b_free!111667 (not b_next!112371))))

(declare-fun tp!1220940 () Bool)

(declare-fun b_and!308489 () Bool)

(assert (=> b!4015155 (= tp!1220940 b_and!308489)))

(declare-fun b!4015135 () Bool)

(declare-fun b_free!111669 () Bool)

(declare-fun b_next!112373 () Bool)

(assert (=> b!4015135 (= b_free!111669 (not b_next!112373))))

(declare-fun tp!1220938 () Bool)

(declare-fun b_and!308491 () Bool)

(assert (=> b!4015135 (= tp!1220938 b_and!308491)))

(declare-fun b_free!111671 () Bool)

(declare-fun b_next!112375 () Bool)

(assert (=> b!4015135 (= b_free!111671 (not b_next!112375))))

(declare-fun tp!1220941 () Bool)

(declare-fun b_and!308493 () Bool)

(assert (=> b!4015135 (= tp!1220941 b_and!308493)))

(declare-fun b!4015124 () Bool)

(declare-fun e!2490163 () Bool)

(declare-fun e!2490167 () Bool)

(assert (=> b!4015124 (= e!2490163 e!2490167)))

(declare-fun res!1632612 () Bool)

(assert (=> b!4015124 (=> (not res!1632612) (not e!2490167))))

(declare-datatypes ((C!23672 0))(
  ( (C!23673 (val!13930 Int)) )
))
(declare-datatypes ((List!43084 0))(
  ( (Nil!42960) (Cons!42960 (h!48380 C!23672) (t!333321 List!43084)) )
))
(declare-datatypes ((IArray!26103 0))(
  ( (IArray!26104 (innerList!13109 List!43084)) )
))
(declare-datatypes ((Conc!13049 0))(
  ( (Node!13049 (left!32402 Conc!13049) (right!32732 Conc!13049) (csize!26328 Int) (cheight!13260 Int)) (Leaf!20175 (xs!16355 IArray!26103) (csize!26329 Int)) (Empty!13049) )
))
(declare-datatypes ((BalanceConc!25692 0))(
  ( (BalanceConc!25693 (c!694174 Conc!13049)) )
))
(declare-datatypes ((List!43085 0))(
  ( (Nil!42961) (Cons!42961 (h!48381 (_ BitVec 16)) (t!333322 List!43085)) )
))
(declare-datatypes ((TokenValue!7068 0))(
  ( (FloatLiteralValue!14136 (text!49921 List!43085)) (TokenValueExt!7067 (__x!26353 Int)) (Broken!35340 (value!215491 List!43085)) (Object!7191) (End!7068) (Def!7068) (Underscore!7068) (Match!7068) (Else!7068) (Error!7068) (Case!7068) (If!7068) (Extends!7068) (Abstract!7068) (Class!7068) (Val!7068) (DelimiterValue!14136 (del!7128 List!43085)) (KeywordValue!7074 (value!215492 List!43085)) (CommentValue!14136 (value!215493 List!43085)) (WhitespaceValue!14136 (value!215494 List!43085)) (IndentationValue!7068 (value!215495 List!43085)) (String!49057) (Int32!7068) (Broken!35341 (value!215496 List!43085)) (Boolean!7069) (Unit!62009) (OperatorValue!7071 (op!7128 List!43085)) (IdentifierValue!14136 (value!215497 List!43085)) (IdentifierValue!14137 (value!215498 List!43085)) (WhitespaceValue!14137 (value!215499 List!43085)) (True!14136) (False!14136) (Broken!35342 (value!215500 List!43085)) (Broken!35343 (value!215501 List!43085)) (True!14137) (RightBrace!7068) (RightBracket!7068) (Colon!7068) (Null!7068) (Comma!7068) (LeftBracket!7068) (False!14137) (LeftBrace!7068) (ImaginaryLiteralValue!7068 (text!49922 List!43085)) (StringLiteralValue!21204 (value!215502 List!43085)) (EOFValue!7068 (value!215503 List!43085)) (IdentValue!7068 (value!215504 List!43085)) (DelimiterValue!14137 (value!215505 List!43085)) (DedentValue!7068 (value!215506 List!43085)) (NewLineValue!7068 (value!215507 List!43085)) (IntegerValue!21204 (value!215508 (_ BitVec 32)) (text!49923 List!43085)) (IntegerValue!21205 (value!215509 Int) (text!49924 List!43085)) (Times!7068) (Or!7068) (Equal!7068) (Minus!7068) (Broken!35344 (value!215510 List!43085)) (And!7068) (Div!7068) (LessEqual!7068) (Mod!7068) (Concat!18811) (Not!7068) (Plus!7068) (SpaceValue!7068 (value!215511 List!43085)) (IntegerValue!21206 (value!215512 Int) (text!49925 List!43085)) (StringLiteralValue!21205 (text!49926 List!43085)) (FloatLiteralValue!14137 (text!49927 List!43085)) (BytesLiteralValue!7068 (value!215513 List!43085)) (CommentValue!14137 (value!215514 List!43085)) (StringLiteralValue!21206 (value!215515 List!43085)) (ErrorTokenValue!7068 (msg!7129 List!43085)) )
))
(declare-datatypes ((Regex!11743 0))(
  ( (ElementMatch!11743 (c!694175 C!23672)) (Concat!18812 (regOne!23998 Regex!11743) (regTwo!23998 Regex!11743)) (EmptyExpr!11743) (Star!11743 (reg!12072 Regex!11743)) (EmptyLang!11743) (Union!11743 (regOne!23999 Regex!11743) (regTwo!23999 Regex!11743)) )
))
(declare-datatypes ((String!49058 0))(
  ( (String!49059 (value!215516 String)) )
))
(declare-datatypes ((TokenValueInjection!13564 0))(
  ( (TokenValueInjection!13565 (toValue!9346 Int) (toChars!9205 Int)) )
))
(declare-datatypes ((Rule!13476 0))(
  ( (Rule!13477 (regex!6838 Regex!11743) (tag!7698 String!49058) (isSeparator!6838 Bool) (transformation!6838 TokenValueInjection!13564)) )
))
(declare-datatypes ((Token!12814 0))(
  ( (Token!12815 (value!215517 TokenValue!7068) (rule!9886 Rule!13476) (size!32123 Int) (originalCharacters!7438 List!43084)) )
))
(declare-datatypes ((tuple2!42106 0))(
  ( (tuple2!42107 (_1!24187 Token!12814) (_2!24187 List!43084)) )
))
(declare-datatypes ((Option!9252 0))(
  ( (None!9251) (Some!9251 (v!39621 tuple2!42106)) )
))
(declare-fun lt!1422784 () Option!9252)

(declare-datatypes ((LexerInterface!6427 0))(
  ( (LexerInterfaceExt!6424 (__x!26354 Int)) (Lexer!6425) )
))
(declare-fun thiss!21717 () LexerInterface!6427)

(declare-datatypes ((List!43086 0))(
  ( (Nil!42962) (Cons!42962 (h!48382 Rule!13476) (t!333323 List!43086)) )
))
(declare-fun rules!2999 () List!43086)

(declare-fun lt!1422796 () List!43084)

(declare-fun maxPrefix!3725 (LexerInterface!6427 List!43086 List!43084) Option!9252)

(assert (=> b!4015124 (= res!1632612 (= (maxPrefix!3725 thiss!21717 rules!2999 lt!1422796) lt!1422784))))

(declare-fun lt!1422763 () tuple2!42106)

(assert (=> b!4015124 (= lt!1422784 (Some!9251 lt!1422763))))

(declare-fun token!484 () Token!12814)

(declare-fun suffixResult!105 () List!43084)

(assert (=> b!4015124 (= lt!1422763 (tuple2!42107 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43084)

(declare-fun suffix!1299 () List!43084)

(declare-fun ++!11240 (List!43084 List!43084) List!43084)

(assert (=> b!4015124 (= lt!1422796 (++!11240 prefix!494 suffix!1299))))

(declare-fun b!4015125 () Bool)

(declare-fun res!1632590 () Bool)

(declare-fun e!2490157 () Bool)

(assert (=> b!4015125 (=> (not res!1632590) (not e!2490157))))

(declare-fun newSuffix!27 () List!43084)

(declare-fun isPrefix!3925 (List!43084 List!43084) Bool)

(assert (=> b!4015125 (= res!1632590 (isPrefix!3925 newSuffix!27 suffix!1299))))

(declare-fun b!4015126 () Bool)

(declare-fun e!2490179 () Bool)

(declare-fun e!2490185 () Bool)

(assert (=> b!4015126 (= e!2490179 e!2490185)))

(declare-fun res!1632591 () Bool)

(assert (=> b!4015126 (=> res!1632591 e!2490185)))

(declare-fun lt!1422790 () List!43084)

(assert (=> b!4015126 (= res!1632591 (not (= lt!1422790 prefix!494)))))

(declare-fun lt!1422795 () List!43084)

(declare-fun lt!1422774 () List!43084)

(assert (=> b!4015126 (= lt!1422790 (++!11240 lt!1422795 lt!1422774))))

(declare-fun getSuffix!2350 (List!43084 List!43084) List!43084)

(assert (=> b!4015126 (= lt!1422774 (getSuffix!2350 prefix!494 lt!1422795))))

(assert (=> b!4015126 (isPrefix!3925 lt!1422795 prefix!494)))

(declare-datatypes ((Unit!62010 0))(
  ( (Unit!62011) )
))
(declare-fun lt!1422787 () Unit!62010)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!497 (List!43084 List!43084 List!43084) Unit!62010)

(assert (=> b!4015126 (= lt!1422787 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!497 prefix!494 lt!1422795 lt!1422796))))

(declare-fun tp!1220936 () Bool)

(declare-fun b!4015127 () Bool)

(declare-fun e!2490170 () Bool)

(declare-fun e!2490171 () Bool)

(declare-fun inv!57384 (String!49058) Bool)

(declare-fun inv!57387 (TokenValueInjection!13564) Bool)

(assert (=> b!4015127 (= e!2490171 (and tp!1220936 (inv!57384 (tag!7698 (h!48382 rules!2999))) (inv!57387 (transformation!6838 (h!48382 rules!2999))) e!2490170))))

(declare-fun b!4015128 () Bool)

(declare-fun e!2490184 () Bool)

(declare-fun tp_is_empty!20457 () Bool)

(declare-fun tp!1220932 () Bool)

(assert (=> b!4015128 (= e!2490184 (and tp_is_empty!20457 tp!1220932))))

(declare-fun b!4015129 () Bool)

(declare-fun res!1632611 () Bool)

(declare-fun e!2490159 () Bool)

(assert (=> b!4015129 (=> (not res!1632611) (not e!2490159))))

(declare-fun lt!1422762 () TokenValue!7068)

(assert (=> b!4015129 (= res!1632611 (= (value!215517 token!484) lt!1422762))))

(declare-fun res!1632597 () Bool)

(assert (=> start!378172 (=> (not res!1632597) (not e!2490157))))

(get-info :version)

(assert (=> start!378172 (= res!1632597 ((_ is Lexer!6425) thiss!21717))))

(assert (=> start!378172 e!2490157))

(declare-fun e!2490186 () Bool)

(assert (=> start!378172 e!2490186))

(declare-fun e!2490180 () Bool)

(declare-fun inv!57388 (Token!12814) Bool)

(assert (=> start!378172 (and (inv!57388 token!484) e!2490180)))

(declare-fun e!2490183 () Bool)

(assert (=> start!378172 e!2490183))

(declare-fun e!2490160 () Bool)

(assert (=> start!378172 e!2490160))

(assert (=> start!378172 e!2490184))

(assert (=> start!378172 true))

(declare-fun e!2490165 () Bool)

(assert (=> start!378172 e!2490165))

(declare-fun e!2490156 () Bool)

(assert (=> start!378172 e!2490156))

(declare-fun b!4015130 () Bool)

(declare-fun tp!1220931 () Bool)

(assert (=> b!4015130 (= e!2490165 (and e!2490171 tp!1220931))))

(declare-fun b!4015131 () Bool)

(declare-fun tp!1220933 () Bool)

(assert (=> b!4015131 (= e!2490160 (and tp_is_empty!20457 tp!1220933))))

(declare-fun b!4015132 () Bool)

(declare-fun e!2490178 () Bool)

(assert (=> b!4015132 (= e!2490157 e!2490178)))

(declare-fun res!1632588 () Bool)

(assert (=> b!4015132 (=> (not res!1632588) (not e!2490178))))

(declare-fun lt!1422777 () Int)

(declare-fun lt!1422771 () Int)

(assert (=> b!4015132 (= res!1632588 (>= lt!1422777 lt!1422771))))

(declare-fun size!32124 (List!43084) Int)

(assert (=> b!4015132 (= lt!1422771 (size!32124 lt!1422795))))

(assert (=> b!4015132 (= lt!1422777 (size!32124 prefix!494))))

(declare-fun list!15970 (BalanceConc!25692) List!43084)

(declare-fun charsOf!4654 (Token!12814) BalanceConc!25692)

(assert (=> b!4015132 (= lt!1422795 (list!15970 (charsOf!4654 token!484)))))

(declare-fun b!4015133 () Bool)

(declare-fun e!2490168 () Bool)

(declare-fun e!2490172 () Bool)

(assert (=> b!4015133 (= e!2490168 e!2490172)))

(declare-fun res!1632602 () Bool)

(assert (=> b!4015133 (=> res!1632602 e!2490172)))

(declare-fun lt!1422813 () Option!9252)

(assert (=> b!4015133 (= res!1632602 (not ((_ is Some!9251) lt!1422813)))))

(declare-fun lt!1422782 () List!43084)

(assert (=> b!4015133 (= lt!1422813 (maxPrefix!3725 thiss!21717 rules!2999 lt!1422782))))

(declare-fun lt!1422814 () Token!12814)

(declare-fun lt!1422766 () List!43084)

(assert (=> b!4015133 (and (= suffixResult!105 lt!1422766) (= lt!1422763 (tuple2!42107 lt!1422814 lt!1422766)))))

(declare-fun lt!1422811 () Unit!62010)

(declare-fun lemmaSamePrefixThenSameSuffix!2096 (List!43084 List!43084 List!43084 List!43084 List!43084) Unit!62010)

(assert (=> b!4015133 (= lt!1422811 (lemmaSamePrefixThenSameSuffix!2096 lt!1422795 suffixResult!105 lt!1422795 lt!1422766 lt!1422796))))

(declare-fun lt!1422778 () List!43084)

(assert (=> b!4015133 (isPrefix!3925 lt!1422795 lt!1422778)))

(declare-fun lt!1422769 () Unit!62010)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2766 (List!43084 List!43084) Unit!62010)

(assert (=> b!4015133 (= lt!1422769 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422795 lt!1422766))))

(declare-fun b!4015134 () Bool)

(declare-fun res!1632599 () Bool)

(assert (=> b!4015134 (=> (not res!1632599) (not e!2490157))))

(assert (=> b!4015134 (= res!1632599 (>= (size!32124 suffix!1299) (size!32124 newSuffix!27)))))

(assert (=> b!4015135 (= e!2490170 (and tp!1220938 tp!1220941))))

(declare-fun b!4015136 () Bool)

(declare-fun tp!1220930 () Bool)

(assert (=> b!4015136 (= e!2490186 (and tp_is_empty!20457 tp!1220930))))

(declare-fun b!4015137 () Bool)

(declare-fun e!2490166 () Bool)

(assert (=> b!4015137 (= e!2490166 e!2490179)))

(declare-fun res!1632601 () Bool)

(assert (=> b!4015137 (=> res!1632601 e!2490179)))

(assert (=> b!4015137 (= res!1632601 (not (isPrefix!3925 lt!1422795 lt!1422796)))))

(assert (=> b!4015137 (isPrefix!3925 prefix!494 lt!1422796)))

(declare-fun lt!1422775 () Unit!62010)

(assert (=> b!4015137 (= lt!1422775 (lemmaConcatTwoListThenFirstIsPrefix!2766 prefix!494 suffix!1299))))

(declare-fun lt!1422804 () List!43084)

(assert (=> b!4015137 (isPrefix!3925 lt!1422795 lt!1422804)))

(declare-fun lt!1422768 () Unit!62010)

(assert (=> b!4015137 (= lt!1422768 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422795 suffixResult!105))))

(declare-fun b!4015138 () Bool)

(assert (=> b!4015138 (= e!2490167 (not e!2490166))))

(declare-fun res!1632596 () Bool)

(assert (=> b!4015138 (=> res!1632596 e!2490166)))

(assert (=> b!4015138 (= res!1632596 (not (= lt!1422804 lt!1422796)))))

(assert (=> b!4015138 (= lt!1422804 (++!11240 lt!1422795 suffixResult!105))))

(declare-fun lt!1422815 () Unit!62010)

(declare-fun lemmaInv!1053 (TokenValueInjection!13564) Unit!62010)

(assert (=> b!4015138 (= lt!1422815 (lemmaInv!1053 (transformation!6838 (rule!9886 token!484))))))

(declare-fun ruleValid!2770 (LexerInterface!6427 Rule!13476) Bool)

(assert (=> b!4015138 (ruleValid!2770 thiss!21717 (rule!9886 token!484))))

(declare-fun lt!1422767 () Unit!62010)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1844 (LexerInterface!6427 Rule!13476 List!43086) Unit!62010)

(assert (=> b!4015138 (= lt!1422767 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1844 thiss!21717 (rule!9886 token!484) rules!2999))))

(declare-fun b!4015139 () Bool)

(declare-fun tp!1220935 () Bool)

(assert (=> b!4015139 (= e!2490156 (and tp_is_empty!20457 tp!1220935))))

(declare-fun b!4015140 () Bool)

(declare-fun e!2490175 () Bool)

(declare-fun e!2490182 () Bool)

(assert (=> b!4015140 (= e!2490175 e!2490182)))

(declare-fun res!1632593 () Bool)

(assert (=> b!4015140 (=> res!1632593 e!2490182)))

(declare-fun lt!1422793 () Option!9252)

(assert (=> b!4015140 (= res!1632593 (not (= lt!1422793 lt!1422784)))))

(assert (=> b!4015140 (= lt!1422793 (Some!9251 (tuple2!42107 lt!1422814 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2745 (LexerInterface!6427 Rule!13476 List!43084) Option!9252)

(assert (=> b!4015140 (= lt!1422793 (maxPrefixOneRule!2745 thiss!21717 (rule!9886 token!484) lt!1422796))))

(assert (=> b!4015140 (= lt!1422814 (Token!12815 lt!1422762 (rule!9886 token!484) lt!1422771 lt!1422795))))

(declare-fun apply!10035 (TokenValueInjection!13564 BalanceConc!25692) TokenValue!7068)

(declare-fun seqFromList!5063 (List!43084) BalanceConc!25692)

(assert (=> b!4015140 (= lt!1422762 (apply!10035 (transformation!6838 (rule!9886 token!484)) (seqFromList!5063 lt!1422795)))))

(declare-fun lt!1422779 () Unit!62010)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1563 (LexerInterface!6427 List!43086 List!43084 List!43084 List!43084 Rule!13476) Unit!62010)

(assert (=> b!4015140 (= lt!1422779 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1563 thiss!21717 rules!2999 lt!1422795 lt!1422796 suffixResult!105 (rule!9886 token!484)))))

(declare-fun lt!1422776 () List!43084)

(assert (=> b!4015140 (= lt!1422776 suffixResult!105)))

(declare-fun lt!1422808 () Unit!62010)

(assert (=> b!4015140 (= lt!1422808 (lemmaSamePrefixThenSameSuffix!2096 lt!1422795 lt!1422776 lt!1422795 suffixResult!105 lt!1422796))))

(declare-fun lt!1422794 () List!43084)

(assert (=> b!4015140 (isPrefix!3925 lt!1422795 lt!1422794)))

(declare-fun lt!1422761 () Unit!62010)

(assert (=> b!4015140 (= lt!1422761 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422795 lt!1422776))))

(declare-fun b!4015141 () Bool)

(declare-fun e!2490162 () Bool)

(assert (=> b!4015141 (= e!2490182 e!2490162)))

(declare-fun res!1632609 () Bool)

(assert (=> b!4015141 (=> res!1632609 e!2490162)))

(declare-fun matchR!5704 (Regex!11743 List!43084) Bool)

(assert (=> b!4015141 (= res!1632609 (not (matchR!5704 (regex!6838 (rule!9886 token!484)) lt!1422795)))))

(assert (=> b!4015141 (isPrefix!3925 lt!1422795 lt!1422782)))

(declare-fun lt!1422773 () Unit!62010)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!738 (List!43084 List!43084 List!43084) Unit!62010)

(assert (=> b!4015141 (= lt!1422773 (lemmaPrefixStaysPrefixWhenAddingToSuffix!738 lt!1422795 prefix!494 newSuffix!27))))

(declare-fun lt!1422792 () Unit!62010)

(assert (=> b!4015141 (= lt!1422792 (lemmaPrefixStaysPrefixWhenAddingToSuffix!738 lt!1422795 prefix!494 suffix!1299))))

(declare-fun b!4015142 () Bool)

(declare-fun e!2490154 () Bool)

(assert (=> b!4015142 (= e!2490172 e!2490154)))

(declare-fun res!1632594 () Bool)

(assert (=> b!4015142 (=> res!1632594 e!2490154)))

(declare-fun lt!1422780 () Option!9252)

(assert (=> b!4015142 (= res!1632594 (not (= lt!1422780 (Some!9251 (v!39621 lt!1422813)))))))

(declare-fun lt!1422799 () List!43084)

(declare-fun newSuffixResult!27 () List!43084)

(assert (=> b!4015142 (isPrefix!3925 lt!1422799 (++!11240 lt!1422799 newSuffixResult!27))))

(declare-fun lt!1422802 () Unit!62010)

(assert (=> b!4015142 (= lt!1422802 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422799 newSuffixResult!27))))

(declare-fun lt!1422765 () List!43084)

(assert (=> b!4015142 (isPrefix!3925 lt!1422799 lt!1422765)))

(assert (=> b!4015142 (= lt!1422765 (++!11240 lt!1422799 (_2!24187 (v!39621 lt!1422813))))))

(declare-fun lt!1422772 () Unit!62010)

(assert (=> b!4015142 (= lt!1422772 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422799 (_2!24187 (v!39621 lt!1422813))))))

(declare-fun lt!1422770 () Int)

(declare-fun lt!1422783 () TokenValue!7068)

(assert (=> b!4015142 (= lt!1422780 (Some!9251 (tuple2!42107 (Token!12815 lt!1422783 (rule!9886 (_1!24187 (v!39621 lt!1422813))) lt!1422770 lt!1422799) (_2!24187 (v!39621 lt!1422813)))))))

(assert (=> b!4015142 (= lt!1422780 (maxPrefixOneRule!2745 thiss!21717 (rule!9886 (_1!24187 (v!39621 lt!1422813))) lt!1422782))))

(assert (=> b!4015142 (= lt!1422770 (size!32124 lt!1422799))))

(assert (=> b!4015142 (= lt!1422783 (apply!10035 (transformation!6838 (rule!9886 (_1!24187 (v!39621 lt!1422813)))) (seqFromList!5063 lt!1422799)))))

(declare-fun lt!1422788 () Unit!62010)

(assert (=> b!4015142 (= lt!1422788 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1563 thiss!21717 rules!2999 lt!1422799 lt!1422782 (_2!24187 (v!39621 lt!1422813)) (rule!9886 (_1!24187 (v!39621 lt!1422813)))))))

(assert (=> b!4015142 (= lt!1422799 (list!15970 (charsOf!4654 (_1!24187 (v!39621 lt!1422813)))))))

(declare-fun lt!1422807 () Unit!62010)

(assert (=> b!4015142 (= lt!1422807 (lemmaInv!1053 (transformation!6838 (rule!9886 (_1!24187 (v!39621 lt!1422813))))))))

(assert (=> b!4015142 (ruleValid!2770 thiss!21717 (rule!9886 (_1!24187 (v!39621 lt!1422813))))))

(declare-fun lt!1422781 () Unit!62010)

(assert (=> b!4015142 (= lt!1422781 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1844 thiss!21717 (rule!9886 (_1!24187 (v!39621 lt!1422813))) rules!2999))))

(declare-fun lt!1422785 () Unit!62010)

(declare-fun lemmaCharactersSize!1397 (Token!12814) Unit!62010)

(assert (=> b!4015142 (= lt!1422785 (lemmaCharactersSize!1397 token!484))))

(declare-fun lt!1422800 () Unit!62010)

(assert (=> b!4015142 (= lt!1422800 (lemmaCharactersSize!1397 (_1!24187 (v!39621 lt!1422813))))))

(declare-fun b!4015143 () Bool)

(assert (=> b!4015143 (= e!2490185 e!2490175)))

(declare-fun res!1632606 () Bool)

(assert (=> b!4015143 (=> res!1632606 e!2490175)))

(declare-fun lt!1422786 () List!43084)

(assert (=> b!4015143 (= res!1632606 (or (not (= lt!1422796 lt!1422786)) (not (= lt!1422796 lt!1422794))))))

(assert (=> b!4015143 (= lt!1422786 lt!1422794)))

(assert (=> b!4015143 (= lt!1422794 (++!11240 lt!1422795 lt!1422776))))

(assert (=> b!4015143 (= lt!1422786 (++!11240 lt!1422790 suffix!1299))))

(assert (=> b!4015143 (= lt!1422776 (++!11240 lt!1422774 suffix!1299))))

(declare-fun lt!1422803 () Unit!62010)

(declare-fun lemmaConcatAssociativity!2550 (List!43084 List!43084 List!43084) Unit!62010)

(assert (=> b!4015143 (= lt!1422803 (lemmaConcatAssociativity!2550 lt!1422795 lt!1422774 suffix!1299))))

(declare-fun b!4015144 () Bool)

(declare-fun res!1632595 () Bool)

(declare-fun e!2490169 () Bool)

(assert (=> b!4015144 (=> res!1632595 e!2490169)))

(assert (=> b!4015144 (= res!1632595 (not (= lt!1422765 lt!1422782)))))

(declare-fun b!4015145 () Bool)

(declare-fun e!2490155 () Bool)

(declare-fun e!2490161 () Bool)

(assert (=> b!4015145 (= e!2490155 e!2490161)))

(declare-fun res!1632608 () Bool)

(assert (=> b!4015145 (=> res!1632608 e!2490161)))

(assert (=> b!4015145 (= res!1632608 (<= lt!1422770 lt!1422771))))

(declare-fun lt!1422801 () List!43084)

(assert (=> b!4015145 (= (_2!24187 (v!39621 lt!1422813)) lt!1422801)))

(declare-fun lt!1422797 () Unit!62010)

(assert (=> b!4015145 (= lt!1422797 (lemmaSamePrefixThenSameSuffix!2096 lt!1422799 (_2!24187 (v!39621 lt!1422813)) lt!1422799 lt!1422801 lt!1422782))))

(declare-fun lt!1422805 () List!43084)

(assert (=> b!4015145 (isPrefix!3925 lt!1422799 lt!1422805)))

(declare-fun lt!1422809 () Unit!62010)

(assert (=> b!4015145 (= lt!1422809 (lemmaConcatTwoListThenFirstIsPrefix!2766 lt!1422799 lt!1422801))))

(declare-fun b!4015146 () Bool)

(declare-fun tp!1220937 () Bool)

(declare-fun e!2490176 () Bool)

(declare-fun inv!21 (TokenValue!7068) Bool)

(assert (=> b!4015146 (= e!2490180 (and (inv!21 (value!215517 token!484)) e!2490176 tp!1220937))))

(declare-fun b!4015147 () Bool)

(declare-fun res!1632600 () Bool)

(assert (=> b!4015147 (=> (not res!1632600) (not e!2490159))))

(assert (=> b!4015147 (= res!1632600 (= (size!32123 token!484) (size!32124 (originalCharacters!7438 token!484))))))

(declare-fun b!4015148 () Bool)

(declare-fun tp!1220934 () Bool)

(assert (=> b!4015148 (= e!2490183 (and tp_is_empty!20457 tp!1220934))))

(declare-fun b!4015149 () Bool)

(assert (=> b!4015149 (= e!2490169 e!2490155)))

(declare-fun res!1632604 () Bool)

(assert (=> b!4015149 (=> res!1632604 e!2490155)))

(assert (=> b!4015149 (= res!1632604 (not (= lt!1422805 lt!1422782)))))

(assert (=> b!4015149 (= lt!1422805 (++!11240 lt!1422799 lt!1422801))))

(assert (=> b!4015149 (= lt!1422801 (getSuffix!2350 lt!1422782 lt!1422799))))

(declare-fun b!4015150 () Bool)

(declare-fun e!2490158 () Bool)

(assert (=> b!4015150 (= e!2490158 e!2490169)))

(declare-fun res!1632613 () Bool)

(assert (=> b!4015150 (=> res!1632613 e!2490169)))

(assert (=> b!4015150 (= res!1632613 (not (isPrefix!3925 lt!1422799 lt!1422796)))))

(declare-fun lt!1422798 () List!43084)

(assert (=> b!4015150 (isPrefix!3925 lt!1422799 lt!1422798)))

(declare-fun lt!1422789 () Unit!62010)

(declare-fun lt!1422806 () List!43084)

(assert (=> b!4015150 (= lt!1422789 (lemmaPrefixStaysPrefixWhenAddingToSuffix!738 lt!1422799 lt!1422782 lt!1422806))))

(declare-fun b!4015151 () Bool)

(declare-fun res!1632603 () Bool)

(assert (=> b!4015151 (=> (not res!1632603) (not e!2490157))))

(declare-fun isEmpty!25662 (List!43086) Bool)

(assert (=> b!4015151 (= res!1632603 (not (isEmpty!25662 rules!2999)))))

(declare-fun b!4015152 () Bool)

(assert (=> b!4015152 (= e!2490159 (and (= (size!32123 token!484) lt!1422771) (= (originalCharacters!7438 token!484) lt!1422795)))))

(declare-fun b!4015153 () Bool)

(assert (=> b!4015153 (= e!2490178 e!2490163)))

(declare-fun res!1632589 () Bool)

(assert (=> b!4015153 (=> (not res!1632589) (not e!2490163))))

(declare-fun lt!1422810 () List!43084)

(assert (=> b!4015153 (= res!1632589 (= lt!1422810 lt!1422782))))

(assert (=> b!4015153 (= lt!1422782 (++!11240 prefix!494 newSuffix!27))))

(assert (=> b!4015153 (= lt!1422810 (++!11240 lt!1422795 newSuffixResult!27))))

(declare-fun b!4015154 () Bool)

(assert (=> b!4015154 (= e!2490162 e!2490168)))

(declare-fun res!1632607 () Bool)

(assert (=> b!4015154 (=> res!1632607 e!2490168)))

(assert (=> b!4015154 (= res!1632607 (not (= lt!1422778 lt!1422796)))))

(assert (=> b!4015154 (= lt!1422778 (++!11240 lt!1422795 lt!1422766))))

(assert (=> b!4015154 (= lt!1422766 (getSuffix!2350 lt!1422796 lt!1422795))))

(assert (=> b!4015154 e!2490159))

(declare-fun res!1632592 () Bool)

(assert (=> b!4015154 (=> (not res!1632592) (not e!2490159))))

(assert (=> b!4015154 (= res!1632592 (isPrefix!3925 lt!1422796 lt!1422796))))

(declare-fun lt!1422764 () Unit!62010)

(declare-fun lemmaIsPrefixRefl!2501 (List!43084 List!43084) Unit!62010)

(assert (=> b!4015154 (= lt!1422764 (lemmaIsPrefixRefl!2501 lt!1422796 lt!1422796))))

(declare-fun e!2490181 () Bool)

(assert (=> b!4015155 (= e!2490181 (and tp!1220939 tp!1220940))))

(declare-fun b!4015156 () Bool)

(assert (=> b!4015156 (= e!2490161 (isPrefix!3925 lt!1422799 lt!1422782))))

(declare-fun b!4015157 () Bool)

(declare-fun e!2490174 () Bool)

(assert (=> b!4015157 (= e!2490174 e!2490158)))

(declare-fun res!1632605 () Bool)

(assert (=> b!4015157 (=> res!1632605 e!2490158)))

(assert (=> b!4015157 (= res!1632605 (not (= lt!1422798 lt!1422796)))))

(declare-fun lt!1422791 () List!43084)

(assert (=> b!4015157 (= lt!1422798 (++!11240 prefix!494 lt!1422791))))

(assert (=> b!4015157 (= lt!1422798 (++!11240 lt!1422782 lt!1422806))))

(declare-fun lt!1422812 () Unit!62010)

(assert (=> b!4015157 (= lt!1422812 (lemmaConcatAssociativity!2550 prefix!494 newSuffix!27 lt!1422806))))

(declare-fun b!4015158 () Bool)

(declare-fun tp!1220942 () Bool)

(assert (=> b!4015158 (= e!2490176 (and tp!1220942 (inv!57384 (tag!7698 (rule!9886 token!484))) (inv!57387 (transformation!6838 (rule!9886 token!484))) e!2490181))))

(declare-fun b!4015159 () Bool)

(declare-fun res!1632610 () Bool)

(assert (=> b!4015159 (=> (not res!1632610) (not e!2490157))))

(declare-fun rulesInvariant!5770 (LexerInterface!6427 List!43086) Bool)

(assert (=> b!4015159 (= res!1632610 (rulesInvariant!5770 thiss!21717 rules!2999))))

(declare-fun b!4015160 () Bool)

(assert (=> b!4015160 (= e!2490154 e!2490174)))

(declare-fun res!1632598 () Bool)

(assert (=> b!4015160 (=> res!1632598 e!2490174)))

(assert (=> b!4015160 (= res!1632598 (not (= lt!1422791 suffix!1299)))))

(assert (=> b!4015160 (= lt!1422791 (++!11240 newSuffix!27 lt!1422806))))

(assert (=> b!4015160 (= lt!1422806 (getSuffix!2350 suffix!1299 newSuffix!27))))

(assert (= (and start!378172 res!1632597) b!4015151))

(assert (= (and b!4015151 res!1632603) b!4015159))

(assert (= (and b!4015159 res!1632610) b!4015134))

(assert (= (and b!4015134 res!1632599) b!4015125))

(assert (= (and b!4015125 res!1632590) b!4015132))

(assert (= (and b!4015132 res!1632588) b!4015153))

(assert (= (and b!4015153 res!1632589) b!4015124))

(assert (= (and b!4015124 res!1632612) b!4015138))

(assert (= (and b!4015138 (not res!1632596)) b!4015137))

(assert (= (and b!4015137 (not res!1632601)) b!4015126))

(assert (= (and b!4015126 (not res!1632591)) b!4015143))

(assert (= (and b!4015143 (not res!1632606)) b!4015140))

(assert (= (and b!4015140 (not res!1632593)) b!4015141))

(assert (= (and b!4015141 (not res!1632609)) b!4015154))

(assert (= (and b!4015154 res!1632592) b!4015129))

(assert (= (and b!4015129 res!1632611) b!4015147))

(assert (= (and b!4015147 res!1632600) b!4015152))

(assert (= (and b!4015154 (not res!1632607)) b!4015133))

(assert (= (and b!4015133 (not res!1632602)) b!4015142))

(assert (= (and b!4015142 (not res!1632594)) b!4015160))

(assert (= (and b!4015160 (not res!1632598)) b!4015157))

(assert (= (and b!4015157 (not res!1632605)) b!4015150))

(assert (= (and b!4015150 (not res!1632613)) b!4015144))

(assert (= (and b!4015144 (not res!1632595)) b!4015149))

(assert (= (and b!4015149 (not res!1632604)) b!4015145))

(assert (= (and b!4015145 (not res!1632608)) b!4015156))

(assert (= (and start!378172 ((_ is Cons!42960) prefix!494)) b!4015136))

(assert (= b!4015158 b!4015155))

(assert (= b!4015146 b!4015158))

(assert (= start!378172 b!4015146))

(assert (= (and start!378172 ((_ is Cons!42960) suffixResult!105)) b!4015148))

(assert (= (and start!378172 ((_ is Cons!42960) suffix!1299)) b!4015131))

(assert (= (and start!378172 ((_ is Cons!42960) newSuffix!27)) b!4015128))

(assert (= b!4015127 b!4015135))

(assert (= b!4015130 b!4015127))

(assert (= (and start!378172 ((_ is Cons!42962) rules!2999)) b!4015130))

(assert (= (and start!378172 ((_ is Cons!42960) newSuffixResult!27)) b!4015139))

(declare-fun m!4602613 () Bool)

(assert (=> start!378172 m!4602613))

(declare-fun m!4602615 () Bool)

(assert (=> b!4015142 m!4602615))

(declare-fun m!4602617 () Bool)

(assert (=> b!4015142 m!4602617))

(declare-fun m!4602619 () Bool)

(assert (=> b!4015142 m!4602619))

(declare-fun m!4602621 () Bool)

(assert (=> b!4015142 m!4602621))

(declare-fun m!4602623 () Bool)

(assert (=> b!4015142 m!4602623))

(assert (=> b!4015142 m!4602617))

(declare-fun m!4602625 () Bool)

(assert (=> b!4015142 m!4602625))

(declare-fun m!4602627 () Bool)

(assert (=> b!4015142 m!4602627))

(assert (=> b!4015142 m!4602627))

(declare-fun m!4602629 () Bool)

(assert (=> b!4015142 m!4602629))

(declare-fun m!4602631 () Bool)

(assert (=> b!4015142 m!4602631))

(declare-fun m!4602633 () Bool)

(assert (=> b!4015142 m!4602633))

(declare-fun m!4602635 () Bool)

(assert (=> b!4015142 m!4602635))

(declare-fun m!4602637 () Bool)

(assert (=> b!4015142 m!4602637))

(declare-fun m!4602639 () Bool)

(assert (=> b!4015142 m!4602639))

(declare-fun m!4602641 () Bool)

(assert (=> b!4015142 m!4602641))

(declare-fun m!4602643 () Bool)

(assert (=> b!4015142 m!4602643))

(declare-fun m!4602645 () Bool)

(assert (=> b!4015142 m!4602645))

(declare-fun m!4602647 () Bool)

(assert (=> b!4015142 m!4602647))

(assert (=> b!4015142 m!4602635))

(declare-fun m!4602649 () Bool)

(assert (=> b!4015142 m!4602649))

(declare-fun m!4602651 () Bool)

(assert (=> b!4015137 m!4602651))

(declare-fun m!4602653 () Bool)

(assert (=> b!4015137 m!4602653))

(declare-fun m!4602655 () Bool)

(assert (=> b!4015137 m!4602655))

(declare-fun m!4602657 () Bool)

(assert (=> b!4015137 m!4602657))

(declare-fun m!4602659 () Bool)

(assert (=> b!4015137 m!4602659))

(declare-fun m!4602661 () Bool)

(assert (=> b!4015125 m!4602661))

(declare-fun m!4602663 () Bool)

(assert (=> b!4015132 m!4602663))

(declare-fun m!4602665 () Bool)

(assert (=> b!4015132 m!4602665))

(declare-fun m!4602667 () Bool)

(assert (=> b!4015132 m!4602667))

(assert (=> b!4015132 m!4602667))

(declare-fun m!4602669 () Bool)

(assert (=> b!4015132 m!4602669))

(declare-fun m!4602671 () Bool)

(assert (=> b!4015126 m!4602671))

(declare-fun m!4602673 () Bool)

(assert (=> b!4015126 m!4602673))

(declare-fun m!4602675 () Bool)

(assert (=> b!4015126 m!4602675))

(declare-fun m!4602677 () Bool)

(assert (=> b!4015126 m!4602677))

(declare-fun m!4602679 () Bool)

(assert (=> b!4015140 m!4602679))

(declare-fun m!4602681 () Bool)

(assert (=> b!4015140 m!4602681))

(declare-fun m!4602683 () Bool)

(assert (=> b!4015140 m!4602683))

(declare-fun m!4602685 () Bool)

(assert (=> b!4015140 m!4602685))

(assert (=> b!4015140 m!4602681))

(declare-fun m!4602687 () Bool)

(assert (=> b!4015140 m!4602687))

(declare-fun m!4602689 () Bool)

(assert (=> b!4015140 m!4602689))

(declare-fun m!4602691 () Bool)

(assert (=> b!4015140 m!4602691))

(declare-fun m!4602693 () Bool)

(assert (=> b!4015151 m!4602693))

(declare-fun m!4602695 () Bool)

(assert (=> b!4015133 m!4602695))

(declare-fun m!4602697 () Bool)

(assert (=> b!4015133 m!4602697))

(declare-fun m!4602699 () Bool)

(assert (=> b!4015133 m!4602699))

(declare-fun m!4602701 () Bool)

(assert (=> b!4015133 m!4602701))

(declare-fun m!4602703 () Bool)

(assert (=> b!4015156 m!4602703))

(declare-fun m!4602705 () Bool)

(assert (=> b!4015147 m!4602705))

(declare-fun m!4602707 () Bool)

(assert (=> b!4015138 m!4602707))

(declare-fun m!4602709 () Bool)

(assert (=> b!4015138 m!4602709))

(declare-fun m!4602711 () Bool)

(assert (=> b!4015138 m!4602711))

(declare-fun m!4602713 () Bool)

(assert (=> b!4015138 m!4602713))

(declare-fun m!4602715 () Bool)

(assert (=> b!4015149 m!4602715))

(declare-fun m!4602717 () Bool)

(assert (=> b!4015149 m!4602717))

(declare-fun m!4602719 () Bool)

(assert (=> b!4015157 m!4602719))

(declare-fun m!4602721 () Bool)

(assert (=> b!4015157 m!4602721))

(declare-fun m!4602723 () Bool)

(assert (=> b!4015157 m!4602723))

(declare-fun m!4602725 () Bool)

(assert (=> b!4015153 m!4602725))

(declare-fun m!4602727 () Bool)

(assert (=> b!4015153 m!4602727))

(declare-fun m!4602729 () Bool)

(assert (=> b!4015127 m!4602729))

(declare-fun m!4602731 () Bool)

(assert (=> b!4015127 m!4602731))

(declare-fun m!4602733 () Bool)

(assert (=> b!4015159 m!4602733))

(declare-fun m!4602735 () Bool)

(assert (=> b!4015141 m!4602735))

(declare-fun m!4602737 () Bool)

(assert (=> b!4015141 m!4602737))

(declare-fun m!4602739 () Bool)

(assert (=> b!4015141 m!4602739))

(declare-fun m!4602741 () Bool)

(assert (=> b!4015141 m!4602741))

(declare-fun m!4602743 () Bool)

(assert (=> b!4015160 m!4602743))

(declare-fun m!4602745 () Bool)

(assert (=> b!4015160 m!4602745))

(declare-fun m!4602747 () Bool)

(assert (=> b!4015124 m!4602747))

(declare-fun m!4602749 () Bool)

(assert (=> b!4015124 m!4602749))

(declare-fun m!4602751 () Bool)

(assert (=> b!4015134 m!4602751))

(declare-fun m!4602753 () Bool)

(assert (=> b!4015134 m!4602753))

(declare-fun m!4602755 () Bool)

(assert (=> b!4015145 m!4602755))

(declare-fun m!4602757 () Bool)

(assert (=> b!4015145 m!4602757))

(declare-fun m!4602759 () Bool)

(assert (=> b!4015145 m!4602759))

(declare-fun m!4602761 () Bool)

(assert (=> b!4015158 m!4602761))

(declare-fun m!4602763 () Bool)

(assert (=> b!4015158 m!4602763))

(declare-fun m!4602765 () Bool)

(assert (=> b!4015154 m!4602765))

(declare-fun m!4602767 () Bool)

(assert (=> b!4015154 m!4602767))

(declare-fun m!4602769 () Bool)

(assert (=> b!4015154 m!4602769))

(declare-fun m!4602771 () Bool)

(assert (=> b!4015154 m!4602771))

(declare-fun m!4602773 () Bool)

(assert (=> b!4015146 m!4602773))

(declare-fun m!4602775 () Bool)

(assert (=> b!4015143 m!4602775))

(declare-fun m!4602777 () Bool)

(assert (=> b!4015143 m!4602777))

(declare-fun m!4602779 () Bool)

(assert (=> b!4015143 m!4602779))

(declare-fun m!4602781 () Bool)

(assert (=> b!4015143 m!4602781))

(declare-fun m!4602783 () Bool)

(assert (=> b!4015150 m!4602783))

(declare-fun m!4602785 () Bool)

(assert (=> b!4015150 m!4602785))

(declare-fun m!4602787 () Bool)

(assert (=> b!4015150 m!4602787))

(check-sat (not b!4015130) b_and!308493 (not b!4015149) (not b!4015136) (not b_next!112375) (not b!4015145) tp_is_empty!20457 (not b!4015128) (not b!4015132) (not b!4015131) b_and!308487 (not b!4015158) (not b_next!112371) (not b!4015140) b_and!308491 (not b!4015157) (not b!4015127) (not b!4015153) (not b!4015126) (not b!4015125) (not b!4015146) (not b!4015150) (not b!4015142) (not b!4015147) (not b!4015160) (not b!4015143) (not b!4015148) (not b!4015159) (not b!4015124) b_and!308489 (not b_next!112373) (not b!4015154) (not b!4015138) (not start!378172) (not b!4015134) (not b!4015137) (not b!4015133) (not b!4015141) (not b!4015139) (not b!4015156) (not b_next!112369) (not b!4015151))
(check-sat b_and!308491 b_and!308493 (not b_next!112375) b_and!308489 (not b_next!112373) b_and!308487 (not b_next!112371) (not b_next!112369))
