; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398098 () Bool)

(assert start!398098)

(declare-fun b!4174989 () Bool)

(declare-fun b_free!121007 () Bool)

(declare-fun b_next!121711 () Bool)

(assert (=> b!4174989 (= b_free!121007 (not b_next!121711))))

(declare-fun tp!1275728 () Bool)

(declare-fun b_and!326237 () Bool)

(assert (=> b!4174989 (= tp!1275728 b_and!326237)))

(declare-fun b_free!121009 () Bool)

(declare-fun b_next!121713 () Bool)

(assert (=> b!4174989 (= b_free!121009 (not b_next!121713))))

(declare-fun tp!1275724 () Bool)

(declare-fun b_and!326239 () Bool)

(assert (=> b!4174989 (= tp!1275724 b_and!326239)))

(declare-fun b!4174985 () Bool)

(declare-fun b_free!121011 () Bool)

(declare-fun b_next!121715 () Bool)

(assert (=> b!4174985 (= b_free!121011 (not b_next!121715))))

(declare-fun tp!1275732 () Bool)

(declare-fun b_and!326241 () Bool)

(assert (=> b!4174985 (= tp!1275732 b_and!326241)))

(declare-fun b_free!121013 () Bool)

(declare-fun b_next!121717 () Bool)

(assert (=> b!4174985 (= b_free!121013 (not b_next!121717))))

(declare-fun tp!1275727 () Bool)

(declare-fun b_and!326243 () Bool)

(assert (=> b!4174985 (= tp!1275727 b_and!326243)))

(declare-fun b!4174982 () Bool)

(declare-fun b_free!121015 () Bool)

(declare-fun b_next!121719 () Bool)

(assert (=> b!4174982 (= b_free!121015 (not b_next!121719))))

(declare-fun tp!1275736 () Bool)

(declare-fun b_and!326245 () Bool)

(assert (=> b!4174982 (= tp!1275736 b_and!326245)))

(declare-fun b_free!121017 () Bool)

(declare-fun b_next!121721 () Bool)

(assert (=> b!4174982 (= b_free!121017 (not b_next!121721))))

(declare-fun tp!1275725 () Bool)

(declare-fun b_and!326247 () Bool)

(assert (=> b!4174982 (= tp!1275725 b_and!326247)))

(declare-fun e!2591898 () Bool)

(declare-fun tp!1275730 () Bool)

(declare-datatypes ((List!45903 0))(
  ( (Nil!45779) (Cons!45779 (h!51199 (_ BitVec 16)) (t!344662 List!45903)) )
))
(declare-datatypes ((TokenValue!7830 0))(
  ( (FloatLiteralValue!15660 (text!55255 List!45903)) (TokenValueExt!7829 (__x!27881 Int)) (Broken!39150 (value!237106 List!45903)) (Object!7953) (End!7830) (Def!7830) (Underscore!7830) (Match!7830) (Else!7830) (Error!7830) (Case!7830) (If!7830) (Extends!7830) (Abstract!7830) (Class!7830) (Val!7830) (DelimiterValue!15660 (del!7890 List!45903)) (KeywordValue!7836 (value!237107 List!45903)) (CommentValue!15660 (value!237108 List!45903)) (WhitespaceValue!15660 (value!237109 List!45903)) (IndentationValue!7830 (value!237110 List!45903)) (String!53015) (Int32!7830) (Broken!39151 (value!237111 List!45903)) (Boolean!7831) (Unit!64844) (OperatorValue!7833 (op!7890 List!45903)) (IdentifierValue!15660 (value!237112 List!45903)) (IdentifierValue!15661 (value!237113 List!45903)) (WhitespaceValue!15661 (value!237114 List!45903)) (True!15660) (False!15660) (Broken!39152 (value!237115 List!45903)) (Broken!39153 (value!237116 List!45903)) (True!15661) (RightBrace!7830) (RightBracket!7830) (Colon!7830) (Null!7830) (Comma!7830) (LeftBracket!7830) (False!15661) (LeftBrace!7830) (ImaginaryLiteralValue!7830 (text!55256 List!45903)) (StringLiteralValue!23490 (value!237117 List!45903)) (EOFValue!7830 (value!237118 List!45903)) (IdentValue!7830 (value!237119 List!45903)) (DelimiterValue!15661 (value!237120 List!45903)) (DedentValue!7830 (value!237121 List!45903)) (NewLineValue!7830 (value!237122 List!45903)) (IntegerValue!23490 (value!237123 (_ BitVec 32)) (text!55257 List!45903)) (IntegerValue!23491 (value!237124 Int) (text!55258 List!45903)) (Times!7830) (Or!7830) (Equal!7830) (Minus!7830) (Broken!39154 (value!237125 List!45903)) (And!7830) (Div!7830) (LessEqual!7830) (Mod!7830) (Concat!20335) (Not!7830) (Plus!7830) (SpaceValue!7830 (value!237126 List!45903)) (IntegerValue!23492 (value!237127 Int) (text!55259 List!45903)) (StringLiteralValue!23491 (text!55260 List!45903)) (FloatLiteralValue!15661 (text!55261 List!45903)) (BytesLiteralValue!7830 (value!237128 List!45903)) (CommentValue!15661 (value!237129 List!45903)) (StringLiteralValue!23492 (value!237130 List!45903)) (ErrorTokenValue!7830 (msg!7891 List!45903)) )
))
(declare-datatypes ((String!53016 0))(
  ( (String!53017 (value!237131 String)) )
))
(declare-datatypes ((C!25200 0))(
  ( (C!25201 (val!14762 Int)) )
))
(declare-datatypes ((List!45904 0))(
  ( (Nil!45780) (Cons!45780 (h!51200 C!25200) (t!344663 List!45904)) )
))
(declare-datatypes ((IArray!27627 0))(
  ( (IArray!27628 (innerList!13871 List!45904)) )
))
(declare-datatypes ((Conc!13811 0))(
  ( (Node!13811 (left!34117 Conc!13811) (right!34447 Conc!13811) (csize!27852 Int) (cheight!14022 Int)) (Leaf!21354 (xs!17117 IArray!27627) (csize!27853 Int)) (Empty!13811) )
))
(declare-datatypes ((BalanceConc!27216 0))(
  ( (BalanceConc!27217 (c!713352 Conc!13811)) )
))
(declare-datatypes ((Regex!12505 0))(
  ( (ElementMatch!12505 (c!713353 C!25200)) (Concat!20336 (regOne!25522 Regex!12505) (regTwo!25522 Regex!12505)) (EmptyExpr!12505) (Star!12505 (reg!12834 Regex!12505)) (EmptyLang!12505) (Union!12505 (regOne!25523 Regex!12505) (regTwo!25523 Regex!12505)) )
))
(declare-datatypes ((TokenValueInjection!15088 0))(
  ( (TokenValueInjection!15089 (toValue!10284 Int) (toChars!10143 Int)) )
))
(declare-datatypes ((Rule!15000 0))(
  ( (Rule!15001 (regex!7600 Regex!12505) (tag!8464 String!53016) (isSeparator!7600 Bool) (transformation!7600 TokenValueInjection!15088)) )
))
(declare-fun rBis!167 () Rule!15000)

(declare-fun e!2591894 () Bool)

(declare-fun b!4174976 () Bool)

(declare-fun inv!60309 (String!53016) Bool)

(declare-fun inv!60311 (TokenValueInjection!15088) Bool)

(assert (=> b!4174976 (= e!2591898 (and tp!1275730 (inv!60309 (tag!8464 rBis!167)) (inv!60311 (transformation!7600 rBis!167)) e!2591894))))

(declare-fun lt!1486548 () List!45904)

(declare-fun lt!1486539 () Int)

(declare-fun e!2591890 () Bool)

(declare-fun pBis!107 () List!45904)

(declare-fun lt!1486550 () Int)

(declare-fun b!4174977 () Bool)

(assert (=> b!4174977 (= e!2591890 (or (not (= lt!1486548 pBis!107)) (>= lt!1486539 lt!1486550)))))

(declare-datatypes ((Token!13914 0))(
  ( (Token!13915 (value!237132 TokenValue!7830) (rule!10654 Rule!15000) (size!33603 Int) (originalCharacters!7988 List!45904)) )
))
(declare-datatypes ((tuple2!43626 0))(
  ( (tuple2!43627 (_1!24947 Token!13914) (_2!24947 List!45904)) )
))
(declare-fun lt!1486540 () tuple2!43626)

(declare-fun isPrefix!4457 (List!45904 List!45904) Bool)

(declare-fun ++!11678 (List!45904 List!45904) List!45904)

(assert (=> b!4174977 (isPrefix!4457 lt!1486548 (++!11678 lt!1486548 (_2!24947 lt!1486540)))))

(declare-datatypes ((Unit!64845 0))(
  ( (Unit!64846) )
))
(declare-fun lt!1486545 () Unit!64845)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2964 (List!45904 List!45904) Unit!64845)

(assert (=> b!4174977 (= lt!1486545 (lemmaConcatTwoListThenFirstIsPrefix!2964 lt!1486548 (_2!24947 lt!1486540)))))

(declare-fun list!16535 (BalanceConc!27216) List!45904)

(declare-fun charsOf!5041 (Token!13914) BalanceConc!27216)

(assert (=> b!4174977 (= lt!1486548 (list!16535 (charsOf!5041 (_1!24947 lt!1486540))))))

(declare-datatypes ((Option!9796 0))(
  ( (None!9795) (Some!9795 (v!40595 tuple2!43626)) )
))
(declare-fun lt!1486547 () Option!9796)

(declare-fun get!14865 (Option!9796) tuple2!43626)

(assert (=> b!4174977 (= lt!1486540 (get!14865 lt!1486547))))

(declare-fun b!4174978 () Bool)

(declare-fun res!1711157 () Bool)

(declare-fun e!2591892 () Bool)

(assert (=> b!4174978 (=> (not res!1711157) (not e!2591892))))

(declare-fun r!4142 () Rule!15000)

(declare-fun validRegex!5622 (Regex!12505) Bool)

(assert (=> b!4174978 (= res!1711157 (validRegex!5622 (regex!7600 r!4142)))))

(declare-fun b!4174979 () Bool)

(declare-fun e!2591901 () Bool)

(declare-fun tp!1275729 () Bool)

(declare-fun e!2591897 () Bool)

(assert (=> b!4174979 (= e!2591897 (and tp!1275729 (inv!60309 (tag!8464 r!4142)) (inv!60311 (transformation!7600 r!4142)) e!2591901))))

(declare-fun b!4174981 () Bool)

(declare-fun res!1711165 () Bool)

(assert (=> b!4174981 (=> (not res!1711165) (not e!2591892))))

(declare-fun p!2959 () List!45904)

(declare-fun input!3342 () List!45904)

(assert (=> b!4174981 (= res!1711165 (isPrefix!4457 p!2959 input!3342))))

(declare-fun e!2591893 () Bool)

(assert (=> b!4174982 (= e!2591893 (and tp!1275736 tp!1275725))))

(declare-fun b!4174983 () Bool)

(declare-fun res!1711162 () Bool)

(assert (=> b!4174983 (=> (not res!1711162) (not e!2591892))))

(declare-datatypes ((List!45905 0))(
  ( (Nil!45781) (Cons!45781 (h!51201 Rule!15000) (t!344664 List!45905)) )
))
(declare-fun rules!3843 () List!45905)

(declare-fun contains!9403 (List!45905 Rule!15000) Bool)

(assert (=> b!4174983 (= res!1711162 (contains!9403 rules!3843 r!4142))))

(declare-fun b!4174984 () Bool)

(declare-fun res!1711155 () Bool)

(assert (=> b!4174984 (=> (not res!1711155) (not e!2591892))))

(assert (=> b!4174984 (= res!1711155 (contains!9403 rules!3843 rBis!167))))

(assert (=> b!4174985 (= e!2591901 (and tp!1275732 tp!1275727))))

(declare-fun b!4174986 () Bool)

(declare-fun res!1711163 () Bool)

(assert (=> b!4174986 (=> (not res!1711163) (not e!2591892))))

(declare-fun isEmpty!27078 (List!45905) Bool)

(assert (=> b!4174986 (= res!1711163 (not (isEmpty!27078 rules!3843)))))

(declare-fun b!4174987 () Bool)

(declare-fun res!1711158 () Bool)

(assert (=> b!4174987 (=> (not res!1711158) (not e!2591892))))

(assert (=> b!4174987 (= res!1711158 (isPrefix!4457 pBis!107 input!3342))))

(declare-fun b!4174988 () Bool)

(declare-fun res!1711161 () Bool)

(assert (=> b!4174988 (=> (not res!1711161) (not e!2591892))))

(declare-datatypes ((LexerInterface!7193 0))(
  ( (LexerInterfaceExt!7190 (__x!27882 Int)) (Lexer!7191) )
))
(declare-fun thiss!25986 () LexerInterface!7193)

(declare-fun rulesInvariant!6406 (LexerInterface!7193 List!45905) Bool)

(assert (=> b!4174988 (= res!1711161 (rulesInvariant!6406 thiss!25986 rules!3843))))

(declare-fun b!4174980 () Bool)

(declare-fun e!2591906 () Bool)

(declare-fun tp_is_empty!21973 () Bool)

(declare-fun tp!1275731 () Bool)

(assert (=> b!4174980 (= e!2591906 (and tp_is_empty!21973 tp!1275731))))

(declare-fun res!1711156 () Bool)

(assert (=> start!398098 (=> (not res!1711156) (not e!2591892))))

(get-info :version)

(assert (=> start!398098 (= res!1711156 ((_ is Lexer!7191) thiss!25986))))

(assert (=> start!398098 e!2591892))

(assert (=> start!398098 true))

(assert (=> start!398098 e!2591898))

(assert (=> start!398098 e!2591897))

(declare-fun e!2591900 () Bool)

(assert (=> start!398098 e!2591900))

(declare-fun e!2591891 () Bool)

(assert (=> start!398098 e!2591891))

(assert (=> start!398098 e!2591906))

(declare-fun e!2591902 () Bool)

(assert (=> start!398098 e!2591902))

(assert (=> b!4174989 (= e!2591894 (and tp!1275728 tp!1275724))))

(declare-fun b!4174990 () Bool)

(declare-fun res!1711164 () Bool)

(assert (=> b!4174990 (=> (not res!1711164) (not e!2591892))))

(declare-fun matchR!6244 (Regex!12505 List!45904) Bool)

(assert (=> b!4174990 (= res!1711164 (matchR!6244 (regex!7600 r!4142) p!2959))))

(declare-fun b!4174991 () Bool)

(declare-fun tp!1275735 () Bool)

(assert (=> b!4174991 (= e!2591891 (and tp_is_empty!21973 tp!1275735))))

(declare-fun b!4174992 () Bool)

(declare-fun e!2591904 () Bool)

(assert (=> b!4174992 (= e!2591904 e!2591890)))

(declare-fun res!1711154 () Bool)

(assert (=> b!4174992 (=> res!1711154 e!2591890)))

(declare-fun isEmpty!27079 (Option!9796) Bool)

(assert (=> b!4174992 (= res!1711154 (isEmpty!27079 lt!1486547))))

(declare-fun maxPrefixOneRule!3204 (LexerInterface!7193 Rule!15000 List!45904) Option!9796)

(assert (=> b!4174992 (= lt!1486547 (maxPrefixOneRule!3204 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1486552 () Unit!64845)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2332 (LexerInterface!7193 Rule!15000 List!45905) Unit!64845)

(assert (=> b!4174992 (= lt!1486552 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2332 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1486542 () Int)

(assert (=> b!4174992 (<= lt!1486542 lt!1486539)))

(declare-fun size!33604 (List!45904) Int)

(assert (=> b!4174992 (= lt!1486539 (size!33604 input!3342))))

(declare-fun lt!1486543 () Unit!64845)

(declare-fun lemmaIsPrefixThenSmallerEqSize!489 (List!45904 List!45904) Unit!64845)

(assert (=> b!4174992 (= lt!1486543 (lemmaIsPrefixThenSmallerEqSize!489 pBis!107 input!3342))))

(declare-fun b!4174993 () Bool)

(declare-fun e!2591905 () Bool)

(assert (=> b!4174993 (= e!2591892 (not e!2591905))))

(declare-fun res!1711152 () Bool)

(assert (=> b!4174993 (=> res!1711152 e!2591905)))

(declare-fun lt!1486546 () Option!9796)

(assert (=> b!4174993 (= res!1711152 (not (= (maxPrefixOneRule!3204 thiss!25986 r!4142 input!3342) lt!1486546)))))

(declare-fun lt!1486551 () TokenValue!7830)

(declare-fun getSuffix!2752 (List!45904 List!45904) List!45904)

(assert (=> b!4174993 (= lt!1486546 (Some!9795 (tuple2!43627 (Token!13915 lt!1486551 r!4142 lt!1486550 p!2959) (getSuffix!2752 input!3342 p!2959))))))

(assert (=> b!4174993 (= lt!1486550 (size!33604 p!2959))))

(declare-fun lt!1486544 () BalanceConc!27216)

(declare-fun apply!10565 (TokenValueInjection!15088 BalanceConc!27216) TokenValue!7830)

(assert (=> b!4174993 (= lt!1486551 (apply!10565 (transformation!7600 r!4142) lt!1486544))))

(assert (=> b!4174993 (isPrefix!4457 input!3342 input!3342)))

(declare-fun lt!1486541 () Unit!64845)

(declare-fun lemmaIsPrefixRefl!2886 (List!45904 List!45904) Unit!64845)

(assert (=> b!4174993 (= lt!1486541 (lemmaIsPrefixRefl!2886 input!3342 input!3342))))

(declare-fun lt!1486549 () Unit!64845)

(declare-fun lemmaSemiInverse!2366 (TokenValueInjection!15088 BalanceConc!27216) Unit!64845)

(assert (=> b!4174993 (= lt!1486549 (lemmaSemiInverse!2366 (transformation!7600 r!4142) lt!1486544))))

(declare-fun seqFromList!5625 (List!45904) BalanceConc!27216)

(assert (=> b!4174993 (= lt!1486544 (seqFromList!5625 p!2959))))

(declare-fun b!4174994 () Bool)

(declare-fun e!2591903 () Bool)

(declare-fun tp!1275733 () Bool)

(assert (=> b!4174994 (= e!2591900 (and e!2591903 tp!1275733))))

(declare-fun b!4174995 () Bool)

(declare-fun tp!1275726 () Bool)

(assert (=> b!4174995 (= e!2591903 (and tp!1275726 (inv!60309 (tag!8464 (h!51201 rules!3843))) (inv!60311 (transformation!7600 (h!51201 rules!3843))) e!2591893))))

(declare-fun b!4174996 () Bool)

(declare-fun res!1711153 () Bool)

(assert (=> b!4174996 (=> res!1711153 e!2591904)))

(declare-fun maxPrefix!4245 (LexerInterface!7193 List!45905 List!45904) Option!9796)

(assert (=> b!4174996 (= res!1711153 (not (= (maxPrefix!4245 thiss!25986 rules!3843 input!3342) lt!1486546)))))

(declare-fun b!4174997 () Bool)

(declare-fun res!1711160 () Bool)

(assert (=> b!4174997 (=> res!1711160 e!2591904)))

(declare-fun ruleValid!3318 (LexerInterface!7193 Rule!15000) Bool)

(assert (=> b!4174997 (= res!1711160 (not (ruleValid!3318 thiss!25986 rBis!167)))))

(declare-fun b!4174998 () Bool)

(declare-fun tp!1275734 () Bool)

(assert (=> b!4174998 (= e!2591902 (and tp_is_empty!21973 tp!1275734))))

(declare-fun b!4174999 () Bool)

(assert (=> b!4174999 (= e!2591905 e!2591904)))

(declare-fun res!1711159 () Bool)

(assert (=> b!4174999 (=> res!1711159 e!2591904)))

(assert (=> b!4174999 (= res!1711159 (<= lt!1486542 lt!1486550))))

(assert (=> b!4174999 (= lt!1486542 (size!33604 pBis!107))))

(declare-fun b!4175000 () Bool)

(declare-fun res!1711166 () Bool)

(assert (=> b!4175000 (=> (not res!1711166) (not e!2591892))))

(assert (=> b!4175000 (= res!1711166 (ruleValid!3318 thiss!25986 r!4142))))

(assert (= (and start!398098 res!1711156) b!4174981))

(assert (= (and b!4174981 res!1711165) b!4174987))

(assert (= (and b!4174987 res!1711158) b!4174986))

(assert (= (and b!4174986 res!1711163) b!4174988))

(assert (= (and b!4174988 res!1711161) b!4174983))

(assert (= (and b!4174983 res!1711162) b!4174984))

(assert (= (and b!4174984 res!1711155) b!4174978))

(assert (= (and b!4174978 res!1711157) b!4174990))

(assert (= (and b!4174990 res!1711164) b!4175000))

(assert (= (and b!4175000 res!1711166) b!4174993))

(assert (= (and b!4174993 (not res!1711152)) b!4174999))

(assert (= (and b!4174999 (not res!1711159)) b!4174997))

(assert (= (and b!4174997 (not res!1711160)) b!4174996))

(assert (= (and b!4174996 (not res!1711153)) b!4174992))

(assert (= (and b!4174992 (not res!1711154)) b!4174977))

(assert (= b!4174976 b!4174989))

(assert (= start!398098 b!4174976))

(assert (= b!4174979 b!4174985))

(assert (= start!398098 b!4174979))

(assert (= b!4174995 b!4174982))

(assert (= b!4174994 b!4174995))

(assert (= (and start!398098 ((_ is Cons!45781) rules!3843)) b!4174994))

(assert (= (and start!398098 ((_ is Cons!45780) input!3342)) b!4174991))

(assert (= (and start!398098 ((_ is Cons!45780) pBis!107)) b!4174980))

(assert (= (and start!398098 ((_ is Cons!45780) p!2959)) b!4174998))

(declare-fun m!4764717 () Bool)

(assert (=> b!4174981 m!4764717))

(declare-fun m!4764719 () Bool)

(assert (=> b!4174978 m!4764719))

(declare-fun m!4764721 () Bool)

(assert (=> b!4174984 m!4764721))

(declare-fun m!4764723 () Bool)

(assert (=> b!4174996 m!4764723))

(declare-fun m!4764725 () Bool)

(assert (=> b!4174988 m!4764725))

(declare-fun m!4764727 () Bool)

(assert (=> b!4174979 m!4764727))

(declare-fun m!4764729 () Bool)

(assert (=> b!4174979 m!4764729))

(declare-fun m!4764731 () Bool)

(assert (=> b!4174976 m!4764731))

(declare-fun m!4764733 () Bool)

(assert (=> b!4174976 m!4764733))

(declare-fun m!4764735 () Bool)

(assert (=> b!4174987 m!4764735))

(declare-fun m!4764737 () Bool)

(assert (=> b!4174997 m!4764737))

(declare-fun m!4764739 () Bool)

(assert (=> b!4174986 m!4764739))

(declare-fun m!4764741 () Bool)

(assert (=> b!4174995 m!4764741))

(declare-fun m!4764743 () Bool)

(assert (=> b!4174995 m!4764743))

(declare-fun m!4764745 () Bool)

(assert (=> b!4174977 m!4764745))

(declare-fun m!4764747 () Bool)

(assert (=> b!4174977 m!4764747))

(declare-fun m!4764749 () Bool)

(assert (=> b!4174977 m!4764749))

(assert (=> b!4174977 m!4764745))

(declare-fun m!4764751 () Bool)

(assert (=> b!4174977 m!4764751))

(declare-fun m!4764753 () Bool)

(assert (=> b!4174977 m!4764753))

(assert (=> b!4174977 m!4764747))

(declare-fun m!4764755 () Bool)

(assert (=> b!4174977 m!4764755))

(declare-fun m!4764757 () Bool)

(assert (=> b!4175000 m!4764757))

(declare-fun m!4764759 () Bool)

(assert (=> b!4174990 m!4764759))

(declare-fun m!4764761 () Bool)

(assert (=> b!4174999 m!4764761))

(declare-fun m!4764763 () Bool)

(assert (=> b!4174993 m!4764763))

(declare-fun m!4764765 () Bool)

(assert (=> b!4174993 m!4764765))

(declare-fun m!4764767 () Bool)

(assert (=> b!4174993 m!4764767))

(declare-fun m!4764769 () Bool)

(assert (=> b!4174993 m!4764769))

(declare-fun m!4764771 () Bool)

(assert (=> b!4174993 m!4764771))

(declare-fun m!4764773 () Bool)

(assert (=> b!4174993 m!4764773))

(declare-fun m!4764775 () Bool)

(assert (=> b!4174993 m!4764775))

(declare-fun m!4764777 () Bool)

(assert (=> b!4174993 m!4764777))

(declare-fun m!4764779 () Bool)

(assert (=> b!4174983 m!4764779))

(declare-fun m!4764781 () Bool)

(assert (=> b!4174992 m!4764781))

(declare-fun m!4764783 () Bool)

(assert (=> b!4174992 m!4764783))

(declare-fun m!4764785 () Bool)

(assert (=> b!4174992 m!4764785))

(declare-fun m!4764787 () Bool)

(assert (=> b!4174992 m!4764787))

(declare-fun m!4764789 () Bool)

(assert (=> b!4174992 m!4764789))

(check-sat (not b!4174997) (not b!4174977) (not b!4174992) (not b_next!121721) b_and!326239 b_and!326247 (not b!4174980) (not b!4174994) (not b!4174995) (not b!4175000) (not b!4174984) (not b!4174990) (not b_next!121719) (not b!4174996) (not b!4174983) tp_is_empty!21973 (not b!4174978) (not b!4174976) (not b!4174981) b_and!326243 (not b!4174993) (not b_next!121713) (not b!4174987) b_and!326237 (not b!4174998) (not b!4174999) (not b_next!121711) b_and!326241 (not b_next!121717) (not b!4174991) (not b!4174988) (not b!4174979) b_and!326245 (not b!4174986) (not b_next!121715))
(check-sat (not b_next!121721) b_and!326239 b_and!326247 b_and!326243 (not b_next!121711) (not b_next!121719) (not b_next!121713) b_and!326237 b_and!326241 (not b_next!121717) b_and!326245 (not b_next!121715))
