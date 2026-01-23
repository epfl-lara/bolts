; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137886 () Bool)

(assert start!137886)

(declare-fun b!1471955 () Bool)

(declare-fun b_free!37287 () Bool)

(declare-fun b_next!37991 () Bool)

(assert (=> b!1471955 (= b_free!37287 (not b_next!37991))))

(declare-fun tp!415748 () Bool)

(declare-fun b_and!101081 () Bool)

(assert (=> b!1471955 (= tp!415748 b_and!101081)))

(declare-fun b_free!37289 () Bool)

(declare-fun b_next!37993 () Bool)

(assert (=> b!1471955 (= b_free!37289 (not b_next!37993))))

(declare-fun tp!415743 () Bool)

(declare-fun b_and!101083 () Bool)

(assert (=> b!1471955 (= tp!415743 b_and!101083)))

(declare-fun b!1471957 () Bool)

(declare-fun b_free!37291 () Bool)

(declare-fun b_next!37995 () Bool)

(assert (=> b!1471957 (= b_free!37291 (not b_next!37995))))

(declare-fun tp!415747 () Bool)

(declare-fun b_and!101085 () Bool)

(assert (=> b!1471957 (= tp!415747 b_and!101085)))

(declare-fun b_free!37293 () Bool)

(declare-fun b_next!37997 () Bool)

(assert (=> b!1471957 (= b_free!37293 (not b_next!37997))))

(declare-fun tp!415736 () Bool)

(declare-fun b_and!101087 () Bool)

(assert (=> b!1471957 (= tp!415736 b_and!101087)))

(declare-fun b!1471944 () Bool)

(declare-fun b_free!37295 () Bool)

(declare-fun b_next!37999 () Bool)

(assert (=> b!1471944 (= b_free!37295 (not b_next!37999))))

(declare-fun tp!415739 () Bool)

(declare-fun b_and!101089 () Bool)

(assert (=> b!1471944 (= tp!415739 b_and!101089)))

(declare-fun b_free!37297 () Bool)

(declare-fun b_next!38001 () Bool)

(assert (=> b!1471944 (= b_free!37297 (not b_next!38001))))

(declare-fun tp!415746 () Bool)

(declare-fun b_and!101091 () Bool)

(assert (=> b!1471944 (= tp!415746 b_and!101091)))

(declare-datatypes ((C!8300 0))(
  ( (C!8301 (val!4720 Int)) )
))
(declare-datatypes ((List!15513 0))(
  ( (Nil!15447) (Cons!15447 (h!20848 C!8300) (t!135822 List!15513)) )
))
(declare-datatypes ((Regex!4061 0))(
  ( (ElementMatch!4061 (c!242316 C!8300)) (Concat!6898 (regOne!8634 Regex!4061) (regTwo!8634 Regex!4061)) (EmptyExpr!4061) (Star!4061 (reg!4390 Regex!4061)) (EmptyLang!4061) (Union!4061 (regOne!8635 Regex!4061) (regTwo!8635 Regex!4061)) )
))
(declare-datatypes ((List!15514 0))(
  ( (Nil!15448) (Cons!15448 (h!20849 (_ BitVec 16)) (t!135823 List!15514)) )
))
(declare-datatypes ((TokenValue!2837 0))(
  ( (FloatLiteralValue!5674 (text!20304 List!15514)) (TokenValueExt!2836 (__x!9464 Int)) (Broken!14185 (value!87911 List!15514)) (Object!2902) (End!2837) (Def!2837) (Underscore!2837) (Match!2837) (Else!2837) (Error!2837) (Case!2837) (If!2837) (Extends!2837) (Abstract!2837) (Class!2837) (Val!2837) (DelimiterValue!5674 (del!2897 List!15514)) (KeywordValue!2843 (value!87912 List!15514)) (CommentValue!5674 (value!87913 List!15514)) (WhitespaceValue!5674 (value!87914 List!15514)) (IndentationValue!2837 (value!87915 List!15514)) (String!18440) (Int32!2837) (Broken!14186 (value!87916 List!15514)) (Boolean!2838) (Unit!25142) (OperatorValue!2840 (op!2897 List!15514)) (IdentifierValue!5674 (value!87917 List!15514)) (IdentifierValue!5675 (value!87918 List!15514)) (WhitespaceValue!5675 (value!87919 List!15514)) (True!5674) (False!5674) (Broken!14187 (value!87920 List!15514)) (Broken!14188 (value!87921 List!15514)) (True!5675) (RightBrace!2837) (RightBracket!2837) (Colon!2837) (Null!2837) (Comma!2837) (LeftBracket!2837) (False!5675) (LeftBrace!2837) (ImaginaryLiteralValue!2837 (text!20305 List!15514)) (StringLiteralValue!8511 (value!87922 List!15514)) (EOFValue!2837 (value!87923 List!15514)) (IdentValue!2837 (value!87924 List!15514)) (DelimiterValue!5675 (value!87925 List!15514)) (DedentValue!2837 (value!87926 List!15514)) (NewLineValue!2837 (value!87927 List!15514)) (IntegerValue!8511 (value!87928 (_ BitVec 32)) (text!20306 List!15514)) (IntegerValue!8512 (value!87929 Int) (text!20307 List!15514)) (Times!2837) (Or!2837) (Equal!2837) (Minus!2837) (Broken!14189 (value!87930 List!15514)) (And!2837) (Div!2837) (LessEqual!2837) (Mod!2837) (Concat!6899) (Not!2837) (Plus!2837) (SpaceValue!2837 (value!87931 List!15514)) (IntegerValue!8513 (value!87932 Int) (text!20308 List!15514)) (StringLiteralValue!8512 (text!20309 List!15514)) (FloatLiteralValue!5675 (text!20310 List!15514)) (BytesLiteralValue!2837 (value!87933 List!15514)) (CommentValue!5675 (value!87934 List!15514)) (StringLiteralValue!8513 (value!87935 List!15514)) (ErrorTokenValue!2837 (msg!2898 List!15514)) )
))
(declare-datatypes ((IArray!10543 0))(
  ( (IArray!10544 (innerList!5329 List!15513)) )
))
(declare-datatypes ((Conc!5269 0))(
  ( (Node!5269 (left!13069 Conc!5269) (right!13399 Conc!5269) (csize!10768 Int) (cheight!5480 Int)) (Leaf!7844 (xs!8024 IArray!10543) (csize!10769 Int)) (Empty!5269) )
))
(declare-datatypes ((BalanceConc!10478 0))(
  ( (BalanceConc!10479 (c!242317 Conc!5269)) )
))
(declare-datatypes ((TokenValueInjection!5334 0))(
  ( (TokenValueInjection!5335 (toValue!4074 Int) (toChars!3933 Int)) )
))
(declare-datatypes ((String!18441 0))(
  ( (String!18442 (value!87936 String)) )
))
(declare-datatypes ((Rule!5294 0))(
  ( (Rule!5295 (regex!2747 Regex!4061) (tag!3011 String!18441) (isSeparator!2747 Bool) (transformation!2747 TokenValueInjection!5334)) )
))
(declare-datatypes ((List!15515 0))(
  ( (Nil!15449) (Cons!15449 (h!20850 Rule!5294) (t!135824 List!15515)) )
))
(declare-fun rules!4290 () List!15515)

(declare-fun e!940057 () Bool)

(declare-fun tp!415745 () Bool)

(declare-fun b!1471942 () Bool)

(declare-fun e!940068 () Bool)

(declare-fun inv!20654 (String!18441) Bool)

(declare-fun inv!20657 (TokenValueInjection!5334) Bool)

(assert (=> b!1471942 (= e!940057 (and tp!415745 (inv!20654 (tag!3011 (h!20850 rules!4290))) (inv!20657 (transformation!2747 (h!20850 rules!4290))) e!940068))))

(declare-fun b!1471943 () Bool)

(declare-fun tp!415737 () Bool)

(declare-datatypes ((Token!5156 0))(
  ( (Token!5157 (value!87937 TokenValue!2837) (rule!4524 Rule!5294) (size!12548 Int) (originalCharacters!3609 List!15513)) )
))
(declare-datatypes ((List!15516 0))(
  ( (Nil!15450) (Cons!15450 (h!20851 Token!5156) (t!135825 List!15516)) )
))
(declare-fun l1!3136 () List!15516)

(declare-fun e!940055 () Bool)

(declare-fun e!940063 () Bool)

(assert (=> b!1471943 (= e!940055 (and tp!415737 (inv!20654 (tag!3011 (rule!4524 (h!20851 l1!3136)))) (inv!20657 (transformation!2747 (rule!4524 (h!20851 l1!3136)))) e!940063))))

(assert (=> b!1471944 (= e!940063 (and tp!415739 tp!415746))))

(declare-fun e!940066 () Bool)

(declare-fun b!1471945 () Bool)

(declare-fun l2!3105 () List!15516)

(declare-fun tp!415741 () Bool)

(declare-fun e!940052 () Bool)

(declare-fun inv!21 (TokenValue!2837) Bool)

(assert (=> b!1471945 (= e!940066 (and (inv!21 (value!87937 (h!20851 l2!3105))) e!940052 tp!415741))))

(declare-fun b!1471946 () Bool)

(declare-fun tp!415740 () Bool)

(declare-fun e!940062 () Bool)

(assert (=> b!1471946 (= e!940062 (and (inv!21 (value!87937 (h!20851 l1!3136))) e!940055 tp!415740))))

(declare-fun b!1471947 () Bool)

(declare-fun res!665332 () Bool)

(declare-fun e!940053 () Bool)

(assert (=> b!1471947 (=> (not res!665332) (not e!940053))))

(declare-fun isEmpty!9648 (List!15516) Bool)

(assert (=> b!1471947 (= res!665332 (not (isEmpty!9648 l2!3105)))))

(declare-fun res!665336 () Bool)

(assert (=> start!137886 (=> (not res!665336) (not e!940053))))

(declare-datatypes ((LexerInterface!2403 0))(
  ( (LexerInterfaceExt!2400 (__x!9465 Int)) (Lexer!2401) )
))
(declare-fun thiss!27374 () LexerInterface!2403)

(get-info :version)

(assert (=> start!137886 (= res!665336 ((_ is Lexer!2401) thiss!27374))))

(assert (=> start!137886 e!940053))

(assert (=> start!137886 true))

(declare-fun e!940067 () Bool)

(assert (=> start!137886 e!940067))

(declare-fun e!940059 () Bool)

(assert (=> start!137886 e!940059))

(declare-fun e!940065 () Bool)

(assert (=> start!137886 e!940065))

(declare-fun b!1471948 () Bool)

(declare-fun res!665337 () Bool)

(assert (=> b!1471948 (=> (not res!665337) (not e!940053))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!263 (LexerInterface!2403 List!15516 List!15515) Bool)

(assert (=> b!1471948 (= res!665337 (tokensListTwoByTwoPredicateSeparableList!263 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!940054 () Bool)

(declare-fun b!1471949 () Bool)

(declare-fun tp!415735 () Bool)

(assert (=> b!1471949 (= e!940052 (and tp!415735 (inv!20654 (tag!3011 (rule!4524 (h!20851 l2!3105)))) (inv!20657 (transformation!2747 (rule!4524 (h!20851 l2!3105)))) e!940054))))

(declare-fun b!1471950 () Bool)

(declare-fun tp!415744 () Bool)

(assert (=> b!1471950 (= e!940067 (and e!940057 tp!415744))))

(declare-fun b!1471951 () Bool)

(declare-fun res!665333 () Bool)

(assert (=> b!1471951 (=> (not res!665333) (not e!940053))))

(assert (=> b!1471951 (= res!665333 (not (isEmpty!9648 l1!3136)))))

(declare-fun b!1471952 () Bool)

(declare-fun res!665335 () Bool)

(assert (=> b!1471952 (=> (not res!665335) (not e!940053))))

(declare-fun rulesProduceEachTokenIndividuallyList!770 (LexerInterface!2403 List!15515 List!15516) Bool)

(assert (=> b!1471952 (= res!665335 (rulesProduceEachTokenIndividuallyList!770 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1471953 () Bool)

(declare-fun res!665329 () Bool)

(assert (=> b!1471953 (=> (not res!665329) (not e!940053))))

(declare-fun isEmpty!9649 (List!15515) Bool)

(assert (=> b!1471953 (= res!665329 (not (isEmpty!9649 rules!4290)))))

(declare-fun b!1471954 () Bool)

(declare-fun res!665334 () Bool)

(assert (=> b!1471954 (=> (not res!665334) (not e!940053))))

(declare-fun rulesInvariant!2192 (LexerInterface!2403 List!15515) Bool)

(assert (=> b!1471954 (= res!665334 (rulesInvariant!2192 thiss!27374 rules!4290))))

(assert (=> b!1471955 (= e!940054 (and tp!415748 tp!415743))))

(declare-fun b!1471956 () Bool)

(assert (=> b!1471956 (= e!940053 (not true))))

(declare-fun lt!511584 () Bool)

(declare-fun contains!2923 (List!15516 Token!5156) Bool)

(declare-fun head!3041 (List!15516) Token!5156)

(assert (=> b!1471956 (= lt!511584 (contains!2923 l2!3105 (head!3041 l2!3105)))))

(declare-fun lt!511585 () Token!5156)

(declare-fun rulesProduceIndividualToken!1262 (LexerInterface!2403 List!15515 Token!5156) Bool)

(assert (=> b!1471956 (rulesProduceIndividualToken!1262 thiss!27374 rules!4290 lt!511585)))

(declare-datatypes ((Unit!25143 0))(
  ( (Unit!25144) )
))
(declare-fun lt!511583 () Unit!25143)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!443 (LexerInterface!2403 List!15515 List!15516 Token!5156) Unit!25143)

(assert (=> b!1471956 (= lt!511583 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!443 thiss!27374 rules!4290 l1!3136 lt!511585))))

(declare-fun last!305 (List!15516) Token!5156)

(assert (=> b!1471956 (= lt!511585 (last!305 l1!3136))))

(assert (=> b!1471957 (= e!940068 (and tp!415747 tp!415736))))

(declare-fun tp!415738 () Bool)

(declare-fun b!1471958 () Bool)

(declare-fun inv!20658 (Token!5156) Bool)

(assert (=> b!1471958 (= e!940059 (and (inv!20658 (h!20851 l1!3136)) e!940062 tp!415738))))

(declare-fun b!1471959 () Bool)

(declare-fun tp!415742 () Bool)

(assert (=> b!1471959 (= e!940065 (and (inv!20658 (h!20851 l2!3105)) e!940066 tp!415742))))

(declare-fun b!1471960 () Bool)

(declare-fun res!665330 () Bool)

(assert (=> b!1471960 (=> (not res!665330) (not e!940053))))

(assert (=> b!1471960 (= res!665330 (tokensListTwoByTwoPredicateSeparableList!263 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1471961 () Bool)

(declare-fun res!665331 () Bool)

(assert (=> b!1471961 (=> (not res!665331) (not e!940053))))

(assert (=> b!1471961 (= res!665331 (rulesProduceEachTokenIndividuallyList!770 thiss!27374 rules!4290 l1!3136))))

(assert (= (and start!137886 res!665336) b!1471953))

(assert (= (and b!1471953 res!665329) b!1471954))

(assert (= (and b!1471954 res!665334) b!1471961))

(assert (= (and b!1471961 res!665331) b!1471952))

(assert (= (and b!1471952 res!665335) b!1471948))

(assert (= (and b!1471948 res!665337) b!1471960))

(assert (= (and b!1471960 res!665330) b!1471951))

(assert (= (and b!1471951 res!665333) b!1471947))

(assert (= (and b!1471947 res!665332) b!1471956))

(assert (= b!1471942 b!1471957))

(assert (= b!1471950 b!1471942))

(assert (= (and start!137886 ((_ is Cons!15449) rules!4290)) b!1471950))

(assert (= b!1471943 b!1471944))

(assert (= b!1471946 b!1471943))

(assert (= b!1471958 b!1471946))

(assert (= (and start!137886 ((_ is Cons!15450) l1!3136)) b!1471958))

(assert (= b!1471949 b!1471955))

(assert (= b!1471945 b!1471949))

(assert (= b!1471959 b!1471945))

(assert (= (and start!137886 ((_ is Cons!15450) l2!3105)) b!1471959))

(declare-fun m!1716003 () Bool)

(assert (=> b!1471959 m!1716003))

(declare-fun m!1716005 () Bool)

(assert (=> b!1471953 m!1716005))

(declare-fun m!1716007 () Bool)

(assert (=> b!1471949 m!1716007))

(declare-fun m!1716009 () Bool)

(assert (=> b!1471949 m!1716009))

(declare-fun m!1716011 () Bool)

(assert (=> b!1471961 m!1716011))

(declare-fun m!1716013 () Bool)

(assert (=> b!1471960 m!1716013))

(declare-fun m!1716015 () Bool)

(assert (=> b!1471951 m!1716015))

(declare-fun m!1716017 () Bool)

(assert (=> b!1471948 m!1716017))

(declare-fun m!1716019 () Bool)

(assert (=> b!1471945 m!1716019))

(declare-fun m!1716021 () Bool)

(assert (=> b!1471958 m!1716021))

(declare-fun m!1716023 () Bool)

(assert (=> b!1471946 m!1716023))

(declare-fun m!1716025 () Bool)

(assert (=> b!1471943 m!1716025))

(declare-fun m!1716027 () Bool)

(assert (=> b!1471943 m!1716027))

(declare-fun m!1716029 () Bool)

(assert (=> b!1471942 m!1716029))

(declare-fun m!1716031 () Bool)

(assert (=> b!1471942 m!1716031))

(declare-fun m!1716033 () Bool)

(assert (=> b!1471956 m!1716033))

(declare-fun m!1716035 () Bool)

(assert (=> b!1471956 m!1716035))

(declare-fun m!1716037 () Bool)

(assert (=> b!1471956 m!1716037))

(declare-fun m!1716039 () Bool)

(assert (=> b!1471956 m!1716039))

(assert (=> b!1471956 m!1716035))

(declare-fun m!1716041 () Bool)

(assert (=> b!1471956 m!1716041))

(declare-fun m!1716043 () Bool)

(assert (=> b!1471954 m!1716043))

(declare-fun m!1716045 () Bool)

(assert (=> b!1471947 m!1716045))

(declare-fun m!1716047 () Bool)

(assert (=> b!1471952 m!1716047))

(check-sat (not b!1471950) (not b_next!37999) (not b!1471942) b_and!101083 (not b!1471959) b_and!101087 (not b!1471946) (not b_next!37993) b_and!101091 (not b_next!38001) (not b!1471945) b_and!101085 (not b!1471953) (not b!1471949) (not b!1471956) (not b!1471958) (not b!1471943) (not b!1471960) (not b_next!37997) (not b!1471952) (not b!1471961) (not b!1471947) (not b!1471951) (not b!1471948) b_and!101089 (not b!1471954) b_and!101081 (not b_next!37991) (not b_next!37995))
(check-sat (not b_next!37999) b_and!101083 b_and!101087 (not b_next!37997) (not b_next!37993) b_and!101091 (not b_next!38001) b_and!101089 b_and!101085 b_and!101081 (not b_next!37991) (not b_next!37995))
