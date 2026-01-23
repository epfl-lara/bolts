; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397906 () Bool)

(assert start!397906)

(declare-fun b!4173085 () Bool)

(declare-fun b_free!120847 () Bool)

(declare-fun b_next!121551 () Bool)

(assert (=> b!4173085 (= b_free!120847 (not b_next!121551))))

(declare-fun tp!1275077 () Bool)

(declare-fun b_and!326005 () Bool)

(assert (=> b!4173085 (= tp!1275077 b_and!326005)))

(declare-fun b_free!120849 () Bool)

(declare-fun b_next!121553 () Bool)

(assert (=> b!4173085 (= b_free!120849 (not b_next!121553))))

(declare-fun tp!1275079 () Bool)

(declare-fun b_and!326007 () Bool)

(assert (=> b!4173085 (= tp!1275079 b_and!326007)))

(declare-fun b!4173094 () Bool)

(declare-fun b_free!120851 () Bool)

(declare-fun b_next!121555 () Bool)

(assert (=> b!4173094 (= b_free!120851 (not b_next!121555))))

(declare-fun tp!1275087 () Bool)

(declare-fun b_and!326009 () Bool)

(assert (=> b!4173094 (= tp!1275087 b_and!326009)))

(declare-fun b_free!120853 () Bool)

(declare-fun b_next!121557 () Bool)

(assert (=> b!4173094 (= b_free!120853 (not b_next!121557))))

(declare-fun tp!1275082 () Bool)

(declare-fun b_and!326011 () Bool)

(assert (=> b!4173094 (= tp!1275082 b_and!326011)))

(declare-fun b!4173089 () Bool)

(declare-fun b_free!120855 () Bool)

(declare-fun b_next!121559 () Bool)

(assert (=> b!4173089 (= b_free!120855 (not b_next!121559))))

(declare-fun tp!1275076 () Bool)

(declare-fun b_and!326013 () Bool)

(assert (=> b!4173089 (= tp!1275076 b_and!326013)))

(declare-fun b_free!120857 () Bool)

(declare-fun b_next!121561 () Bool)

(assert (=> b!4173089 (= b_free!120857 (not b_next!121561))))

(declare-fun tp!1275086 () Bool)

(declare-fun b_and!326015 () Bool)

(assert (=> b!4173089 (= tp!1275086 b_and!326015)))

(declare-fun b!4173074 () Bool)

(declare-fun res!1710064 () Bool)

(declare-fun e!2590706 () Bool)

(assert (=> b!4173074 (=> (not res!1710064) (not e!2590706))))

(declare-datatypes ((List!45863 0))(
  ( (Nil!45739) (Cons!45739 (h!51159 (_ BitVec 16)) (t!344558 List!45863)) )
))
(declare-datatypes ((TokenValue!7818 0))(
  ( (FloatLiteralValue!15636 (text!55171 List!45863)) (TokenValueExt!7817 (__x!27857 Int)) (Broken!39090 (value!236764 List!45863)) (Object!7941) (End!7818) (Def!7818) (Underscore!7818) (Match!7818) (Else!7818) (Error!7818) (Case!7818) (If!7818) (Extends!7818) (Abstract!7818) (Class!7818) (Val!7818) (DelimiterValue!15636 (del!7878 List!45863)) (KeywordValue!7824 (value!236765 List!45863)) (CommentValue!15636 (value!236766 List!45863)) (WhitespaceValue!15636 (value!236767 List!45863)) (IndentationValue!7818 (value!236768 List!45863)) (String!52955) (Int32!7818) (Broken!39091 (value!236769 List!45863)) (Boolean!7819) (Unit!64808) (OperatorValue!7821 (op!7878 List!45863)) (IdentifierValue!15636 (value!236770 List!45863)) (IdentifierValue!15637 (value!236771 List!45863)) (WhitespaceValue!15637 (value!236772 List!45863)) (True!15636) (False!15636) (Broken!39092 (value!236773 List!45863)) (Broken!39093 (value!236774 List!45863)) (True!15637) (RightBrace!7818) (RightBracket!7818) (Colon!7818) (Null!7818) (Comma!7818) (LeftBracket!7818) (False!15637) (LeftBrace!7818) (ImaginaryLiteralValue!7818 (text!55172 List!45863)) (StringLiteralValue!23454 (value!236775 List!45863)) (EOFValue!7818 (value!236776 List!45863)) (IdentValue!7818 (value!236777 List!45863)) (DelimiterValue!15637 (value!236778 List!45863)) (DedentValue!7818 (value!236779 List!45863)) (NewLineValue!7818 (value!236780 List!45863)) (IntegerValue!23454 (value!236781 (_ BitVec 32)) (text!55173 List!45863)) (IntegerValue!23455 (value!236782 Int) (text!55174 List!45863)) (Times!7818) (Or!7818) (Equal!7818) (Minus!7818) (Broken!39094 (value!236783 List!45863)) (And!7818) (Div!7818) (LessEqual!7818) (Mod!7818) (Concat!20311) (Not!7818) (Plus!7818) (SpaceValue!7818 (value!236784 List!45863)) (IntegerValue!23456 (value!236785 Int) (text!55175 List!45863)) (StringLiteralValue!23455 (text!55176 List!45863)) (FloatLiteralValue!15637 (text!55177 List!45863)) (BytesLiteralValue!7818 (value!236786 List!45863)) (CommentValue!15637 (value!236787 List!45863)) (StringLiteralValue!23456 (value!236788 List!45863)) (ErrorTokenValue!7818 (msg!7879 List!45863)) )
))
(declare-datatypes ((C!25176 0))(
  ( (C!25177 (val!14750 Int)) )
))
(declare-datatypes ((List!45864 0))(
  ( (Nil!45740) (Cons!45740 (h!51160 C!25176) (t!344559 List!45864)) )
))
(declare-datatypes ((IArray!27603 0))(
  ( (IArray!27604 (innerList!13859 List!45864)) )
))
(declare-datatypes ((Conc!13799 0))(
  ( (Node!13799 (left!34091 Conc!13799) (right!34421 Conc!13799) (csize!27828 Int) (cheight!14010 Int)) (Leaf!21336 (xs!17105 IArray!27603) (csize!27829 Int)) (Empty!13799) )
))
(declare-datatypes ((BalanceConc!27192 0))(
  ( (BalanceConc!27193 (c!713182 Conc!13799)) )
))
(declare-datatypes ((Regex!12493 0))(
  ( (ElementMatch!12493 (c!713183 C!25176)) (Concat!20312 (regOne!25498 Regex!12493) (regTwo!25498 Regex!12493)) (EmptyExpr!12493) (Star!12493 (reg!12822 Regex!12493)) (EmptyLang!12493) (Union!12493 (regOne!25499 Regex!12493) (regTwo!25499 Regex!12493)) )
))
(declare-datatypes ((String!52956 0))(
  ( (String!52957 (value!236789 String)) )
))
(declare-datatypes ((TokenValueInjection!15064 0))(
  ( (TokenValueInjection!15065 (toValue!10272 Int) (toChars!10131 Int)) )
))
(declare-datatypes ((Rule!14976 0))(
  ( (Rule!14977 (regex!7588 Regex!12493) (tag!8452 String!52956) (isSeparator!7588 Bool) (transformation!7588 TokenValueInjection!15064)) )
))
(declare-datatypes ((List!45865 0))(
  ( (Nil!45741) (Cons!45741 (h!51161 Rule!14976) (t!344560 List!45865)) )
))
(declare-fun rules!3843 () List!45865)

(declare-fun isEmpty!27057 (List!45865) Bool)

(assert (=> b!4173074 (= res!1710064 (not (isEmpty!27057 rules!3843)))))

(declare-fun b!4173075 () Bool)

(declare-fun res!1710062 () Bool)

(assert (=> b!4173075 (=> (not res!1710062) (not e!2590706))))

(declare-datatypes ((LexerInterface!7181 0))(
  ( (LexerInterfaceExt!7178 (__x!27858 Int)) (Lexer!7179) )
))
(declare-fun thiss!25986 () LexerInterface!7181)

(declare-fun rulesInvariant!6394 (LexerInterface!7181 List!45865) Bool)

(assert (=> b!4173075 (= res!1710062 (rulesInvariant!6394 thiss!25986 rules!3843))))

(declare-fun b!4173076 () Bool)

(declare-fun res!1710069 () Bool)

(assert (=> b!4173076 (=> (not res!1710069) (not e!2590706))))

(declare-fun p!2959 () List!45864)

(declare-fun input!3342 () List!45864)

(declare-fun isPrefix!4445 (List!45864 List!45864) Bool)

(assert (=> b!4173076 (= res!1710069 (isPrefix!4445 p!2959 input!3342))))

(declare-fun tp!1275083 () Bool)

(declare-fun e!2590707 () Bool)

(declare-fun e!2590718 () Bool)

(declare-fun b!4173077 () Bool)

(declare-fun inv!60271 (String!52956) Bool)

(declare-fun inv!60273 (TokenValueInjection!15064) Bool)

(assert (=> b!4173077 (= e!2590707 (and tp!1275083 (inv!60271 (tag!8452 (h!51161 rules!3843))) (inv!60273 (transformation!7588 (h!51161 rules!3843))) e!2590718))))

(declare-fun res!1710068 () Bool)

(assert (=> start!397906 (=> (not res!1710068) (not e!2590706))))

(get-info :version)

(assert (=> start!397906 (= res!1710068 ((_ is Lexer!7179) thiss!25986))))

(assert (=> start!397906 e!2590706))

(assert (=> start!397906 true))

(declare-fun e!2590713 () Bool)

(assert (=> start!397906 e!2590713))

(declare-fun e!2590717 () Bool)

(assert (=> start!397906 e!2590717))

(declare-fun e!2590716 () Bool)

(assert (=> start!397906 e!2590716))

(declare-fun e!2590710 () Bool)

(assert (=> start!397906 e!2590710))

(declare-fun e!2590719 () Bool)

(assert (=> start!397906 e!2590719))

(declare-fun e!2590720 () Bool)

(assert (=> start!397906 e!2590720))

(declare-fun b!4173078 () Bool)

(declare-fun res!1710065 () Bool)

(assert (=> b!4173078 (=> (not res!1710065) (not e!2590706))))

(declare-fun rBis!167 () Rule!14976)

(declare-fun contains!9391 (List!45865 Rule!14976) Bool)

(assert (=> b!4173078 (= res!1710065 (contains!9391 rules!3843 rBis!167))))

(declare-fun e!2590715 () Bool)

(declare-fun tp!1275081 () Bool)

(declare-fun b!4173079 () Bool)

(assert (=> b!4173079 (= e!2590713 (and tp!1275081 (inv!60271 (tag!8452 rBis!167)) (inv!60273 (transformation!7588 rBis!167)) e!2590715))))

(declare-fun b!4173080 () Bool)

(declare-fun tp_is_empty!21949 () Bool)

(declare-fun tp!1275088 () Bool)

(assert (=> b!4173080 (= e!2590710 (and tp_is_empty!21949 tp!1275088))))

(declare-fun e!2590709 () Bool)

(declare-fun tp!1275080 () Bool)

(declare-fun r!4142 () Rule!14976)

(declare-fun b!4173081 () Bool)

(assert (=> b!4173081 (= e!2590717 (and tp!1275080 (inv!60271 (tag!8452 r!4142)) (inv!60273 (transformation!7588 r!4142)) e!2590709))))

(declare-fun b!4173082 () Bool)

(declare-fun res!1710070 () Bool)

(assert (=> b!4173082 (=> (not res!1710070) (not e!2590706))))

(declare-fun ruleValid!3306 (LexerInterface!7181 Rule!14976) Bool)

(assert (=> b!4173082 (= res!1710070 (ruleValid!3306 thiss!25986 r!4142))))

(declare-fun b!4173083 () Bool)

(declare-fun res!1710071 () Bool)

(assert (=> b!4173083 (=> (not res!1710071) (not e!2590706))))

(assert (=> b!4173083 (= res!1710071 (contains!9391 rules!3843 r!4142))))

(declare-fun b!4173084 () Bool)

(declare-fun res!1710063 () Bool)

(declare-fun e!2590708 () Bool)

(assert (=> b!4173084 (=> res!1710063 e!2590708)))

(assert (=> b!4173084 (= res!1710063 (not (ruleValid!3306 thiss!25986 rBis!167)))))

(assert (=> b!4173085 (= e!2590718 (and tp!1275077 tp!1275079))))

(declare-fun b!4173086 () Bool)

(declare-fun res!1710073 () Bool)

(assert (=> b!4173086 (=> res!1710073 e!2590708)))

(declare-fun pBis!107 () List!45864)

(declare-fun lt!1485901 () Int)

(declare-fun size!33575 (List!45864) Int)

(assert (=> b!4173086 (= res!1710073 (<= (size!33575 pBis!107) lt!1485901))))

(declare-fun b!4173087 () Bool)

(declare-fun tp!1275084 () Bool)

(assert (=> b!4173087 (= e!2590719 (and tp_is_empty!21949 tp!1275084))))

(declare-fun b!4173088 () Bool)

(assert (=> b!4173088 (= e!2590706 (not e!2590708))))

(declare-fun res!1710074 () Bool)

(assert (=> b!4173088 (=> res!1710074 e!2590708)))

(declare-fun lt!1485904 () TokenValue!7818)

(declare-datatypes ((Token!13890 0))(
  ( (Token!13891 (value!236790 TokenValue!7818) (rule!10638 Rule!14976) (size!33576 Int) (originalCharacters!7976 List!45864)) )
))
(declare-datatypes ((tuple2!43594 0))(
  ( (tuple2!43595 (_1!24931 Token!13890) (_2!24931 List!45864)) )
))
(declare-datatypes ((Option!9784 0))(
  ( (None!9783) (Some!9783 (v!40579 tuple2!43594)) )
))
(declare-fun maxPrefixOneRule!3192 (LexerInterface!7181 Rule!14976 List!45864) Option!9784)

(declare-fun getSuffix!2740 (List!45864 List!45864) List!45864)

(assert (=> b!4173088 (= res!1710074 (not (= (maxPrefixOneRule!3192 thiss!25986 r!4142 input!3342) (Some!9783 (tuple2!43595 (Token!13891 lt!1485904 r!4142 lt!1485901 p!2959) (getSuffix!2740 input!3342 p!2959))))))))

(assert (=> b!4173088 (= lt!1485901 (size!33575 p!2959))))

(declare-fun lt!1485900 () BalanceConc!27192)

(declare-fun apply!10553 (TokenValueInjection!15064 BalanceConc!27192) TokenValue!7818)

(assert (=> b!4173088 (= lt!1485904 (apply!10553 (transformation!7588 r!4142) lt!1485900))))

(assert (=> b!4173088 (isPrefix!4445 input!3342 input!3342)))

(declare-datatypes ((Unit!64809 0))(
  ( (Unit!64810) )
))
(declare-fun lt!1485902 () Unit!64809)

(declare-fun lemmaIsPrefixRefl!2874 (List!45864 List!45864) Unit!64809)

(assert (=> b!4173088 (= lt!1485902 (lemmaIsPrefixRefl!2874 input!3342 input!3342))))

(declare-fun lt!1485903 () Unit!64809)

(declare-fun lemmaSemiInverse!2354 (TokenValueInjection!15064 BalanceConc!27192) Unit!64809)

(assert (=> b!4173088 (= lt!1485903 (lemmaSemiInverse!2354 (transformation!7588 r!4142) lt!1485900))))

(declare-fun seqFromList!5613 (List!45864) BalanceConc!27192)

(assert (=> b!4173088 (= lt!1485900 (seqFromList!5613 p!2959))))

(assert (=> b!4173089 (= e!2590709 (and tp!1275076 tp!1275086))))

(declare-fun b!4173090 () Bool)

(declare-fun res!1710067 () Bool)

(assert (=> b!4173090 (=> (not res!1710067) (not e!2590706))))

(assert (=> b!4173090 (= res!1710067 (isPrefix!4445 pBis!107 input!3342))))

(declare-fun b!4173091 () Bool)

(declare-fun res!1710072 () Bool)

(assert (=> b!4173091 (=> (not res!1710072) (not e!2590706))))

(declare-fun matchR!6232 (Regex!12493 List!45864) Bool)

(assert (=> b!4173091 (= res!1710072 (matchR!6232 (regex!7588 r!4142) p!2959))))

(declare-fun b!4173092 () Bool)

(declare-fun tp!1275085 () Bool)

(assert (=> b!4173092 (= e!2590720 (and tp_is_empty!21949 tp!1275085))))

(declare-fun b!4173093 () Bool)

(assert (=> b!4173093 (= e!2590708 true)))

(declare-fun lt!1485899 () Option!9784)

(declare-fun maxPrefix!4233 (LexerInterface!7181 List!45865 List!45864) Option!9784)

(assert (=> b!4173093 (= lt!1485899 (maxPrefix!4233 thiss!25986 rules!3843 input!3342))))

(assert (=> b!4173094 (= e!2590715 (and tp!1275087 tp!1275082))))

(declare-fun b!4173095 () Bool)

(declare-fun tp!1275078 () Bool)

(assert (=> b!4173095 (= e!2590716 (and e!2590707 tp!1275078))))

(declare-fun b!4173096 () Bool)

(declare-fun res!1710066 () Bool)

(assert (=> b!4173096 (=> (not res!1710066) (not e!2590706))))

(declare-fun validRegex!5610 (Regex!12493) Bool)

(assert (=> b!4173096 (= res!1710066 (validRegex!5610 (regex!7588 r!4142)))))

(assert (= (and start!397906 res!1710068) b!4173076))

(assert (= (and b!4173076 res!1710069) b!4173090))

(assert (= (and b!4173090 res!1710067) b!4173074))

(assert (= (and b!4173074 res!1710064) b!4173075))

(assert (= (and b!4173075 res!1710062) b!4173083))

(assert (= (and b!4173083 res!1710071) b!4173078))

(assert (= (and b!4173078 res!1710065) b!4173096))

(assert (= (and b!4173096 res!1710066) b!4173091))

(assert (= (and b!4173091 res!1710072) b!4173082))

(assert (= (and b!4173082 res!1710070) b!4173088))

(assert (= (and b!4173088 (not res!1710074)) b!4173086))

(assert (= (and b!4173086 (not res!1710073)) b!4173084))

(assert (= (and b!4173084 (not res!1710063)) b!4173093))

(assert (= b!4173079 b!4173094))

(assert (= start!397906 b!4173079))

(assert (= b!4173081 b!4173089))

(assert (= start!397906 b!4173081))

(assert (= b!4173077 b!4173085))

(assert (= b!4173095 b!4173077))

(assert (= (and start!397906 ((_ is Cons!45741) rules!3843)) b!4173095))

(assert (= (and start!397906 ((_ is Cons!45740) input!3342)) b!4173080))

(assert (= (and start!397906 ((_ is Cons!45740) pBis!107)) b!4173087))

(assert (= (and start!397906 ((_ is Cons!45740) p!2959)) b!4173092))

(declare-fun m!4763099 () Bool)

(assert (=> b!4173078 m!4763099))

(declare-fun m!4763101 () Bool)

(assert (=> b!4173079 m!4763101))

(declare-fun m!4763103 () Bool)

(assert (=> b!4173079 m!4763103))

(declare-fun m!4763105 () Bool)

(assert (=> b!4173093 m!4763105))

(declare-fun m!4763107 () Bool)

(assert (=> b!4173077 m!4763107))

(declare-fun m!4763109 () Bool)

(assert (=> b!4173077 m!4763109))

(declare-fun m!4763111 () Bool)

(assert (=> b!4173090 m!4763111))

(declare-fun m!4763113 () Bool)

(assert (=> b!4173088 m!4763113))

(declare-fun m!4763115 () Bool)

(assert (=> b!4173088 m!4763115))

(declare-fun m!4763117 () Bool)

(assert (=> b!4173088 m!4763117))

(declare-fun m!4763119 () Bool)

(assert (=> b!4173088 m!4763119))

(declare-fun m!4763121 () Bool)

(assert (=> b!4173088 m!4763121))

(declare-fun m!4763123 () Bool)

(assert (=> b!4173088 m!4763123))

(declare-fun m!4763125 () Bool)

(assert (=> b!4173088 m!4763125))

(declare-fun m!4763127 () Bool)

(assert (=> b!4173088 m!4763127))

(declare-fun m!4763129 () Bool)

(assert (=> b!4173091 m!4763129))

(declare-fun m!4763131 () Bool)

(assert (=> b!4173075 m!4763131))

(declare-fun m!4763133 () Bool)

(assert (=> b!4173082 m!4763133))

(declare-fun m!4763135 () Bool)

(assert (=> b!4173096 m!4763135))

(declare-fun m!4763137 () Bool)

(assert (=> b!4173074 m!4763137))

(declare-fun m!4763139 () Bool)

(assert (=> b!4173083 m!4763139))

(declare-fun m!4763141 () Bool)

(assert (=> b!4173076 m!4763141))

(declare-fun m!4763143 () Bool)

(assert (=> b!4173086 m!4763143))

(declare-fun m!4763145 () Bool)

(assert (=> b!4173084 m!4763145))

(declare-fun m!4763147 () Bool)

(assert (=> b!4173081 m!4763147))

(declare-fun m!4763149 () Bool)

(assert (=> b!4173081 m!4763149))

(check-sat b_and!326013 (not b!4173086) (not b!4173081) (not b_next!121553) (not b!4173076) b_and!326007 (not b!4173084) b_and!326005 (not b_next!121559) (not b!4173080) (not b_next!121557) (not b!4173074) (not b_next!121551) b_and!326011 (not b!4173078) tp_is_empty!21949 (not b!4173092) (not b!4173090) (not b!4173091) (not b!4173077) (not b!4173095) b_and!326009 (not b!4173088) (not b!4173087) (not b!4173093) b_and!326015 (not b!4173082) (not b_next!121555) (not b!4173096) (not b_next!121561) (not b!4173079) (not b!4173083) (not b!4173075))
(check-sat b_and!326009 b_and!326013 b_and!326015 (not b_next!121555) (not b_next!121553) b_and!326007 b_and!326005 (not b_next!121559) (not b_next!121557) (not b_next!121561) (not b_next!121551) b_and!326011)
