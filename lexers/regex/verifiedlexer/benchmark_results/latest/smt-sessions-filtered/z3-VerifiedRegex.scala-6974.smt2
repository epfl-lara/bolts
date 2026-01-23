; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369944 () Bool)

(assert start!369944)

(declare-fun b!3939952 () Bool)

(declare-fun b_free!107693 () Bool)

(declare-fun b_next!108397 () Bool)

(assert (=> b!3939952 (= b_free!107693 (not b_next!108397))))

(declare-fun tp!1198796 () Bool)

(declare-fun b_and!300959 () Bool)

(assert (=> b!3939952 (= tp!1198796 b_and!300959)))

(declare-fun b_free!107695 () Bool)

(declare-fun b_next!108399 () Bool)

(assert (=> b!3939952 (= b_free!107695 (not b_next!108399))))

(declare-fun tp!1198792 () Bool)

(declare-fun b_and!300961 () Bool)

(assert (=> b!3939952 (= tp!1198792 b_and!300961)))

(declare-fun b!3939948 () Bool)

(declare-fun b_free!107697 () Bool)

(declare-fun b_next!108401 () Bool)

(assert (=> b!3939948 (= b_free!107697 (not b_next!108401))))

(declare-fun tp!1198795 () Bool)

(declare-fun b_and!300963 () Bool)

(assert (=> b!3939948 (= tp!1198795 b_and!300963)))

(declare-fun b_free!107699 () Bool)

(declare-fun b_next!108403 () Bool)

(assert (=> b!3939948 (= b_free!107699 (not b_next!108403))))

(declare-fun tp!1198791 () Bool)

(declare-fun b_and!300965 () Bool)

(assert (=> b!3939948 (= tp!1198791 b_and!300965)))

(declare-fun b!3939942 () Bool)

(declare-fun b_free!107701 () Bool)

(declare-fun b_next!108405 () Bool)

(assert (=> b!3939942 (= b_free!107701 (not b_next!108405))))

(declare-fun tp!1198801 () Bool)

(declare-fun b_and!300967 () Bool)

(assert (=> b!3939942 (= tp!1198801 b_and!300967)))

(declare-fun b_free!107703 () Bool)

(declare-fun b_next!108407 () Bool)

(assert (=> b!3939942 (= b_free!107703 (not b_next!108407))))

(declare-fun tp!1198786 () Bool)

(declare-fun b_and!300969 () Bool)

(assert (=> b!3939942 (= tp!1198786 b_and!300969)))

(declare-fun b!3939941 () Bool)

(declare-fun res!1594564 () Bool)

(declare-fun e!2437737 () Bool)

(assert (=> b!3939941 (=> (not res!1594564) (not e!2437737))))

(declare-datatypes ((List!41953 0))(
  ( (Nil!41829) (Cons!41829 (h!47249 (_ BitVec 16)) (t!326724 List!41953)) )
))
(declare-datatypes ((TokenValue!6766 0))(
  ( (FloatLiteralValue!13532 (text!47807 List!41953)) (TokenValueExt!6765 (__x!25749 Int)) (Broken!33830 (value!206884 List!41953)) (Object!6889) (End!6766) (Def!6766) (Underscore!6766) (Match!6766) (Else!6766) (Error!6766) (Case!6766) (If!6766) (Extends!6766) (Abstract!6766) (Class!6766) (Val!6766) (DelimiterValue!13532 (del!6826 List!41953)) (KeywordValue!6772 (value!206885 List!41953)) (CommentValue!13532 (value!206886 List!41953)) (WhitespaceValue!13532 (value!206887 List!41953)) (IndentationValue!6766 (value!206888 List!41953)) (String!47547) (Int32!6766) (Broken!33831 (value!206889 List!41953)) (Boolean!6767) (Unit!60391) (OperatorValue!6769 (op!6826 List!41953)) (IdentifierValue!13532 (value!206890 List!41953)) (IdentifierValue!13533 (value!206891 List!41953)) (WhitespaceValue!13533 (value!206892 List!41953)) (True!13532) (False!13532) (Broken!33832 (value!206893 List!41953)) (Broken!33833 (value!206894 List!41953)) (True!13533) (RightBrace!6766) (RightBracket!6766) (Colon!6766) (Null!6766) (Comma!6766) (LeftBracket!6766) (False!13533) (LeftBrace!6766) (ImaginaryLiteralValue!6766 (text!47808 List!41953)) (StringLiteralValue!20298 (value!206895 List!41953)) (EOFValue!6766 (value!206896 List!41953)) (IdentValue!6766 (value!206897 List!41953)) (DelimiterValue!13533 (value!206898 List!41953)) (DedentValue!6766 (value!206899 List!41953)) (NewLineValue!6766 (value!206900 List!41953)) (IntegerValue!20298 (value!206901 (_ BitVec 32)) (text!47809 List!41953)) (IntegerValue!20299 (value!206902 Int) (text!47810 List!41953)) (Times!6766) (Or!6766) (Equal!6766) (Minus!6766) (Broken!33834 (value!206903 List!41953)) (And!6766) (Div!6766) (LessEqual!6766) (Mod!6766) (Concat!18207) (Not!6766) (Plus!6766) (SpaceValue!6766 (value!206904 List!41953)) (IntegerValue!20300 (value!206905 Int) (text!47811 List!41953)) (StringLiteralValue!20299 (text!47812 List!41953)) (FloatLiteralValue!13533 (text!47813 List!41953)) (BytesLiteralValue!6766 (value!206906 List!41953)) (CommentValue!13533 (value!206907 List!41953)) (StringLiteralValue!20300 (value!206908 List!41953)) (ErrorTokenValue!6766 (msg!6827 List!41953)) )
))
(declare-datatypes ((C!23068 0))(
  ( (C!23069 (val!13628 Int)) )
))
(declare-datatypes ((Regex!11441 0))(
  ( (ElementMatch!11441 (c!684542 C!23068)) (Concat!18208 (regOne!23394 Regex!11441) (regTwo!23394 Regex!11441)) (EmptyExpr!11441) (Star!11441 (reg!11770 Regex!11441)) (EmptyLang!11441) (Union!11441 (regOne!23395 Regex!11441) (regTwo!23395 Regex!11441)) )
))
(declare-datatypes ((String!47548 0))(
  ( (String!47549 (value!206909 String)) )
))
(declare-datatypes ((List!41954 0))(
  ( (Nil!41830) (Cons!41830 (h!47250 C!23068) (t!326725 List!41954)) )
))
(declare-datatypes ((IArray!25499 0))(
  ( (IArray!25500 (innerList!12807 List!41954)) )
))
(declare-datatypes ((Conc!12747 0))(
  ( (Node!12747 (left!31873 Conc!12747) (right!32203 Conc!12747) (csize!25724 Int) (cheight!12958 Int)) (Leaf!19722 (xs!16053 IArray!25499) (csize!25725 Int)) (Empty!12747) )
))
(declare-datatypes ((BalanceConc!25088 0))(
  ( (BalanceConc!25089 (c!684543 Conc!12747)) )
))
(declare-datatypes ((TokenValueInjection!12960 0))(
  ( (TokenValueInjection!12961 (toValue!8996 Int) (toChars!8855 Int)) )
))
(declare-datatypes ((Rule!12872 0))(
  ( (Rule!12873 (regex!6536 Regex!11441) (tag!7396 String!47548) (isSeparator!6536 Bool) (transformation!6536 TokenValueInjection!12960)) )
))
(declare-datatypes ((Token!12210 0))(
  ( (Token!12211 (value!206910 TokenValue!6766) (rule!9494 Rule!12872) (size!31379 Int) (originalCharacters!7136 List!41954)) )
))
(declare-datatypes ((List!41955 0))(
  ( (Nil!41831) (Cons!41831 (h!47251 Token!12210) (t!326726 List!41955)) )
))
(declare-fun prefixTokens!80 () List!41955)

(declare-fun isEmpty!24952 (List!41955) Bool)

(assert (=> b!3939941 (= res!1594564 (not (isEmpty!24952 prefixTokens!80)))))

(declare-fun res!1594562 () Bool)

(assert (=> start!369944 (=> (not res!1594562) (not e!2437737))))

(declare-datatypes ((LexerInterface!6125 0))(
  ( (LexerInterfaceExt!6122 (__x!25750 Int)) (Lexer!6123) )
))
(declare-fun thiss!20629 () LexerInterface!6125)

(get-info :version)

(assert (=> start!369944 (= res!1594562 ((_ is Lexer!6123) thiss!20629))))

(assert (=> start!369944 e!2437737))

(declare-fun e!2437722 () Bool)

(assert (=> start!369944 e!2437722))

(assert (=> start!369944 true))

(declare-fun e!2437738 () Bool)

(assert (=> start!369944 e!2437738))

(declare-fun e!2437740 () Bool)

(assert (=> start!369944 e!2437740))

(declare-fun e!2437736 () Bool)

(assert (=> start!369944 e!2437736))

(declare-fun e!2437721 () Bool)

(assert (=> start!369944 e!2437721))

(declare-fun e!2437725 () Bool)

(assert (=> start!369944 e!2437725))

(declare-fun e!2437729 () Bool)

(assert (=> b!3939942 (= e!2437729 (and tp!1198801 tp!1198786))))

(declare-fun b!3939943 () Bool)

(declare-fun tp_is_empty!19853 () Bool)

(declare-fun tp!1198788 () Bool)

(assert (=> b!3939943 (= e!2437722 (and tp_is_empty!19853 tp!1198788))))

(declare-fun b!3939944 () Bool)

(declare-fun res!1594565 () Bool)

(declare-fun e!2437731 () Bool)

(assert (=> b!3939944 (=> (not res!1594565) (not e!2437731))))

(declare-fun lt!1378297 () List!41954)

(declare-datatypes ((List!41956 0))(
  ( (Nil!41832) (Cons!41832 (h!47252 Rule!12872) (t!326727 List!41956)) )
))
(declare-fun rules!2768 () List!41956)

(declare-datatypes ((tuple2!41118 0))(
  ( (tuple2!41119 (_1!23693 Token!12210) (_2!23693 List!41954)) )
))
(declare-datatypes ((Option!8956 0))(
  ( (None!8955) (Some!8955 (v!39285 tuple2!41118)) )
))
(declare-fun maxPrefix!3429 (LexerInterface!6125 List!41956 List!41954) Option!8956)

(assert (=> b!3939944 (= res!1594565 (not ((_ is Some!8955) (maxPrefix!3429 thiss!20629 rules!2768 lt!1378297))))))

(declare-fun e!2437720 () Bool)

(declare-fun e!2437733 () Bool)

(declare-fun b!3939945 () Bool)

(declare-fun tp!1198789 () Bool)

(declare-fun inv!56029 (String!47548) Bool)

(declare-fun inv!56032 (TokenValueInjection!12960) Bool)

(assert (=> b!3939945 (= e!2437720 (and tp!1198789 (inv!56029 (tag!7396 (rule!9494 (h!47251 prefixTokens!80)))) (inv!56032 (transformation!6536 (rule!9494 (h!47251 prefixTokens!80)))) e!2437733))))

(declare-fun b!3939946 () Bool)

(declare-fun res!1594563 () Bool)

(assert (=> b!3939946 (=> (not res!1594563) (not e!2437731))))

(declare-fun suffixResult!91 () List!41954)

(declare-fun suffix!1176 () List!41954)

(declare-fun suffixTokens!72 () List!41955)

(declare-datatypes ((tuple2!41120 0))(
  ( (tuple2!41121 (_1!23694 List!41955) (_2!23694 List!41954)) )
))
(declare-fun lexList!1893 (LexerInterface!6125 List!41956 List!41954) tuple2!41120)

(assert (=> b!3939946 (= res!1594563 (= (lexList!1893 thiss!20629 rules!2768 suffix!1176) (tuple2!41121 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3939947 () Bool)

(declare-fun res!1594559 () Bool)

(assert (=> b!3939947 (=> (not res!1594559) (not e!2437737))))

(declare-fun prefix!426 () List!41954)

(declare-fun isEmpty!24953 (List!41954) Bool)

(assert (=> b!3939947 (= res!1594559 (not (isEmpty!24953 prefix!426)))))

(assert (=> b!3939948 (= e!2437733 (and tp!1198795 tp!1198791))))

(declare-fun b!3939949 () Bool)

(declare-fun tp!1198790 () Bool)

(assert (=> b!3939949 (= e!2437725 (and tp_is_empty!19853 tp!1198790))))

(declare-fun tp!1198787 () Bool)

(declare-fun b!3939950 () Bool)

(declare-fun e!2437732 () Bool)

(declare-fun inv!56033 (Token!12210) Bool)

(assert (=> b!3939950 (= e!2437736 (and (inv!56033 (h!47251 prefixTokens!80)) e!2437732 tp!1198787))))

(declare-fun e!2437724 () Bool)

(declare-fun e!2437730 () Bool)

(declare-fun b!3939951 () Bool)

(declare-fun tp!1198798 () Bool)

(declare-fun inv!21 (TokenValue!6766) Bool)

(assert (=> b!3939951 (= e!2437730 (and (inv!21 (value!206910 (h!47251 suffixTokens!72))) e!2437724 tp!1198798))))

(declare-fun e!2437734 () Bool)

(assert (=> b!3939952 (= e!2437734 (and tp!1198796 tp!1198792))))

(declare-fun b!3939953 () Bool)

(declare-fun res!1594560 () Bool)

(assert (=> b!3939953 (=> (not res!1594560) (not e!2437737))))

(declare-fun rulesInvariant!5468 (LexerInterface!6125 List!41956) Bool)

(assert (=> b!3939953 (= res!1594560 (rulesInvariant!5468 thiss!20629 rules!2768))))

(declare-fun b!3939954 () Bool)

(declare-fun e!2437723 () Bool)

(declare-fun tp!1198797 () Bool)

(assert (=> b!3939954 (= e!2437740 (and e!2437723 tp!1198797))))

(declare-fun b!3939955 () Bool)

(declare-fun tp!1198802 () Bool)

(assert (=> b!3939955 (= e!2437738 (and tp_is_empty!19853 tp!1198802))))

(declare-fun b!3939956 () Bool)

(declare-fun lt!1378299 () tuple2!41120)

(assert (=> b!3939956 (= e!2437731 (not (= lt!1378299 (tuple2!41121 Nil!41831 lt!1378297))))))

(assert (=> b!3939956 false))

(declare-fun tp!1198799 () Bool)

(declare-fun b!3939957 () Bool)

(assert (=> b!3939957 (= e!2437724 (and tp!1198799 (inv!56029 (tag!7396 (rule!9494 (h!47251 suffixTokens!72)))) (inv!56032 (transformation!6536 (rule!9494 (h!47251 suffixTokens!72)))) e!2437734))))

(declare-fun b!3939958 () Bool)

(assert (=> b!3939958 (= e!2437737 e!2437731)))

(declare-fun res!1594558 () Bool)

(assert (=> b!3939958 (=> (not res!1594558) (not e!2437731))))

(declare-fun lt!1378298 () List!41955)

(assert (=> b!3939958 (= res!1594558 (= lt!1378299 (tuple2!41121 lt!1378298 suffixResult!91)))))

(assert (=> b!3939958 (= lt!1378299 (lexList!1893 thiss!20629 rules!2768 lt!1378297))))

(declare-fun ++!10829 (List!41955 List!41955) List!41955)

(assert (=> b!3939958 (= lt!1378298 (++!10829 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10830 (List!41954 List!41954) List!41954)

(assert (=> b!3939958 (= lt!1378297 (++!10830 prefix!426 suffix!1176))))

(declare-fun b!3939959 () Bool)

(declare-fun res!1594561 () Bool)

(assert (=> b!3939959 (=> (not res!1594561) (not e!2437737))))

(declare-fun isEmpty!24954 (List!41956) Bool)

(assert (=> b!3939959 (= res!1594561 (not (isEmpty!24954 rules!2768)))))

(declare-fun tp!1198800 () Bool)

(declare-fun b!3939960 () Bool)

(assert (=> b!3939960 (= e!2437721 (and (inv!56033 (h!47251 suffixTokens!72)) e!2437730 tp!1198800))))

(declare-fun b!3939961 () Bool)

(declare-fun tp!1198793 () Bool)

(assert (=> b!3939961 (= e!2437732 (and (inv!21 (value!206910 (h!47251 prefixTokens!80))) e!2437720 tp!1198793))))

(declare-fun b!3939962 () Bool)

(declare-fun tp!1198794 () Bool)

(assert (=> b!3939962 (= e!2437723 (and tp!1198794 (inv!56029 (tag!7396 (h!47252 rules!2768))) (inv!56032 (transformation!6536 (h!47252 rules!2768))) e!2437729))))

(assert (= (and start!369944 res!1594562) b!3939959))

(assert (= (and b!3939959 res!1594561) b!3939953))

(assert (= (and b!3939953 res!1594560) b!3939941))

(assert (= (and b!3939941 res!1594564) b!3939947))

(assert (= (and b!3939947 res!1594559) b!3939958))

(assert (= (and b!3939958 res!1594558) b!3939946))

(assert (= (and b!3939946 res!1594563) b!3939944))

(assert (= (and b!3939944 res!1594565) b!3939956))

(assert (= (and start!369944 ((_ is Cons!41830) suffixResult!91)) b!3939943))

(assert (= (and start!369944 ((_ is Cons!41830) suffix!1176)) b!3939955))

(assert (= b!3939962 b!3939942))

(assert (= b!3939954 b!3939962))

(assert (= (and start!369944 ((_ is Cons!41832) rules!2768)) b!3939954))

(assert (= b!3939945 b!3939948))

(assert (= b!3939961 b!3939945))

(assert (= b!3939950 b!3939961))

(assert (= (and start!369944 ((_ is Cons!41831) prefixTokens!80)) b!3939950))

(assert (= b!3939957 b!3939952))

(assert (= b!3939951 b!3939957))

(assert (= b!3939960 b!3939951))

(assert (= (and start!369944 ((_ is Cons!41831) suffixTokens!72)) b!3939960))

(assert (= (and start!369944 ((_ is Cons!41830) prefix!426)) b!3939949))

(declare-fun m!4508799 () Bool)

(assert (=> b!3939957 m!4508799))

(declare-fun m!4508801 () Bool)

(assert (=> b!3939957 m!4508801))

(declare-fun m!4508803 () Bool)

(assert (=> b!3939962 m!4508803))

(declare-fun m!4508805 () Bool)

(assert (=> b!3939962 m!4508805))

(declare-fun m!4508807 () Bool)

(assert (=> b!3939946 m!4508807))

(declare-fun m!4508809 () Bool)

(assert (=> b!3939941 m!4508809))

(declare-fun m!4508811 () Bool)

(assert (=> b!3939953 m!4508811))

(declare-fun m!4508813 () Bool)

(assert (=> b!3939947 m!4508813))

(declare-fun m!4508815 () Bool)

(assert (=> b!3939958 m!4508815))

(declare-fun m!4508817 () Bool)

(assert (=> b!3939958 m!4508817))

(declare-fun m!4508819 () Bool)

(assert (=> b!3939958 m!4508819))

(declare-fun m!4508821 () Bool)

(assert (=> b!3939950 m!4508821))

(declare-fun m!4508823 () Bool)

(assert (=> b!3939960 m!4508823))

(declare-fun m!4508825 () Bool)

(assert (=> b!3939945 m!4508825))

(declare-fun m!4508827 () Bool)

(assert (=> b!3939945 m!4508827))

(declare-fun m!4508829 () Bool)

(assert (=> b!3939959 m!4508829))

(declare-fun m!4508831 () Bool)

(assert (=> b!3939961 m!4508831))

(declare-fun m!4508833 () Bool)

(assert (=> b!3939944 m!4508833))

(declare-fun m!4508835 () Bool)

(assert (=> b!3939951 m!4508835))

(check-sat b_and!300969 (not b!3939955) (not b_next!108399) (not b!3939954) (not b!3939943) (not b!3939944) (not b!3939945) (not b_next!108405) (not b!3939946) b_and!300963 (not b!3939959) b_and!300967 (not b!3939958) (not b!3939951) (not b!3939962) (not b_next!108401) tp_is_empty!19853 b_and!300961 (not b!3939947) (not b!3939941) b_and!300959 b_and!300965 (not b_next!108407) (not b!3939960) (not b!3939950) (not b!3939949) (not b!3939957) (not b_next!108397) (not b!3939961) (not b!3939953) (not b_next!108403))
(check-sat b_and!300969 (not b_next!108401) (not b_next!108399) b_and!300961 (not b_next!108405) (not b_next!108407) b_and!300963 (not b_next!108397) b_and!300967 (not b_next!108403) b_and!300959 b_and!300965)
