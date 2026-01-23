; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180230 () Bool)

(assert start!180230)

(declare-fun b!1820058 () Bool)

(declare-fun b_free!50431 () Bool)

(declare-fun b_next!51135 () Bool)

(assert (=> b!1820058 (= b_free!50431 (not b_next!51135))))

(declare-fun tp!514341 () Bool)

(declare-fun b_and!141081 () Bool)

(assert (=> b!1820058 (= tp!514341 b_and!141081)))

(declare-fun b_free!50433 () Bool)

(declare-fun b_next!51137 () Bool)

(assert (=> b!1820058 (= b_free!50433 (not b_next!51137))))

(declare-fun tp!514347 () Bool)

(declare-fun b_and!141083 () Bool)

(assert (=> b!1820058 (= tp!514347 b_and!141083)))

(declare-fun b!1820056 () Bool)

(declare-fun b_free!50435 () Bool)

(declare-fun b_next!51139 () Bool)

(assert (=> b!1820056 (= b_free!50435 (not b_next!51139))))

(declare-fun tp!514344 () Bool)

(declare-fun b_and!141085 () Bool)

(assert (=> b!1820056 (= tp!514344 b_and!141085)))

(declare-fun b_free!50437 () Bool)

(declare-fun b_next!51141 () Bool)

(assert (=> b!1820056 (= b_free!50437 (not b_next!51141))))

(declare-fun tp!514342 () Bool)

(declare-fun b_and!141087 () Bool)

(assert (=> b!1820056 (= tp!514342 b_and!141087)))

(declare-fun b!1820053 () Bool)

(declare-fun b_free!50439 () Bool)

(declare-fun b_next!51143 () Bool)

(assert (=> b!1820053 (= b_free!50439 (not b_next!51143))))

(declare-fun tp!514340 () Bool)

(declare-fun b_and!141089 () Bool)

(assert (=> b!1820053 (= tp!514340 b_and!141089)))

(declare-fun b_free!50441 () Bool)

(declare-fun b_next!51145 () Bool)

(assert (=> b!1820053 (= b_free!50441 (not b_next!51145))))

(declare-fun tp!514338 () Bool)

(declare-fun b_and!141091 () Bool)

(assert (=> b!1820053 (= tp!514338 b_and!141091)))

(declare-fun b!1820040 () Bool)

(declare-fun e!1162952 () Bool)

(declare-fun e!1162948 () Bool)

(assert (=> b!1820040 (= e!1162952 e!1162948)))

(declare-fun res!818430 () Bool)

(assert (=> b!1820040 (=> res!818430 e!1162948)))

(declare-datatypes ((List!19986 0))(
  ( (Nil!19916) (Cons!19916 (h!25317 (_ BitVec 16)) (t!169831 List!19986)) )
))
(declare-datatypes ((TokenValue!3677 0))(
  ( (FloatLiteralValue!7354 (text!26184 List!19986)) (TokenValueExt!3676 (__x!12656 Int)) (Broken!18385 (value!111870 List!19986)) (Object!3746) (End!3677) (Def!3677) (Underscore!3677) (Match!3677) (Else!3677) (Error!3677) (Case!3677) (If!3677) (Extends!3677) (Abstract!3677) (Class!3677) (Val!3677) (DelimiterValue!7354 (del!3737 List!19986)) (KeywordValue!3683 (value!111871 List!19986)) (CommentValue!7354 (value!111872 List!19986)) (WhitespaceValue!7354 (value!111873 List!19986)) (IndentationValue!3677 (value!111874 List!19986)) (String!22716) (Int32!3677) (Broken!18386 (value!111875 List!19986)) (Boolean!3678) (Unit!34598) (OperatorValue!3680 (op!3737 List!19986)) (IdentifierValue!7354 (value!111876 List!19986)) (IdentifierValue!7355 (value!111877 List!19986)) (WhitespaceValue!7355 (value!111878 List!19986)) (True!7354) (False!7354) (Broken!18387 (value!111879 List!19986)) (Broken!18388 (value!111880 List!19986)) (True!7355) (RightBrace!3677) (RightBracket!3677) (Colon!3677) (Null!3677) (Comma!3677) (LeftBracket!3677) (False!7355) (LeftBrace!3677) (ImaginaryLiteralValue!3677 (text!26185 List!19986)) (StringLiteralValue!11031 (value!111881 List!19986)) (EOFValue!3677 (value!111882 List!19986)) (IdentValue!3677 (value!111883 List!19986)) (DelimiterValue!7355 (value!111884 List!19986)) (DedentValue!3677 (value!111885 List!19986)) (NewLineValue!3677 (value!111886 List!19986)) (IntegerValue!11031 (value!111887 (_ BitVec 32)) (text!26186 List!19986)) (IntegerValue!11032 (value!111888 Int) (text!26187 List!19986)) (Times!3677) (Or!3677) (Equal!3677) (Minus!3677) (Broken!18389 (value!111889 List!19986)) (And!3677) (Div!3677) (LessEqual!3677) (Mod!3677) (Concat!8592) (Not!3677) (Plus!3677) (SpaceValue!3677 (value!111890 List!19986)) (IntegerValue!11033 (value!111891 Int) (text!26188 List!19986)) (StringLiteralValue!11032 (text!26189 List!19986)) (FloatLiteralValue!7355 (text!26190 List!19986)) (BytesLiteralValue!3677 (value!111892 List!19986)) (CommentValue!7355 (value!111893 List!19986)) (StringLiteralValue!11033 (value!111894 List!19986)) (ErrorTokenValue!3677 (msg!3738 List!19986)) )
))
(declare-datatypes ((C!10004 0))(
  ( (C!10005 (val!5598 Int)) )
))
(declare-datatypes ((List!19987 0))(
  ( (Nil!19917) (Cons!19917 (h!25318 C!10004) (t!169832 List!19987)) )
))
(declare-datatypes ((IArray!13243 0))(
  ( (IArray!13244 (innerList!6679 List!19987)) )
))
(declare-datatypes ((Conc!6619 0))(
  ( (Node!6619 (left!15958 Conc!6619) (right!16288 Conc!6619) (csize!13468 Int) (cheight!6830 Int)) (Leaf!9633 (xs!9495 IArray!13243) (csize!13469 Int)) (Empty!6619) )
))
(declare-datatypes ((BalanceConc!13182 0))(
  ( (BalanceConc!13183 (c!297060 Conc!6619)) )
))
(declare-datatypes ((TokenValueInjection!7014 0))(
  ( (TokenValueInjection!7015 (toValue!5122 Int) (toChars!4981 Int)) )
))
(declare-datatypes ((Regex!4915 0))(
  ( (ElementMatch!4915 (c!297061 C!10004)) (Concat!8593 (regOne!10342 Regex!4915) (regTwo!10342 Regex!4915)) (EmptyExpr!4915) (Star!4915 (reg!5244 Regex!4915)) (EmptyLang!4915) (Union!4915 (regOne!10343 Regex!4915) (regTwo!10343 Regex!4915)) )
))
(declare-datatypes ((String!22717 0))(
  ( (String!22718 (value!111895 String)) )
))
(declare-datatypes ((Rule!6974 0))(
  ( (Rule!6975 (regex!3587 Regex!4915) (tag!4001 String!22717) (isSeparator!3587 Bool) (transformation!3587 TokenValueInjection!7014)) )
))
(declare-datatypes ((Token!6728 0))(
  ( (Token!6729 (value!111896 TokenValue!3677) (rule!5711 Rule!6974) (size!15811 Int) (originalCharacters!4395 List!19987)) )
))
(declare-datatypes ((tuple2!19454 0))(
  ( (tuple2!19455 (_1!11129 Token!6728) (_2!11129 List!19987)) )
))
(declare-datatypes ((Option!4167 0))(
  ( (None!4166) (Some!4166 (v!25703 tuple2!19454)) )
))
(declare-fun lt!707104 () Option!4167)

(declare-fun lt!707102 () Option!4167)

(assert (=> b!1820040 (= res!818430 (not (= lt!707104 lt!707102)))))

(declare-fun lt!707097 () Int)

(declare-fun suffix!1667 () List!19987)

(declare-fun lt!707101 () TokenValue!3677)

(declare-fun rule!559 () Rule!6974)

(declare-fun lt!707099 () List!19987)

(assert (=> b!1820040 (= lt!707104 (Some!4166 (tuple2!19455 (Token!6729 lt!707101 rule!559 lt!707097 lt!707099) suffix!1667)))))

(declare-datatypes ((LexerInterface!3216 0))(
  ( (LexerInterfaceExt!3213 (__x!12657 Int)) (Lexer!3214) )
))
(declare-fun thiss!28068 () LexerInterface!3216)

(declare-fun input!3612 () List!19987)

(declare-fun maxPrefixOneRule!1129 (LexerInterface!3216 Rule!6974 List!19987) Option!4167)

(assert (=> b!1820040 (= lt!707104 (maxPrefixOneRule!1129 thiss!28068 rule!559 input!3612))))

(declare-fun size!15812 (List!19987) Int)

(assert (=> b!1820040 (= lt!707097 (size!15812 lt!707099))))

(declare-fun apply!5379 (TokenValueInjection!7014 BalanceConc!13182) TokenValue!3677)

(declare-fun seqFromList!2548 (List!19987) BalanceConc!13182)

(assert (=> b!1820040 (= lt!707101 (apply!5379 (transformation!3587 rule!559) (seqFromList!2548 lt!707099)))))

(declare-datatypes ((List!19988 0))(
  ( (Nil!19918) (Cons!19918 (h!25319 Rule!6974) (t!169833 List!19988)) )
))
(declare-fun rules!4538 () List!19988)

(declare-datatypes ((Unit!34599 0))(
  ( (Unit!34600) )
))
(declare-fun lt!707105 () Unit!34599)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!505 (LexerInterface!3216 List!19988 List!19987 List!19987 List!19987 Rule!6974) Unit!34599)

(assert (=> b!1820040 (= lt!707105 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!505 thiss!28068 rules!4538 lt!707099 input!3612 suffix!1667 rule!559))))

(declare-fun b!1820041 () Bool)

(declare-fun res!818435 () Bool)

(declare-fun e!1162960 () Bool)

(assert (=> b!1820041 (=> (not res!818435) (not e!1162960))))

(declare-fun isEmpty!12595 (List!19988) Bool)

(assert (=> b!1820041 (= res!818435 (not (isEmpty!12595 rules!4538)))))

(declare-fun b!1820042 () Bool)

(declare-fun e!1162965 () Bool)

(declare-fun e!1162957 () Bool)

(assert (=> b!1820042 (= e!1162965 e!1162957)))

(declare-fun res!818428 () Bool)

(assert (=> b!1820042 (=> (not res!818428) (not e!1162957))))

(declare-fun ++!5411 (List!19987 List!19987) List!19987)

(assert (=> b!1820042 (= res!818428 (= input!3612 (++!5411 lt!707099 suffix!1667)))))

(declare-fun token!556 () Token!6728)

(declare-fun list!8101 (BalanceConc!13182) List!19987)

(declare-fun charsOf!2230 (Token!6728) BalanceConc!13182)

(assert (=> b!1820042 (= lt!707099 (list!8101 (charsOf!2230 token!556)))))

(declare-fun b!1820043 () Bool)

(assert (=> b!1820043 (= e!1162957 (not e!1162952))))

(declare-fun res!818431 () Bool)

(assert (=> b!1820043 (=> res!818431 e!1162952)))

(declare-fun matchR!2380 (Regex!4915 List!19987) Bool)

(assert (=> b!1820043 (= res!818431 (not (matchR!2380 (regex!3587 rule!559) lt!707099)))))

(declare-fun ruleValid!1079 (LexerInterface!3216 Rule!6974) Bool)

(assert (=> b!1820043 (ruleValid!1079 thiss!28068 rule!559)))

(declare-fun lt!707100 () Unit!34599)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!600 (LexerInterface!3216 Rule!6974 List!19988) Unit!34599)

(assert (=> b!1820043 (= lt!707100 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!600 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1820044 () Bool)

(declare-fun e!1162950 () Bool)

(assert (=> b!1820044 (= e!1162950 true)))

(declare-fun lt!707106 () Bool)

(declare-fun rulesValid!1363 (LexerInterface!3216 List!19988) Bool)

(assert (=> b!1820044 (= lt!707106 (rulesValid!1363 thiss!28068 rules!4538))))

(declare-fun b!1820045 () Bool)

(assert (=> b!1820045 (= e!1162960 e!1162965)))

(declare-fun res!818433 () Bool)

(assert (=> b!1820045 (=> (not res!818433) (not e!1162965))))

(declare-fun maxPrefix!1764 (LexerInterface!3216 List!19988 List!19987) Option!4167)

(assert (=> b!1820045 (= res!818433 (= (maxPrefix!1764 thiss!28068 rules!4538 input!3612) lt!707102))))

(assert (=> b!1820045 (= lt!707102 (Some!4166 (tuple2!19455 token!556 suffix!1667)))))

(declare-fun b!1820046 () Bool)

(declare-fun res!818427 () Bool)

(assert (=> b!1820046 (=> (not res!818427) (not e!1162960))))

(declare-fun rulesInvariant!2885 (LexerInterface!3216 List!19988) Bool)

(assert (=> b!1820046 (= res!818427 (rulesInvariant!2885 thiss!28068 rules!4538))))

(declare-fun b!1820047 () Bool)

(declare-fun res!818429 () Bool)

(assert (=> b!1820047 (=> res!818429 e!1162950)))

(declare-fun lt!707098 () Regex!4915)

(declare-fun lambda!71202 () Int)

(declare-datatypes ((List!19989 0))(
  ( (Nil!19919) (Cons!19919 (h!25320 Regex!4915) (t!169834 List!19989)) )
))
(declare-fun generalisedUnion!442 (List!19989) Regex!4915)

(declare-fun map!4111 (List!19988 Int) List!19989)

(assert (=> b!1820047 (= res!818429 (not (= lt!707098 (generalisedUnion!442 (map!4111 rules!4538 lambda!71202)))))))

(declare-fun b!1820048 () Bool)

(declare-fun res!818432 () Bool)

(assert (=> b!1820048 (=> (not res!818432) (not e!1162960))))

(declare-fun contains!3623 (List!19988 Rule!6974) Bool)

(assert (=> b!1820048 (= res!818432 (contains!3623 rules!4538 rule!559))))

(declare-fun res!818436 () Bool)

(assert (=> start!180230 (=> (not res!818436) (not e!1162960))))

(get-info :version)

(assert (=> start!180230 (= res!818436 ((_ is Lexer!3214) thiss!28068))))

(assert (=> start!180230 e!1162960))

(declare-fun e!1162966 () Bool)

(assert (=> start!180230 e!1162966))

(assert (=> start!180230 true))

(declare-fun e!1162962 () Bool)

(assert (=> start!180230 e!1162962))

(declare-fun e!1162947 () Bool)

(declare-fun inv!25954 (Token!6728) Bool)

(assert (=> start!180230 (and (inv!25954 token!556) e!1162947)))

(declare-fun e!1162959 () Bool)

(assert (=> start!180230 e!1162959))

(declare-fun e!1162964 () Bool)

(assert (=> start!180230 e!1162964))

(declare-fun tp!514337 () Bool)

(declare-fun e!1162961 () Bool)

(declare-fun b!1820049 () Bool)

(declare-fun inv!25951 (String!22717) Bool)

(declare-fun inv!25955 (TokenValueInjection!7014) Bool)

(assert (=> b!1820049 (= e!1162959 (and tp!514337 (inv!25951 (tag!4001 rule!559)) (inv!25955 (transformation!3587 rule!559)) e!1162961))))

(declare-fun b!1820050 () Bool)

(declare-fun res!818434 () Bool)

(assert (=> b!1820050 (=> (not res!818434) (not e!1162965))))

(assert (=> b!1820050 (= res!818434 (= (rule!5711 token!556) rule!559))))

(declare-fun b!1820051 () Bool)

(declare-fun e!1162963 () Bool)

(declare-fun tp!514339 () Bool)

(assert (=> b!1820051 (= e!1162962 (and e!1162963 tp!514339))))

(declare-fun b!1820052 () Bool)

(declare-fun tp_is_empty!8065 () Bool)

(declare-fun tp!514336 () Bool)

(assert (=> b!1820052 (= e!1162966 (and tp_is_empty!8065 tp!514336))))

(declare-fun e!1162956 () Bool)

(assert (=> b!1820053 (= e!1162956 (and tp!514340 tp!514338))))

(declare-fun e!1162953 () Bool)

(declare-fun tp!514343 () Bool)

(declare-fun b!1820054 () Bool)

(assert (=> b!1820054 (= e!1162953 (and tp!514343 (inv!25951 (tag!4001 (rule!5711 token!556))) (inv!25955 (transformation!3587 (rule!5711 token!556))) e!1162956))))

(declare-fun b!1820055 () Bool)

(assert (=> b!1820055 (= e!1162948 e!1162950)))

(declare-fun res!818426 () Bool)

(assert (=> b!1820055 (=> res!818426 e!1162950)))

(declare-fun lt!707096 () List!19989)

(assert (=> b!1820055 (= res!818426 (not (= lt!707098 (generalisedUnion!442 lt!707096))))))

(declare-fun rulesRegex!919 (LexerInterface!3216 List!19988) Regex!4915)

(assert (=> b!1820055 (= lt!707098 (rulesRegex!919 thiss!28068 rules!4538))))

(assert (=> b!1820055 (= lt!707096 (map!4111 rules!4538 lambda!71202))))

(declare-fun lt!707103 () Unit!34599)

(declare-fun lemma!442 (List!19987 Rule!6974 List!19988 List!19987 LexerInterface!3216 Token!6728 List!19988) Unit!34599)

(assert (=> b!1820055 (= lt!707103 (lemma!442 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1820056 (= e!1162961 (and tp!514344 tp!514342))))

(declare-fun b!1820057 () Bool)

(declare-fun tp!514348 () Bool)

(declare-fun inv!21 (TokenValue!3677) Bool)

(assert (=> b!1820057 (= e!1162947 (and (inv!21 (value!111896 token!556)) e!1162953 tp!514348))))

(declare-fun e!1162955 () Bool)

(assert (=> b!1820058 (= e!1162955 (and tp!514341 tp!514347))))

(declare-fun b!1820059 () Bool)

(declare-fun tp!514346 () Bool)

(assert (=> b!1820059 (= e!1162964 (and tp_is_empty!8065 tp!514346))))

(declare-fun b!1820060 () Bool)

(declare-fun tp!514345 () Bool)

(assert (=> b!1820060 (= e!1162963 (and tp!514345 (inv!25951 (tag!4001 (h!25319 rules!4538))) (inv!25955 (transformation!3587 (h!25319 rules!4538))) e!1162955))))

(assert (= (and start!180230 res!818436) b!1820041))

(assert (= (and b!1820041 res!818435) b!1820046))

(assert (= (and b!1820046 res!818427) b!1820048))

(assert (= (and b!1820048 res!818432) b!1820045))

(assert (= (and b!1820045 res!818433) b!1820050))

(assert (= (and b!1820050 res!818434) b!1820042))

(assert (= (and b!1820042 res!818428) b!1820043))

(assert (= (and b!1820043 (not res!818431)) b!1820040))

(assert (= (and b!1820040 (not res!818430)) b!1820055))

(assert (= (and b!1820055 (not res!818426)) b!1820047))

(assert (= (and b!1820047 (not res!818429)) b!1820044))

(assert (= (and start!180230 ((_ is Cons!19917) suffix!1667)) b!1820052))

(assert (= b!1820060 b!1820058))

(assert (= b!1820051 b!1820060))

(assert (= (and start!180230 ((_ is Cons!19918) rules!4538)) b!1820051))

(assert (= b!1820054 b!1820053))

(assert (= b!1820057 b!1820054))

(assert (= start!180230 b!1820057))

(assert (= b!1820049 b!1820056))

(assert (= start!180230 b!1820049))

(assert (= (and start!180230 ((_ is Cons!19917) input!3612)) b!1820059))

(declare-fun m!2249003 () Bool)

(assert (=> b!1820041 m!2249003))

(declare-fun m!2249005 () Bool)

(assert (=> start!180230 m!2249005))

(declare-fun m!2249007 () Bool)

(assert (=> b!1820057 m!2249007))

(declare-fun m!2249009 () Bool)

(assert (=> b!1820042 m!2249009))

(declare-fun m!2249011 () Bool)

(assert (=> b!1820042 m!2249011))

(assert (=> b!1820042 m!2249011))

(declare-fun m!2249013 () Bool)

(assert (=> b!1820042 m!2249013))

(declare-fun m!2249015 () Bool)

(assert (=> b!1820055 m!2249015))

(declare-fun m!2249017 () Bool)

(assert (=> b!1820055 m!2249017))

(declare-fun m!2249019 () Bool)

(assert (=> b!1820055 m!2249019))

(declare-fun m!2249021 () Bool)

(assert (=> b!1820055 m!2249021))

(declare-fun m!2249023 () Bool)

(assert (=> b!1820043 m!2249023))

(declare-fun m!2249025 () Bool)

(assert (=> b!1820043 m!2249025))

(declare-fun m!2249027 () Bool)

(assert (=> b!1820043 m!2249027))

(declare-fun m!2249029 () Bool)

(assert (=> b!1820045 m!2249029))

(declare-fun m!2249031 () Bool)

(assert (=> b!1820054 m!2249031))

(declare-fun m!2249033 () Bool)

(assert (=> b!1820054 m!2249033))

(declare-fun m!2249035 () Bool)

(assert (=> b!1820049 m!2249035))

(declare-fun m!2249037 () Bool)

(assert (=> b!1820049 m!2249037))

(assert (=> b!1820047 m!2249019))

(assert (=> b!1820047 m!2249019))

(declare-fun m!2249039 () Bool)

(assert (=> b!1820047 m!2249039))

(declare-fun m!2249041 () Bool)

(assert (=> b!1820060 m!2249041))

(declare-fun m!2249043 () Bool)

(assert (=> b!1820060 m!2249043))

(declare-fun m!2249045 () Bool)

(assert (=> b!1820048 m!2249045))

(declare-fun m!2249047 () Bool)

(assert (=> b!1820040 m!2249047))

(declare-fun m!2249049 () Bool)

(assert (=> b!1820040 m!2249049))

(declare-fun m!2249051 () Bool)

(assert (=> b!1820040 m!2249051))

(declare-fun m!2249053 () Bool)

(assert (=> b!1820040 m!2249053))

(assert (=> b!1820040 m!2249051))

(declare-fun m!2249055 () Bool)

(assert (=> b!1820040 m!2249055))

(declare-fun m!2249057 () Bool)

(assert (=> b!1820046 m!2249057))

(declare-fun m!2249059 () Bool)

(assert (=> b!1820044 m!2249059))

(check-sat (not b_next!51135) (not start!180230) (not b!1820049) b_and!141085 b_and!141087 (not b!1820044) tp_is_empty!8065 b_and!141089 (not b_next!51143) b_and!141081 (not b!1820047) (not b!1820042) (not b_next!51139) (not b_next!51137) (not b!1820048) b_and!141083 (not b!1820041) (not b!1820045) (not b!1820043) (not b!1820040) (not b_next!51145) (not b_next!51141) b_and!141091 (not b!1820060) (not b!1820052) (not b!1820054) (not b!1820057) (not b!1820051) (not b!1820059) (not b!1820046) (not b!1820055))
(check-sat (not b_next!51135) b_and!141083 b_and!141085 b_and!141091 b_and!141087 b_and!141089 (not b_next!51143) b_and!141081 (not b_next!51139) (not b_next!51137) (not b_next!51145) (not b_next!51141))
