; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180350 () Bool)

(assert start!180350)

(declare-fun b!1821102 () Bool)

(declare-fun b_free!50535 () Bool)

(declare-fun b_next!51239 () Bool)

(assert (=> b!1821102 (= b_free!50535 (not b_next!51239))))

(declare-fun tp!514738 () Bool)

(declare-fun b_and!141221 () Bool)

(assert (=> b!1821102 (= tp!514738 b_and!141221)))

(declare-fun b_free!50537 () Bool)

(declare-fun b_next!51241 () Bool)

(assert (=> b!1821102 (= b_free!50537 (not b_next!51241))))

(declare-fun tp!514745 () Bool)

(declare-fun b_and!141223 () Bool)

(assert (=> b!1821102 (= tp!514745 b_and!141223)))

(declare-fun b!1821093 () Bool)

(declare-fun b_free!50539 () Bool)

(declare-fun b_next!51243 () Bool)

(assert (=> b!1821093 (= b_free!50539 (not b_next!51243))))

(declare-fun tp!514750 () Bool)

(declare-fun b_and!141225 () Bool)

(assert (=> b!1821093 (= tp!514750 b_and!141225)))

(declare-fun b_free!50541 () Bool)

(declare-fun b_next!51245 () Bool)

(assert (=> b!1821093 (= b_free!50541 (not b_next!51245))))

(declare-fun tp!514740 () Bool)

(declare-fun b_and!141227 () Bool)

(assert (=> b!1821093 (= tp!514740 b_and!141227)))

(declare-fun b!1821095 () Bool)

(declare-fun b_free!50543 () Bool)

(declare-fun b_next!51247 () Bool)

(assert (=> b!1821095 (= b_free!50543 (not b_next!51247))))

(declare-fun tp!514747 () Bool)

(declare-fun b_and!141229 () Bool)

(assert (=> b!1821095 (= tp!514747 b_and!141229)))

(declare-fun b_free!50545 () Bool)

(declare-fun b_next!51249 () Bool)

(assert (=> b!1821095 (= b_free!50545 (not b_next!51249))))

(declare-fun tp!514739 () Bool)

(declare-fun b_and!141231 () Bool)

(assert (=> b!1821095 (= tp!514739 b_and!141231)))

(declare-fun b!1821088 () Bool)

(declare-fun res!818949 () Bool)

(declare-fun e!1163741 () Bool)

(assert (=> b!1821088 (=> (not res!818949) (not e!1163741))))

(declare-datatypes ((List!20020 0))(
  ( (Nil!19950) (Cons!19950 (h!25351 (_ BitVec 16)) (t!169897 List!20020)) )
))
(declare-datatypes ((TokenValue!3685 0))(
  ( (FloatLiteralValue!7370 (text!26240 List!20020)) (TokenValueExt!3684 (__x!12672 Int)) (Broken!18425 (value!112098 List!20020)) (Object!3754) (End!3685) (Def!3685) (Underscore!3685) (Match!3685) (Else!3685) (Error!3685) (Case!3685) (If!3685) (Extends!3685) (Abstract!3685) (Class!3685) (Val!3685) (DelimiterValue!7370 (del!3745 List!20020)) (KeywordValue!3691 (value!112099 List!20020)) (CommentValue!7370 (value!112100 List!20020)) (WhitespaceValue!7370 (value!112101 List!20020)) (IndentationValue!3685 (value!112102 List!20020)) (String!22756) (Int32!3685) (Broken!18426 (value!112103 List!20020)) (Boolean!3686) (Unit!34628) (OperatorValue!3688 (op!3745 List!20020)) (IdentifierValue!7370 (value!112104 List!20020)) (IdentifierValue!7371 (value!112105 List!20020)) (WhitespaceValue!7371 (value!112106 List!20020)) (True!7370) (False!7370) (Broken!18427 (value!112107 List!20020)) (Broken!18428 (value!112108 List!20020)) (True!7371) (RightBrace!3685) (RightBracket!3685) (Colon!3685) (Null!3685) (Comma!3685) (LeftBracket!3685) (False!7371) (LeftBrace!3685) (ImaginaryLiteralValue!3685 (text!26241 List!20020)) (StringLiteralValue!11055 (value!112109 List!20020)) (EOFValue!3685 (value!112110 List!20020)) (IdentValue!3685 (value!112111 List!20020)) (DelimiterValue!7371 (value!112112 List!20020)) (DedentValue!3685 (value!112113 List!20020)) (NewLineValue!3685 (value!112114 List!20020)) (IntegerValue!11055 (value!112115 (_ BitVec 32)) (text!26242 List!20020)) (IntegerValue!11056 (value!112116 Int) (text!26243 List!20020)) (Times!3685) (Or!3685) (Equal!3685) (Minus!3685) (Broken!18429 (value!112117 List!20020)) (And!3685) (Div!3685) (LessEqual!3685) (Mod!3685) (Concat!8608) (Not!3685) (Plus!3685) (SpaceValue!3685 (value!112118 List!20020)) (IntegerValue!11057 (value!112119 Int) (text!26244 List!20020)) (StringLiteralValue!11056 (text!26245 List!20020)) (FloatLiteralValue!7371 (text!26246 List!20020)) (BytesLiteralValue!3685 (value!112120 List!20020)) (CommentValue!7371 (value!112121 List!20020)) (StringLiteralValue!11057 (value!112122 List!20020)) (ErrorTokenValue!3685 (msg!3746 List!20020)) )
))
(declare-datatypes ((C!10020 0))(
  ( (C!10021 (val!5606 Int)) )
))
(declare-datatypes ((List!20021 0))(
  ( (Nil!19951) (Cons!19951 (h!25352 C!10020) (t!169898 List!20021)) )
))
(declare-datatypes ((IArray!13259 0))(
  ( (IArray!13260 (innerList!6687 List!20021)) )
))
(declare-datatypes ((Conc!6627 0))(
  ( (Node!6627 (left!15974 Conc!6627) (right!16304 Conc!6627) (csize!13484 Int) (cheight!6838 Int)) (Leaf!9645 (xs!9503 IArray!13259) (csize!13485 Int)) (Empty!6627) )
))
(declare-datatypes ((BalanceConc!13198 0))(
  ( (BalanceConc!13199 (c!297180 Conc!6627)) )
))
(declare-datatypes ((TokenValueInjection!7030 0))(
  ( (TokenValueInjection!7031 (toValue!5130 Int) (toChars!4989 Int)) )
))
(declare-datatypes ((Regex!4923 0))(
  ( (ElementMatch!4923 (c!297181 C!10020)) (Concat!8609 (regOne!10358 Regex!4923) (regTwo!10358 Regex!4923)) (EmptyExpr!4923) (Star!4923 (reg!5252 Regex!4923)) (EmptyLang!4923) (Union!4923 (regOne!10359 Regex!4923) (regTwo!10359 Regex!4923)) )
))
(declare-datatypes ((String!22757 0))(
  ( (String!22758 (value!112123 String)) )
))
(declare-datatypes ((Rule!6990 0))(
  ( (Rule!6991 (regex!3595 Regex!4923) (tag!4009 String!22757) (isSeparator!3595 Bool) (transformation!3595 TokenValueInjection!7030)) )
))
(declare-datatypes ((List!20022 0))(
  ( (Nil!19952) (Cons!19952 (h!25353 Rule!6990) (t!169899 List!20022)) )
))
(declare-fun rules!4538 () List!20022)

(declare-fun isEmpty!12609 (List!20022) Bool)

(assert (=> b!1821088 (= res!818949 (not (isEmpty!12609 rules!4538)))))

(declare-fun b!1821089 () Bool)

(declare-fun res!818953 () Bool)

(declare-fun e!1163755 () Bool)

(assert (=> b!1821089 (=> res!818953 e!1163755)))

(declare-fun lt!707551 () Regex!4923)

(declare-datatypes ((List!20023 0))(
  ( (Nil!19953) (Cons!19953 (h!25354 Regex!4923) (t!169900 List!20023)) )
))
(declare-fun lt!707550 () List!20023)

(declare-fun generalisedUnion!450 (List!20023) Regex!4923)

(assert (=> b!1821089 (= res!818953 (not (= lt!707551 (generalisedUnion!450 lt!707550))))))

(declare-fun b!1821091 () Bool)

(declare-fun e!1163740 () Bool)

(assert (=> b!1821091 (= e!1163740 e!1163755)))

(declare-fun res!818958 () Bool)

(assert (=> b!1821091 (=> res!818958 e!1163755)))

(declare-fun rule!559 () Rule!6990)

(declare-fun contains!3638 (List!20023 Regex!4923) Bool)

(assert (=> b!1821091 (= res!818958 (not (contains!3638 lt!707550 (regex!3595 rule!559))))))

(declare-fun lambda!71293 () Int)

(declare-fun map!4123 (List!20022 Int) List!20023)

(assert (=> b!1821091 (= lt!707550 (map!4123 rules!4538 lambda!71293))))

(declare-fun suffix!1667 () List!20021)

(declare-datatypes ((Unit!34629 0))(
  ( (Unit!34630) )
))
(declare-fun lt!707545 () Unit!34629)

(declare-datatypes ((Token!6744 0))(
  ( (Token!6745 (value!112124 TokenValue!3685) (rule!5725 Rule!6990) (size!15833 Int) (originalCharacters!4403 List!20021)) )
))
(declare-fun token!556 () Token!6744)

(declare-fun input!3612 () List!20021)

(declare-datatypes ((LexerInterface!3224 0))(
  ( (LexerInterfaceExt!3221 (__x!12673 Int)) (Lexer!3222) )
))
(declare-fun thiss!28068 () LexerInterface!3224)

(declare-fun lemma!459 (List!20021 Rule!6990 List!20022 List!20021 LexerInterface!3224 Token!6744 List!20022) Unit!34629)

(assert (=> b!1821091 (= lt!707545 (lemma!459 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821092 () Bool)

(declare-fun res!818948 () Bool)

(assert (=> b!1821092 (=> (not res!818948) (not e!1163741))))

(declare-fun rulesInvariant!2893 (LexerInterface!3224 List!20022) Bool)

(assert (=> b!1821092 (= res!818948 (rulesInvariant!2893 thiss!28068 rules!4538))))

(declare-fun e!1163757 () Bool)

(assert (=> b!1821093 (= e!1163757 (and tp!514750 tp!514740))))

(declare-fun tp!514741 () Bool)

(declare-fun e!1163738 () Bool)

(declare-fun b!1821094 () Bool)

(declare-fun inv!25983 (String!22757) Bool)

(declare-fun inv!25986 (TokenValueInjection!7030) Bool)

(assert (=> b!1821094 (= e!1163738 (and tp!514741 (inv!25983 (tag!4009 (rule!5725 token!556))) (inv!25986 (transformation!3595 (rule!5725 token!556))) e!1163757))))

(declare-fun e!1163758 () Bool)

(assert (=> b!1821095 (= e!1163758 (and tp!514747 tp!514739))))

(declare-fun b!1821096 () Bool)

(declare-fun e!1163748 () Bool)

(declare-fun tp_is_empty!8081 () Bool)

(declare-fun tp!514742 () Bool)

(assert (=> b!1821096 (= e!1163748 (and tp_is_empty!8081 tp!514742))))

(declare-fun b!1821097 () Bool)

(declare-fun res!818955 () Bool)

(assert (=> b!1821097 (=> res!818955 e!1163755)))

(declare-fun lambda!71294 () Int)

(declare-fun forall!4307 (List!20023 Int) Bool)

(assert (=> b!1821097 (= res!818955 (not (forall!4307 lt!707550 lambda!71294)))))

(declare-fun b!1821098 () Bool)

(declare-fun e!1163752 () Bool)

(declare-fun e!1163753 () Bool)

(assert (=> b!1821098 (= e!1163752 e!1163753)))

(declare-fun res!818960 () Bool)

(assert (=> b!1821098 (=> res!818960 e!1163753)))

(declare-datatypes ((tuple2!19474 0))(
  ( (tuple2!19475 (_1!11139 Token!6744) (_2!11139 List!20021)) )
))
(declare-datatypes ((Option!4175 0))(
  ( (None!4174) (Some!4174 (v!25715 tuple2!19474)) )
))
(declare-fun lt!707552 () Option!4175)

(declare-fun lt!707546 () Option!4175)

(assert (=> b!1821098 (= res!818960 (not (= lt!707552 lt!707546)))))

(declare-fun lt!707554 () TokenValue!3685)

(declare-fun lt!707556 () Int)

(declare-fun lt!707548 () List!20021)

(assert (=> b!1821098 (= lt!707552 (Some!4174 (tuple2!19475 (Token!6745 lt!707554 rule!559 lt!707556 lt!707548) suffix!1667)))))

(declare-fun maxPrefixOneRule!1137 (LexerInterface!3224 Rule!6990 List!20021) Option!4175)

(assert (=> b!1821098 (= lt!707552 (maxPrefixOneRule!1137 thiss!28068 rule!559 input!3612))))

(declare-fun size!15834 (List!20021) Int)

(assert (=> b!1821098 (= lt!707556 (size!15834 lt!707548))))

(declare-fun apply!5387 (TokenValueInjection!7030 BalanceConc!13198) TokenValue!3685)

(declare-fun seqFromList!2556 (List!20021) BalanceConc!13198)

(assert (=> b!1821098 (= lt!707554 (apply!5387 (transformation!3595 rule!559) (seqFromList!2556 lt!707548)))))

(declare-fun lt!707549 () Unit!34629)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!513 (LexerInterface!3224 List!20022 List!20021 List!20021 List!20021 Rule!6990) Unit!34629)

(assert (=> b!1821098 (= lt!707549 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!513 thiss!28068 rules!4538 lt!707548 input!3612 suffix!1667 rule!559))))

(declare-fun tp!514744 () Bool)

(declare-fun e!1163739 () Bool)

(declare-fun e!1163746 () Bool)

(declare-fun b!1821099 () Bool)

(assert (=> b!1821099 (= e!1163739 (and tp!514744 (inv!25983 (tag!4009 rule!559)) (inv!25986 (transformation!3595 rule!559)) e!1163746))))

(declare-fun b!1821100 () Bool)

(assert (=> b!1821100 (= e!1163753 e!1163740)))

(declare-fun res!818959 () Bool)

(assert (=> b!1821100 (=> res!818959 e!1163740)))

(declare-fun lt!707553 () List!20023)

(assert (=> b!1821100 (= res!818959 (not (= lt!707551 (generalisedUnion!450 lt!707553))))))

(declare-fun rulesRegex!927 (LexerInterface!3224 List!20022) Regex!4923)

(assert (=> b!1821100 (= lt!707551 (rulesRegex!927 thiss!28068 rules!4538))))

(assert (=> b!1821100 (= lt!707553 (map!4123 rules!4538 lambda!71293))))

(declare-fun lt!707547 () Unit!34629)

(declare-fun lemma!460 (List!20021 Rule!6990 List!20022 List!20021 LexerInterface!3224 Token!6744 List!20022) Unit!34629)

(assert (=> b!1821100 (= lt!707547 (lemma!460 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821101 () Bool)

(declare-fun e!1163754 () Bool)

(declare-fun e!1163744 () Bool)

(assert (=> b!1821101 (= e!1163754 e!1163744)))

(declare-fun res!818952 () Bool)

(assert (=> b!1821101 (=> (not res!818952) (not e!1163744))))

(declare-fun ++!5419 (List!20021 List!20021) List!20021)

(assert (=> b!1821101 (= res!818952 (= input!3612 (++!5419 lt!707548 suffix!1667)))))

(declare-fun list!8111 (BalanceConc!13198) List!20021)

(declare-fun charsOf!2238 (Token!6744) BalanceConc!13198)

(assert (=> b!1821101 (= lt!707548 (list!8111 (charsOf!2238 token!556)))))

(assert (=> b!1821102 (= e!1163746 (and tp!514738 tp!514745))))

(declare-fun tp!514748 () Bool)

(declare-fun e!1163747 () Bool)

(declare-fun b!1821103 () Bool)

(declare-fun inv!21 (TokenValue!3685) Bool)

(assert (=> b!1821103 (= e!1163747 (and (inv!21 (value!112124 token!556)) e!1163738 tp!514748))))

(declare-fun b!1821104 () Bool)

(declare-fun e!1163743 () Bool)

(declare-fun e!1163756 () Bool)

(declare-fun tp!514749 () Bool)

(assert (=> b!1821104 (= e!1163743 (and e!1163756 tp!514749))))

(declare-fun b!1821105 () Bool)

(assert (=> b!1821105 (= e!1163741 e!1163754)))

(declare-fun res!818954 () Bool)

(assert (=> b!1821105 (=> (not res!818954) (not e!1163754))))

(declare-fun maxPrefix!1772 (LexerInterface!3224 List!20022 List!20021) Option!4175)

(assert (=> b!1821105 (= res!818954 (= (maxPrefix!1772 thiss!28068 rules!4538 input!3612) lt!707546))))

(assert (=> b!1821105 (= lt!707546 (Some!4174 (tuple2!19475 token!556 suffix!1667)))))

(declare-fun b!1821106 () Bool)

(declare-fun res!818957 () Bool)

(assert (=> b!1821106 (=> (not res!818957) (not e!1163741))))

(declare-fun contains!3639 (List!20022 Rule!6990) Bool)

(assert (=> b!1821106 (= res!818957 (contains!3639 rules!4538 rule!559))))

(declare-fun res!818950 () Bool)

(assert (=> start!180350 (=> (not res!818950) (not e!1163741))))

(get-info :version)

(assert (=> start!180350 (= res!818950 ((_ is Lexer!3222) thiss!28068))))

(assert (=> start!180350 e!1163741))

(assert (=> start!180350 e!1163748))

(assert (=> start!180350 true))

(assert (=> start!180350 e!1163743))

(declare-fun inv!25987 (Token!6744) Bool)

(assert (=> start!180350 (and (inv!25987 token!556) e!1163747)))

(assert (=> start!180350 e!1163739))

(declare-fun e!1163742 () Bool)

(assert (=> start!180350 e!1163742))

(declare-fun b!1821090 () Bool)

(assert (=> b!1821090 (= e!1163755 true)))

(declare-fun tp!514743 () Bool)

(declare-fun b!1821107 () Bool)

(assert (=> b!1821107 (= e!1163756 (and tp!514743 (inv!25983 (tag!4009 (h!25353 rules!4538))) (inv!25986 (transformation!3595 (h!25353 rules!4538))) e!1163758))))

(declare-fun b!1821108 () Bool)

(declare-fun res!818956 () Bool)

(assert (=> b!1821108 (=> (not res!818956) (not e!1163754))))

(assert (=> b!1821108 (= res!818956 (= (rule!5725 token!556) rule!559))))

(declare-fun b!1821109 () Bool)

(assert (=> b!1821109 (= e!1163744 (not e!1163752))))

(declare-fun res!818951 () Bool)

(assert (=> b!1821109 (=> res!818951 e!1163752)))

(declare-fun matchR!2388 (Regex!4923 List!20021) Bool)

(assert (=> b!1821109 (= res!818951 (not (matchR!2388 (regex!3595 rule!559) lt!707548)))))

(declare-fun ruleValid!1087 (LexerInterface!3224 Rule!6990) Bool)

(assert (=> b!1821109 (ruleValid!1087 thiss!28068 rule!559)))

(declare-fun lt!707555 () Unit!34629)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!608 (LexerInterface!3224 Rule!6990 List!20022) Unit!34629)

(assert (=> b!1821109 (= lt!707555 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!608 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1821110 () Bool)

(declare-fun tp!514746 () Bool)

(assert (=> b!1821110 (= e!1163742 (and tp_is_empty!8081 tp!514746))))

(assert (= (and start!180350 res!818950) b!1821088))

(assert (= (and b!1821088 res!818949) b!1821092))

(assert (= (and b!1821092 res!818948) b!1821106))

(assert (= (and b!1821106 res!818957) b!1821105))

(assert (= (and b!1821105 res!818954) b!1821108))

(assert (= (and b!1821108 res!818956) b!1821101))

(assert (= (and b!1821101 res!818952) b!1821109))

(assert (= (and b!1821109 (not res!818951)) b!1821098))

(assert (= (and b!1821098 (not res!818960)) b!1821100))

(assert (= (and b!1821100 (not res!818959)) b!1821091))

(assert (= (and b!1821091 (not res!818958)) b!1821097))

(assert (= (and b!1821097 (not res!818955)) b!1821089))

(assert (= (and b!1821089 (not res!818953)) b!1821090))

(assert (= (and start!180350 ((_ is Cons!19951) suffix!1667)) b!1821096))

(assert (= b!1821107 b!1821095))

(assert (= b!1821104 b!1821107))

(assert (= (and start!180350 ((_ is Cons!19952) rules!4538)) b!1821104))

(assert (= b!1821094 b!1821093))

(assert (= b!1821103 b!1821094))

(assert (= start!180350 b!1821103))

(assert (= b!1821099 b!1821102))

(assert (= start!180350 b!1821099))

(assert (= (and start!180350 ((_ is Cons!19951) input!3612)) b!1821110))

(declare-fun m!2249959 () Bool)

(assert (=> b!1821092 m!2249959))

(declare-fun m!2249961 () Bool)

(assert (=> b!1821100 m!2249961))

(declare-fun m!2249963 () Bool)

(assert (=> b!1821100 m!2249963))

(declare-fun m!2249965 () Bool)

(assert (=> b!1821100 m!2249965))

(declare-fun m!2249967 () Bool)

(assert (=> b!1821100 m!2249967))

(declare-fun m!2249969 () Bool)

(assert (=> b!1821088 m!2249969))

(declare-fun m!2249971 () Bool)

(assert (=> b!1821097 m!2249971))

(declare-fun m!2249973 () Bool)

(assert (=> b!1821094 m!2249973))

(declare-fun m!2249975 () Bool)

(assert (=> b!1821094 m!2249975))

(declare-fun m!2249977 () Bool)

(assert (=> b!1821106 m!2249977))

(declare-fun m!2249979 () Bool)

(assert (=> b!1821105 m!2249979))

(declare-fun m!2249981 () Bool)

(assert (=> b!1821099 m!2249981))

(declare-fun m!2249983 () Bool)

(assert (=> b!1821099 m!2249983))

(declare-fun m!2249985 () Bool)

(assert (=> b!1821107 m!2249985))

(declare-fun m!2249987 () Bool)

(assert (=> b!1821107 m!2249987))

(declare-fun m!2249989 () Bool)

(assert (=> b!1821091 m!2249989))

(assert (=> b!1821091 m!2249965))

(declare-fun m!2249991 () Bool)

(assert (=> b!1821091 m!2249991))

(declare-fun m!2249993 () Bool)

(assert (=> b!1821089 m!2249993))

(declare-fun m!2249995 () Bool)

(assert (=> b!1821103 m!2249995))

(declare-fun m!2249997 () Bool)

(assert (=> b!1821098 m!2249997))

(declare-fun m!2249999 () Bool)

(assert (=> b!1821098 m!2249999))

(declare-fun m!2250001 () Bool)

(assert (=> b!1821098 m!2250001))

(assert (=> b!1821098 m!2249997))

(declare-fun m!2250003 () Bool)

(assert (=> b!1821098 m!2250003))

(declare-fun m!2250005 () Bool)

(assert (=> b!1821098 m!2250005))

(declare-fun m!2250007 () Bool)

(assert (=> start!180350 m!2250007))

(declare-fun m!2250009 () Bool)

(assert (=> b!1821101 m!2250009))

(declare-fun m!2250011 () Bool)

(assert (=> b!1821101 m!2250011))

(assert (=> b!1821101 m!2250011))

(declare-fun m!2250013 () Bool)

(assert (=> b!1821101 m!2250013))

(declare-fun m!2250015 () Bool)

(assert (=> b!1821109 m!2250015))

(declare-fun m!2250017 () Bool)

(assert (=> b!1821109 m!2250017))

(declare-fun m!2250019 () Bool)

(assert (=> b!1821109 m!2250019))

(check-sat (not b!1821094) b_and!141231 (not b!1821099) b_and!141227 b_and!141225 (not b!1821101) (not b_next!51245) (not b!1821092) tp_is_empty!8081 (not b_next!51239) (not b!1821089) (not b!1821109) (not start!180350) (not b!1821098) b_and!141229 (not b!1821106) (not b!1821088) (not b!1821100) (not b!1821097) (not b_next!51249) (not b!1821105) (not b_next!51241) (not b!1821091) (not b!1821103) b_and!141223 (not b_next!51243) b_and!141221 (not b!1821104) (not b!1821107) (not b_next!51247) (not b!1821096) (not b!1821110))
(check-sat (not b_next!51245) (not b_next!51239) b_and!141231 b_and!141227 b_and!141229 b_and!141225 (not b_next!51249) (not b_next!51241) b_and!141221 (not b_next!51247) b_and!141223 (not b_next!51243))
