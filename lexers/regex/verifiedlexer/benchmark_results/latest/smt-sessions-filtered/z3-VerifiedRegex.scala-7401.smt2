; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393570 () Bool)

(assert start!393570)

(declare-fun b!4140608 () Bool)

(declare-fun b_free!117899 () Bool)

(declare-fun b_next!118603 () Bool)

(assert (=> b!4140608 (= b_free!117899 (not b_next!118603))))

(declare-fun tp!1262166 () Bool)

(declare-fun b_and!321529 () Bool)

(assert (=> b!4140608 (= tp!1262166 b_and!321529)))

(declare-fun b_free!117901 () Bool)

(declare-fun b_next!118605 () Bool)

(assert (=> b!4140608 (= b_free!117901 (not b_next!118605))))

(declare-fun tp!1262173 () Bool)

(declare-fun b_and!321531 () Bool)

(assert (=> b!4140608 (= tp!1262173 b_and!321531)))

(declare-fun b!4140627 () Bool)

(declare-fun b_free!117903 () Bool)

(declare-fun b_next!118607 () Bool)

(assert (=> b!4140627 (= b_free!117903 (not b_next!118607))))

(declare-fun tp!1262165 () Bool)

(declare-fun b_and!321533 () Bool)

(assert (=> b!4140627 (= tp!1262165 b_and!321533)))

(declare-fun b_free!117905 () Bool)

(declare-fun b_next!118609 () Bool)

(assert (=> b!4140627 (= b_free!117905 (not b_next!118609))))

(declare-fun tp!1262169 () Bool)

(declare-fun b_and!321535 () Bool)

(assert (=> b!4140627 (= tp!1262169 b_and!321535)))

(declare-fun b!4140618 () Bool)

(declare-fun b_free!117907 () Bool)

(declare-fun b_next!118611 () Bool)

(assert (=> b!4140618 (= b_free!117907 (not b_next!118611))))

(declare-fun tp!1262167 () Bool)

(declare-fun b_and!321537 () Bool)

(assert (=> b!4140618 (= tp!1262167 b_and!321537)))

(declare-fun b_free!117909 () Bool)

(declare-fun b_next!118613 () Bool)

(assert (=> b!4140618 (= b_free!117909 (not b_next!118613))))

(declare-fun tp!1262172 () Bool)

(declare-fun b_and!321539 () Bool)

(assert (=> b!4140618 (= tp!1262172 b_and!321539)))

(declare-fun b!4140605 () Bool)

(declare-fun res!1693917 () Bool)

(declare-fun e!2569136 () Bool)

(assert (=> b!4140605 (=> (not res!1693917) (not e!2569136))))

(declare-datatypes ((List!45028 0))(
  ( (Nil!44904) (Cons!44904 (h!50324 (_ BitVec 16)) (t!342355 List!45028)) )
))
(declare-datatypes ((TokenValue!7604 0))(
  ( (FloatLiteralValue!15208 (text!53673 List!45028)) (TokenValueExt!7603 (__x!27425 Int)) (Broken!38020 (value!230687 List!45028)) (Object!7727) (End!7604) (Def!7604) (Underscore!7604) (Match!7604) (Else!7604) (Error!7604) (Case!7604) (If!7604) (Extends!7604) (Abstract!7604) (Class!7604) (Val!7604) (DelimiterValue!15208 (del!7664 List!45028)) (KeywordValue!7610 (value!230688 List!45028)) (CommentValue!15208 (value!230689 List!45028)) (WhitespaceValue!15208 (value!230690 List!45028)) (IndentationValue!7604 (value!230691 List!45028)) (String!51769) (Int32!7604) (Broken!38021 (value!230692 List!45028)) (Boolean!7605) (Unit!64204) (OperatorValue!7607 (op!7664 List!45028)) (IdentifierValue!15208 (value!230693 List!45028)) (IdentifierValue!15209 (value!230694 List!45028)) (WhitespaceValue!15209 (value!230695 List!45028)) (True!15208) (False!15208) (Broken!38022 (value!230696 List!45028)) (Broken!38023 (value!230697 List!45028)) (True!15209) (RightBrace!7604) (RightBracket!7604) (Colon!7604) (Null!7604) (Comma!7604) (LeftBracket!7604) (False!15209) (LeftBrace!7604) (ImaginaryLiteralValue!7604 (text!53674 List!45028)) (StringLiteralValue!22812 (value!230698 List!45028)) (EOFValue!7604 (value!230699 List!45028)) (IdentValue!7604 (value!230700 List!45028)) (DelimiterValue!15209 (value!230701 List!45028)) (DedentValue!7604 (value!230702 List!45028)) (NewLineValue!7604 (value!230703 List!45028)) (IntegerValue!22812 (value!230704 (_ BitVec 32)) (text!53675 List!45028)) (IntegerValue!22813 (value!230705 Int) (text!53676 List!45028)) (Times!7604) (Or!7604) (Equal!7604) (Minus!7604) (Broken!38024 (value!230706 List!45028)) (And!7604) (Div!7604) (LessEqual!7604) (Mod!7604) (Concat!19883) (Not!7604) (Plus!7604) (SpaceValue!7604 (value!230707 List!45028)) (IntegerValue!22814 (value!230708 Int) (text!53677 List!45028)) (StringLiteralValue!22813 (text!53678 List!45028)) (FloatLiteralValue!15209 (text!53679 List!45028)) (BytesLiteralValue!7604 (value!230709 List!45028)) (CommentValue!15209 (value!230710 List!45028)) (StringLiteralValue!22814 (value!230711 List!45028)) (ErrorTokenValue!7604 (msg!7665 List!45028)) )
))
(declare-datatypes ((C!24744 0))(
  ( (C!24745 (val!14482 Int)) )
))
(declare-datatypes ((List!45029 0))(
  ( (Nil!44905) (Cons!44905 (h!50325 C!24744) (t!342356 List!45029)) )
))
(declare-datatypes ((IArray!27175 0))(
  ( (IArray!27176 (innerList!13645 List!45029)) )
))
(declare-datatypes ((Conc!13585 0))(
  ( (Node!13585 (left!33626 Conc!13585) (right!33956 Conc!13585) (csize!27400 Int) (cheight!13796 Int)) (Leaf!20987 (xs!16891 IArray!27175) (csize!27401 Int)) (Empty!13585) )
))
(declare-datatypes ((BalanceConc!26764 0))(
  ( (BalanceConc!26765 (c!709826 Conc!13585)) )
))
(declare-datatypes ((Regex!12279 0))(
  ( (ElementMatch!12279 (c!709827 C!24744)) (Concat!19884 (regOne!25070 Regex!12279) (regTwo!25070 Regex!12279)) (EmptyExpr!12279) (Star!12279 (reg!12608 Regex!12279)) (EmptyLang!12279) (Union!12279 (regOne!25071 Regex!12279) (regTwo!25071 Regex!12279)) )
))
(declare-datatypes ((String!51770 0))(
  ( (String!51771 (value!230712 String)) )
))
(declare-datatypes ((TokenValueInjection!14636 0))(
  ( (TokenValueInjection!14637 (toValue!10038 Int) (toChars!9897 Int)) )
))
(declare-datatypes ((Rule!14548 0))(
  ( (Rule!14549 (regex!7374 Regex!12279) (tag!8234 String!51770) (isSeparator!7374 Bool) (transformation!7374 TokenValueInjection!14636)) )
))
(declare-fun r!4008 () Rule!14548)

(declare-fun p!2912 () List!45029)

(declare-fun matchR!6108 (Regex!12279 List!45029) Bool)

(assert (=> b!4140605 (= res!1693917 (matchR!6108 (regex!7374 r!4008) p!2912))))

(declare-fun b!4140606 () Bool)

(declare-fun e!2569130 () Bool)

(declare-fun e!2569128 () Bool)

(declare-fun tp!1262174 () Bool)

(declare-fun inv!59510 (String!51770) Bool)

(declare-fun inv!59512 (TokenValueInjection!14636) Bool)

(assert (=> b!4140606 (= e!2569130 (and tp!1262174 (inv!59510 (tag!8234 r!4008)) (inv!59512 (transformation!7374 r!4008)) e!2569128))))

(declare-fun b!4140607 () Bool)

(declare-fun res!1693914 () Bool)

(declare-fun e!2569134 () Bool)

(assert (=> b!4140607 (=> (not res!1693914) (not e!2569134))))

(declare-datatypes ((List!45030 0))(
  ( (Nil!44906) (Cons!44906 (h!50326 Rule!14548) (t!342357 List!45030)) )
))
(declare-fun rules!3756 () List!45030)

(declare-fun isEmpty!26775 (List!45030) Bool)

(assert (=> b!4140607 (= res!1693914 (not (isEmpty!26775 rules!3756)))))

(declare-fun e!2569139 () Bool)

(assert (=> b!4140608 (= e!2569139 (and tp!1262166 tp!1262173))))

(declare-fun b!4140609 () Bool)

(declare-fun e!2569127 () Bool)

(declare-fun e!2569143 () Bool)

(assert (=> b!4140609 (= e!2569127 e!2569143)))

(declare-fun res!1693909 () Bool)

(assert (=> b!4140609 (=> res!1693909 e!2569143)))

(declare-datatypes ((Token!13678 0))(
  ( (Token!13679 (value!230713 TokenValue!7604) (rule!10484 Rule!14548) (size!33262 Int) (originalCharacters!7870 List!45029)) )
))
(declare-datatypes ((tuple2!43290 0))(
  ( (tuple2!43291 (_1!24779 Token!13678) (_2!24779 List!45029)) )
))
(declare-datatypes ((Option!9680 0))(
  ( (None!9679) (Some!9679 (v!40317 tuple2!43290)) )
))
(declare-fun lt!1476638 () Option!9680)

(declare-fun isEmpty!26776 (Option!9680) Bool)

(assert (=> b!4140609 (= res!1693909 (isEmpty!26776 lt!1476638))))

(declare-datatypes ((LexerInterface!6963 0))(
  ( (LexerInterfaceExt!6960 (__x!27426 Int)) (Lexer!6961) )
))
(declare-fun thiss!25645 () LexerInterface!6963)

(declare-fun input!3238 () List!45029)

(declare-fun rBis!149 () Rule!14548)

(declare-fun maxPrefixOneRule!3092 (LexerInterface!6963 Rule!14548 List!45029) Option!9680)

(assert (=> b!4140609 (= lt!1476638 (maxPrefixOneRule!3092 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4140609 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64205 0))(
  ( (Unit!64206) )
))
(declare-fun lt!1476631 () Unit!64205)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!72 (LexerInterface!6963 List!45030 Rule!14548 Rule!14548) Unit!64205)

(assert (=> b!4140609 (= lt!1476631 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!72 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9054 (List!45030 Rule!14548) Bool)

(declare-fun tail!6545 (List!45030) List!45030)

(assert (=> b!4140609 (contains!9054 (tail!6545 rules!3756) r!4008)))

(declare-fun lt!1476642 () Unit!64205)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!78 (List!45030 Rule!14548 Rule!14548) Unit!64205)

(assert (=> b!4140609 (= lt!1476642 (lemmaGetIndexBiggerAndHeadEqThenTailContains!78 rules!3756 rBis!149 r!4008))))

(declare-fun b!4140610 () Bool)

(declare-fun e!2569144 () Bool)

(assert (=> b!4140610 (= e!2569143 e!2569144)))

(declare-fun res!1693912 () Bool)

(assert (=> b!4140610 (=> res!1693912 e!2569144)))

(declare-fun lt!1476630 () Int)

(declare-fun lt!1476641 () Int)

(assert (=> b!4140610 (= res!1693912 (or (> lt!1476630 lt!1476641) (>= lt!1476630 lt!1476641)))))

(declare-fun lt!1476637 () BalanceConc!26764)

(declare-fun size!33263 (BalanceConc!26764) Int)

(assert (=> b!4140610 (= lt!1476630 (size!33263 lt!1476637))))

(declare-fun lt!1476633 () tuple2!43290)

(declare-fun charsOf!4973 (Token!13678) BalanceConc!26764)

(assert (=> b!4140610 (= lt!1476637 (charsOf!4973 (_1!24779 lt!1476633)))))

(declare-fun get!14656 (Option!9680) tuple2!43290)

(assert (=> b!4140610 (= lt!1476633 (get!14656 lt!1476638))))

(declare-fun b!4140611 () Bool)

(declare-fun res!1693910 () Bool)

(assert (=> b!4140611 (=> (not res!1693910) (not e!2569134))))

(declare-fun rulesInvariant!6260 (LexerInterface!6963 List!45030) Bool)

(assert (=> b!4140611 (= res!1693910 (rulesInvariant!6260 thiss!25645 rules!3756))))

(declare-fun b!4140612 () Bool)

(declare-fun e!2569129 () Bool)

(declare-fun lt!1476628 () List!45029)

(declare-fun isPrefix!4309 (List!45029 List!45029) Bool)

(assert (=> b!4140612 (= e!2569129 (isPrefix!4309 lt!1476628 input!3238))))

(declare-fun b!4140613 () Bool)

(declare-fun e!2569141 () Bool)

(declare-fun tp_is_empty!21481 () Bool)

(declare-fun tp!1262163 () Bool)

(assert (=> b!4140613 (= e!2569141 (and tp_is_empty!21481 tp!1262163))))

(declare-fun res!1693918 () Bool)

(assert (=> start!393570 (=> (not res!1693918) (not e!2569134))))

(get-info :version)

(assert (=> start!393570 (= res!1693918 ((_ is Lexer!6961) thiss!25645))))

(assert (=> start!393570 e!2569134))

(declare-fun e!2569131 () Bool)

(assert (=> start!393570 e!2569131))

(declare-fun e!2569135 () Bool)

(assert (=> start!393570 e!2569135))

(assert (=> start!393570 true))

(assert (=> start!393570 e!2569130))

(assert (=> start!393570 e!2569141))

(declare-fun e!2569140 () Bool)

(assert (=> start!393570 e!2569140))

(declare-fun b!4140614 () Bool)

(assert (=> b!4140614 (= e!2569144 e!2569129)))

(declare-fun res!1693913 () Bool)

(assert (=> b!4140614 (=> res!1693913 e!2569129)))

(declare-fun lt!1476640 () List!45029)

(assert (=> b!4140614 (= res!1693913 (not (= lt!1476640 input!3238)))))

(assert (=> b!4140614 (isPrefix!4309 lt!1476628 lt!1476640)))

(declare-fun ++!11614 (List!45029 List!45029) List!45029)

(assert (=> b!4140614 (= lt!1476640 (++!11614 lt!1476628 (_2!24779 lt!1476633)))))

(declare-fun lt!1476629 () Unit!64205)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2938 (List!45029 List!45029) Unit!64205)

(assert (=> b!4140614 (= lt!1476629 (lemmaConcatTwoListThenFirstIsPrefix!2938 lt!1476628 (_2!24779 lt!1476633)))))

(declare-fun list!16447 (BalanceConc!26764) List!45029)

(assert (=> b!4140614 (= lt!1476628 (list!16447 lt!1476637))))

(declare-fun b!4140615 () Bool)

(declare-fun tp!1262171 () Bool)

(assert (=> b!4140615 (= e!2569135 (and tp_is_empty!21481 tp!1262171))))

(declare-fun b!4140616 () Bool)

(declare-fun res!1693915 () Bool)

(assert (=> b!4140616 (=> (not res!1693915) (not e!2569134))))

(assert (=> b!4140616 (= res!1693915 (contains!9054 rules!3756 r!4008))))

(declare-fun b!4140617 () Bool)

(declare-fun e!2569133 () Bool)

(declare-fun tp!1262164 () Bool)

(assert (=> b!4140617 (= e!2569131 (and e!2569133 tp!1262164))))

(assert (=> b!4140618 (= e!2569128 (and tp!1262167 tp!1262172))))

(declare-fun b!4140619 () Bool)

(declare-fun tp!1262170 () Bool)

(assert (=> b!4140619 (= e!2569133 (and tp!1262170 (inv!59510 (tag!8234 (h!50326 rules!3756))) (inv!59512 (transformation!7374 (h!50326 rules!3756))) e!2569139))))

(declare-fun b!4140620 () Bool)

(assert (=> b!4140620 (= e!2569136 (not e!2569127))))

(declare-fun res!1693906 () Bool)

(assert (=> b!4140620 (=> res!1693906 e!2569127)))

(assert (=> b!4140620 (= res!1693906 (or (not ((_ is Cons!44906) rules!3756)) (not (= (h!50326 rules!3756) rBis!149))))))

(declare-fun lt!1476639 () Unit!64205)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2220 (LexerInterface!6963 Rule!14548 List!45030) Unit!64205)

(assert (=> b!4140620 (= lt!1476639 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2220 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3180 (LexerInterface!6963 Rule!14548) Bool)

(assert (=> b!4140620 (ruleValid!3180 thiss!25645 rBis!149)))

(declare-fun lt!1476635 () Unit!64205)

(assert (=> b!4140620 (= lt!1476635 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2220 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2569138 () Bool)

(declare-fun tp!1262168 () Bool)

(declare-fun b!4140621 () Bool)

(assert (=> b!4140621 (= e!2569140 (and tp!1262168 (inv!59510 (tag!8234 rBis!149)) (inv!59512 (transformation!7374 rBis!149)) e!2569138))))

(declare-fun b!4140622 () Bool)

(declare-fun res!1693919 () Bool)

(assert (=> b!4140622 (=> (not res!1693919) (not e!2569134))))

(assert (=> b!4140622 (= res!1693919 (isPrefix!4309 p!2912 input!3238))))

(declare-fun b!4140623 () Bool)

(declare-fun res!1693911 () Bool)

(assert (=> b!4140623 (=> (not res!1693911) (not e!2569136))))

(declare-fun getIndex!720 (List!45030 Rule!14548) Int)

(assert (=> b!4140623 (= res!1693911 (< (getIndex!720 rules!3756 rBis!149) (getIndex!720 rules!3756 r!4008)))))

(declare-fun b!4140624 () Bool)

(assert (=> b!4140624 (= e!2569134 e!2569136)))

(declare-fun res!1693908 () Bool)

(assert (=> b!4140624 (=> (not res!1693908) (not e!2569136))))

(declare-fun lt!1476636 () TokenValue!7604)

(declare-fun maxPrefix!4153 (LexerInterface!6963 List!45030 List!45029) Option!9680)

(declare-fun getSuffix!2636 (List!45029 List!45029) List!45029)

(assert (=> b!4140624 (= res!1693908 (= (maxPrefix!4153 thiss!25645 rules!3756 input!3238) (Some!9679 (tuple2!43291 (Token!13679 lt!1476636 r!4008 lt!1476641 p!2912) (getSuffix!2636 input!3238 p!2912)))))))

(declare-fun size!33264 (List!45029) Int)

(assert (=> b!4140624 (= lt!1476641 (size!33264 p!2912))))

(declare-fun lt!1476634 () BalanceConc!26764)

(declare-fun apply!10447 (TokenValueInjection!14636 BalanceConc!26764) TokenValue!7604)

(assert (=> b!4140624 (= lt!1476636 (apply!10447 (transformation!7374 r!4008) lt!1476634))))

(declare-fun lt!1476632 () Unit!64205)

(declare-fun lemmaSemiInverse!2232 (TokenValueInjection!14636 BalanceConc!26764) Unit!64205)

(assert (=> b!4140624 (= lt!1476632 (lemmaSemiInverse!2232 (transformation!7374 r!4008) lt!1476634))))

(declare-fun seqFromList!5491 (List!45029) BalanceConc!26764)

(assert (=> b!4140624 (= lt!1476634 (seqFromList!5491 p!2912))))

(declare-fun b!4140625 () Bool)

(declare-fun res!1693916 () Bool)

(assert (=> b!4140625 (=> (not res!1693916) (not e!2569136))))

(assert (=> b!4140625 (= res!1693916 (ruleValid!3180 thiss!25645 r!4008))))

(declare-fun b!4140626 () Bool)

(declare-fun res!1693905 () Bool)

(assert (=> b!4140626 (=> (not res!1693905) (not e!2569134))))

(assert (=> b!4140626 (= res!1693905 (contains!9054 rules!3756 rBis!149))))

(assert (=> b!4140627 (= e!2569138 (and tp!1262165 tp!1262169))))

(declare-fun b!4140628 () Bool)

(declare-fun res!1693907 () Bool)

(assert (=> b!4140628 (=> (not res!1693907) (not e!2569134))))

(declare-fun isEmpty!26777 (List!45029) Bool)

(assert (=> b!4140628 (= res!1693907 (not (isEmpty!26777 p!2912)))))

(assert (= (and start!393570 res!1693918) b!4140622))

(assert (= (and b!4140622 res!1693919) b!4140607))

(assert (= (and b!4140607 res!1693914) b!4140611))

(assert (= (and b!4140611 res!1693910) b!4140616))

(assert (= (and b!4140616 res!1693915) b!4140626))

(assert (= (and b!4140626 res!1693905) b!4140628))

(assert (= (and b!4140628 res!1693907) b!4140624))

(assert (= (and b!4140624 res!1693908) b!4140605))

(assert (= (and b!4140605 res!1693917) b!4140623))

(assert (= (and b!4140623 res!1693911) b!4140625))

(assert (= (and b!4140625 res!1693916) b!4140620))

(assert (= (and b!4140620 (not res!1693906)) b!4140609))

(assert (= (and b!4140609 (not res!1693909)) b!4140610))

(assert (= (and b!4140610 (not res!1693912)) b!4140614))

(assert (= (and b!4140614 (not res!1693913)) b!4140612))

(assert (= b!4140619 b!4140608))

(assert (= b!4140617 b!4140619))

(assert (= (and start!393570 ((_ is Cons!44906) rules!3756)) b!4140617))

(assert (= (and start!393570 ((_ is Cons!44905) p!2912)) b!4140615))

(assert (= b!4140606 b!4140618))

(assert (= start!393570 b!4140606))

(assert (= (and start!393570 ((_ is Cons!44905) input!3238)) b!4140613))

(assert (= b!4140621 b!4140627))

(assert (= start!393570 b!4140621))

(declare-fun m!4737039 () Bool)

(assert (=> b!4140624 m!4737039))

(declare-fun m!4737041 () Bool)

(assert (=> b!4140624 m!4737041))

(declare-fun m!4737043 () Bool)

(assert (=> b!4140624 m!4737043))

(declare-fun m!4737045 () Bool)

(assert (=> b!4140624 m!4737045))

(declare-fun m!4737047 () Bool)

(assert (=> b!4140624 m!4737047))

(declare-fun m!4737049 () Bool)

(assert (=> b!4140624 m!4737049))

(declare-fun m!4737051 () Bool)

(assert (=> b!4140625 m!4737051))

(declare-fun m!4737053 () Bool)

(assert (=> b!4140619 m!4737053))

(declare-fun m!4737055 () Bool)

(assert (=> b!4140619 m!4737055))

(declare-fun m!4737057 () Bool)

(assert (=> b!4140628 m!4737057))

(declare-fun m!4737059 () Bool)

(assert (=> b!4140614 m!4737059))

(declare-fun m!4737061 () Bool)

(assert (=> b!4140614 m!4737061))

(declare-fun m!4737063 () Bool)

(assert (=> b!4140614 m!4737063))

(declare-fun m!4737065 () Bool)

(assert (=> b!4140614 m!4737065))

(declare-fun m!4737067 () Bool)

(assert (=> b!4140605 m!4737067))

(declare-fun m!4737069 () Bool)

(assert (=> b!4140622 m!4737069))

(declare-fun m!4737071 () Bool)

(assert (=> b!4140612 m!4737071))

(declare-fun m!4737073 () Bool)

(assert (=> b!4140616 m!4737073))

(declare-fun m!4737075 () Bool)

(assert (=> b!4140623 m!4737075))

(declare-fun m!4737077 () Bool)

(assert (=> b!4140623 m!4737077))

(declare-fun m!4737079 () Bool)

(assert (=> b!4140609 m!4737079))

(declare-fun m!4737081 () Bool)

(assert (=> b!4140609 m!4737081))

(declare-fun m!4737083 () Bool)

(assert (=> b!4140609 m!4737083))

(assert (=> b!4140609 m!4737079))

(declare-fun m!4737085 () Bool)

(assert (=> b!4140609 m!4737085))

(declare-fun m!4737087 () Bool)

(assert (=> b!4140609 m!4737087))

(declare-fun m!4737089 () Bool)

(assert (=> b!4140609 m!4737089))

(declare-fun m!4737091 () Bool)

(assert (=> b!4140611 m!4737091))

(declare-fun m!4737093 () Bool)

(assert (=> b!4140621 m!4737093))

(declare-fun m!4737095 () Bool)

(assert (=> b!4140621 m!4737095))

(declare-fun m!4737097 () Bool)

(assert (=> b!4140606 m!4737097))

(declare-fun m!4737099 () Bool)

(assert (=> b!4140606 m!4737099))

(declare-fun m!4737101 () Bool)

(assert (=> b!4140607 m!4737101))

(declare-fun m!4737103 () Bool)

(assert (=> b!4140626 m!4737103))

(declare-fun m!4737105 () Bool)

(assert (=> b!4140620 m!4737105))

(declare-fun m!4737107 () Bool)

(assert (=> b!4140620 m!4737107))

(declare-fun m!4737109 () Bool)

(assert (=> b!4140620 m!4737109))

(declare-fun m!4737111 () Bool)

(assert (=> b!4140610 m!4737111))

(declare-fun m!4737113 () Bool)

(assert (=> b!4140610 m!4737113))

(declare-fun m!4737115 () Bool)

(assert (=> b!4140610 m!4737115))

(check-sat (not b!4140615) (not b!4140625) (not b!4140609) (not b!4140606) b_and!321535 b_and!321531 tp_is_empty!21481 b_and!321537 (not b!4140607) b_and!321529 (not b_next!118609) (not b_next!118613) (not b_next!118607) (not b!4140619) (not b!4140616) (not b!4140623) (not b!4140622) b_and!321539 b_and!321533 (not b!4140614) (not b!4140628) (not b!4140620) (not b!4140617) (not b!4140611) (not b!4140605) (not b!4140626) (not b_next!118605) (not b!4140610) (not b_next!118603) (not b!4140624) (not b!4140612) (not b!4140613) (not b_next!118611) (not b!4140621))
(check-sat (not b_next!118607) (not b_next!118605) b_and!321535 b_and!321531 b_and!321537 b_and!321529 (not b_next!118609) (not b_next!118603) (not b_next!118613) (not b_next!118611) b_and!321539 b_and!321533)
