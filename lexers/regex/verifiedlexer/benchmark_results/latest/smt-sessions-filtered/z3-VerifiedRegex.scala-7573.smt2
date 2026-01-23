; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399606 () Bool)

(assert start!399606)

(declare-fun b!4188115 () Bool)

(declare-fun b_free!121871 () Bool)

(declare-fun b_next!122575 () Bool)

(assert (=> b!4188115 (= b_free!121871 (not b_next!122575))))

(declare-fun tp!1279869 () Bool)

(declare-fun b_and!328057 () Bool)

(assert (=> b!4188115 (= tp!1279869 b_and!328057)))

(declare-fun b_free!121873 () Bool)

(declare-fun b_next!122577 () Bool)

(assert (=> b!4188115 (= b_free!121873 (not b_next!122577))))

(declare-fun tp!1279870 () Bool)

(declare-fun b_and!328059 () Bool)

(assert (=> b!4188115 (= tp!1279870 b_and!328059)))

(declare-fun b!4188107 () Bool)

(declare-fun b_free!121875 () Bool)

(declare-fun b_next!122579 () Bool)

(assert (=> b!4188107 (= b_free!121875 (not b_next!122579))))

(declare-fun tp!1279861 () Bool)

(declare-fun b_and!328061 () Bool)

(assert (=> b!4188107 (= tp!1279861 b_and!328061)))

(declare-fun b_free!121877 () Bool)

(declare-fun b_next!122581 () Bool)

(assert (=> b!4188107 (= b_free!121877 (not b_next!122581))))

(declare-fun tp!1279862 () Bool)

(declare-fun b_and!328063 () Bool)

(assert (=> b!4188107 (= tp!1279862 b_and!328063)))

(declare-fun b!4188095 () Bool)

(declare-fun b_free!121879 () Bool)

(declare-fun b_next!122583 () Bool)

(assert (=> b!4188095 (= b_free!121879 (not b_next!122583))))

(declare-fun tp!1279858 () Bool)

(declare-fun b_and!328065 () Bool)

(assert (=> b!4188095 (= tp!1279858 b_and!328065)))

(declare-fun b_free!121881 () Bool)

(declare-fun b_next!122585 () Bool)

(assert (=> b!4188095 (= b_free!121881 (not b_next!122585))))

(declare-fun tp!1279867 () Bool)

(declare-fun b_and!328067 () Bool)

(assert (=> b!4188095 (= tp!1279867 b_and!328067)))

(declare-fun b!4188091 () Bool)

(declare-fun e!2599933 () Bool)

(declare-fun e!2599936 () Bool)

(assert (=> b!4188091 (= e!2599933 e!2599936)))

(declare-fun res!1718186 () Bool)

(assert (=> b!4188091 (=> res!1718186 e!2599936)))

(declare-datatypes ((List!46113 0))(
  ( (Nil!45989) (Cons!45989 (h!51409 (_ BitVec 16)) (t!345756 List!46113)) )
))
(declare-datatypes ((TokenValue!7892 0))(
  ( (FloatLiteralValue!15784 (text!55689 List!46113)) (TokenValueExt!7891 (__x!28005 Int)) (Broken!39460 (value!238873 List!46113)) (Object!8015) (End!7892) (Def!7892) (Underscore!7892) (Match!7892) (Else!7892) (Error!7892) (Case!7892) (If!7892) (Extends!7892) (Abstract!7892) (Class!7892) (Val!7892) (DelimiterValue!15784 (del!7952 List!46113)) (KeywordValue!7898 (value!238874 List!46113)) (CommentValue!15784 (value!238875 List!46113)) (WhitespaceValue!15784 (value!238876 List!46113)) (IndentationValue!7892 (value!238877 List!46113)) (String!53325) (Int32!7892) (Broken!39461 (value!238878 List!46113)) (Boolean!7893) (Unit!65076) (OperatorValue!7895 (op!7952 List!46113)) (IdentifierValue!15784 (value!238879 List!46113)) (IdentifierValue!15785 (value!238880 List!46113)) (WhitespaceValue!15785 (value!238881 List!46113)) (True!15784) (False!15784) (Broken!39462 (value!238882 List!46113)) (Broken!39463 (value!238883 List!46113)) (True!15785) (RightBrace!7892) (RightBracket!7892) (Colon!7892) (Null!7892) (Comma!7892) (LeftBracket!7892) (False!15785) (LeftBrace!7892) (ImaginaryLiteralValue!7892 (text!55690 List!46113)) (StringLiteralValue!23676 (value!238884 List!46113)) (EOFValue!7892 (value!238885 List!46113)) (IdentValue!7892 (value!238886 List!46113)) (DelimiterValue!15785 (value!238887 List!46113)) (DedentValue!7892 (value!238888 List!46113)) (NewLineValue!7892 (value!238889 List!46113)) (IntegerValue!23676 (value!238890 (_ BitVec 32)) (text!55691 List!46113)) (IntegerValue!23677 (value!238891 Int) (text!55692 List!46113)) (Times!7892) (Or!7892) (Equal!7892) (Minus!7892) (Broken!39464 (value!238892 List!46113)) (And!7892) (Div!7892) (LessEqual!7892) (Mod!7892) (Concat!20459) (Not!7892) (Plus!7892) (SpaceValue!7892 (value!238893 List!46113)) (IntegerValue!23678 (value!238894 Int) (text!55693 List!46113)) (StringLiteralValue!23677 (text!55694 List!46113)) (FloatLiteralValue!15785 (text!55695 List!46113)) (BytesLiteralValue!7892 (value!238895 List!46113)) (CommentValue!15785 (value!238896 List!46113)) (StringLiteralValue!23678 (value!238897 List!46113)) (ErrorTokenValue!7892 (msg!7953 List!46113)) )
))
(declare-datatypes ((C!25324 0))(
  ( (C!25325 (val!14824 Int)) )
))
(declare-datatypes ((Regex!12567 0))(
  ( (ElementMatch!12567 (c!714808 C!25324)) (Concat!20460 (regOne!25646 Regex!12567) (regTwo!25646 Regex!12567)) (EmptyExpr!12567) (Star!12567 (reg!12896 Regex!12567)) (EmptyLang!12567) (Union!12567 (regOne!25647 Regex!12567) (regTwo!25647 Regex!12567)) )
))
(declare-datatypes ((String!53326 0))(
  ( (String!53327 (value!238898 String)) )
))
(declare-datatypes ((List!46114 0))(
  ( (Nil!45990) (Cons!45990 (h!51410 C!25324) (t!345757 List!46114)) )
))
(declare-datatypes ((IArray!27751 0))(
  ( (IArray!27752 (innerList!13933 List!46114)) )
))
(declare-datatypes ((Conc!13873 0))(
  ( (Node!13873 (left!34258 Conc!13873) (right!34588 Conc!13873) (csize!27976 Int) (cheight!14084 Int)) (Leaf!21447 (xs!17179 IArray!27751) (csize!27977 Int)) (Empty!13873) )
))
(declare-datatypes ((BalanceConc!27340 0))(
  ( (BalanceConc!27341 (c!714809 Conc!13873)) )
))
(declare-datatypes ((TokenValueInjection!15212 0))(
  ( (TokenValueInjection!15213 (toValue!10358 Int) (toChars!10217 Int)) )
))
(declare-datatypes ((Rule!15124 0))(
  ( (Rule!15125 (regex!7662 Regex!12567) (tag!8526 String!53326) (isSeparator!7662 Bool) (transformation!7662 TokenValueInjection!15212)) )
))
(declare-datatypes ((Token!14038 0))(
  ( (Token!14039 (value!238899 TokenValue!7892) (rule!10738 Rule!15124) (size!33777 Int) (originalCharacters!8050 List!46114)) )
))
(declare-datatypes ((tuple2!43790 0))(
  ( (tuple2!43791 (_1!25029 Token!14038) (_2!25029 List!46114)) )
))
(declare-datatypes ((Option!9856 0))(
  ( (None!9855) (Some!9855 (v!40679 tuple2!43790)) )
))
(declare-fun lt!1491640 () Option!9856)

(declare-fun isEmpty!27222 (Option!9856) Bool)

(assert (=> b!4188091 (= res!1718186 (isEmpty!27222 lt!1491640))))

(declare-fun input!3342 () List!46114)

(declare-datatypes ((LexerInterface!7255 0))(
  ( (LexerInterfaceExt!7252 (__x!28006 Int)) (Lexer!7253) )
))
(declare-fun thiss!25986 () LexerInterface!7255)

(declare-fun rBis!167 () Rule!15124)

(declare-fun maxPrefixOneRule!3264 (LexerInterface!7255 Rule!15124 List!46114) Option!9856)

(assert (=> b!4188091 (= lt!1491640 (maxPrefixOneRule!3264 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!65077 0))(
  ( (Unit!65078) )
))
(declare-fun lt!1491637 () Unit!65077)

(declare-datatypes ((List!46115 0))(
  ( (Nil!45991) (Cons!45991 (h!51411 Rule!15124) (t!345758 List!46115)) )
))
(declare-fun rules!3843 () List!46115)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2386 (LexerInterface!7255 Rule!15124 List!46115) Unit!65077)

(assert (=> b!4188091 (= lt!1491637 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2386 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1491649 () Int)

(declare-fun size!33778 (List!46114) Int)

(assert (=> b!4188091 (<= lt!1491649 (size!33778 input!3342))))

(declare-fun lt!1491644 () Unit!65077)

(declare-fun pBis!107 () List!46114)

(declare-fun lemmaIsPrefixThenSmallerEqSize!549 (List!46114 List!46114) Unit!65077)

(assert (=> b!4188091 (= lt!1491644 (lemmaIsPrefixThenSmallerEqSize!549 pBis!107 input!3342))))

(declare-fun b!4188092 () Bool)

(declare-fun res!1718195 () Bool)

(declare-fun e!2599938 () Bool)

(assert (=> b!4188092 (=> (not res!1718195) (not e!2599938))))

(declare-fun r!4142 () Rule!15124)

(declare-fun contains!9471 (List!46115 Rule!15124) Bool)

(assert (=> b!4188092 (= res!1718195 (contains!9471 rules!3843 r!4142))))

(declare-fun b!4188093 () Bool)

(declare-fun res!1718196 () Bool)

(assert (=> b!4188093 (=> (not res!1718196) (not e!2599938))))

(declare-fun validRegex!5684 (Regex!12567) Bool)

(assert (=> b!4188093 (= res!1718196 (validRegex!5684 (regex!7662 r!4142)))))

(declare-fun b!4188094 () Bool)

(declare-fun res!1718194 () Bool)

(assert (=> b!4188094 (=> res!1718194 e!2599933)))

(declare-fun lt!1491646 () Option!9856)

(declare-fun maxPrefix!4303 (LexerInterface!7255 List!46115 List!46114) Option!9856)

(assert (=> b!4188094 (= res!1718194 (not (= (maxPrefix!4303 thiss!25986 rules!3843 input!3342) lt!1491646)))))

(declare-fun e!2599932 () Bool)

(assert (=> b!4188095 (= e!2599932 (and tp!1279858 tp!1279867))))

(declare-fun b!4188096 () Bool)

(declare-fun res!1718190 () Bool)

(assert (=> b!4188096 (=> (not res!1718190) (not e!2599938))))

(declare-fun rulesInvariant!6468 (LexerInterface!7255 List!46115) Bool)

(assert (=> b!4188096 (= res!1718190 (rulesInvariant!6468 thiss!25986 rules!3843))))

(declare-fun tp!1279863 () Bool)

(declare-fun e!2599928 () Bool)

(declare-fun b!4188097 () Bool)

(declare-fun e!2599935 () Bool)

(declare-fun inv!60535 (String!53326) Bool)

(declare-fun inv!60537 (TokenValueInjection!15212) Bool)

(assert (=> b!4188097 (= e!2599935 (and tp!1279863 (inv!60535 (tag!8526 r!4142)) (inv!60537 (transformation!7662 r!4142)) e!2599928))))

(declare-fun b!4188098 () Bool)

(declare-fun e!2599931 () Bool)

(declare-fun tp!1279859 () Bool)

(assert (=> b!4188098 (= e!2599931 (and tp!1279859 (inv!60535 (tag!8526 (h!51411 rules!3843))) (inv!60537 (transformation!7662 (h!51411 rules!3843))) e!2599932))))

(declare-fun res!1718192 () Bool)

(assert (=> start!399606 (=> (not res!1718192) (not e!2599938))))

(get-info :version)

(assert (=> start!399606 (= res!1718192 ((_ is Lexer!7253) thiss!25986))))

(assert (=> start!399606 e!2599938))

(assert (=> start!399606 true))

(declare-fun e!2599926 () Bool)

(assert (=> start!399606 e!2599926))

(assert (=> start!399606 e!2599935))

(declare-fun e!2599930 () Bool)

(assert (=> start!399606 e!2599930))

(declare-fun e!2599940 () Bool)

(assert (=> start!399606 e!2599940))

(declare-fun e!2599929 () Bool)

(assert (=> start!399606 e!2599929))

(declare-fun e!2599927 () Bool)

(assert (=> start!399606 e!2599927))

(declare-fun b!4188099 () Bool)

(declare-fun tp_is_empty!22097 () Bool)

(declare-fun tp!1279865 () Bool)

(assert (=> b!4188099 (= e!2599927 (and tp_is_empty!22097 tp!1279865))))

(declare-fun b!4188100 () Bool)

(declare-fun tp!1279868 () Bool)

(assert (=> b!4188100 (= e!2599929 (and tp_is_empty!22097 tp!1279868))))

(declare-fun b!4188101 () Bool)

(declare-fun res!1718185 () Bool)

(assert (=> b!4188101 (=> (not res!1718185) (not e!2599938))))

(declare-fun ruleValid!3380 (LexerInterface!7255 Rule!15124) Bool)

(assert (=> b!4188101 (= res!1718185 (ruleValid!3380 thiss!25986 r!4142))))

(declare-fun b!4188102 () Bool)

(declare-fun res!1718198 () Bool)

(assert (=> b!4188102 (=> (not res!1718198) (not e!2599938))))

(declare-fun p!2959 () List!46114)

(declare-fun matchR!6306 (Regex!12567 List!46114) Bool)

(assert (=> b!4188102 (= res!1718198 (matchR!6306 (regex!7662 r!4142) p!2959))))

(declare-fun b!4188103 () Bool)

(declare-fun res!1718189 () Bool)

(assert (=> b!4188103 (=> (not res!1718189) (not e!2599938))))

(declare-fun isEmpty!27223 (List!46115) Bool)

(assert (=> b!4188103 (= res!1718189 (not (isEmpty!27223 rules!3843)))))

(declare-fun b!4188104 () Bool)

(declare-fun res!1718197 () Bool)

(declare-fun e!2599942 () Bool)

(assert (=> b!4188104 (=> res!1718197 e!2599942)))

(declare-fun lt!1491650 () List!46114)

(declare-fun isPrefix!4519 (List!46114 List!46114) Bool)

(assert (=> b!4188104 (= res!1718197 (not (isPrefix!4519 lt!1491650 input!3342)))))

(declare-fun b!4188105 () Bool)

(assert (=> b!4188105 (= e!2599936 e!2599942)))

(declare-fun res!1718191 () Bool)

(assert (=> b!4188105 (=> res!1718191 e!2599942)))

(assert (=> b!4188105 (= res!1718191 (= lt!1491650 pBis!107))))

(declare-fun lt!1491639 () List!46114)

(assert (=> b!4188105 (isPrefix!4519 lt!1491650 lt!1491639)))

(declare-fun lt!1491643 () tuple2!43790)

(declare-fun ++!11734 (List!46114 List!46114) List!46114)

(assert (=> b!4188105 (= lt!1491639 (++!11734 lt!1491650 (_2!25029 lt!1491643)))))

(declare-fun lt!1491642 () Unit!65077)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3016 (List!46114 List!46114) Unit!65077)

(assert (=> b!4188105 (= lt!1491642 (lemmaConcatTwoListThenFirstIsPrefix!3016 lt!1491650 (_2!25029 lt!1491643)))))

(declare-fun lt!1491645 () BalanceConc!27340)

(declare-fun list!16614 (BalanceConc!27340) List!46114)

(assert (=> b!4188105 (= lt!1491650 (list!16614 lt!1491645))))

(declare-fun charsOf!5097 (Token!14038) BalanceConc!27340)

(assert (=> b!4188105 (= lt!1491645 (charsOf!5097 (_1!25029 lt!1491643)))))

(declare-fun get!14952 (Option!9856) tuple2!43790)

(assert (=> b!4188105 (= lt!1491643 (get!14952 lt!1491640))))

(declare-fun b!4188106 () Bool)

(declare-fun res!1718187 () Bool)

(assert (=> b!4188106 (=> (not res!1718187) (not e!2599938))))

(assert (=> b!4188106 (= res!1718187 (isPrefix!4519 pBis!107 input!3342))))

(declare-fun e!2599941 () Bool)

(assert (=> b!4188107 (= e!2599941 (and tp!1279861 tp!1279862))))

(declare-fun b!4188108 () Bool)

(declare-fun e!2599925 () Bool)

(assert (=> b!4188108 (= e!2599925 e!2599933)))

(declare-fun res!1718201 () Bool)

(assert (=> b!4188108 (=> res!1718201 e!2599933)))

(declare-fun lt!1491648 () Int)

(assert (=> b!4188108 (= res!1718201 (<= lt!1491649 lt!1491648))))

(assert (=> b!4188108 (= lt!1491649 (size!33778 pBis!107))))

(declare-fun b!4188109 () Bool)

(assert (=> b!4188109 (= e!2599938 (not e!2599925))))

(declare-fun res!1718202 () Bool)

(assert (=> b!4188109 (=> res!1718202 e!2599925)))

(assert (=> b!4188109 (= res!1718202 (not (= (maxPrefixOneRule!3264 thiss!25986 r!4142 input!3342) lt!1491646)))))

(declare-fun lt!1491638 () TokenValue!7892)

(declare-fun getSuffix!2812 (List!46114 List!46114) List!46114)

(assert (=> b!4188109 (= lt!1491646 (Some!9855 (tuple2!43791 (Token!14039 lt!1491638 r!4142 lt!1491648 p!2959) (getSuffix!2812 input!3342 p!2959))))))

(assert (=> b!4188109 (= lt!1491648 (size!33778 p!2959))))

(declare-fun lt!1491647 () BalanceConc!27340)

(declare-fun apply!10627 (TokenValueInjection!15212 BalanceConc!27340) TokenValue!7892)

(assert (=> b!4188109 (= lt!1491638 (apply!10627 (transformation!7662 r!4142) lt!1491647))))

(assert (=> b!4188109 (isPrefix!4519 input!3342 input!3342)))

(declare-fun lt!1491636 () Unit!65077)

(declare-fun lemmaIsPrefixRefl!2948 (List!46114 List!46114) Unit!65077)

(assert (=> b!4188109 (= lt!1491636 (lemmaIsPrefixRefl!2948 input!3342 input!3342))))

(declare-fun lt!1491641 () Unit!65077)

(declare-fun lemmaSemiInverse!2428 (TokenValueInjection!15212 BalanceConc!27340) Unit!65077)

(assert (=> b!4188109 (= lt!1491641 (lemmaSemiInverse!2428 (transformation!7662 r!4142) lt!1491647))))

(declare-fun seqFromList!5687 (List!46114) BalanceConc!27340)

(assert (=> b!4188109 (= lt!1491647 (seqFromList!5687 p!2959))))

(declare-fun b!4188110 () Bool)

(assert (=> b!4188110 (= e!2599942 (= lt!1491639 input!3342))))

(declare-fun b!4188111 () Bool)

(declare-fun res!1718193 () Bool)

(assert (=> b!4188111 (=> res!1718193 e!2599933)))

(assert (=> b!4188111 (= res!1718193 (not (ruleValid!3380 thiss!25986 rBis!167)))))

(declare-fun b!4188112 () Bool)

(declare-fun tp!1279866 () Bool)

(assert (=> b!4188112 (= e!2599940 (and tp_is_empty!22097 tp!1279866))))

(declare-fun b!4188113 () Bool)

(declare-fun res!1718188 () Bool)

(assert (=> b!4188113 (=> (not res!1718188) (not e!2599938))))

(assert (=> b!4188113 (= res!1718188 (contains!9471 rules!3843 rBis!167))))

(declare-fun b!4188114 () Bool)

(declare-fun tp!1279860 () Bool)

(assert (=> b!4188114 (= e!2599926 (and tp!1279860 (inv!60535 (tag!8526 rBis!167)) (inv!60537 (transformation!7662 rBis!167)) e!2599941))))

(assert (=> b!4188115 (= e!2599928 (and tp!1279869 tp!1279870))))

(declare-fun b!4188116 () Bool)

(declare-fun res!1718200 () Bool)

(assert (=> b!4188116 (=> (not res!1718200) (not e!2599938))))

(assert (=> b!4188116 (= res!1718200 (isPrefix!4519 p!2959 input!3342))))

(declare-fun b!4188117 () Bool)

(declare-fun res!1718199 () Bool)

(assert (=> b!4188117 (=> res!1718199 e!2599942)))

(declare-fun size!33779 (BalanceConc!27340) Int)

(assert (=> b!4188117 (= res!1718199 (>= (size!33779 lt!1491645) lt!1491649))))

(declare-fun b!4188118 () Bool)

(declare-fun tp!1279864 () Bool)

(assert (=> b!4188118 (= e!2599930 (and e!2599931 tp!1279864))))

(assert (= (and start!399606 res!1718192) b!4188116))

(assert (= (and b!4188116 res!1718200) b!4188106))

(assert (= (and b!4188106 res!1718187) b!4188103))

(assert (= (and b!4188103 res!1718189) b!4188096))

(assert (= (and b!4188096 res!1718190) b!4188092))

(assert (= (and b!4188092 res!1718195) b!4188113))

(assert (= (and b!4188113 res!1718188) b!4188093))

(assert (= (and b!4188093 res!1718196) b!4188102))

(assert (= (and b!4188102 res!1718198) b!4188101))

(assert (= (and b!4188101 res!1718185) b!4188109))

(assert (= (and b!4188109 (not res!1718202)) b!4188108))

(assert (= (and b!4188108 (not res!1718201)) b!4188111))

(assert (= (and b!4188111 (not res!1718193)) b!4188094))

(assert (= (and b!4188094 (not res!1718194)) b!4188091))

(assert (= (and b!4188091 (not res!1718186)) b!4188105))

(assert (= (and b!4188105 (not res!1718191)) b!4188117))

(assert (= (and b!4188117 (not res!1718199)) b!4188104))

(assert (= (and b!4188104 (not res!1718197)) b!4188110))

(assert (= b!4188114 b!4188107))

(assert (= start!399606 b!4188114))

(assert (= b!4188097 b!4188115))

(assert (= start!399606 b!4188097))

(assert (= b!4188098 b!4188095))

(assert (= b!4188118 b!4188098))

(assert (= (and start!399606 ((_ is Cons!45991) rules!3843)) b!4188118))

(assert (= (and start!399606 ((_ is Cons!45990) input!3342)) b!4188112))

(assert (= (and start!399606 ((_ is Cons!45990) pBis!107)) b!4188100))

(assert (= (and start!399606 ((_ is Cons!45990) p!2959)) b!4188099))

(declare-fun m!4777005 () Bool)

(assert (=> b!4188091 m!4777005))

(declare-fun m!4777007 () Bool)

(assert (=> b!4188091 m!4777007))

(declare-fun m!4777009 () Bool)

(assert (=> b!4188091 m!4777009))

(declare-fun m!4777011 () Bool)

(assert (=> b!4188091 m!4777011))

(declare-fun m!4777013 () Bool)

(assert (=> b!4188091 m!4777013))

(declare-fun m!4777015 () Bool)

(assert (=> b!4188116 m!4777015))

(declare-fun m!4777017 () Bool)

(assert (=> b!4188105 m!4777017))

(declare-fun m!4777019 () Bool)

(assert (=> b!4188105 m!4777019))

(declare-fun m!4777021 () Bool)

(assert (=> b!4188105 m!4777021))

(declare-fun m!4777023 () Bool)

(assert (=> b!4188105 m!4777023))

(declare-fun m!4777025 () Bool)

(assert (=> b!4188105 m!4777025))

(declare-fun m!4777027 () Bool)

(assert (=> b!4188105 m!4777027))

(declare-fun m!4777029 () Bool)

(assert (=> b!4188113 m!4777029))

(declare-fun m!4777031 () Bool)

(assert (=> b!4188097 m!4777031))

(declare-fun m!4777033 () Bool)

(assert (=> b!4188097 m!4777033))

(declare-fun m!4777035 () Bool)

(assert (=> b!4188098 m!4777035))

(declare-fun m!4777037 () Bool)

(assert (=> b!4188098 m!4777037))

(declare-fun m!4777039 () Bool)

(assert (=> b!4188092 m!4777039))

(declare-fun m!4777041 () Bool)

(assert (=> b!4188102 m!4777041))

(declare-fun m!4777043 () Bool)

(assert (=> b!4188109 m!4777043))

(declare-fun m!4777045 () Bool)

(assert (=> b!4188109 m!4777045))

(declare-fun m!4777047 () Bool)

(assert (=> b!4188109 m!4777047))

(declare-fun m!4777049 () Bool)

(assert (=> b!4188109 m!4777049))

(declare-fun m!4777051 () Bool)

(assert (=> b!4188109 m!4777051))

(declare-fun m!4777053 () Bool)

(assert (=> b!4188109 m!4777053))

(declare-fun m!4777055 () Bool)

(assert (=> b!4188109 m!4777055))

(declare-fun m!4777057 () Bool)

(assert (=> b!4188109 m!4777057))

(declare-fun m!4777059 () Bool)

(assert (=> b!4188106 m!4777059))

(declare-fun m!4777061 () Bool)

(assert (=> b!4188093 m!4777061))

(declare-fun m!4777063 () Bool)

(assert (=> b!4188101 m!4777063))

(declare-fun m!4777065 () Bool)

(assert (=> b!4188104 m!4777065))

(declare-fun m!4777067 () Bool)

(assert (=> b!4188111 m!4777067))

(declare-fun m!4777069 () Bool)

(assert (=> b!4188114 m!4777069))

(declare-fun m!4777071 () Bool)

(assert (=> b!4188114 m!4777071))

(declare-fun m!4777073 () Bool)

(assert (=> b!4188108 m!4777073))

(declare-fun m!4777075 () Bool)

(assert (=> b!4188094 m!4777075))

(declare-fun m!4777077 () Bool)

(assert (=> b!4188096 m!4777077))

(declare-fun m!4777079 () Bool)

(assert (=> b!4188117 m!4777079))

(declare-fun m!4777081 () Bool)

(assert (=> b!4188103 m!4777081))

(check-sat b_and!328061 (not b!4188114) (not b!4188101) (not b!4188116) (not b!4188096) (not b!4188105) (not b_next!122583) (not b!4188100) b_and!328063 (not b!4188111) (not b!4188112) (not b!4188092) b_and!328059 (not b_next!122577) (not b!4188109) b_and!328065 (not b_next!122585) (not b!4188094) (not b_next!122575) (not b!4188118) (not b_next!122581) (not b!4188108) (not b_next!122579) tp_is_empty!22097 (not b!4188099) (not b!4188091) (not b!4188098) b_and!328067 (not b!4188104) (not b!4188117) (not b!4188102) (not b!4188103) (not b!4188097) b_and!328057 (not b!4188113) (not b!4188093) (not b!4188106))
(check-sat b_and!328061 (not b_next!122581) (not b_next!122579) (not b_next!122583) b_and!328063 b_and!328067 b_and!328059 b_and!328057 (not b_next!122577) b_and!328065 (not b_next!122575) (not b_next!122585))
(get-model)

(declare-fun b!4188180 () Bool)

(declare-fun res!1718257 () Bool)

(declare-fun e!2599987 () Bool)

(assert (=> b!4188180 (=> res!1718257 e!2599987)))

(assert (=> b!4188180 (= res!1718257 (not ((_ is ElementMatch!12567) (regex!7662 r!4142))))))

(declare-fun e!2599982 () Bool)

(assert (=> b!4188180 (= e!2599982 e!2599987)))

(declare-fun b!4188181 () Bool)

(declare-fun e!2599981 () Bool)

(declare-fun nullable!4411 (Regex!12567) Bool)

(assert (=> b!4188181 (= e!2599981 (nullable!4411 (regex!7662 r!4142)))))

(declare-fun b!4188182 () Bool)

(declare-fun e!2599986 () Bool)

(assert (=> b!4188182 (= e!2599986 e!2599982)))

(declare-fun c!714820 () Bool)

(assert (=> b!4188182 (= c!714820 ((_ is EmptyLang!12567) (regex!7662 r!4142)))))

(declare-fun b!4188183 () Bool)

(declare-fun e!2599985 () Bool)

(assert (=> b!4188183 (= e!2599987 e!2599985)))

(declare-fun res!1718263 () Bool)

(assert (=> b!4188183 (=> (not res!1718263) (not e!2599985))))

(declare-fun lt!1491662 () Bool)

(assert (=> b!4188183 (= res!1718263 (not lt!1491662))))

(declare-fun b!4188184 () Bool)

(declare-fun call!292039 () Bool)

(assert (=> b!4188184 (= e!2599986 (= lt!1491662 call!292039))))

(declare-fun d!1235588 () Bool)

(assert (=> d!1235588 e!2599986))

(declare-fun c!714821 () Bool)

(assert (=> d!1235588 (= c!714821 ((_ is EmptyExpr!12567) (regex!7662 r!4142)))))

(assert (=> d!1235588 (= lt!1491662 e!2599981)))

(declare-fun c!714819 () Bool)

(declare-fun isEmpty!27225 (List!46114) Bool)

(assert (=> d!1235588 (= c!714819 (isEmpty!27225 p!2959))))

(assert (=> d!1235588 (validRegex!5684 (regex!7662 r!4142))))

(assert (=> d!1235588 (= (matchR!6306 (regex!7662 r!4142) p!2959) lt!1491662)))

(declare-fun b!4188185 () Bool)

(declare-fun res!1718260 () Bool)

(declare-fun e!2599983 () Bool)

(assert (=> b!4188185 (=> (not res!1718260) (not e!2599983))))

(declare-fun tail!6735 (List!46114) List!46114)

(assert (=> b!4188185 (= res!1718260 (isEmpty!27225 (tail!6735 p!2959)))))

(declare-fun b!4188186 () Bool)

(declare-fun res!1718261 () Bool)

(declare-fun e!2599984 () Bool)

(assert (=> b!4188186 (=> res!1718261 e!2599984)))

(assert (=> b!4188186 (= res!1718261 (not (isEmpty!27225 (tail!6735 p!2959))))))

(declare-fun b!4188187 () Bool)

(declare-fun head!8888 (List!46114) C!25324)

(assert (=> b!4188187 (= e!2599983 (= (head!8888 p!2959) (c!714808 (regex!7662 r!4142))))))

(declare-fun b!4188188 () Bool)

(declare-fun derivativeStep!3800 (Regex!12567 C!25324) Regex!12567)

(assert (=> b!4188188 (= e!2599981 (matchR!6306 (derivativeStep!3800 (regex!7662 r!4142) (head!8888 p!2959)) (tail!6735 p!2959)))))

(declare-fun b!4188189 () Bool)

(assert (=> b!4188189 (= e!2599984 (not (= (head!8888 p!2959) (c!714808 (regex!7662 r!4142)))))))

(declare-fun bm!292034 () Bool)

(assert (=> bm!292034 (= call!292039 (isEmpty!27225 p!2959))))

(declare-fun b!4188190 () Bool)

(declare-fun res!1718262 () Bool)

(assert (=> b!4188190 (=> (not res!1718262) (not e!2599983))))

(assert (=> b!4188190 (= res!1718262 (not call!292039))))

(declare-fun b!4188191 () Bool)

(declare-fun res!1718258 () Bool)

(assert (=> b!4188191 (=> res!1718258 e!2599987)))

(assert (=> b!4188191 (= res!1718258 e!2599983)))

(declare-fun res!1718259 () Bool)

(assert (=> b!4188191 (=> (not res!1718259) (not e!2599983))))

(assert (=> b!4188191 (= res!1718259 lt!1491662)))

(declare-fun b!4188192 () Bool)

(assert (=> b!4188192 (= e!2599982 (not lt!1491662))))

(declare-fun b!4188193 () Bool)

(assert (=> b!4188193 (= e!2599985 e!2599984)))

(declare-fun res!1718256 () Bool)

(assert (=> b!4188193 (=> res!1718256 e!2599984)))

(assert (=> b!4188193 (= res!1718256 call!292039)))

(assert (= (and d!1235588 c!714819) b!4188181))

(assert (= (and d!1235588 (not c!714819)) b!4188188))

(assert (= (and d!1235588 c!714821) b!4188184))

(assert (= (and d!1235588 (not c!714821)) b!4188182))

(assert (= (and b!4188182 c!714820) b!4188192))

(assert (= (and b!4188182 (not c!714820)) b!4188180))

(assert (= (and b!4188180 (not res!1718257)) b!4188191))

(assert (= (and b!4188191 res!1718259) b!4188190))

(assert (= (and b!4188190 res!1718262) b!4188185))

(assert (= (and b!4188185 res!1718260) b!4188187))

(assert (= (and b!4188191 (not res!1718258)) b!4188183))

(assert (= (and b!4188183 res!1718263) b!4188193))

(assert (= (and b!4188193 (not res!1718256)) b!4188186))

(assert (= (and b!4188186 (not res!1718261)) b!4188189))

(assert (= (or b!4188184 b!4188190 b!4188193) bm!292034))

(declare-fun m!4777111 () Bool)

(assert (=> b!4188188 m!4777111))

(assert (=> b!4188188 m!4777111))

(declare-fun m!4777113 () Bool)

(assert (=> b!4188188 m!4777113))

(declare-fun m!4777115 () Bool)

(assert (=> b!4188188 m!4777115))

(assert (=> b!4188188 m!4777113))

(assert (=> b!4188188 m!4777115))

(declare-fun m!4777117 () Bool)

(assert (=> b!4188188 m!4777117))

(assert (=> b!4188189 m!4777111))

(declare-fun m!4777119 () Bool)

(assert (=> d!1235588 m!4777119))

(assert (=> d!1235588 m!4777061))

(assert (=> bm!292034 m!4777119))

(assert (=> b!4188186 m!4777115))

(assert (=> b!4188186 m!4777115))

(declare-fun m!4777121 () Bool)

(assert (=> b!4188186 m!4777121))

(declare-fun m!4777123 () Bool)

(assert (=> b!4188181 m!4777123))

(assert (=> b!4188185 m!4777115))

(assert (=> b!4188185 m!4777115))

(assert (=> b!4188185 m!4777121))

(assert (=> b!4188187 m!4777111))

(assert (=> b!4188102 d!1235588))

(declare-fun d!1235602 () Bool)

(assert (=> d!1235602 (= (isEmpty!27222 lt!1491640) (not ((_ is Some!9855) lt!1491640)))))

(assert (=> b!4188091 d!1235602))

(declare-fun d!1235606 () Bool)

(assert (=> d!1235606 (ruleValid!3380 thiss!25986 rBis!167)))

(declare-fun lt!1491668 () Unit!65077)

(declare-fun choose!25645 (LexerInterface!7255 Rule!15124 List!46115) Unit!65077)

(assert (=> d!1235606 (= lt!1491668 (choose!25645 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235606 (contains!9471 rules!3843 rBis!167)))

(assert (=> d!1235606 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2386 thiss!25986 rBis!167 rules!3843) lt!1491668)))

(declare-fun bs!596564 () Bool)

(assert (= bs!596564 d!1235606))

(assert (=> bs!596564 m!4777067))

(declare-fun m!4777129 () Bool)

(assert (=> bs!596564 m!4777129))

(assert (=> bs!596564 m!4777029))

(assert (=> b!4188091 d!1235606))

(declare-fun b!4188247 () Bool)

(declare-fun res!1718304 () Bool)

(declare-fun e!2600014 () Bool)

(assert (=> b!4188247 (=> (not res!1718304) (not e!2600014))))

(declare-fun lt!1491699 () Option!9856)

(assert (=> b!4188247 (= res!1718304 (< (size!33778 (_2!25029 (get!14952 lt!1491699))) (size!33778 input!3342)))))

(declare-fun b!4188248 () Bool)

(declare-fun res!1718302 () Bool)

(assert (=> b!4188248 (=> (not res!1718302) (not e!2600014))))

(assert (=> b!4188248 (= res!1718302 (= (++!11734 (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491699)))) (_2!25029 (get!14952 lt!1491699))) input!3342))))

(declare-fun d!1235610 () Bool)

(declare-fun e!2600015 () Bool)

(assert (=> d!1235610 e!2600015))

(declare-fun res!1718303 () Bool)

(assert (=> d!1235610 (=> res!1718303 e!2600015)))

(assert (=> d!1235610 (= res!1718303 (isEmpty!27222 lt!1491699))))

(declare-fun e!2600017 () Option!9856)

(assert (=> d!1235610 (= lt!1491699 e!2600017)))

(declare-fun c!714831 () Bool)

(declare-datatypes ((tuple2!43794 0))(
  ( (tuple2!43795 (_1!25031 List!46114) (_2!25031 List!46114)) )
))
(declare-fun lt!1491700 () tuple2!43794)

(assert (=> d!1235610 (= c!714831 (isEmpty!27225 (_1!25031 lt!1491700)))))

(declare-fun findLongestMatch!1514 (Regex!12567 List!46114) tuple2!43794)

(assert (=> d!1235610 (= lt!1491700 (findLongestMatch!1514 (regex!7662 rBis!167) input!3342))))

(assert (=> d!1235610 (ruleValid!3380 thiss!25986 rBis!167)))

(assert (=> d!1235610 (= (maxPrefixOneRule!3264 thiss!25986 rBis!167 input!3342) lt!1491699)))

(declare-fun b!4188249 () Bool)

(assert (=> b!4188249 (= e!2600015 e!2600014)))

(declare-fun res!1718299 () Bool)

(assert (=> b!4188249 (=> (not res!1718299) (not e!2600014))))

(assert (=> b!4188249 (= res!1718299 (matchR!6306 (regex!7662 rBis!167) (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491699))))))))

(declare-fun b!4188250 () Bool)

(assert (=> b!4188250 (= e!2600017 None!9855)))

(declare-fun b!4188251 () Bool)

(assert (=> b!4188251 (= e!2600014 (= (size!33777 (_1!25029 (get!14952 lt!1491699))) (size!33778 (originalCharacters!8050 (_1!25029 (get!14952 lt!1491699))))))))

(declare-fun b!4188252 () Bool)

(declare-fun res!1718301 () Bool)

(assert (=> b!4188252 (=> (not res!1718301) (not e!2600014))))

(assert (=> b!4188252 (= res!1718301 (= (value!238899 (_1!25029 (get!14952 lt!1491699))) (apply!10627 (transformation!7662 (rule!10738 (_1!25029 (get!14952 lt!1491699)))) (seqFromList!5687 (originalCharacters!8050 (_1!25029 (get!14952 lt!1491699)))))))))

(declare-fun b!4188253 () Bool)

(declare-fun res!1718305 () Bool)

(assert (=> b!4188253 (=> (not res!1718305) (not e!2600014))))

(assert (=> b!4188253 (= res!1718305 (= (rule!10738 (_1!25029 (get!14952 lt!1491699))) rBis!167))))

(declare-fun b!4188254 () Bool)

(assert (=> b!4188254 (= e!2600017 (Some!9855 (tuple2!43791 (Token!14039 (apply!10627 (transformation!7662 rBis!167) (seqFromList!5687 (_1!25031 lt!1491700))) rBis!167 (size!33779 (seqFromList!5687 (_1!25031 lt!1491700))) (_1!25031 lt!1491700)) (_2!25031 lt!1491700))))))

(declare-fun lt!1491703 () Unit!65077)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1574 (Regex!12567 List!46114) Unit!65077)

(assert (=> b!4188254 (= lt!1491703 (longestMatchIsAcceptedByMatchOrIsEmpty!1574 (regex!7662 rBis!167) input!3342))))

(declare-fun res!1718300 () Bool)

(declare-fun findLongestMatchInner!1601 (Regex!12567 List!46114 Int List!46114 List!46114 Int) tuple2!43794)

(assert (=> b!4188254 (= res!1718300 (isEmpty!27225 (_1!25031 (findLongestMatchInner!1601 (regex!7662 rBis!167) Nil!45990 (size!33778 Nil!45990) input!3342 input!3342 (size!33778 input!3342)))))))

(declare-fun e!2600016 () Bool)

(assert (=> b!4188254 (=> res!1718300 e!2600016)))

(assert (=> b!4188254 e!2600016))

(declare-fun lt!1491701 () Unit!65077)

(assert (=> b!4188254 (= lt!1491701 lt!1491703)))

(declare-fun lt!1491702 () Unit!65077)

(assert (=> b!4188254 (= lt!1491702 (lemmaSemiInverse!2428 (transformation!7662 rBis!167) (seqFromList!5687 (_1!25031 lt!1491700))))))

(declare-fun b!4188255 () Bool)

(assert (=> b!4188255 (= e!2600016 (matchR!6306 (regex!7662 rBis!167) (_1!25031 (findLongestMatchInner!1601 (regex!7662 rBis!167) Nil!45990 (size!33778 Nil!45990) input!3342 input!3342 (size!33778 input!3342)))))))

(assert (= (and d!1235610 c!714831) b!4188250))

(assert (= (and d!1235610 (not c!714831)) b!4188254))

(assert (= (and b!4188254 (not res!1718300)) b!4188255))

(assert (= (and d!1235610 (not res!1718303)) b!4188249))

(assert (= (and b!4188249 res!1718299) b!4188248))

(assert (= (and b!4188248 res!1718302) b!4188247))

(assert (= (and b!4188247 res!1718304) b!4188253))

(assert (= (and b!4188253 res!1718305) b!4188252))

(assert (= (and b!4188252 res!1718301) b!4188251))

(declare-fun m!4777179 () Bool)

(assert (=> d!1235610 m!4777179))

(declare-fun m!4777181 () Bool)

(assert (=> d!1235610 m!4777181))

(declare-fun m!4777183 () Bool)

(assert (=> d!1235610 m!4777183))

(assert (=> d!1235610 m!4777067))

(declare-fun m!4777185 () Bool)

(assert (=> b!4188255 m!4777185))

(assert (=> b!4188255 m!4777007))

(assert (=> b!4188255 m!4777185))

(assert (=> b!4188255 m!4777007))

(declare-fun m!4777187 () Bool)

(assert (=> b!4188255 m!4777187))

(declare-fun m!4777189 () Bool)

(assert (=> b!4188255 m!4777189))

(declare-fun m!4777191 () Bool)

(assert (=> b!4188252 m!4777191))

(declare-fun m!4777193 () Bool)

(assert (=> b!4188252 m!4777193))

(assert (=> b!4188252 m!4777193))

(declare-fun m!4777195 () Bool)

(assert (=> b!4188252 m!4777195))

(assert (=> b!4188253 m!4777191))

(declare-fun m!4777197 () Bool)

(assert (=> b!4188254 m!4777197))

(declare-fun m!4777199 () Bool)

(assert (=> b!4188254 m!4777199))

(declare-fun m!4777201 () Bool)

(assert (=> b!4188254 m!4777201))

(assert (=> b!4188254 m!4777185))

(assert (=> b!4188254 m!4777007))

(assert (=> b!4188254 m!4777187))

(declare-fun m!4777203 () Bool)

(assert (=> b!4188254 m!4777203))

(assert (=> b!4188254 m!4777197))

(declare-fun m!4777205 () Bool)

(assert (=> b!4188254 m!4777205))

(assert (=> b!4188254 m!4777197))

(declare-fun m!4777207 () Bool)

(assert (=> b!4188254 m!4777207))

(assert (=> b!4188254 m!4777007))

(assert (=> b!4188254 m!4777197))

(assert (=> b!4188254 m!4777185))

(assert (=> b!4188247 m!4777191))

(declare-fun m!4777209 () Bool)

(assert (=> b!4188247 m!4777209))

(assert (=> b!4188247 m!4777007))

(assert (=> b!4188249 m!4777191))

(declare-fun m!4777211 () Bool)

(assert (=> b!4188249 m!4777211))

(assert (=> b!4188249 m!4777211))

(declare-fun m!4777213 () Bool)

(assert (=> b!4188249 m!4777213))

(assert (=> b!4188249 m!4777213))

(declare-fun m!4777215 () Bool)

(assert (=> b!4188249 m!4777215))

(assert (=> b!4188248 m!4777191))

(assert (=> b!4188248 m!4777211))

(assert (=> b!4188248 m!4777211))

(assert (=> b!4188248 m!4777213))

(assert (=> b!4188248 m!4777213))

(declare-fun m!4777217 () Bool)

(assert (=> b!4188248 m!4777217))

(assert (=> b!4188251 m!4777191))

(declare-fun m!4777219 () Bool)

(assert (=> b!4188251 m!4777219))

(assert (=> b!4188091 d!1235610))

(declare-fun d!1235618 () Bool)

(assert (=> d!1235618 (<= (size!33778 pBis!107) (size!33778 input!3342))))

(declare-fun lt!1491706 () Unit!65077)

(declare-fun choose!25646 (List!46114 List!46114) Unit!65077)

(assert (=> d!1235618 (= lt!1491706 (choose!25646 pBis!107 input!3342))))

(assert (=> d!1235618 (isPrefix!4519 pBis!107 input!3342)))

(assert (=> d!1235618 (= (lemmaIsPrefixThenSmallerEqSize!549 pBis!107 input!3342) lt!1491706)))

(declare-fun bs!596565 () Bool)

(assert (= bs!596565 d!1235618))

(assert (=> bs!596565 m!4777073))

(assert (=> bs!596565 m!4777007))

(declare-fun m!4777221 () Bool)

(assert (=> bs!596565 m!4777221))

(assert (=> bs!596565 m!4777059))

(assert (=> b!4188091 d!1235618))

(declare-fun d!1235620 () Bool)

(declare-fun lt!1491709 () Int)

(assert (=> d!1235620 (>= lt!1491709 0)))

(declare-fun e!2600020 () Int)

(assert (=> d!1235620 (= lt!1491709 e!2600020)))

(declare-fun c!714834 () Bool)

(assert (=> d!1235620 (= c!714834 ((_ is Nil!45990) input!3342))))

(assert (=> d!1235620 (= (size!33778 input!3342) lt!1491709)))

(declare-fun b!4188260 () Bool)

(assert (=> b!4188260 (= e!2600020 0)))

(declare-fun b!4188261 () Bool)

(assert (=> b!4188261 (= e!2600020 (+ 1 (size!33778 (t!345757 input!3342))))))

(assert (= (and d!1235620 c!714834) b!4188260))

(assert (= (and d!1235620 (not c!714834)) b!4188261))

(declare-fun m!4777223 () Bool)

(assert (=> b!4188261 m!4777223))

(assert (=> b!4188091 d!1235620))

(declare-fun d!1235622 () Bool)

(declare-fun lt!1491712 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7156 (List!46115) (InoxSet Rule!15124))

(assert (=> d!1235622 (= lt!1491712 (select (content!7156 rules!3843) r!4142))))

(declare-fun e!2600025 () Bool)

(assert (=> d!1235622 (= lt!1491712 e!2600025)))

(declare-fun res!1718311 () Bool)

(assert (=> d!1235622 (=> (not res!1718311) (not e!2600025))))

(assert (=> d!1235622 (= res!1718311 ((_ is Cons!45991) rules!3843))))

(assert (=> d!1235622 (= (contains!9471 rules!3843 r!4142) lt!1491712)))

(declare-fun b!4188266 () Bool)

(declare-fun e!2600026 () Bool)

(assert (=> b!4188266 (= e!2600025 e!2600026)))

(declare-fun res!1718310 () Bool)

(assert (=> b!4188266 (=> res!1718310 e!2600026)))

(assert (=> b!4188266 (= res!1718310 (= (h!51411 rules!3843) r!4142))))

(declare-fun b!4188267 () Bool)

(assert (=> b!4188267 (= e!2600026 (contains!9471 (t!345758 rules!3843) r!4142))))

(assert (= (and d!1235622 res!1718311) b!4188266))

(assert (= (and b!4188266 (not res!1718310)) b!4188267))

(declare-fun m!4777225 () Bool)

(assert (=> d!1235622 m!4777225))

(declare-fun m!4777227 () Bool)

(assert (=> d!1235622 m!4777227))

(declare-fun m!4777229 () Bool)

(assert (=> b!4188267 m!4777229))

(assert (=> b!4188092 d!1235622))

(declare-fun d!1235624 () Bool)

(declare-fun lt!1491713 () Bool)

(assert (=> d!1235624 (= lt!1491713 (select (content!7156 rules!3843) rBis!167))))

(declare-fun e!2600027 () Bool)

(assert (=> d!1235624 (= lt!1491713 e!2600027)))

(declare-fun res!1718313 () Bool)

(assert (=> d!1235624 (=> (not res!1718313) (not e!2600027))))

(assert (=> d!1235624 (= res!1718313 ((_ is Cons!45991) rules!3843))))

(assert (=> d!1235624 (= (contains!9471 rules!3843 rBis!167) lt!1491713)))

(declare-fun b!4188268 () Bool)

(declare-fun e!2600028 () Bool)

(assert (=> b!4188268 (= e!2600027 e!2600028)))

(declare-fun res!1718312 () Bool)

(assert (=> b!4188268 (=> res!1718312 e!2600028)))

(assert (=> b!4188268 (= res!1718312 (= (h!51411 rules!3843) rBis!167))))

(declare-fun b!4188269 () Bool)

(assert (=> b!4188269 (= e!2600028 (contains!9471 (t!345758 rules!3843) rBis!167))))

(assert (= (and d!1235624 res!1718313) b!4188268))

(assert (= (and b!4188268 (not res!1718312)) b!4188269))

(assert (=> d!1235624 m!4777225))

(declare-fun m!4777231 () Bool)

(assert (=> d!1235624 m!4777231))

(declare-fun m!4777233 () Bool)

(assert (=> b!4188269 m!4777233))

(assert (=> b!4188113 d!1235624))

(declare-fun d!1235626 () Bool)

(assert (=> d!1235626 (= (inv!60535 (tag!8526 rBis!167)) (= (mod (str.len (value!238898 (tag!8526 rBis!167))) 2) 0))))

(assert (=> b!4188114 d!1235626))

(declare-fun d!1235628 () Bool)

(declare-fun res!1718316 () Bool)

(declare-fun e!2600031 () Bool)

(assert (=> d!1235628 (=> (not res!1718316) (not e!2600031))))

(declare-fun semiInverseModEq!3320 (Int Int) Bool)

(assert (=> d!1235628 (= res!1718316 (semiInverseModEq!3320 (toChars!10217 (transformation!7662 rBis!167)) (toValue!10358 (transformation!7662 rBis!167))))))

(assert (=> d!1235628 (= (inv!60537 (transformation!7662 rBis!167)) e!2600031)))

(declare-fun b!4188272 () Bool)

(declare-fun equivClasses!3219 (Int Int) Bool)

(assert (=> b!4188272 (= e!2600031 (equivClasses!3219 (toChars!10217 (transformation!7662 rBis!167)) (toValue!10358 (transformation!7662 rBis!167))))))

(assert (= (and d!1235628 res!1718316) b!4188272))

(declare-fun m!4777235 () Bool)

(assert (=> d!1235628 m!4777235))

(declare-fun m!4777237 () Bool)

(assert (=> b!4188272 m!4777237))

(assert (=> b!4188114 d!1235628))

(declare-fun d!1235630 () Bool)

(assert (=> d!1235630 (= (isEmpty!27223 rules!3843) ((_ is Nil!45991) rules!3843))))

(assert (=> b!4188103 d!1235630))

(declare-fun b!4188283 () Bool)

(declare-fun e!2600038 () Bool)

(assert (=> b!4188283 (= e!2600038 (isPrefix!4519 (tail!6735 lt!1491650) (tail!6735 input!3342)))))

(declare-fun d!1235632 () Bool)

(declare-fun e!2600040 () Bool)

(assert (=> d!1235632 e!2600040))

(declare-fun res!1718328 () Bool)

(assert (=> d!1235632 (=> res!1718328 e!2600040)))

(declare-fun lt!1491716 () Bool)

(assert (=> d!1235632 (= res!1718328 (not lt!1491716))))

(declare-fun e!2600039 () Bool)

(assert (=> d!1235632 (= lt!1491716 e!2600039)))

(declare-fun res!1718325 () Bool)

(assert (=> d!1235632 (=> res!1718325 e!2600039)))

(assert (=> d!1235632 (= res!1718325 ((_ is Nil!45990) lt!1491650))))

(assert (=> d!1235632 (= (isPrefix!4519 lt!1491650 input!3342) lt!1491716)))

(declare-fun b!4188281 () Bool)

(assert (=> b!4188281 (= e!2600039 e!2600038)))

(declare-fun res!1718327 () Bool)

(assert (=> b!4188281 (=> (not res!1718327) (not e!2600038))))

(assert (=> b!4188281 (= res!1718327 (not ((_ is Nil!45990) input!3342)))))

(declare-fun b!4188284 () Bool)

(assert (=> b!4188284 (= e!2600040 (>= (size!33778 input!3342) (size!33778 lt!1491650)))))

(declare-fun b!4188282 () Bool)

(declare-fun res!1718326 () Bool)

(assert (=> b!4188282 (=> (not res!1718326) (not e!2600038))))

(assert (=> b!4188282 (= res!1718326 (= (head!8888 lt!1491650) (head!8888 input!3342)))))

(assert (= (and d!1235632 (not res!1718325)) b!4188281))

(assert (= (and b!4188281 res!1718327) b!4188282))

(assert (= (and b!4188282 res!1718326) b!4188283))

(assert (= (and d!1235632 (not res!1718328)) b!4188284))

(declare-fun m!4777239 () Bool)

(assert (=> b!4188283 m!4777239))

(declare-fun m!4777241 () Bool)

(assert (=> b!4188283 m!4777241))

(assert (=> b!4188283 m!4777239))

(assert (=> b!4188283 m!4777241))

(declare-fun m!4777243 () Bool)

(assert (=> b!4188283 m!4777243))

(assert (=> b!4188284 m!4777007))

(declare-fun m!4777245 () Bool)

(assert (=> b!4188284 m!4777245))

(declare-fun m!4777247 () Bool)

(assert (=> b!4188282 m!4777247))

(declare-fun m!4777249 () Bool)

(assert (=> b!4188282 m!4777249))

(assert (=> b!4188104 d!1235632))

(declare-fun c!714840 () Bool)

(declare-fun c!714839 () Bool)

(declare-fun bm!292041 () Bool)

(declare-fun call!292048 () Bool)

(assert (=> bm!292041 (= call!292048 (validRegex!5684 (ite c!714839 (reg!12896 (regex!7662 r!4142)) (ite c!714840 (regTwo!25647 (regex!7662 r!4142)) (regTwo!25646 (regex!7662 r!4142))))))))

(declare-fun b!4188303 () Bool)

(declare-fun e!2600057 () Bool)

(declare-fun e!2600058 () Bool)

(assert (=> b!4188303 (= e!2600057 e!2600058)))

(assert (=> b!4188303 (= c!714840 ((_ is Union!12567) (regex!7662 r!4142)))))

(declare-fun bm!292042 () Bool)

(declare-fun call!292047 () Bool)

(assert (=> bm!292042 (= call!292047 (validRegex!5684 (ite c!714840 (regOne!25647 (regex!7662 r!4142)) (regOne!25646 (regex!7662 r!4142)))))))

(declare-fun bm!292043 () Bool)

(declare-fun call!292046 () Bool)

(assert (=> bm!292043 (= call!292046 call!292048)))

(declare-fun d!1235634 () Bool)

(declare-fun res!1718341 () Bool)

(declare-fun e!2600061 () Bool)

(assert (=> d!1235634 (=> res!1718341 e!2600061)))

(assert (=> d!1235634 (= res!1718341 ((_ is ElementMatch!12567) (regex!7662 r!4142)))))

(assert (=> d!1235634 (= (validRegex!5684 (regex!7662 r!4142)) e!2600061)))

(declare-fun b!4188304 () Bool)

(declare-fun e!2600059 () Bool)

(assert (=> b!4188304 (= e!2600059 call!292046)))

(declare-fun b!4188305 () Bool)

(declare-fun e!2600060 () Bool)

(assert (=> b!4188305 (= e!2600060 call!292046)))

(declare-fun b!4188306 () Bool)

(declare-fun res!1718343 () Bool)

(assert (=> b!4188306 (=> (not res!1718343) (not e!2600060))))

(assert (=> b!4188306 (= res!1718343 call!292047)))

(assert (=> b!4188306 (= e!2600058 e!2600060)))

(declare-fun b!4188307 () Bool)

(assert (=> b!4188307 (= e!2600061 e!2600057)))

(assert (=> b!4188307 (= c!714839 ((_ is Star!12567) (regex!7662 r!4142)))))

(declare-fun b!4188308 () Bool)

(declare-fun e!2600055 () Bool)

(assert (=> b!4188308 (= e!2600055 e!2600059)))

(declare-fun res!1718340 () Bool)

(assert (=> b!4188308 (=> (not res!1718340) (not e!2600059))))

(assert (=> b!4188308 (= res!1718340 call!292047)))

(declare-fun b!4188309 () Bool)

(declare-fun e!2600056 () Bool)

(assert (=> b!4188309 (= e!2600057 e!2600056)))

(declare-fun res!1718342 () Bool)

(assert (=> b!4188309 (= res!1718342 (not (nullable!4411 (reg!12896 (regex!7662 r!4142)))))))

(assert (=> b!4188309 (=> (not res!1718342) (not e!2600056))))

(declare-fun b!4188310 () Bool)

(assert (=> b!4188310 (= e!2600056 call!292048)))

(declare-fun b!4188311 () Bool)

(declare-fun res!1718339 () Bool)

(assert (=> b!4188311 (=> res!1718339 e!2600055)))

(assert (=> b!4188311 (= res!1718339 (not ((_ is Concat!20460) (regex!7662 r!4142))))))

(assert (=> b!4188311 (= e!2600058 e!2600055)))

(assert (= (and d!1235634 (not res!1718341)) b!4188307))

(assert (= (and b!4188307 c!714839) b!4188309))

(assert (= (and b!4188307 (not c!714839)) b!4188303))

(assert (= (and b!4188309 res!1718342) b!4188310))

(assert (= (and b!4188303 c!714840) b!4188306))

(assert (= (and b!4188303 (not c!714840)) b!4188311))

(assert (= (and b!4188306 res!1718343) b!4188305))

(assert (= (and b!4188311 (not res!1718339)) b!4188308))

(assert (= (and b!4188308 res!1718340) b!4188304))

(assert (= (or b!4188305 b!4188304) bm!292043))

(assert (= (or b!4188306 b!4188308) bm!292042))

(assert (= (or b!4188310 bm!292043) bm!292041))

(declare-fun m!4777251 () Bool)

(assert (=> bm!292041 m!4777251))

(declare-fun m!4777253 () Bool)

(assert (=> bm!292042 m!4777253))

(declare-fun m!4777255 () Bool)

(assert (=> b!4188309 m!4777255))

(assert (=> b!4188093 d!1235634))

(declare-fun d!1235636 () Bool)

(declare-fun res!1718348 () Bool)

(declare-fun e!2600064 () Bool)

(assert (=> d!1235636 (=> (not res!1718348) (not e!2600064))))

(assert (=> d!1235636 (= res!1718348 (validRegex!5684 (regex!7662 rBis!167)))))

(assert (=> d!1235636 (= (ruleValid!3380 thiss!25986 rBis!167) e!2600064)))

(declare-fun b!4188316 () Bool)

(declare-fun res!1718349 () Bool)

(assert (=> b!4188316 (=> (not res!1718349) (not e!2600064))))

(assert (=> b!4188316 (= res!1718349 (not (nullable!4411 (regex!7662 rBis!167))))))

(declare-fun b!4188317 () Bool)

(assert (=> b!4188317 (= e!2600064 (not (= (tag!8526 rBis!167) (String!53327 ""))))))

(assert (= (and d!1235636 res!1718348) b!4188316))

(assert (= (and b!4188316 res!1718349) b!4188317))

(declare-fun m!4777257 () Bool)

(assert (=> d!1235636 m!4777257))

(declare-fun m!4777259 () Bool)

(assert (=> b!4188316 m!4777259))

(assert (=> b!4188111 d!1235636))

(declare-fun d!1235638 () Bool)

(declare-fun res!1718350 () Bool)

(declare-fun e!2600065 () Bool)

(assert (=> d!1235638 (=> (not res!1718350) (not e!2600065))))

(assert (=> d!1235638 (= res!1718350 (validRegex!5684 (regex!7662 r!4142)))))

(assert (=> d!1235638 (= (ruleValid!3380 thiss!25986 r!4142) e!2600065)))

(declare-fun b!4188318 () Bool)

(declare-fun res!1718351 () Bool)

(assert (=> b!4188318 (=> (not res!1718351) (not e!2600065))))

(assert (=> b!4188318 (= res!1718351 (not (nullable!4411 (regex!7662 r!4142))))))

(declare-fun b!4188319 () Bool)

(assert (=> b!4188319 (= e!2600065 (not (= (tag!8526 r!4142) (String!53327 ""))))))

(assert (= (and d!1235638 res!1718350) b!4188318))

(assert (= (and b!4188318 res!1718351) b!4188319))

(assert (=> d!1235638 m!4777061))

(assert (=> b!4188318 m!4777123))

(assert (=> b!4188101 d!1235638))

(declare-fun d!1235640 () Bool)

(declare-fun lt!1491717 () Int)

(assert (=> d!1235640 (>= lt!1491717 0)))

(declare-fun e!2600066 () Int)

(assert (=> d!1235640 (= lt!1491717 e!2600066)))

(declare-fun c!714841 () Bool)

(assert (=> d!1235640 (= c!714841 ((_ is Nil!45990) pBis!107))))

(assert (=> d!1235640 (= (size!33778 pBis!107) lt!1491717)))

(declare-fun b!4188320 () Bool)

(assert (=> b!4188320 (= e!2600066 0)))

(declare-fun b!4188321 () Bool)

(assert (=> b!4188321 (= e!2600066 (+ 1 (size!33778 (t!345757 pBis!107))))))

(assert (= (and d!1235640 c!714841) b!4188320))

(assert (= (and d!1235640 (not c!714841)) b!4188321))

(declare-fun m!4777261 () Bool)

(assert (=> b!4188321 m!4777261))

(assert (=> b!4188108 d!1235640))

(declare-fun d!1235642 () Bool)

(assert (=> d!1235642 (= (inv!60535 (tag!8526 r!4142)) (= (mod (str.len (value!238898 (tag!8526 r!4142))) 2) 0))))

(assert (=> b!4188097 d!1235642))

(declare-fun d!1235644 () Bool)

(declare-fun res!1718352 () Bool)

(declare-fun e!2600067 () Bool)

(assert (=> d!1235644 (=> (not res!1718352) (not e!2600067))))

(assert (=> d!1235644 (= res!1718352 (semiInverseModEq!3320 (toChars!10217 (transformation!7662 r!4142)) (toValue!10358 (transformation!7662 r!4142))))))

(assert (=> d!1235644 (= (inv!60537 (transformation!7662 r!4142)) e!2600067)))

(declare-fun b!4188322 () Bool)

(assert (=> b!4188322 (= e!2600067 (equivClasses!3219 (toChars!10217 (transformation!7662 r!4142)) (toValue!10358 (transformation!7662 r!4142))))))

(assert (= (and d!1235644 res!1718352) b!4188322))

(declare-fun m!4777263 () Bool)

(assert (=> d!1235644 m!4777263))

(declare-fun m!4777265 () Bool)

(assert (=> b!4188322 m!4777265))

(assert (=> b!4188097 d!1235644))

(declare-fun d!1235646 () Bool)

(assert (=> d!1235646 (= (inv!60535 (tag!8526 (h!51411 rules!3843))) (= (mod (str.len (value!238898 (tag!8526 (h!51411 rules!3843)))) 2) 0))))

(assert (=> b!4188098 d!1235646))

(declare-fun d!1235648 () Bool)

(declare-fun res!1718353 () Bool)

(declare-fun e!2600068 () Bool)

(assert (=> d!1235648 (=> (not res!1718353) (not e!2600068))))

(assert (=> d!1235648 (= res!1718353 (semiInverseModEq!3320 (toChars!10217 (transformation!7662 (h!51411 rules!3843))) (toValue!10358 (transformation!7662 (h!51411 rules!3843)))))))

(assert (=> d!1235648 (= (inv!60537 (transformation!7662 (h!51411 rules!3843))) e!2600068)))

(declare-fun b!4188323 () Bool)

(assert (=> b!4188323 (= e!2600068 (equivClasses!3219 (toChars!10217 (transformation!7662 (h!51411 rules!3843))) (toValue!10358 (transformation!7662 (h!51411 rules!3843)))))))

(assert (= (and d!1235648 res!1718353) b!4188323))

(declare-fun m!4777267 () Bool)

(assert (=> d!1235648 m!4777267))

(declare-fun m!4777269 () Bool)

(assert (=> b!4188323 m!4777269))

(assert (=> b!4188098 d!1235648))

(declare-fun d!1235650 () Bool)

(declare-fun lt!1491720 () List!46114)

(assert (=> d!1235650 (= (++!11734 p!2959 lt!1491720) input!3342)))

(declare-fun e!2600071 () List!46114)

(assert (=> d!1235650 (= lt!1491720 e!2600071)))

(declare-fun c!714844 () Bool)

(assert (=> d!1235650 (= c!714844 ((_ is Cons!45990) p!2959))))

(assert (=> d!1235650 (>= (size!33778 input!3342) (size!33778 p!2959))))

(assert (=> d!1235650 (= (getSuffix!2812 input!3342 p!2959) lt!1491720)))

(declare-fun b!4188328 () Bool)

(assert (=> b!4188328 (= e!2600071 (getSuffix!2812 (tail!6735 input!3342) (t!345757 p!2959)))))

(declare-fun b!4188329 () Bool)

(assert (=> b!4188329 (= e!2600071 input!3342)))

(assert (= (and d!1235650 c!714844) b!4188328))

(assert (= (and d!1235650 (not c!714844)) b!4188329))

(declare-fun m!4777271 () Bool)

(assert (=> d!1235650 m!4777271))

(assert (=> d!1235650 m!4777007))

(assert (=> d!1235650 m!4777053))

(assert (=> b!4188328 m!4777241))

(assert (=> b!4188328 m!4777241))

(declare-fun m!4777273 () Bool)

(assert (=> b!4188328 m!4777273))

(assert (=> b!4188109 d!1235650))

(declare-fun b!4188485 () Bool)

(declare-fun e!2600159 () Bool)

(assert (=> b!4188485 (= e!2600159 true)))

(declare-fun d!1235652 () Bool)

(assert (=> d!1235652 e!2600159))

(assert (= d!1235652 b!4188485))

(declare-fun lambda!129463 () Int)

(declare-fun order!24313 () Int)

(declare-fun order!24315 () Int)

(declare-fun dynLambda!19775 (Int Int) Int)

(declare-fun dynLambda!19776 (Int Int) Int)

(assert (=> b!4188485 (< (dynLambda!19775 order!24313 (toValue!10358 (transformation!7662 r!4142))) (dynLambda!19776 order!24315 lambda!129463))))

(declare-fun order!24317 () Int)

(declare-fun dynLambda!19777 (Int Int) Int)

(assert (=> b!4188485 (< (dynLambda!19777 order!24317 (toChars!10217 (transformation!7662 r!4142))) (dynLambda!19776 order!24315 lambda!129463))))

(declare-fun dynLambda!19778 (Int TokenValue!7892) BalanceConc!27340)

(declare-fun dynLambda!19779 (Int BalanceConc!27340) TokenValue!7892)

(assert (=> d!1235652 (= (list!16614 (dynLambda!19778 (toChars!10217 (transformation!7662 r!4142)) (dynLambda!19779 (toValue!10358 (transformation!7662 r!4142)) lt!1491647))) (list!16614 lt!1491647))))

(declare-fun lt!1491766 () Unit!65077)

(declare-fun ForallOf!1054 (Int BalanceConc!27340) Unit!65077)

(assert (=> d!1235652 (= lt!1491766 (ForallOf!1054 lambda!129463 lt!1491647))))

(assert (=> d!1235652 (= (lemmaSemiInverse!2428 (transformation!7662 r!4142) lt!1491647) lt!1491766)))

(declare-fun b_lambda!123161 () Bool)

(assert (=> (not b_lambda!123161) (not d!1235652)))

(declare-fun t!345772 () Bool)

(declare-fun tb!250871 () Bool)

(assert (=> (and b!4188115 (= (toChars!10217 (transformation!7662 r!4142)) (toChars!10217 (transformation!7662 r!4142))) t!345772) tb!250871))

(declare-fun e!2600162 () Bool)

(declare-fun b!4188490 () Bool)

(declare-fun tp!1279876 () Bool)

(declare-fun inv!60540 (Conc!13873) Bool)

(assert (=> b!4188490 (= e!2600162 (and (inv!60540 (c!714809 (dynLambda!19778 (toChars!10217 (transformation!7662 r!4142)) (dynLambda!19779 (toValue!10358 (transformation!7662 r!4142)) lt!1491647)))) tp!1279876))))

(declare-fun result!305720 () Bool)

(declare-fun inv!60541 (BalanceConc!27340) Bool)

(assert (=> tb!250871 (= result!305720 (and (inv!60541 (dynLambda!19778 (toChars!10217 (transformation!7662 r!4142)) (dynLambda!19779 (toValue!10358 (transformation!7662 r!4142)) lt!1491647))) e!2600162))))

(assert (= tb!250871 b!4188490))

(declare-fun m!4777433 () Bool)

(assert (=> b!4188490 m!4777433))

(declare-fun m!4777435 () Bool)

(assert (=> tb!250871 m!4777435))

(assert (=> d!1235652 t!345772))

(declare-fun b_and!328087 () Bool)

(assert (= b_and!328059 (and (=> t!345772 result!305720) b_and!328087)))

(declare-fun tb!250875 () Bool)

(declare-fun t!345776 () Bool)

(assert (=> (and b!4188107 (= (toChars!10217 (transformation!7662 rBis!167)) (toChars!10217 (transformation!7662 r!4142))) t!345776) tb!250875))

(declare-fun result!305726 () Bool)

(assert (= result!305726 result!305720))

(assert (=> d!1235652 t!345776))

(declare-fun b_and!328089 () Bool)

(assert (= b_and!328063 (and (=> t!345776 result!305726) b_and!328089)))

(declare-fun tb!250877 () Bool)

(declare-fun t!345778 () Bool)

(assert (=> (and b!4188095 (= (toChars!10217 (transformation!7662 (h!51411 rules!3843))) (toChars!10217 (transformation!7662 r!4142))) t!345778) tb!250877))

(declare-fun result!305728 () Bool)

(assert (= result!305728 result!305720))

(assert (=> d!1235652 t!345778))

(declare-fun b_and!328093 () Bool)

(assert (= b_and!328067 (and (=> t!345778 result!305728) b_and!328093)))

(declare-fun b_lambda!123165 () Bool)

(assert (=> (not b_lambda!123165) (not d!1235652)))

(declare-fun t!345784 () Bool)

(declare-fun tb!250883 () Bool)

(assert (=> (and b!4188115 (= (toValue!10358 (transformation!7662 r!4142)) (toValue!10358 (transformation!7662 r!4142))) t!345784) tb!250883))

(declare-fun result!305734 () Bool)

(declare-fun inv!21 (TokenValue!7892) Bool)

(assert (=> tb!250883 (= result!305734 (inv!21 (dynLambda!19779 (toValue!10358 (transformation!7662 r!4142)) lt!1491647)))))

(declare-fun m!4777445 () Bool)

(assert (=> tb!250883 m!4777445))

(assert (=> d!1235652 t!345784))

(declare-fun b_and!328099 () Bool)

(assert (= b_and!328057 (and (=> t!345784 result!305734) b_and!328099)))

(declare-fun t!345786 () Bool)

(declare-fun tb!250885 () Bool)

(assert (=> (and b!4188107 (= (toValue!10358 (transformation!7662 rBis!167)) (toValue!10358 (transformation!7662 r!4142))) t!345786) tb!250885))

(declare-fun result!305738 () Bool)

(assert (= result!305738 result!305734))

(assert (=> d!1235652 t!345786))

(declare-fun b_and!328101 () Bool)

(assert (= b_and!328061 (and (=> t!345786 result!305738) b_and!328101)))

(declare-fun t!345788 () Bool)

(declare-fun tb!250887 () Bool)

(assert (=> (and b!4188095 (= (toValue!10358 (transformation!7662 (h!51411 rules!3843))) (toValue!10358 (transformation!7662 r!4142))) t!345788) tb!250887))

(declare-fun result!305740 () Bool)

(assert (= result!305740 result!305734))

(assert (=> d!1235652 t!345788))

(declare-fun b_and!328103 () Bool)

(assert (= b_and!328065 (and (=> t!345788 result!305740) b_and!328103)))

(declare-fun m!4777447 () Bool)

(assert (=> d!1235652 m!4777447))

(declare-fun m!4777449 () Bool)

(assert (=> d!1235652 m!4777449))

(declare-fun m!4777451 () Bool)

(assert (=> d!1235652 m!4777451))

(assert (=> d!1235652 m!4777447))

(declare-fun m!4777453 () Bool)

(assert (=> d!1235652 m!4777453))

(declare-fun m!4777455 () Bool)

(assert (=> d!1235652 m!4777455))

(assert (=> d!1235652 m!4777451))

(assert (=> b!4188109 d!1235652))

(declare-fun b!4188496 () Bool)

(declare-fun e!2600167 () Bool)

(assert (=> b!4188496 (= e!2600167 (isPrefix!4519 (tail!6735 input!3342) (tail!6735 input!3342)))))

(declare-fun d!1235702 () Bool)

(declare-fun e!2600169 () Bool)

(assert (=> d!1235702 e!2600169))

(declare-fun res!1718450 () Bool)

(assert (=> d!1235702 (=> res!1718450 e!2600169)))

(declare-fun lt!1491770 () Bool)

(assert (=> d!1235702 (= res!1718450 (not lt!1491770))))

(declare-fun e!2600168 () Bool)

(assert (=> d!1235702 (= lt!1491770 e!2600168)))

(declare-fun res!1718447 () Bool)

(assert (=> d!1235702 (=> res!1718447 e!2600168)))

(assert (=> d!1235702 (= res!1718447 ((_ is Nil!45990) input!3342))))

(assert (=> d!1235702 (= (isPrefix!4519 input!3342 input!3342) lt!1491770)))

(declare-fun b!4188494 () Bool)

(assert (=> b!4188494 (= e!2600168 e!2600167)))

(declare-fun res!1718449 () Bool)

(assert (=> b!4188494 (=> (not res!1718449) (not e!2600167))))

(assert (=> b!4188494 (= res!1718449 (not ((_ is Nil!45990) input!3342)))))

(declare-fun b!4188497 () Bool)

(assert (=> b!4188497 (= e!2600169 (>= (size!33778 input!3342) (size!33778 input!3342)))))

(declare-fun b!4188495 () Bool)

(declare-fun res!1718448 () Bool)

(assert (=> b!4188495 (=> (not res!1718448) (not e!2600167))))

(assert (=> b!4188495 (= res!1718448 (= (head!8888 input!3342) (head!8888 input!3342)))))

(assert (= (and d!1235702 (not res!1718447)) b!4188494))

(assert (= (and b!4188494 res!1718449) b!4188495))

(assert (= (and b!4188495 res!1718448) b!4188496))

(assert (= (and d!1235702 (not res!1718450)) b!4188497))

(assert (=> b!4188496 m!4777241))

(assert (=> b!4188496 m!4777241))

(assert (=> b!4188496 m!4777241))

(assert (=> b!4188496 m!4777241))

(declare-fun m!4777457 () Bool)

(assert (=> b!4188496 m!4777457))

(assert (=> b!4188497 m!4777007))

(assert (=> b!4188497 m!4777007))

(assert (=> b!4188495 m!4777249))

(assert (=> b!4188495 m!4777249))

(assert (=> b!4188109 d!1235702))

(declare-fun d!1235704 () Bool)

(declare-fun fromListB!2603 (List!46114) BalanceConc!27340)

(assert (=> d!1235704 (= (seqFromList!5687 p!2959) (fromListB!2603 p!2959))))

(declare-fun bs!596571 () Bool)

(assert (= bs!596571 d!1235704))

(declare-fun m!4777463 () Bool)

(assert (=> bs!596571 m!4777463))

(assert (=> b!4188109 d!1235704))

(declare-fun d!1235710 () Bool)

(assert (=> d!1235710 (isPrefix!4519 input!3342 input!3342)))

(declare-fun lt!1491776 () Unit!65077)

(declare-fun choose!25649 (List!46114 List!46114) Unit!65077)

(assert (=> d!1235710 (= lt!1491776 (choose!25649 input!3342 input!3342))))

(assert (=> d!1235710 (= (lemmaIsPrefixRefl!2948 input!3342 input!3342) lt!1491776)))

(declare-fun bs!596572 () Bool)

(assert (= bs!596572 d!1235710))

(assert (=> bs!596572 m!4777047))

(declare-fun m!4777469 () Bool)

(assert (=> bs!596572 m!4777469))

(assert (=> b!4188109 d!1235710))

(declare-fun d!1235714 () Bool)

(assert (=> d!1235714 (= (apply!10627 (transformation!7662 r!4142) lt!1491647) (dynLambda!19779 (toValue!10358 (transformation!7662 r!4142)) lt!1491647))))

(declare-fun b_lambda!123167 () Bool)

(assert (=> (not b_lambda!123167) (not d!1235714)))

(assert (=> d!1235714 t!345784))

(declare-fun b_and!328105 () Bool)

(assert (= b_and!328099 (and (=> t!345784 result!305734) b_and!328105)))

(assert (=> d!1235714 t!345786))

(declare-fun b_and!328107 () Bool)

(assert (= b_and!328101 (and (=> t!345786 result!305738) b_and!328107)))

(assert (=> d!1235714 t!345788))

(declare-fun b_and!328109 () Bool)

(assert (= b_and!328103 (and (=> t!345788 result!305740) b_and!328109)))

(assert (=> d!1235714 m!4777451))

(assert (=> b!4188109 d!1235714))

(declare-fun b!4188517 () Bool)

(declare-fun res!1718461 () Bool)

(declare-fun e!2600177 () Bool)

(assert (=> b!4188517 (=> (not res!1718461) (not e!2600177))))

(declare-fun lt!1491777 () Option!9856)

(assert (=> b!4188517 (= res!1718461 (< (size!33778 (_2!25029 (get!14952 lt!1491777))) (size!33778 input!3342)))))

(declare-fun b!4188518 () Bool)

(declare-fun res!1718459 () Bool)

(assert (=> b!4188518 (=> (not res!1718459) (not e!2600177))))

(assert (=> b!4188518 (= res!1718459 (= (++!11734 (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491777)))) (_2!25029 (get!14952 lt!1491777))) input!3342))))

(declare-fun d!1235716 () Bool)

(declare-fun e!2600178 () Bool)

(assert (=> d!1235716 e!2600178))

(declare-fun res!1718460 () Bool)

(assert (=> d!1235716 (=> res!1718460 e!2600178)))

(assert (=> d!1235716 (= res!1718460 (isEmpty!27222 lt!1491777))))

(declare-fun e!2600180 () Option!9856)

(assert (=> d!1235716 (= lt!1491777 e!2600180)))

(declare-fun c!714870 () Bool)

(declare-fun lt!1491778 () tuple2!43794)

(assert (=> d!1235716 (= c!714870 (isEmpty!27225 (_1!25031 lt!1491778)))))

(assert (=> d!1235716 (= lt!1491778 (findLongestMatch!1514 (regex!7662 r!4142) input!3342))))

(assert (=> d!1235716 (ruleValid!3380 thiss!25986 r!4142)))

(assert (=> d!1235716 (= (maxPrefixOneRule!3264 thiss!25986 r!4142 input!3342) lt!1491777)))

(declare-fun b!4188519 () Bool)

(assert (=> b!4188519 (= e!2600178 e!2600177)))

(declare-fun res!1718456 () Bool)

(assert (=> b!4188519 (=> (not res!1718456) (not e!2600177))))

(assert (=> b!4188519 (= res!1718456 (matchR!6306 (regex!7662 r!4142) (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491777))))))))

(declare-fun b!4188520 () Bool)

(assert (=> b!4188520 (= e!2600180 None!9855)))

(declare-fun b!4188521 () Bool)

(assert (=> b!4188521 (= e!2600177 (= (size!33777 (_1!25029 (get!14952 lt!1491777))) (size!33778 (originalCharacters!8050 (_1!25029 (get!14952 lt!1491777))))))))

(declare-fun b!4188522 () Bool)

(declare-fun res!1718458 () Bool)

(assert (=> b!4188522 (=> (not res!1718458) (not e!2600177))))

(assert (=> b!4188522 (= res!1718458 (= (value!238899 (_1!25029 (get!14952 lt!1491777))) (apply!10627 (transformation!7662 (rule!10738 (_1!25029 (get!14952 lt!1491777)))) (seqFromList!5687 (originalCharacters!8050 (_1!25029 (get!14952 lt!1491777)))))))))

(declare-fun b!4188524 () Bool)

(declare-fun res!1718462 () Bool)

(assert (=> b!4188524 (=> (not res!1718462) (not e!2600177))))

(assert (=> b!4188524 (= res!1718462 (= (rule!10738 (_1!25029 (get!14952 lt!1491777))) r!4142))))

(declare-fun b!4188526 () Bool)

(assert (=> b!4188526 (= e!2600180 (Some!9855 (tuple2!43791 (Token!14039 (apply!10627 (transformation!7662 r!4142) (seqFromList!5687 (_1!25031 lt!1491778))) r!4142 (size!33779 (seqFromList!5687 (_1!25031 lt!1491778))) (_1!25031 lt!1491778)) (_2!25031 lt!1491778))))))

(declare-fun lt!1491781 () Unit!65077)

(assert (=> b!4188526 (= lt!1491781 (longestMatchIsAcceptedByMatchOrIsEmpty!1574 (regex!7662 r!4142) input!3342))))

(declare-fun res!1718457 () Bool)

(assert (=> b!4188526 (= res!1718457 (isEmpty!27225 (_1!25031 (findLongestMatchInner!1601 (regex!7662 r!4142) Nil!45990 (size!33778 Nil!45990) input!3342 input!3342 (size!33778 input!3342)))))))

(declare-fun e!2600179 () Bool)

(assert (=> b!4188526 (=> res!1718457 e!2600179)))

(assert (=> b!4188526 e!2600179))

(declare-fun lt!1491779 () Unit!65077)

(assert (=> b!4188526 (= lt!1491779 lt!1491781)))

(declare-fun lt!1491780 () Unit!65077)

(assert (=> b!4188526 (= lt!1491780 (lemmaSemiInverse!2428 (transformation!7662 r!4142) (seqFromList!5687 (_1!25031 lt!1491778))))))

(declare-fun b!4188528 () Bool)

(assert (=> b!4188528 (= e!2600179 (matchR!6306 (regex!7662 r!4142) (_1!25031 (findLongestMatchInner!1601 (regex!7662 r!4142) Nil!45990 (size!33778 Nil!45990) input!3342 input!3342 (size!33778 input!3342)))))))

(assert (= (and d!1235716 c!714870) b!4188520))

(assert (= (and d!1235716 (not c!714870)) b!4188526))

(assert (= (and b!4188526 (not res!1718457)) b!4188528))

(assert (= (and d!1235716 (not res!1718460)) b!4188519))

(assert (= (and b!4188519 res!1718456) b!4188518))

(assert (= (and b!4188518 res!1718459) b!4188517))

(assert (= (and b!4188517 res!1718461) b!4188524))

(assert (= (and b!4188524 res!1718462) b!4188522))

(assert (= (and b!4188522 res!1718458) b!4188521))

(declare-fun m!4777471 () Bool)

(assert (=> d!1235716 m!4777471))

(declare-fun m!4777473 () Bool)

(assert (=> d!1235716 m!4777473))

(declare-fun m!4777475 () Bool)

(assert (=> d!1235716 m!4777475))

(assert (=> d!1235716 m!4777063))

(assert (=> b!4188528 m!4777185))

(assert (=> b!4188528 m!4777007))

(assert (=> b!4188528 m!4777185))

(assert (=> b!4188528 m!4777007))

(declare-fun m!4777477 () Bool)

(assert (=> b!4188528 m!4777477))

(declare-fun m!4777479 () Bool)

(assert (=> b!4188528 m!4777479))

(declare-fun m!4777481 () Bool)

(assert (=> b!4188522 m!4777481))

(declare-fun m!4777483 () Bool)

(assert (=> b!4188522 m!4777483))

(assert (=> b!4188522 m!4777483))

(declare-fun m!4777485 () Bool)

(assert (=> b!4188522 m!4777485))

(assert (=> b!4188524 m!4777481))

(declare-fun m!4777487 () Bool)

(assert (=> b!4188526 m!4777487))

(declare-fun m!4777489 () Bool)

(assert (=> b!4188526 m!4777489))

(declare-fun m!4777491 () Bool)

(assert (=> b!4188526 m!4777491))

(assert (=> b!4188526 m!4777185))

(assert (=> b!4188526 m!4777007))

(assert (=> b!4188526 m!4777477))

(declare-fun m!4777493 () Bool)

(assert (=> b!4188526 m!4777493))

(assert (=> b!4188526 m!4777487))

(declare-fun m!4777495 () Bool)

(assert (=> b!4188526 m!4777495))

(assert (=> b!4188526 m!4777487))

(declare-fun m!4777497 () Bool)

(assert (=> b!4188526 m!4777497))

(assert (=> b!4188526 m!4777007))

(assert (=> b!4188526 m!4777487))

(assert (=> b!4188526 m!4777185))

(assert (=> b!4188517 m!4777481))

(declare-fun m!4777499 () Bool)

(assert (=> b!4188517 m!4777499))

(assert (=> b!4188517 m!4777007))

(assert (=> b!4188519 m!4777481))

(declare-fun m!4777501 () Bool)

(assert (=> b!4188519 m!4777501))

(assert (=> b!4188519 m!4777501))

(declare-fun m!4777503 () Bool)

(assert (=> b!4188519 m!4777503))

(assert (=> b!4188519 m!4777503))

(declare-fun m!4777505 () Bool)

(assert (=> b!4188519 m!4777505))

(assert (=> b!4188518 m!4777481))

(assert (=> b!4188518 m!4777501))

(assert (=> b!4188518 m!4777501))

(assert (=> b!4188518 m!4777503))

(assert (=> b!4188518 m!4777503))

(declare-fun m!4777507 () Bool)

(assert (=> b!4188518 m!4777507))

(assert (=> b!4188521 m!4777481))

(declare-fun m!4777513 () Bool)

(assert (=> b!4188521 m!4777513))

(assert (=> b!4188109 d!1235716))

(declare-fun d!1235718 () Bool)

(declare-fun lt!1491782 () Int)

(assert (=> d!1235718 (>= lt!1491782 0)))

(declare-fun e!2600200 () Int)

(assert (=> d!1235718 (= lt!1491782 e!2600200)))

(declare-fun c!714871 () Bool)

(assert (=> d!1235718 (= c!714871 ((_ is Nil!45990) p!2959))))

(assert (=> d!1235718 (= (size!33778 p!2959) lt!1491782)))

(declare-fun b!4188552 () Bool)

(assert (=> b!4188552 (= e!2600200 0)))

(declare-fun b!4188553 () Bool)

(assert (=> b!4188553 (= e!2600200 (+ 1 (size!33778 (t!345757 p!2959))))))

(assert (= (and d!1235718 c!714871) b!4188552))

(assert (= (and d!1235718 (not c!714871)) b!4188553))

(declare-fun m!4777515 () Bool)

(assert (=> b!4188553 m!4777515))

(assert (=> b!4188109 d!1235718))

(declare-fun b!4188573 () Bool)

(declare-fun e!2600209 () Option!9856)

(declare-fun lt!1491794 () Option!9856)

(declare-fun lt!1491793 () Option!9856)

(assert (=> b!4188573 (= e!2600209 (ite (and ((_ is None!9855) lt!1491794) ((_ is None!9855) lt!1491793)) None!9855 (ite ((_ is None!9855) lt!1491793) lt!1491794 (ite ((_ is None!9855) lt!1491794) lt!1491793 (ite (>= (size!33777 (_1!25029 (v!40679 lt!1491794))) (size!33777 (_1!25029 (v!40679 lt!1491793)))) lt!1491794 lt!1491793)))))))

(declare-fun call!292066 () Option!9856)

(assert (=> b!4188573 (= lt!1491794 call!292066)))

(assert (=> b!4188573 (= lt!1491793 (maxPrefix!4303 thiss!25986 (t!345758 rules!3843) input!3342))))

(declare-fun b!4188574 () Bool)

(declare-fun res!1718482 () Bool)

(declare-fun e!2600208 () Bool)

(assert (=> b!4188574 (=> (not res!1718482) (not e!2600208))))

(declare-fun lt!1491795 () Option!9856)

(assert (=> b!4188574 (= res!1718482 (matchR!6306 (regex!7662 (rule!10738 (_1!25029 (get!14952 lt!1491795)))) (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491795))))))))

(declare-fun b!4188575 () Bool)

(declare-fun res!1718483 () Bool)

(assert (=> b!4188575 (=> (not res!1718483) (not e!2600208))))

(assert (=> b!4188575 (= res!1718483 (= (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491795)))) (originalCharacters!8050 (_1!25029 (get!14952 lt!1491795)))))))

(declare-fun b!4188576 () Bool)

(declare-fun res!1718477 () Bool)

(assert (=> b!4188576 (=> (not res!1718477) (not e!2600208))))

(assert (=> b!4188576 (= res!1718477 (= (++!11734 (list!16614 (charsOf!5097 (_1!25029 (get!14952 lt!1491795)))) (_2!25029 (get!14952 lt!1491795))) input!3342))))

(declare-fun b!4188577 () Bool)

(assert (=> b!4188577 (= e!2600208 (contains!9471 rules!3843 (rule!10738 (_1!25029 (get!14952 lt!1491795)))))))

(declare-fun b!4188578 () Bool)

(assert (=> b!4188578 (= e!2600209 call!292066)))

(declare-fun b!4188579 () Bool)

(declare-fun res!1718480 () Bool)

(assert (=> b!4188579 (=> (not res!1718480) (not e!2600208))))

(assert (=> b!4188579 (= res!1718480 (= (value!238899 (_1!25029 (get!14952 lt!1491795))) (apply!10627 (transformation!7662 (rule!10738 (_1!25029 (get!14952 lt!1491795)))) (seqFromList!5687 (originalCharacters!8050 (_1!25029 (get!14952 lt!1491795)))))))))

(declare-fun d!1235720 () Bool)

(declare-fun e!2600207 () Bool)

(assert (=> d!1235720 e!2600207))

(declare-fun res!1718479 () Bool)

(assert (=> d!1235720 (=> res!1718479 e!2600207)))

(assert (=> d!1235720 (= res!1718479 (isEmpty!27222 lt!1491795))))

(assert (=> d!1235720 (= lt!1491795 e!2600209)))

(declare-fun c!714874 () Bool)

(assert (=> d!1235720 (= c!714874 (and ((_ is Cons!45991) rules!3843) ((_ is Nil!45991) (t!345758 rules!3843))))))

(declare-fun lt!1491797 () Unit!65077)

(declare-fun lt!1491796 () Unit!65077)

(assert (=> d!1235720 (= lt!1491797 lt!1491796)))

(assert (=> d!1235720 (isPrefix!4519 input!3342 input!3342)))

(assert (=> d!1235720 (= lt!1491796 (lemmaIsPrefixRefl!2948 input!3342 input!3342))))

(declare-fun rulesValidInductive!2826 (LexerInterface!7255 List!46115) Bool)

(assert (=> d!1235720 (rulesValidInductive!2826 thiss!25986 rules!3843)))

(assert (=> d!1235720 (= (maxPrefix!4303 thiss!25986 rules!3843 input!3342) lt!1491795)))

(declare-fun b!4188572 () Bool)

(assert (=> b!4188572 (= e!2600207 e!2600208)))

(declare-fun res!1718478 () Bool)

(assert (=> b!4188572 (=> (not res!1718478) (not e!2600208))))

(declare-fun isDefined!7342 (Option!9856) Bool)

(assert (=> b!4188572 (= res!1718478 (isDefined!7342 lt!1491795))))

(declare-fun bm!292061 () Bool)

(assert (=> bm!292061 (= call!292066 (maxPrefixOneRule!3264 thiss!25986 (h!51411 rules!3843) input!3342))))

(declare-fun b!4188580 () Bool)

(declare-fun res!1718481 () Bool)

(assert (=> b!4188580 (=> (not res!1718481) (not e!2600208))))

(assert (=> b!4188580 (= res!1718481 (< (size!33778 (_2!25029 (get!14952 lt!1491795))) (size!33778 input!3342)))))

(assert (= (and d!1235720 c!714874) b!4188578))

(assert (= (and d!1235720 (not c!714874)) b!4188573))

(assert (= (or b!4188578 b!4188573) bm!292061))

(assert (= (and d!1235720 (not res!1718479)) b!4188572))

(assert (= (and b!4188572 res!1718478) b!4188575))

(assert (= (and b!4188575 res!1718483) b!4188580))

(assert (= (and b!4188580 res!1718481) b!4188576))

(assert (= (and b!4188576 res!1718477) b!4188579))

(assert (= (and b!4188579 res!1718480) b!4188574))

(assert (= (and b!4188574 res!1718482) b!4188577))

(declare-fun m!4777517 () Bool)

(assert (=> b!4188576 m!4777517))

(declare-fun m!4777519 () Bool)

(assert (=> b!4188576 m!4777519))

(assert (=> b!4188576 m!4777519))

(declare-fun m!4777521 () Bool)

(assert (=> b!4188576 m!4777521))

(assert (=> b!4188576 m!4777521))

(declare-fun m!4777523 () Bool)

(assert (=> b!4188576 m!4777523))

(declare-fun m!4777525 () Bool)

(assert (=> b!4188572 m!4777525))

(assert (=> b!4188577 m!4777517))

(declare-fun m!4777527 () Bool)

(assert (=> b!4188577 m!4777527))

(declare-fun m!4777529 () Bool)

(assert (=> bm!292061 m!4777529))

(declare-fun m!4777531 () Bool)

(assert (=> b!4188573 m!4777531))

(assert (=> b!4188580 m!4777517))

(declare-fun m!4777533 () Bool)

(assert (=> b!4188580 m!4777533))

(assert (=> b!4188580 m!4777007))

(declare-fun m!4777535 () Bool)

(assert (=> d!1235720 m!4777535))

(assert (=> d!1235720 m!4777047))

(assert (=> d!1235720 m!4777051))

(declare-fun m!4777537 () Bool)

(assert (=> d!1235720 m!4777537))

(assert (=> b!4188579 m!4777517))

(declare-fun m!4777539 () Bool)

(assert (=> b!4188579 m!4777539))

(assert (=> b!4188579 m!4777539))

(declare-fun m!4777541 () Bool)

(assert (=> b!4188579 m!4777541))

(assert (=> b!4188574 m!4777517))

(assert (=> b!4188574 m!4777519))

(assert (=> b!4188574 m!4777519))

(assert (=> b!4188574 m!4777521))

(assert (=> b!4188574 m!4777521))

(declare-fun m!4777543 () Bool)

(assert (=> b!4188574 m!4777543))

(assert (=> b!4188575 m!4777517))

(assert (=> b!4188575 m!4777519))

(assert (=> b!4188575 m!4777519))

(assert (=> b!4188575 m!4777521))

(assert (=> b!4188094 d!1235720))

(declare-fun b!4188583 () Bool)

(declare-fun e!2600210 () Bool)

(assert (=> b!4188583 (= e!2600210 (isPrefix!4519 (tail!6735 p!2959) (tail!6735 input!3342)))))

(declare-fun d!1235722 () Bool)

(declare-fun e!2600212 () Bool)

(assert (=> d!1235722 e!2600212))

(declare-fun res!1718487 () Bool)

(assert (=> d!1235722 (=> res!1718487 e!2600212)))

(declare-fun lt!1491798 () Bool)

(assert (=> d!1235722 (= res!1718487 (not lt!1491798))))

(declare-fun e!2600211 () Bool)

(assert (=> d!1235722 (= lt!1491798 e!2600211)))

(declare-fun res!1718484 () Bool)

(assert (=> d!1235722 (=> res!1718484 e!2600211)))

(assert (=> d!1235722 (= res!1718484 ((_ is Nil!45990) p!2959))))

(assert (=> d!1235722 (= (isPrefix!4519 p!2959 input!3342) lt!1491798)))

(declare-fun b!4188581 () Bool)

(assert (=> b!4188581 (= e!2600211 e!2600210)))

(declare-fun res!1718486 () Bool)

(assert (=> b!4188581 (=> (not res!1718486) (not e!2600210))))

(assert (=> b!4188581 (= res!1718486 (not ((_ is Nil!45990) input!3342)))))

(declare-fun b!4188584 () Bool)

(assert (=> b!4188584 (= e!2600212 (>= (size!33778 input!3342) (size!33778 p!2959)))))

(declare-fun b!4188582 () Bool)

(declare-fun res!1718485 () Bool)

(assert (=> b!4188582 (=> (not res!1718485) (not e!2600210))))

(assert (=> b!4188582 (= res!1718485 (= (head!8888 p!2959) (head!8888 input!3342)))))

(assert (= (and d!1235722 (not res!1718484)) b!4188581))

(assert (= (and b!4188581 res!1718486) b!4188582))

(assert (= (and b!4188582 res!1718485) b!4188583))

(assert (= (and d!1235722 (not res!1718487)) b!4188584))

(assert (=> b!4188583 m!4777115))

(assert (=> b!4188583 m!4777241))

(assert (=> b!4188583 m!4777115))

(assert (=> b!4188583 m!4777241))

(declare-fun m!4777545 () Bool)

(assert (=> b!4188583 m!4777545))

(assert (=> b!4188584 m!4777007))

(assert (=> b!4188584 m!4777053))

(assert (=> b!4188582 m!4777111))

(assert (=> b!4188582 m!4777249))

(assert (=> b!4188116 d!1235722))

(declare-fun b!4188587 () Bool)

(declare-fun e!2600213 () Bool)

(assert (=> b!4188587 (= e!2600213 (isPrefix!4519 (tail!6735 lt!1491650) (tail!6735 lt!1491639)))))

(declare-fun d!1235724 () Bool)

(declare-fun e!2600215 () Bool)

(assert (=> d!1235724 e!2600215))

(declare-fun res!1718491 () Bool)

(assert (=> d!1235724 (=> res!1718491 e!2600215)))

(declare-fun lt!1491799 () Bool)

(assert (=> d!1235724 (= res!1718491 (not lt!1491799))))

(declare-fun e!2600214 () Bool)

(assert (=> d!1235724 (= lt!1491799 e!2600214)))

(declare-fun res!1718488 () Bool)

(assert (=> d!1235724 (=> res!1718488 e!2600214)))

(assert (=> d!1235724 (= res!1718488 ((_ is Nil!45990) lt!1491650))))

(assert (=> d!1235724 (= (isPrefix!4519 lt!1491650 lt!1491639) lt!1491799)))

(declare-fun b!4188585 () Bool)

(assert (=> b!4188585 (= e!2600214 e!2600213)))

(declare-fun res!1718490 () Bool)

(assert (=> b!4188585 (=> (not res!1718490) (not e!2600213))))

(assert (=> b!4188585 (= res!1718490 (not ((_ is Nil!45990) lt!1491639)))))

(declare-fun b!4188588 () Bool)

(assert (=> b!4188588 (= e!2600215 (>= (size!33778 lt!1491639) (size!33778 lt!1491650)))))

(declare-fun b!4188586 () Bool)

(declare-fun res!1718489 () Bool)

(assert (=> b!4188586 (=> (not res!1718489) (not e!2600213))))

(assert (=> b!4188586 (= res!1718489 (= (head!8888 lt!1491650) (head!8888 lt!1491639)))))

(assert (= (and d!1235724 (not res!1718488)) b!4188585))

(assert (= (and b!4188585 res!1718490) b!4188586))

(assert (= (and b!4188586 res!1718489) b!4188587))

(assert (= (and d!1235724 (not res!1718491)) b!4188588))

(assert (=> b!4188587 m!4777239))

(declare-fun m!4777547 () Bool)

(assert (=> b!4188587 m!4777547))

(assert (=> b!4188587 m!4777239))

(assert (=> b!4188587 m!4777547))

(declare-fun m!4777549 () Bool)

(assert (=> b!4188587 m!4777549))

(declare-fun m!4777551 () Bool)

(assert (=> b!4188588 m!4777551))

(assert (=> b!4188588 m!4777245))

(assert (=> b!4188586 m!4777247))

(declare-fun m!4777553 () Bool)

(assert (=> b!4188586 m!4777553))

(assert (=> b!4188105 d!1235724))

(declare-fun d!1235726 () Bool)

(declare-fun lt!1491802 () BalanceConc!27340)

(assert (=> d!1235726 (= (list!16614 lt!1491802) (originalCharacters!8050 (_1!25029 lt!1491643)))))

(assert (=> d!1235726 (= lt!1491802 (dynLambda!19778 (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643)))) (value!238899 (_1!25029 lt!1491643))))))

(assert (=> d!1235726 (= (charsOf!5097 (_1!25029 lt!1491643)) lt!1491802)))

(declare-fun b_lambda!123175 () Bool)

(assert (=> (not b_lambda!123175) (not d!1235726)))

(declare-fun tb!250895 () Bool)

(declare-fun t!345796 () Bool)

(assert (=> (and b!4188115 (= (toChars!10217 (transformation!7662 r!4142)) (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643))))) t!345796) tb!250895))

(declare-fun b!4188589 () Bool)

(declare-fun e!2600216 () Bool)

(declare-fun tp!1279920 () Bool)

(assert (=> b!4188589 (= e!2600216 (and (inv!60540 (c!714809 (dynLambda!19778 (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643)))) (value!238899 (_1!25029 lt!1491643))))) tp!1279920))))

(declare-fun result!305754 () Bool)

(assert (=> tb!250895 (= result!305754 (and (inv!60541 (dynLambda!19778 (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643)))) (value!238899 (_1!25029 lt!1491643)))) e!2600216))))

(assert (= tb!250895 b!4188589))

(declare-fun m!4777555 () Bool)

(assert (=> b!4188589 m!4777555))

(declare-fun m!4777557 () Bool)

(assert (=> tb!250895 m!4777557))

(assert (=> d!1235726 t!345796))

(declare-fun b_and!328115 () Bool)

(assert (= b_and!328087 (and (=> t!345796 result!305754) b_and!328115)))

(declare-fun t!345798 () Bool)

(declare-fun tb!250897 () Bool)

(assert (=> (and b!4188107 (= (toChars!10217 (transformation!7662 rBis!167)) (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643))))) t!345798) tb!250897))

(declare-fun result!305756 () Bool)

(assert (= result!305756 result!305754))

(assert (=> d!1235726 t!345798))

(declare-fun b_and!328117 () Bool)

(assert (= b_and!328089 (and (=> t!345798 result!305756) b_and!328117)))

(declare-fun t!345800 () Bool)

(declare-fun tb!250899 () Bool)

(assert (=> (and b!4188095 (= (toChars!10217 (transformation!7662 (h!51411 rules!3843))) (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643))))) t!345800) tb!250899))

(declare-fun result!305758 () Bool)

(assert (= result!305758 result!305754))

(assert (=> d!1235726 t!345800))

(declare-fun b_and!328119 () Bool)

(assert (= b_and!328093 (and (=> t!345800 result!305758) b_and!328119)))

(declare-fun m!4777559 () Bool)

(assert (=> d!1235726 m!4777559))

(declare-fun m!4777561 () Bool)

(assert (=> d!1235726 m!4777561))

(assert (=> b!4188105 d!1235726))

(declare-fun d!1235728 () Bool)

(declare-fun list!16616 (Conc!13873) List!46114)

(assert (=> d!1235728 (= (list!16614 lt!1491645) (list!16616 (c!714809 lt!1491645)))))

(declare-fun bs!596573 () Bool)

(assert (= bs!596573 d!1235728))

(declare-fun m!4777563 () Bool)

(assert (=> bs!596573 m!4777563))

(assert (=> b!4188105 d!1235728))

(declare-fun b!4188598 () Bool)

(declare-fun e!2600222 () List!46114)

(assert (=> b!4188598 (= e!2600222 (_2!25029 lt!1491643))))

(declare-fun b!4188599 () Bool)

(assert (=> b!4188599 (= e!2600222 (Cons!45990 (h!51410 lt!1491650) (++!11734 (t!345757 lt!1491650) (_2!25029 lt!1491643))))))

(declare-fun b!4188600 () Bool)

(declare-fun res!1718497 () Bool)

(declare-fun e!2600221 () Bool)

(assert (=> b!4188600 (=> (not res!1718497) (not e!2600221))))

(declare-fun lt!1491805 () List!46114)

(assert (=> b!4188600 (= res!1718497 (= (size!33778 lt!1491805) (+ (size!33778 lt!1491650) (size!33778 (_2!25029 lt!1491643)))))))

(declare-fun b!4188601 () Bool)

(assert (=> b!4188601 (= e!2600221 (or (not (= (_2!25029 lt!1491643) Nil!45990)) (= lt!1491805 lt!1491650)))))

(declare-fun d!1235730 () Bool)

(assert (=> d!1235730 e!2600221))

(declare-fun res!1718496 () Bool)

(assert (=> d!1235730 (=> (not res!1718496) (not e!2600221))))

(declare-fun content!7158 (List!46114) (InoxSet C!25324))

(assert (=> d!1235730 (= res!1718496 (= (content!7158 lt!1491805) ((_ map or) (content!7158 lt!1491650) (content!7158 (_2!25029 lt!1491643)))))))

(assert (=> d!1235730 (= lt!1491805 e!2600222)))

(declare-fun c!714877 () Bool)

(assert (=> d!1235730 (= c!714877 ((_ is Nil!45990) lt!1491650))))

(assert (=> d!1235730 (= (++!11734 lt!1491650 (_2!25029 lt!1491643)) lt!1491805)))

(assert (= (and d!1235730 c!714877) b!4188598))

(assert (= (and d!1235730 (not c!714877)) b!4188599))

(assert (= (and d!1235730 res!1718496) b!4188600))

(assert (= (and b!4188600 res!1718497) b!4188601))

(declare-fun m!4777565 () Bool)

(assert (=> b!4188599 m!4777565))

(declare-fun m!4777567 () Bool)

(assert (=> b!4188600 m!4777567))

(assert (=> b!4188600 m!4777245))

(declare-fun m!4777569 () Bool)

(assert (=> b!4188600 m!4777569))

(declare-fun m!4777571 () Bool)

(assert (=> d!1235730 m!4777571))

(declare-fun m!4777573 () Bool)

(assert (=> d!1235730 m!4777573))

(declare-fun m!4777575 () Bool)

(assert (=> d!1235730 m!4777575))

(assert (=> b!4188105 d!1235730))

(declare-fun d!1235732 () Bool)

(assert (=> d!1235732 (= (get!14952 lt!1491640) (v!40679 lt!1491640))))

(assert (=> b!4188105 d!1235732))

(declare-fun d!1235734 () Bool)

(assert (=> d!1235734 (isPrefix!4519 lt!1491650 (++!11734 lt!1491650 (_2!25029 lt!1491643)))))

(declare-fun lt!1491808 () Unit!65077)

(declare-fun choose!25651 (List!46114 List!46114) Unit!65077)

(assert (=> d!1235734 (= lt!1491808 (choose!25651 lt!1491650 (_2!25029 lt!1491643)))))

(assert (=> d!1235734 (= (lemmaConcatTwoListThenFirstIsPrefix!3016 lt!1491650 (_2!25029 lt!1491643)) lt!1491808)))

(declare-fun bs!596574 () Bool)

(assert (= bs!596574 d!1235734))

(assert (=> bs!596574 m!4777027))

(assert (=> bs!596574 m!4777027))

(declare-fun m!4777577 () Bool)

(assert (=> bs!596574 m!4777577))

(declare-fun m!4777579 () Bool)

(assert (=> bs!596574 m!4777579))

(assert (=> b!4188105 d!1235734))

(declare-fun b!4188604 () Bool)

(declare-fun e!2600223 () Bool)

(assert (=> b!4188604 (= e!2600223 (isPrefix!4519 (tail!6735 pBis!107) (tail!6735 input!3342)))))

(declare-fun d!1235736 () Bool)

(declare-fun e!2600225 () Bool)

(assert (=> d!1235736 e!2600225))

(declare-fun res!1718501 () Bool)

(assert (=> d!1235736 (=> res!1718501 e!2600225)))

(declare-fun lt!1491809 () Bool)

(assert (=> d!1235736 (= res!1718501 (not lt!1491809))))

(declare-fun e!2600224 () Bool)

(assert (=> d!1235736 (= lt!1491809 e!2600224)))

(declare-fun res!1718498 () Bool)

(assert (=> d!1235736 (=> res!1718498 e!2600224)))

(assert (=> d!1235736 (= res!1718498 ((_ is Nil!45990) pBis!107))))

(assert (=> d!1235736 (= (isPrefix!4519 pBis!107 input!3342) lt!1491809)))

(declare-fun b!4188602 () Bool)

(assert (=> b!4188602 (= e!2600224 e!2600223)))

(declare-fun res!1718500 () Bool)

(assert (=> b!4188602 (=> (not res!1718500) (not e!2600223))))

(assert (=> b!4188602 (= res!1718500 (not ((_ is Nil!45990) input!3342)))))

(declare-fun b!4188605 () Bool)

(assert (=> b!4188605 (= e!2600225 (>= (size!33778 input!3342) (size!33778 pBis!107)))))

(declare-fun b!4188603 () Bool)

(declare-fun res!1718499 () Bool)

(assert (=> b!4188603 (=> (not res!1718499) (not e!2600223))))

(assert (=> b!4188603 (= res!1718499 (= (head!8888 pBis!107) (head!8888 input!3342)))))

(assert (= (and d!1235736 (not res!1718498)) b!4188602))

(assert (= (and b!4188602 res!1718500) b!4188603))

(assert (= (and b!4188603 res!1718499) b!4188604))

(assert (= (and d!1235736 (not res!1718501)) b!4188605))

(declare-fun m!4777581 () Bool)

(assert (=> b!4188604 m!4777581))

(assert (=> b!4188604 m!4777241))

(assert (=> b!4188604 m!4777581))

(assert (=> b!4188604 m!4777241))

(declare-fun m!4777583 () Bool)

(assert (=> b!4188604 m!4777583))

(assert (=> b!4188605 m!4777007))

(assert (=> b!4188605 m!4777073))

(declare-fun m!4777585 () Bool)

(assert (=> b!4188603 m!4777585))

(assert (=> b!4188603 m!4777249))

(assert (=> b!4188106 d!1235736))

(declare-fun d!1235738 () Bool)

(declare-fun res!1718504 () Bool)

(declare-fun e!2600228 () Bool)

(assert (=> d!1235738 (=> (not res!1718504) (not e!2600228))))

(declare-fun rulesValid!2988 (LexerInterface!7255 List!46115) Bool)

(assert (=> d!1235738 (= res!1718504 (rulesValid!2988 thiss!25986 rules!3843))))

(assert (=> d!1235738 (= (rulesInvariant!6468 thiss!25986 rules!3843) e!2600228)))

(declare-fun b!4188608 () Bool)

(declare-datatypes ((List!46117 0))(
  ( (Nil!45993) (Cons!45993 (h!51413 String!53326) (t!345808 List!46117)) )
))
(declare-fun noDuplicateTag!3149 (LexerInterface!7255 List!46115 List!46117) Bool)

(assert (=> b!4188608 (= e!2600228 (noDuplicateTag!3149 thiss!25986 rules!3843 Nil!45993))))

(assert (= (and d!1235738 res!1718504) b!4188608))

(declare-fun m!4777587 () Bool)

(assert (=> d!1235738 m!4777587))

(declare-fun m!4777589 () Bool)

(assert (=> b!4188608 m!4777589))

(assert (=> b!4188096 d!1235738))

(declare-fun d!1235740 () Bool)

(declare-fun lt!1491812 () Int)

(assert (=> d!1235740 (= lt!1491812 (size!33778 (list!16614 lt!1491645)))))

(declare-fun size!33781 (Conc!13873) Int)

(assert (=> d!1235740 (= lt!1491812 (size!33781 (c!714809 lt!1491645)))))

(assert (=> d!1235740 (= (size!33779 lt!1491645) lt!1491812)))

(declare-fun bs!596575 () Bool)

(assert (= bs!596575 d!1235740))

(assert (=> bs!596575 m!4777021))

(assert (=> bs!596575 m!4777021))

(declare-fun m!4777591 () Bool)

(assert (=> bs!596575 m!4777591))

(declare-fun m!4777593 () Bool)

(assert (=> bs!596575 m!4777593))

(assert (=> b!4188117 d!1235740))

(declare-fun b!4188619 () Bool)

(declare-fun b_free!121887 () Bool)

(declare-fun b_next!122591 () Bool)

(assert (=> b!4188619 (= b_free!121887 (not b_next!122591))))

(declare-fun t!345802 () Bool)

(declare-fun tb!250901 () Bool)

(assert (=> (and b!4188619 (= (toValue!10358 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toValue!10358 (transformation!7662 r!4142))) t!345802) tb!250901))

(declare-fun result!305762 () Bool)

(assert (= result!305762 result!305734))

(assert (=> d!1235652 t!345802))

(assert (=> d!1235714 t!345802))

(declare-fun b_and!328121 () Bool)

(declare-fun tp!1279931 () Bool)

(assert (=> b!4188619 (= tp!1279931 (and (=> t!345802 result!305762) b_and!328121))))

(declare-fun b_free!121889 () Bool)

(declare-fun b_next!122593 () Bool)

(assert (=> b!4188619 (= b_free!121889 (not b_next!122593))))

(declare-fun tb!250903 () Bool)

(declare-fun t!345804 () Bool)

(assert (=> (and b!4188619 (= (toChars!10217 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toChars!10217 (transformation!7662 r!4142))) t!345804) tb!250903))

(declare-fun result!305764 () Bool)

(assert (= result!305764 result!305720))

(assert (=> d!1235652 t!345804))

(declare-fun tb!250905 () Bool)

(declare-fun t!345806 () Bool)

(assert (=> (and b!4188619 (= (toChars!10217 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toChars!10217 (transformation!7662 (rule!10738 (_1!25029 lt!1491643))))) t!345806) tb!250905))

(declare-fun result!305766 () Bool)

(assert (= result!305766 result!305754))

(assert (=> d!1235726 t!345806))

(declare-fun b_and!328123 () Bool)

(declare-fun tp!1279932 () Bool)

(assert (=> b!4188619 (= tp!1279932 (and (=> t!345804 result!305764) (=> t!345806 result!305766) b_and!328123))))

(declare-fun e!2600239 () Bool)

(assert (=> b!4188619 (= e!2600239 (and tp!1279931 tp!1279932))))

(declare-fun b!4188618 () Bool)

(declare-fun e!2600237 () Bool)

(declare-fun tp!1279929 () Bool)

(assert (=> b!4188618 (= e!2600237 (and tp!1279929 (inv!60535 (tag!8526 (h!51411 (t!345758 rules!3843)))) (inv!60537 (transformation!7662 (h!51411 (t!345758 rules!3843)))) e!2600239))))

(declare-fun b!4188617 () Bool)

(declare-fun e!2600238 () Bool)

(declare-fun tp!1279930 () Bool)

(assert (=> b!4188617 (= e!2600238 (and e!2600237 tp!1279930))))

(assert (=> b!4188118 (= tp!1279864 e!2600238)))

(assert (= b!4188618 b!4188619))

(assert (= b!4188617 b!4188618))

(assert (= (and b!4188118 ((_ is Cons!45991) (t!345758 rules!3843))) b!4188617))

(declare-fun m!4777595 () Bool)

(assert (=> b!4188618 m!4777595))

(declare-fun m!4777597 () Bool)

(assert (=> b!4188618 m!4777597))

(declare-fun b!4188630 () Bool)

(declare-fun e!2600243 () Bool)

(assert (=> b!4188630 (= e!2600243 tp_is_empty!22097)))

(declare-fun b!4188633 () Bool)

(declare-fun tp!1279947 () Bool)

(declare-fun tp!1279943 () Bool)

(assert (=> b!4188633 (= e!2600243 (and tp!1279947 tp!1279943))))

(assert (=> b!4188097 (= tp!1279863 e!2600243)))

(declare-fun b!4188631 () Bool)

(declare-fun tp!1279946 () Bool)

(declare-fun tp!1279945 () Bool)

(assert (=> b!4188631 (= e!2600243 (and tp!1279946 tp!1279945))))

(declare-fun b!4188632 () Bool)

(declare-fun tp!1279944 () Bool)

(assert (=> b!4188632 (= e!2600243 tp!1279944)))

(assert (= (and b!4188097 ((_ is ElementMatch!12567) (regex!7662 r!4142))) b!4188630))

(assert (= (and b!4188097 ((_ is Concat!20460) (regex!7662 r!4142))) b!4188631))

(assert (= (and b!4188097 ((_ is Star!12567) (regex!7662 r!4142))) b!4188632))

(assert (= (and b!4188097 ((_ is Union!12567) (regex!7662 r!4142))) b!4188633))

(declare-fun b!4188634 () Bool)

(declare-fun e!2600244 () Bool)

(assert (=> b!4188634 (= e!2600244 tp_is_empty!22097)))

(declare-fun b!4188637 () Bool)

(declare-fun tp!1279952 () Bool)

(declare-fun tp!1279948 () Bool)

(assert (=> b!4188637 (= e!2600244 (and tp!1279952 tp!1279948))))

(assert (=> b!4188114 (= tp!1279860 e!2600244)))

(declare-fun b!4188635 () Bool)

(declare-fun tp!1279951 () Bool)

(declare-fun tp!1279950 () Bool)

(assert (=> b!4188635 (= e!2600244 (and tp!1279951 tp!1279950))))

(declare-fun b!4188636 () Bool)

(declare-fun tp!1279949 () Bool)

(assert (=> b!4188636 (= e!2600244 tp!1279949)))

(assert (= (and b!4188114 ((_ is ElementMatch!12567) (regex!7662 rBis!167))) b!4188634))

(assert (= (and b!4188114 ((_ is Concat!20460) (regex!7662 rBis!167))) b!4188635))

(assert (= (and b!4188114 ((_ is Star!12567) (regex!7662 rBis!167))) b!4188636))

(assert (= (and b!4188114 ((_ is Union!12567) (regex!7662 rBis!167))) b!4188637))

(declare-fun b!4188638 () Bool)

(declare-fun e!2600245 () Bool)

(assert (=> b!4188638 (= e!2600245 tp_is_empty!22097)))

(declare-fun b!4188641 () Bool)

(declare-fun tp!1279957 () Bool)

(declare-fun tp!1279953 () Bool)

(assert (=> b!4188641 (= e!2600245 (and tp!1279957 tp!1279953))))

(assert (=> b!4188098 (= tp!1279859 e!2600245)))

(declare-fun b!4188639 () Bool)

(declare-fun tp!1279956 () Bool)

(declare-fun tp!1279955 () Bool)

(assert (=> b!4188639 (= e!2600245 (and tp!1279956 tp!1279955))))

(declare-fun b!4188640 () Bool)

(declare-fun tp!1279954 () Bool)

(assert (=> b!4188640 (= e!2600245 tp!1279954)))

(assert (= (and b!4188098 ((_ is ElementMatch!12567) (regex!7662 (h!51411 rules!3843)))) b!4188638))

(assert (= (and b!4188098 ((_ is Concat!20460) (regex!7662 (h!51411 rules!3843)))) b!4188639))

(assert (= (and b!4188098 ((_ is Star!12567) (regex!7662 (h!51411 rules!3843)))) b!4188640))

(assert (= (and b!4188098 ((_ is Union!12567) (regex!7662 (h!51411 rules!3843)))) b!4188641))

(declare-fun b!4188646 () Bool)

(declare-fun e!2600248 () Bool)

(declare-fun tp!1279960 () Bool)

(assert (=> b!4188646 (= e!2600248 (and tp_is_empty!22097 tp!1279960))))

(assert (=> b!4188099 (= tp!1279865 e!2600248)))

(assert (= (and b!4188099 ((_ is Cons!45990) (t!345757 p!2959))) b!4188646))

(declare-fun b!4188647 () Bool)

(declare-fun e!2600249 () Bool)

(declare-fun tp!1279961 () Bool)

(assert (=> b!4188647 (= e!2600249 (and tp_is_empty!22097 tp!1279961))))

(assert (=> b!4188100 (= tp!1279868 e!2600249)))

(assert (= (and b!4188100 ((_ is Cons!45990) (t!345757 pBis!107))) b!4188647))

(declare-fun b!4188648 () Bool)

(declare-fun e!2600250 () Bool)

(declare-fun tp!1279962 () Bool)

(assert (=> b!4188648 (= e!2600250 (and tp_is_empty!22097 tp!1279962))))

(assert (=> b!4188112 (= tp!1279866 e!2600250)))

(assert (= (and b!4188112 ((_ is Cons!45990) (t!345757 input!3342))) b!4188648))

(declare-fun b_lambda!123177 () Bool)

(assert (= b_lambda!123161 (or (and b!4188115 b_free!121873) (and b!4188107 b_free!121877 (= (toChars!10217 (transformation!7662 rBis!167)) (toChars!10217 (transformation!7662 r!4142)))) (and b!4188095 b_free!121881 (= (toChars!10217 (transformation!7662 (h!51411 rules!3843))) (toChars!10217 (transformation!7662 r!4142)))) (and b!4188619 b_free!121889 (= (toChars!10217 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toChars!10217 (transformation!7662 r!4142)))) b_lambda!123177)))

(declare-fun b_lambda!123179 () Bool)

(assert (= b_lambda!123167 (or (and b!4188115 b_free!121871) (and b!4188107 b_free!121875 (= (toValue!10358 (transformation!7662 rBis!167)) (toValue!10358 (transformation!7662 r!4142)))) (and b!4188095 b_free!121879 (= (toValue!10358 (transformation!7662 (h!51411 rules!3843))) (toValue!10358 (transformation!7662 r!4142)))) (and b!4188619 b_free!121887 (= (toValue!10358 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toValue!10358 (transformation!7662 r!4142)))) b_lambda!123179)))

(declare-fun b_lambda!123181 () Bool)

(assert (= b_lambda!123165 (or (and b!4188115 b_free!121871) (and b!4188107 b_free!121875 (= (toValue!10358 (transformation!7662 rBis!167)) (toValue!10358 (transformation!7662 r!4142)))) (and b!4188095 b_free!121879 (= (toValue!10358 (transformation!7662 (h!51411 rules!3843))) (toValue!10358 (transformation!7662 r!4142)))) (and b!4188619 b_free!121887 (= (toValue!10358 (transformation!7662 (h!51411 (t!345758 rules!3843)))) (toValue!10358 (transformation!7662 r!4142)))) b_lambda!123181)))

(check-sat (not b!4188267) (not b!4188636) (not d!1235726) b_and!328105 (not b!4188253) (not b!4188605) (not b_next!122591) b_and!328107 (not b!4188632) (not b!4188328) (not b!4188573) b_and!328119 (not b_lambda!123177) (not b!4188189) (not b!4188648) (not b!4188553) (not tb!250895) (not b!4188631) (not b_next!122577) (not b!4188583) (not b!4188321) (not b!4188572) (not b!4188584) (not b!4188526) (not b!4188248) (not b_next!122593) (not b!4188604) (not b!4188603) (not b_next!122575) (not b_next!122585) (not b!4188588) (not b!4188181) (not b!4188185) (not b!4188272) (not b!4188639) (not b!4188247) (not b!4188575) (not b_lambda!123181) (not b!4188309) b_and!328121 (not b!4188641) (not b_next!122581) (not b!4188495) (not d!1235716) (not b!4188633) (not b!4188647) (not d!1235610) (not d!1235728) (not b!4188646) (not b!4188521) (not tb!250883) (not d!1235704) (not d!1235734) (not b!4188188) (not b!4188635) (not b!4188637) (not b!4188322) (not b!4188251) (not b_next!122579) b_and!328115 tp_is_empty!22097 (not b!4188517) (not d!1235648) (not b!4188577) (not b!4188255) (not b_next!122583) (not b!4188528) (not d!1235738) (not b!4188522) (not d!1235740) (not b!4188617) (not d!1235638) (not b!4188599) (not b!4188282) (not d!1235710) (not b!4188254) (not b!4188589) (not b_lambda!123179) (not b!4188574) (not d!1235618) (not b!4188580) (not d!1235644) (not b!4188518) (not b!4188618) (not d!1235650) (not b!4188316) (not b!4188186) (not b!4188252) b_and!328123 (not bm!292041) (not b!4188524) (not d!1235652) (not d!1235720) (not d!1235730) (not b!4188284) (not b!4188187) (not b!4188600) (not b!4188608) b_and!328117 (not b!4188323) (not b!4188318) (not bm!292061) (not b!4188586) (not bm!292034) (not tb!250871) (not d!1235636) (not b!4188519) (not b!4188283) (not b!4188497) (not b!4188579) b_and!328109 (not b!4188576) (not b!4188490) (not bm!292042) (not b!4188587) (not b!4188269) (not d!1235624) (not b!4188261) (not b!4188496) (not b_lambda!123175) (not b!4188582) (not d!1235622) (not d!1235588) (not d!1235628) (not b!4188640) (not d!1235606) (not b!4188249))
(check-sat b_and!328105 b_and!328119 (not b_next!122577) (not b_next!122593) b_and!328121 (not b_next!122581) (not b_next!122583) b_and!328123 b_and!328117 b_and!328109 (not b_next!122591) b_and!328107 (not b_next!122575) (not b_next!122585) (not b_next!122579) b_and!328115)
