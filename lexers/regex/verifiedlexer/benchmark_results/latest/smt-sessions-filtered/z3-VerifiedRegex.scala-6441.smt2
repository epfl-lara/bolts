; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336846 () Bool)

(assert start!336846)

(declare-fun b!3617099 () Bool)

(declare-fun b_free!94153 () Bool)

(declare-fun b_next!94857 () Bool)

(assert (=> b!3617099 (= b_free!94153 (not b_next!94857))))

(declare-fun tp!1105151 () Bool)

(declare-fun b_and!264203 () Bool)

(assert (=> b!3617099 (= tp!1105151 b_and!264203)))

(declare-fun b_free!94155 () Bool)

(declare-fun b_next!94859 () Bool)

(assert (=> b!3617099 (= b_free!94155 (not b_next!94859))))

(declare-fun tp!1105148 () Bool)

(declare-fun b_and!264205 () Bool)

(assert (=> b!3617099 (= tp!1105148 b_and!264205)))

(declare-fun b!3617061 () Bool)

(declare-fun b_free!94157 () Bool)

(declare-fun b_next!94861 () Bool)

(assert (=> b!3617061 (= b_free!94157 (not b_next!94861))))

(declare-fun tp!1105147 () Bool)

(declare-fun b_and!264207 () Bool)

(assert (=> b!3617061 (= tp!1105147 b_and!264207)))

(declare-fun b_free!94159 () Bool)

(declare-fun b_next!94863 () Bool)

(assert (=> b!3617061 (= b_free!94159 (not b_next!94863))))

(declare-fun tp!1105154 () Bool)

(declare-fun b_and!264209 () Bool)

(assert (=> b!3617061 (= tp!1105154 b_and!264209)))

(declare-fun b!3617055 () Bool)

(declare-fun b_free!94161 () Bool)

(declare-fun b_next!94865 () Bool)

(assert (=> b!3617055 (= b_free!94161 (not b_next!94865))))

(declare-fun tp!1105142 () Bool)

(declare-fun b_and!264211 () Bool)

(assert (=> b!3617055 (= tp!1105142 b_and!264211)))

(declare-fun b_free!94163 () Bool)

(declare-fun b_next!94867 () Bool)

(assert (=> b!3617055 (= b_free!94163 (not b_next!94867))))

(declare-fun tp!1105144 () Bool)

(declare-fun b_and!264213 () Bool)

(assert (=> b!3617055 (= tp!1105144 b_and!264213)))

(declare-fun b!3617059 () Bool)

(declare-fun b_free!94165 () Bool)

(declare-fun b_next!94869 () Bool)

(assert (=> b!3617059 (= b_free!94165 (not b_next!94869))))

(declare-fun tp!1105149 () Bool)

(declare-fun b_and!264215 () Bool)

(assert (=> b!3617059 (= tp!1105149 b_and!264215)))

(declare-fun b_free!94167 () Bool)

(declare-fun b_next!94871 () Bool)

(assert (=> b!3617059 (= b_free!94167 (not b_next!94871))))

(declare-fun tp!1105153 () Bool)

(declare-fun b_and!264217 () Bool)

(assert (=> b!3617059 (= tp!1105153 b_and!264217)))

(declare-fun b!3617052 () Bool)

(declare-datatypes ((Unit!54576 0))(
  ( (Unit!54577) )
))
(declare-fun e!2238740 () Unit!54576)

(declare-fun Unit!54578 () Unit!54576)

(assert (=> b!3617052 (= e!2238740 Unit!54578)))

(declare-fun b!3617053 () Bool)

(declare-fun e!2238743 () Unit!54576)

(declare-fun Unit!54579 () Unit!54576)

(assert (=> b!3617053 (= e!2238743 Unit!54579)))

(declare-fun lt!1248111 () Unit!54576)

(declare-datatypes ((List!38211 0))(
  ( (Nil!38087) (Cons!38087 (h!43507 (_ BitVec 16)) (t!293862 List!38211)) )
))
(declare-datatypes ((TokenValue!5892 0))(
  ( (FloatLiteralValue!11784 (text!41689 List!38211)) (TokenValueExt!5891 (__x!24001 Int)) (Broken!29460 (value!181801 List!38211)) (Object!6015) (End!5892) (Def!5892) (Underscore!5892) (Match!5892) (Else!5892) (Error!5892) (Case!5892) (If!5892) (Extends!5892) (Abstract!5892) (Class!5892) (Val!5892) (DelimiterValue!11784 (del!5952 List!38211)) (KeywordValue!5898 (value!181802 List!38211)) (CommentValue!11784 (value!181803 List!38211)) (WhitespaceValue!11784 (value!181804 List!38211)) (IndentationValue!5892 (value!181805 List!38211)) (String!42793) (Int32!5892) (Broken!29461 (value!181806 List!38211)) (Boolean!5893) (Unit!54580) (OperatorValue!5895 (op!5952 List!38211)) (IdentifierValue!11784 (value!181807 List!38211)) (IdentifierValue!11785 (value!181808 List!38211)) (WhitespaceValue!11785 (value!181809 List!38211)) (True!11784) (False!11784) (Broken!29462 (value!181810 List!38211)) (Broken!29463 (value!181811 List!38211)) (True!11785) (RightBrace!5892) (RightBracket!5892) (Colon!5892) (Null!5892) (Comma!5892) (LeftBracket!5892) (False!11785) (LeftBrace!5892) (ImaginaryLiteralValue!5892 (text!41690 List!38211)) (StringLiteralValue!17676 (value!181812 List!38211)) (EOFValue!5892 (value!181813 List!38211)) (IdentValue!5892 (value!181814 List!38211)) (DelimiterValue!11785 (value!181815 List!38211)) (DedentValue!5892 (value!181816 List!38211)) (NewLineValue!5892 (value!181817 List!38211)) (IntegerValue!17676 (value!181818 (_ BitVec 32)) (text!41691 List!38211)) (IntegerValue!17677 (value!181819 Int) (text!41692 List!38211)) (Times!5892) (Or!5892) (Equal!5892) (Minus!5892) (Broken!29464 (value!181820 List!38211)) (And!5892) (Div!5892) (LessEqual!5892) (Mod!5892) (Concat!16313) (Not!5892) (Plus!5892) (SpaceValue!5892 (value!181821 List!38211)) (IntegerValue!17678 (value!181822 Int) (text!41693 List!38211)) (StringLiteralValue!17677 (text!41694 List!38211)) (FloatLiteralValue!11785 (text!41695 List!38211)) (BytesLiteralValue!5892 (value!181823 List!38211)) (CommentValue!11785 (value!181824 List!38211)) (StringLiteralValue!17678 (value!181825 List!38211)) (ErrorTokenValue!5892 (msg!5953 List!38211)) )
))
(declare-datatypes ((C!21028 0))(
  ( (C!21029 (val!12562 Int)) )
))
(declare-datatypes ((Regex!10421 0))(
  ( (ElementMatch!10421 (c!625852 C!21028)) (Concat!16314 (regOne!21354 Regex!10421) (regTwo!21354 Regex!10421)) (EmptyExpr!10421) (Star!10421 (reg!10750 Regex!10421)) (EmptyLang!10421) (Union!10421 (regOne!21355 Regex!10421) (regTwo!21355 Regex!10421)) )
))
(declare-datatypes ((String!42794 0))(
  ( (String!42795 (value!181826 String)) )
))
(declare-datatypes ((List!38212 0))(
  ( (Nil!38088) (Cons!38088 (h!43508 C!21028) (t!293863 List!38212)) )
))
(declare-datatypes ((IArray!23227 0))(
  ( (IArray!23228 (innerList!11671 List!38212)) )
))
(declare-datatypes ((Conc!11611 0))(
  ( (Node!11611 (left!29748 Conc!11611) (right!30078 Conc!11611) (csize!23452 Int) (cheight!11822 Int)) (Leaf!18053 (xs!14813 IArray!23227) (csize!23453 Int)) (Empty!11611) )
))
(declare-datatypes ((BalanceConc!22836 0))(
  ( (BalanceConc!22837 (c!625853 Conc!11611)) )
))
(declare-datatypes ((TokenValueInjection!11212 0))(
  ( (TokenValueInjection!11213 (toValue!7946 Int) (toChars!7805 Int)) )
))
(declare-datatypes ((Rule!11124 0))(
  ( (Rule!11125 (regex!5662 Regex!10421) (tag!6376 String!42794) (isSeparator!5662 Bool) (transformation!5662 TokenValueInjection!11212)) )
))
(declare-fun rule!403 () Rule!11124)

(declare-fun lt!1248076 () List!38212)

(declare-fun lt!1248103 () C!21028)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!646 (Regex!10421 List!38212 C!21028) Unit!54576)

(assert (=> b!3617053 (= lt!1248111 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!646 (regex!5662 rule!403) lt!1248076 lt!1248103))))

(assert (=> b!3617053 false))

(declare-fun b!3617054 () Bool)

(declare-fun e!2238739 () Unit!54576)

(declare-fun e!2238748 () Unit!54576)

(assert (=> b!3617054 (= e!2238739 e!2238748)))

(declare-fun lt!1248063 () List!38212)

(declare-fun suffix!1395 () List!38212)

(declare-fun lt!1248090 () Unit!54576)

(declare-fun lt!1248102 () List!38212)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!40 (List!38212 List!38212 List!38212 List!38212) Unit!54576)

(assert (=> b!3617054 (= lt!1248090 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!40 lt!1248076 suffix!1395 lt!1248102 lt!1248063))))

(declare-fun lt!1248084 () C!21028)

(declare-fun contains!7387 (List!38212 C!21028) Bool)

(assert (=> b!3617054 (contains!7387 lt!1248102 lt!1248084)))

(declare-fun c!625847 () Bool)

(assert (=> b!3617054 (= c!625847 (isSeparator!5662 rule!403))))

(declare-fun e!2238767 () Bool)

(assert (=> b!3617055 (= e!2238767 (and tp!1105142 tp!1105144))))

(declare-fun b!3617056 () Bool)

(assert (=> b!3617056 false))

(declare-fun lt!1248114 () Unit!54576)

(declare-fun call!261629 () Unit!54576)

(assert (=> b!3617056 (= lt!1248114 call!261629)))

(declare-fun call!261634 () Bool)

(assert (=> b!3617056 (not call!261634)))

(declare-datatypes ((List!38213 0))(
  ( (Nil!38089) (Cons!38089 (h!43509 Rule!11124) (t!293864 List!38213)) )
))
(declare-fun rules!3307 () List!38213)

(declare-fun lt!1248104 () Unit!54576)

(declare-datatypes ((LexerInterface!5251 0))(
  ( (LexerInterfaceExt!5248 (__x!24002 Int)) (Lexer!5249) )
))
(declare-fun thiss!23823 () LexerInterface!5251)

(declare-datatypes ((Token!10690 0))(
  ( (Token!10691 (value!181827 TokenValue!5892) (rule!8420 Rule!11124) (size!29051 Int) (originalCharacters!6376 List!38212)) )
))
(declare-datatypes ((tuple2!37972 0))(
  ( (tuple2!37973 (_1!22120 Token!10690) (_2!22120 List!38212)) )
))
(declare-fun lt!1248117 () tuple2!37972)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!250 (LexerInterface!5251 List!38213 List!38213 Rule!11124 Rule!11124 C!21028) Unit!54576)

(assert (=> b!3617056 (= lt!1248104 (lemmaSepRuleNotContainsCharContainedInANonSepRule!250 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8420 (_1!22120 lt!1248117)) lt!1248103))))

(declare-fun e!2238761 () Unit!54576)

(declare-fun Unit!54581 () Unit!54576)

(assert (=> b!3617056 (= e!2238761 Unit!54581)))

(declare-fun b!3617057 () Bool)

(declare-fun Unit!54582 () Unit!54576)

(assert (=> b!3617057 (= e!2238743 Unit!54582)))

(declare-fun b!3617058 () Bool)

(declare-fun Unit!54583 () Unit!54576)

(assert (=> b!3617058 (= e!2238740 Unit!54583)))

(declare-fun lt!1248071 () Unit!54576)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!310 (LexerInterface!5251 List!38213 Rule!11124 List!38212 List!38212 List!38212 Rule!11124) Unit!54576)

(assert (=> b!3617058 (= lt!1248071 (lemmaMaxPrefixOutputsMaxPrefix!310 thiss!23823 rules!3307 (rule!8420 (_1!22120 lt!1248117)) lt!1248102 lt!1248063 lt!1248076 rule!403))))

(assert (=> b!3617058 false))

(declare-fun e!2238742 () Bool)

(assert (=> b!3617059 (= e!2238742 (and tp!1105149 tp!1105153))))

(declare-fun b!3617060 () Bool)

(assert (=> b!3617060 false))

(declare-fun lt!1248064 () Unit!54576)

(assert (=> b!3617060 (= lt!1248064 call!261629)))

(assert (=> b!3617060 (not call!261634)))

(declare-fun lt!1248080 () Unit!54576)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!368 (LexerInterface!5251 List!38213 List!38213 Rule!11124 Rule!11124 C!21028) Unit!54576)

(assert (=> b!3617060 (= lt!1248080 (lemmaNonSepRuleNotContainsCharContainedInASepRule!368 thiss!23823 rules!3307 rules!3307 (rule!8420 (_1!22120 lt!1248117)) rule!403 lt!1248103))))

(declare-fun e!2238735 () Unit!54576)

(declare-fun Unit!54584 () Unit!54576)

(assert (=> b!3617060 (= e!2238735 Unit!54584)))

(declare-fun b!3617062 () Bool)

(declare-fun e!2238760 () Bool)

(declare-fun e!2238755 () Bool)

(assert (=> b!3617062 (= e!2238760 e!2238755)))

(declare-fun res!1463555 () Bool)

(assert (=> b!3617062 (=> (not res!1463555) (not e!2238755))))

(declare-fun lt!1248097 () tuple2!37972)

(declare-fun token!511 () Token!10690)

(assert (=> b!3617062 (= res!1463555 (= (_1!22120 lt!1248097) token!511))))

(declare-datatypes ((Option!7954 0))(
  ( (None!7953) (Some!7953 (v!37711 tuple2!37972)) )
))
(declare-fun lt!1248096 () Option!7954)

(declare-fun get!12395 (Option!7954) tuple2!37972)

(assert (=> b!3617062 (= lt!1248097 (get!12395 lt!1248096))))

(declare-fun b!3617063 () Bool)

(declare-fun e!2238769 () Bool)

(declare-fun tp_is_empty!17925 () Bool)

(declare-fun tp!1105156 () Bool)

(assert (=> b!3617063 (= e!2238769 (and tp_is_empty!17925 tp!1105156))))

(declare-fun b!3617064 () Bool)

(declare-fun e!2238744 () Bool)

(declare-fun e!2238770 () Bool)

(assert (=> b!3617064 (= e!2238744 e!2238770)))

(declare-fun res!1463547 () Bool)

(assert (=> b!3617064 (=> res!1463547 e!2238770)))

(declare-fun ++!9478 (List!38212 List!38212) List!38212)

(declare-fun getSuffix!1600 (List!38212 List!38212) List!38212)

(assert (=> b!3617064 (= res!1463547 (not (= lt!1248063 (++!9478 lt!1248076 (getSuffix!1600 lt!1248063 lt!1248076)))))))

(declare-fun lt!1248100 () Unit!54576)

(declare-fun e!2238751 () Unit!54576)

(assert (=> b!3617064 (= lt!1248100 e!2238751)))

(declare-fun c!625842 () Bool)

(assert (=> b!3617064 (= c!625842 (not (= (rule!8420 (_1!22120 lt!1248117)) (rule!8420 token!511))))))

(assert (=> b!3617064 (= lt!1248102 lt!1248076)))

(declare-fun lt!1248086 () Unit!54576)

(declare-fun lemmaIsPrefixSameLengthThenSameList!599 (List!38212 List!38212 List!38212) Unit!54576)

(assert (=> b!3617064 (= lt!1248086 (lemmaIsPrefixSameLengthThenSameList!599 lt!1248102 lt!1248076 lt!1248063))))

(declare-fun lt!1248112 () Unit!54576)

(assert (=> b!3617064 (= lt!1248112 e!2238740)))

(declare-fun c!625849 () Bool)

(declare-fun lt!1248085 () Int)

(declare-fun lt!1248077 () Int)

(assert (=> b!3617064 (= c!625849 (< lt!1248085 lt!1248077))))

(declare-fun lt!1248093 () Unit!54576)

(assert (=> b!3617064 (= lt!1248093 e!2238739)))

(declare-fun c!625845 () Bool)

(assert (=> b!3617064 (= c!625845 (> lt!1248085 lt!1248077))))

(declare-fun lt!1248107 () BalanceConc!22836)

(declare-fun size!29052 (BalanceConc!22836) Int)

(assert (=> b!3617064 (= lt!1248077 (size!29052 lt!1248107))))

(declare-fun lt!1248098 () Unit!54576)

(declare-fun e!2238762 () Unit!54576)

(assert (=> b!3617064 (= lt!1248098 e!2238762)))

(declare-fun c!625851 () Bool)

(assert (=> b!3617064 (= c!625851 (isSeparator!5662 rule!403))))

(declare-fun lt!1248118 () Unit!54576)

(assert (=> b!3617064 (= lt!1248118 e!2238743)))

(declare-fun c!625846 () Bool)

(declare-fun lt!1248072 () List!38212)

(assert (=> b!3617064 (= c!625846 (not (contains!7387 lt!1248072 lt!1248103)))))

(declare-fun head!7628 (List!38212) C!21028)

(assert (=> b!3617064 (= lt!1248103 (head!7628 lt!1248102))))

(declare-fun b!3617065 () Bool)

(declare-fun e!2238733 () Bool)

(declare-fun lt!1248079 () Rule!11124)

(assert (=> b!3617065 (= e!2238733 (= (rule!8420 (_1!22120 lt!1248117)) lt!1248079))))

(declare-fun b!3617066 () Bool)

(assert (=> b!3617066 (= e!2238770 true)))

(declare-fun lt!1248089 () Int)

(declare-fun size!29053 (List!38212) Int)

(assert (=> b!3617066 (= lt!1248089 (size!29053 lt!1248076))))

(declare-fun lt!1248060 () TokenValue!5892)

(declare-fun lt!1248106 () BalanceConc!22836)

(declare-fun apply!9168 (TokenValueInjection!11212 BalanceConc!22836) TokenValue!5892)

(assert (=> b!3617066 (= lt!1248060 (apply!9168 (transformation!5662 rule!403) lt!1248106))))

(declare-fun lt!1248105 () Unit!54576)

(declare-fun lemmaSemiInverse!1419 (TokenValueInjection!11212 BalanceConc!22836) Unit!54576)

(assert (=> b!3617066 (= lt!1248105 (lemmaSemiInverse!1419 (transformation!5662 rule!403) lt!1248106))))

(declare-fun seqFromList!4215 (List!38212) BalanceConc!22836)

(assert (=> b!3617066 (= lt!1248106 (seqFromList!4215 lt!1248076))))

(declare-fun b!3617067 () Bool)

(declare-fun e!2238753 () Bool)

(assert (=> b!3617067 (= e!2238753 e!2238744)))

(declare-fun res!1463551 () Bool)

(assert (=> b!3617067 (=> res!1463551 e!2238744)))

(declare-fun lt!1248091 () List!38212)

(declare-fun lt!1248070 () Option!7954)

(assert (=> b!3617067 (= res!1463551 (or (not (= lt!1248091 (_2!22120 lt!1248117))) (not (= lt!1248070 (Some!7953 (tuple2!37973 (_1!22120 lt!1248117) lt!1248091))))))))

(assert (=> b!3617067 (= (_2!22120 lt!1248117) lt!1248091)))

(declare-fun lt!1248074 () Unit!54576)

(declare-fun lemmaSamePrefixThenSameSuffix!1380 (List!38212 List!38212 List!38212 List!38212 List!38212) Unit!54576)

(assert (=> b!3617067 (= lt!1248074 (lemmaSamePrefixThenSameSuffix!1380 lt!1248102 (_2!22120 lt!1248117) lt!1248102 lt!1248091 lt!1248063))))

(assert (=> b!3617067 (= lt!1248091 (getSuffix!1600 lt!1248063 lt!1248102))))

(declare-fun lt!1248083 () Int)

(declare-fun lt!1248088 () TokenValue!5892)

(assert (=> b!3617067 (= lt!1248070 (Some!7953 (tuple2!37973 (Token!10691 lt!1248088 (rule!8420 (_1!22120 lt!1248117)) lt!1248083 lt!1248102) (_2!22120 lt!1248117))))))

(declare-fun maxPrefixOneRule!1929 (LexerInterface!5251 Rule!11124 List!38212) Option!7954)

(assert (=> b!3617067 (= lt!1248070 (maxPrefixOneRule!1929 thiss!23823 (rule!8420 (_1!22120 lt!1248117)) lt!1248063))))

(assert (=> b!3617067 (= lt!1248083 (size!29053 lt!1248102))))

(assert (=> b!3617067 (= lt!1248088 (apply!9168 (transformation!5662 (rule!8420 (_1!22120 lt!1248117))) (seqFromList!4215 lt!1248102)))))

(declare-fun lt!1248095 () Unit!54576)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1001 (LexerInterface!5251 List!38213 List!38212 List!38212 List!38212 Rule!11124) Unit!54576)

(assert (=> b!3617067 (= lt!1248095 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1001 thiss!23823 rules!3307 lt!1248102 lt!1248063 (_2!22120 lt!1248117) (rule!8420 (_1!22120 lt!1248117))))))

(declare-fun b!3617068 () Bool)

(declare-fun e!2238734 () Bool)

(assert (=> b!3617068 e!2238734))

(declare-fun res!1463545 () Bool)

(assert (=> b!3617068 (=> (not res!1463545) (not e!2238734))))

(declare-fun matchR!4990 (Regex!10421 List!38212) Bool)

(assert (=> b!3617068 (= res!1463545 (not (matchR!4990 (regex!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248076)))))

(declare-fun lt!1248061 () Unit!54576)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!196 (LexerInterface!5251 List!38213 Rule!11124 List!38212 List!38212 Rule!11124) Unit!54576)

(assert (=> b!3617068 (= lt!1248061 (lemmaMaxPrefNoSmallerRuleMatches!196 thiss!23823 rules!3307 rule!403 lt!1248076 lt!1248076 (rule!8420 (_1!22120 lt!1248117))))))

(declare-fun isEmpty!22502 (List!38212) Bool)

(assert (=> b!3617068 (isEmpty!22502 (getSuffix!1600 lt!1248076 lt!1248076))))

(declare-fun lt!1248082 () Unit!54576)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!156 (List!38212) Unit!54576)

(assert (=> b!3617068 (= lt!1248082 (lemmaGetSuffixOnListWithItSelfIsEmpty!156 lt!1248076))))

(declare-fun e!2238745 () Unit!54576)

(declare-fun Unit!54585 () Unit!54576)

(assert (=> b!3617068 (= e!2238745 Unit!54585)))

(declare-fun b!3617069 () Bool)

(declare-fun e!2238758 () Bool)

(declare-fun e!2238768 () Bool)

(assert (=> b!3617069 (= e!2238758 e!2238768)))

(declare-fun res!1463560 () Bool)

(assert (=> b!3617069 (=> res!1463560 e!2238768)))

(declare-fun isPrefix!3025 (List!38212 List!38212) Bool)

(assert (=> b!3617069 (= res!1463560 (not (isPrefix!3025 lt!1248102 lt!1248063)))))

(assert (=> b!3617069 (isPrefix!3025 lt!1248102 (++!9478 lt!1248102 (_2!22120 lt!1248117)))))

(declare-fun lt!1248069 () Unit!54576)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1946 (List!38212 List!38212) Unit!54576)

(assert (=> b!3617069 (= lt!1248069 (lemmaConcatTwoListThenFirstIsPrefix!1946 lt!1248102 (_2!22120 lt!1248117)))))

(declare-fun lt!1248092 () BalanceConc!22836)

(declare-fun list!14054 (BalanceConc!22836) List!38212)

(assert (=> b!3617069 (= lt!1248102 (list!14054 lt!1248092))))

(declare-fun charsOf!3676 (Token!10690) BalanceConc!22836)

(assert (=> b!3617069 (= lt!1248092 (charsOf!3676 (_1!22120 lt!1248117)))))

(declare-fun e!2238746 () Bool)

(assert (=> b!3617069 e!2238746))

(declare-fun res!1463544 () Bool)

(assert (=> b!3617069 (=> (not res!1463544) (not e!2238746))))

(declare-datatypes ((Option!7955 0))(
  ( (None!7954) (Some!7954 (v!37712 Rule!11124)) )
))
(declare-fun lt!1248075 () Option!7955)

(declare-fun isDefined!6186 (Option!7955) Bool)

(assert (=> b!3617069 (= res!1463544 (isDefined!6186 lt!1248075))))

(declare-fun getRuleFromTag!1268 (LexerInterface!5251 List!38213 String!42794) Option!7955)

(assert (=> b!3617069 (= lt!1248075 (getRuleFromTag!1268 thiss!23823 rules!3307 (tag!6376 (rule!8420 (_1!22120 lt!1248117)))))))

(declare-fun lt!1248062 () Unit!54576)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1268 (LexerInterface!5251 List!38213 List!38212 Token!10690) Unit!54576)

(assert (=> b!3617069 (= lt!1248062 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1268 thiss!23823 rules!3307 lt!1248063 (_1!22120 lt!1248117)))))

(declare-fun lt!1248067 () Option!7954)

(assert (=> b!3617069 (= lt!1248117 (get!12395 lt!1248067))))

(declare-fun lt!1248099 () Unit!54576)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!931 (LexerInterface!5251 List!38213 List!38212 List!38212) Unit!54576)

(assert (=> b!3617069 (= lt!1248099 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!931 thiss!23823 rules!3307 lt!1248076 suffix!1395))))

(declare-fun maxPrefix!2785 (LexerInterface!5251 List!38213 List!38212) Option!7954)

(assert (=> b!3617069 (= lt!1248067 (maxPrefix!2785 thiss!23823 rules!3307 lt!1248063))))

(assert (=> b!3617069 (isPrefix!3025 lt!1248076 lt!1248063)))

(declare-fun lt!1248094 () Unit!54576)

(assert (=> b!3617069 (= lt!1248094 (lemmaConcatTwoListThenFirstIsPrefix!1946 lt!1248076 suffix!1395))))

(assert (=> b!3617069 (= lt!1248063 (++!9478 lt!1248076 suffix!1395))))

(declare-fun bm!261624 () Bool)

(assert (=> bm!261624 (= call!261629 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!646 (regex!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248102 lt!1248103))))

(declare-fun bm!261625 () Bool)

(declare-fun call!261632 () List!38212)

(declare-fun usedCharacters!876 (Regex!10421) List!38212)

(assert (=> bm!261625 (= call!261632 (usedCharacters!876 (regex!5662 (rule!8420 (_1!22120 lt!1248117)))))))

(declare-fun b!3617070 () Bool)

(declare-fun res!1463558 () Bool)

(assert (=> b!3617070 (=> res!1463558 e!2238758)))

(declare-fun anOtherTypeRule!33 () Rule!11124)

(assert (=> b!3617070 (= res!1463558 (not (contains!7387 (usedCharacters!876 (regex!5662 anOtherTypeRule!33)) lt!1248084)))))

(declare-fun e!2238736 () Bool)

(declare-fun tp!1105152 () Bool)

(declare-fun b!3617071 () Bool)

(declare-fun inv!51471 (String!42794) Bool)

(declare-fun inv!51474 (TokenValueInjection!11212) Bool)

(assert (=> b!3617071 (= e!2238736 (and tp!1105152 (inv!51471 (tag!6376 (h!43509 rules!3307))) (inv!51474 (transformation!5662 (h!43509 rules!3307))) e!2238742))))

(declare-fun bm!261626 () Bool)

(declare-fun call!261630 () List!38212)

(assert (=> bm!261626 (= call!261630 (usedCharacters!876 (regex!5662 (rule!8420 (_1!22120 lt!1248117)))))))

(declare-fun b!3617072 () Bool)

(assert (=> b!3617072 (= e!2238762 e!2238761)))

(declare-fun c!625843 () Bool)

(assert (=> b!3617072 (= c!625843 (isSeparator!5662 (rule!8420 (_1!22120 lt!1248117))))))

(declare-fun b!3617073 () Bool)

(declare-fun e!2238752 () Unit!54576)

(declare-fun Unit!54586 () Unit!54576)

(assert (=> b!3617073 (= e!2238752 Unit!54586)))

(declare-fun b!3617074 () Bool)

(declare-fun res!1463543 () Bool)

(declare-fun e!2238763 () Bool)

(assert (=> b!3617074 (=> res!1463543 e!2238763)))

(assert (=> b!3617074 (= res!1463543 (isEmpty!22502 suffix!1395))))

(declare-fun b!3617075 () Bool)

(assert (=> b!3617075 false))

(declare-fun lt!1248116 () Unit!54576)

(declare-fun call!261633 () Unit!54576)

(assert (=> b!3617075 (= lt!1248116 call!261633)))

(declare-fun call!261631 () Bool)

(assert (=> b!3617075 (not call!261631)))

(declare-fun lt!1248081 () Unit!54576)

(assert (=> b!3617075 (= lt!1248081 (lemmaSepRuleNotContainsCharContainedInANonSepRule!250 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8420 (_1!22120 lt!1248117)) lt!1248084))))

(declare-fun Unit!54587 () Unit!54576)

(assert (=> b!3617075 (= e!2238748 Unit!54587)))

(declare-fun b!3617076 () Bool)

(declare-fun res!1463542 () Bool)

(declare-fun e!2238764 () Bool)

(assert (=> b!3617076 (=> (not res!1463542) (not e!2238764))))

(declare-fun contains!7388 (List!38213 Rule!11124) Bool)

(assert (=> b!3617076 (= res!1463542 (contains!7388 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3617077 () Bool)

(declare-fun Unit!54588 () Unit!54576)

(assert (=> b!3617077 (= e!2238761 Unit!54588)))

(declare-fun b!3617078 () Bool)

(declare-fun res!1463563 () Bool)

(assert (=> b!3617078 (=> (not res!1463563) (not e!2238764))))

(declare-fun isEmpty!22503 (List!38213) Bool)

(assert (=> b!3617078 (= res!1463563 (not (isEmpty!22503 rules!3307)))))

(declare-fun b!3617079 () Bool)

(declare-fun res!1463540 () Bool)

(assert (=> b!3617079 (=> (not res!1463540) (not e!2238764))))

(assert (=> b!3617079 (= res!1463540 (not (= (isSeparator!5662 anOtherTypeRule!33) (isSeparator!5662 rule!403))))))

(declare-fun b!3617080 () Bool)

(declare-fun Unit!54589 () Unit!54576)

(assert (=> b!3617080 (= e!2238751 Unit!54589)))

(declare-fun lt!1248087 () Int)

(declare-fun getIndex!444 (List!38213 Rule!11124) Int)

(assert (=> b!3617080 (= lt!1248087 (getIndex!444 rules!3307 (rule!8420 (_1!22120 lt!1248117))))))

(declare-fun lt!1248065 () Int)

(assert (=> b!3617080 (= lt!1248065 (getIndex!444 rules!3307 rule!403))))

(declare-fun c!625848 () Bool)

(assert (=> b!3617080 (= c!625848 (< lt!1248087 lt!1248065))))

(declare-fun lt!1248066 () Unit!54576)

(assert (=> b!3617080 (= lt!1248066 e!2238745)))

(declare-fun c!625844 () Bool)

(assert (=> b!3617080 (= c!625844 (< lt!1248065 lt!1248087))))

(declare-fun lt!1248113 () Unit!54576)

(assert (=> b!3617080 (= lt!1248113 e!2238752)))

(declare-fun lt!1248068 () Unit!54576)

(declare-fun lemmaSameIndexThenSameElement!212 (List!38213 Rule!11124 Rule!11124) Unit!54576)

(assert (=> b!3617080 (= lt!1248068 (lemmaSameIndexThenSameElement!212 rules!3307 (rule!8420 (_1!22120 lt!1248117)) rule!403))))

(assert (=> b!3617080 false))

(declare-fun b!3617081 () Bool)

(declare-fun Unit!54590 () Unit!54576)

(assert (=> b!3617081 (= e!2238751 Unit!54590)))

(declare-fun tp!1105150 () Bool)

(declare-fun b!3617082 () Bool)

(declare-fun e!2238757 () Bool)

(declare-fun e!2238741 () Bool)

(assert (=> b!3617082 (= e!2238741 (and tp!1105150 (inv!51471 (tag!6376 (rule!8420 token!511))) (inv!51474 (transformation!5662 (rule!8420 token!511))) e!2238757))))

(declare-fun bm!261627 () Bool)

(assert (=> bm!261627 (= call!261633 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!646 (regex!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248102 lt!1248084))))

(declare-fun bm!261628 () Bool)

(assert (=> bm!261628 (= call!261631 (contains!7387 call!261630 lt!1248084))))

(declare-fun b!3617083 () Bool)

(assert (=> b!3617083 (= e!2238755 (not e!2238763))))

(declare-fun res!1463552 () Bool)

(assert (=> b!3617083 (=> res!1463552 e!2238763)))

(assert (=> b!3617083 (= res!1463552 (not (matchR!4990 (regex!5662 rule!403) lt!1248076)))))

(declare-fun ruleValid!1927 (LexerInterface!5251 Rule!11124) Bool)

(assert (=> b!3617083 (ruleValid!1927 thiss!23823 rule!403)))

(declare-fun lt!1248073 () Unit!54576)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1082 (LexerInterface!5251 Rule!11124 List!38213) Unit!54576)

(assert (=> b!3617083 (= lt!1248073 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1082 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2238738 () Bool)

(declare-fun e!2238759 () Bool)

(declare-fun b!3617084 () Bool)

(declare-fun tp!1105143 () Bool)

(assert (=> b!3617084 (= e!2238738 (and tp!1105143 (inv!51471 (tag!6376 anOtherTypeRule!33)) (inv!51474 (transformation!5662 anOtherTypeRule!33)) e!2238759))))

(declare-fun bm!261629 () Bool)

(assert (=> bm!261629 (= call!261634 (contains!7387 call!261632 lt!1248103))))

(declare-fun b!3617085 () Bool)

(declare-fun res!1463553 () Bool)

(assert (=> b!3617085 (=> (not res!1463553) (not e!2238764))))

(declare-fun rulesInvariant!4648 (LexerInterface!5251 List!38213) Bool)

(assert (=> b!3617085 (= res!1463553 (rulesInvariant!4648 thiss!23823 rules!3307))))

(declare-fun b!3617086 () Bool)

(assert (=> b!3617086 (= e!2238763 e!2238758)))

(declare-fun res!1463557 () Bool)

(assert (=> b!3617086 (=> res!1463557 e!2238758)))

(assert (=> b!3617086 (= res!1463557 (contains!7387 lt!1248072 lt!1248084))))

(assert (=> b!3617086 (= lt!1248084 (head!7628 suffix!1395))))

(assert (=> b!3617086 (= lt!1248072 (usedCharacters!876 (regex!5662 rule!403)))))

(declare-fun b!3617087 () Bool)

(assert (=> b!3617087 (= e!2238762 e!2238735)))

(declare-fun c!625850 () Bool)

(assert (=> b!3617087 (= c!625850 (not (isSeparator!5662 (rule!8420 (_1!22120 lt!1248117)))))))

(declare-fun b!3617088 () Bool)

(assert (=> b!3617088 (= e!2238746 e!2238733)))

(declare-fun res!1463561 () Bool)

(assert (=> b!3617088 (=> (not res!1463561) (not e!2238733))))

(assert (=> b!3617088 (= res!1463561 (matchR!4990 (regex!5662 lt!1248079) (list!14054 (charsOf!3676 (_1!22120 lt!1248117)))))))

(declare-fun get!12396 (Option!7955) Rule!11124)

(assert (=> b!3617088 (= lt!1248079 (get!12396 lt!1248075))))

(declare-fun b!3617089 () Bool)

(assert (=> b!3617089 (= e!2238764 e!2238760)))

(declare-fun res!1463546 () Bool)

(assert (=> b!3617089 (=> (not res!1463546) (not e!2238760))))

(declare-fun isDefined!6187 (Option!7954) Bool)

(assert (=> b!3617089 (= res!1463546 (isDefined!6187 lt!1248096))))

(assert (=> b!3617089 (= lt!1248096 (maxPrefix!2785 thiss!23823 rules!3307 lt!1248076))))

(assert (=> b!3617089 (= lt!1248076 (list!14054 lt!1248107))))

(assert (=> b!3617089 (= lt!1248107 (charsOf!3676 token!511))))

(declare-fun b!3617090 () Bool)

(assert (=> b!3617090 false))

(declare-fun lt!1248059 () Unit!54576)

(assert (=> b!3617090 (= lt!1248059 (lemmaMaxPrefNoSmallerRuleMatches!196 thiss!23823 rules!3307 (rule!8420 (_1!22120 lt!1248117)) lt!1248076 lt!1248063 rule!403))))

(declare-fun Unit!54591 () Unit!54576)

(assert (=> b!3617090 (= e!2238752 Unit!54591)))

(declare-fun b!3617091 () Bool)

(declare-fun Unit!54592 () Unit!54576)

(assert (=> b!3617091 (= e!2238739 Unit!54592)))

(declare-fun b!3617092 () Bool)

(declare-fun res!1463549 () Bool)

(assert (=> b!3617092 (=> (not res!1463549) (not e!2238764))))

(assert (=> b!3617092 (= res!1463549 (contains!7388 rules!3307 rule!403))))

(declare-fun b!3617093 () Bool)

(declare-fun Unit!54593 () Unit!54576)

(assert (=> b!3617093 (= e!2238745 Unit!54593)))

(declare-fun b!3617094 () Bool)

(declare-fun Unit!54594 () Unit!54576)

(assert (=> b!3617094 (= e!2238735 Unit!54594)))

(declare-fun b!3617095 () Bool)

(declare-fun res!1463554 () Bool)

(assert (=> b!3617095 (=> (not res!1463554) (not e!2238755))))

(assert (=> b!3617095 (= res!1463554 (isEmpty!22502 (_2!22120 lt!1248097)))))

(declare-fun e!2238756 () Bool)

(declare-fun b!3617096 () Bool)

(declare-fun tp!1105155 () Bool)

(assert (=> b!3617096 (= e!2238756 (and tp!1105155 (inv!51471 (tag!6376 rule!403)) (inv!51474 (transformation!5662 rule!403)) e!2238767))))

(declare-fun b!3617097 () Bool)

(assert (=> b!3617097 (= e!2238734 false)))

(declare-fun b!3617098 () Bool)

(declare-fun res!1463556 () Bool)

(assert (=> b!3617098 (=> (not res!1463556) (not e!2238755))))

(assert (=> b!3617098 (= res!1463556 (= (rule!8420 token!511) rule!403))))

(assert (=> b!3617099 (= e!2238757 (and tp!1105151 tp!1105148))))

(declare-fun b!3617100 () Bool)

(declare-fun e!2238737 () Bool)

(declare-fun tp!1105145 () Bool)

(assert (=> b!3617100 (= e!2238737 (and e!2238736 tp!1105145))))

(declare-fun b!3617101 () Bool)

(assert (=> b!3617101 false))

(declare-fun lt!1248109 () Unit!54576)

(assert (=> b!3617101 (= lt!1248109 call!261633)))

(assert (=> b!3617101 (not call!261631)))

(declare-fun lt!1248101 () Unit!54576)

(assert (=> b!3617101 (= lt!1248101 (lemmaNonSepRuleNotContainsCharContainedInASepRule!368 thiss!23823 rules!3307 rules!3307 (rule!8420 (_1!22120 lt!1248117)) anOtherTypeRule!33 lt!1248084))))

(declare-fun Unit!54595 () Unit!54576)

(assert (=> b!3617101 (= e!2238748 Unit!54595)))

(declare-fun b!3617102 () Bool)

(declare-fun res!1463562 () Bool)

(assert (=> b!3617102 (=> res!1463562 e!2238758)))

(declare-fun sepAndNonSepRulesDisjointChars!1832 (List!38213 List!38213) Bool)

(assert (=> b!3617102 (= res!1463562 (not (sepAndNonSepRulesDisjointChars!1832 rules!3307 rules!3307)))))

(declare-fun b!3617103 () Bool)

(declare-fun res!1463550 () Bool)

(assert (=> b!3617103 (=> res!1463550 e!2238770)))

(assert (=> b!3617103 (= res!1463550 (isEmpty!22502 lt!1248076))))

(declare-fun b!3617104 () Bool)

(declare-fun res!1463541 () Bool)

(assert (=> b!3617104 (=> res!1463541 e!2238768)))

(assert (=> b!3617104 (= res!1463541 (not (matchR!4990 (regex!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248102)))))

(declare-fun tp!1105146 () Bool)

(declare-fun e!2238754 () Bool)

(declare-fun b!3617105 () Bool)

(declare-fun inv!21 (TokenValue!5892) Bool)

(assert (=> b!3617105 (= e!2238754 (and (inv!21 (value!181827 token!511)) e!2238741 tp!1105146))))

(declare-fun b!3617106 () Bool)

(assert (=> b!3617106 (= e!2238768 e!2238753)))

(declare-fun res!1463559 () Bool)

(assert (=> b!3617106 (=> res!1463559 e!2238753)))

(declare-fun lt!1248078 () TokenValue!5892)

(assert (=> b!3617106 (= res!1463559 (not (= lt!1248067 (Some!7953 (tuple2!37973 (Token!10691 lt!1248078 (rule!8420 (_1!22120 lt!1248117)) lt!1248085 lt!1248102) (_2!22120 lt!1248117))))))))

(assert (=> b!3617106 (= lt!1248085 (size!29052 lt!1248092))))

(assert (=> b!3617106 (= lt!1248078 (apply!9168 (transformation!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248092))))

(declare-fun lt!1248108 () Unit!54576)

(declare-fun lemmaCharactersSize!715 (Token!10690) Unit!54576)

(assert (=> b!3617106 (= lt!1248108 (lemmaCharactersSize!715 (_1!22120 lt!1248117)))))

(declare-fun lt!1248115 () Unit!54576)

(declare-fun lemmaEqSameImage!853 (TokenValueInjection!11212 BalanceConc!22836 BalanceConc!22836) Unit!54576)

(assert (=> b!3617106 (= lt!1248115 (lemmaEqSameImage!853 (transformation!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248092 (seqFromList!4215 (originalCharacters!6376 (_1!22120 lt!1248117)))))))

(declare-fun lt!1248110 () Unit!54576)

(assert (=> b!3617106 (= lt!1248110 (lemmaSemiInverse!1419 (transformation!5662 (rule!8420 (_1!22120 lt!1248117))) lt!1248092))))

(assert (=> b!3617061 (= e!2238759 (and tp!1105147 tp!1105154))))

(declare-fun res!1463548 () Bool)

(assert (=> start!336846 (=> (not res!1463548) (not e!2238764))))

(get-info :version)

(assert (=> start!336846 (= res!1463548 ((_ is Lexer!5249) thiss!23823))))

(assert (=> start!336846 e!2238764))

(assert (=> start!336846 e!2238737))

(assert (=> start!336846 e!2238769))

(assert (=> start!336846 true))

(declare-fun inv!51475 (Token!10690) Bool)

(assert (=> start!336846 (and (inv!51475 token!511) e!2238754)))

(assert (=> start!336846 e!2238756))

(assert (=> start!336846 e!2238738))

(assert (= (and start!336846 res!1463548) b!3617078))

(assert (= (and b!3617078 res!1463563) b!3617085))

(assert (= (and b!3617085 res!1463553) b!3617092))

(assert (= (and b!3617092 res!1463549) b!3617076))

(assert (= (and b!3617076 res!1463542) b!3617079))

(assert (= (and b!3617079 res!1463540) b!3617089))

(assert (= (and b!3617089 res!1463546) b!3617062))

(assert (= (and b!3617062 res!1463555) b!3617095))

(assert (= (and b!3617095 res!1463554) b!3617098))

(assert (= (and b!3617098 res!1463556) b!3617083))

(assert (= (and b!3617083 (not res!1463552)) b!3617074))

(assert (= (and b!3617074 (not res!1463543)) b!3617086))

(assert (= (and b!3617086 (not res!1463557)) b!3617070))

(assert (= (and b!3617070 (not res!1463558)) b!3617102))

(assert (= (and b!3617102 (not res!1463562)) b!3617069))

(assert (= (and b!3617069 res!1463544) b!3617088))

(assert (= (and b!3617088 res!1463561) b!3617065))

(assert (= (and b!3617069 (not res!1463560)) b!3617104))

(assert (= (and b!3617104 (not res!1463541)) b!3617106))

(assert (= (and b!3617106 (not res!1463559)) b!3617067))

(assert (= (and b!3617067 (not res!1463551)) b!3617064))

(assert (= (and b!3617064 c!625846) b!3617053))

(assert (= (and b!3617064 (not c!625846)) b!3617057))

(assert (= (and b!3617064 c!625851) b!3617087))

(assert (= (and b!3617064 (not c!625851)) b!3617072))

(assert (= (and b!3617087 c!625850) b!3617060))

(assert (= (and b!3617087 (not c!625850)) b!3617094))

(assert (= (and b!3617072 c!625843) b!3617056))

(assert (= (and b!3617072 (not c!625843)) b!3617077))

(assert (= (or b!3617060 b!3617056) bm!261624))

(assert (= (or b!3617060 b!3617056) bm!261625))

(assert (= (or b!3617060 b!3617056) bm!261629))

(assert (= (and b!3617064 c!625845) b!3617054))

(assert (= (and b!3617064 (not c!625845)) b!3617091))

(assert (= (and b!3617054 c!625847) b!3617075))

(assert (= (and b!3617054 (not c!625847)) b!3617101))

(assert (= (or b!3617075 b!3617101) bm!261627))

(assert (= (or b!3617075 b!3617101) bm!261626))

(assert (= (or b!3617075 b!3617101) bm!261628))

(assert (= (and b!3617064 c!625849) b!3617058))

(assert (= (and b!3617064 (not c!625849)) b!3617052))

(assert (= (and b!3617064 c!625842) b!3617080))

(assert (= (and b!3617064 (not c!625842)) b!3617081))

(assert (= (and b!3617080 c!625848) b!3617068))

(assert (= (and b!3617080 (not c!625848)) b!3617093))

(assert (= (and b!3617068 res!1463545) b!3617097))

(assert (= (and b!3617080 c!625844) b!3617090))

(assert (= (and b!3617080 (not c!625844)) b!3617073))

(assert (= (and b!3617064 (not res!1463547)) b!3617103))

(assert (= (and b!3617103 (not res!1463550)) b!3617066))

(assert (= b!3617071 b!3617059))

(assert (= b!3617100 b!3617071))

(assert (= (and start!336846 ((_ is Cons!38089) rules!3307)) b!3617100))

(assert (= (and start!336846 ((_ is Cons!38088) suffix!1395)) b!3617063))

(assert (= b!3617082 b!3617099))

(assert (= b!3617105 b!3617082))

(assert (= start!336846 b!3617105))

(assert (= b!3617096 b!3617055))

(assert (= start!336846 b!3617096))

(assert (= b!3617084 b!3617061))

(assert (= start!336846 b!3617084))

(declare-fun m!4115791 () Bool)

(assert (=> b!3617053 m!4115791))

(declare-fun m!4115793 () Bool)

(assert (=> b!3617088 m!4115793))

(assert (=> b!3617088 m!4115793))

(declare-fun m!4115795 () Bool)

(assert (=> b!3617088 m!4115795))

(assert (=> b!3617088 m!4115795))

(declare-fun m!4115797 () Bool)

(assert (=> b!3617088 m!4115797))

(declare-fun m!4115799 () Bool)

(assert (=> b!3617088 m!4115799))

(declare-fun m!4115801 () Bool)

(assert (=> b!3617054 m!4115801))

(declare-fun m!4115803 () Bool)

(assert (=> b!3617054 m!4115803))

(declare-fun m!4115805 () Bool)

(assert (=> b!3617080 m!4115805))

(declare-fun m!4115807 () Bool)

(assert (=> b!3617080 m!4115807))

(declare-fun m!4115809 () Bool)

(assert (=> b!3617080 m!4115809))

(declare-fun m!4115811 () Bool)

(assert (=> bm!261624 m!4115811))

(declare-fun m!4115813 () Bool)

(assert (=> b!3617106 m!4115813))

(declare-fun m!4115815 () Bool)

(assert (=> b!3617106 m!4115815))

(declare-fun m!4115817 () Bool)

(assert (=> b!3617106 m!4115817))

(declare-fun m!4115819 () Bool)

(assert (=> b!3617106 m!4115819))

(assert (=> b!3617106 m!4115813))

(declare-fun m!4115821 () Bool)

(assert (=> b!3617106 m!4115821))

(declare-fun m!4115823 () Bool)

(assert (=> b!3617106 m!4115823))

(declare-fun m!4115825 () Bool)

(assert (=> bm!261626 m!4115825))

(declare-fun m!4115827 () Bool)

(assert (=> b!3617095 m!4115827))

(declare-fun m!4115829 () Bool)

(assert (=> b!3617056 m!4115829))

(declare-fun m!4115831 () Bool)

(assert (=> bm!261627 m!4115831))

(declare-fun m!4115833 () Bool)

(assert (=> b!3617101 m!4115833))

(declare-fun m!4115835 () Bool)

(assert (=> b!3617104 m!4115835))

(declare-fun m!4115837 () Bool)

(assert (=> b!3617075 m!4115837))

(declare-fun m!4115839 () Bool)

(assert (=> b!3617062 m!4115839))

(declare-fun m!4115841 () Bool)

(assert (=> b!3617082 m!4115841))

(declare-fun m!4115843 () Bool)

(assert (=> b!3617082 m!4115843))

(declare-fun m!4115845 () Bool)

(assert (=> b!3617083 m!4115845))

(declare-fun m!4115847 () Bool)

(assert (=> b!3617083 m!4115847))

(declare-fun m!4115849 () Bool)

(assert (=> b!3617083 m!4115849))

(declare-fun m!4115851 () Bool)

(assert (=> b!3617084 m!4115851))

(declare-fun m!4115853 () Bool)

(assert (=> b!3617084 m!4115853))

(declare-fun m!4115855 () Bool)

(assert (=> start!336846 m!4115855))

(declare-fun m!4115857 () Bool)

(assert (=> b!3617060 m!4115857))

(declare-fun m!4115859 () Bool)

(assert (=> b!3617058 m!4115859))

(declare-fun m!4115861 () Bool)

(assert (=> b!3617066 m!4115861))

(declare-fun m!4115863 () Bool)

(assert (=> b!3617066 m!4115863))

(declare-fun m!4115865 () Bool)

(assert (=> b!3617066 m!4115865))

(declare-fun m!4115867 () Bool)

(assert (=> b!3617066 m!4115867))

(declare-fun m!4115869 () Bool)

(assert (=> b!3617086 m!4115869))

(declare-fun m!4115871 () Bool)

(assert (=> b!3617086 m!4115871))

(declare-fun m!4115873 () Bool)

(assert (=> b!3617086 m!4115873))

(declare-fun m!4115875 () Bool)

(assert (=> b!3617089 m!4115875))

(declare-fun m!4115877 () Bool)

(assert (=> b!3617089 m!4115877))

(declare-fun m!4115879 () Bool)

(assert (=> b!3617089 m!4115879))

(declare-fun m!4115881 () Bool)

(assert (=> b!3617089 m!4115881))

(declare-fun m!4115883 () Bool)

(assert (=> b!3617096 m!4115883))

(declare-fun m!4115885 () Bool)

(assert (=> b!3617096 m!4115885))

(declare-fun m!4115887 () Bool)

(assert (=> b!3617078 m!4115887))

(declare-fun m!4115889 () Bool)

(assert (=> b!3617069 m!4115889))

(declare-fun m!4115891 () Bool)

(assert (=> b!3617069 m!4115891))

(declare-fun m!4115893 () Bool)

(assert (=> b!3617069 m!4115893))

(declare-fun m!4115895 () Bool)

(assert (=> b!3617069 m!4115895))

(declare-fun m!4115897 () Bool)

(assert (=> b!3617069 m!4115897))

(declare-fun m!4115899 () Bool)

(assert (=> b!3617069 m!4115899))

(declare-fun m!4115901 () Bool)

(assert (=> b!3617069 m!4115901))

(declare-fun m!4115903 () Bool)

(assert (=> b!3617069 m!4115903))

(declare-fun m!4115905 () Bool)

(assert (=> b!3617069 m!4115905))

(declare-fun m!4115907 () Bool)

(assert (=> b!3617069 m!4115907))

(declare-fun m!4115909 () Bool)

(assert (=> b!3617069 m!4115909))

(declare-fun m!4115911 () Bool)

(assert (=> b!3617069 m!4115911))

(declare-fun m!4115913 () Bool)

(assert (=> b!3617069 m!4115913))

(assert (=> b!3617069 m!4115793))

(assert (=> b!3617069 m!4115889))

(declare-fun m!4115915 () Bool)

(assert (=> b!3617069 m!4115915))

(assert (=> bm!261625 m!4115825))

(declare-fun m!4115917 () Bool)

(assert (=> b!3617067 m!4115917))

(declare-fun m!4115919 () Bool)

(assert (=> b!3617067 m!4115919))

(declare-fun m!4115921 () Bool)

(assert (=> b!3617067 m!4115921))

(declare-fun m!4115923 () Bool)

(assert (=> b!3617067 m!4115923))

(declare-fun m!4115925 () Bool)

(assert (=> b!3617067 m!4115925))

(declare-fun m!4115927 () Bool)

(assert (=> b!3617067 m!4115927))

(declare-fun m!4115929 () Bool)

(assert (=> b!3617067 m!4115929))

(assert (=> b!3617067 m!4115919))

(declare-fun m!4115931 () Bool)

(assert (=> b!3617090 m!4115931))

(declare-fun m!4115933 () Bool)

(assert (=> b!3617068 m!4115933))

(declare-fun m!4115935 () Bool)

(assert (=> b!3617068 m!4115935))

(declare-fun m!4115937 () Bool)

(assert (=> b!3617068 m!4115937))

(declare-fun m!4115939 () Bool)

(assert (=> b!3617068 m!4115939))

(assert (=> b!3617068 m!4115933))

(declare-fun m!4115941 () Bool)

(assert (=> b!3617068 m!4115941))

(declare-fun m!4115943 () Bool)

(assert (=> b!3617071 m!4115943))

(declare-fun m!4115945 () Bool)

(assert (=> b!3617071 m!4115945))

(declare-fun m!4115947 () Bool)

(assert (=> b!3617076 m!4115947))

(declare-fun m!4115949 () Bool)

(assert (=> b!3617102 m!4115949))

(declare-fun m!4115951 () Bool)

(assert (=> bm!261628 m!4115951))

(declare-fun m!4115953 () Bool)

(assert (=> b!3617074 m!4115953))

(declare-fun m!4115955 () Bool)

(assert (=> b!3617105 m!4115955))

(declare-fun m!4115957 () Bool)

(assert (=> b!3617085 m!4115957))

(declare-fun m!4115959 () Bool)

(assert (=> b!3617103 m!4115959))

(declare-fun m!4115961 () Bool)

(assert (=> b!3617064 m!4115961))

(declare-fun m!4115963 () Bool)

(assert (=> b!3617064 m!4115963))

(declare-fun m!4115965 () Bool)

(assert (=> b!3617064 m!4115965))

(declare-fun m!4115967 () Bool)

(assert (=> b!3617064 m!4115967))

(declare-fun m!4115969 () Bool)

(assert (=> b!3617064 m!4115969))

(assert (=> b!3617064 m!4115969))

(declare-fun m!4115971 () Bool)

(assert (=> b!3617064 m!4115971))

(declare-fun m!4115973 () Bool)

(assert (=> b!3617092 m!4115973))

(declare-fun m!4115975 () Bool)

(assert (=> b!3617070 m!4115975))

(assert (=> b!3617070 m!4115975))

(declare-fun m!4115977 () Bool)

(assert (=> b!3617070 m!4115977))

(declare-fun m!4115979 () Bool)

(assert (=> bm!261629 m!4115979))

(check-sat (not b_next!94871) (not b_next!94859) (not b!3617056) (not b!3617101) (not b!3617070) (not b!3617078) (not b!3617092) (not bm!261626) (not bm!261624) (not b!3617103) (not b!3617071) b_and!264215 (not b!3617069) (not b!3617083) (not b!3617082) (not bm!261625) (not b!3617089) (not b!3617100) (not b!3617080) (not b!3617064) (not b!3617086) (not b!3617096) (not b!3617084) (not b!3617102) (not b!3617095) (not bm!261627) (not b!3617054) b_and!264209 (not b_next!94857) (not b!3617074) (not b!3617090) (not b_next!94861) (not b!3617076) b_and!264207 (not b!3617058) (not b!3617085) (not b!3617106) b_and!264205 (not b!3617104) b_and!264203 (not b_next!94869) (not b!3617067) (not b_next!94863) (not b!3617088) (not b!3617105) (not b!3617075) b_and!264211 (not b!3617062) (not bm!261629) tp_is_empty!17925 b_and!264213 (not b!3617068) (not bm!261628) (not b!3617053) (not b!3617060) (not start!336846) (not b_next!94865) (not b!3617063) (not b_next!94867) (not b!3617066) b_and!264217)
(check-sat b_and!264215 (not b_next!94871) (not b_next!94859) b_and!264205 (not b_next!94863) b_and!264211 b_and!264213 (not b_next!94865) b_and!264209 (not b_next!94857) (not b_next!94861) b_and!264207 b_and!264203 (not b_next!94869) b_and!264217 (not b_next!94867))
