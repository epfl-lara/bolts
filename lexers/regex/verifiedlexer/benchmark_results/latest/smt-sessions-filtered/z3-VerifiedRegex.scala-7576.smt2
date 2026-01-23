; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399826 () Bool)

(assert start!399826)

(declare-fun b!4189686 () Bool)

(declare-fun b_free!121959 () Bool)

(declare-fun b_next!122663 () Bool)

(assert (=> b!4189686 (= b_free!121959 (not b_next!122663))))

(declare-fun tp!1280276 () Bool)

(declare-fun b_and!328241 () Bool)

(assert (=> b!4189686 (= tp!1280276 b_and!328241)))

(declare-fun b_free!121961 () Bool)

(declare-fun b_next!122665 () Bool)

(assert (=> b!4189686 (= b_free!121961 (not b_next!122665))))

(declare-fun tp!1280283 () Bool)

(declare-fun b_and!328243 () Bool)

(assert (=> b!4189686 (= tp!1280283 b_and!328243)))

(declare-fun b!4189710 () Bool)

(declare-fun b_free!121963 () Bool)

(declare-fun b_next!122667 () Bool)

(assert (=> b!4189710 (= b_free!121963 (not b_next!122667))))

(declare-fun tp!1280287 () Bool)

(declare-fun b_and!328245 () Bool)

(assert (=> b!4189710 (= tp!1280287 b_and!328245)))

(declare-fun b_free!121965 () Bool)

(declare-fun b_next!122669 () Bool)

(assert (=> b!4189710 (= b_free!121965 (not b_next!122669))))

(declare-fun tp!1280284 () Bool)

(declare-fun b_and!328247 () Bool)

(assert (=> b!4189710 (= tp!1280284 b_and!328247)))

(declare-fun b!4189683 () Bool)

(declare-fun b_free!121967 () Bool)

(declare-fun b_next!122671 () Bool)

(assert (=> b!4189683 (= b_free!121967 (not b_next!122671))))

(declare-fun tp!1280286 () Bool)

(declare-fun b_and!328249 () Bool)

(assert (=> b!4189683 (= tp!1280286 b_and!328249)))

(declare-fun b_free!121969 () Bool)

(declare-fun b_next!122673 () Bool)

(assert (=> b!4189683 (= b_free!121969 (not b_next!122673))))

(declare-fun tp!1280277 () Bool)

(declare-fun b_and!328251 () Bool)

(assert (=> b!4189683 (= tp!1280277 b_and!328251)))

(declare-fun b!4189681 () Bool)

(declare-fun res!1719143 () Bool)

(declare-fun e!2600881 () Bool)

(assert (=> b!4189681 (=> (not res!1719143) (not e!2600881))))

(declare-datatypes ((C!25336 0))(
  ( (C!25337 (val!14830 Int)) )
))
(declare-datatypes ((List!46135 0))(
  ( (Nil!46011) (Cons!46011 (h!51431 C!25336) (t!345874 List!46135)) )
))
(declare-fun pBis!107 () List!46135)

(declare-fun input!3342 () List!46135)

(declare-fun isPrefix!4525 (List!46135 List!46135) Bool)

(assert (=> b!4189681 (= res!1719143 (isPrefix!4525 pBis!107 input!3342))))

(declare-fun b!4189682 () Bool)

(declare-fun e!2600867 () Bool)

(declare-fun e!2600870 () Bool)

(assert (=> b!4189682 (= e!2600867 e!2600870)))

(declare-fun res!1719152 () Bool)

(assert (=> b!4189682 (=> res!1719152 e!2600870)))

(declare-fun lt!1492248 () List!46135)

(assert (=> b!4189682 (= res!1719152 (= lt!1492248 pBis!107))))

(declare-fun lt!1492246 () List!46135)

(assert (=> b!4189682 (isPrefix!4525 lt!1492248 lt!1492246)))

(declare-datatypes ((List!46136 0))(
  ( (Nil!46012) (Cons!46012 (h!51432 (_ BitVec 16)) (t!345875 List!46136)) )
))
(declare-datatypes ((TokenValue!7898 0))(
  ( (FloatLiteralValue!15796 (text!55731 List!46136)) (TokenValueExt!7897 (__x!28017 Int)) (Broken!39490 (value!239044 List!46136)) (Object!8021) (End!7898) (Def!7898) (Underscore!7898) (Match!7898) (Else!7898) (Error!7898) (Case!7898) (If!7898) (Extends!7898) (Abstract!7898) (Class!7898) (Val!7898) (DelimiterValue!15796 (del!7958 List!46136)) (KeywordValue!7904 (value!239045 List!46136)) (CommentValue!15796 (value!239046 List!46136)) (WhitespaceValue!15796 (value!239047 List!46136)) (IndentationValue!7898 (value!239048 List!46136)) (String!53355) (Int32!7898) (Broken!39491 (value!239049 List!46136)) (Boolean!7899) (Unit!65094) (OperatorValue!7901 (op!7958 List!46136)) (IdentifierValue!15796 (value!239050 List!46136)) (IdentifierValue!15797 (value!239051 List!46136)) (WhitespaceValue!15797 (value!239052 List!46136)) (True!15796) (False!15796) (Broken!39492 (value!239053 List!46136)) (Broken!39493 (value!239054 List!46136)) (True!15797) (RightBrace!7898) (RightBracket!7898) (Colon!7898) (Null!7898) (Comma!7898) (LeftBracket!7898) (False!15797) (LeftBrace!7898) (ImaginaryLiteralValue!7898 (text!55732 List!46136)) (StringLiteralValue!23694 (value!239055 List!46136)) (EOFValue!7898 (value!239056 List!46136)) (IdentValue!7898 (value!239057 List!46136)) (DelimiterValue!15797 (value!239058 List!46136)) (DedentValue!7898 (value!239059 List!46136)) (NewLineValue!7898 (value!239060 List!46136)) (IntegerValue!23694 (value!239061 (_ BitVec 32)) (text!55733 List!46136)) (IntegerValue!23695 (value!239062 Int) (text!55734 List!46136)) (Times!7898) (Or!7898) (Equal!7898) (Minus!7898) (Broken!39494 (value!239063 List!46136)) (And!7898) (Div!7898) (LessEqual!7898) (Mod!7898) (Concat!20471) (Not!7898) (Plus!7898) (SpaceValue!7898 (value!239064 List!46136)) (IntegerValue!23696 (value!239065 Int) (text!55735 List!46136)) (StringLiteralValue!23695 (text!55736 List!46136)) (FloatLiteralValue!15797 (text!55737 List!46136)) (BytesLiteralValue!7898 (value!239066 List!46136)) (CommentValue!15797 (value!239067 List!46136)) (StringLiteralValue!23696 (value!239068 List!46136)) (ErrorTokenValue!7898 (msg!7959 List!46136)) )
))
(declare-datatypes ((Regex!12573 0))(
  ( (ElementMatch!12573 (c!714964 C!25336)) (Concat!20472 (regOne!25658 Regex!12573) (regTwo!25658 Regex!12573)) (EmptyExpr!12573) (Star!12573 (reg!12902 Regex!12573)) (EmptyLang!12573) (Union!12573 (regOne!25659 Regex!12573) (regTwo!25659 Regex!12573)) )
))
(declare-datatypes ((String!53356 0))(
  ( (String!53357 (value!239069 String)) )
))
(declare-datatypes ((IArray!27763 0))(
  ( (IArray!27764 (innerList!13939 List!46135)) )
))
(declare-datatypes ((Conc!13879 0))(
  ( (Node!13879 (left!34275 Conc!13879) (right!34605 Conc!13879) (csize!27988 Int) (cheight!14090 Int)) (Leaf!21456 (xs!17185 IArray!27763) (csize!27989 Int)) (Empty!13879) )
))
(declare-datatypes ((BalanceConc!27352 0))(
  ( (BalanceConc!27353 (c!714965 Conc!13879)) )
))
(declare-datatypes ((TokenValueInjection!15224 0))(
  ( (TokenValueInjection!15225 (toValue!10364 Int) (toChars!10223 Int)) )
))
(declare-datatypes ((Rule!15136 0))(
  ( (Rule!15137 (regex!7668 Regex!12573) (tag!8532 String!53356) (isSeparator!7668 Bool) (transformation!7668 TokenValueInjection!15224)) )
))
(declare-datatypes ((Token!14050 0))(
  ( (Token!14051 (value!239070 TokenValue!7898) (rule!10748 Rule!15136) (size!33799 Int) (originalCharacters!8056 List!46135)) )
))
(declare-datatypes ((tuple2!43810 0))(
  ( (tuple2!43811 (_1!25039 Token!14050) (_2!25039 List!46135)) )
))
(declare-fun lt!1492245 () tuple2!43810)

(declare-fun ++!11740 (List!46135 List!46135) List!46135)

(assert (=> b!4189682 (= lt!1492246 (++!11740 lt!1492248 (_2!25039 lt!1492245)))))

(declare-datatypes ((Unit!65095 0))(
  ( (Unit!65096) )
))
(declare-fun lt!1492244 () Unit!65095)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3022 (List!46135 List!46135) Unit!65095)

(assert (=> b!4189682 (= lt!1492244 (lemmaConcatTwoListThenFirstIsPrefix!3022 lt!1492248 (_2!25039 lt!1492245)))))

(declare-fun lt!1492241 () BalanceConc!27352)

(declare-fun list!16624 (BalanceConc!27352) List!46135)

(assert (=> b!4189682 (= lt!1492248 (list!16624 lt!1492241))))

(declare-fun charsOf!5103 (Token!14050) BalanceConc!27352)

(assert (=> b!4189682 (= lt!1492241 (charsOf!5103 (_1!25039 lt!1492245)))))

(declare-datatypes ((Option!9862 0))(
  ( (None!9861) (Some!9861 (v!40689 tuple2!43810)) )
))
(declare-fun lt!1492238 () Option!9862)

(declare-fun get!14961 (Option!9862) tuple2!43810)

(assert (=> b!4189682 (= lt!1492245 (get!14961 lt!1492238))))

(declare-fun e!2600868 () Bool)

(assert (=> b!4189683 (= e!2600868 (and tp!1280286 tp!1280277))))

(declare-fun b!4189684 () Bool)

(declare-fun rBis!167 () Rule!15136)

(declare-fun validRegex!5690 (Regex!12573) Bool)

(assert (=> b!4189684 (= e!2600870 (validRegex!5690 (regex!7668 rBis!167)))))

(declare-fun e!2600874 () Bool)

(assert (=> b!4189686 (= e!2600874 (and tp!1280276 tp!1280283))))

(declare-fun b!4189687 () Bool)

(declare-fun res!1719148 () Bool)

(declare-fun e!2600875 () Bool)

(assert (=> b!4189687 (=> res!1719148 e!2600875)))

(declare-fun lt!1492239 () Option!9862)

(declare-datatypes ((LexerInterface!7261 0))(
  ( (LexerInterfaceExt!7258 (__x!28018 Int)) (Lexer!7259) )
))
(declare-fun thiss!25986 () LexerInterface!7261)

(declare-datatypes ((List!46137 0))(
  ( (Nil!46013) (Cons!46013 (h!51433 Rule!15136) (t!345876 List!46137)) )
))
(declare-fun rules!3843 () List!46137)

(declare-fun maxPrefix!4309 (LexerInterface!7261 List!46137 List!46135) Option!9862)

(assert (=> b!4189687 (= res!1719148 (not (= (maxPrefix!4309 thiss!25986 rules!3843 input!3342) lt!1492239)))))

(declare-fun b!4189688 () Bool)

(declare-fun res!1719144 () Bool)

(assert (=> b!4189688 (=> res!1719144 e!2600875)))

(declare-fun ruleValid!3386 (LexerInterface!7261 Rule!15136) Bool)

(assert (=> b!4189688 (= res!1719144 (not (ruleValid!3386 thiss!25986 rBis!167)))))

(declare-fun b!4189689 () Bool)

(declare-fun res!1719154 () Bool)

(assert (=> b!4189689 (=> (not res!1719154) (not e!2600881))))

(declare-fun r!4142 () Rule!15136)

(declare-fun p!2959 () List!46135)

(declare-fun matchR!6312 (Regex!12573 List!46135) Bool)

(assert (=> b!4189689 (= res!1719154 (matchR!6312 (regex!7668 r!4142) p!2959))))

(declare-fun b!4189690 () Bool)

(declare-fun res!1719137 () Bool)

(assert (=> b!4189690 (=> res!1719137 e!2600870)))

(declare-fun lt!1492247 () Int)

(declare-fun size!33800 (BalanceConc!27352) Int)

(assert (=> b!4189690 (= res!1719137 (>= (size!33800 lt!1492241) lt!1492247))))

(declare-fun e!2600883 () Bool)

(declare-fun e!2600880 () Bool)

(declare-fun b!4189691 () Bool)

(declare-fun tp!1280288 () Bool)

(declare-fun inv!60558 (String!53356) Bool)

(declare-fun inv!60560 (TokenValueInjection!15224) Bool)

(assert (=> b!4189691 (= e!2600880 (and tp!1280288 (inv!60558 (tag!8532 (h!51433 rules!3843))) (inv!60560 (transformation!7668 (h!51433 rules!3843))) e!2600883))))

(declare-fun b!4189692 () Bool)

(declare-fun res!1719140 () Bool)

(assert (=> b!4189692 (=> (not res!1719140) (not e!2600881))))

(assert (=> b!4189692 (= res!1719140 (ruleValid!3386 thiss!25986 r!4142))))

(declare-fun b!4189693 () Bool)

(declare-fun e!2600873 () Bool)

(assert (=> b!4189693 (= e!2600881 (not e!2600873))))

(declare-fun res!1719139 () Bool)

(assert (=> b!4189693 (=> res!1719139 e!2600873)))

(declare-fun maxPrefixOneRule!3270 (LexerInterface!7261 Rule!15136 List!46135) Option!9862)

(assert (=> b!4189693 (= res!1719139 (not (= (maxPrefixOneRule!3270 thiss!25986 r!4142 input!3342) lt!1492239)))))

(declare-fun lt!1492242 () Int)

(declare-fun lt!1492252 () TokenValue!7898)

(declare-fun getSuffix!2818 (List!46135 List!46135) List!46135)

(assert (=> b!4189693 (= lt!1492239 (Some!9861 (tuple2!43811 (Token!14051 lt!1492252 r!4142 lt!1492242 p!2959) (getSuffix!2818 input!3342 p!2959))))))

(declare-fun size!33801 (List!46135) Int)

(assert (=> b!4189693 (= lt!1492242 (size!33801 p!2959))))

(declare-fun lt!1492250 () BalanceConc!27352)

(declare-fun apply!10633 (TokenValueInjection!15224 BalanceConc!27352) TokenValue!7898)

(assert (=> b!4189693 (= lt!1492252 (apply!10633 (transformation!7668 r!4142) lt!1492250))))

(assert (=> b!4189693 (isPrefix!4525 input!3342 input!3342)))

(declare-fun lt!1492240 () Unit!65095)

(declare-fun lemmaIsPrefixRefl!2954 (List!46135 List!46135) Unit!65095)

(assert (=> b!4189693 (= lt!1492240 (lemmaIsPrefixRefl!2954 input!3342 input!3342))))

(declare-fun lt!1492251 () Unit!65095)

(declare-fun lemmaSemiInverse!2434 (TokenValueInjection!15224 BalanceConc!27352) Unit!65095)

(assert (=> b!4189693 (= lt!1492251 (lemmaSemiInverse!2434 (transformation!7668 r!4142) lt!1492250))))

(declare-fun seqFromList!5693 (List!46135) BalanceConc!27352)

(assert (=> b!4189693 (= lt!1492250 (seqFromList!5693 p!2959))))

(declare-fun b!4189694 () Bool)

(declare-fun e!2600878 () Bool)

(declare-fun tp_is_empty!22109 () Bool)

(declare-fun tp!1280285 () Bool)

(assert (=> b!4189694 (= e!2600878 (and tp_is_empty!22109 tp!1280285))))

(declare-fun b!4189695 () Bool)

(declare-fun res!1719141 () Bool)

(assert (=> b!4189695 (=> (not res!1719141) (not e!2600881))))

(assert (=> b!4189695 (= res!1719141 (validRegex!5690 (regex!7668 r!4142)))))

(declare-fun b!4189696 () Bool)

(declare-fun res!1719145 () Bool)

(assert (=> b!4189696 (=> res!1719145 e!2600870)))

(assert (=> b!4189696 (= res!1719145 (not (isPrefix!4525 lt!1492248 input!3342)))))

(declare-fun b!4189697 () Bool)

(declare-fun res!1719135 () Bool)

(assert (=> b!4189697 (=> (not res!1719135) (not e!2600881))))

(declare-fun contains!9477 (List!46137 Rule!15136) Bool)

(assert (=> b!4189697 (= res!1719135 (contains!9477 rules!3843 rBis!167))))

(declare-fun b!4189698 () Bool)

(assert (=> b!4189698 (= e!2600875 e!2600867)))

(declare-fun res!1719142 () Bool)

(assert (=> b!4189698 (=> res!1719142 e!2600867)))

(declare-fun isEmpty!27238 (Option!9862) Bool)

(assert (=> b!4189698 (= res!1719142 (isEmpty!27238 lt!1492238))))

(assert (=> b!4189698 (= lt!1492238 (maxPrefixOneRule!3270 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1492249 () Unit!65095)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2392 (LexerInterface!7261 Rule!15136 List!46137) Unit!65095)

(assert (=> b!4189698 (= lt!1492249 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2392 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4189698 (<= lt!1492247 (size!33801 input!3342))))

(declare-fun lt!1492243 () Unit!65095)

(declare-fun lemmaIsPrefixThenSmallerEqSize!555 (List!46135 List!46135) Unit!65095)

(assert (=> b!4189698 (= lt!1492243 (lemmaIsPrefixThenSmallerEqSize!555 pBis!107 input!3342))))

(declare-fun e!2600877 () Bool)

(declare-fun tp!1280282 () Bool)

(declare-fun b!4189699 () Bool)

(assert (=> b!4189699 (= e!2600877 (and tp!1280282 (inv!60558 (tag!8532 r!4142)) (inv!60560 (transformation!7668 r!4142)) e!2600868))))

(declare-fun b!4189700 () Bool)

(declare-fun e!2600871 () Bool)

(declare-fun tp!1280281 () Bool)

(assert (=> b!4189700 (= e!2600871 (and tp_is_empty!22109 tp!1280281))))

(declare-fun b!4189701 () Bool)

(declare-fun res!1719151 () Bool)

(assert (=> b!4189701 (=> (not res!1719151) (not e!2600881))))

(declare-fun rulesInvariant!6474 (LexerInterface!7261 List!46137) Bool)

(assert (=> b!4189701 (= res!1719151 (rulesInvariant!6474 thiss!25986 rules!3843))))

(declare-fun b!4189702 () Bool)

(assert (=> b!4189702 (= e!2600873 e!2600875)))

(declare-fun res!1719136 () Bool)

(assert (=> b!4189702 (=> res!1719136 e!2600875)))

(assert (=> b!4189702 (= res!1719136 (<= lt!1492247 lt!1492242))))

(assert (=> b!4189702 (= lt!1492247 (size!33801 pBis!107))))

(declare-fun e!2600879 () Bool)

(declare-fun tp!1280279 () Bool)

(declare-fun b!4189703 () Bool)

(assert (=> b!4189703 (= e!2600879 (and tp!1280279 (inv!60558 (tag!8532 rBis!167)) (inv!60560 (transformation!7668 rBis!167)) e!2600874))))

(declare-fun b!4189704 () Bool)

(declare-fun res!1719150 () Bool)

(assert (=> b!4189704 (=> res!1719150 e!2600870)))

(assert (=> b!4189704 (= res!1719150 (not (= lt!1492246 input!3342)))))

(declare-fun b!4189705 () Bool)

(declare-fun res!1719149 () Bool)

(assert (=> b!4189705 (=> res!1719149 e!2600870)))

(assert (=> b!4189705 (= res!1719149 (<= lt!1492247 (size!33801 lt!1492248)))))

(declare-fun b!4189706 () Bool)

(declare-fun res!1719153 () Bool)

(assert (=> b!4189706 (=> (not res!1719153) (not e!2600881))))

(declare-fun isEmpty!27239 (List!46137) Bool)

(assert (=> b!4189706 (= res!1719153 (not (isEmpty!27239 rules!3843)))))

(declare-fun b!4189707 () Bool)

(declare-fun res!1719138 () Bool)

(assert (=> b!4189707 (=> (not res!1719138) (not e!2600881))))

(assert (=> b!4189707 (= res!1719138 (contains!9477 rules!3843 r!4142))))

(declare-fun b!4189685 () Bool)

(declare-fun res!1719146 () Bool)

(assert (=> b!4189685 (=> (not res!1719146) (not e!2600881))))

(assert (=> b!4189685 (= res!1719146 (isPrefix!4525 p!2959 input!3342))))

(declare-fun res!1719147 () Bool)

(assert (=> start!399826 (=> (not res!1719147) (not e!2600881))))

(get-info :version)

(assert (=> start!399826 (= res!1719147 ((_ is Lexer!7259) thiss!25986))))

(assert (=> start!399826 e!2600881))

(assert (=> start!399826 true))

(assert (=> start!399826 e!2600879))

(assert (=> start!399826 e!2600877))

(declare-fun e!2600869 () Bool)

(assert (=> start!399826 e!2600869))

(assert (=> start!399826 e!2600878))

(assert (=> start!399826 e!2600871))

(declare-fun e!2600882 () Bool)

(assert (=> start!399826 e!2600882))

(declare-fun b!4189708 () Bool)

(declare-fun tp!1280278 () Bool)

(assert (=> b!4189708 (= e!2600869 (and e!2600880 tp!1280278))))

(declare-fun b!4189709 () Bool)

(declare-fun tp!1280280 () Bool)

(assert (=> b!4189709 (= e!2600882 (and tp_is_empty!22109 tp!1280280))))

(assert (=> b!4189710 (= e!2600883 (and tp!1280287 tp!1280284))))

(assert (= (and start!399826 res!1719147) b!4189685))

(assert (= (and b!4189685 res!1719146) b!4189681))

(assert (= (and b!4189681 res!1719143) b!4189706))

(assert (= (and b!4189706 res!1719153) b!4189701))

(assert (= (and b!4189701 res!1719151) b!4189707))

(assert (= (and b!4189707 res!1719138) b!4189697))

(assert (= (and b!4189697 res!1719135) b!4189695))

(assert (= (and b!4189695 res!1719141) b!4189689))

(assert (= (and b!4189689 res!1719154) b!4189692))

(assert (= (and b!4189692 res!1719140) b!4189693))

(assert (= (and b!4189693 (not res!1719139)) b!4189702))

(assert (= (and b!4189702 (not res!1719136)) b!4189688))

(assert (= (and b!4189688 (not res!1719144)) b!4189687))

(assert (= (and b!4189687 (not res!1719148)) b!4189698))

(assert (= (and b!4189698 (not res!1719142)) b!4189682))

(assert (= (and b!4189682 (not res!1719152)) b!4189690))

(assert (= (and b!4189690 (not res!1719137)) b!4189696))

(assert (= (and b!4189696 (not res!1719145)) b!4189704))

(assert (= (and b!4189704 (not res!1719150)) b!4189705))

(assert (= (and b!4189705 (not res!1719149)) b!4189684))

(assert (= b!4189703 b!4189686))

(assert (= start!399826 b!4189703))

(assert (= b!4189699 b!4189683))

(assert (= start!399826 b!4189699))

(assert (= b!4189691 b!4189710))

(assert (= b!4189708 b!4189691))

(assert (= (and start!399826 ((_ is Cons!46013) rules!3843)) b!4189708))

(assert (= (and start!399826 ((_ is Cons!46011) input!3342)) b!4189694))

(assert (= (and start!399826 ((_ is Cons!46011) pBis!107)) b!4189700))

(assert (= (and start!399826 ((_ is Cons!46011) p!2959)) b!4189709))

(declare-fun m!4778517 () Bool)

(assert (=> b!4189702 m!4778517))

(declare-fun m!4778519 () Bool)

(assert (=> b!4189685 m!4778519))

(declare-fun m!4778521 () Bool)

(assert (=> b!4189701 m!4778521))

(declare-fun m!4778523 () Bool)

(assert (=> b!4189703 m!4778523))

(declare-fun m!4778525 () Bool)

(assert (=> b!4189703 m!4778525))

(declare-fun m!4778527 () Bool)

(assert (=> b!4189695 m!4778527))

(declare-fun m!4778529 () Bool)

(assert (=> b!4189698 m!4778529))

(declare-fun m!4778531 () Bool)

(assert (=> b!4189698 m!4778531))

(declare-fun m!4778533 () Bool)

(assert (=> b!4189698 m!4778533))

(declare-fun m!4778535 () Bool)

(assert (=> b!4189698 m!4778535))

(declare-fun m!4778537 () Bool)

(assert (=> b!4189698 m!4778537))

(declare-fun m!4778539 () Bool)

(assert (=> b!4189705 m!4778539))

(declare-fun m!4778541 () Bool)

(assert (=> b!4189706 m!4778541))

(declare-fun m!4778543 () Bool)

(assert (=> b!4189688 m!4778543))

(declare-fun m!4778545 () Bool)

(assert (=> b!4189699 m!4778545))

(declare-fun m!4778547 () Bool)

(assert (=> b!4189699 m!4778547))

(declare-fun m!4778549 () Bool)

(assert (=> b!4189697 m!4778549))

(declare-fun m!4778551 () Bool)

(assert (=> b!4189696 m!4778551))

(declare-fun m!4778553 () Bool)

(assert (=> b!4189682 m!4778553))

(declare-fun m!4778555 () Bool)

(assert (=> b!4189682 m!4778555))

(declare-fun m!4778557 () Bool)

(assert (=> b!4189682 m!4778557))

(declare-fun m!4778559 () Bool)

(assert (=> b!4189682 m!4778559))

(declare-fun m!4778561 () Bool)

(assert (=> b!4189682 m!4778561))

(declare-fun m!4778563 () Bool)

(assert (=> b!4189682 m!4778563))

(declare-fun m!4778565 () Bool)

(assert (=> b!4189692 m!4778565))

(declare-fun m!4778567 () Bool)

(assert (=> b!4189684 m!4778567))

(declare-fun m!4778569 () Bool)

(assert (=> b!4189689 m!4778569))

(declare-fun m!4778571 () Bool)

(assert (=> b!4189681 m!4778571))

(declare-fun m!4778573 () Bool)

(assert (=> b!4189691 m!4778573))

(declare-fun m!4778575 () Bool)

(assert (=> b!4189691 m!4778575))

(declare-fun m!4778577 () Bool)

(assert (=> b!4189687 m!4778577))

(declare-fun m!4778579 () Bool)

(assert (=> b!4189690 m!4778579))

(declare-fun m!4778581 () Bool)

(assert (=> b!4189707 m!4778581))

(declare-fun m!4778583 () Bool)

(assert (=> b!4189693 m!4778583))

(declare-fun m!4778585 () Bool)

(assert (=> b!4189693 m!4778585))

(declare-fun m!4778587 () Bool)

(assert (=> b!4189693 m!4778587))

(declare-fun m!4778589 () Bool)

(assert (=> b!4189693 m!4778589))

(declare-fun m!4778591 () Bool)

(assert (=> b!4189693 m!4778591))

(declare-fun m!4778593 () Bool)

(assert (=> b!4189693 m!4778593))

(declare-fun m!4778595 () Bool)

(assert (=> b!4189693 m!4778595))

(declare-fun m!4778597 () Bool)

(assert (=> b!4189693 m!4778597))

(check-sat b_and!328245 (not b!4189702) (not b_next!122671) (not b!4189701) b_and!328251 (not b!4189693) (not b_next!122669) (not b!4189696) tp_is_empty!22109 (not b!4189689) (not b!4189709) (not b_next!122665) (not b!4189698) (not b!4189705) b_and!328243 (not b_next!122667) (not b!4189707) b_and!328249 (not b!4189692) (not b!4189684) b_and!328241 (not b!4189700) (not b!4189697) (not b!4189706) (not b!4189699) (not b!4189695) (not b_next!122663) (not b_next!122673) (not b!4189681) (not b!4189703) (not b!4189685) (not b!4189690) (not b!4189708) (not b!4189687) (not b!4189688) (not b!4189682) (not b!4189691) (not b!4189694) b_and!328247)
(check-sat b_and!328245 (not b_next!122665) b_and!328243 (not b_next!122671) b_and!328241 b_and!328251 (not b_next!122663) (not b_next!122673) (not b_next!122669) b_and!328247 (not b_next!122667) b_and!328249)
(get-model)

(declare-fun d!1235905 () Bool)

(declare-fun lt!1492255 () Int)

(assert (=> d!1235905 (>= lt!1492255 0)))

(declare-fun e!2600887 () Int)

(assert (=> d!1235905 (= lt!1492255 e!2600887)))

(declare-fun c!714968 () Bool)

(assert (=> d!1235905 (= c!714968 ((_ is Nil!46011) lt!1492248))))

(assert (=> d!1235905 (= (size!33801 lt!1492248) lt!1492255)))

(declare-fun b!4189715 () Bool)

(assert (=> b!4189715 (= e!2600887 0)))

(declare-fun b!4189716 () Bool)

(assert (=> b!4189716 (= e!2600887 (+ 1 (size!33801 (t!345874 lt!1492248))))))

(assert (= (and d!1235905 c!714968) b!4189715))

(assert (= (and d!1235905 (not c!714968)) b!4189716))

(declare-fun m!4778599 () Bool)

(assert (=> b!4189716 m!4778599))

(assert (=> b!4189705 d!1235905))

(declare-fun b!4189735 () Bool)

(declare-fun res!1719179 () Bool)

(declare-fun e!2600906 () Bool)

(assert (=> b!4189735 (=> (not res!1719179) (not e!2600906))))

(declare-fun call!292105 () Bool)

(assert (=> b!4189735 (= res!1719179 call!292105)))

(declare-fun e!2600902 () Bool)

(assert (=> b!4189735 (= e!2600902 e!2600906)))

(declare-fun b!4189736 () Bool)

(declare-fun e!2600907 () Bool)

(assert (=> b!4189736 (= e!2600907 e!2600902)))

(declare-fun c!714973 () Bool)

(assert (=> b!4189736 (= c!714973 ((_ is Union!12573) (regex!7668 rBis!167)))))

(declare-fun c!714974 () Bool)

(declare-fun bm!292098 () Bool)

(declare-fun call!292104 () Bool)

(assert (=> bm!292098 (= call!292104 (validRegex!5690 (ite c!714974 (reg!12902 (regex!7668 rBis!167)) (ite c!714973 (regOne!25659 (regex!7668 rBis!167)) (regOne!25658 (regex!7668 rBis!167))))))))

(declare-fun b!4189737 () Bool)

(declare-fun call!292103 () Bool)

(assert (=> b!4189737 (= e!2600906 call!292103)))

(declare-fun bm!292099 () Bool)

(assert (=> bm!292099 (= call!292105 call!292104)))

(declare-fun b!4189738 () Bool)

(declare-fun e!2600905 () Bool)

(assert (=> b!4189738 (= e!2600907 e!2600905)))

(declare-fun res!1719176 () Bool)

(declare-fun nullable!4415 (Regex!12573) Bool)

(assert (=> b!4189738 (= res!1719176 (not (nullable!4415 (reg!12902 (regex!7668 rBis!167)))))))

(assert (=> b!4189738 (=> (not res!1719176) (not e!2600905))))

(declare-fun d!1235907 () Bool)

(declare-fun res!1719178 () Bool)

(declare-fun e!2600903 () Bool)

(assert (=> d!1235907 (=> res!1719178 e!2600903)))

(assert (=> d!1235907 (= res!1719178 ((_ is ElementMatch!12573) (regex!7668 rBis!167)))))

(assert (=> d!1235907 (= (validRegex!5690 (regex!7668 rBis!167)) e!2600903)))

(declare-fun bm!292100 () Bool)

(assert (=> bm!292100 (= call!292103 (validRegex!5690 (ite c!714973 (regTwo!25659 (regex!7668 rBis!167)) (regTwo!25658 (regex!7668 rBis!167)))))))

(declare-fun b!4189739 () Bool)

(assert (=> b!4189739 (= e!2600903 e!2600907)))

(assert (=> b!4189739 (= c!714974 ((_ is Star!12573) (regex!7668 rBis!167)))))

(declare-fun b!4189740 () Bool)

(declare-fun e!2600908 () Bool)

(assert (=> b!4189740 (= e!2600908 call!292103)))

(declare-fun b!4189741 () Bool)

(declare-fun e!2600904 () Bool)

(assert (=> b!4189741 (= e!2600904 e!2600908)))

(declare-fun res!1719175 () Bool)

(assert (=> b!4189741 (=> (not res!1719175) (not e!2600908))))

(assert (=> b!4189741 (= res!1719175 call!292105)))

(declare-fun b!4189742 () Bool)

(declare-fun res!1719177 () Bool)

(assert (=> b!4189742 (=> res!1719177 e!2600904)))

(assert (=> b!4189742 (= res!1719177 (not ((_ is Concat!20472) (regex!7668 rBis!167))))))

(assert (=> b!4189742 (= e!2600902 e!2600904)))

(declare-fun b!4189743 () Bool)

(assert (=> b!4189743 (= e!2600905 call!292104)))

(assert (= (and d!1235907 (not res!1719178)) b!4189739))

(assert (= (and b!4189739 c!714974) b!4189738))

(assert (= (and b!4189739 (not c!714974)) b!4189736))

(assert (= (and b!4189738 res!1719176) b!4189743))

(assert (= (and b!4189736 c!714973) b!4189735))

(assert (= (and b!4189736 (not c!714973)) b!4189742))

(assert (= (and b!4189735 res!1719179) b!4189737))

(assert (= (and b!4189742 (not res!1719177)) b!4189741))

(assert (= (and b!4189741 res!1719175) b!4189740))

(assert (= (or b!4189737 b!4189740) bm!292100))

(assert (= (or b!4189735 b!4189741) bm!292099))

(assert (= (or b!4189743 bm!292099) bm!292098))

(declare-fun m!4778601 () Bool)

(assert (=> bm!292098 m!4778601))

(declare-fun m!4778603 () Bool)

(assert (=> b!4189738 m!4778603))

(declare-fun m!4778605 () Bool)

(assert (=> bm!292100 m!4778605))

(assert (=> b!4189684 d!1235907))

(declare-fun b!4189747 () Bool)

(declare-fun res!1719187 () Bool)

(declare-fun e!2600916 () Bool)

(assert (=> b!4189747 (=> (not res!1719187) (not e!2600916))))

(declare-fun call!292108 () Bool)

(assert (=> b!4189747 (= res!1719187 call!292108)))

(declare-fun e!2600912 () Bool)

(assert (=> b!4189747 (= e!2600912 e!2600916)))

(declare-fun b!4189748 () Bool)

(declare-fun e!2600917 () Bool)

(assert (=> b!4189748 (= e!2600917 e!2600912)))

(declare-fun c!714975 () Bool)

(assert (=> b!4189748 (= c!714975 ((_ is Union!12573) (regex!7668 r!4142)))))

(declare-fun c!714976 () Bool)

(declare-fun bm!292101 () Bool)

(declare-fun call!292107 () Bool)

(assert (=> bm!292101 (= call!292107 (validRegex!5690 (ite c!714976 (reg!12902 (regex!7668 r!4142)) (ite c!714975 (regOne!25659 (regex!7668 r!4142)) (regOne!25658 (regex!7668 r!4142))))))))

(declare-fun b!4189749 () Bool)

(declare-fun call!292106 () Bool)

(assert (=> b!4189749 (= e!2600916 call!292106)))

(declare-fun bm!292102 () Bool)

(assert (=> bm!292102 (= call!292108 call!292107)))

(declare-fun b!4189750 () Bool)

(declare-fun e!2600915 () Bool)

(assert (=> b!4189750 (= e!2600917 e!2600915)))

(declare-fun res!1719184 () Bool)

(assert (=> b!4189750 (= res!1719184 (not (nullable!4415 (reg!12902 (regex!7668 r!4142)))))))

(assert (=> b!4189750 (=> (not res!1719184) (not e!2600915))))

(declare-fun d!1235913 () Bool)

(declare-fun res!1719186 () Bool)

(declare-fun e!2600913 () Bool)

(assert (=> d!1235913 (=> res!1719186 e!2600913)))

(assert (=> d!1235913 (= res!1719186 ((_ is ElementMatch!12573) (regex!7668 r!4142)))))

(assert (=> d!1235913 (= (validRegex!5690 (regex!7668 r!4142)) e!2600913)))

(declare-fun bm!292103 () Bool)

(assert (=> bm!292103 (= call!292106 (validRegex!5690 (ite c!714975 (regTwo!25659 (regex!7668 r!4142)) (regTwo!25658 (regex!7668 r!4142)))))))

(declare-fun b!4189751 () Bool)

(assert (=> b!4189751 (= e!2600913 e!2600917)))

(assert (=> b!4189751 (= c!714976 ((_ is Star!12573) (regex!7668 r!4142)))))

(declare-fun b!4189752 () Bool)

(declare-fun e!2600918 () Bool)

(assert (=> b!4189752 (= e!2600918 call!292106)))

(declare-fun b!4189753 () Bool)

(declare-fun e!2600914 () Bool)

(assert (=> b!4189753 (= e!2600914 e!2600918)))

(declare-fun res!1719183 () Bool)

(assert (=> b!4189753 (=> (not res!1719183) (not e!2600918))))

(assert (=> b!4189753 (= res!1719183 call!292108)))

(declare-fun b!4189754 () Bool)

(declare-fun res!1719185 () Bool)

(assert (=> b!4189754 (=> res!1719185 e!2600914)))

(assert (=> b!4189754 (= res!1719185 (not ((_ is Concat!20472) (regex!7668 r!4142))))))

(assert (=> b!4189754 (= e!2600912 e!2600914)))

(declare-fun b!4189755 () Bool)

(assert (=> b!4189755 (= e!2600915 call!292107)))

(assert (= (and d!1235913 (not res!1719186)) b!4189751))

(assert (= (and b!4189751 c!714976) b!4189750))

(assert (= (and b!4189751 (not c!714976)) b!4189748))

(assert (= (and b!4189750 res!1719184) b!4189755))

(assert (= (and b!4189748 c!714975) b!4189747))

(assert (= (and b!4189748 (not c!714975)) b!4189754))

(assert (= (and b!4189747 res!1719187) b!4189749))

(assert (= (and b!4189754 (not res!1719185)) b!4189753))

(assert (= (and b!4189753 res!1719183) b!4189752))

(assert (= (or b!4189749 b!4189752) bm!292103))

(assert (= (or b!4189747 b!4189753) bm!292102))

(assert (= (or b!4189755 bm!292102) bm!292101))

(declare-fun m!4778611 () Bool)

(assert (=> bm!292101 m!4778611))

(declare-fun m!4778613 () Bool)

(assert (=> b!4189750 m!4778613))

(declare-fun m!4778615 () Bool)

(assert (=> bm!292103 m!4778615))

(assert (=> b!4189695 d!1235913))

(declare-fun d!1235917 () Bool)

(assert (=> d!1235917 (= (isEmpty!27239 rules!3843) ((_ is Nil!46013) rules!3843))))

(assert (=> b!4189706 d!1235917))

(declare-fun b!4189777 () Bool)

(declare-fun e!2600936 () Bool)

(declare-fun e!2600935 () Bool)

(assert (=> b!4189777 (= e!2600936 e!2600935)))

(declare-fun res!1719211 () Bool)

(assert (=> b!4189777 (=> (not res!1719211) (not e!2600935))))

(assert (=> b!4189777 (= res!1719211 (not ((_ is Nil!46011) input!3342)))))

(declare-fun b!4189778 () Bool)

(declare-fun res!1719210 () Bool)

(assert (=> b!4189778 (=> (not res!1719210) (not e!2600935))))

(declare-fun head!8892 (List!46135) C!25336)

(assert (=> b!4189778 (= res!1719210 (= (head!8892 p!2959) (head!8892 input!3342)))))

(declare-fun d!1235919 () Bool)

(declare-fun e!2600937 () Bool)

(assert (=> d!1235919 e!2600937))

(declare-fun res!1719209 () Bool)

(assert (=> d!1235919 (=> res!1719209 e!2600937)))

(declare-fun lt!1492261 () Bool)

(assert (=> d!1235919 (= res!1719209 (not lt!1492261))))

(assert (=> d!1235919 (= lt!1492261 e!2600936)))

(declare-fun res!1719212 () Bool)

(assert (=> d!1235919 (=> res!1719212 e!2600936)))

(assert (=> d!1235919 (= res!1719212 ((_ is Nil!46011) p!2959))))

(assert (=> d!1235919 (= (isPrefix!4525 p!2959 input!3342) lt!1492261)))

(declare-fun b!4189780 () Bool)

(assert (=> b!4189780 (= e!2600937 (>= (size!33801 input!3342) (size!33801 p!2959)))))

(declare-fun b!4189779 () Bool)

(declare-fun tail!6739 (List!46135) List!46135)

(assert (=> b!4189779 (= e!2600935 (isPrefix!4525 (tail!6739 p!2959) (tail!6739 input!3342)))))

(assert (= (and d!1235919 (not res!1719212)) b!4189777))

(assert (= (and b!4189777 res!1719211) b!4189778))

(assert (= (and b!4189778 res!1719210) b!4189779))

(assert (= (and d!1235919 (not res!1719209)) b!4189780))

(declare-fun m!4778631 () Bool)

(assert (=> b!4189778 m!4778631))

(declare-fun m!4778633 () Bool)

(assert (=> b!4189778 m!4778633))

(assert (=> b!4189780 m!4778533))

(assert (=> b!4189780 m!4778591))

(declare-fun m!4778635 () Bool)

(assert (=> b!4189779 m!4778635))

(declare-fun m!4778637 () Bool)

(assert (=> b!4189779 m!4778637))

(assert (=> b!4189779 m!4778635))

(assert (=> b!4189779 m!4778637))

(declare-fun m!4778639 () Bool)

(assert (=> b!4189779 m!4778639))

(assert (=> b!4189685 d!1235919))

(declare-fun b!4189785 () Bool)

(declare-fun e!2600941 () Bool)

(declare-fun e!2600940 () Bool)

(assert (=> b!4189785 (= e!2600941 e!2600940)))

(declare-fun res!1719219 () Bool)

(assert (=> b!4189785 (=> (not res!1719219) (not e!2600940))))

(assert (=> b!4189785 (= res!1719219 (not ((_ is Nil!46011) input!3342)))))

(declare-fun b!4189786 () Bool)

(declare-fun res!1719218 () Bool)

(assert (=> b!4189786 (=> (not res!1719218) (not e!2600940))))

(assert (=> b!4189786 (= res!1719218 (= (head!8892 lt!1492248) (head!8892 input!3342)))))

(declare-fun d!1235929 () Bool)

(declare-fun e!2600942 () Bool)

(assert (=> d!1235929 e!2600942))

(declare-fun res!1719217 () Bool)

(assert (=> d!1235929 (=> res!1719217 e!2600942)))

(declare-fun lt!1492262 () Bool)

(assert (=> d!1235929 (= res!1719217 (not lt!1492262))))

(assert (=> d!1235929 (= lt!1492262 e!2600941)))

(declare-fun res!1719220 () Bool)

(assert (=> d!1235929 (=> res!1719220 e!2600941)))

(assert (=> d!1235929 (= res!1719220 ((_ is Nil!46011) lt!1492248))))

(assert (=> d!1235929 (= (isPrefix!4525 lt!1492248 input!3342) lt!1492262)))

(declare-fun b!4189788 () Bool)

(assert (=> b!4189788 (= e!2600942 (>= (size!33801 input!3342) (size!33801 lt!1492248)))))

(declare-fun b!4189787 () Bool)

(assert (=> b!4189787 (= e!2600940 (isPrefix!4525 (tail!6739 lt!1492248) (tail!6739 input!3342)))))

(assert (= (and d!1235929 (not res!1719220)) b!4189785))

(assert (= (and b!4189785 res!1719219) b!4189786))

(assert (= (and b!4189786 res!1719218) b!4189787))

(assert (= (and d!1235929 (not res!1719217)) b!4189788))

(declare-fun m!4778641 () Bool)

(assert (=> b!4189786 m!4778641))

(assert (=> b!4189786 m!4778633))

(assert (=> b!4189788 m!4778533))

(assert (=> b!4189788 m!4778539))

(declare-fun m!4778643 () Bool)

(assert (=> b!4189787 m!4778643))

(assert (=> b!4189787 m!4778637))

(assert (=> b!4189787 m!4778643))

(assert (=> b!4189787 m!4778637))

(declare-fun m!4778645 () Bool)

(assert (=> b!4189787 m!4778645))

(assert (=> b!4189696 d!1235929))

(declare-fun d!1235931 () Bool)

(declare-fun lt!1492265 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7163 (List!46137) (InoxSet Rule!15136))

(assert (=> d!1235931 (= lt!1492265 (select (content!7163 rules!3843) r!4142))))

(declare-fun e!2600949 () Bool)

(assert (=> d!1235931 (= lt!1492265 e!2600949)))

(declare-fun res!1719228 () Bool)

(assert (=> d!1235931 (=> (not res!1719228) (not e!2600949))))

(assert (=> d!1235931 (= res!1719228 ((_ is Cons!46013) rules!3843))))

(assert (=> d!1235931 (= (contains!9477 rules!3843 r!4142) lt!1492265)))

(declare-fun b!4189795 () Bool)

(declare-fun e!2600948 () Bool)

(assert (=> b!4189795 (= e!2600949 e!2600948)))

(declare-fun res!1719227 () Bool)

(assert (=> b!4189795 (=> res!1719227 e!2600948)))

(assert (=> b!4189795 (= res!1719227 (= (h!51433 rules!3843) r!4142))))

(declare-fun b!4189796 () Bool)

(assert (=> b!4189796 (= e!2600948 (contains!9477 (t!345876 rules!3843) r!4142))))

(assert (= (and d!1235931 res!1719228) b!4189795))

(assert (= (and b!4189795 (not res!1719227)) b!4189796))

(declare-fun m!4778649 () Bool)

(assert (=> d!1235931 m!4778649))

(declare-fun m!4778651 () Bool)

(assert (=> d!1235931 m!4778651))

(declare-fun m!4778653 () Bool)

(assert (=> b!4189796 m!4778653))

(assert (=> b!4189707 d!1235931))

(declare-fun d!1235935 () Bool)

(declare-fun lt!1492266 () Bool)

(assert (=> d!1235935 (= lt!1492266 (select (content!7163 rules!3843) rBis!167))))

(declare-fun e!2600951 () Bool)

(assert (=> d!1235935 (= lt!1492266 e!2600951)))

(declare-fun res!1719230 () Bool)

(assert (=> d!1235935 (=> (not res!1719230) (not e!2600951))))

(assert (=> d!1235935 (= res!1719230 ((_ is Cons!46013) rules!3843))))

(assert (=> d!1235935 (= (contains!9477 rules!3843 rBis!167) lt!1492266)))

(declare-fun b!4189797 () Bool)

(declare-fun e!2600950 () Bool)

(assert (=> b!4189797 (= e!2600951 e!2600950)))

(declare-fun res!1719229 () Bool)

(assert (=> b!4189797 (=> res!1719229 e!2600950)))

(assert (=> b!4189797 (= res!1719229 (= (h!51433 rules!3843) rBis!167))))

(declare-fun b!4189798 () Bool)

(assert (=> b!4189798 (= e!2600950 (contains!9477 (t!345876 rules!3843) rBis!167))))

(assert (= (and d!1235935 res!1719230) b!4189797))

(assert (= (and b!4189797 (not res!1719229)) b!4189798))

(assert (=> d!1235935 m!4778649))

(declare-fun m!4778655 () Bool)

(assert (=> d!1235935 m!4778655))

(declare-fun m!4778657 () Bool)

(assert (=> b!4189798 m!4778657))

(assert (=> b!4189697 d!1235935))

(declare-fun bm!292109 () Bool)

(declare-fun call!292114 () Option!9862)

(assert (=> bm!292109 (= call!292114 (maxPrefixOneRule!3270 thiss!25986 (h!51433 rules!3843) input!3342))))

(declare-fun b!4189865 () Bool)

(declare-fun e!2600982 () Option!9862)

(assert (=> b!4189865 (= e!2600982 call!292114)))

(declare-fun b!4189866 () Bool)

(declare-fun res!1719275 () Bool)

(declare-fun e!2600983 () Bool)

(assert (=> b!4189866 (=> (not res!1719275) (not e!2600983))))

(declare-fun lt!1492287 () Option!9862)

(assert (=> b!4189866 (= res!1719275 (< (size!33801 (_2!25039 (get!14961 lt!1492287))) (size!33801 input!3342)))))

(declare-fun b!4189867 () Bool)

(declare-fun res!1719269 () Bool)

(assert (=> b!4189867 (=> (not res!1719269) (not e!2600983))))

(assert (=> b!4189867 (= res!1719269 (= (++!11740 (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492287)))) (_2!25039 (get!14961 lt!1492287))) input!3342))))

(declare-fun d!1235937 () Bool)

(declare-fun e!2600984 () Bool)

(assert (=> d!1235937 e!2600984))

(declare-fun res!1719270 () Bool)

(assert (=> d!1235937 (=> res!1719270 e!2600984)))

(assert (=> d!1235937 (= res!1719270 (isEmpty!27238 lt!1492287))))

(assert (=> d!1235937 (= lt!1492287 e!2600982)))

(declare-fun c!714992 () Bool)

(assert (=> d!1235937 (= c!714992 (and ((_ is Cons!46013) rules!3843) ((_ is Nil!46013) (t!345876 rules!3843))))))

(declare-fun lt!1492289 () Unit!65095)

(declare-fun lt!1492285 () Unit!65095)

(assert (=> d!1235937 (= lt!1492289 lt!1492285)))

(assert (=> d!1235937 (isPrefix!4525 input!3342 input!3342)))

(assert (=> d!1235937 (= lt!1492285 (lemmaIsPrefixRefl!2954 input!3342 input!3342))))

(declare-fun rulesValidInductive!2829 (LexerInterface!7261 List!46137) Bool)

(assert (=> d!1235937 (rulesValidInductive!2829 thiss!25986 rules!3843)))

(assert (=> d!1235937 (= (maxPrefix!4309 thiss!25986 rules!3843 input!3342) lt!1492287)))

(declare-fun b!4189868 () Bool)

(declare-fun lt!1492288 () Option!9862)

(declare-fun lt!1492286 () Option!9862)

(assert (=> b!4189868 (= e!2600982 (ite (and ((_ is None!9861) lt!1492288) ((_ is None!9861) lt!1492286)) None!9861 (ite ((_ is None!9861) lt!1492286) lt!1492288 (ite ((_ is None!9861) lt!1492288) lt!1492286 (ite (>= (size!33799 (_1!25039 (v!40689 lt!1492288))) (size!33799 (_1!25039 (v!40689 lt!1492286)))) lt!1492288 lt!1492286)))))))

(assert (=> b!4189868 (= lt!1492288 call!292114)))

(assert (=> b!4189868 (= lt!1492286 (maxPrefix!4309 thiss!25986 (t!345876 rules!3843) input!3342))))

(declare-fun b!4189869 () Bool)

(assert (=> b!4189869 (= e!2600984 e!2600983)))

(declare-fun res!1719271 () Bool)

(assert (=> b!4189869 (=> (not res!1719271) (not e!2600983))))

(declare-fun isDefined!7345 (Option!9862) Bool)

(assert (=> b!4189869 (= res!1719271 (isDefined!7345 lt!1492287))))

(declare-fun b!4189870 () Bool)

(declare-fun res!1719272 () Bool)

(assert (=> b!4189870 (=> (not res!1719272) (not e!2600983))))

(assert (=> b!4189870 (= res!1719272 (= (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492287)))) (originalCharacters!8056 (_1!25039 (get!14961 lt!1492287)))))))

(declare-fun b!4189871 () Bool)

(declare-fun res!1719274 () Bool)

(assert (=> b!4189871 (=> (not res!1719274) (not e!2600983))))

(assert (=> b!4189871 (= res!1719274 (matchR!6312 (regex!7668 (rule!10748 (_1!25039 (get!14961 lt!1492287)))) (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492287))))))))

(declare-fun b!4189872 () Bool)

(declare-fun res!1719273 () Bool)

(assert (=> b!4189872 (=> (not res!1719273) (not e!2600983))))

(assert (=> b!4189872 (= res!1719273 (= (value!239070 (_1!25039 (get!14961 lt!1492287))) (apply!10633 (transformation!7668 (rule!10748 (_1!25039 (get!14961 lt!1492287)))) (seqFromList!5693 (originalCharacters!8056 (_1!25039 (get!14961 lt!1492287)))))))))

(declare-fun b!4189873 () Bool)

(assert (=> b!4189873 (= e!2600983 (contains!9477 rules!3843 (rule!10748 (_1!25039 (get!14961 lt!1492287)))))))

(assert (= (and d!1235937 c!714992) b!4189865))

(assert (= (and d!1235937 (not c!714992)) b!4189868))

(assert (= (or b!4189865 b!4189868) bm!292109))

(assert (= (and d!1235937 (not res!1719270)) b!4189869))

(assert (= (and b!4189869 res!1719271) b!4189870))

(assert (= (and b!4189870 res!1719272) b!4189866))

(assert (= (and b!4189866 res!1719275) b!4189867))

(assert (= (and b!4189867 res!1719269) b!4189872))

(assert (= (and b!4189872 res!1719273) b!4189871))

(assert (= (and b!4189871 res!1719274) b!4189873))

(declare-fun m!4778669 () Bool)

(assert (=> b!4189868 m!4778669))

(declare-fun m!4778671 () Bool)

(assert (=> b!4189870 m!4778671))

(declare-fun m!4778673 () Bool)

(assert (=> b!4189870 m!4778673))

(assert (=> b!4189870 m!4778673))

(declare-fun m!4778675 () Bool)

(assert (=> b!4189870 m!4778675))

(assert (=> b!4189872 m!4778671))

(declare-fun m!4778677 () Bool)

(assert (=> b!4189872 m!4778677))

(assert (=> b!4189872 m!4778677))

(declare-fun m!4778679 () Bool)

(assert (=> b!4189872 m!4778679))

(assert (=> b!4189873 m!4778671))

(declare-fun m!4778681 () Bool)

(assert (=> b!4189873 m!4778681))

(declare-fun m!4778683 () Bool)

(assert (=> d!1235937 m!4778683))

(assert (=> d!1235937 m!4778585))

(assert (=> d!1235937 m!4778589))

(declare-fun m!4778685 () Bool)

(assert (=> d!1235937 m!4778685))

(declare-fun m!4778687 () Bool)

(assert (=> bm!292109 m!4778687))

(assert (=> b!4189866 m!4778671))

(declare-fun m!4778689 () Bool)

(assert (=> b!4189866 m!4778689))

(assert (=> b!4189866 m!4778533))

(assert (=> b!4189867 m!4778671))

(assert (=> b!4189867 m!4778673))

(assert (=> b!4189867 m!4778673))

(assert (=> b!4189867 m!4778675))

(assert (=> b!4189867 m!4778675))

(declare-fun m!4778691 () Bool)

(assert (=> b!4189867 m!4778691))

(declare-fun m!4778693 () Bool)

(assert (=> b!4189869 m!4778693))

(assert (=> b!4189871 m!4778671))

(assert (=> b!4189871 m!4778673))

(assert (=> b!4189871 m!4778673))

(assert (=> b!4189871 m!4778675))

(assert (=> b!4189871 m!4778675))

(declare-fun m!4778695 () Bool)

(assert (=> b!4189871 m!4778695))

(assert (=> b!4189687 d!1235937))

(declare-fun d!1235943 () Bool)

(assert (=> d!1235943 (ruleValid!3386 thiss!25986 rBis!167)))

(declare-fun lt!1492292 () Unit!65095)

(declare-fun choose!25662 (LexerInterface!7261 Rule!15136 List!46137) Unit!65095)

(assert (=> d!1235943 (= lt!1492292 (choose!25662 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235943 (contains!9477 rules!3843 rBis!167)))

(assert (=> d!1235943 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2392 thiss!25986 rBis!167 rules!3843) lt!1492292)))

(declare-fun bs!596596 () Bool)

(assert (= bs!596596 d!1235943))

(assert (=> bs!596596 m!4778543))

(declare-fun m!4778697 () Bool)

(assert (=> bs!596596 m!4778697))

(assert (=> bs!596596 m!4778549))

(assert (=> b!4189698 d!1235943))

(declare-fun d!1235945 () Bool)

(assert (=> d!1235945 (<= (size!33801 pBis!107) (size!33801 input!3342))))

(declare-fun lt!1492295 () Unit!65095)

(declare-fun choose!25663 (List!46135 List!46135) Unit!65095)

(assert (=> d!1235945 (= lt!1492295 (choose!25663 pBis!107 input!3342))))

(assert (=> d!1235945 (isPrefix!4525 pBis!107 input!3342)))

(assert (=> d!1235945 (= (lemmaIsPrefixThenSmallerEqSize!555 pBis!107 input!3342) lt!1492295)))

(declare-fun bs!596597 () Bool)

(assert (= bs!596597 d!1235945))

(assert (=> bs!596597 m!4778517))

(assert (=> bs!596597 m!4778533))

(declare-fun m!4778699 () Bool)

(assert (=> bs!596597 m!4778699))

(assert (=> bs!596597 m!4778571))

(assert (=> b!4189698 d!1235945))

(declare-fun d!1235947 () Bool)

(declare-fun lt!1492296 () Int)

(assert (=> d!1235947 (>= lt!1492296 0)))

(declare-fun e!2600985 () Int)

(assert (=> d!1235947 (= lt!1492296 e!2600985)))

(declare-fun c!714993 () Bool)

(assert (=> d!1235947 (= c!714993 ((_ is Nil!46011) input!3342))))

(assert (=> d!1235947 (= (size!33801 input!3342) lt!1492296)))

(declare-fun b!4189874 () Bool)

(assert (=> b!4189874 (= e!2600985 0)))

(declare-fun b!4189875 () Bool)

(assert (=> b!4189875 (= e!2600985 (+ 1 (size!33801 (t!345874 input!3342))))))

(assert (= (and d!1235947 c!714993) b!4189874))

(assert (= (and d!1235947 (not c!714993)) b!4189875))

(declare-fun m!4778701 () Bool)

(assert (=> b!4189875 m!4778701))

(assert (=> b!4189698 d!1235947))

(declare-fun d!1235949 () Bool)

(assert (=> d!1235949 (= (isEmpty!27238 lt!1492238) (not ((_ is Some!9861) lt!1492238)))))

(assert (=> b!4189698 d!1235949))

(declare-fun b!4189894 () Bool)

(declare-fun e!2600995 () Bool)

(declare-fun e!2600996 () Bool)

(assert (=> b!4189894 (= e!2600995 e!2600996)))

(declare-fun res!1719294 () Bool)

(assert (=> b!4189894 (=> (not res!1719294) (not e!2600996))))

(declare-fun lt!1492310 () Option!9862)

(assert (=> b!4189894 (= res!1719294 (matchR!6312 (regex!7668 rBis!167) (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492310))))))))

(declare-fun b!4189895 () Bool)

(declare-fun res!1719291 () Bool)

(assert (=> b!4189895 (=> (not res!1719291) (not e!2600996))))

(assert (=> b!4189895 (= res!1719291 (= (value!239070 (_1!25039 (get!14961 lt!1492310))) (apply!10633 (transformation!7668 (rule!10748 (_1!25039 (get!14961 lt!1492310)))) (seqFromList!5693 (originalCharacters!8056 (_1!25039 (get!14961 lt!1492310)))))))))

(declare-fun b!4189897 () Bool)

(declare-fun e!2600994 () Option!9862)

(declare-datatypes ((tuple2!43814 0))(
  ( (tuple2!43815 (_1!25041 List!46135) (_2!25041 List!46135)) )
))
(declare-fun lt!1492307 () tuple2!43814)

(assert (=> b!4189897 (= e!2600994 (Some!9861 (tuple2!43811 (Token!14051 (apply!10633 (transformation!7668 rBis!167) (seqFromList!5693 (_1!25041 lt!1492307))) rBis!167 (size!33800 (seqFromList!5693 (_1!25041 lt!1492307))) (_1!25041 lt!1492307)) (_2!25041 lt!1492307))))))

(declare-fun lt!1492309 () Unit!65095)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1578 (Regex!12573 List!46135) Unit!65095)

(assert (=> b!4189897 (= lt!1492309 (longestMatchIsAcceptedByMatchOrIsEmpty!1578 (regex!7668 rBis!167) input!3342))))

(declare-fun res!1719290 () Bool)

(declare-fun isEmpty!27241 (List!46135) Bool)

(declare-fun findLongestMatchInner!1605 (Regex!12573 List!46135 Int List!46135 List!46135 Int) tuple2!43814)

(assert (=> b!4189897 (= res!1719290 (isEmpty!27241 (_1!25041 (findLongestMatchInner!1605 (regex!7668 rBis!167) Nil!46011 (size!33801 Nil!46011) input!3342 input!3342 (size!33801 input!3342)))))))

(declare-fun e!2600997 () Bool)

(assert (=> b!4189897 (=> res!1719290 e!2600997)))

(assert (=> b!4189897 e!2600997))

(declare-fun lt!1492308 () Unit!65095)

(assert (=> b!4189897 (= lt!1492308 lt!1492309)))

(declare-fun lt!1492311 () Unit!65095)

(assert (=> b!4189897 (= lt!1492311 (lemmaSemiInverse!2434 (transformation!7668 rBis!167) (seqFromList!5693 (_1!25041 lt!1492307))))))

(declare-fun b!4189898 () Bool)

(declare-fun res!1719292 () Bool)

(assert (=> b!4189898 (=> (not res!1719292) (not e!2600996))))

(assert (=> b!4189898 (= res!1719292 (< (size!33801 (_2!25039 (get!14961 lt!1492310))) (size!33801 input!3342)))))

(declare-fun b!4189899 () Bool)

(declare-fun res!1719296 () Bool)

(assert (=> b!4189899 (=> (not res!1719296) (not e!2600996))))

(assert (=> b!4189899 (= res!1719296 (= (rule!10748 (_1!25039 (get!14961 lt!1492310))) rBis!167))))

(declare-fun b!4189900 () Bool)

(assert (=> b!4189900 (= e!2600997 (matchR!6312 (regex!7668 rBis!167) (_1!25041 (findLongestMatchInner!1605 (regex!7668 rBis!167) Nil!46011 (size!33801 Nil!46011) input!3342 input!3342 (size!33801 input!3342)))))))

(declare-fun b!4189901 () Bool)

(declare-fun res!1719295 () Bool)

(assert (=> b!4189901 (=> (not res!1719295) (not e!2600996))))

(assert (=> b!4189901 (= res!1719295 (= (++!11740 (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492310)))) (_2!25039 (get!14961 lt!1492310))) input!3342))))

(declare-fun b!4189902 () Bool)

(assert (=> b!4189902 (= e!2600994 None!9861)))

(declare-fun d!1235951 () Bool)

(assert (=> d!1235951 e!2600995))

(declare-fun res!1719293 () Bool)

(assert (=> d!1235951 (=> res!1719293 e!2600995)))

(assert (=> d!1235951 (= res!1719293 (isEmpty!27238 lt!1492310))))

(assert (=> d!1235951 (= lt!1492310 e!2600994)))

(declare-fun c!714996 () Bool)

(assert (=> d!1235951 (= c!714996 (isEmpty!27241 (_1!25041 lt!1492307)))))

(declare-fun findLongestMatch!1518 (Regex!12573 List!46135) tuple2!43814)

(assert (=> d!1235951 (= lt!1492307 (findLongestMatch!1518 (regex!7668 rBis!167) input!3342))))

(assert (=> d!1235951 (ruleValid!3386 thiss!25986 rBis!167)))

(assert (=> d!1235951 (= (maxPrefixOneRule!3270 thiss!25986 rBis!167 input!3342) lt!1492310)))

(declare-fun b!4189896 () Bool)

(assert (=> b!4189896 (= e!2600996 (= (size!33799 (_1!25039 (get!14961 lt!1492310))) (size!33801 (originalCharacters!8056 (_1!25039 (get!14961 lt!1492310))))))))

(assert (= (and d!1235951 c!714996) b!4189902))

(assert (= (and d!1235951 (not c!714996)) b!4189897))

(assert (= (and b!4189897 (not res!1719290)) b!4189900))

(assert (= (and d!1235951 (not res!1719293)) b!4189894))

(assert (= (and b!4189894 res!1719294) b!4189901))

(assert (= (and b!4189901 res!1719295) b!4189898))

(assert (= (and b!4189898 res!1719292) b!4189899))

(assert (= (and b!4189899 res!1719296) b!4189895))

(assert (= (and b!4189895 res!1719291) b!4189896))

(declare-fun m!4778703 () Bool)

(assert (=> b!4189901 m!4778703))

(declare-fun m!4778705 () Bool)

(assert (=> b!4189901 m!4778705))

(assert (=> b!4189901 m!4778705))

(declare-fun m!4778707 () Bool)

(assert (=> b!4189901 m!4778707))

(assert (=> b!4189901 m!4778707))

(declare-fun m!4778709 () Bool)

(assert (=> b!4189901 m!4778709))

(assert (=> b!4189898 m!4778703))

(declare-fun m!4778711 () Bool)

(assert (=> b!4189898 m!4778711))

(assert (=> b!4189898 m!4778533))

(declare-fun m!4778713 () Bool)

(assert (=> d!1235951 m!4778713))

(declare-fun m!4778715 () Bool)

(assert (=> d!1235951 m!4778715))

(declare-fun m!4778717 () Bool)

(assert (=> d!1235951 m!4778717))

(assert (=> d!1235951 m!4778543))

(assert (=> b!4189896 m!4778703))

(declare-fun m!4778719 () Bool)

(assert (=> b!4189896 m!4778719))

(assert (=> b!4189895 m!4778703))

(declare-fun m!4778721 () Bool)

(assert (=> b!4189895 m!4778721))

(assert (=> b!4189895 m!4778721))

(declare-fun m!4778723 () Bool)

(assert (=> b!4189895 m!4778723))

(declare-fun m!4778725 () Bool)

(assert (=> b!4189897 m!4778725))

(declare-fun m!4778727 () Bool)

(assert (=> b!4189897 m!4778727))

(assert (=> b!4189897 m!4778725))

(declare-fun m!4778729 () Bool)

(assert (=> b!4189897 m!4778729))

(assert (=> b!4189897 m!4778533))

(assert (=> b!4189897 m!4778725))

(declare-fun m!4778731 () Bool)

(assert (=> b!4189897 m!4778731))

(declare-fun m!4778733 () Bool)

(assert (=> b!4189897 m!4778733))

(declare-fun m!4778735 () Bool)

(assert (=> b!4189897 m!4778735))

(assert (=> b!4189897 m!4778533))

(declare-fun m!4778737 () Bool)

(assert (=> b!4189897 m!4778737))

(assert (=> b!4189897 m!4778725))

(declare-fun m!4778739 () Bool)

(assert (=> b!4189897 m!4778739))

(assert (=> b!4189897 m!4778735))

(assert (=> b!4189899 m!4778703))

(assert (=> b!4189894 m!4778703))

(assert (=> b!4189894 m!4778705))

(assert (=> b!4189894 m!4778705))

(assert (=> b!4189894 m!4778707))

(assert (=> b!4189894 m!4778707))

(declare-fun m!4778741 () Bool)

(assert (=> b!4189894 m!4778741))

(assert (=> b!4189900 m!4778735))

(assert (=> b!4189900 m!4778533))

(assert (=> b!4189900 m!4778735))

(assert (=> b!4189900 m!4778533))

(assert (=> b!4189900 m!4778737))

(declare-fun m!4778743 () Bool)

(assert (=> b!4189900 m!4778743))

(assert (=> b!4189698 d!1235951))

(declare-fun d!1235953 () Bool)

(declare-fun res!1719301 () Bool)

(declare-fun e!2601000 () Bool)

(assert (=> d!1235953 (=> (not res!1719301) (not e!2601000))))

(assert (=> d!1235953 (= res!1719301 (validRegex!5690 (regex!7668 rBis!167)))))

(assert (=> d!1235953 (= (ruleValid!3386 thiss!25986 rBis!167) e!2601000)))

(declare-fun b!4189907 () Bool)

(declare-fun res!1719302 () Bool)

(assert (=> b!4189907 (=> (not res!1719302) (not e!2601000))))

(assert (=> b!4189907 (= res!1719302 (not (nullable!4415 (regex!7668 rBis!167))))))

(declare-fun b!4189908 () Bool)

(assert (=> b!4189908 (= e!2601000 (not (= (tag!8532 rBis!167) (String!53357 ""))))))

(assert (= (and d!1235953 res!1719301) b!4189907))

(assert (= (and b!4189907 res!1719302) b!4189908))

(assert (=> d!1235953 m!4778567))

(declare-fun m!4778745 () Bool)

(assert (=> b!4189907 m!4778745))

(assert (=> b!4189688 d!1235953))

(declare-fun d!1235955 () Bool)

(assert (=> d!1235955 (= (inv!60558 (tag!8532 r!4142)) (= (mod (str.len (value!239069 (tag!8532 r!4142))) 2) 0))))

(assert (=> b!4189699 d!1235955))

(declare-fun d!1235957 () Bool)

(declare-fun res!1719305 () Bool)

(declare-fun e!2601003 () Bool)

(assert (=> d!1235957 (=> (not res!1719305) (not e!2601003))))

(declare-fun semiInverseModEq!3324 (Int Int) Bool)

(assert (=> d!1235957 (= res!1719305 (semiInverseModEq!3324 (toChars!10223 (transformation!7668 r!4142)) (toValue!10364 (transformation!7668 r!4142))))))

(assert (=> d!1235957 (= (inv!60560 (transformation!7668 r!4142)) e!2601003)))

(declare-fun b!4189911 () Bool)

(declare-fun equivClasses!3223 (Int Int) Bool)

(assert (=> b!4189911 (= e!2601003 (equivClasses!3223 (toChars!10223 (transformation!7668 r!4142)) (toValue!10364 (transformation!7668 r!4142))))))

(assert (= (and d!1235957 res!1719305) b!4189911))

(declare-fun m!4778747 () Bool)

(assert (=> d!1235957 m!4778747))

(declare-fun m!4778749 () Bool)

(assert (=> b!4189911 m!4778749))

(assert (=> b!4189699 d!1235957))

(declare-fun b!4189940 () Bool)

(declare-fun e!2601022 () Bool)

(declare-fun lt!1492314 () Bool)

(assert (=> b!4189940 (= e!2601022 (not lt!1492314))))

(declare-fun b!4189941 () Bool)

(declare-fun res!1719325 () Bool)

(declare-fun e!2601021 () Bool)

(assert (=> b!4189941 (=> res!1719325 e!2601021)))

(assert (=> b!4189941 (= res!1719325 (not ((_ is ElementMatch!12573) (regex!7668 r!4142))))))

(assert (=> b!4189941 (= e!2601022 e!2601021)))

(declare-fun b!4189942 () Bool)

(declare-fun res!1719328 () Bool)

(assert (=> b!4189942 (=> res!1719328 e!2601021)))

(declare-fun e!2601020 () Bool)

(assert (=> b!4189942 (= res!1719328 e!2601020)))

(declare-fun res!1719327 () Bool)

(assert (=> b!4189942 (=> (not res!1719327) (not e!2601020))))

(assert (=> b!4189942 (= res!1719327 lt!1492314)))

(declare-fun d!1235959 () Bool)

(declare-fun e!2601023 () Bool)

(assert (=> d!1235959 e!2601023))

(declare-fun c!715004 () Bool)

(assert (=> d!1235959 (= c!715004 ((_ is EmptyExpr!12573) (regex!7668 r!4142)))))

(declare-fun e!2601024 () Bool)

(assert (=> d!1235959 (= lt!1492314 e!2601024)))

(declare-fun c!715003 () Bool)

(assert (=> d!1235959 (= c!715003 (isEmpty!27241 p!2959))))

(assert (=> d!1235959 (validRegex!5690 (regex!7668 r!4142))))

(assert (=> d!1235959 (= (matchR!6312 (regex!7668 r!4142) p!2959) lt!1492314)))

(declare-fun b!4189943 () Bool)

(declare-fun res!1719329 () Bool)

(declare-fun e!2601019 () Bool)

(assert (=> b!4189943 (=> res!1719329 e!2601019)))

(assert (=> b!4189943 (= res!1719329 (not (isEmpty!27241 (tail!6739 p!2959))))))

(declare-fun b!4189944 () Bool)

(declare-fun derivativeStep!3805 (Regex!12573 C!25336) Regex!12573)

(assert (=> b!4189944 (= e!2601024 (matchR!6312 (derivativeStep!3805 (regex!7668 r!4142) (head!8892 p!2959)) (tail!6739 p!2959)))))

(declare-fun b!4189945 () Bool)

(declare-fun res!1719324 () Bool)

(assert (=> b!4189945 (=> (not res!1719324) (not e!2601020))))

(assert (=> b!4189945 (= res!1719324 (isEmpty!27241 (tail!6739 p!2959)))))

(declare-fun b!4189946 () Bool)

(declare-fun e!2601018 () Bool)

(assert (=> b!4189946 (= e!2601021 e!2601018)))

(declare-fun res!1719323 () Bool)

(assert (=> b!4189946 (=> (not res!1719323) (not e!2601018))))

(assert (=> b!4189946 (= res!1719323 (not lt!1492314))))

(declare-fun b!4189947 () Bool)

(assert (=> b!4189947 (= e!2601024 (nullable!4415 (regex!7668 r!4142)))))

(declare-fun b!4189948 () Bool)

(assert (=> b!4189948 (= e!2601019 (not (= (head!8892 p!2959) (c!714964 (regex!7668 r!4142)))))))

(declare-fun bm!292112 () Bool)

(declare-fun call!292117 () Bool)

(assert (=> bm!292112 (= call!292117 (isEmpty!27241 p!2959))))

(declare-fun b!4189949 () Bool)

(assert (=> b!4189949 (= e!2601018 e!2601019)))

(declare-fun res!1719326 () Bool)

(assert (=> b!4189949 (=> res!1719326 e!2601019)))

(assert (=> b!4189949 (= res!1719326 call!292117)))

(declare-fun b!4189950 () Bool)

(assert (=> b!4189950 (= e!2601023 (= lt!1492314 call!292117))))

(declare-fun b!4189951 () Bool)

(declare-fun res!1719322 () Bool)

(assert (=> b!4189951 (=> (not res!1719322) (not e!2601020))))

(assert (=> b!4189951 (= res!1719322 (not call!292117))))

(declare-fun b!4189952 () Bool)

(assert (=> b!4189952 (= e!2601020 (= (head!8892 p!2959) (c!714964 (regex!7668 r!4142))))))

(declare-fun b!4189953 () Bool)

(assert (=> b!4189953 (= e!2601023 e!2601022)))

(declare-fun c!715005 () Bool)

(assert (=> b!4189953 (= c!715005 ((_ is EmptyLang!12573) (regex!7668 r!4142)))))

(assert (= (and d!1235959 c!715003) b!4189947))

(assert (= (and d!1235959 (not c!715003)) b!4189944))

(assert (= (and d!1235959 c!715004) b!4189950))

(assert (= (and d!1235959 (not c!715004)) b!4189953))

(assert (= (and b!4189953 c!715005) b!4189940))

(assert (= (and b!4189953 (not c!715005)) b!4189941))

(assert (= (and b!4189941 (not res!1719325)) b!4189942))

(assert (= (and b!4189942 res!1719327) b!4189951))

(assert (= (and b!4189951 res!1719322) b!4189945))

(assert (= (and b!4189945 res!1719324) b!4189952))

(assert (= (and b!4189942 (not res!1719328)) b!4189946))

(assert (= (and b!4189946 res!1719323) b!4189949))

(assert (= (and b!4189949 (not res!1719326)) b!4189943))

(assert (= (and b!4189943 (not res!1719329)) b!4189948))

(assert (= (or b!4189950 b!4189949 b!4189951) bm!292112))

(assert (=> b!4189944 m!4778631))

(assert (=> b!4189944 m!4778631))

(declare-fun m!4778751 () Bool)

(assert (=> b!4189944 m!4778751))

(assert (=> b!4189944 m!4778635))

(assert (=> b!4189944 m!4778751))

(assert (=> b!4189944 m!4778635))

(declare-fun m!4778753 () Bool)

(assert (=> b!4189944 m!4778753))

(assert (=> b!4189943 m!4778635))

(assert (=> b!4189943 m!4778635))

(declare-fun m!4778755 () Bool)

(assert (=> b!4189943 m!4778755))

(assert (=> b!4189945 m!4778635))

(assert (=> b!4189945 m!4778635))

(assert (=> b!4189945 m!4778755))

(assert (=> b!4189948 m!4778631))

(declare-fun m!4778757 () Bool)

(assert (=> b!4189947 m!4778757))

(declare-fun m!4778759 () Bool)

(assert (=> d!1235959 m!4778759))

(assert (=> d!1235959 m!4778527))

(assert (=> b!4189952 m!4778631))

(assert (=> bm!292112 m!4778759))

(assert (=> b!4189689 d!1235959))

(declare-fun d!1235961 () Bool)

(declare-fun lt!1492317 () Int)

(assert (=> d!1235961 (= lt!1492317 (size!33801 (list!16624 lt!1492241)))))

(declare-fun size!33803 (Conc!13879) Int)

(assert (=> d!1235961 (= lt!1492317 (size!33803 (c!714965 lt!1492241)))))

(assert (=> d!1235961 (= (size!33800 lt!1492241) lt!1492317)))

(declare-fun bs!596598 () Bool)

(assert (= bs!596598 d!1235961))

(assert (=> bs!596598 m!4778559))

(assert (=> bs!596598 m!4778559))

(declare-fun m!4778761 () Bool)

(assert (=> bs!596598 m!4778761))

(declare-fun m!4778763 () Bool)

(assert (=> bs!596598 m!4778763))

(assert (=> b!4189690 d!1235961))

(declare-fun d!1235963 () Bool)

(declare-fun res!1719332 () Bool)

(declare-fun e!2601027 () Bool)

(assert (=> d!1235963 (=> (not res!1719332) (not e!2601027))))

(declare-fun rulesValid!2991 (LexerInterface!7261 List!46137) Bool)

(assert (=> d!1235963 (= res!1719332 (rulesValid!2991 thiss!25986 rules!3843))))

(assert (=> d!1235963 (= (rulesInvariant!6474 thiss!25986 rules!3843) e!2601027)))

(declare-fun b!4189956 () Bool)

(declare-datatypes ((List!46138 0))(
  ( (Nil!46014) (Cons!46014 (h!51434 String!53356) (t!345925 List!46138)) )
))
(declare-fun noDuplicateTag!3152 (LexerInterface!7261 List!46137 List!46138) Bool)

(assert (=> b!4189956 (= e!2601027 (noDuplicateTag!3152 thiss!25986 rules!3843 Nil!46014))))

(assert (= (and d!1235963 res!1719332) b!4189956))

(declare-fun m!4778765 () Bool)

(assert (=> d!1235963 m!4778765))

(declare-fun m!4778767 () Bool)

(assert (=> b!4189956 m!4778767))

(assert (=> b!4189701 d!1235963))

(declare-fun d!1235965 () Bool)

(assert (=> d!1235965 (= (inv!60558 (tag!8532 (h!51433 rules!3843))) (= (mod (str.len (value!239069 (tag!8532 (h!51433 rules!3843)))) 2) 0))))

(assert (=> b!4189691 d!1235965))

(declare-fun d!1235967 () Bool)

(declare-fun res!1719333 () Bool)

(declare-fun e!2601028 () Bool)

(assert (=> d!1235967 (=> (not res!1719333) (not e!2601028))))

(assert (=> d!1235967 (= res!1719333 (semiInverseModEq!3324 (toChars!10223 (transformation!7668 (h!51433 rules!3843))) (toValue!10364 (transformation!7668 (h!51433 rules!3843)))))))

(assert (=> d!1235967 (= (inv!60560 (transformation!7668 (h!51433 rules!3843))) e!2601028)))

(declare-fun b!4189957 () Bool)

(assert (=> b!4189957 (= e!2601028 (equivClasses!3223 (toChars!10223 (transformation!7668 (h!51433 rules!3843))) (toValue!10364 (transformation!7668 (h!51433 rules!3843)))))))

(assert (= (and d!1235967 res!1719333) b!4189957))

(declare-fun m!4778769 () Bool)

(assert (=> d!1235967 m!4778769))

(declare-fun m!4778771 () Bool)

(assert (=> b!4189957 m!4778771))

(assert (=> b!4189691 d!1235967))

(declare-fun d!1235969 () Bool)

(declare-fun lt!1492318 () Int)

(assert (=> d!1235969 (>= lt!1492318 0)))

(declare-fun e!2601029 () Int)

(assert (=> d!1235969 (= lt!1492318 e!2601029)))

(declare-fun c!715006 () Bool)

(assert (=> d!1235969 (= c!715006 ((_ is Nil!46011) pBis!107))))

(assert (=> d!1235969 (= (size!33801 pBis!107) lt!1492318)))

(declare-fun b!4189958 () Bool)

(assert (=> b!4189958 (= e!2601029 0)))

(declare-fun b!4189959 () Bool)

(assert (=> b!4189959 (= e!2601029 (+ 1 (size!33801 (t!345874 pBis!107))))))

(assert (= (and d!1235969 c!715006) b!4189958))

(assert (= (and d!1235969 (not c!715006)) b!4189959))

(declare-fun m!4778773 () Bool)

(assert (=> b!4189959 m!4778773))

(assert (=> b!4189702 d!1235969))

(declare-fun b!4189960 () Bool)

(declare-fun e!2601031 () Bool)

(declare-fun e!2601030 () Bool)

(assert (=> b!4189960 (= e!2601031 e!2601030)))

(declare-fun res!1719336 () Bool)

(assert (=> b!4189960 (=> (not res!1719336) (not e!2601030))))

(assert (=> b!4189960 (= res!1719336 (not ((_ is Nil!46011) input!3342)))))

(declare-fun b!4189961 () Bool)

(declare-fun res!1719335 () Bool)

(assert (=> b!4189961 (=> (not res!1719335) (not e!2601030))))

(assert (=> b!4189961 (= res!1719335 (= (head!8892 pBis!107) (head!8892 input!3342)))))

(declare-fun d!1235971 () Bool)

(declare-fun e!2601032 () Bool)

(assert (=> d!1235971 e!2601032))

(declare-fun res!1719334 () Bool)

(assert (=> d!1235971 (=> res!1719334 e!2601032)))

(declare-fun lt!1492319 () Bool)

(assert (=> d!1235971 (= res!1719334 (not lt!1492319))))

(assert (=> d!1235971 (= lt!1492319 e!2601031)))

(declare-fun res!1719337 () Bool)

(assert (=> d!1235971 (=> res!1719337 e!2601031)))

(assert (=> d!1235971 (= res!1719337 ((_ is Nil!46011) pBis!107))))

(assert (=> d!1235971 (= (isPrefix!4525 pBis!107 input!3342) lt!1492319)))

(declare-fun b!4189963 () Bool)

(assert (=> b!4189963 (= e!2601032 (>= (size!33801 input!3342) (size!33801 pBis!107)))))

(declare-fun b!4189962 () Bool)

(assert (=> b!4189962 (= e!2601030 (isPrefix!4525 (tail!6739 pBis!107) (tail!6739 input!3342)))))

(assert (= (and d!1235971 (not res!1719337)) b!4189960))

(assert (= (and b!4189960 res!1719336) b!4189961))

(assert (= (and b!4189961 res!1719335) b!4189962))

(assert (= (and d!1235971 (not res!1719334)) b!4189963))

(declare-fun m!4778775 () Bool)

(assert (=> b!4189961 m!4778775))

(assert (=> b!4189961 m!4778633))

(assert (=> b!4189963 m!4778533))

(assert (=> b!4189963 m!4778517))

(declare-fun m!4778777 () Bool)

(assert (=> b!4189962 m!4778777))

(assert (=> b!4189962 m!4778637))

(assert (=> b!4189962 m!4778777))

(assert (=> b!4189962 m!4778637))

(declare-fun m!4778779 () Bool)

(assert (=> b!4189962 m!4778779))

(assert (=> b!4189681 d!1235971))

(declare-fun d!1235973 () Bool)

(declare-fun res!1719338 () Bool)

(declare-fun e!2601033 () Bool)

(assert (=> d!1235973 (=> (not res!1719338) (not e!2601033))))

(assert (=> d!1235973 (= res!1719338 (validRegex!5690 (regex!7668 r!4142)))))

(assert (=> d!1235973 (= (ruleValid!3386 thiss!25986 r!4142) e!2601033)))

(declare-fun b!4189964 () Bool)

(declare-fun res!1719339 () Bool)

(assert (=> b!4189964 (=> (not res!1719339) (not e!2601033))))

(assert (=> b!4189964 (= res!1719339 (not (nullable!4415 (regex!7668 r!4142))))))

(declare-fun b!4189965 () Bool)

(assert (=> b!4189965 (= e!2601033 (not (= (tag!8532 r!4142) (String!53357 ""))))))

(assert (= (and d!1235973 res!1719338) b!4189964))

(assert (= (and b!4189964 res!1719339) b!4189965))

(assert (=> d!1235973 m!4778527))

(assert (=> b!4189964 m!4778757))

(assert (=> b!4189692 d!1235973))

(declare-fun d!1235975 () Bool)

(assert (=> d!1235975 (= (inv!60558 (tag!8532 rBis!167)) (= (mod (str.len (value!239069 (tag!8532 rBis!167))) 2) 0))))

(assert (=> b!4189703 d!1235975))

(declare-fun d!1235977 () Bool)

(declare-fun res!1719340 () Bool)

(declare-fun e!2601034 () Bool)

(assert (=> d!1235977 (=> (not res!1719340) (not e!2601034))))

(assert (=> d!1235977 (= res!1719340 (semiInverseModEq!3324 (toChars!10223 (transformation!7668 rBis!167)) (toValue!10364 (transformation!7668 rBis!167))))))

(assert (=> d!1235977 (= (inv!60560 (transformation!7668 rBis!167)) e!2601034)))

(declare-fun b!4189966 () Bool)

(assert (=> b!4189966 (= e!2601034 (equivClasses!3223 (toChars!10223 (transformation!7668 rBis!167)) (toValue!10364 (transformation!7668 rBis!167))))))

(assert (= (and d!1235977 res!1719340) b!4189966))

(declare-fun m!4778781 () Bool)

(assert (=> d!1235977 m!4778781))

(declare-fun m!4778783 () Bool)

(assert (=> b!4189966 m!4778783))

(assert (=> b!4189703 d!1235977))

(declare-fun b!4189976 () Bool)

(declare-fun e!2601039 () List!46135)

(assert (=> b!4189976 (= e!2601039 (Cons!46011 (h!51431 lt!1492248) (++!11740 (t!345874 lt!1492248) (_2!25039 lt!1492245))))))

(declare-fun b!4189975 () Bool)

(assert (=> b!4189975 (= e!2601039 (_2!25039 lt!1492245))))

(declare-fun lt!1492322 () List!46135)

(declare-fun e!2601040 () Bool)

(declare-fun b!4189978 () Bool)

(assert (=> b!4189978 (= e!2601040 (or (not (= (_2!25039 lt!1492245) Nil!46011)) (= lt!1492322 lt!1492248)))))

(declare-fun d!1235979 () Bool)

(assert (=> d!1235979 e!2601040))

(declare-fun res!1719346 () Bool)

(assert (=> d!1235979 (=> (not res!1719346) (not e!2601040))))

(declare-fun content!7166 (List!46135) (InoxSet C!25336))

(assert (=> d!1235979 (= res!1719346 (= (content!7166 lt!1492322) ((_ map or) (content!7166 lt!1492248) (content!7166 (_2!25039 lt!1492245)))))))

(assert (=> d!1235979 (= lt!1492322 e!2601039)))

(declare-fun c!715009 () Bool)

(assert (=> d!1235979 (= c!715009 ((_ is Nil!46011) lt!1492248))))

(assert (=> d!1235979 (= (++!11740 lt!1492248 (_2!25039 lt!1492245)) lt!1492322)))

(declare-fun b!4189977 () Bool)

(declare-fun res!1719345 () Bool)

(assert (=> b!4189977 (=> (not res!1719345) (not e!2601040))))

(assert (=> b!4189977 (= res!1719345 (= (size!33801 lt!1492322) (+ (size!33801 lt!1492248) (size!33801 (_2!25039 lt!1492245)))))))

(assert (= (and d!1235979 c!715009) b!4189975))

(assert (= (and d!1235979 (not c!715009)) b!4189976))

(assert (= (and d!1235979 res!1719346) b!4189977))

(assert (= (and b!4189977 res!1719345) b!4189978))

(declare-fun m!4778785 () Bool)

(assert (=> b!4189976 m!4778785))

(declare-fun m!4778787 () Bool)

(assert (=> d!1235979 m!4778787))

(declare-fun m!4778789 () Bool)

(assert (=> d!1235979 m!4778789))

(declare-fun m!4778791 () Bool)

(assert (=> d!1235979 m!4778791))

(declare-fun m!4778793 () Bool)

(assert (=> b!4189977 m!4778793))

(assert (=> b!4189977 m!4778539))

(declare-fun m!4778795 () Bool)

(assert (=> b!4189977 m!4778795))

(assert (=> b!4189682 d!1235979))

(declare-fun d!1235981 () Bool)

(declare-fun list!16626 (Conc!13879) List!46135)

(assert (=> d!1235981 (= (list!16624 lt!1492241) (list!16626 (c!714965 lt!1492241)))))

(declare-fun bs!596599 () Bool)

(assert (= bs!596599 d!1235981))

(declare-fun m!4778797 () Bool)

(assert (=> bs!596599 m!4778797))

(assert (=> b!4189682 d!1235981))

(declare-fun d!1235983 () Bool)

(declare-fun lt!1492325 () BalanceConc!27352)

(assert (=> d!1235983 (= (list!16624 lt!1492325) (originalCharacters!8056 (_1!25039 lt!1492245)))))

(declare-fun dynLambda!19795 (Int TokenValue!7898) BalanceConc!27352)

(assert (=> d!1235983 (= lt!1492325 (dynLambda!19795 (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245)))) (value!239070 (_1!25039 lt!1492245))))))

(assert (=> d!1235983 (= (charsOf!5103 (_1!25039 lt!1492245)) lt!1492325)))

(declare-fun b_lambda!123211 () Bool)

(assert (=> (not b_lambda!123211) (not d!1235983)))

(declare-fun tb!250955 () Bool)

(declare-fun t!345878 () Bool)

(assert (=> (and b!4189686 (= (toChars!10223 (transformation!7668 rBis!167)) (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245))))) t!345878) tb!250955))

(declare-fun b!4189983 () Bool)

(declare-fun e!2601043 () Bool)

(declare-fun tp!1280291 () Bool)

(declare-fun inv!60563 (Conc!13879) Bool)

(assert (=> b!4189983 (= e!2601043 (and (inv!60563 (c!714965 (dynLambda!19795 (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245)))) (value!239070 (_1!25039 lt!1492245))))) tp!1280291))))

(declare-fun result!305840 () Bool)

(declare-fun inv!60564 (BalanceConc!27352) Bool)

(assert (=> tb!250955 (= result!305840 (and (inv!60564 (dynLambda!19795 (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245)))) (value!239070 (_1!25039 lt!1492245)))) e!2601043))))

(assert (= tb!250955 b!4189983))

(declare-fun m!4778799 () Bool)

(assert (=> b!4189983 m!4778799))

(declare-fun m!4778801 () Bool)

(assert (=> tb!250955 m!4778801))

(assert (=> d!1235983 t!345878))

(declare-fun b_and!328253 () Bool)

(assert (= b_and!328243 (and (=> t!345878 result!305840) b_and!328253)))

(declare-fun tb!250957 () Bool)

(declare-fun t!345880 () Bool)

(assert (=> (and b!4189710 (= (toChars!10223 (transformation!7668 (h!51433 rules!3843))) (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245))))) t!345880) tb!250957))

(declare-fun result!305844 () Bool)

(assert (= result!305844 result!305840))

(assert (=> d!1235983 t!345880))

(declare-fun b_and!328255 () Bool)

(assert (= b_and!328247 (and (=> t!345880 result!305844) b_and!328255)))

(declare-fun tb!250959 () Bool)

(declare-fun t!345882 () Bool)

(assert (=> (and b!4189683 (= (toChars!10223 (transformation!7668 r!4142)) (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245))))) t!345882) tb!250959))

(declare-fun result!305846 () Bool)

(assert (= result!305846 result!305840))

(assert (=> d!1235983 t!345882))

(declare-fun b_and!328257 () Bool)

(assert (= b_and!328251 (and (=> t!345882 result!305846) b_and!328257)))

(declare-fun m!4778803 () Bool)

(assert (=> d!1235983 m!4778803))

(declare-fun m!4778805 () Bool)

(assert (=> d!1235983 m!4778805))

(assert (=> b!4189682 d!1235983))

(declare-fun b!4189984 () Bool)

(declare-fun e!2601045 () Bool)

(declare-fun e!2601044 () Bool)

(assert (=> b!4189984 (= e!2601045 e!2601044)))

(declare-fun res!1719349 () Bool)

(assert (=> b!4189984 (=> (not res!1719349) (not e!2601044))))

(assert (=> b!4189984 (= res!1719349 (not ((_ is Nil!46011) lt!1492246)))))

(declare-fun b!4189985 () Bool)

(declare-fun res!1719348 () Bool)

(assert (=> b!4189985 (=> (not res!1719348) (not e!2601044))))

(assert (=> b!4189985 (= res!1719348 (= (head!8892 lt!1492248) (head!8892 lt!1492246)))))

(declare-fun d!1235985 () Bool)

(declare-fun e!2601046 () Bool)

(assert (=> d!1235985 e!2601046))

(declare-fun res!1719347 () Bool)

(assert (=> d!1235985 (=> res!1719347 e!2601046)))

(declare-fun lt!1492326 () Bool)

(assert (=> d!1235985 (= res!1719347 (not lt!1492326))))

(assert (=> d!1235985 (= lt!1492326 e!2601045)))

(declare-fun res!1719350 () Bool)

(assert (=> d!1235985 (=> res!1719350 e!2601045)))

(assert (=> d!1235985 (= res!1719350 ((_ is Nil!46011) lt!1492248))))

(assert (=> d!1235985 (= (isPrefix!4525 lt!1492248 lt!1492246) lt!1492326)))

(declare-fun b!4189987 () Bool)

(assert (=> b!4189987 (= e!2601046 (>= (size!33801 lt!1492246) (size!33801 lt!1492248)))))

(declare-fun b!4189986 () Bool)

(assert (=> b!4189986 (= e!2601044 (isPrefix!4525 (tail!6739 lt!1492248) (tail!6739 lt!1492246)))))

(assert (= (and d!1235985 (not res!1719350)) b!4189984))

(assert (= (and b!4189984 res!1719349) b!4189985))

(assert (= (and b!4189985 res!1719348) b!4189986))

(assert (= (and d!1235985 (not res!1719347)) b!4189987))

(assert (=> b!4189985 m!4778641))

(declare-fun m!4778807 () Bool)

(assert (=> b!4189985 m!4778807))

(declare-fun m!4778809 () Bool)

(assert (=> b!4189987 m!4778809))

(assert (=> b!4189987 m!4778539))

(assert (=> b!4189986 m!4778643))

(declare-fun m!4778811 () Bool)

(assert (=> b!4189986 m!4778811))

(assert (=> b!4189986 m!4778643))

(assert (=> b!4189986 m!4778811))

(declare-fun m!4778813 () Bool)

(assert (=> b!4189986 m!4778813))

(assert (=> b!4189682 d!1235985))

(declare-fun d!1235987 () Bool)

(assert (=> d!1235987 (= (get!14961 lt!1492238) (v!40689 lt!1492238))))

(assert (=> b!4189682 d!1235987))

(declare-fun d!1235989 () Bool)

(assert (=> d!1235989 (isPrefix!4525 lt!1492248 (++!11740 lt!1492248 (_2!25039 lt!1492245)))))

(declare-fun lt!1492329 () Unit!65095)

(declare-fun choose!25666 (List!46135 List!46135) Unit!65095)

(assert (=> d!1235989 (= lt!1492329 (choose!25666 lt!1492248 (_2!25039 lt!1492245)))))

(assert (=> d!1235989 (= (lemmaConcatTwoListThenFirstIsPrefix!3022 lt!1492248 (_2!25039 lt!1492245)) lt!1492329)))

(declare-fun bs!596600 () Bool)

(assert (= bs!596600 d!1235989))

(assert (=> bs!596600 m!4778563))

(assert (=> bs!596600 m!4778563))

(declare-fun m!4778815 () Bool)

(assert (=> bs!596600 m!4778815))

(declare-fun m!4778817 () Bool)

(assert (=> bs!596600 m!4778817))

(assert (=> b!4189682 d!1235989))

(declare-fun b!4190198 () Bool)

(declare-fun e!2601171 () Bool)

(assert (=> b!4190198 (= e!2601171 true)))

(declare-fun d!1235991 () Bool)

(assert (=> d!1235991 e!2601171))

(assert (= d!1235991 b!4190198))

(declare-fun order!24339 () Int)

(declare-fun order!24337 () Int)

(declare-fun lambda!129475 () Int)

(declare-fun dynLambda!19796 (Int Int) Int)

(declare-fun dynLambda!19797 (Int Int) Int)

(assert (=> b!4190198 (< (dynLambda!19796 order!24337 (toValue!10364 (transformation!7668 r!4142))) (dynLambda!19797 order!24339 lambda!129475))))

(declare-fun order!24341 () Int)

(declare-fun dynLambda!19798 (Int Int) Int)

(assert (=> b!4190198 (< (dynLambda!19798 order!24341 (toChars!10223 (transformation!7668 r!4142))) (dynLambda!19797 order!24339 lambda!129475))))

(declare-fun dynLambda!19799 (Int BalanceConc!27352) TokenValue!7898)

(assert (=> d!1235991 (= (list!16624 (dynLambda!19795 (toChars!10223 (transformation!7668 r!4142)) (dynLambda!19799 (toValue!10364 (transformation!7668 r!4142)) lt!1492250))) (list!16624 lt!1492250))))

(declare-fun lt!1492403 () Unit!65095)

(declare-fun ForallOf!1058 (Int BalanceConc!27352) Unit!65095)

(assert (=> d!1235991 (= lt!1492403 (ForallOf!1058 lambda!129475 lt!1492250))))

(assert (=> d!1235991 (= (lemmaSemiInverse!2434 (transformation!7668 r!4142) lt!1492250) lt!1492403)))

(declare-fun b_lambda!123227 () Bool)

(assert (=> (not b_lambda!123227) (not d!1235991)))

(declare-fun tb!250985 () Bool)

(declare-fun t!345908 () Bool)

(assert (=> (and b!4189686 (= (toChars!10223 (transformation!7668 rBis!167)) (toChars!10223 (transformation!7668 r!4142))) t!345908) tb!250985))

(declare-fun e!2601172 () Bool)

(declare-fun b!4190199 () Bool)

(declare-fun tp!1280338 () Bool)

(assert (=> b!4190199 (= e!2601172 (and (inv!60563 (c!714965 (dynLambda!19795 (toChars!10223 (transformation!7668 r!4142)) (dynLambda!19799 (toValue!10364 (transformation!7668 r!4142)) lt!1492250)))) tp!1280338))))

(declare-fun result!305882 () Bool)

(assert (=> tb!250985 (= result!305882 (and (inv!60564 (dynLambda!19795 (toChars!10223 (transformation!7668 r!4142)) (dynLambda!19799 (toValue!10364 (transformation!7668 r!4142)) lt!1492250))) e!2601172))))

(assert (= tb!250985 b!4190199))

(declare-fun m!4779051 () Bool)

(assert (=> b!4190199 m!4779051))

(declare-fun m!4779053 () Bool)

(assert (=> tb!250985 m!4779053))

(assert (=> d!1235991 t!345908))

(declare-fun b_and!328287 () Bool)

(assert (= b_and!328253 (and (=> t!345908 result!305882) b_and!328287)))

(declare-fun tb!250987 () Bool)

(declare-fun t!345910 () Bool)

(assert (=> (and b!4189710 (= (toChars!10223 (transformation!7668 (h!51433 rules!3843))) (toChars!10223 (transformation!7668 r!4142))) t!345910) tb!250987))

(declare-fun result!305884 () Bool)

(assert (= result!305884 result!305882))

(assert (=> d!1235991 t!345910))

(declare-fun b_and!328289 () Bool)

(assert (= b_and!328255 (and (=> t!345910 result!305884) b_and!328289)))

(declare-fun t!345912 () Bool)

(declare-fun tb!250989 () Bool)

(assert (=> (and b!4189683 (= (toChars!10223 (transformation!7668 r!4142)) (toChars!10223 (transformation!7668 r!4142))) t!345912) tb!250989))

(declare-fun result!305886 () Bool)

(assert (= result!305886 result!305882))

(assert (=> d!1235991 t!345912))

(declare-fun b_and!328291 () Bool)

(assert (= b_and!328257 (and (=> t!345912 result!305886) b_and!328291)))

(declare-fun b_lambda!123229 () Bool)

(assert (=> (not b_lambda!123229) (not d!1235991)))

(declare-fun t!345914 () Bool)

(declare-fun tb!250991 () Bool)

(assert (=> (and b!4189686 (= (toValue!10364 (transformation!7668 rBis!167)) (toValue!10364 (transformation!7668 r!4142))) t!345914) tb!250991))

(declare-fun result!305888 () Bool)

(declare-fun inv!21 (TokenValue!7898) Bool)

(assert (=> tb!250991 (= result!305888 (inv!21 (dynLambda!19799 (toValue!10364 (transformation!7668 r!4142)) lt!1492250)))))

(declare-fun m!4779055 () Bool)

(assert (=> tb!250991 m!4779055))

(assert (=> d!1235991 t!345914))

(declare-fun b_and!328293 () Bool)

(assert (= b_and!328241 (and (=> t!345914 result!305888) b_and!328293)))

(declare-fun t!345916 () Bool)

(declare-fun tb!250993 () Bool)

(assert (=> (and b!4189710 (= (toValue!10364 (transformation!7668 (h!51433 rules!3843))) (toValue!10364 (transformation!7668 r!4142))) t!345916) tb!250993))

(declare-fun result!305892 () Bool)

(assert (= result!305892 result!305888))

(assert (=> d!1235991 t!345916))

(declare-fun b_and!328295 () Bool)

(assert (= b_and!328245 (and (=> t!345916 result!305892) b_and!328295)))

(declare-fun t!345918 () Bool)

(declare-fun tb!250995 () Bool)

(assert (=> (and b!4189683 (= (toValue!10364 (transformation!7668 r!4142)) (toValue!10364 (transformation!7668 r!4142))) t!345918) tb!250995))

(declare-fun result!305894 () Bool)

(assert (= result!305894 result!305888))

(assert (=> d!1235991 t!345918))

(declare-fun b_and!328297 () Bool)

(assert (= b_and!328249 (and (=> t!345918 result!305894) b_and!328297)))

(declare-fun m!4779057 () Bool)

(assert (=> d!1235991 m!4779057))

(declare-fun m!4779059 () Bool)

(assert (=> d!1235991 m!4779059))

(declare-fun m!4779061 () Bool)

(assert (=> d!1235991 m!4779061))

(declare-fun m!4779063 () Bool)

(assert (=> d!1235991 m!4779063))

(declare-fun m!4779065 () Bool)

(assert (=> d!1235991 m!4779065))

(assert (=> d!1235991 m!4779065))

(assert (=> d!1235991 m!4779059))

(assert (=> b!4189693 d!1235991))

(declare-fun d!1236055 () Bool)

(declare-fun lt!1492406 () List!46135)

(assert (=> d!1236055 (= (++!11740 p!2959 lt!1492406) input!3342)))

(declare-fun e!2601178 () List!46135)

(assert (=> d!1236055 (= lt!1492406 e!2601178)))

(declare-fun c!715037 () Bool)

(assert (=> d!1236055 (= c!715037 ((_ is Cons!46011) p!2959))))

(assert (=> d!1236055 (>= (size!33801 input!3342) (size!33801 p!2959))))

(assert (=> d!1236055 (= (getSuffix!2818 input!3342 p!2959) lt!1492406)))

(declare-fun b!4190206 () Bool)

(assert (=> b!4190206 (= e!2601178 (getSuffix!2818 (tail!6739 input!3342) (t!345874 p!2959)))))

(declare-fun b!4190207 () Bool)

(assert (=> b!4190207 (= e!2601178 input!3342)))

(assert (= (and d!1236055 c!715037) b!4190206))

(assert (= (and d!1236055 (not c!715037)) b!4190207))

(declare-fun m!4779067 () Bool)

(assert (=> d!1236055 m!4779067))

(assert (=> d!1236055 m!4778533))

(assert (=> d!1236055 m!4778591))

(assert (=> b!4190206 m!4778637))

(assert (=> b!4190206 m!4778637))

(declare-fun m!4779069 () Bool)

(assert (=> b!4190206 m!4779069))

(assert (=> b!4189693 d!1236055))

(declare-fun b!4190208 () Bool)

(declare-fun e!2601180 () Bool)

(declare-fun e!2601179 () Bool)

(assert (=> b!4190208 (= e!2601180 e!2601179)))

(declare-fun res!1719458 () Bool)

(assert (=> b!4190208 (=> (not res!1719458) (not e!2601179))))

(assert (=> b!4190208 (= res!1719458 (not ((_ is Nil!46011) input!3342)))))

(declare-fun b!4190209 () Bool)

(declare-fun res!1719457 () Bool)

(assert (=> b!4190209 (=> (not res!1719457) (not e!2601179))))

(assert (=> b!4190209 (= res!1719457 (= (head!8892 input!3342) (head!8892 input!3342)))))

(declare-fun d!1236057 () Bool)

(declare-fun e!2601181 () Bool)

(assert (=> d!1236057 e!2601181))

(declare-fun res!1719456 () Bool)

(assert (=> d!1236057 (=> res!1719456 e!2601181)))

(declare-fun lt!1492407 () Bool)

(assert (=> d!1236057 (= res!1719456 (not lt!1492407))))

(assert (=> d!1236057 (= lt!1492407 e!2601180)))

(declare-fun res!1719459 () Bool)

(assert (=> d!1236057 (=> res!1719459 e!2601180)))

(assert (=> d!1236057 (= res!1719459 ((_ is Nil!46011) input!3342))))

(assert (=> d!1236057 (= (isPrefix!4525 input!3342 input!3342) lt!1492407)))

(declare-fun b!4190211 () Bool)

(assert (=> b!4190211 (= e!2601181 (>= (size!33801 input!3342) (size!33801 input!3342)))))

(declare-fun b!4190210 () Bool)

(assert (=> b!4190210 (= e!2601179 (isPrefix!4525 (tail!6739 input!3342) (tail!6739 input!3342)))))

(assert (= (and d!1236057 (not res!1719459)) b!4190208))

(assert (= (and b!4190208 res!1719458) b!4190209))

(assert (= (and b!4190209 res!1719457) b!4190210))

(assert (= (and d!1236057 (not res!1719456)) b!4190211))

(assert (=> b!4190209 m!4778633))

(assert (=> b!4190209 m!4778633))

(assert (=> b!4190211 m!4778533))

(assert (=> b!4190211 m!4778533))

(assert (=> b!4190210 m!4778637))

(assert (=> b!4190210 m!4778637))

(assert (=> b!4190210 m!4778637))

(assert (=> b!4190210 m!4778637))

(declare-fun m!4779071 () Bool)

(assert (=> b!4190210 m!4779071))

(assert (=> b!4189693 d!1236057))

(declare-fun d!1236059 () Bool)

(declare-fun fromListB!2607 (List!46135) BalanceConc!27352)

(assert (=> d!1236059 (= (seqFromList!5693 p!2959) (fromListB!2607 p!2959))))

(declare-fun bs!596608 () Bool)

(assert (= bs!596608 d!1236059))

(declare-fun m!4779073 () Bool)

(assert (=> bs!596608 m!4779073))

(assert (=> b!4189693 d!1236059))

(declare-fun d!1236061 () Bool)

(assert (=> d!1236061 (isPrefix!4525 input!3342 input!3342)))

(declare-fun lt!1492410 () Unit!65095)

(declare-fun choose!25667 (List!46135 List!46135) Unit!65095)

(assert (=> d!1236061 (= lt!1492410 (choose!25667 input!3342 input!3342))))

(assert (=> d!1236061 (= (lemmaIsPrefixRefl!2954 input!3342 input!3342) lt!1492410)))

(declare-fun bs!596609 () Bool)

(assert (= bs!596609 d!1236061))

(assert (=> bs!596609 m!4778585))

(declare-fun m!4779075 () Bool)

(assert (=> bs!596609 m!4779075))

(assert (=> b!4189693 d!1236061))

(declare-fun b!4190212 () Bool)

(declare-fun e!2601183 () Bool)

(declare-fun e!2601184 () Bool)

(assert (=> b!4190212 (= e!2601183 e!2601184)))

(declare-fun res!1719464 () Bool)

(assert (=> b!4190212 (=> (not res!1719464) (not e!2601184))))

(declare-fun lt!1492414 () Option!9862)

(assert (=> b!4190212 (= res!1719464 (matchR!6312 (regex!7668 r!4142) (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492414))))))))

(declare-fun b!4190213 () Bool)

(declare-fun res!1719461 () Bool)

(assert (=> b!4190213 (=> (not res!1719461) (not e!2601184))))

(assert (=> b!4190213 (= res!1719461 (= (value!239070 (_1!25039 (get!14961 lt!1492414))) (apply!10633 (transformation!7668 (rule!10748 (_1!25039 (get!14961 lt!1492414)))) (seqFromList!5693 (originalCharacters!8056 (_1!25039 (get!14961 lt!1492414)))))))))

(declare-fun b!4190215 () Bool)

(declare-fun e!2601182 () Option!9862)

(declare-fun lt!1492411 () tuple2!43814)

(assert (=> b!4190215 (= e!2601182 (Some!9861 (tuple2!43811 (Token!14051 (apply!10633 (transformation!7668 r!4142) (seqFromList!5693 (_1!25041 lt!1492411))) r!4142 (size!33800 (seqFromList!5693 (_1!25041 lt!1492411))) (_1!25041 lt!1492411)) (_2!25041 lt!1492411))))))

(declare-fun lt!1492413 () Unit!65095)

(assert (=> b!4190215 (= lt!1492413 (longestMatchIsAcceptedByMatchOrIsEmpty!1578 (regex!7668 r!4142) input!3342))))

(declare-fun res!1719460 () Bool)

(assert (=> b!4190215 (= res!1719460 (isEmpty!27241 (_1!25041 (findLongestMatchInner!1605 (regex!7668 r!4142) Nil!46011 (size!33801 Nil!46011) input!3342 input!3342 (size!33801 input!3342)))))))

(declare-fun e!2601185 () Bool)

(assert (=> b!4190215 (=> res!1719460 e!2601185)))

(assert (=> b!4190215 e!2601185))

(declare-fun lt!1492412 () Unit!65095)

(assert (=> b!4190215 (= lt!1492412 lt!1492413)))

(declare-fun lt!1492415 () Unit!65095)

(assert (=> b!4190215 (= lt!1492415 (lemmaSemiInverse!2434 (transformation!7668 r!4142) (seqFromList!5693 (_1!25041 lt!1492411))))))

(declare-fun b!4190216 () Bool)

(declare-fun res!1719462 () Bool)

(assert (=> b!4190216 (=> (not res!1719462) (not e!2601184))))

(assert (=> b!4190216 (= res!1719462 (< (size!33801 (_2!25039 (get!14961 lt!1492414))) (size!33801 input!3342)))))

(declare-fun b!4190217 () Bool)

(declare-fun res!1719466 () Bool)

(assert (=> b!4190217 (=> (not res!1719466) (not e!2601184))))

(assert (=> b!4190217 (= res!1719466 (= (rule!10748 (_1!25039 (get!14961 lt!1492414))) r!4142))))

(declare-fun b!4190218 () Bool)

(assert (=> b!4190218 (= e!2601185 (matchR!6312 (regex!7668 r!4142) (_1!25041 (findLongestMatchInner!1605 (regex!7668 r!4142) Nil!46011 (size!33801 Nil!46011) input!3342 input!3342 (size!33801 input!3342)))))))

(declare-fun b!4190219 () Bool)

(declare-fun res!1719465 () Bool)

(assert (=> b!4190219 (=> (not res!1719465) (not e!2601184))))

(assert (=> b!4190219 (= res!1719465 (= (++!11740 (list!16624 (charsOf!5103 (_1!25039 (get!14961 lt!1492414)))) (_2!25039 (get!14961 lt!1492414))) input!3342))))

(declare-fun b!4190220 () Bool)

(assert (=> b!4190220 (= e!2601182 None!9861)))

(declare-fun d!1236063 () Bool)

(assert (=> d!1236063 e!2601183))

(declare-fun res!1719463 () Bool)

(assert (=> d!1236063 (=> res!1719463 e!2601183)))

(assert (=> d!1236063 (= res!1719463 (isEmpty!27238 lt!1492414))))

(assert (=> d!1236063 (= lt!1492414 e!2601182)))

(declare-fun c!715038 () Bool)

(assert (=> d!1236063 (= c!715038 (isEmpty!27241 (_1!25041 lt!1492411)))))

(assert (=> d!1236063 (= lt!1492411 (findLongestMatch!1518 (regex!7668 r!4142) input!3342))))

(assert (=> d!1236063 (ruleValid!3386 thiss!25986 r!4142)))

(assert (=> d!1236063 (= (maxPrefixOneRule!3270 thiss!25986 r!4142 input!3342) lt!1492414)))

(declare-fun b!4190214 () Bool)

(assert (=> b!4190214 (= e!2601184 (= (size!33799 (_1!25039 (get!14961 lt!1492414))) (size!33801 (originalCharacters!8056 (_1!25039 (get!14961 lt!1492414))))))))

(assert (= (and d!1236063 c!715038) b!4190220))

(assert (= (and d!1236063 (not c!715038)) b!4190215))

(assert (= (and b!4190215 (not res!1719460)) b!4190218))

(assert (= (and d!1236063 (not res!1719463)) b!4190212))

(assert (= (and b!4190212 res!1719464) b!4190219))

(assert (= (and b!4190219 res!1719465) b!4190216))

(assert (= (and b!4190216 res!1719462) b!4190217))

(assert (= (and b!4190217 res!1719466) b!4190213))

(assert (= (and b!4190213 res!1719461) b!4190214))

(declare-fun m!4779077 () Bool)

(assert (=> b!4190219 m!4779077))

(declare-fun m!4779079 () Bool)

(assert (=> b!4190219 m!4779079))

(assert (=> b!4190219 m!4779079))

(declare-fun m!4779081 () Bool)

(assert (=> b!4190219 m!4779081))

(assert (=> b!4190219 m!4779081))

(declare-fun m!4779083 () Bool)

(assert (=> b!4190219 m!4779083))

(assert (=> b!4190216 m!4779077))

(declare-fun m!4779085 () Bool)

(assert (=> b!4190216 m!4779085))

(assert (=> b!4190216 m!4778533))

(declare-fun m!4779087 () Bool)

(assert (=> d!1236063 m!4779087))

(declare-fun m!4779089 () Bool)

(assert (=> d!1236063 m!4779089))

(declare-fun m!4779091 () Bool)

(assert (=> d!1236063 m!4779091))

(assert (=> d!1236063 m!4778565))

(assert (=> b!4190214 m!4779077))

(declare-fun m!4779093 () Bool)

(assert (=> b!4190214 m!4779093))

(assert (=> b!4190213 m!4779077))

(declare-fun m!4779095 () Bool)

(assert (=> b!4190213 m!4779095))

(assert (=> b!4190213 m!4779095))

(declare-fun m!4779097 () Bool)

(assert (=> b!4190213 m!4779097))

(declare-fun m!4779099 () Bool)

(assert (=> b!4190215 m!4779099))

(declare-fun m!4779101 () Bool)

(assert (=> b!4190215 m!4779101))

(assert (=> b!4190215 m!4779099))

(declare-fun m!4779103 () Bool)

(assert (=> b!4190215 m!4779103))

(assert (=> b!4190215 m!4778533))

(assert (=> b!4190215 m!4779099))

(declare-fun m!4779105 () Bool)

(assert (=> b!4190215 m!4779105))

(declare-fun m!4779107 () Bool)

(assert (=> b!4190215 m!4779107))

(assert (=> b!4190215 m!4778735))

(assert (=> b!4190215 m!4778533))

(declare-fun m!4779109 () Bool)

(assert (=> b!4190215 m!4779109))

(assert (=> b!4190215 m!4779099))

(declare-fun m!4779111 () Bool)

(assert (=> b!4190215 m!4779111))

(assert (=> b!4190215 m!4778735))

(assert (=> b!4190217 m!4779077))

(assert (=> b!4190212 m!4779077))

(assert (=> b!4190212 m!4779079))

(assert (=> b!4190212 m!4779079))

(assert (=> b!4190212 m!4779081))

(assert (=> b!4190212 m!4779081))

(declare-fun m!4779113 () Bool)

(assert (=> b!4190212 m!4779113))

(assert (=> b!4190218 m!4778735))

(assert (=> b!4190218 m!4778533))

(assert (=> b!4190218 m!4778735))

(assert (=> b!4190218 m!4778533))

(assert (=> b!4190218 m!4779109))

(declare-fun m!4779115 () Bool)

(assert (=> b!4190218 m!4779115))

(assert (=> b!4189693 d!1236063))

(declare-fun d!1236065 () Bool)

(assert (=> d!1236065 (= (apply!10633 (transformation!7668 r!4142) lt!1492250) (dynLambda!19799 (toValue!10364 (transformation!7668 r!4142)) lt!1492250))))

(declare-fun b_lambda!123231 () Bool)

(assert (=> (not b_lambda!123231) (not d!1236065)))

(assert (=> d!1236065 t!345914))

(declare-fun b_and!328299 () Bool)

(assert (= b_and!328293 (and (=> t!345914 result!305888) b_and!328299)))

(assert (=> d!1236065 t!345916))

(declare-fun b_and!328301 () Bool)

(assert (= b_and!328295 (and (=> t!345916 result!305892) b_and!328301)))

(assert (=> d!1236065 t!345918))

(declare-fun b_and!328303 () Bool)

(assert (= b_and!328297 (and (=> t!345918 result!305894) b_and!328303)))

(assert (=> d!1236065 m!4779065))

(assert (=> b!4189693 d!1236065))

(declare-fun d!1236067 () Bool)

(declare-fun lt!1492416 () Int)

(assert (=> d!1236067 (>= lt!1492416 0)))

(declare-fun e!2601186 () Int)

(assert (=> d!1236067 (= lt!1492416 e!2601186)))

(declare-fun c!715039 () Bool)

(assert (=> d!1236067 (= c!715039 ((_ is Nil!46011) p!2959))))

(assert (=> d!1236067 (= (size!33801 p!2959) lt!1492416)))

(declare-fun b!4190221 () Bool)

(assert (=> b!4190221 (= e!2601186 0)))

(declare-fun b!4190222 () Bool)

(assert (=> b!4190222 (= e!2601186 (+ 1 (size!33801 (t!345874 p!2959))))))

(assert (= (and d!1236067 c!715039) b!4190221))

(assert (= (and d!1236067 (not c!715039)) b!4190222))

(declare-fun m!4779117 () Bool)

(assert (=> b!4190222 m!4779117))

(assert (=> b!4189693 d!1236067))

(declare-fun b!4190227 () Bool)

(declare-fun e!2601189 () Bool)

(declare-fun tp!1280341 () Bool)

(assert (=> b!4190227 (= e!2601189 (and tp_is_empty!22109 tp!1280341))))

(assert (=> b!4189694 (= tp!1280285 e!2601189)))

(assert (= (and b!4189694 ((_ is Cons!46011) (t!345874 input!3342))) b!4190227))

(declare-fun b!4190228 () Bool)

(declare-fun e!2601190 () Bool)

(declare-fun tp!1280342 () Bool)

(assert (=> b!4190228 (= e!2601190 (and tp_is_empty!22109 tp!1280342))))

(assert (=> b!4189700 (= tp!1280281 e!2601190)))

(assert (= (and b!4189700 ((_ is Cons!46011) (t!345874 pBis!107))) b!4190228))

(declare-fun b!4190239 () Bool)

(declare-fun e!2601193 () Bool)

(assert (=> b!4190239 (= e!2601193 tp_is_empty!22109)))

(assert (=> b!4189691 (= tp!1280288 e!2601193)))

(declare-fun b!4190242 () Bool)

(declare-fun tp!1280354 () Bool)

(declare-fun tp!1280353 () Bool)

(assert (=> b!4190242 (= e!2601193 (and tp!1280354 tp!1280353))))

(declare-fun b!4190241 () Bool)

(declare-fun tp!1280355 () Bool)

(assert (=> b!4190241 (= e!2601193 tp!1280355)))

(declare-fun b!4190240 () Bool)

(declare-fun tp!1280356 () Bool)

(declare-fun tp!1280357 () Bool)

(assert (=> b!4190240 (= e!2601193 (and tp!1280356 tp!1280357))))

(assert (= (and b!4189691 ((_ is ElementMatch!12573) (regex!7668 (h!51433 rules!3843)))) b!4190239))

(assert (= (and b!4189691 ((_ is Concat!20472) (regex!7668 (h!51433 rules!3843)))) b!4190240))

(assert (= (and b!4189691 ((_ is Star!12573) (regex!7668 (h!51433 rules!3843)))) b!4190241))

(assert (= (and b!4189691 ((_ is Union!12573) (regex!7668 (h!51433 rules!3843)))) b!4190242))

(declare-fun b!4190253 () Bool)

(declare-fun b_free!121975 () Bool)

(declare-fun b_next!122679 () Bool)

(assert (=> b!4190253 (= b_free!121975 (not b_next!122679))))

(declare-fun t!345920 () Bool)

(declare-fun tb!250997 () Bool)

(assert (=> (and b!4190253 (= (toValue!10364 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toValue!10364 (transformation!7668 r!4142))) t!345920) tb!250997))

(declare-fun result!305902 () Bool)

(assert (= result!305902 result!305888))

(assert (=> d!1235991 t!345920))

(assert (=> d!1236065 t!345920))

(declare-fun tp!1280369 () Bool)

(declare-fun b_and!328305 () Bool)

(assert (=> b!4190253 (= tp!1280369 (and (=> t!345920 result!305902) b_and!328305))))

(declare-fun b_free!121977 () Bool)

(declare-fun b_next!122681 () Bool)

(assert (=> b!4190253 (= b_free!121977 (not b_next!122681))))

(declare-fun t!345922 () Bool)

(declare-fun tb!250999 () Bool)

(assert (=> (and b!4190253 (= (toChars!10223 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toChars!10223 (transformation!7668 (rule!10748 (_1!25039 lt!1492245))))) t!345922) tb!250999))

(declare-fun result!305904 () Bool)

(assert (= result!305904 result!305840))

(assert (=> d!1235983 t!345922))

(declare-fun tb!251001 () Bool)

(declare-fun t!345924 () Bool)

(assert (=> (and b!4190253 (= (toChars!10223 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toChars!10223 (transformation!7668 r!4142))) t!345924) tb!251001))

(declare-fun result!305906 () Bool)

(assert (= result!305906 result!305882))

(assert (=> d!1235991 t!345924))

(declare-fun b_and!328307 () Bool)

(declare-fun tp!1280367 () Bool)

(assert (=> b!4190253 (= tp!1280367 (and (=> t!345922 result!305904) (=> t!345924 result!305906) b_and!328307))))

(declare-fun e!2601202 () Bool)

(assert (=> b!4190253 (= e!2601202 (and tp!1280369 tp!1280367))))

(declare-fun e!2601203 () Bool)

(declare-fun tp!1280366 () Bool)

(declare-fun b!4190252 () Bool)

(assert (=> b!4190252 (= e!2601203 (and tp!1280366 (inv!60558 (tag!8532 (h!51433 (t!345876 rules!3843)))) (inv!60560 (transformation!7668 (h!51433 (t!345876 rules!3843)))) e!2601202))))

(declare-fun b!4190251 () Bool)

(declare-fun e!2601205 () Bool)

(declare-fun tp!1280368 () Bool)

(assert (=> b!4190251 (= e!2601205 (and e!2601203 tp!1280368))))

(assert (=> b!4189708 (= tp!1280278 e!2601205)))

(assert (= b!4190252 b!4190253))

(assert (= b!4190251 b!4190252))

(assert (= (and b!4189708 ((_ is Cons!46013) (t!345876 rules!3843))) b!4190251))

(declare-fun m!4779119 () Bool)

(assert (=> b!4190252 m!4779119))

(declare-fun m!4779121 () Bool)

(assert (=> b!4190252 m!4779121))

(declare-fun b!4190254 () Bool)

(declare-fun e!2601206 () Bool)

(assert (=> b!4190254 (= e!2601206 tp_is_empty!22109)))

(assert (=> b!4189703 (= tp!1280279 e!2601206)))

(declare-fun b!4190257 () Bool)

(declare-fun tp!1280371 () Bool)

(declare-fun tp!1280370 () Bool)

(assert (=> b!4190257 (= e!2601206 (and tp!1280371 tp!1280370))))

(declare-fun b!4190256 () Bool)

(declare-fun tp!1280372 () Bool)

(assert (=> b!4190256 (= e!2601206 tp!1280372)))

(declare-fun b!4190255 () Bool)

(declare-fun tp!1280373 () Bool)

(declare-fun tp!1280374 () Bool)

(assert (=> b!4190255 (= e!2601206 (and tp!1280373 tp!1280374))))

(assert (= (and b!4189703 ((_ is ElementMatch!12573) (regex!7668 rBis!167))) b!4190254))

(assert (= (and b!4189703 ((_ is Concat!20472) (regex!7668 rBis!167))) b!4190255))

(assert (= (and b!4189703 ((_ is Star!12573) (regex!7668 rBis!167))) b!4190256))

(assert (= (and b!4189703 ((_ is Union!12573) (regex!7668 rBis!167))) b!4190257))

(declare-fun b!4190258 () Bool)

(declare-fun e!2601207 () Bool)

(declare-fun tp!1280375 () Bool)

(assert (=> b!4190258 (= e!2601207 (and tp_is_empty!22109 tp!1280375))))

(assert (=> b!4189709 (= tp!1280280 e!2601207)))

(assert (= (and b!4189709 ((_ is Cons!46011) (t!345874 p!2959))) b!4190258))

(declare-fun b!4190259 () Bool)

(declare-fun e!2601208 () Bool)

(assert (=> b!4190259 (= e!2601208 tp_is_empty!22109)))

(assert (=> b!4189699 (= tp!1280282 e!2601208)))

(declare-fun b!4190262 () Bool)

(declare-fun tp!1280377 () Bool)

(declare-fun tp!1280376 () Bool)

(assert (=> b!4190262 (= e!2601208 (and tp!1280377 tp!1280376))))

(declare-fun b!4190261 () Bool)

(declare-fun tp!1280378 () Bool)

(assert (=> b!4190261 (= e!2601208 tp!1280378)))

(declare-fun b!4190260 () Bool)

(declare-fun tp!1280379 () Bool)

(declare-fun tp!1280380 () Bool)

(assert (=> b!4190260 (= e!2601208 (and tp!1280379 tp!1280380))))

(assert (= (and b!4189699 ((_ is ElementMatch!12573) (regex!7668 r!4142))) b!4190259))

(assert (= (and b!4189699 ((_ is Concat!20472) (regex!7668 r!4142))) b!4190260))

(assert (= (and b!4189699 ((_ is Star!12573) (regex!7668 r!4142))) b!4190261))

(assert (= (and b!4189699 ((_ is Union!12573) (regex!7668 r!4142))) b!4190262))

(declare-fun b_lambda!123233 () Bool)

(assert (= b_lambda!123229 (or (and b!4189686 b_free!121959 (= (toValue!10364 (transformation!7668 rBis!167)) (toValue!10364 (transformation!7668 r!4142)))) (and b!4189710 b_free!121963 (= (toValue!10364 (transformation!7668 (h!51433 rules!3843))) (toValue!10364 (transformation!7668 r!4142)))) (and b!4189683 b_free!121967) (and b!4190253 b_free!121975 (= (toValue!10364 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toValue!10364 (transformation!7668 r!4142)))) b_lambda!123233)))

(declare-fun b_lambda!123235 () Bool)

(assert (= b_lambda!123231 (or (and b!4189686 b_free!121959 (= (toValue!10364 (transformation!7668 rBis!167)) (toValue!10364 (transformation!7668 r!4142)))) (and b!4189710 b_free!121963 (= (toValue!10364 (transformation!7668 (h!51433 rules!3843))) (toValue!10364 (transformation!7668 r!4142)))) (and b!4189683 b_free!121967) (and b!4190253 b_free!121975 (= (toValue!10364 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toValue!10364 (transformation!7668 r!4142)))) b_lambda!123235)))

(declare-fun b_lambda!123237 () Bool)

(assert (= b_lambda!123227 (or (and b!4189686 b_free!121961 (= (toChars!10223 (transformation!7668 rBis!167)) (toChars!10223 (transformation!7668 r!4142)))) (and b!4189710 b_free!121965 (= (toChars!10223 (transformation!7668 (h!51433 rules!3843))) (toChars!10223 (transformation!7668 r!4142)))) (and b!4189683 b_free!121969) (and b!4190253 b_free!121977 (= (toChars!10223 (transformation!7668 (h!51433 (t!345876 rules!3843)))) (toChars!10223 (transformation!7668 r!4142)))) b_lambda!123237)))

(check-sat (not b!4189896) (not b!4190255) b_and!328301 (not b!4189894) (not b!4189945) (not b_next!122681) (not b_next!122679) (not bm!292103) (not b!4189959) (not b!4189944) (not b!4190219) (not b_next!122665) (not b!4190257) (not b!4190215) (not d!1235991) (not d!1235963) (not b_lambda!123211) (not b!4189957) (not b!4189787) (not b!4190209) (not b_next!122671) (not b!4189966) (not b!4189866) (not b!4190262) (not b!4190216) b_and!328307 (not b!4190217) (not d!1235989) (not b!4189798) (not d!1235957) (not b!4190260) (not b!4190222) (not d!1235961) (not b!4190241) (not b_next!122667) (not b!4189873) (not b!4189901) (not b!4189867) (not b!4189961) (not b!4189907) (not b!4189986) (not d!1236061) (not b!4189985) (not b!4189780) (not d!1235945) (not b!4189900) (not d!1235937) (not b!4189948) (not b!4190242) (not d!1235931) (not b!4189872) (not b!4190206) (not d!1235983) (not bm!292109) (not b!4190214) (not b!4189788) (not b!4189976) (not b!4189911) (not b!4189796) b_and!328303 (not d!1235943) (not b!4190256) (not b!4190210) (not b_next!122663) (not b_next!122673) (not b!4190213) (not b!4190199) b_and!328299 (not b!4189952) (not d!1235979) (not b!4189871) (not d!1235951) (not bm!292098) (not b!4190218) (not b!4190258) (not bm!292100) (not b!4189899) (not b!4189786) (not b!4190251) (not b!4190212) (not b!4189716) (not b_next!122669) (not d!1235953) (not b!4190227) (not d!1235977) (not d!1235935) (not b!4190211) (not b!4189964) (not b!4189962) (not b_lambda!123233) (not tb!250955) (not b!4189895) (not d!1235973) (not tb!250991) (not b!4189750) (not b!4189778) (not b!4189987) (not d!1236055) (not b!4189956) (not b!4190240) (not tb!250985) (not b!4189875) (not b_lambda!123237) (not b!4190252) (not b!4190228) (not d!1236063) tp_is_empty!22109 (not d!1236059) (not bm!292112) (not b!4189943) (not d!1235967) b_and!328287 (not d!1235959) (not b_lambda!123235) b_and!328289 (not b!4189897) (not b!4189779) (not b!4189947) (not b!4189963) (not b!4189983) (not b!4189869) (not b!4189868) (not b!4189977) (not b!4189738) (not b!4190261) (not b!4189870) b_and!328291 (not b!4189898) (not d!1235981) b_and!328305 (not bm!292101))
(check-sat (not b_next!122665) (not b_next!122667) (not b_next!122669) b_and!328301 b_and!328287 b_and!328289 b_and!328291 b_and!328305 (not b_next!122681) (not b_next!122679) (not b_next!122671) b_and!328307 b_and!328303 (not b_next!122663) (not b_next!122673) b_and!328299)
