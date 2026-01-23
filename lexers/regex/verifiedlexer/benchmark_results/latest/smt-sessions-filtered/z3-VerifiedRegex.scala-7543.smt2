; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398102 () Bool)

(assert start!398102)

(declare-fun b!4175147 () Bool)

(declare-fun b_free!121031 () Bool)

(declare-fun b_next!121735 () Bool)

(assert (=> b!4175147 (= b_free!121031 (not b_next!121735))))

(declare-fun tp!1275804 () Bool)

(declare-fun b_and!326261 () Bool)

(assert (=> b!4175147 (= tp!1275804 b_and!326261)))

(declare-fun b_free!121033 () Bool)

(declare-fun b_next!121737 () Bool)

(assert (=> b!4175147 (= b_free!121033 (not b_next!121737))))

(declare-fun tp!1275814 () Bool)

(declare-fun b_and!326263 () Bool)

(assert (=> b!4175147 (= tp!1275814 b_and!326263)))

(declare-fun b!4175145 () Bool)

(declare-fun b_free!121035 () Bool)

(declare-fun b_next!121739 () Bool)

(assert (=> b!4175145 (= b_free!121035 (not b_next!121739))))

(declare-fun tp!1275810 () Bool)

(declare-fun b_and!326265 () Bool)

(assert (=> b!4175145 (= tp!1275810 b_and!326265)))

(declare-fun b_free!121037 () Bool)

(declare-fun b_next!121741 () Bool)

(assert (=> b!4175145 (= b_free!121037 (not b_next!121741))))

(declare-fun tp!1275811 () Bool)

(declare-fun b_and!326267 () Bool)

(assert (=> b!4175145 (= tp!1275811 b_and!326267)))

(declare-fun b!4175132 () Bool)

(declare-fun b_free!121039 () Bool)

(declare-fun b_next!121743 () Bool)

(assert (=> b!4175132 (= b_free!121039 (not b_next!121743))))

(declare-fun tp!1275813 () Bool)

(declare-fun b_and!326269 () Bool)

(assert (=> b!4175132 (= tp!1275813 b_and!326269)))

(declare-fun b_free!121041 () Bool)

(declare-fun b_next!121745 () Bool)

(assert (=> b!4175132 (= b_free!121041 (not b_next!121745))))

(declare-fun tp!1275809 () Bool)

(declare-fun b_and!326271 () Bool)

(assert (=> b!4175132 (= tp!1275809 b_and!326271)))

(declare-fun b!4175126 () Bool)

(declare-fun res!1711251 () Bool)

(declare-fun e!2591992 () Bool)

(assert (=> b!4175126 (=> (not res!1711251) (not e!2591992))))

(declare-datatypes ((LexerInterface!7195 0))(
  ( (LexerInterfaceExt!7192 (__x!27885 Int)) (Lexer!7193) )
))
(declare-fun thiss!25986 () LexerInterface!7195)

(declare-datatypes ((List!45909 0))(
  ( (Nil!45785) (Cons!45785 (h!51205 (_ BitVec 16)) (t!344668 List!45909)) )
))
(declare-datatypes ((TokenValue!7832 0))(
  ( (FloatLiteralValue!15664 (text!55269 List!45909)) (TokenValueExt!7831 (__x!27886 Int)) (Broken!39160 (value!237163 List!45909)) (Object!7955) (End!7832) (Def!7832) (Underscore!7832) (Match!7832) (Else!7832) (Error!7832) (Case!7832) (If!7832) (Extends!7832) (Abstract!7832) (Class!7832) (Val!7832) (DelimiterValue!15664 (del!7892 List!45909)) (KeywordValue!7838 (value!237164 List!45909)) (CommentValue!15664 (value!237165 List!45909)) (WhitespaceValue!15664 (value!237166 List!45909)) (IndentationValue!7832 (value!237167 List!45909)) (String!53025) (Int32!7832) (Broken!39161 (value!237168 List!45909)) (Boolean!7833) (Unit!64850) (OperatorValue!7835 (op!7892 List!45909)) (IdentifierValue!15664 (value!237169 List!45909)) (IdentifierValue!15665 (value!237170 List!45909)) (WhitespaceValue!15665 (value!237171 List!45909)) (True!15664) (False!15664) (Broken!39162 (value!237172 List!45909)) (Broken!39163 (value!237173 List!45909)) (True!15665) (RightBrace!7832) (RightBracket!7832) (Colon!7832) (Null!7832) (Comma!7832) (LeftBracket!7832) (False!15665) (LeftBrace!7832) (ImaginaryLiteralValue!7832 (text!55270 List!45909)) (StringLiteralValue!23496 (value!237174 List!45909)) (EOFValue!7832 (value!237175 List!45909)) (IdentValue!7832 (value!237176 List!45909)) (DelimiterValue!15665 (value!237177 List!45909)) (DedentValue!7832 (value!237178 List!45909)) (NewLineValue!7832 (value!237179 List!45909)) (IntegerValue!23496 (value!237180 (_ BitVec 32)) (text!55271 List!45909)) (IntegerValue!23497 (value!237181 Int) (text!55272 List!45909)) (Times!7832) (Or!7832) (Equal!7832) (Minus!7832) (Broken!39164 (value!237182 List!45909)) (And!7832) (Div!7832) (LessEqual!7832) (Mod!7832) (Concat!20339) (Not!7832) (Plus!7832) (SpaceValue!7832 (value!237183 List!45909)) (IntegerValue!23498 (value!237184 Int) (text!55273 List!45909)) (StringLiteralValue!23497 (text!55274 List!45909)) (FloatLiteralValue!15665 (text!55275 List!45909)) (BytesLiteralValue!7832 (value!237185 List!45909)) (CommentValue!15665 (value!237186 List!45909)) (StringLiteralValue!23498 (value!237187 List!45909)) (ErrorTokenValue!7832 (msg!7893 List!45909)) )
))
(declare-datatypes ((C!25204 0))(
  ( (C!25205 (val!14764 Int)) )
))
(declare-datatypes ((List!45910 0))(
  ( (Nil!45786) (Cons!45786 (h!51206 C!25204) (t!344669 List!45910)) )
))
(declare-datatypes ((IArray!27631 0))(
  ( (IArray!27632 (innerList!13873 List!45910)) )
))
(declare-datatypes ((Conc!13813 0))(
  ( (Node!13813 (left!34120 Conc!13813) (right!34450 Conc!13813) (csize!27856 Int) (cheight!14024 Int)) (Leaf!21357 (xs!17119 IArray!27631) (csize!27857 Int)) (Empty!13813) )
))
(declare-datatypes ((BalanceConc!27220 0))(
  ( (BalanceConc!27221 (c!713358 Conc!13813)) )
))
(declare-datatypes ((Regex!12507 0))(
  ( (ElementMatch!12507 (c!713359 C!25204)) (Concat!20340 (regOne!25526 Regex!12507) (regTwo!25526 Regex!12507)) (EmptyExpr!12507) (Star!12507 (reg!12836 Regex!12507)) (EmptyLang!12507) (Union!12507 (regOne!25527 Regex!12507) (regTwo!25527 Regex!12507)) )
))
(declare-datatypes ((String!53026 0))(
  ( (String!53027 (value!237188 String)) )
))
(declare-datatypes ((TokenValueInjection!15092 0))(
  ( (TokenValueInjection!15093 (toValue!10286 Int) (toChars!10145 Int)) )
))
(declare-datatypes ((Rule!15004 0))(
  ( (Rule!15005 (regex!7602 Regex!12507) (tag!8466 String!53026) (isSeparator!7602 Bool) (transformation!7602 TokenValueInjection!15092)) )
))
(declare-fun r!4142 () Rule!15004)

(declare-fun ruleValid!3320 (LexerInterface!7195 Rule!15004) Bool)

(assert (=> b!4175126 (= res!1711251 (ruleValid!3320 thiss!25986 r!4142))))

(declare-fun b!4175127 () Bool)

(declare-fun res!1711255 () Bool)

(declare-fun e!2592005 () Bool)

(assert (=> b!4175127 (=> res!1711255 e!2592005)))

(declare-fun rBis!167 () Rule!15004)

(assert (=> b!4175127 (= res!1711255 (not (ruleValid!3320 thiss!25986 rBis!167)))))

(declare-fun b!4175128 () Bool)

(declare-fun e!2592002 () Bool)

(assert (=> b!4175128 (= e!2591992 (not e!2592002))))

(declare-fun res!1711253 () Bool)

(assert (=> b!4175128 (=> res!1711253 e!2592002)))

(declare-fun input!3342 () List!45910)

(declare-datatypes ((Token!13918 0))(
  ( (Token!13919 (value!237189 TokenValue!7832) (rule!10656 Rule!15004) (size!33607 Int) (originalCharacters!7990 List!45910)) )
))
(declare-datatypes ((tuple2!43630 0))(
  ( (tuple2!43631 (_1!24949 Token!13918) (_2!24949 List!45910)) )
))
(declare-datatypes ((Option!9798 0))(
  ( (None!9797) (Some!9797 (v!40597 tuple2!43630)) )
))
(declare-fun lt!1486619 () Option!9798)

(declare-fun maxPrefixOneRule!3206 (LexerInterface!7195 Rule!15004 List!45910) Option!9798)

(assert (=> b!4175128 (= res!1711253 (not (= (maxPrefixOneRule!3206 thiss!25986 r!4142 input!3342) lt!1486619)))))

(declare-fun p!2959 () List!45910)

(declare-fun lt!1486628 () TokenValue!7832)

(declare-fun lt!1486625 () Int)

(declare-fun getSuffix!2754 (List!45910 List!45910) List!45910)

(assert (=> b!4175128 (= lt!1486619 (Some!9797 (tuple2!43631 (Token!13919 lt!1486628 r!4142 lt!1486625 p!2959) (getSuffix!2754 input!3342 p!2959))))))

(declare-fun size!33608 (List!45910) Int)

(assert (=> b!4175128 (= lt!1486625 (size!33608 p!2959))))

(declare-fun lt!1486621 () BalanceConc!27220)

(declare-fun apply!10567 (TokenValueInjection!15092 BalanceConc!27220) TokenValue!7832)

(assert (=> b!4175128 (= lt!1486628 (apply!10567 (transformation!7602 r!4142) lt!1486621))))

(declare-fun isPrefix!4459 (List!45910 List!45910) Bool)

(assert (=> b!4175128 (isPrefix!4459 input!3342 input!3342)))

(declare-datatypes ((Unit!64851 0))(
  ( (Unit!64852) )
))
(declare-fun lt!1486623 () Unit!64851)

(declare-fun lemmaIsPrefixRefl!2888 (List!45910 List!45910) Unit!64851)

(assert (=> b!4175128 (= lt!1486623 (lemmaIsPrefixRefl!2888 input!3342 input!3342))))

(declare-fun lt!1486629 () Unit!64851)

(declare-fun lemmaSemiInverse!2368 (TokenValueInjection!15092 BalanceConc!27220) Unit!64851)

(assert (=> b!4175128 (= lt!1486629 (lemmaSemiInverse!2368 (transformation!7602 r!4142) lt!1486621))))

(declare-fun seqFromList!5627 (List!45910) BalanceConc!27220)

(assert (=> b!4175128 (= lt!1486621 (seqFromList!5627 p!2959))))

(declare-fun b!4175129 () Bool)

(declare-fun res!1711247 () Bool)

(assert (=> b!4175129 (=> (not res!1711247) (not e!2591992))))

(declare-datatypes ((List!45911 0))(
  ( (Nil!45787) (Cons!45787 (h!51207 Rule!15004) (t!344670 List!45911)) )
))
(declare-fun rules!3843 () List!45911)

(declare-fun rulesInvariant!6408 (LexerInterface!7195 List!45911) Bool)

(assert (=> b!4175129 (= res!1711247 (rulesInvariant!6408 thiss!25986 rules!3843))))

(declare-fun b!4175130 () Bool)

(declare-fun res!1711252 () Bool)

(assert (=> b!4175130 (=> (not res!1711252) (not e!2591992))))

(declare-fun contains!9405 (List!45911 Rule!15004) Bool)

(assert (=> b!4175130 (= res!1711252 (contains!9405 rules!3843 rBis!167))))

(declare-fun e!2591997 () Bool)

(declare-fun tp!1275803 () Bool)

(declare-fun b!4175131 () Bool)

(declare-fun e!2591994 () Bool)

(declare-fun inv!60314 (String!53026) Bool)

(declare-fun inv!60316 (TokenValueInjection!15092) Bool)

(assert (=> b!4175131 (= e!2591994 (and tp!1275803 (inv!60314 (tag!8466 rBis!167)) (inv!60316 (transformation!7602 rBis!167)) e!2591997))))

(declare-fun e!2592008 () Bool)

(assert (=> b!4175132 (= e!2592008 (and tp!1275813 tp!1275809))))

(declare-fun b!4175133 () Bool)

(declare-fun e!2591996 () Bool)

(declare-fun e!2591999 () Bool)

(declare-fun tp!1275807 () Bool)

(assert (=> b!4175133 (= e!2591996 (and e!2591999 tp!1275807))))

(declare-fun b!4175134 () Bool)

(declare-fun e!2591995 () Bool)

(declare-fun tp_is_empty!21977 () Bool)

(declare-fun tp!1275805 () Bool)

(assert (=> b!4175134 (= e!2591995 (and tp_is_empty!21977 tp!1275805))))

(declare-fun b!4175135 () Bool)

(declare-fun e!2592006 () Bool)

(declare-fun tp!1275812 () Bool)

(assert (=> b!4175135 (= e!2591999 (and tp!1275812 (inv!60314 (tag!8466 (h!51207 rules!3843))) (inv!60316 (transformation!7602 (h!51207 rules!3843))) e!2592006))))

(declare-fun b!4175136 () Bool)

(declare-fun e!2592000 () Bool)

(declare-fun tp!1275806 () Bool)

(assert (=> b!4175136 (= e!2592000 (and tp_is_empty!21977 tp!1275806))))

(declare-fun b!4175137 () Bool)

(declare-fun res!1711256 () Bool)

(assert (=> b!4175137 (=> res!1711256 e!2592005)))

(declare-fun maxPrefix!4247 (LexerInterface!7195 List!45911 List!45910) Option!9798)

(assert (=> b!4175137 (= res!1711256 (not (= (maxPrefix!4247 thiss!25986 rules!3843 input!3342) lt!1486619)))))

(declare-fun b!4175138 () Bool)

(declare-fun res!1711242 () Bool)

(assert (=> b!4175138 (=> (not res!1711242) (not e!2591992))))

(declare-fun pBis!107 () List!45910)

(assert (=> b!4175138 (= res!1711242 (isPrefix!4459 pBis!107 input!3342))))

(declare-fun b!4175139 () Bool)

(declare-fun e!2592004 () Bool)

(declare-fun tp!1275802 () Bool)

(assert (=> b!4175139 (= e!2592004 (and tp_is_empty!21977 tp!1275802))))

(declare-fun b!4175140 () Bool)

(declare-fun res!1711250 () Bool)

(assert (=> b!4175140 (=> (not res!1711250) (not e!2591992))))

(assert (=> b!4175140 (= res!1711250 (isPrefix!4459 p!2959 input!3342))))

(declare-fun res!1711248 () Bool)

(assert (=> start!398102 (=> (not res!1711248) (not e!2591992))))

(get-info :version)

(assert (=> start!398102 (= res!1711248 ((_ is Lexer!7193) thiss!25986))))

(assert (=> start!398102 e!2591992))

(assert (=> start!398102 true))

(assert (=> start!398102 e!2591994))

(declare-fun e!2592007 () Bool)

(assert (=> start!398102 e!2592007))

(assert (=> start!398102 e!2591996))

(assert (=> start!398102 e!2592004))

(assert (=> start!398102 e!2592000))

(assert (=> start!398102 e!2591995))

(declare-fun b!4175141 () Bool)

(declare-fun res!1711249 () Bool)

(assert (=> b!4175141 (=> (not res!1711249) (not e!2591992))))

(declare-fun matchR!6246 (Regex!12507 List!45910) Bool)

(assert (=> b!4175141 (= res!1711249 (matchR!6246 (regex!7602 r!4142) p!2959))))

(declare-fun tp!1275808 () Bool)

(declare-fun b!4175142 () Bool)

(assert (=> b!4175142 (= e!2592007 (and tp!1275808 (inv!60314 (tag!8466 r!4142)) (inv!60316 (transformation!7602 r!4142)) e!2592008))))

(declare-fun b!4175143 () Bool)

(declare-fun res!1711243 () Bool)

(assert (=> b!4175143 (=> (not res!1711243) (not e!2591992))))

(declare-fun validRegex!5624 (Regex!12507) Bool)

(assert (=> b!4175143 (= res!1711243 (validRegex!5624 (regex!7602 r!4142)))))

(declare-fun b!4175144 () Bool)

(declare-fun res!1711244 () Bool)

(assert (=> b!4175144 (=> (not res!1711244) (not e!2591992))))

(declare-fun isEmpty!27082 (List!45911) Bool)

(assert (=> b!4175144 (= res!1711244 (not (isEmpty!27082 rules!3843)))))

(assert (=> b!4175145 (= e!2591997 (and tp!1275810 tp!1275811))))

(declare-fun b!4175146 () Bool)

(assert (=> b!4175146 (= e!2592002 e!2592005)))

(declare-fun res!1711246 () Bool)

(assert (=> b!4175146 (=> res!1711246 e!2592005)))

(declare-fun lt!1486630 () Int)

(assert (=> b!4175146 (= res!1711246 (<= lt!1486630 lt!1486625))))

(assert (=> b!4175146 (= lt!1486630 (size!33608 pBis!107))))

(assert (=> b!4175147 (= e!2592006 (and tp!1275804 tp!1275814))))

(declare-fun b!4175148 () Bool)

(declare-fun res!1711245 () Bool)

(assert (=> b!4175148 (=> (not res!1711245) (not e!2591992))))

(assert (=> b!4175148 (= res!1711245 (contains!9405 rules!3843 r!4142))))

(declare-fun b!4175149 () Bool)

(declare-fun e!2591998 () Bool)

(assert (=> b!4175149 (= e!2592005 e!2591998)))

(declare-fun res!1711254 () Bool)

(assert (=> b!4175149 (=> res!1711254 e!2591998)))

(declare-fun lt!1486624 () Option!9798)

(declare-fun isEmpty!27083 (Option!9798) Bool)

(assert (=> b!4175149 (= res!1711254 (isEmpty!27083 lt!1486624))))

(assert (=> b!4175149 (= lt!1486624 (maxPrefixOneRule!3206 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1486627 () Unit!64851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2334 (LexerInterface!7195 Rule!15004 List!45911) Unit!64851)

(assert (=> b!4175149 (= lt!1486627 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2334 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175149 (<= lt!1486630 (size!33608 input!3342))))

(declare-fun lt!1486620 () Unit!64851)

(declare-fun lemmaIsPrefixThenSmallerEqSize!491 (List!45910 List!45910) Unit!64851)

(assert (=> b!4175149 (= lt!1486620 (lemmaIsPrefixThenSmallerEqSize!491 pBis!107 input!3342))))

(declare-fun b!4175150 () Bool)

(assert (=> b!4175150 (= e!2591998 true)))

(declare-fun lt!1486622 () List!45910)

(declare-fun lt!1486618 () tuple2!43630)

(declare-fun ++!11680 (List!45910 List!45910) List!45910)

(assert (=> b!4175150 (isPrefix!4459 lt!1486622 (++!11680 lt!1486622 (_2!24949 lt!1486618)))))

(declare-fun lt!1486626 () Unit!64851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2966 (List!45910 List!45910) Unit!64851)

(assert (=> b!4175150 (= lt!1486626 (lemmaConcatTwoListThenFirstIsPrefix!2966 lt!1486622 (_2!24949 lt!1486618)))))

(declare-fun list!16537 (BalanceConc!27220) List!45910)

(declare-fun charsOf!5043 (Token!13918) BalanceConc!27220)

(assert (=> b!4175150 (= lt!1486622 (list!16537 (charsOf!5043 (_1!24949 lt!1486618))))))

(declare-fun get!14868 (Option!9798) tuple2!43630)

(assert (=> b!4175150 (= lt!1486618 (get!14868 lt!1486624))))

(assert (= (and start!398102 res!1711248) b!4175140))

(assert (= (and b!4175140 res!1711250) b!4175138))

(assert (= (and b!4175138 res!1711242) b!4175144))

(assert (= (and b!4175144 res!1711244) b!4175129))

(assert (= (and b!4175129 res!1711247) b!4175148))

(assert (= (and b!4175148 res!1711245) b!4175130))

(assert (= (and b!4175130 res!1711252) b!4175143))

(assert (= (and b!4175143 res!1711243) b!4175141))

(assert (= (and b!4175141 res!1711249) b!4175126))

(assert (= (and b!4175126 res!1711251) b!4175128))

(assert (= (and b!4175128 (not res!1711253)) b!4175146))

(assert (= (and b!4175146 (not res!1711246)) b!4175127))

(assert (= (and b!4175127 (not res!1711255)) b!4175137))

(assert (= (and b!4175137 (not res!1711256)) b!4175149))

(assert (= (and b!4175149 (not res!1711254)) b!4175150))

(assert (= b!4175131 b!4175145))

(assert (= start!398102 b!4175131))

(assert (= b!4175142 b!4175132))

(assert (= start!398102 b!4175142))

(assert (= b!4175135 b!4175147))

(assert (= b!4175133 b!4175135))

(assert (= (and start!398102 ((_ is Cons!45787) rules!3843)) b!4175133))

(assert (= (and start!398102 ((_ is Cons!45786) input!3342)) b!4175139))

(assert (= (and start!398102 ((_ is Cons!45786) pBis!107)) b!4175136))

(assert (= (and start!398102 ((_ is Cons!45786) p!2959)) b!4175134))

(declare-fun m!4764865 () Bool)

(assert (=> b!4175131 m!4764865))

(declare-fun m!4764867 () Bool)

(assert (=> b!4175131 m!4764867))

(declare-fun m!4764869 () Bool)

(assert (=> b!4175143 m!4764869))

(declare-fun m!4764871 () Bool)

(assert (=> b!4175144 m!4764871))

(declare-fun m!4764873 () Bool)

(assert (=> b!4175146 m!4764873))

(declare-fun m!4764875 () Bool)

(assert (=> b!4175129 m!4764875))

(declare-fun m!4764877 () Bool)

(assert (=> b!4175137 m!4764877))

(declare-fun m!4764879 () Bool)

(assert (=> b!4175135 m!4764879))

(declare-fun m!4764881 () Bool)

(assert (=> b!4175135 m!4764881))

(declare-fun m!4764883 () Bool)

(assert (=> b!4175141 m!4764883))

(declare-fun m!4764885 () Bool)

(assert (=> b!4175126 m!4764885))

(declare-fun m!4764887 () Bool)

(assert (=> b!4175128 m!4764887))

(declare-fun m!4764889 () Bool)

(assert (=> b!4175128 m!4764889))

(declare-fun m!4764891 () Bool)

(assert (=> b!4175128 m!4764891))

(declare-fun m!4764893 () Bool)

(assert (=> b!4175128 m!4764893))

(declare-fun m!4764895 () Bool)

(assert (=> b!4175128 m!4764895))

(declare-fun m!4764897 () Bool)

(assert (=> b!4175128 m!4764897))

(declare-fun m!4764899 () Bool)

(assert (=> b!4175128 m!4764899))

(declare-fun m!4764901 () Bool)

(assert (=> b!4175128 m!4764901))

(declare-fun m!4764903 () Bool)

(assert (=> b!4175130 m!4764903))

(declare-fun m!4764905 () Bool)

(assert (=> b!4175142 m!4764905))

(declare-fun m!4764907 () Bool)

(assert (=> b!4175142 m!4764907))

(declare-fun m!4764909 () Bool)

(assert (=> b!4175138 m!4764909))

(declare-fun m!4764911 () Bool)

(assert (=> b!4175127 m!4764911))

(declare-fun m!4764913 () Bool)

(assert (=> b!4175150 m!4764913))

(declare-fun m!4764915 () Bool)

(assert (=> b!4175150 m!4764915))

(declare-fun m!4764917 () Bool)

(assert (=> b!4175150 m!4764917))

(declare-fun m!4764919 () Bool)

(assert (=> b!4175150 m!4764919))

(declare-fun m!4764921 () Bool)

(assert (=> b!4175150 m!4764921))

(declare-fun m!4764923 () Bool)

(assert (=> b!4175150 m!4764923))

(assert (=> b!4175150 m!4764921))

(assert (=> b!4175150 m!4764917))

(declare-fun m!4764925 () Bool)

(assert (=> b!4175149 m!4764925))

(declare-fun m!4764927 () Bool)

(assert (=> b!4175149 m!4764927))

(declare-fun m!4764929 () Bool)

(assert (=> b!4175149 m!4764929))

(declare-fun m!4764931 () Bool)

(assert (=> b!4175149 m!4764931))

(declare-fun m!4764933 () Bool)

(assert (=> b!4175149 m!4764933))

(declare-fun m!4764935 () Bool)

(assert (=> b!4175140 m!4764935))

(declare-fun m!4764937 () Bool)

(assert (=> b!4175148 m!4764937))

(check-sat (not b!4175130) (not b!4175127) tp_is_empty!21977 (not b_next!121741) b_and!326271 (not b_next!121745) (not b_next!121735) (not b!4175128) (not b!4175143) (not b_next!121739) (not b_next!121743) b_and!326269 (not b!4175141) (not b!4175136) (not b!4175126) (not b!4175140) b_and!326261 (not b!4175148) b_and!326265 (not b!4175142) (not b!4175139) (not b_next!121737) (not b!4175146) (not b!4175133) (not b!4175144) (not b!4175150) (not b!4175134) b_and!326267 (not b!4175135) b_and!326263 (not b!4175149) (not b!4175138) (not b!4175137) (not b!4175131) (not b!4175129))
(check-sat (not b_next!121741) b_and!326271 (not b_next!121745) b_and!326261 (not b_next!121735) b_and!326267 (not b_next!121739) b_and!326263 (not b_next!121743) b_and!326269 b_and!326265 (not b_next!121737))
