; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405414 () Bool)

(assert start!405414)

(declare-fun b!4236806 () Bool)

(declare-fun b_free!125239 () Bool)

(declare-fun b_next!125943 () Bool)

(assert (=> b!4236806 (= b_free!125239 (not b_next!125943))))

(declare-fun tp!1297859 () Bool)

(declare-fun b_and!334709 () Bool)

(assert (=> b!4236806 (= tp!1297859 b_and!334709)))

(declare-fun b_free!125241 () Bool)

(declare-fun b_next!125945 () Bool)

(assert (=> b!4236806 (= b_free!125241 (not b_next!125945))))

(declare-fun tp!1297848 () Bool)

(declare-fun b_and!334711 () Bool)

(assert (=> b!4236806 (= tp!1297848 b_and!334711)))

(declare-fun b!4236826 () Bool)

(declare-fun b_free!125243 () Bool)

(declare-fun b_next!125947 () Bool)

(assert (=> b!4236826 (= b_free!125243 (not b_next!125947))))

(declare-fun tp!1297858 () Bool)

(declare-fun b_and!334713 () Bool)

(assert (=> b!4236826 (= tp!1297858 b_and!334713)))

(declare-fun b_free!125245 () Bool)

(declare-fun b_next!125949 () Bool)

(assert (=> b!4236826 (= b_free!125245 (not b_next!125949))))

(declare-fun tp!1297861 () Bool)

(declare-fun b_and!334715 () Bool)

(assert (=> b!4236826 (= tp!1297861 b_and!334715)))

(declare-fun b!4236814 () Bool)

(declare-fun b_free!125247 () Bool)

(declare-fun b_next!125951 () Bool)

(assert (=> b!4236814 (= b_free!125247 (not b_next!125951))))

(declare-fun tp!1297847 () Bool)

(declare-fun b_and!334717 () Bool)

(assert (=> b!4236814 (= tp!1297847 b_and!334717)))

(declare-fun b_free!125249 () Bool)

(declare-fun b_next!125953 () Bool)

(assert (=> b!4236814 (= b_free!125249 (not b_next!125953))))

(declare-fun tp!1297860 () Bool)

(declare-fun b_and!334719 () Bool)

(assert (=> b!4236814 (= tp!1297860 b_and!334719)))

(declare-fun b!4236802 () Bool)

(declare-fun res!1742460 () Bool)

(declare-fun e!2630909 () Bool)

(assert (=> b!4236802 (=> (not res!1742460) (not e!2630909))))

(declare-datatypes ((List!46952 0))(
  ( (Nil!46828) (Cons!46828 (h!52248 (_ BitVec 16)) (t!349895 List!46952)) )
))
(declare-datatypes ((TokenValue!8144 0))(
  ( (FloatLiteralValue!16288 (text!57453 List!46952)) (TokenValueExt!8143 (__x!28511 Int)) (Broken!40720 (value!246059 List!46952)) (Object!8267) (End!8144) (Def!8144) (Underscore!8144) (Match!8144) (Else!8144) (Error!8144) (Case!8144) (If!8144) (Extends!8144) (Abstract!8144) (Class!8144) (Val!8144) (DelimiterValue!16288 (del!8204 List!46952)) (KeywordValue!8150 (value!246060 List!46952)) (CommentValue!16288 (value!246061 List!46952)) (WhitespaceValue!16288 (value!246062 List!46952)) (IndentationValue!8144 (value!246063 List!46952)) (String!54649) (Int32!8144) (Broken!40721 (value!246064 List!46952)) (Boolean!8145) (Unit!65938) (OperatorValue!8147 (op!8204 List!46952)) (IdentifierValue!16288 (value!246065 List!46952)) (IdentifierValue!16289 (value!246066 List!46952)) (WhitespaceValue!16289 (value!246067 List!46952)) (True!16288) (False!16288) (Broken!40722 (value!246068 List!46952)) (Broken!40723 (value!246069 List!46952)) (True!16289) (RightBrace!8144) (RightBracket!8144) (Colon!8144) (Null!8144) (Comma!8144) (LeftBracket!8144) (False!16289) (LeftBrace!8144) (ImaginaryLiteralValue!8144 (text!57454 List!46952)) (StringLiteralValue!24432 (value!246070 List!46952)) (EOFValue!8144 (value!246071 List!46952)) (IdentValue!8144 (value!246072 List!46952)) (DelimiterValue!16289 (value!246073 List!46952)) (DedentValue!8144 (value!246074 List!46952)) (NewLineValue!8144 (value!246075 List!46952)) (IntegerValue!24432 (value!246076 (_ BitVec 32)) (text!57455 List!46952)) (IntegerValue!24433 (value!246077 Int) (text!57456 List!46952)) (Times!8144) (Or!8144) (Equal!8144) (Minus!8144) (Broken!40724 (value!246078 List!46952)) (And!8144) (Div!8144) (LessEqual!8144) (Mod!8144) (Concat!20963) (Not!8144) (Plus!8144) (SpaceValue!8144 (value!246079 List!46952)) (IntegerValue!24434 (value!246080 Int) (text!57457 List!46952)) (StringLiteralValue!24433 (text!57458 List!46952)) (FloatLiteralValue!16289 (text!57459 List!46952)) (BytesLiteralValue!8144 (value!246081 List!46952)) (CommentValue!16289 (value!246082 List!46952)) (StringLiteralValue!24434 (value!246083 List!46952)) (ErrorTokenValue!8144 (msg!8205 List!46952)) )
))
(declare-datatypes ((C!25836 0))(
  ( (C!25837 (val!15108 Int)) )
))
(declare-datatypes ((Regex!12819 0))(
  ( (ElementMatch!12819 (c!720044 C!25836)) (Concat!20964 (regOne!26150 Regex!12819) (regTwo!26150 Regex!12819)) (EmptyExpr!12819) (Star!12819 (reg!13148 Regex!12819)) (EmptyLang!12819) (Union!12819 (regOne!26151 Regex!12819) (regTwo!26151 Regex!12819)) )
))
(declare-datatypes ((String!54650 0))(
  ( (String!54651 (value!246084 String)) )
))
(declare-datatypes ((List!46953 0))(
  ( (Nil!46829) (Cons!46829 (h!52249 C!25836) (t!349896 List!46953)) )
))
(declare-datatypes ((IArray!28255 0))(
  ( (IArray!28256 (innerList!14185 List!46953)) )
))
(declare-datatypes ((Conc!14125 0))(
  ( (Node!14125 (left!34816 Conc!14125) (right!35146 Conc!14125) (csize!28480 Int) (cheight!14336 Int)) (Leaf!21841 (xs!17431 IArray!28255) (csize!28481 Int)) (Empty!14125) )
))
(declare-datatypes ((BalanceConc!27844 0))(
  ( (BalanceConc!27845 (c!720045 Conc!14125)) )
))
(declare-datatypes ((TokenValueInjection!15716 0))(
  ( (TokenValueInjection!15717 (toValue!10658 Int) (toChars!10517 Int)) )
))
(declare-datatypes ((Rule!15628 0))(
  ( (Rule!15629 (regex!7914 Regex!12819) (tag!8778 String!54650) (isSeparator!7914 Bool) (transformation!7914 TokenValueInjection!15716)) )
))
(declare-datatypes ((Token!14454 0))(
  ( (Token!14455 (value!246085 TokenValue!8144) (rule!11038 Rule!15628) (size!34305 Int) (originalCharacters!8258 List!46953)) )
))
(declare-datatypes ((List!46954 0))(
  ( (Nil!46830) (Cons!46830 (h!52250 Token!14454) (t!349897 List!46954)) )
))
(declare-fun addTokens!17 () List!46954)

(declare-fun isEmpty!27673 (List!46954) Bool)

(assert (=> b!4236802 (= res!1742460 (not (isEmpty!27673 addTokens!17)))))

(declare-fun res!1742456 () Bool)

(assert (=> start!405414 (=> (not res!1742456) (not e!2630909))))

(declare-datatypes ((LexerInterface!7509 0))(
  ( (LexerInterfaceExt!7506 (__x!28512 Int)) (Lexer!7507) )
))
(declare-fun thiss!21540 () LexerInterface!7509)

(get-info :version)

(assert (=> start!405414 (= res!1742456 ((_ is Lexer!7507) thiss!21540))))

(assert (=> start!405414 e!2630909))

(assert (=> start!405414 true))

(declare-fun e!2630916 () Bool)

(assert (=> start!405414 e!2630916))

(declare-fun e!2630911 () Bool)

(assert (=> start!405414 e!2630911))

(declare-fun e!2630903 () Bool)

(assert (=> start!405414 e!2630903))

(declare-fun e!2630912 () Bool)

(assert (=> start!405414 e!2630912))

(declare-fun e!2630920 () Bool)

(assert (=> start!405414 e!2630920))

(declare-fun e!2630908 () Bool)

(assert (=> start!405414 e!2630908))

(declare-fun b!4236803 () Bool)

(declare-fun res!1742462 () Bool)

(assert (=> b!4236803 (=> (not res!1742462) (not e!2630909))))

(declare-fun longerInput!51 () List!46953)

(declare-fun isEmpty!27674 (List!46953) Bool)

(assert (=> b!4236803 (= res!1742462 (not (isEmpty!27674 longerInput!51)))))

(declare-fun tp!1297854 () Bool)

(declare-fun e!2630915 () Bool)

(declare-fun b!4236804 () Bool)

(declare-fun inv!61558 (Token!14454) Bool)

(assert (=> b!4236804 (= e!2630911 (and (inv!61558 (h!52250 addTokens!17)) e!2630915 tp!1297854))))

(declare-fun b!4236805 () Bool)

(declare-fun res!1742457 () Bool)

(assert (=> b!4236805 (=> (not res!1742457) (not e!2630909))))

(declare-datatypes ((List!46955 0))(
  ( (Nil!46831) (Cons!46831 (h!52251 Rule!15628) (t!349898 List!46955)) )
))
(declare-fun rules!2932 () List!46955)

(declare-fun suffix!1262 () List!46953)

(declare-fun tokens!581 () List!46954)

(declare-datatypes ((tuple2!44406 0))(
  ( (tuple2!44407 (_1!25337 List!46954) (_2!25337 List!46953)) )
))
(declare-fun lexList!2015 (LexerInterface!7509 List!46955 List!46953) tuple2!44406)

(assert (=> b!4236805 (= res!1742457 (= (lexList!2015 thiss!21540 rules!2932 longerInput!51) (tuple2!44407 tokens!581 suffix!1262)))))

(declare-fun e!2630901 () Bool)

(assert (=> b!4236806 (= e!2630901 (and tp!1297859 tp!1297848))))

(declare-fun b!4236807 () Bool)

(declare-fun res!1742464 () Bool)

(declare-fun e!2630919 () Bool)

(assert (=> b!4236807 (=> (not res!1742464) (not e!2630919))))

(declare-datatypes ((tuple2!44408 0))(
  ( (tuple2!44409 (_1!25338 Token!14454) (_2!25338 List!46953)) )
))
(declare-datatypes ((Option!10050 0))(
  ( (None!10049) (Some!10049 (v!40997 tuple2!44408)) )
))
(declare-fun lt!1505929 () Option!10050)

(declare-fun shorterInput!51 () List!46953)

(declare-fun ++!11925 (List!46953 List!46953) List!46953)

(declare-fun list!16887 (BalanceConc!27844) List!46953)

(declare-fun charsOf!5270 (Token!14454) BalanceConc!27844)

(assert (=> b!4236807 (= res!1742464 (= (++!11925 (list!16887 (charsOf!5270 (_1!25338 (v!40997 lt!1505929)))) (_2!25338 (v!40997 lt!1505929))) shorterInput!51))))

(declare-fun b!4236808 () Bool)

(declare-fun tp_is_empty!22629 () Bool)

(declare-fun tp!1297857 () Bool)

(assert (=> b!4236808 (= e!2630903 (and tp_is_empty!22629 tp!1297857))))

(declare-fun e!2630902 () Bool)

(declare-fun b!4236809 () Bool)

(declare-fun tp!1297851 () Bool)

(declare-fun e!2630900 () Bool)

(declare-fun inv!61555 (String!54650) Bool)

(declare-fun inv!61559 (TokenValueInjection!15716) Bool)

(assert (=> b!4236809 (= e!2630900 (and tp!1297851 (inv!61555 (tag!8778 (rule!11038 (h!52250 addTokens!17)))) (inv!61559 (transformation!7914 (rule!11038 (h!52250 addTokens!17)))) e!2630902))))

(declare-fun b!4236810 () Bool)

(declare-fun res!1742455 () Bool)

(assert (=> b!4236810 (=> (not res!1742455) (not e!2630909))))

(declare-fun rulesInvariant!6620 (LexerInterface!7509 List!46955) Bool)

(assert (=> b!4236810 (= res!1742455 (rulesInvariant!6620 thiss!21540 rules!2932))))

(declare-fun b!4236811 () Bool)

(declare-fun res!1742461 () Bool)

(assert (=> b!4236811 (=> (not res!1742461) (not e!2630919))))

(declare-fun lt!1505930 () Option!10050)

(assert (=> b!4236811 (= res!1742461 (= (++!11925 (list!16887 (charsOf!5270 (_1!25338 (v!40997 lt!1505930)))) (_2!25338 (v!40997 lt!1505930))) longerInput!51))))

(declare-fun b!4236812 () Bool)

(declare-fun res!1742458 () Bool)

(assert (=> b!4236812 (=> (not res!1742458) (not e!2630909))))

(declare-fun size!34306 (List!46953) Int)

(assert (=> b!4236812 (= res!1742458 (> (size!34306 longerInput!51) (size!34306 shorterInput!51)))))

(declare-fun tp!1297850 () Bool)

(declare-fun b!4236813 () Bool)

(declare-fun e!2630905 () Bool)

(declare-fun e!2630910 () Bool)

(declare-fun inv!21 (TokenValue!8144) Bool)

(assert (=> b!4236813 (= e!2630905 (and (inv!21 (value!246085 (h!52250 tokens!581))) e!2630910 tp!1297850))))

(declare-fun e!2630917 () Bool)

(assert (=> b!4236814 (= e!2630917 (and tp!1297847 tp!1297860))))

(declare-fun b!4236815 () Bool)

(declare-fun e!2630907 () Bool)

(declare-fun tp!1297856 () Bool)

(assert (=> b!4236815 (= e!2630916 (and e!2630907 tp!1297856))))

(declare-fun tp!1297846 () Bool)

(declare-fun b!4236816 () Bool)

(assert (=> b!4236816 (= e!2630907 (and tp!1297846 (inv!61555 (tag!8778 (h!52251 rules!2932))) (inv!61559 (transformation!7914 (h!52251 rules!2932))) e!2630901))))

(declare-fun tp!1297855 () Bool)

(declare-fun b!4236817 () Bool)

(assert (=> b!4236817 (= e!2630920 (and (inv!61558 (h!52250 tokens!581)) e!2630905 tp!1297855))))

(declare-fun b!4236818 () Bool)

(declare-fun tp!1297853 () Bool)

(assert (=> b!4236818 (= e!2630912 (and tp_is_empty!22629 tp!1297853))))

(declare-fun b!4236819 () Bool)

(assert (=> b!4236819 (= e!2630919 false)))

(declare-fun lt!1505928 () Int)

(assert (=> b!4236819 (= lt!1505928 (size!34306 (_2!25338 (v!40997 lt!1505929))))))

(declare-fun b!4236820 () Bool)

(declare-fun tp!1297852 () Bool)

(assert (=> b!4236820 (= e!2630908 (and tp_is_empty!22629 tp!1297852))))

(declare-fun tp!1297862 () Bool)

(declare-fun b!4236821 () Bool)

(assert (=> b!4236821 (= e!2630915 (and (inv!21 (value!246085 (h!52250 addTokens!17))) e!2630900 tp!1297862))))

(declare-fun b!4236822 () Bool)

(assert (=> b!4236822 (= e!2630909 e!2630919)))

(declare-fun res!1742465 () Bool)

(assert (=> b!4236822 (=> (not res!1742465) (not e!2630919))))

(assert (=> b!4236822 (= res!1742465 (and ((_ is Some!10049) lt!1505930) ((_ is Some!10049) lt!1505929)))))

(declare-fun maxPrefix!4467 (LexerInterface!7509 List!46955 List!46953) Option!10050)

(assert (=> b!4236822 (= lt!1505929 (maxPrefix!4467 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4236822 (= lt!1505930 (maxPrefix!4467 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4236823 () Bool)

(declare-fun res!1742463 () Bool)

(assert (=> b!4236823 (=> (not res!1742463) (not e!2630909))))

(declare-fun isEmpty!27675 (List!46955) Bool)

(assert (=> b!4236823 (= res!1742463 (not (isEmpty!27675 rules!2932)))))

(declare-fun tp!1297849 () Bool)

(declare-fun b!4236824 () Bool)

(assert (=> b!4236824 (= e!2630910 (and tp!1297849 (inv!61555 (tag!8778 (rule!11038 (h!52250 tokens!581)))) (inv!61559 (transformation!7914 (rule!11038 (h!52250 tokens!581)))) e!2630917))))

(declare-fun b!4236825 () Bool)

(declare-fun res!1742459 () Bool)

(assert (=> b!4236825 (=> (not res!1742459) (not e!2630909))))

(declare-fun size!34307 (List!46954) Int)

(assert (=> b!4236825 (= res!1742459 (> (size!34307 addTokens!17) 0))))

(assert (=> b!4236826 (= e!2630902 (and tp!1297858 tp!1297861))))

(assert (= (and start!405414 res!1742456) b!4236823))

(assert (= (and b!4236823 res!1742463) b!4236810))

(assert (= (and b!4236810 res!1742455) b!4236803))

(assert (= (and b!4236803 res!1742462) b!4236812))

(assert (= (and b!4236812 res!1742458) b!4236805))

(assert (= (and b!4236805 res!1742457) b!4236802))

(assert (= (and b!4236802 res!1742460) b!4236825))

(assert (= (and b!4236825 res!1742459) b!4236822))

(assert (= (and b!4236822 res!1742465) b!4236811))

(assert (= (and b!4236811 res!1742461) b!4236807))

(assert (= (and b!4236807 res!1742464) b!4236819))

(assert (= b!4236816 b!4236806))

(assert (= b!4236815 b!4236816))

(assert (= (and start!405414 ((_ is Cons!46831) rules!2932)) b!4236815))

(assert (= b!4236809 b!4236826))

(assert (= b!4236821 b!4236809))

(assert (= b!4236804 b!4236821))

(assert (= (and start!405414 ((_ is Cons!46830) addTokens!17)) b!4236804))

(assert (= (and start!405414 ((_ is Cons!46829) shorterInput!51)) b!4236808))

(assert (= (and start!405414 ((_ is Cons!46829) suffix!1262)) b!4236818))

(assert (= b!4236824 b!4236814))

(assert (= b!4236813 b!4236824))

(assert (= b!4236817 b!4236813))

(assert (= (and start!405414 ((_ is Cons!46830) tokens!581)) b!4236817))

(assert (= (and start!405414 ((_ is Cons!46829) longerInput!51)) b!4236820))

(declare-fun m!4822333 () Bool)

(assert (=> b!4236809 m!4822333))

(declare-fun m!4822335 () Bool)

(assert (=> b!4236809 m!4822335))

(declare-fun m!4822337 () Bool)

(assert (=> b!4236813 m!4822337))

(declare-fun m!4822339 () Bool)

(assert (=> b!4236824 m!4822339))

(declare-fun m!4822341 () Bool)

(assert (=> b!4236824 m!4822341))

(declare-fun m!4822343 () Bool)

(assert (=> b!4236823 m!4822343))

(declare-fun m!4822345 () Bool)

(assert (=> b!4236821 m!4822345))

(declare-fun m!4822347 () Bool)

(assert (=> b!4236803 m!4822347))

(declare-fun m!4822349 () Bool)

(assert (=> b!4236802 m!4822349))

(declare-fun m!4822351 () Bool)

(assert (=> b!4236812 m!4822351))

(declare-fun m!4822353 () Bool)

(assert (=> b!4236812 m!4822353))

(declare-fun m!4822355 () Bool)

(assert (=> b!4236825 m!4822355))

(declare-fun m!4822357 () Bool)

(assert (=> b!4236807 m!4822357))

(assert (=> b!4236807 m!4822357))

(declare-fun m!4822359 () Bool)

(assert (=> b!4236807 m!4822359))

(assert (=> b!4236807 m!4822359))

(declare-fun m!4822361 () Bool)

(assert (=> b!4236807 m!4822361))

(declare-fun m!4822363 () Bool)

(assert (=> b!4236804 m!4822363))

(declare-fun m!4822365 () Bool)

(assert (=> b!4236816 m!4822365))

(declare-fun m!4822367 () Bool)

(assert (=> b!4236816 m!4822367))

(declare-fun m!4822369 () Bool)

(assert (=> b!4236817 m!4822369))

(declare-fun m!4822371 () Bool)

(assert (=> b!4236805 m!4822371))

(declare-fun m!4822373 () Bool)

(assert (=> b!4236822 m!4822373))

(declare-fun m!4822375 () Bool)

(assert (=> b!4236822 m!4822375))

(declare-fun m!4822377 () Bool)

(assert (=> b!4236819 m!4822377))

(declare-fun m!4822379 () Bool)

(assert (=> b!4236810 m!4822379))

(declare-fun m!4822381 () Bool)

(assert (=> b!4236811 m!4822381))

(assert (=> b!4236811 m!4822381))

(declare-fun m!4822383 () Bool)

(assert (=> b!4236811 m!4822383))

(assert (=> b!4236811 m!4822383))

(declare-fun m!4822385 () Bool)

(assert (=> b!4236811 m!4822385))

(check-sat (not b!4236812) (not b!4236820) (not b!4236818) (not b!4236807) b_and!334717 (not b!4236802) (not b!4236803) (not b!4236809) (not b!4236821) (not b_next!125947) (not b_next!125945) (not b!4236825) (not b!4236817) (not b!4236815) (not b_next!125949) (not b!4236813) b_and!334711 b_and!334719 (not b!4236804) (not b!4236811) (not b_next!125943) (not b_next!125951) b_and!334713 tp_is_empty!22629 b_and!334709 (not b!4236819) (not b_next!125953) (not b!4236824) (not b!4236822) (not b!4236808) (not b!4236810) (not b!4236816) (not b!4236823) (not b!4236805) b_and!334715)
(check-sat (not b_next!125949) (not b_next!125943) b_and!334717 (not b_next!125947) b_and!334715 (not b_next!125945) b_and!334711 b_and!334719 (not b_next!125951) b_and!334713 b_and!334709 (not b_next!125953))
