; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399602 () Bool)

(assert start!399602)

(declare-fun b!4187928 () Bool)

(declare-fun b_free!121847 () Bool)

(declare-fun b_next!122551 () Bool)

(assert (=> b!4187928 (= b_free!121847 (not b_next!122551))))

(declare-fun tp!1279792 () Bool)

(declare-fun b_and!328033 () Bool)

(assert (=> b!4187928 (= tp!1279792 b_and!328033)))

(declare-fun b_free!121849 () Bool)

(declare-fun b_next!122553 () Bool)

(assert (=> b!4187928 (= b_free!121849 (not b_next!122553))))

(declare-fun tp!1279781 () Bool)

(declare-fun b_and!328035 () Bool)

(assert (=> b!4187928 (= tp!1279781 b_and!328035)))

(declare-fun b!4187947 () Bool)

(declare-fun b_free!121851 () Bool)

(declare-fun b_next!122555 () Bool)

(assert (=> b!4187947 (= b_free!121851 (not b_next!122555))))

(declare-fun tp!1279784 () Bool)

(declare-fun b_and!328037 () Bool)

(assert (=> b!4187947 (= tp!1279784 b_and!328037)))

(declare-fun b_free!121853 () Bool)

(declare-fun b_next!122557 () Bool)

(assert (=> b!4187947 (= b_free!121853 (not b_next!122557))))

(declare-fun tp!1279787 () Bool)

(declare-fun b_and!328039 () Bool)

(assert (=> b!4187947 (= tp!1279787 b_and!328039)))

(declare-fun b!4187936 () Bool)

(declare-fun b_free!121855 () Bool)

(declare-fun b_next!122559 () Bool)

(assert (=> b!4187936 (= b_free!121855 (not b_next!122559))))

(declare-fun tp!1279788 () Bool)

(declare-fun b_and!328041 () Bool)

(assert (=> b!4187936 (= tp!1279788 b_and!328041)))

(declare-fun b_free!121857 () Bool)

(declare-fun b_next!122561 () Bool)

(assert (=> b!4187936 (= b_free!121857 (not b_next!122561))))

(declare-fun tp!1279782 () Bool)

(declare-fun b_and!328043 () Bool)

(assert (=> b!4187936 (= tp!1279782 b_and!328043)))

(declare-fun b!4187924 () Bool)

(declare-fun res!1718091 () Bool)

(declare-fun e!2599819 () Bool)

(assert (=> b!4187924 (=> (not res!1718091) (not e!2599819))))

(declare-datatypes ((List!46107 0))(
  ( (Nil!45983) (Cons!45983 (h!51403 (_ BitVec 16)) (t!345750 List!46107)) )
))
(declare-datatypes ((TokenValue!7890 0))(
  ( (FloatLiteralValue!15780 (text!55675 List!46107)) (TokenValueExt!7889 (__x!28001 Int)) (Broken!39450 (value!238816 List!46107)) (Object!8013) (End!7890) (Def!7890) (Underscore!7890) (Match!7890) (Else!7890) (Error!7890) (Case!7890) (If!7890) (Extends!7890) (Abstract!7890) (Class!7890) (Val!7890) (DelimiterValue!15780 (del!7950 List!46107)) (KeywordValue!7896 (value!238817 List!46107)) (CommentValue!15780 (value!238818 List!46107)) (WhitespaceValue!15780 (value!238819 List!46107)) (IndentationValue!7890 (value!238820 List!46107)) (String!53315) (Int32!7890) (Broken!39451 (value!238821 List!46107)) (Boolean!7891) (Unit!65070) (OperatorValue!7893 (op!7950 List!46107)) (IdentifierValue!15780 (value!238822 List!46107)) (IdentifierValue!15781 (value!238823 List!46107)) (WhitespaceValue!15781 (value!238824 List!46107)) (True!15780) (False!15780) (Broken!39452 (value!238825 List!46107)) (Broken!39453 (value!238826 List!46107)) (True!15781) (RightBrace!7890) (RightBracket!7890) (Colon!7890) (Null!7890) (Comma!7890) (LeftBracket!7890) (False!15781) (LeftBrace!7890) (ImaginaryLiteralValue!7890 (text!55676 List!46107)) (StringLiteralValue!23670 (value!238827 List!46107)) (EOFValue!7890 (value!238828 List!46107)) (IdentValue!7890 (value!238829 List!46107)) (DelimiterValue!15781 (value!238830 List!46107)) (DedentValue!7890 (value!238831 List!46107)) (NewLineValue!7890 (value!238832 List!46107)) (IntegerValue!23670 (value!238833 (_ BitVec 32)) (text!55677 List!46107)) (IntegerValue!23671 (value!238834 Int) (text!55678 List!46107)) (Times!7890) (Or!7890) (Equal!7890) (Minus!7890) (Broken!39454 (value!238835 List!46107)) (And!7890) (Div!7890) (LessEqual!7890) (Mod!7890) (Concat!20455) (Not!7890) (Plus!7890) (SpaceValue!7890 (value!238836 List!46107)) (IntegerValue!23672 (value!238837 Int) (text!55679 List!46107)) (StringLiteralValue!23671 (text!55680 List!46107)) (FloatLiteralValue!15781 (text!55681 List!46107)) (BytesLiteralValue!7890 (value!238838 List!46107)) (CommentValue!15781 (value!238839 List!46107)) (StringLiteralValue!23672 (value!238840 List!46107)) (ErrorTokenValue!7890 (msg!7951 List!46107)) )
))
(declare-datatypes ((C!25320 0))(
  ( (C!25321 (val!14822 Int)) )
))
(declare-datatypes ((List!46108 0))(
  ( (Nil!45984) (Cons!45984 (h!51404 C!25320) (t!345751 List!46108)) )
))
(declare-datatypes ((IArray!27747 0))(
  ( (IArray!27748 (innerList!13931 List!46108)) )
))
(declare-datatypes ((Conc!13871 0))(
  ( (Node!13871 (left!34255 Conc!13871) (right!34585 Conc!13871) (csize!27972 Int) (cheight!14082 Int)) (Leaf!21444 (xs!17177 IArray!27747) (csize!27973 Int)) (Empty!13871) )
))
(declare-datatypes ((BalanceConc!27336 0))(
  ( (BalanceConc!27337 (c!714802 Conc!13871)) )
))
(declare-datatypes ((Regex!12565 0))(
  ( (ElementMatch!12565 (c!714803 C!25320)) (Concat!20456 (regOne!25642 Regex!12565) (regTwo!25642 Regex!12565)) (EmptyExpr!12565) (Star!12565 (reg!12894 Regex!12565)) (EmptyLang!12565) (Union!12565 (regOne!25643 Regex!12565) (regTwo!25643 Regex!12565)) )
))
(declare-datatypes ((String!53316 0))(
  ( (String!53317 (value!238841 String)) )
))
(declare-datatypes ((TokenValueInjection!15208 0))(
  ( (TokenValueInjection!15209 (toValue!10356 Int) (toChars!10215 Int)) )
))
(declare-datatypes ((Rule!15120 0))(
  ( (Rule!15121 (regex!7660 Regex!12565) (tag!8524 String!53316) (isSeparator!7660 Bool) (transformation!7660 TokenValueInjection!15208)) )
))
(declare-datatypes ((List!46109 0))(
  ( (Nil!45985) (Cons!45985 (h!51405 Rule!15120) (t!345752 List!46109)) )
))
(declare-fun rules!3843 () List!46109)

(declare-fun rBis!167 () Rule!15120)

(declare-fun contains!9469 (List!46109 Rule!15120) Bool)

(assert (=> b!4187924 (= res!1718091 (contains!9469 rules!3843 rBis!167))))

(declare-fun b!4187925 () Bool)

(declare-fun e!2599827 () Bool)

(declare-fun e!2599826 () Bool)

(assert (=> b!4187925 (= e!2599827 e!2599826)))

(declare-fun res!1718094 () Bool)

(assert (=> b!4187925 (=> res!1718094 e!2599826)))

(declare-fun lt!1491552 () List!46108)

(declare-fun pBis!107 () List!46108)

(assert (=> b!4187925 (= res!1718094 (= lt!1491552 pBis!107))))

(declare-datatypes ((Token!14034 0))(
  ( (Token!14035 (value!238842 TokenValue!7890) (rule!10736 Rule!15120) (size!33771 Int) (originalCharacters!8048 List!46108)) )
))
(declare-datatypes ((tuple2!43786 0))(
  ( (tuple2!43787 (_1!25027 Token!14034) (_2!25027 List!46108)) )
))
(declare-fun lt!1491554 () tuple2!43786)

(declare-fun isPrefix!4517 (List!46108 List!46108) Bool)

(declare-fun ++!11732 (List!46108 List!46108) List!46108)

(assert (=> b!4187925 (isPrefix!4517 lt!1491552 (++!11732 lt!1491552 (_2!25027 lt!1491554)))))

(declare-datatypes ((Unit!65071 0))(
  ( (Unit!65072) )
))
(declare-fun lt!1491555 () Unit!65071)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3014 (List!46108 List!46108) Unit!65071)

(assert (=> b!4187925 (= lt!1491555 (lemmaConcatTwoListThenFirstIsPrefix!3014 lt!1491552 (_2!25027 lt!1491554)))))

(declare-fun lt!1491551 () BalanceConc!27336)

(declare-fun list!16612 (BalanceConc!27336) List!46108)

(assert (=> b!4187925 (= lt!1491552 (list!16612 lt!1491551))))

(declare-fun charsOf!5095 (Token!14034) BalanceConc!27336)

(assert (=> b!4187925 (= lt!1491551 (charsOf!5095 (_1!25027 lt!1491554)))))

(declare-datatypes ((Option!9854 0))(
  ( (None!9853) (Some!9853 (v!40677 tuple2!43786)) )
))
(declare-fun lt!1491556 () Option!9854)

(declare-fun get!14949 (Option!9854) tuple2!43786)

(assert (=> b!4187925 (= lt!1491554 (get!14949 lt!1491556))))

(declare-fun b!4187926 () Bool)

(declare-fun e!2599828 () Bool)

(declare-fun tp_is_empty!22093 () Bool)

(declare-fun tp!1279789 () Bool)

(assert (=> b!4187926 (= e!2599828 (and tp_is_empty!22093 tp!1279789))))

(declare-fun b!4187927 () Bool)

(declare-fun res!1718081 () Bool)

(assert (=> b!4187927 (=> (not res!1718081) (not e!2599819))))

(declare-datatypes ((LexerInterface!7253 0))(
  ( (LexerInterfaceExt!7250 (__x!28002 Int)) (Lexer!7251) )
))
(declare-fun thiss!25986 () LexerInterface!7253)

(declare-fun rulesInvariant!6466 (LexerInterface!7253 List!46109) Bool)

(assert (=> b!4187927 (= res!1718081 (rulesInvariant!6466 thiss!25986 rules!3843))))

(declare-fun e!2599822 () Bool)

(assert (=> b!4187928 (= e!2599822 (and tp!1279792 tp!1279781))))

(declare-fun e!2599831 () Bool)

(declare-fun tp!1279780 () Bool)

(declare-fun e!2599824 () Bool)

(declare-fun b!4187929 () Bool)

(declare-fun inv!60530 (String!53316) Bool)

(declare-fun inv!60532 (TokenValueInjection!15208) Bool)

(assert (=> b!4187929 (= e!2599824 (and tp!1279780 (inv!60530 (tag!8524 rBis!167)) (inv!60532 (transformation!7660 rBis!167)) e!2599831))))

(declare-fun b!4187930 () Bool)

(declare-fun res!1718083 () Bool)

(assert (=> b!4187930 (=> res!1718083 e!2599826)))

(declare-fun lt!1491548 () Int)

(declare-fun size!33772 (BalanceConc!27336) Int)

(assert (=> b!4187930 (= res!1718083 (>= (size!33772 lt!1491551) lt!1491548))))

(declare-fun b!4187931 () Bool)

(declare-fun res!1718080 () Bool)

(assert (=> b!4187931 (=> (not res!1718080) (not e!2599819))))

(declare-fun r!4142 () Rule!15120)

(declare-fun validRegex!5682 (Regex!12565) Bool)

(assert (=> b!4187931 (= res!1718080 (validRegex!5682 (regex!7660 r!4142)))))

(declare-fun e!2599829 () Bool)

(declare-fun e!2599832 () Bool)

(declare-fun tp!1279791 () Bool)

(declare-fun b!4187932 () Bool)

(assert (=> b!4187932 (= e!2599832 (and tp!1279791 (inv!60530 (tag!8524 (h!51405 rules!3843))) (inv!60532 (transformation!7660 (h!51405 rules!3843))) e!2599829))))

(declare-fun b!4187933 () Bool)

(declare-fun e!2599833 () Bool)

(declare-fun tp!1279790 () Bool)

(assert (=> b!4187933 (= e!2599833 (and tp_is_empty!22093 tp!1279790))))

(declare-fun b!4187935 () Bool)

(declare-fun e!2599820 () Bool)

(assert (=> b!4187935 (= e!2599820 e!2599827)))

(declare-fun res!1718082 () Bool)

(assert (=> b!4187935 (=> res!1718082 e!2599827)))

(declare-fun isEmpty!27218 (Option!9854) Bool)

(assert (=> b!4187935 (= res!1718082 (isEmpty!27218 lt!1491556))))

(declare-fun input!3342 () List!46108)

(declare-fun maxPrefixOneRule!3262 (LexerInterface!7253 Rule!15120 List!46108) Option!9854)

(assert (=> b!4187935 (= lt!1491556 (maxPrefixOneRule!3262 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1491560 () Unit!65071)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2384 (LexerInterface!7253 Rule!15120 List!46109) Unit!65071)

(assert (=> b!4187935 (= lt!1491560 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2384 thiss!25986 rBis!167 rules!3843))))

(declare-fun size!33773 (List!46108) Int)

(assert (=> b!4187935 (<= lt!1491548 (size!33773 input!3342))))

(declare-fun lt!1491547 () Unit!65071)

(declare-fun lemmaIsPrefixThenSmallerEqSize!547 (List!46108 List!46108) Unit!65071)

(assert (=> b!4187935 (= lt!1491547 (lemmaIsPrefixThenSmallerEqSize!547 pBis!107 input!3342))))

(assert (=> b!4187936 (= e!2599831 (and tp!1279788 tp!1279782))))

(declare-fun b!4187937 () Bool)

(declare-fun res!1718085 () Bool)

(assert (=> b!4187937 (=> (not res!1718085) (not e!2599819))))

(declare-fun ruleValid!3378 (LexerInterface!7253 Rule!15120) Bool)

(assert (=> b!4187937 (= res!1718085 (ruleValid!3378 thiss!25986 r!4142))))

(declare-fun b!4187938 () Bool)

(declare-fun e!2599821 () Bool)

(assert (=> b!4187938 (= e!2599819 (not e!2599821))))

(declare-fun res!1718090 () Bool)

(assert (=> b!4187938 (=> res!1718090 e!2599821)))

(declare-fun lt!1491553 () Option!9854)

(assert (=> b!4187938 (= res!1718090 (not (= (maxPrefixOneRule!3262 thiss!25986 r!4142 input!3342) lt!1491553)))))

(declare-fun lt!1491549 () Int)

(declare-fun p!2959 () List!46108)

(declare-fun lt!1491550 () TokenValue!7890)

(declare-fun getSuffix!2810 (List!46108 List!46108) List!46108)

(assert (=> b!4187938 (= lt!1491553 (Some!9853 (tuple2!43787 (Token!14035 lt!1491550 r!4142 lt!1491549 p!2959) (getSuffix!2810 input!3342 p!2959))))))

(assert (=> b!4187938 (= lt!1491549 (size!33773 p!2959))))

(declare-fun lt!1491557 () BalanceConc!27336)

(declare-fun apply!10625 (TokenValueInjection!15208 BalanceConc!27336) TokenValue!7890)

(assert (=> b!4187938 (= lt!1491550 (apply!10625 (transformation!7660 r!4142) lt!1491557))))

(assert (=> b!4187938 (isPrefix!4517 input!3342 input!3342)))

(declare-fun lt!1491558 () Unit!65071)

(declare-fun lemmaIsPrefixRefl!2946 (List!46108 List!46108) Unit!65071)

(assert (=> b!4187938 (= lt!1491558 (lemmaIsPrefixRefl!2946 input!3342 input!3342))))

(declare-fun lt!1491546 () Unit!65071)

(declare-fun lemmaSemiInverse!2426 (TokenValueInjection!15208 BalanceConc!27336) Unit!65071)

(assert (=> b!4187938 (= lt!1491546 (lemmaSemiInverse!2426 (transformation!7660 r!4142) lt!1491557))))

(declare-fun seqFromList!5685 (List!46108) BalanceConc!27336)

(assert (=> b!4187938 (= lt!1491557 (seqFromList!5685 p!2959))))

(declare-fun b!4187939 () Bool)

(assert (=> b!4187939 (= e!2599821 e!2599820)))

(declare-fun res!1718089 () Bool)

(assert (=> b!4187939 (=> res!1718089 e!2599820)))

(assert (=> b!4187939 (= res!1718089 (<= lt!1491548 lt!1491549))))

(assert (=> b!4187939 (= lt!1491548 (size!33773 pBis!107))))

(declare-fun b!4187940 () Bool)

(declare-fun e!2599823 () Bool)

(declare-fun tp!1279783 () Bool)

(assert (=> b!4187940 (= e!2599823 (and e!2599832 tp!1279783))))

(declare-fun b!4187941 () Bool)

(declare-fun res!1718086 () Bool)

(assert (=> b!4187941 (=> res!1718086 e!2599820)))

(assert (=> b!4187941 (= res!1718086 (not (ruleValid!3378 thiss!25986 rBis!167)))))

(declare-fun b!4187942 () Bool)

(declare-fun res!1718092 () Bool)

(assert (=> b!4187942 (=> (not res!1718092) (not e!2599819))))

(assert (=> b!4187942 (= res!1718092 (contains!9469 rules!3843 r!4142))))

(declare-fun b!4187943 () Bool)

(declare-fun res!1718084 () Bool)

(assert (=> b!4187943 (=> (not res!1718084) (not e!2599819))))

(assert (=> b!4187943 (= res!1718084 (isPrefix!4517 pBis!107 input!3342))))

(declare-fun b!4187944 () Bool)

(declare-fun res!1718079 () Bool)

(assert (=> b!4187944 (=> (not res!1718079) (not e!2599819))))

(assert (=> b!4187944 (= res!1718079 (isPrefix!4517 p!2959 input!3342))))

(declare-fun b!4187945 () Bool)

(assert (=> b!4187945 (= e!2599826 true)))

(declare-fun lt!1491559 () Bool)

(assert (=> b!4187945 (= lt!1491559 (isPrefix!4517 lt!1491552 input!3342))))

(declare-fun b!4187946 () Bool)

(declare-fun res!1718078 () Bool)

(assert (=> b!4187946 (=> (not res!1718078) (not e!2599819))))

(declare-fun matchR!6304 (Regex!12565 List!46108) Bool)

(assert (=> b!4187946 (= res!1718078 (matchR!6304 (regex!7660 r!4142) p!2959))))

(assert (=> b!4187947 (= e!2599829 (and tp!1279784 tp!1279787))))

(declare-fun res!1718087 () Bool)

(assert (=> start!399602 (=> (not res!1718087) (not e!2599819))))

(get-info :version)

(assert (=> start!399602 (= res!1718087 ((_ is Lexer!7251) thiss!25986))))

(assert (=> start!399602 e!2599819))

(assert (=> start!399602 true))

(assert (=> start!399602 e!2599824))

(declare-fun e!2599817 () Bool)

(assert (=> start!399602 e!2599817))

(assert (=> start!399602 e!2599823))

(declare-fun e!2599834 () Bool)

(assert (=> start!399602 e!2599834))

(assert (=> start!399602 e!2599833))

(assert (=> start!399602 e!2599828))

(declare-fun b!4187934 () Bool)

(declare-fun tp!1279786 () Bool)

(assert (=> b!4187934 (= e!2599834 (and tp_is_empty!22093 tp!1279786))))

(declare-fun b!4187948 () Bool)

(declare-fun tp!1279785 () Bool)

(assert (=> b!4187948 (= e!2599817 (and tp!1279785 (inv!60530 (tag!8524 r!4142)) (inv!60532 (transformation!7660 r!4142)) e!2599822))))

(declare-fun b!4187949 () Bool)

(declare-fun res!1718088 () Bool)

(assert (=> b!4187949 (=> (not res!1718088) (not e!2599819))))

(declare-fun isEmpty!27219 (List!46109) Bool)

(assert (=> b!4187949 (= res!1718088 (not (isEmpty!27219 rules!3843)))))

(declare-fun b!4187950 () Bool)

(declare-fun res!1718093 () Bool)

(assert (=> b!4187950 (=> res!1718093 e!2599820)))

(declare-fun maxPrefix!4301 (LexerInterface!7253 List!46109 List!46108) Option!9854)

(assert (=> b!4187950 (= res!1718093 (not (= (maxPrefix!4301 thiss!25986 rules!3843 input!3342) lt!1491553)))))

(assert (= (and start!399602 res!1718087) b!4187944))

(assert (= (and b!4187944 res!1718079) b!4187943))

(assert (= (and b!4187943 res!1718084) b!4187949))

(assert (= (and b!4187949 res!1718088) b!4187927))

(assert (= (and b!4187927 res!1718081) b!4187942))

(assert (= (and b!4187942 res!1718092) b!4187924))

(assert (= (and b!4187924 res!1718091) b!4187931))

(assert (= (and b!4187931 res!1718080) b!4187946))

(assert (= (and b!4187946 res!1718078) b!4187937))

(assert (= (and b!4187937 res!1718085) b!4187938))

(assert (= (and b!4187938 (not res!1718090)) b!4187939))

(assert (= (and b!4187939 (not res!1718089)) b!4187941))

(assert (= (and b!4187941 (not res!1718086)) b!4187950))

(assert (= (and b!4187950 (not res!1718093)) b!4187935))

(assert (= (and b!4187935 (not res!1718082)) b!4187925))

(assert (= (and b!4187925 (not res!1718094)) b!4187930))

(assert (= (and b!4187930 (not res!1718083)) b!4187945))

(assert (= b!4187929 b!4187936))

(assert (= start!399602 b!4187929))

(assert (= b!4187948 b!4187928))

(assert (= start!399602 b!4187948))

(assert (= b!4187932 b!4187947))

(assert (= b!4187940 b!4187932))

(assert (= (and start!399602 ((_ is Cons!45985) rules!3843)) b!4187940))

(assert (= (and start!399602 ((_ is Cons!45984) input!3342)) b!4187934))

(assert (= (and start!399602 ((_ is Cons!45984) pBis!107)) b!4187933))

(assert (= (and start!399602 ((_ is Cons!45984) p!2959)) b!4187926))

(declare-fun m!4776849 () Bool)

(assert (=> b!4187929 m!4776849))

(declare-fun m!4776851 () Bool)

(assert (=> b!4187929 m!4776851))

(declare-fun m!4776853 () Bool)

(assert (=> b!4187938 m!4776853))

(declare-fun m!4776855 () Bool)

(assert (=> b!4187938 m!4776855))

(declare-fun m!4776857 () Bool)

(assert (=> b!4187938 m!4776857))

(declare-fun m!4776859 () Bool)

(assert (=> b!4187938 m!4776859))

(declare-fun m!4776861 () Bool)

(assert (=> b!4187938 m!4776861))

(declare-fun m!4776863 () Bool)

(assert (=> b!4187938 m!4776863))

(declare-fun m!4776865 () Bool)

(assert (=> b!4187938 m!4776865))

(declare-fun m!4776867 () Bool)

(assert (=> b!4187938 m!4776867))

(declare-fun m!4776869 () Bool)

(assert (=> b!4187932 m!4776869))

(declare-fun m!4776871 () Bool)

(assert (=> b!4187932 m!4776871))

(declare-fun m!4776873 () Bool)

(assert (=> b!4187937 m!4776873))

(declare-fun m!4776875 () Bool)

(assert (=> b!4187943 m!4776875))

(declare-fun m!4776877 () Bool)

(assert (=> b!4187946 m!4776877))

(declare-fun m!4776879 () Bool)

(assert (=> b!4187939 m!4776879))

(declare-fun m!4776881 () Bool)

(assert (=> b!4187948 m!4776881))

(declare-fun m!4776883 () Bool)

(assert (=> b!4187948 m!4776883))

(declare-fun m!4776885 () Bool)

(assert (=> b!4187930 m!4776885))

(declare-fun m!4776887 () Bool)

(assert (=> b!4187950 m!4776887))

(declare-fun m!4776889 () Bool)

(assert (=> b!4187924 m!4776889))

(declare-fun m!4776891 () Bool)

(assert (=> b!4187944 m!4776891))

(declare-fun m!4776893 () Bool)

(assert (=> b!4187949 m!4776893))

(declare-fun m!4776895 () Bool)

(assert (=> b!4187941 m!4776895))

(declare-fun m!4776897 () Bool)

(assert (=> b!4187931 m!4776897))

(declare-fun m!4776899 () Bool)

(assert (=> b!4187927 m!4776899))

(declare-fun m!4776901 () Bool)

(assert (=> b!4187925 m!4776901))

(declare-fun m!4776903 () Bool)

(assert (=> b!4187925 m!4776903))

(declare-fun m!4776905 () Bool)

(assert (=> b!4187925 m!4776905))

(declare-fun m!4776907 () Bool)

(assert (=> b!4187925 m!4776907))

(declare-fun m!4776909 () Bool)

(assert (=> b!4187925 m!4776909))

(declare-fun m!4776911 () Bool)

(assert (=> b!4187925 m!4776911))

(assert (=> b!4187925 m!4776903))

(declare-fun m!4776913 () Bool)

(assert (=> b!4187945 m!4776913))

(declare-fun m!4776915 () Bool)

(assert (=> b!4187935 m!4776915))

(declare-fun m!4776917 () Bool)

(assert (=> b!4187935 m!4776917))

(declare-fun m!4776919 () Bool)

(assert (=> b!4187935 m!4776919))

(declare-fun m!4776921 () Bool)

(assert (=> b!4187935 m!4776921))

(declare-fun m!4776923 () Bool)

(assert (=> b!4187935 m!4776923))

(declare-fun m!4776925 () Bool)

(assert (=> b!4187942 m!4776925))

(check-sat (not b!4187930) (not b!4187940) (not b!4187950) (not b_next!122559) (not b!4187927) (not b_next!122553) (not b!4187948) (not b!4187943) b_and!328035 (not b!4187949) (not b!4187946) (not b!4187933) b_and!328037 (not b!4187945) (not b!4187944) (not b!4187926) (not b_next!122557) (not b_next!122561) (not b_next!122551) b_and!328033 (not b!4187935) (not b!4187939) tp_is_empty!22093 b_and!328043 (not b!4187934) (not b!4187941) (not b!4187924) (not b!4187929) (not b!4187942) b_and!328041 b_and!328039 (not b_next!122555) (not b!4187932) (not b!4187937) (not b!4187931) (not b!4187938) (not b!4187925))
(check-sat b_and!328037 (not b_next!122557) (not b_next!122559) b_and!328043 b_and!328041 (not b_next!122553) b_and!328035 (not b_next!122561) (not b_next!122551) b_and!328033 b_and!328039 (not b_next!122555))
