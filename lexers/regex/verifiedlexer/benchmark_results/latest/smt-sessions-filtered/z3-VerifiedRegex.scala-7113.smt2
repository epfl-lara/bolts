; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377032 () Bool)

(assert start!377032)

(declare-fun b!4005109 () Bool)

(declare-fun b_free!111401 () Bool)

(declare-fun b_next!112105 () Bool)

(assert (=> b!4005109 (= b_free!111401 (not b_next!112105))))

(declare-fun tp!1218993 () Bool)

(declare-fun b_and!307595 () Bool)

(assert (=> b!4005109 (= tp!1218993 b_and!307595)))

(declare-fun b_free!111403 () Bool)

(declare-fun b_next!112107 () Bool)

(assert (=> b!4005109 (= b_free!111403 (not b_next!112107))))

(declare-fun tp!1218986 () Bool)

(declare-fun b_and!307597 () Bool)

(assert (=> b!4005109 (= tp!1218986 b_and!307597)))

(declare-fun b!4005118 () Bool)

(declare-fun b_free!111405 () Bool)

(declare-fun b_next!112109 () Bool)

(assert (=> b!4005118 (= b_free!111405 (not b_next!112109))))

(declare-fun tp!1218989 () Bool)

(declare-fun b_and!307599 () Bool)

(assert (=> b!4005118 (= tp!1218989 b_and!307599)))

(declare-fun b_free!111407 () Bool)

(declare-fun b_next!112111 () Bool)

(assert (=> b!4005118 (= b_free!111407 (not b_next!112111))))

(declare-fun tp!1218991 () Bool)

(declare-fun b_and!307601 () Bool)

(assert (=> b!4005118 (= tp!1218991 b_and!307601)))

(declare-fun b!4005095 () Bool)

(declare-fun res!1627489 () Bool)

(declare-fun e!2483720 () Bool)

(assert (=> b!4005095 (=> (not res!1627489) (not e!2483720))))

(declare-datatypes ((C!23624 0))(
  ( (C!23625 (val!13906 Int)) )
))
(declare-datatypes ((List!43000 0))(
  ( (Nil!42876) (Cons!42876 (h!48296 C!23624) (t!332471 List!43000)) )
))
(declare-fun suffix!1299 () List!43000)

(declare-fun newSuffix!27 () List!43000)

(declare-fun size!32057 (List!43000) Int)

(assert (=> b!4005095 (= res!1627489 (>= (size!32057 suffix!1299) (size!32057 newSuffix!27)))))

(declare-fun b!4005096 () Bool)

(declare-fun e!2483717 () Bool)

(declare-fun tp_is_empty!20409 () Bool)

(declare-fun tp!1218994 () Bool)

(assert (=> b!4005096 (= e!2483717 (and tp_is_empty!20409 tp!1218994))))

(declare-fun b!4005097 () Bool)

(declare-fun e!2483736 () Bool)

(declare-fun tp!1218990 () Bool)

(assert (=> b!4005097 (= e!2483736 (and tp_is_empty!20409 tp!1218990))))

(declare-fun b!4005098 () Bool)

(declare-fun e!2483729 () Bool)

(declare-fun e!2483723 () Bool)

(assert (=> b!4005098 (= e!2483729 e!2483723)))

(declare-fun res!1627487 () Bool)

(assert (=> b!4005098 (=> res!1627487 e!2483723)))

(declare-fun lt!1416736 () List!43000)

(declare-fun lt!1416741 () List!43000)

(declare-fun isPrefix!3901 (List!43000 List!43000) Bool)

(assert (=> b!4005098 (= res!1627487 (not (isPrefix!3901 lt!1416736 lt!1416741)))))

(declare-fun prefix!494 () List!43000)

(assert (=> b!4005098 (isPrefix!3901 prefix!494 lt!1416741)))

(declare-datatypes ((Unit!61871 0))(
  ( (Unit!61872) )
))
(declare-fun lt!1416749 () Unit!61871)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2742 (List!43000 List!43000) Unit!61871)

(assert (=> b!4005098 (= lt!1416749 (lemmaConcatTwoListThenFirstIsPrefix!2742 prefix!494 suffix!1299))))

(declare-fun lt!1416742 () List!43000)

(assert (=> b!4005098 (isPrefix!3901 lt!1416736 lt!1416742)))

(declare-fun lt!1416757 () Unit!61871)

(declare-fun suffixResult!105 () List!43000)

(assert (=> b!4005098 (= lt!1416757 (lemmaConcatTwoListThenFirstIsPrefix!2742 lt!1416736 suffixResult!105))))

(declare-fun b!4005099 () Bool)

(declare-fun res!1627483 () Bool)

(assert (=> b!4005099 (=> (not res!1627483) (not e!2483720))))

(declare-datatypes ((LexerInterface!6403 0))(
  ( (LexerInterfaceExt!6400 (__x!26305 Int)) (Lexer!6401) )
))
(declare-fun thiss!21717 () LexerInterface!6403)

(declare-datatypes ((IArray!26055 0))(
  ( (IArray!26056 (innerList!13085 List!43000)) )
))
(declare-datatypes ((Conc!13025 0))(
  ( (Node!13025 (left!32354 Conc!13025) (right!32684 Conc!13025) (csize!26280 Int) (cheight!13236 Int)) (Leaf!20139 (xs!16331 IArray!26055) (csize!26281 Int)) (Empty!13025) )
))
(declare-datatypes ((BalanceConc!25644 0))(
  ( (BalanceConc!25645 (c!692540 Conc!13025)) )
))
(declare-datatypes ((List!43001 0))(
  ( (Nil!42877) (Cons!42877 (h!48297 (_ BitVec 16)) (t!332472 List!43001)) )
))
(declare-datatypes ((TokenValue!7044 0))(
  ( (FloatLiteralValue!14088 (text!49753 List!43001)) (TokenValueExt!7043 (__x!26306 Int)) (Broken!35220 (value!214807 List!43001)) (Object!7167) (End!7044) (Def!7044) (Underscore!7044) (Match!7044) (Else!7044) (Error!7044) (Case!7044) (If!7044) (Extends!7044) (Abstract!7044) (Class!7044) (Val!7044) (DelimiterValue!14088 (del!7104 List!43001)) (KeywordValue!7050 (value!214808 List!43001)) (CommentValue!14088 (value!214809 List!43001)) (WhitespaceValue!14088 (value!214810 List!43001)) (IndentationValue!7044 (value!214811 List!43001)) (String!48937) (Int32!7044) (Broken!35221 (value!214812 List!43001)) (Boolean!7045) (Unit!61873) (OperatorValue!7047 (op!7104 List!43001)) (IdentifierValue!14088 (value!214813 List!43001)) (IdentifierValue!14089 (value!214814 List!43001)) (WhitespaceValue!14089 (value!214815 List!43001)) (True!14088) (False!14088) (Broken!35222 (value!214816 List!43001)) (Broken!35223 (value!214817 List!43001)) (True!14089) (RightBrace!7044) (RightBracket!7044) (Colon!7044) (Null!7044) (Comma!7044) (LeftBracket!7044) (False!14089) (LeftBrace!7044) (ImaginaryLiteralValue!7044 (text!49754 List!43001)) (StringLiteralValue!21132 (value!214818 List!43001)) (EOFValue!7044 (value!214819 List!43001)) (IdentValue!7044 (value!214820 List!43001)) (DelimiterValue!14089 (value!214821 List!43001)) (DedentValue!7044 (value!214822 List!43001)) (NewLineValue!7044 (value!214823 List!43001)) (IntegerValue!21132 (value!214824 (_ BitVec 32)) (text!49755 List!43001)) (IntegerValue!21133 (value!214825 Int) (text!49756 List!43001)) (Times!7044) (Or!7044) (Equal!7044) (Minus!7044) (Broken!35224 (value!214826 List!43001)) (And!7044) (Div!7044) (LessEqual!7044) (Mod!7044) (Concat!18763) (Not!7044) (Plus!7044) (SpaceValue!7044 (value!214827 List!43001)) (IntegerValue!21134 (value!214828 Int) (text!49757 List!43001)) (StringLiteralValue!21133 (text!49758 List!43001)) (FloatLiteralValue!14089 (text!49759 List!43001)) (BytesLiteralValue!7044 (value!214829 List!43001)) (CommentValue!14089 (value!214830 List!43001)) (StringLiteralValue!21134 (value!214831 List!43001)) (ErrorTokenValue!7044 (msg!7105 List!43001)) )
))
(declare-datatypes ((Regex!11719 0))(
  ( (ElementMatch!11719 (c!692541 C!23624)) (Concat!18764 (regOne!23950 Regex!11719) (regTwo!23950 Regex!11719)) (EmptyExpr!11719) (Star!11719 (reg!12048 Regex!11719)) (EmptyLang!11719) (Union!11719 (regOne!23951 Regex!11719) (regTwo!23951 Regex!11719)) )
))
(declare-datatypes ((String!48938 0))(
  ( (String!48939 (value!214832 String)) )
))
(declare-datatypes ((TokenValueInjection!13516 0))(
  ( (TokenValueInjection!13517 (toValue!9310 Int) (toChars!9169 Int)) )
))
(declare-datatypes ((Rule!13428 0))(
  ( (Rule!13429 (regex!6814 Regex!11719) (tag!7674 String!48938) (isSeparator!6814 Bool) (transformation!6814 TokenValueInjection!13516)) )
))
(declare-datatypes ((List!43002 0))(
  ( (Nil!42878) (Cons!42878 (h!48298 Rule!13428) (t!332473 List!43002)) )
))
(declare-fun rules!2999 () List!43002)

(declare-fun rulesInvariant!5746 (LexerInterface!6403 List!43002) Bool)

(assert (=> b!4005099 (= res!1627483 (rulesInvariant!5746 thiss!21717 rules!2999))))

(declare-fun res!1627490 () Bool)

(assert (=> start!377032 (=> (not res!1627490) (not e!2483720))))

(get-info :version)

(assert (=> start!377032 (= res!1627490 ((_ is Lexer!6401) thiss!21717))))

(assert (=> start!377032 e!2483720))

(declare-fun e!2483738 () Bool)

(assert (=> start!377032 e!2483738))

(declare-datatypes ((Token!12766 0))(
  ( (Token!12767 (value!214833 TokenValue!7044) (rule!9850 Rule!13428) (size!32058 Int) (originalCharacters!7414 List!43000)) )
))
(declare-fun token!484 () Token!12766)

(declare-fun e!2483721 () Bool)

(declare-fun inv!57261 (Token!12766) Bool)

(assert (=> start!377032 (and (inv!57261 token!484) e!2483721)))

(declare-fun e!2483731 () Bool)

(assert (=> start!377032 e!2483731))

(assert (=> start!377032 e!2483717))

(assert (=> start!377032 e!2483736))

(assert (=> start!377032 true))

(declare-fun e!2483737 () Bool)

(assert (=> start!377032 e!2483737))

(declare-fun e!2483722 () Bool)

(assert (=> start!377032 e!2483722))

(declare-fun b!4005100 () Bool)

(declare-fun e!2483716 () Bool)

(declare-fun tp!1218995 () Bool)

(assert (=> b!4005100 (= e!2483737 (and e!2483716 tp!1218995))))

(declare-fun b!4005101 () Bool)

(declare-fun e!2483735 () Bool)

(assert (=> b!4005101 (= e!2483735 true)))

(declare-fun lt!1416745 () List!43000)

(assert (=> b!4005101 (isPrefix!3901 lt!1416736 lt!1416745)))

(declare-fun lt!1416743 () Unit!61871)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!714 (List!43000 List!43000 List!43000) Unit!61871)

(assert (=> b!4005101 (= lt!1416743 (lemmaPrefixStaysPrefixWhenAddingToSuffix!714 lt!1416736 prefix!494 newSuffix!27))))

(declare-fun lt!1416748 () Unit!61871)

(assert (=> b!4005101 (= lt!1416748 (lemmaPrefixStaysPrefixWhenAddingToSuffix!714 lt!1416736 prefix!494 suffix!1299))))

(declare-fun b!4005102 () Bool)

(declare-fun tp!1218987 () Bool)

(assert (=> b!4005102 (= e!2483738 (and tp_is_empty!20409 tp!1218987))))

(declare-fun b!4005103 () Bool)

(declare-fun res!1627484 () Bool)

(assert (=> b!4005103 (=> (not res!1627484) (not e!2483720))))

(declare-fun isEmpty!25614 (List!43002) Bool)

(assert (=> b!4005103 (= res!1627484 (not (isEmpty!25614 rules!2999)))))

(declare-fun b!4005104 () Bool)

(declare-fun e!2483726 () Bool)

(declare-fun e!2483724 () Bool)

(assert (=> b!4005104 (= e!2483726 e!2483724)))

(declare-fun res!1627486 () Bool)

(assert (=> b!4005104 (=> (not res!1627486) (not e!2483724))))

(declare-fun lt!1416744 () List!43000)

(assert (=> b!4005104 (= res!1627486 (= lt!1416744 lt!1416745))))

(declare-fun ++!11216 (List!43000 List!43000) List!43000)

(assert (=> b!4005104 (= lt!1416745 (++!11216 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43000)

(assert (=> b!4005104 (= lt!1416744 (++!11216 lt!1416736 newSuffixResult!27))))

(declare-fun b!4005105 () Bool)

(declare-fun e!2483725 () Bool)

(assert (=> b!4005105 (= e!2483723 e!2483725)))

(declare-fun res!1627493 () Bool)

(assert (=> b!4005105 (=> res!1627493 e!2483725)))

(declare-fun lt!1416755 () List!43000)

(assert (=> b!4005105 (= res!1627493 (not (= lt!1416755 prefix!494)))))

(declare-fun lt!1416759 () List!43000)

(assert (=> b!4005105 (= lt!1416755 (++!11216 lt!1416736 lt!1416759))))

(declare-fun getSuffix!2326 (List!43000 List!43000) List!43000)

(assert (=> b!4005105 (= lt!1416759 (getSuffix!2326 prefix!494 lt!1416736))))

(assert (=> b!4005105 (isPrefix!3901 lt!1416736 prefix!494)))

(declare-fun lt!1416747 () Unit!61871)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!473 (List!43000 List!43000 List!43000) Unit!61871)

(assert (=> b!4005105 (= lt!1416747 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!473 prefix!494 lt!1416736 lt!1416741))))

(declare-fun b!4005106 () Bool)

(declare-fun e!2483718 () Bool)

(assert (=> b!4005106 (= e!2483718 (not e!2483729))))

(declare-fun res!1627495 () Bool)

(assert (=> b!4005106 (=> res!1627495 e!2483729)))

(assert (=> b!4005106 (= res!1627495 (not (= lt!1416742 lt!1416741)))))

(assert (=> b!4005106 (= lt!1416742 (++!11216 lt!1416736 suffixResult!105))))

(declare-fun lt!1416737 () Unit!61871)

(declare-fun lemmaInv!1029 (TokenValueInjection!13516) Unit!61871)

(assert (=> b!4005106 (= lt!1416737 (lemmaInv!1029 (transformation!6814 (rule!9850 token!484))))))

(declare-fun ruleValid!2746 (LexerInterface!6403 Rule!13428) Bool)

(assert (=> b!4005106 (ruleValid!2746 thiss!21717 (rule!9850 token!484))))

(declare-fun lt!1416734 () Unit!61871)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1820 (LexerInterface!6403 Rule!13428 List!43002) Unit!61871)

(assert (=> b!4005106 (= lt!1416734 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1820 thiss!21717 (rule!9850 token!484) rules!2999))))

(declare-fun b!4005107 () Bool)

(assert (=> b!4005107 (= e!2483724 e!2483718)))

(declare-fun res!1627491 () Bool)

(assert (=> b!4005107 (=> (not res!1627491) (not e!2483718))))

(declare-datatypes ((tuple2!42034 0))(
  ( (tuple2!42035 (_1!24151 Token!12766) (_2!24151 List!43000)) )
))
(declare-datatypes ((Option!9228 0))(
  ( (None!9227) (Some!9227 (v!39591 tuple2!42034)) )
))
(declare-fun lt!1416756 () Option!9228)

(declare-fun maxPrefix!3701 (LexerInterface!6403 List!43002 List!43000) Option!9228)

(assert (=> b!4005107 (= res!1627491 (= (maxPrefix!3701 thiss!21717 rules!2999 lt!1416741) lt!1416756))))

(assert (=> b!4005107 (= lt!1416756 (Some!9227 (tuple2!42035 token!484 suffixResult!105)))))

(assert (=> b!4005107 (= lt!1416741 (++!11216 prefix!494 suffix!1299))))

(declare-fun b!4005108 () Bool)

(assert (=> b!4005108 (= e!2483720 e!2483726)))

(declare-fun res!1627492 () Bool)

(assert (=> b!4005108 (=> (not res!1627492) (not e!2483726))))

(declare-fun lt!1416754 () Int)

(declare-fun lt!1416740 () Int)

(assert (=> b!4005108 (= res!1627492 (>= lt!1416754 lt!1416740))))

(assert (=> b!4005108 (= lt!1416740 (size!32057 lt!1416736))))

(assert (=> b!4005108 (= lt!1416754 (size!32057 prefix!494))))

(declare-fun list!15928 (BalanceConc!25644) List!43000)

(declare-fun charsOf!4630 (Token!12766) BalanceConc!25644)

(assert (=> b!4005108 (= lt!1416736 (list!15928 (charsOf!4630 token!484)))))

(declare-fun e!2483728 () Bool)

(assert (=> b!4005109 (= e!2483728 (and tp!1218993 tp!1218986))))

(declare-fun b!4005110 () Bool)

(declare-fun tp!1218984 () Bool)

(assert (=> b!4005110 (= e!2483731 (and tp_is_empty!20409 tp!1218984))))

(declare-fun b!4005111 () Bool)

(declare-fun e!2483734 () Bool)

(assert (=> b!4005111 (= e!2483725 e!2483734)))

(declare-fun res!1627488 () Bool)

(assert (=> b!4005111 (=> res!1627488 e!2483734)))

(declare-fun lt!1416752 () List!43000)

(declare-fun lt!1416750 () List!43000)

(assert (=> b!4005111 (= res!1627488 (or (not (= lt!1416741 lt!1416750)) (not (= lt!1416741 lt!1416752))))))

(assert (=> b!4005111 (= lt!1416750 lt!1416752)))

(declare-fun lt!1416739 () List!43000)

(assert (=> b!4005111 (= lt!1416752 (++!11216 lt!1416736 lt!1416739))))

(assert (=> b!4005111 (= lt!1416750 (++!11216 lt!1416755 suffix!1299))))

(assert (=> b!4005111 (= lt!1416739 (++!11216 lt!1416759 suffix!1299))))

(declare-fun lt!1416746 () Unit!61871)

(declare-fun lemmaConcatAssociativity!2526 (List!43000 List!43000 List!43000) Unit!61871)

(assert (=> b!4005111 (= lt!1416746 (lemmaConcatAssociativity!2526 lt!1416736 lt!1416759 suffix!1299))))

(declare-fun b!4005112 () Bool)

(declare-fun res!1627494 () Bool)

(assert (=> b!4005112 (=> (not res!1627494) (not e!2483720))))

(assert (=> b!4005112 (= res!1627494 (isPrefix!3901 newSuffix!27 suffix!1299))))

(declare-fun e!2483727 () Bool)

(declare-fun e!2483730 () Bool)

(declare-fun b!4005113 () Bool)

(declare-fun tp!1218988 () Bool)

(declare-fun inv!57258 (String!48938) Bool)

(declare-fun inv!57262 (TokenValueInjection!13516) Bool)

(assert (=> b!4005113 (= e!2483727 (and tp!1218988 (inv!57258 (tag!7674 (rule!9850 token!484))) (inv!57262 (transformation!6814 (rule!9850 token!484))) e!2483730))))

(declare-fun tp!1218992 () Bool)

(declare-fun b!4005114 () Bool)

(assert (=> b!4005114 (= e!2483716 (and tp!1218992 (inv!57258 (tag!7674 (h!48298 rules!2999))) (inv!57262 (transformation!6814 (h!48298 rules!2999))) e!2483728))))

(declare-fun b!4005115 () Bool)

(declare-fun tp!1218996 () Bool)

(assert (=> b!4005115 (= e!2483722 (and tp_is_empty!20409 tp!1218996))))

(declare-fun b!4005116 () Bool)

(assert (=> b!4005116 (= e!2483734 e!2483735)))

(declare-fun res!1627485 () Bool)

(assert (=> b!4005116 (=> res!1627485 e!2483735)))

(declare-fun lt!1416753 () Option!9228)

(assert (=> b!4005116 (= res!1627485 (not (= lt!1416753 lt!1416756)))))

(declare-fun lt!1416758 () TokenValue!7044)

(assert (=> b!4005116 (= lt!1416753 (Some!9227 (tuple2!42035 (Token!12767 lt!1416758 (rule!9850 token!484) lt!1416740 lt!1416736) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2721 (LexerInterface!6403 Rule!13428 List!43000) Option!9228)

(assert (=> b!4005116 (= lt!1416753 (maxPrefixOneRule!2721 thiss!21717 (rule!9850 token!484) lt!1416741))))

(declare-fun apply!10011 (TokenValueInjection!13516 BalanceConc!25644) TokenValue!7044)

(declare-fun seqFromList!5039 (List!43000) BalanceConc!25644)

(assert (=> b!4005116 (= lt!1416758 (apply!10011 (transformation!6814 (rule!9850 token!484)) (seqFromList!5039 lt!1416736)))))

(declare-fun lt!1416751 () Unit!61871)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1539 (LexerInterface!6403 List!43002 List!43000 List!43000 List!43000 Rule!13428) Unit!61871)

(assert (=> b!4005116 (= lt!1416751 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1539 thiss!21717 rules!2999 lt!1416736 lt!1416741 suffixResult!105 (rule!9850 token!484)))))

(assert (=> b!4005116 (= lt!1416739 suffixResult!105)))

(declare-fun lt!1416735 () Unit!61871)

(declare-fun lemmaSamePrefixThenSameSuffix!2072 (List!43000 List!43000 List!43000 List!43000 List!43000) Unit!61871)

(assert (=> b!4005116 (= lt!1416735 (lemmaSamePrefixThenSameSuffix!2072 lt!1416736 lt!1416739 lt!1416736 suffixResult!105 lt!1416741))))

(assert (=> b!4005116 (isPrefix!3901 lt!1416736 lt!1416752)))

(declare-fun lt!1416738 () Unit!61871)

(assert (=> b!4005116 (= lt!1416738 (lemmaConcatTwoListThenFirstIsPrefix!2742 lt!1416736 lt!1416739))))

(declare-fun b!4005117 () Bool)

(declare-fun tp!1218985 () Bool)

(declare-fun inv!21 (TokenValue!7044) Bool)

(assert (=> b!4005117 (= e!2483721 (and (inv!21 (value!214833 token!484)) e!2483727 tp!1218985))))

(assert (=> b!4005118 (= e!2483730 (and tp!1218989 tp!1218991))))

(assert (= (and start!377032 res!1627490) b!4005103))

(assert (= (and b!4005103 res!1627484) b!4005099))

(assert (= (and b!4005099 res!1627483) b!4005095))

(assert (= (and b!4005095 res!1627489) b!4005112))

(assert (= (and b!4005112 res!1627494) b!4005108))

(assert (= (and b!4005108 res!1627492) b!4005104))

(assert (= (and b!4005104 res!1627486) b!4005107))

(assert (= (and b!4005107 res!1627491) b!4005106))

(assert (= (and b!4005106 (not res!1627495)) b!4005098))

(assert (= (and b!4005098 (not res!1627487)) b!4005105))

(assert (= (and b!4005105 (not res!1627493)) b!4005111))

(assert (= (and b!4005111 (not res!1627488)) b!4005116))

(assert (= (and b!4005116 (not res!1627485)) b!4005101))

(assert (= (and start!377032 ((_ is Cons!42876) prefix!494)) b!4005102))

(assert (= b!4005113 b!4005118))

(assert (= b!4005117 b!4005113))

(assert (= start!377032 b!4005117))

(assert (= (and start!377032 ((_ is Cons!42876) suffixResult!105)) b!4005110))

(assert (= (and start!377032 ((_ is Cons!42876) suffix!1299)) b!4005096))

(assert (= (and start!377032 ((_ is Cons!42876) newSuffix!27)) b!4005097))

(assert (= b!4005114 b!4005109))

(assert (= b!4005100 b!4005114))

(assert (= (and start!377032 ((_ is Cons!42878) rules!2999)) b!4005100))

(assert (= (and start!377032 ((_ is Cons!42876) newSuffixResult!27)) b!4005115))

(declare-fun m!4588005 () Bool)

(assert (=> b!4005117 m!4588005))

(declare-fun m!4588007 () Bool)

(assert (=> b!4005103 m!4588007))

(declare-fun m!4588009 () Bool)

(assert (=> b!4005095 m!4588009))

(declare-fun m!4588011 () Bool)

(assert (=> b!4005095 m!4588011))

(declare-fun m!4588013 () Bool)

(assert (=> b!4005099 m!4588013))

(declare-fun m!4588015 () Bool)

(assert (=> b!4005111 m!4588015))

(declare-fun m!4588017 () Bool)

(assert (=> b!4005111 m!4588017))

(declare-fun m!4588019 () Bool)

(assert (=> b!4005111 m!4588019))

(declare-fun m!4588021 () Bool)

(assert (=> b!4005111 m!4588021))

(declare-fun m!4588023 () Bool)

(assert (=> b!4005116 m!4588023))

(declare-fun m!4588025 () Bool)

(assert (=> b!4005116 m!4588025))

(declare-fun m!4588027 () Bool)

(assert (=> b!4005116 m!4588027))

(declare-fun m!4588029 () Bool)

(assert (=> b!4005116 m!4588029))

(declare-fun m!4588031 () Bool)

(assert (=> b!4005116 m!4588031))

(assert (=> b!4005116 m!4588029))

(declare-fun m!4588033 () Bool)

(assert (=> b!4005116 m!4588033))

(declare-fun m!4588035 () Bool)

(assert (=> b!4005116 m!4588035))

(declare-fun m!4588037 () Bool)

(assert (=> b!4005113 m!4588037))

(declare-fun m!4588039 () Bool)

(assert (=> b!4005113 m!4588039))

(declare-fun m!4588041 () Bool)

(assert (=> start!377032 m!4588041))

(declare-fun m!4588043 () Bool)

(assert (=> b!4005101 m!4588043))

(declare-fun m!4588045 () Bool)

(assert (=> b!4005101 m!4588045))

(declare-fun m!4588047 () Bool)

(assert (=> b!4005101 m!4588047))

(declare-fun m!4588049 () Bool)

(assert (=> b!4005114 m!4588049))

(declare-fun m!4588051 () Bool)

(assert (=> b!4005114 m!4588051))

(declare-fun m!4588053 () Bool)

(assert (=> b!4005098 m!4588053))

(declare-fun m!4588055 () Bool)

(assert (=> b!4005098 m!4588055))

(declare-fun m!4588057 () Bool)

(assert (=> b!4005098 m!4588057))

(declare-fun m!4588059 () Bool)

(assert (=> b!4005098 m!4588059))

(declare-fun m!4588061 () Bool)

(assert (=> b!4005098 m!4588061))

(declare-fun m!4588063 () Bool)

(assert (=> b!4005107 m!4588063))

(declare-fun m!4588065 () Bool)

(assert (=> b!4005107 m!4588065))

(declare-fun m!4588067 () Bool)

(assert (=> b!4005112 m!4588067))

(declare-fun m!4588069 () Bool)

(assert (=> b!4005108 m!4588069))

(declare-fun m!4588071 () Bool)

(assert (=> b!4005108 m!4588071))

(declare-fun m!4588073 () Bool)

(assert (=> b!4005108 m!4588073))

(assert (=> b!4005108 m!4588073))

(declare-fun m!4588075 () Bool)

(assert (=> b!4005108 m!4588075))

(declare-fun m!4588077 () Bool)

(assert (=> b!4005105 m!4588077))

(declare-fun m!4588079 () Bool)

(assert (=> b!4005105 m!4588079))

(declare-fun m!4588081 () Bool)

(assert (=> b!4005105 m!4588081))

(declare-fun m!4588083 () Bool)

(assert (=> b!4005105 m!4588083))

(declare-fun m!4588085 () Bool)

(assert (=> b!4005104 m!4588085))

(declare-fun m!4588087 () Bool)

(assert (=> b!4005104 m!4588087))

(declare-fun m!4588089 () Bool)

(assert (=> b!4005106 m!4588089))

(declare-fun m!4588091 () Bool)

(assert (=> b!4005106 m!4588091))

(declare-fun m!4588093 () Bool)

(assert (=> b!4005106 m!4588093))

(declare-fun m!4588095 () Bool)

(assert (=> b!4005106 m!4588095))

(check-sat b_and!307601 b_and!307599 (not b!4005116) (not b_next!112107) (not b!4005099) (not b!4005113) (not b!4005108) (not b!4005097) (not b!4005100) (not b!4005101) (not b!4005111) b_and!307595 (not b!4005112) (not b_next!112105) (not b_next!112109) b_and!307597 (not b!4005114) (not b!4005106) (not b!4005104) (not b!4005115) (not b!4005110) (not b!4005096) (not b!4005095) (not b!4005103) (not b!4005098) tp_is_empty!20409 (not start!377032) (not b!4005105) (not b!4005117) (not b!4005102) (not b_next!112111) (not b!4005107))
(check-sat b_and!307601 b_and!307599 (not b_next!112107) b_and!307595 (not b_next!112105) (not b_next!112111) (not b_next!112109) b_and!307597)
