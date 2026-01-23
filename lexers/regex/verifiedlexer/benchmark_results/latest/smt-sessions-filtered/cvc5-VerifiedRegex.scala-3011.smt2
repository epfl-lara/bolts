; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!180036 () Bool)

(assert start!180036)

(declare-fun b!1818789 () Bool)

(declare-fun b_free!50355 () Bool)

(declare-fun b_next!51059 () Bool)

(assert (=> b!1818789 (= b_free!50355 (not b_next!51059))))

(declare-fun tp!513969 () Bool)

(declare-fun b_and!140933 () Bool)

(assert (=> b!1818789 (= tp!513969 b_and!140933)))

(declare-fun b_free!50357 () Bool)

(declare-fun b_next!51061 () Bool)

(assert (=> b!1818789 (= b_free!50357 (not b_next!51061))))

(declare-fun tp!513966 () Bool)

(declare-fun b_and!140935 () Bool)

(assert (=> b!1818789 (= tp!513966 b_and!140935)))

(declare-fun b!1818785 () Bool)

(declare-fun b_free!50359 () Bool)

(declare-fun b_next!51063 () Bool)

(assert (=> b!1818785 (= b_free!50359 (not b_next!51063))))

(declare-fun tp!513964 () Bool)

(declare-fun b_and!140937 () Bool)

(assert (=> b!1818785 (= tp!513964 b_and!140937)))

(declare-fun b_free!50361 () Bool)

(declare-fun b_next!51065 () Bool)

(assert (=> b!1818785 (= b_free!50361 (not b_next!51065))))

(declare-fun tp!513965 () Bool)

(declare-fun b_and!140939 () Bool)

(assert (=> b!1818785 (= tp!513965 b_and!140939)))

(declare-fun b!1818795 () Bool)

(declare-fun b_free!50363 () Bool)

(declare-fun b_next!51067 () Bool)

(assert (=> b!1818795 (= b_free!50363 (not b_next!51067))))

(declare-fun tp!513970 () Bool)

(declare-fun b_and!140941 () Bool)

(assert (=> b!1818795 (= tp!513970 b_and!140941)))

(declare-fun b_free!50365 () Bool)

(declare-fun b_next!51069 () Bool)

(assert (=> b!1818795 (= b_free!50365 (not b_next!51069))))

(declare-fun tp!513967 () Bool)

(declare-fun b_and!140943 () Bool)

(assert (=> b!1818795 (= tp!513967 b_and!140943)))

(declare-fun b!1818781 () Bool)

(declare-fun e!1162148 () Bool)

(declare-fun e!1162152 () Bool)

(assert (=> b!1818781 (= e!1162148 e!1162152)))

(declare-fun res!817837 () Bool)

(assert (=> b!1818781 (=> res!817837 e!1162152)))

(declare-datatypes ((List!19962 0))(
  ( (Nil!19892) (Cons!19892 (h!25293 (_ BitVec 16)) (t!169743 List!19962)) )
))
(declare-datatypes ((TokenValue!3672 0))(
  ( (FloatLiteralValue!7344 (text!26149 List!19962)) (TokenValueExt!3671 (__x!12646 Int)) (Broken!18360 (value!111729 List!19962)) (Object!3741) (End!3672) (Def!3672) (Underscore!3672) (Match!3672) (Else!3672) (Error!3672) (Case!3672) (If!3672) (Extends!3672) (Abstract!3672) (Class!3672) (Val!3672) (DelimiterValue!7344 (del!3732 List!19962)) (KeywordValue!3678 (value!111730 List!19962)) (CommentValue!7344 (value!111731 List!19962)) (WhitespaceValue!7344 (value!111732 List!19962)) (IndentationValue!3672 (value!111733 List!19962)) (String!22693) (Int32!3672) (Broken!18361 (value!111734 List!19962)) (Boolean!3673) (Unit!34575) (OperatorValue!3675 (op!3732 List!19962)) (IdentifierValue!7344 (value!111735 List!19962)) (IdentifierValue!7345 (value!111736 List!19962)) (WhitespaceValue!7345 (value!111737 List!19962)) (True!7344) (False!7344) (Broken!18362 (value!111738 List!19962)) (Broken!18363 (value!111739 List!19962)) (True!7345) (RightBrace!3672) (RightBracket!3672) (Colon!3672) (Null!3672) (Comma!3672) (LeftBracket!3672) (False!7345) (LeftBrace!3672) (ImaginaryLiteralValue!3672 (text!26150 List!19962)) (StringLiteralValue!11016 (value!111740 List!19962)) (EOFValue!3672 (value!111741 List!19962)) (IdentValue!3672 (value!111742 List!19962)) (DelimiterValue!7345 (value!111743 List!19962)) (DedentValue!3672 (value!111744 List!19962)) (NewLineValue!3672 (value!111745 List!19962)) (IntegerValue!11016 (value!111746 (_ BitVec 32)) (text!26151 List!19962)) (IntegerValue!11017 (value!111747 Int) (text!26152 List!19962)) (Times!3672) (Or!3672) (Equal!3672) (Minus!3672) (Broken!18364 (value!111748 List!19962)) (And!3672) (Div!3672) (LessEqual!3672) (Mod!3672) (Concat!8582) (Not!3672) (Plus!3672) (SpaceValue!3672 (value!111749 List!19962)) (IntegerValue!11018 (value!111750 Int) (text!26153 List!19962)) (StringLiteralValue!11017 (text!26154 List!19962)) (FloatLiteralValue!7345 (text!26155 List!19962)) (BytesLiteralValue!3672 (value!111751 List!19962)) (CommentValue!7345 (value!111752 List!19962)) (StringLiteralValue!11018 (value!111753 List!19962)) (ErrorTokenValue!3672 (msg!3733 List!19962)) )
))
(declare-datatypes ((C!9994 0))(
  ( (C!9995 (val!5593 Int)) )
))
(declare-datatypes ((List!19963 0))(
  ( (Nil!19893) (Cons!19893 (h!25294 C!9994) (t!169744 List!19963)) )
))
(declare-datatypes ((IArray!13233 0))(
  ( (IArray!13234 (innerList!6674 List!19963)) )
))
(declare-datatypes ((Conc!6614 0))(
  ( (Node!6614 (left!15947 Conc!6614) (right!16277 Conc!6614) (csize!13458 Int) (cheight!6825 Int)) (Leaf!9626 (xs!9490 IArray!13233) (csize!13459 Int)) (Empty!6614) )
))
(declare-datatypes ((BalanceConc!13172 0))(
  ( (BalanceConc!13173 (c!296881 Conc!6614)) )
))
(declare-datatypes ((TokenValueInjection!7004 0))(
  ( (TokenValueInjection!7005 (toValue!5117 Int) (toChars!4976 Int)) )
))
(declare-datatypes ((Regex!4910 0))(
  ( (ElementMatch!4910 (c!296882 C!9994)) (Concat!8583 (regOne!10332 Regex!4910) (regTwo!10332 Regex!4910)) (EmptyExpr!4910) (Star!4910 (reg!5239 Regex!4910)) (EmptyLang!4910) (Union!4910 (regOne!10333 Regex!4910) (regTwo!10333 Regex!4910)) )
))
(declare-datatypes ((String!22694 0))(
  ( (String!22695 (value!111754 String)) )
))
(declare-datatypes ((Rule!6964 0))(
  ( (Rule!6965 (regex!3582 Regex!4910) (tag!3996 String!22694) (isSeparator!3582 Bool) (transformation!3582 TokenValueInjection!7004)) )
))
(declare-datatypes ((Token!6718 0))(
  ( (Token!6719 (value!111755 TokenValue!3672) (rule!5698 Rule!6964) (size!15789 Int) (originalCharacters!4390 List!19963)) )
))
(declare-datatypes ((tuple2!19436 0))(
  ( (tuple2!19437 (_1!11120 Token!6718) (_2!11120 List!19963)) )
))
(declare-datatypes ((Option!4162 0))(
  ( (None!4161) (Some!4161 (v!25694 tuple2!19436)) )
))
(declare-fun lt!706659 () Option!4162)

(declare-fun lt!706657 () Option!4162)

(assert (=> b!1818781 (= res!817837 (not (= lt!706659 lt!706657)))))

(declare-fun suffix!1667 () List!19963)

(declare-fun lt!706656 () TokenValue!3672)

(declare-fun lt!706654 () Int)

(declare-fun rule!559 () Rule!6964)

(declare-fun lt!706660 () List!19963)

(assert (=> b!1818781 (= lt!706659 (Some!4161 (tuple2!19437 (Token!6719 lt!706656 rule!559 lt!706654 lt!706660) suffix!1667)))))

(declare-datatypes ((LexerInterface!3211 0))(
  ( (LexerInterfaceExt!3208 (__x!12647 Int)) (Lexer!3209) )
))
(declare-fun thiss!28068 () LexerInterface!3211)

(declare-fun input!3612 () List!19963)

(declare-fun maxPrefixOneRule!1124 (LexerInterface!3211 Rule!6964 List!19963) Option!4162)

(assert (=> b!1818781 (= lt!706659 (maxPrefixOneRule!1124 thiss!28068 rule!559 input!3612))))

(declare-fun size!15790 (List!19963) Int)

(assert (=> b!1818781 (= lt!706654 (size!15790 lt!706660))))

(declare-fun apply!5374 (TokenValueInjection!7004 BalanceConc!13172) TokenValue!3672)

(declare-fun seqFromList!2543 (List!19963) BalanceConc!13172)

(assert (=> b!1818781 (= lt!706656 (apply!5374 (transformation!3582 rule!559) (seqFromList!2543 lt!706660)))))

(declare-datatypes ((List!19964 0))(
  ( (Nil!19894) (Cons!19894 (h!25295 Rule!6964) (t!169745 List!19964)) )
))
(declare-fun rules!4538 () List!19964)

(declare-datatypes ((Unit!34576 0))(
  ( (Unit!34577) )
))
(declare-fun lt!706655 () Unit!34576)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!500 (LexerInterface!3211 List!19964 List!19963 List!19963 List!19963 Rule!6964) Unit!34576)

(assert (=> b!1818781 (= lt!706655 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!500 thiss!28068 rules!4538 lt!706660 input!3612 suffix!1667 rule!559))))

(declare-fun b!1818783 () Bool)

(declare-fun e!1162137 () Bool)

(declare-fun e!1162149 () Bool)

(declare-fun tp!513968 () Bool)

(assert (=> b!1818783 (= e!1162137 (and e!1162149 tp!513968))))

(declare-fun b!1818784 () Bool)

(declare-fun e!1162136 () Bool)

(declare-fun e!1162147 () Bool)

(assert (=> b!1818784 (= e!1162136 e!1162147)))

(declare-fun res!817836 () Bool)

(assert (=> b!1818784 (=> (not res!817836) (not e!1162147))))

(declare-fun ++!5406 (List!19963 List!19963) List!19963)

(assert (=> b!1818784 (= res!817836 (= input!3612 (++!5406 lt!706660 suffix!1667)))))

(declare-fun token!556 () Token!6718)

(declare-fun list!8092 (BalanceConc!13172) List!19963)

(declare-fun charsOf!2225 (Token!6718) BalanceConc!13172)

(assert (=> b!1818784 (= lt!706660 (list!8092 (charsOf!2225 token!556)))))

(declare-fun e!1162153 () Bool)

(assert (=> b!1818785 (= e!1162153 (and tp!513964 tp!513965))))

(declare-fun b!1818786 () Bool)

(declare-fun res!817835 () Bool)

(declare-fun e!1162143 () Bool)

(assert (=> b!1818786 (=> (not res!817835) (not e!1162143))))

(declare-fun rulesInvariant!2880 (LexerInterface!3211 List!19964) Bool)

(assert (=> b!1818786 (= res!817835 (rulesInvariant!2880 thiss!28068 rules!4538))))

(declare-fun b!1818787 () Bool)

(declare-fun res!817834 () Bool)

(assert (=> b!1818787 (=> (not res!817834) (not e!1162143))))

(declare-fun isEmpty!12580 (List!19964) Bool)

(assert (=> b!1818787 (= res!817834 (not (isEmpty!12580 rules!4538)))))

(declare-fun b!1818788 () Bool)

(assert (=> b!1818788 (= e!1162143 e!1162136)))

(declare-fun res!817833 () Bool)

(assert (=> b!1818788 (=> (not res!817833) (not e!1162136))))

(declare-fun maxPrefix!1759 (LexerInterface!3211 List!19964 List!19963) Option!4162)

(assert (=> b!1818788 (= res!817833 (= (maxPrefix!1759 thiss!28068 rules!4538 input!3612) lt!706657))))

(assert (=> b!1818788 (= lt!706657 (Some!4161 (tuple2!19437 token!556 suffix!1667)))))

(declare-fun e!1162141 () Bool)

(assert (=> b!1818789 (= e!1162141 (and tp!513969 tp!513966))))

(declare-fun b!1818790 () Bool)

(declare-fun e!1162135 () Bool)

(declare-fun tp_is_empty!8055 () Bool)

(declare-fun tp!513973 () Bool)

(assert (=> b!1818790 (= e!1162135 (and tp_is_empty!8055 tp!513973))))

(declare-fun b!1818791 () Bool)

(declare-fun res!817829 () Bool)

(assert (=> b!1818791 (=> (not res!817829) (not e!1162143))))

(declare-fun contains!3618 (List!19964 Rule!6964) Bool)

(assert (=> b!1818791 (= res!817829 (contains!3618 rules!4538 rule!559))))

(declare-fun tp!513971 () Bool)

(declare-fun b!1818782 () Bool)

(declare-fun e!1162144 () Bool)

(declare-fun inv!25927 (String!22694) Bool)

(declare-fun inv!25930 (TokenValueInjection!7004) Bool)

(assert (=> b!1818782 (= e!1162144 (and tp!513971 (inv!25927 (tag!3996 rule!559)) (inv!25930 (transformation!3582 rule!559)) e!1162141))))

(declare-fun res!817831 () Bool)

(assert (=> start!180036 (=> (not res!817831) (not e!1162143))))

(assert (=> start!180036 (= res!817831 (is-Lexer!3209 thiss!28068))))

(assert (=> start!180036 e!1162143))

(declare-fun e!1162150 () Bool)

(assert (=> start!180036 e!1162150))

(assert (=> start!180036 true))

(assert (=> start!180036 e!1162137))

(declare-fun e!1162139 () Bool)

(declare-fun inv!25931 (Token!6718) Bool)

(assert (=> start!180036 (and (inv!25931 token!556) e!1162139)))

(assert (=> start!180036 e!1162144))

(assert (=> start!180036 e!1162135))

(declare-fun tp!513972 () Bool)

(declare-fun b!1818792 () Bool)

(assert (=> b!1818792 (= e!1162149 (and tp!513972 (inv!25927 (tag!3996 (h!25295 rules!4538))) (inv!25930 (transformation!3582 (h!25295 rules!4538))) e!1162153))))

(declare-fun e!1162151 () Bool)

(declare-fun tp!513961 () Bool)

(declare-fun e!1162140 () Bool)

(declare-fun b!1818793 () Bool)

(assert (=> b!1818793 (= e!1162151 (and tp!513961 (inv!25927 (tag!3996 (rule!5698 token!556))) (inv!25930 (transformation!3582 (rule!5698 token!556))) e!1162140))))

(declare-fun lambda!71131 () Int)

(declare-fun lambda!71132 () Int)

(declare-fun b!1818794 () Bool)

(declare-datatypes ((List!19965 0))(
  ( (Nil!19895) (Cons!19895 (h!25296 Regex!4910) (t!169746 List!19965)) )
))
(declare-fun forall!4294 (List!19965 Int) Bool)

(declare-fun map!4104 (List!19964 Int) List!19965)

(assert (=> b!1818794 (= e!1162152 (forall!4294 (map!4104 rules!4538 lambda!71131) lambda!71132))))

(declare-fun lt!706658 () Unit!34576)

(declare-fun lemma!435 (List!19963 Rule!6964 List!19964 List!19963 LexerInterface!3211 Token!6718 List!19964) Unit!34576)

(assert (=> b!1818794 (= lt!706658 (lemma!435 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1818795 (= e!1162140 (and tp!513970 tp!513967))))

(declare-fun b!1818796 () Bool)

(declare-fun tp!513962 () Bool)

(declare-fun inv!21 (TokenValue!3672) Bool)

(assert (=> b!1818796 (= e!1162139 (and (inv!21 (value!111755 token!556)) e!1162151 tp!513962))))

(declare-fun b!1818797 () Bool)

(assert (=> b!1818797 (= e!1162147 (not e!1162148))))

(declare-fun res!817830 () Bool)

(assert (=> b!1818797 (=> res!817830 e!1162148)))

(declare-fun matchR!2375 (Regex!4910 List!19963) Bool)

(assert (=> b!1818797 (= res!817830 (not (matchR!2375 (regex!3582 rule!559) lt!706660)))))

(declare-fun ruleValid!1074 (LexerInterface!3211 Rule!6964) Bool)

(assert (=> b!1818797 (ruleValid!1074 thiss!28068 rule!559)))

(declare-fun lt!706653 () Unit!34576)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!595 (LexerInterface!3211 Rule!6964 List!19964) Unit!34576)

(assert (=> b!1818797 (= lt!706653 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!595 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1818798 () Bool)

(declare-fun tp!513963 () Bool)

(assert (=> b!1818798 (= e!1162150 (and tp_is_empty!8055 tp!513963))))

(declare-fun b!1818799 () Bool)

(declare-fun res!817832 () Bool)

(assert (=> b!1818799 (=> (not res!817832) (not e!1162136))))

(assert (=> b!1818799 (= res!817832 (= (rule!5698 token!556) rule!559))))

(assert (= (and start!180036 res!817831) b!1818787))

(assert (= (and b!1818787 res!817834) b!1818786))

(assert (= (and b!1818786 res!817835) b!1818791))

(assert (= (and b!1818791 res!817829) b!1818788))

(assert (= (and b!1818788 res!817833) b!1818799))

(assert (= (and b!1818799 res!817832) b!1818784))

(assert (= (and b!1818784 res!817836) b!1818797))

(assert (= (and b!1818797 (not res!817830)) b!1818781))

(assert (= (and b!1818781 (not res!817837)) b!1818794))

(assert (= (and start!180036 (is-Cons!19893 suffix!1667)) b!1818798))

(assert (= b!1818792 b!1818785))

(assert (= b!1818783 b!1818792))

(assert (= (and start!180036 (is-Cons!19894 rules!4538)) b!1818783))

(assert (= b!1818793 b!1818795))

(assert (= b!1818796 b!1818793))

(assert (= start!180036 b!1818796))

(assert (= b!1818782 b!1818789))

(assert (= start!180036 b!1818782))

(assert (= (and start!180036 (is-Cons!19893 input!3612)) b!1818790))

(declare-fun m!2247869 () Bool)

(assert (=> b!1818793 m!2247869))

(declare-fun m!2247871 () Bool)

(assert (=> b!1818793 m!2247871))

(declare-fun m!2247873 () Bool)

(assert (=> b!1818788 m!2247873))

(declare-fun m!2247875 () Bool)

(assert (=> b!1818792 m!2247875))

(declare-fun m!2247877 () Bool)

(assert (=> b!1818792 m!2247877))

(declare-fun m!2247879 () Bool)

(assert (=> start!180036 m!2247879))

(declare-fun m!2247881 () Bool)

(assert (=> b!1818784 m!2247881))

(declare-fun m!2247883 () Bool)

(assert (=> b!1818784 m!2247883))

(assert (=> b!1818784 m!2247883))

(declare-fun m!2247885 () Bool)

(assert (=> b!1818784 m!2247885))

(declare-fun m!2247887 () Bool)

(assert (=> b!1818794 m!2247887))

(assert (=> b!1818794 m!2247887))

(declare-fun m!2247889 () Bool)

(assert (=> b!1818794 m!2247889))

(declare-fun m!2247891 () Bool)

(assert (=> b!1818794 m!2247891))

(declare-fun m!2247893 () Bool)

(assert (=> b!1818781 m!2247893))

(declare-fun m!2247895 () Bool)

(assert (=> b!1818781 m!2247895))

(declare-fun m!2247897 () Bool)

(assert (=> b!1818781 m!2247897))

(declare-fun m!2247899 () Bool)

(assert (=> b!1818781 m!2247899))

(assert (=> b!1818781 m!2247899))

(declare-fun m!2247901 () Bool)

(assert (=> b!1818781 m!2247901))

(declare-fun m!2247903 () Bool)

(assert (=> b!1818791 m!2247903))

(declare-fun m!2247905 () Bool)

(assert (=> b!1818782 m!2247905))

(declare-fun m!2247907 () Bool)

(assert (=> b!1818782 m!2247907))

(declare-fun m!2247909 () Bool)

(assert (=> b!1818797 m!2247909))

(declare-fun m!2247911 () Bool)

(assert (=> b!1818797 m!2247911))

(declare-fun m!2247913 () Bool)

(assert (=> b!1818797 m!2247913))

(declare-fun m!2247915 () Bool)

(assert (=> b!1818796 m!2247915))

(declare-fun m!2247917 () Bool)

(assert (=> b!1818786 m!2247917))

(declare-fun m!2247919 () Bool)

(assert (=> b!1818787 m!2247919))

(push 1)

(assert (not b!1818796))

(assert (not b_next!51065))

(assert tp_is_empty!8055)

(assert (not b!1818792))

(assert b_and!140935)

(assert (not b_next!51063))

(assert (not b!1818797))

(assert (not b!1818788))

(assert (not b!1818784))

(assert (not b_next!51069))

(assert (not b!1818793))

(assert (not b!1818781))

(assert (not b!1818786))

(assert (not b!1818782))

(assert (not b!1818791))

(assert b_and!140933)

(assert (not b!1818798))

(assert b_and!140939)

(assert (not b!1818783))

(assert (not b_next!51067))

(assert (not b!1818790))

(assert (not b_next!51061))

(assert b_and!140937)

(assert (not b!1818787))

(assert (not start!180036))

(assert b_and!140943)

(assert b_and!140941)

(assert (not b!1818794))

(assert (not b_next!51059))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!51065))

(assert b_and!140935)

(assert b_and!140933)

(assert (not b_next!51063))

(assert b_and!140943)

(assert (not b_next!51069))

(assert b_and!140939)

(assert (not b_next!51067))

(assert (not b_next!51061))

(assert b_and!140937)

(assert b_and!140941)

(assert (not b_next!51059))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!557414 () Bool)

(assert (=> d!557414 (= (isEmpty!12580 rules!4538) (is-Nil!19894 rules!4538))))

(assert (=> b!1818787 d!557414))

(declare-fun call!114273 () Option!4162)

(declare-fun bm!114268 () Bool)

(assert (=> bm!114268 (= call!114273 (maxPrefixOneRule!1124 thiss!28068 (h!25295 rules!4538) input!3612))))

(declare-fun b!1818875 () Bool)

(declare-fun e!1162219 () Option!4162)

(declare-fun lt!706698 () Option!4162)

(declare-fun lt!706696 () Option!4162)

(assert (=> b!1818875 (= e!1162219 (ite (and (is-None!4161 lt!706698) (is-None!4161 lt!706696)) None!4161 (ite (is-None!4161 lt!706696) lt!706698 (ite (is-None!4161 lt!706698) lt!706696 (ite (>= (size!15789 (_1!11120 (v!25694 lt!706698))) (size!15789 (_1!11120 (v!25694 lt!706696)))) lt!706698 lt!706696)))))))

(assert (=> b!1818875 (= lt!706698 call!114273)))

(assert (=> b!1818875 (= lt!706696 (maxPrefix!1759 thiss!28068 (t!169745 rules!4538) input!3612))))

(declare-fun b!1818876 () Bool)

(declare-fun res!817887 () Bool)

(declare-fun e!1162217 () Bool)

(assert (=> b!1818876 (=> (not res!817887) (not e!1162217))))

(declare-fun lt!706697 () Option!4162)

(declare-fun get!6161 (Option!4162) tuple2!19436)

(assert (=> b!1818876 (= res!817887 (= (value!111755 (_1!11120 (get!6161 lt!706697))) (apply!5374 (transformation!3582 (rule!5698 (_1!11120 (get!6161 lt!706697)))) (seqFromList!2543 (originalCharacters!4390 (_1!11120 (get!6161 lt!706697)))))))))

(declare-fun b!1818877 () Bool)

(assert (=> b!1818877 (= e!1162217 (contains!3618 rules!4538 (rule!5698 (_1!11120 (get!6161 lt!706697)))))))

(declare-fun d!557416 () Bool)

(declare-fun e!1162218 () Bool)

(assert (=> d!557416 e!1162218))

(declare-fun res!817885 () Bool)

(assert (=> d!557416 (=> res!817885 e!1162218)))

(declare-fun isEmpty!12582 (Option!4162) Bool)

(assert (=> d!557416 (= res!817885 (isEmpty!12582 lt!706697))))

(assert (=> d!557416 (= lt!706697 e!1162219)))

(declare-fun c!296888 () Bool)

(assert (=> d!557416 (= c!296888 (and (is-Cons!19894 rules!4538) (is-Nil!19894 (t!169745 rules!4538))))))

(declare-fun lt!706695 () Unit!34576)

(declare-fun lt!706699 () Unit!34576)

(assert (=> d!557416 (= lt!706695 lt!706699)))

(declare-fun isPrefix!1808 (List!19963 List!19963) Bool)

(assert (=> d!557416 (isPrefix!1808 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1185 (List!19963 List!19963) Unit!34576)

(assert (=> d!557416 (= lt!706699 (lemmaIsPrefixRefl!1185 input!3612 input!3612))))

(declare-fun rulesValidInductive!1227 (LexerInterface!3211 List!19964) Bool)

(assert (=> d!557416 (rulesValidInductive!1227 thiss!28068 rules!4538)))

(assert (=> d!557416 (= (maxPrefix!1759 thiss!28068 rules!4538 input!3612) lt!706697)))

(declare-fun b!1818878 () Bool)

(declare-fun res!817889 () Bool)

(assert (=> b!1818878 (=> (not res!817889) (not e!1162217))))

(assert (=> b!1818878 (= res!817889 (matchR!2375 (regex!3582 (rule!5698 (_1!11120 (get!6161 lt!706697)))) (list!8092 (charsOf!2225 (_1!11120 (get!6161 lt!706697))))))))

(declare-fun b!1818879 () Bool)

(assert (=> b!1818879 (= e!1162218 e!1162217)))

(declare-fun res!817883 () Bool)

(assert (=> b!1818879 (=> (not res!817883) (not e!1162217))))

(declare-fun isDefined!3495 (Option!4162) Bool)

(assert (=> b!1818879 (= res!817883 (isDefined!3495 lt!706697))))

(declare-fun b!1818880 () Bool)

(declare-fun res!817888 () Bool)

(assert (=> b!1818880 (=> (not res!817888) (not e!1162217))))

(assert (=> b!1818880 (= res!817888 (< (size!15790 (_2!11120 (get!6161 lt!706697))) (size!15790 input!3612)))))

(declare-fun b!1818881 () Bool)

(declare-fun res!817884 () Bool)

(assert (=> b!1818881 (=> (not res!817884) (not e!1162217))))

(assert (=> b!1818881 (= res!817884 (= (++!5406 (list!8092 (charsOf!2225 (_1!11120 (get!6161 lt!706697)))) (_2!11120 (get!6161 lt!706697))) input!3612))))

(declare-fun b!1818882 () Bool)

(declare-fun res!817886 () Bool)

(assert (=> b!1818882 (=> (not res!817886) (not e!1162217))))

(assert (=> b!1818882 (= res!817886 (= (list!8092 (charsOf!2225 (_1!11120 (get!6161 lt!706697)))) (originalCharacters!4390 (_1!11120 (get!6161 lt!706697)))))))

(declare-fun b!1818883 () Bool)

(assert (=> b!1818883 (= e!1162219 call!114273)))

(assert (= (and d!557416 c!296888) b!1818883))

(assert (= (and d!557416 (not c!296888)) b!1818875))

(assert (= (or b!1818883 b!1818875) bm!114268))

(assert (= (and d!557416 (not res!817885)) b!1818879))

(assert (= (and b!1818879 res!817883) b!1818882))

(assert (= (and b!1818882 res!817886) b!1818880))

(assert (= (and b!1818880 res!817888) b!1818881))

(assert (= (and b!1818881 res!817884) b!1818876))

(assert (= (and b!1818876 res!817887) b!1818878))

(assert (= (and b!1818878 res!817889) b!1818877))

(declare-fun m!2247973 () Bool)

(assert (=> bm!114268 m!2247973))

(declare-fun m!2247975 () Bool)

(assert (=> b!1818876 m!2247975))

(declare-fun m!2247977 () Bool)

(assert (=> b!1818876 m!2247977))

(assert (=> b!1818876 m!2247977))

(declare-fun m!2247979 () Bool)

(assert (=> b!1818876 m!2247979))

(declare-fun m!2247981 () Bool)

(assert (=> b!1818879 m!2247981))

(declare-fun m!2247983 () Bool)

(assert (=> b!1818875 m!2247983))

(assert (=> b!1818877 m!2247975))

(declare-fun m!2247985 () Bool)

(assert (=> b!1818877 m!2247985))

(declare-fun m!2247987 () Bool)

(assert (=> d!557416 m!2247987))

(declare-fun m!2247989 () Bool)

(assert (=> d!557416 m!2247989))

(declare-fun m!2247991 () Bool)

(assert (=> d!557416 m!2247991))

(declare-fun m!2247993 () Bool)

(assert (=> d!557416 m!2247993))

(assert (=> b!1818881 m!2247975))

(declare-fun m!2247995 () Bool)

(assert (=> b!1818881 m!2247995))

(assert (=> b!1818881 m!2247995))

(declare-fun m!2247997 () Bool)

(assert (=> b!1818881 m!2247997))

(assert (=> b!1818881 m!2247997))

(declare-fun m!2247999 () Bool)

(assert (=> b!1818881 m!2247999))

(assert (=> b!1818878 m!2247975))

(assert (=> b!1818878 m!2247995))

(assert (=> b!1818878 m!2247995))

(assert (=> b!1818878 m!2247997))

(assert (=> b!1818878 m!2247997))

(declare-fun m!2248001 () Bool)

(assert (=> b!1818878 m!2248001))

(assert (=> b!1818880 m!2247975))

(declare-fun m!2248003 () Bool)

(assert (=> b!1818880 m!2248003))

(declare-fun m!2248005 () Bool)

(assert (=> b!1818880 m!2248005))

(assert (=> b!1818882 m!2247975))

(assert (=> b!1818882 m!2247995))

(assert (=> b!1818882 m!2247995))

(assert (=> b!1818882 m!2247997))

(assert (=> b!1818788 d!557416))

(declare-fun d!557418 () Bool)

(declare-fun res!817894 () Bool)

(declare-fun e!1162222 () Bool)

(assert (=> d!557418 (=> (not res!817894) (not e!1162222))))

(declare-fun isEmpty!12583 (List!19963) Bool)

(assert (=> d!557418 (= res!817894 (not (isEmpty!12583 (originalCharacters!4390 token!556))))))

(assert (=> d!557418 (= (inv!25931 token!556) e!1162222)))

(declare-fun b!1818888 () Bool)

(declare-fun res!817895 () Bool)

(assert (=> b!1818888 (=> (not res!817895) (not e!1162222))))

(declare-fun dynLambda!9906 (Int TokenValue!3672) BalanceConc!13172)

(assert (=> b!1818888 (= res!817895 (= (originalCharacters!4390 token!556) (list!8092 (dynLambda!9906 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (value!111755 token!556)))))))

(declare-fun b!1818889 () Bool)

(assert (=> b!1818889 (= e!1162222 (= (size!15789 token!556) (size!15790 (originalCharacters!4390 token!556))))))

(assert (= (and d!557418 res!817894) b!1818888))

(assert (= (and b!1818888 res!817895) b!1818889))

(declare-fun b_lambda!60025 () Bool)

(assert (=> (not b_lambda!60025) (not b!1818888)))

(declare-fun tb!111173 () Bool)

(declare-fun t!169752 () Bool)

(assert (=> (and b!1818789 (= (toChars!4976 (transformation!3582 rule!559)) (toChars!4976 (transformation!3582 (rule!5698 token!556)))) t!169752) tb!111173))

(declare-fun b!1818894 () Bool)

(declare-fun e!1162225 () Bool)

(declare-fun tp!514015 () Bool)

(declare-fun inv!25934 (Conc!6614) Bool)

(assert (=> b!1818894 (= e!1162225 (and (inv!25934 (c!296881 (dynLambda!9906 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (value!111755 token!556)))) tp!514015))))

(declare-fun result!133568 () Bool)

(declare-fun inv!25935 (BalanceConc!13172) Bool)

(assert (=> tb!111173 (= result!133568 (and (inv!25935 (dynLambda!9906 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (value!111755 token!556))) e!1162225))))

(assert (= tb!111173 b!1818894))

(declare-fun m!2248007 () Bool)

(assert (=> b!1818894 m!2248007))

(declare-fun m!2248009 () Bool)

(assert (=> tb!111173 m!2248009))

(assert (=> b!1818888 t!169752))

(declare-fun b_and!140957 () Bool)

(assert (= b_and!140935 (and (=> t!169752 result!133568) b_and!140957)))

(declare-fun tb!111175 () Bool)

(declare-fun t!169754 () Bool)

(assert (=> (and b!1818785 (= (toChars!4976 (transformation!3582 (h!25295 rules!4538))) (toChars!4976 (transformation!3582 (rule!5698 token!556)))) t!169754) tb!111175))

(declare-fun result!133572 () Bool)

(assert (= result!133572 result!133568))

(assert (=> b!1818888 t!169754))

(declare-fun b_and!140959 () Bool)

(assert (= b_and!140939 (and (=> t!169754 result!133572) b_and!140959)))

(declare-fun t!169756 () Bool)

(declare-fun tb!111177 () Bool)

(assert (=> (and b!1818795 (= (toChars!4976 (transformation!3582 (rule!5698 token!556))) (toChars!4976 (transformation!3582 (rule!5698 token!556)))) t!169756) tb!111177))

(declare-fun result!133574 () Bool)

(assert (= result!133574 result!133568))

(assert (=> b!1818888 t!169756))

(declare-fun b_and!140961 () Bool)

(assert (= b_and!140943 (and (=> t!169756 result!133574) b_and!140961)))

(declare-fun m!2248011 () Bool)

(assert (=> d!557418 m!2248011))

(declare-fun m!2248013 () Bool)

(assert (=> b!1818888 m!2248013))

(assert (=> b!1818888 m!2248013))

(declare-fun m!2248015 () Bool)

(assert (=> b!1818888 m!2248015))

(declare-fun m!2248017 () Bool)

(assert (=> b!1818889 m!2248017))

(assert (=> start!180036 d!557418))

(declare-fun b!1818964 () Bool)

(declare-fun e!1162263 () Bool)

(declare-fun e!1162261 () Bool)

(assert (=> b!1818964 (= e!1162263 e!1162261)))

(declare-fun res!817946 () Bool)

(assert (=> b!1818964 (=> (not res!817946) (not e!1162261))))

(declare-fun lt!706718 () Option!4162)

(assert (=> b!1818964 (= res!817946 (matchR!2375 (regex!3582 rule!559) (list!8092 (charsOf!2225 (_1!11120 (get!6161 lt!706718))))))))

(declare-fun b!1818966 () Bool)

(declare-fun res!817947 () Bool)

(assert (=> b!1818966 (=> (not res!817947) (not e!1162261))))

(assert (=> b!1818966 (= res!817947 (= (++!5406 (list!8092 (charsOf!2225 (_1!11120 (get!6161 lt!706718)))) (_2!11120 (get!6161 lt!706718))) input!3612))))

(declare-fun b!1818967 () Bool)

(declare-fun res!817945 () Bool)

(assert (=> b!1818967 (=> (not res!817945) (not e!1162261))))

(assert (=> b!1818967 (= res!817945 (= (rule!5698 (_1!11120 (get!6161 lt!706718))) rule!559))))

(declare-fun b!1818968 () Bool)

(assert (=> b!1818968 (= e!1162261 (= (size!15789 (_1!11120 (get!6161 lt!706718))) (size!15790 (originalCharacters!4390 (_1!11120 (get!6161 lt!706718))))))))

(declare-fun b!1818969 () Bool)

(declare-fun res!817948 () Bool)

(assert (=> b!1818969 (=> (not res!817948) (not e!1162261))))

(assert (=> b!1818969 (= res!817948 (< (size!15790 (_2!11120 (get!6161 lt!706718))) (size!15790 input!3612)))))

(declare-fun d!557420 () Bool)

(assert (=> d!557420 e!1162263))

(declare-fun res!817944 () Bool)

(assert (=> d!557420 (=> res!817944 e!1162263)))

(assert (=> d!557420 (= res!817944 (isEmpty!12582 lt!706718))))

(declare-fun e!1162264 () Option!4162)

(assert (=> d!557420 (= lt!706718 e!1162264)))

(declare-fun c!296900 () Bool)

(declare-datatypes ((tuple2!19440 0))(
  ( (tuple2!19441 (_1!11122 List!19963) (_2!11122 List!19963)) )
))
(declare-fun lt!706716 () tuple2!19440)

(assert (=> d!557420 (= c!296900 (isEmpty!12583 (_1!11122 lt!706716)))))

(declare-fun findLongestMatch!419 (Regex!4910 List!19963) tuple2!19440)

(assert (=> d!557420 (= lt!706716 (findLongestMatch!419 (regex!3582 rule!559) input!3612))))

(assert (=> d!557420 (ruleValid!1074 thiss!28068 rule!559)))

(assert (=> d!557420 (= (maxPrefixOneRule!1124 thiss!28068 rule!559 input!3612) lt!706718)))

(declare-fun b!1818965 () Bool)

(assert (=> b!1818965 (= e!1162264 None!4161)))

(declare-fun b!1818970 () Bool)

(declare-fun size!15793 (BalanceConc!13172) Int)

(assert (=> b!1818970 (= e!1162264 (Some!4161 (tuple2!19437 (Token!6719 (apply!5374 (transformation!3582 rule!559) (seqFromList!2543 (_1!11122 lt!706716))) rule!559 (size!15793 (seqFromList!2543 (_1!11122 lt!706716))) (_1!11122 lt!706716)) (_2!11122 lt!706716))))))

(declare-fun lt!706717 () Unit!34576)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!476 (Regex!4910 List!19963) Unit!34576)

(assert (=> b!1818970 (= lt!706717 (longestMatchIsAcceptedByMatchOrIsEmpty!476 (regex!3582 rule!559) input!3612))))

(declare-fun res!817943 () Bool)

(declare-fun findLongestMatchInner!492 (Regex!4910 List!19963 Int List!19963 List!19963 Int) tuple2!19440)

(assert (=> b!1818970 (= res!817943 (isEmpty!12583 (_1!11122 (findLongestMatchInner!492 (regex!3582 rule!559) Nil!19893 (size!15790 Nil!19893) input!3612 input!3612 (size!15790 input!3612)))))))

(declare-fun e!1162262 () Bool)

(assert (=> b!1818970 (=> res!817943 e!1162262)))

(assert (=> b!1818970 e!1162262))

(declare-fun lt!706719 () Unit!34576)

(assert (=> b!1818970 (= lt!706719 lt!706717)))

(declare-fun lt!706715 () Unit!34576)

(declare-fun lemmaSemiInverse!706 (TokenValueInjection!7004 BalanceConc!13172) Unit!34576)

(assert (=> b!1818970 (= lt!706715 (lemmaSemiInverse!706 (transformation!3582 rule!559) (seqFromList!2543 (_1!11122 lt!706716))))))

(declare-fun b!1818971 () Bool)

(assert (=> b!1818971 (= e!1162262 (matchR!2375 (regex!3582 rule!559) (_1!11122 (findLongestMatchInner!492 (regex!3582 rule!559) Nil!19893 (size!15790 Nil!19893) input!3612 input!3612 (size!15790 input!3612)))))))

(declare-fun b!1818972 () Bool)

(declare-fun res!817949 () Bool)

(assert (=> b!1818972 (=> (not res!817949) (not e!1162261))))

(assert (=> b!1818972 (= res!817949 (= (value!111755 (_1!11120 (get!6161 lt!706718))) (apply!5374 (transformation!3582 (rule!5698 (_1!11120 (get!6161 lt!706718)))) (seqFromList!2543 (originalCharacters!4390 (_1!11120 (get!6161 lt!706718)))))))))

(assert (= (and d!557420 c!296900) b!1818965))

(assert (= (and d!557420 (not c!296900)) b!1818970))

(assert (= (and b!1818970 (not res!817943)) b!1818971))

(assert (= (and d!557420 (not res!817944)) b!1818964))

(assert (= (and b!1818964 res!817946) b!1818966))

(assert (= (and b!1818966 res!817947) b!1818969))

(assert (= (and b!1818969 res!817948) b!1818967))

(assert (= (and b!1818967 res!817945) b!1818972))

(assert (= (and b!1818972 res!817949) b!1818968))

(declare-fun m!2248041 () Bool)

(assert (=> b!1818964 m!2248041))

(declare-fun m!2248043 () Bool)

(assert (=> b!1818964 m!2248043))

(assert (=> b!1818964 m!2248043))

(declare-fun m!2248045 () Bool)

(assert (=> b!1818964 m!2248045))

(assert (=> b!1818964 m!2248045))

(declare-fun m!2248047 () Bool)

(assert (=> b!1818964 m!2248047))

(declare-fun m!2248049 () Bool)

(assert (=> b!1818971 m!2248049))

(assert (=> b!1818971 m!2248005))

(assert (=> b!1818971 m!2248049))

(assert (=> b!1818971 m!2248005))

(declare-fun m!2248051 () Bool)

(assert (=> b!1818971 m!2248051))

(declare-fun m!2248053 () Bool)

(assert (=> b!1818971 m!2248053))

(assert (=> b!1818968 m!2248041))

(declare-fun m!2248055 () Bool)

(assert (=> b!1818968 m!2248055))

(assert (=> b!1818967 m!2248041))

(declare-fun m!2248057 () Bool)

(assert (=> d!557420 m!2248057))

(declare-fun m!2248059 () Bool)

(assert (=> d!557420 m!2248059))

(declare-fun m!2248061 () Bool)

(assert (=> d!557420 m!2248061))

(assert (=> d!557420 m!2247911))

(assert (=> b!1818969 m!2248041))

(declare-fun m!2248063 () Bool)

(assert (=> b!1818969 m!2248063))

(assert (=> b!1818969 m!2248005))

(assert (=> b!1818972 m!2248041))

(declare-fun m!2248065 () Bool)

(assert (=> b!1818972 m!2248065))

(assert (=> b!1818972 m!2248065))

(declare-fun m!2248067 () Bool)

(assert (=> b!1818972 m!2248067))

(declare-fun m!2248069 () Bool)

(assert (=> b!1818970 m!2248069))

(declare-fun m!2248071 () Bool)

(assert (=> b!1818970 m!2248071))

(assert (=> b!1818970 m!2248069))

(declare-fun m!2248073 () Bool)

(assert (=> b!1818970 m!2248073))

(assert (=> b!1818970 m!2248049))

(declare-fun m!2248075 () Bool)

(assert (=> b!1818970 m!2248075))

(declare-fun m!2248077 () Bool)

(assert (=> b!1818970 m!2248077))

(assert (=> b!1818970 m!2248069))

(assert (=> b!1818970 m!2248005))

(assert (=> b!1818970 m!2248069))

(declare-fun m!2248079 () Bool)

(assert (=> b!1818970 m!2248079))

(assert (=> b!1818970 m!2248049))

(assert (=> b!1818970 m!2248005))

(assert (=> b!1818970 m!2248051))

(assert (=> b!1818966 m!2248041))

(assert (=> b!1818966 m!2248043))

(assert (=> b!1818966 m!2248043))

(assert (=> b!1818966 m!2248045))

(assert (=> b!1818966 m!2248045))

(declare-fun m!2248081 () Bool)

(assert (=> b!1818966 m!2248081))

(assert (=> b!1818781 d!557420))

(declare-fun d!557434 () Bool)

(declare-fun fromListB!1163 (List!19963) BalanceConc!13172)

(assert (=> d!557434 (= (seqFromList!2543 lt!706660) (fromListB!1163 lt!706660))))

(declare-fun bs!407263 () Bool)

(assert (= bs!407263 d!557434))

(declare-fun m!2248083 () Bool)

(assert (=> bs!407263 m!2248083))

(assert (=> b!1818781 d!557434))

(declare-fun d!557436 () Bool)

(assert (=> d!557436 (= (maxPrefixOneRule!1124 thiss!28068 rule!559 input!3612) (Some!4161 (tuple2!19437 (Token!6719 (apply!5374 (transformation!3582 rule!559) (seqFromList!2543 lt!706660)) rule!559 (size!15790 lt!706660) lt!706660) suffix!1667)))))

(declare-fun lt!706723 () Unit!34576)

(declare-fun choose!11464 (LexerInterface!3211 List!19964 List!19963 List!19963 List!19963 Rule!6964) Unit!34576)

(assert (=> d!557436 (= lt!706723 (choose!11464 thiss!28068 rules!4538 lt!706660 input!3612 suffix!1667 rule!559))))

(assert (=> d!557436 (not (isEmpty!12580 rules!4538))))

(assert (=> d!557436 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!500 thiss!28068 rules!4538 lt!706660 input!3612 suffix!1667 rule!559) lt!706723)))

(declare-fun bs!407264 () Bool)

(assert (= bs!407264 d!557436))

(assert (=> bs!407264 m!2247919))

(assert (=> bs!407264 m!2247893))

(assert (=> bs!407264 m!2247899))

(declare-fun m!2248095 () Bool)

(assert (=> bs!407264 m!2248095))

(assert (=> bs!407264 m!2247895))

(assert (=> bs!407264 m!2247899))

(assert (=> bs!407264 m!2247901))

(assert (=> b!1818781 d!557436))

(declare-fun d!557442 () Bool)

(declare-fun lt!706728 () Int)

(assert (=> d!557442 (>= lt!706728 0)))

(declare-fun e!1162284 () Int)

(assert (=> d!557442 (= lt!706728 e!1162284)))

(declare-fun c!296911 () Bool)

(assert (=> d!557442 (= c!296911 (is-Nil!19893 lt!706660))))

(assert (=> d!557442 (= (size!15790 lt!706660) lt!706728)))

(declare-fun b!1819002 () Bool)

(assert (=> b!1819002 (= e!1162284 0)))

(declare-fun b!1819003 () Bool)

(assert (=> b!1819003 (= e!1162284 (+ 1 (size!15790 (t!169744 lt!706660))))))

(assert (= (and d!557442 c!296911) b!1819002))

(assert (= (and d!557442 (not c!296911)) b!1819003))

(declare-fun m!2248097 () Bool)

(assert (=> b!1819003 m!2248097))

(assert (=> b!1818781 d!557442))

(declare-fun d!557444 () Bool)

(declare-fun dynLambda!9907 (Int BalanceConc!13172) TokenValue!3672)

(assert (=> d!557444 (= (apply!5374 (transformation!3582 rule!559) (seqFromList!2543 lt!706660)) (dynLambda!9907 (toValue!5117 (transformation!3582 rule!559)) (seqFromList!2543 lt!706660)))))

(declare-fun b_lambda!60029 () Bool)

(assert (=> (not b_lambda!60029) (not d!557444)))

(declare-fun t!169758 () Bool)

(declare-fun tb!111179 () Bool)

(assert (=> (and b!1818789 (= (toValue!5117 (transformation!3582 rule!559)) (toValue!5117 (transformation!3582 rule!559))) t!169758) tb!111179))

(declare-fun result!133576 () Bool)

(assert (=> tb!111179 (= result!133576 (inv!21 (dynLambda!9907 (toValue!5117 (transformation!3582 rule!559)) (seqFromList!2543 lt!706660))))))

(declare-fun m!2248099 () Bool)

(assert (=> tb!111179 m!2248099))

(assert (=> d!557444 t!169758))

(declare-fun b_and!140963 () Bool)

(assert (= b_and!140933 (and (=> t!169758 result!133576) b_and!140963)))

(declare-fun tb!111181 () Bool)

(declare-fun t!169760 () Bool)

(assert (=> (and b!1818785 (= (toValue!5117 (transformation!3582 (h!25295 rules!4538))) (toValue!5117 (transformation!3582 rule!559))) t!169760) tb!111181))

(declare-fun result!133580 () Bool)

(assert (= result!133580 result!133576))

(assert (=> d!557444 t!169760))

(declare-fun b_and!140965 () Bool)

(assert (= b_and!140937 (and (=> t!169760 result!133580) b_and!140965)))

(declare-fun tb!111183 () Bool)

(declare-fun t!169762 () Bool)

(assert (=> (and b!1818795 (= (toValue!5117 (transformation!3582 (rule!5698 token!556))) (toValue!5117 (transformation!3582 rule!559))) t!169762) tb!111183))

(declare-fun result!133582 () Bool)

(assert (= result!133582 result!133576))

(assert (=> d!557444 t!169762))

(declare-fun b_and!140967 () Bool)

(assert (= b_and!140941 (and (=> t!169762 result!133582) b_and!140967)))

(assert (=> d!557444 m!2247899))

(declare-fun m!2248101 () Bool)

(assert (=> d!557444 m!2248101))

(assert (=> b!1818781 d!557444))

(declare-fun d!557446 () Bool)

(declare-fun lt!706732 () Bool)

(declare-fun content!2914 (List!19964) (Set Rule!6964))

(assert (=> d!557446 (= lt!706732 (set.member rule!559 (content!2914 rules!4538)))))

(declare-fun e!1162294 () Bool)

(assert (=> d!557446 (= lt!706732 e!1162294)))

(declare-fun res!817963 () Bool)

(assert (=> d!557446 (=> (not res!817963) (not e!1162294))))

(assert (=> d!557446 (= res!817963 (is-Cons!19894 rules!4538))))

(assert (=> d!557446 (= (contains!3618 rules!4538 rule!559) lt!706732)))

(declare-fun b!1819012 () Bool)

(declare-fun e!1162293 () Bool)

(assert (=> b!1819012 (= e!1162294 e!1162293)))

(declare-fun res!817964 () Bool)

(assert (=> b!1819012 (=> res!817964 e!1162293)))

(assert (=> b!1819012 (= res!817964 (= (h!25295 rules!4538) rule!559))))

(declare-fun b!1819013 () Bool)

(assert (=> b!1819013 (= e!1162293 (contains!3618 (t!169745 rules!4538) rule!559))))

(assert (= (and d!557446 res!817963) b!1819012))

(assert (= (and b!1819012 (not res!817964)) b!1819013))

(declare-fun m!2248113 () Bool)

(assert (=> d!557446 m!2248113))

(declare-fun m!2248115 () Bool)

(assert (=> d!557446 m!2248115))

(declare-fun m!2248117 () Bool)

(assert (=> b!1819013 m!2248117))

(assert (=> b!1818791 d!557446))

(declare-fun d!557450 () Bool)

(assert (=> d!557450 (= (inv!25927 (tag!3996 rule!559)) (= (mod (str.len (value!111754 (tag!3996 rule!559))) 2) 0))))

(assert (=> b!1818782 d!557450))

(declare-fun d!557452 () Bool)

(declare-fun res!817967 () Bool)

(declare-fun e!1162297 () Bool)

(assert (=> d!557452 (=> (not res!817967) (not e!1162297))))

(declare-fun semiInverseModEq!1433 (Int Int) Bool)

(assert (=> d!557452 (= res!817967 (semiInverseModEq!1433 (toChars!4976 (transformation!3582 rule!559)) (toValue!5117 (transformation!3582 rule!559))))))

(assert (=> d!557452 (= (inv!25930 (transformation!3582 rule!559)) e!1162297)))

(declare-fun b!1819016 () Bool)

(declare-fun equivClasses!1374 (Int Int) Bool)

(assert (=> b!1819016 (= e!1162297 (equivClasses!1374 (toChars!4976 (transformation!3582 rule!559)) (toValue!5117 (transformation!3582 rule!559))))))

(assert (= (and d!557452 res!817967) b!1819016))

(declare-fun m!2248119 () Bool)

(assert (=> d!557452 m!2248119))

(declare-fun m!2248121 () Bool)

(assert (=> b!1819016 m!2248121))

(assert (=> b!1818782 d!557452))

(declare-fun d!557454 () Bool)

(assert (=> d!557454 (= (inv!25927 (tag!3996 (rule!5698 token!556))) (= (mod (str.len (value!111754 (tag!3996 (rule!5698 token!556)))) 2) 0))))

(assert (=> b!1818793 d!557454))

(declare-fun d!557456 () Bool)

(declare-fun res!817968 () Bool)

(declare-fun e!1162298 () Bool)

(assert (=> d!557456 (=> (not res!817968) (not e!1162298))))

(assert (=> d!557456 (= res!817968 (semiInverseModEq!1433 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (toValue!5117 (transformation!3582 (rule!5698 token!556)))))))

(assert (=> d!557456 (= (inv!25930 (transformation!3582 (rule!5698 token!556))) e!1162298)))

(declare-fun b!1819017 () Bool)

(assert (=> b!1819017 (= e!1162298 (equivClasses!1374 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (toValue!5117 (transformation!3582 (rule!5698 token!556)))))))

(assert (= (and d!557456 res!817968) b!1819017))

(declare-fun m!2248123 () Bool)

(assert (=> d!557456 m!2248123))

(declare-fun m!2248125 () Bool)

(assert (=> b!1819017 m!2248125))

(assert (=> b!1818793 d!557456))

(declare-fun d!557458 () Bool)

(assert (=> d!557458 (= (inv!25927 (tag!3996 (h!25295 rules!4538))) (= (mod (str.len (value!111754 (tag!3996 (h!25295 rules!4538)))) 2) 0))))

(assert (=> b!1818792 d!557458))

(declare-fun d!557460 () Bool)

(declare-fun res!817969 () Bool)

(declare-fun e!1162299 () Bool)

(assert (=> d!557460 (=> (not res!817969) (not e!1162299))))

(assert (=> d!557460 (= res!817969 (semiInverseModEq!1433 (toChars!4976 (transformation!3582 (h!25295 rules!4538))) (toValue!5117 (transformation!3582 (h!25295 rules!4538)))))))

(assert (=> d!557460 (= (inv!25930 (transformation!3582 (h!25295 rules!4538))) e!1162299)))

(declare-fun b!1819018 () Bool)

(assert (=> b!1819018 (= e!1162299 (equivClasses!1374 (toChars!4976 (transformation!3582 (h!25295 rules!4538))) (toValue!5117 (transformation!3582 (h!25295 rules!4538)))))))

(assert (= (and d!557460 res!817969) b!1819018))

(declare-fun m!2248127 () Bool)

(assert (=> d!557460 m!2248127))

(declare-fun m!2248129 () Bool)

(assert (=> b!1819018 m!2248129))

(assert (=> b!1818792 d!557460))

(declare-fun d!557462 () Bool)

(declare-fun res!817974 () Bool)

(declare-fun e!1162304 () Bool)

(assert (=> d!557462 (=> res!817974 e!1162304)))

(assert (=> d!557462 (= res!817974 (is-Nil!19895 (map!4104 rules!4538 lambda!71131)))))

(assert (=> d!557462 (= (forall!4294 (map!4104 rules!4538 lambda!71131) lambda!71132) e!1162304)))

(declare-fun b!1819023 () Bool)

(declare-fun e!1162305 () Bool)

(assert (=> b!1819023 (= e!1162304 e!1162305)))

(declare-fun res!817975 () Bool)

(assert (=> b!1819023 (=> (not res!817975) (not e!1162305))))

(declare-fun dynLambda!9908 (Int Regex!4910) Bool)

(assert (=> b!1819023 (= res!817975 (dynLambda!9908 lambda!71132 (h!25296 (map!4104 rules!4538 lambda!71131))))))

(declare-fun b!1819024 () Bool)

(assert (=> b!1819024 (= e!1162305 (forall!4294 (t!169746 (map!4104 rules!4538 lambda!71131)) lambda!71132))))

(assert (= (and d!557462 (not res!817974)) b!1819023))

(assert (= (and b!1819023 res!817975) b!1819024))

(declare-fun b_lambda!60033 () Bool)

(assert (=> (not b_lambda!60033) (not b!1819023)))

(declare-fun m!2248131 () Bool)

(assert (=> b!1819023 m!2248131))

(declare-fun m!2248133 () Bool)

(assert (=> b!1819024 m!2248133))

(assert (=> b!1818794 d!557462))

(declare-fun d!557464 () Bool)

(declare-fun lt!706735 () List!19965)

(declare-fun size!15794 (List!19965) Int)

(declare-fun size!15795 (List!19964) Int)

(assert (=> d!557464 (= (size!15794 lt!706735) (size!15795 rules!4538))))

(declare-fun e!1162308 () List!19965)

(assert (=> d!557464 (= lt!706735 e!1162308)))

(declare-fun c!296915 () Bool)

(assert (=> d!557464 (= c!296915 (is-Nil!19894 rules!4538))))

(assert (=> d!557464 (= (map!4104 rules!4538 lambda!71131) lt!706735)))

(declare-fun b!1819029 () Bool)

(assert (=> b!1819029 (= e!1162308 Nil!19895)))

(declare-fun b!1819030 () Bool)

(declare-fun $colon$colon!439 (List!19965 Regex!4910) List!19965)

(declare-fun dynLambda!9909 (Int Rule!6964) Regex!4910)

(assert (=> b!1819030 (= e!1162308 ($colon$colon!439 (map!4104 (t!169745 rules!4538) lambda!71131) (dynLambda!9909 lambda!71131 (h!25295 rules!4538))))))

(assert (= (and d!557464 c!296915) b!1819029))

(assert (= (and d!557464 (not c!296915)) b!1819030))

(declare-fun b_lambda!60035 () Bool)

(assert (=> (not b_lambda!60035) (not b!1819030)))

(declare-fun m!2248135 () Bool)

(assert (=> d!557464 m!2248135))

(declare-fun m!2248137 () Bool)

(assert (=> d!557464 m!2248137))

(declare-fun m!2248139 () Bool)

(assert (=> b!1819030 m!2248139))

(declare-fun m!2248141 () Bool)

(assert (=> b!1819030 m!2248141))

(assert (=> b!1819030 m!2248139))

(assert (=> b!1819030 m!2248141))

(declare-fun m!2248143 () Bool)

(assert (=> b!1819030 m!2248143))

(assert (=> b!1818794 d!557464))

(declare-fun bs!407265 () Bool)

(declare-fun d!557466 () Bool)

(assert (= bs!407265 (and d!557466 b!1818794)))

(declare-fun lambda!71143 () Int)

(assert (=> bs!407265 (= lambda!71143 lambda!71131)))

(declare-fun lambda!71144 () Int)

(assert (=> bs!407265 (= lambda!71144 lambda!71132)))

(assert (=> d!557466 (forall!4294 (map!4104 rules!4538 lambda!71143) lambda!71144)))

(declare-fun lt!706750 () Unit!34576)

(declare-fun e!1162311 () Unit!34576)

(assert (=> d!557466 (= lt!706750 e!1162311)))

(declare-fun c!296918 () Bool)

(assert (=> d!557466 (= c!296918 (is-Nil!19894 rules!4538))))

(declare-fun rulesValid!1358 (LexerInterface!3211 List!19964) Bool)

(assert (=> d!557466 (rulesValid!1358 thiss!28068 rules!4538)))

(declare-fun lt!706748 () Unit!34576)

(declare-fun lt!706747 () Unit!34576)

(assert (=> d!557466 (= lt!706748 lt!706747)))

(declare-fun lt!706749 () List!19963)

(assert (=> d!557466 (= (maxPrefixOneRule!1124 thiss!28068 rule!559 input!3612) (Some!4161 (tuple2!19437 (Token!6719 (apply!5374 (transformation!3582 rule!559) (seqFromList!2543 lt!706749)) rule!559 (size!15790 lt!706749) lt!706749) suffix!1667)))))

(assert (=> d!557466 (= lt!706747 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!500 thiss!28068 rules!4538 lt!706749 input!3612 suffix!1667 rule!559))))

(assert (=> d!557466 (= lt!706749 (list!8092 (charsOf!2225 token!556)))))

(assert (=> d!557466 (= (lemma!435 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!706750)))

(declare-fun b!1819035 () Bool)

(declare-fun Unit!34581 () Unit!34576)

(assert (=> b!1819035 (= e!1162311 Unit!34581)))

(declare-fun b!1819036 () Bool)

(declare-fun Unit!34582 () Unit!34576)

(assert (=> b!1819036 (= e!1162311 Unit!34582)))

(declare-fun lt!706746 () Unit!34576)

(assert (=> b!1819036 (= lt!706746 (lemma!435 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169745 rules!4538)))))

(assert (= (and d!557466 c!296918) b!1819035))

(assert (= (and d!557466 (not c!296918)) b!1819036))

(assert (=> d!557466 m!2247895))

(declare-fun m!2248145 () Bool)

(assert (=> d!557466 m!2248145))

(assert (=> d!557466 m!2247883))

(assert (=> d!557466 m!2247885))

(declare-fun m!2248147 () Bool)

(assert (=> d!557466 m!2248147))

(declare-fun m!2248149 () Bool)

(assert (=> d!557466 m!2248149))

(assert (=> d!557466 m!2248145))

(declare-fun m!2248151 () Bool)

(assert (=> d!557466 m!2248151))

(assert (=> d!557466 m!2248149))

(declare-fun m!2248153 () Bool)

(assert (=> d!557466 m!2248153))

(declare-fun m!2248155 () Bool)

(assert (=> d!557466 m!2248155))

(assert (=> d!557466 m!2247883))

(declare-fun m!2248157 () Bool)

(assert (=> d!557466 m!2248157))

(declare-fun m!2248159 () Bool)

(assert (=> b!1819036 m!2248159))

(assert (=> b!1818794 d!557466))

(declare-fun b!1819050 () Bool)

(declare-fun e!1162318 () List!19963)

(assert (=> b!1819050 (= e!1162318 (Cons!19893 (h!25294 lt!706660) (++!5406 (t!169744 lt!706660) suffix!1667)))))

(declare-fun b!1819049 () Bool)

(assert (=> b!1819049 (= e!1162318 suffix!1667)))

(declare-fun b!1819051 () Bool)

(declare-fun res!817980 () Bool)

(declare-fun e!1162319 () Bool)

(assert (=> b!1819051 (=> (not res!817980) (not e!1162319))))

(declare-fun lt!706763 () List!19963)

(assert (=> b!1819051 (= res!817980 (= (size!15790 lt!706763) (+ (size!15790 lt!706660) (size!15790 suffix!1667))))))

(declare-fun b!1819052 () Bool)

(assert (=> b!1819052 (= e!1162319 (or (not (= suffix!1667 Nil!19893)) (= lt!706763 lt!706660)))))

(declare-fun d!557468 () Bool)

(assert (=> d!557468 e!1162319))

(declare-fun res!817981 () Bool)

(assert (=> d!557468 (=> (not res!817981) (not e!1162319))))

(declare-fun content!2915 (List!19963) (Set C!9994))

(assert (=> d!557468 (= res!817981 (= (content!2915 lt!706763) (set.union (content!2915 lt!706660) (content!2915 suffix!1667))))))

(assert (=> d!557468 (= lt!706763 e!1162318)))

(declare-fun c!296923 () Bool)

(assert (=> d!557468 (= c!296923 (is-Nil!19893 lt!706660))))

(assert (=> d!557468 (= (++!5406 lt!706660 suffix!1667) lt!706763)))

(assert (= (and d!557468 c!296923) b!1819049))

(assert (= (and d!557468 (not c!296923)) b!1819050))

(assert (= (and d!557468 res!817981) b!1819051))

(assert (= (and b!1819051 res!817980) b!1819052))

(declare-fun m!2248161 () Bool)

(assert (=> b!1819050 m!2248161))

(declare-fun m!2248163 () Bool)

(assert (=> b!1819051 m!2248163))

(assert (=> b!1819051 m!2247893))

(declare-fun m!2248165 () Bool)

(assert (=> b!1819051 m!2248165))

(declare-fun m!2248167 () Bool)

(assert (=> d!557468 m!2248167))

(declare-fun m!2248169 () Bool)

(assert (=> d!557468 m!2248169))

(declare-fun m!2248171 () Bool)

(assert (=> d!557468 m!2248171))

(assert (=> b!1818784 d!557468))

(declare-fun d!557470 () Bool)

(declare-fun list!8094 (Conc!6614) List!19963)

(assert (=> d!557470 (= (list!8092 (charsOf!2225 token!556)) (list!8094 (c!296881 (charsOf!2225 token!556))))))

(declare-fun bs!407266 () Bool)

(assert (= bs!407266 d!557470))

(declare-fun m!2248173 () Bool)

(assert (=> bs!407266 m!2248173))

(assert (=> b!1818784 d!557470))

(declare-fun d!557472 () Bool)

(declare-fun lt!706766 () BalanceConc!13172)

(assert (=> d!557472 (= (list!8092 lt!706766) (originalCharacters!4390 token!556))))

(assert (=> d!557472 (= lt!706766 (dynLambda!9906 (toChars!4976 (transformation!3582 (rule!5698 token!556))) (value!111755 token!556)))))

(assert (=> d!557472 (= (charsOf!2225 token!556) lt!706766)))

(declare-fun b_lambda!60037 () Bool)

(assert (=> (not b_lambda!60037) (not d!557472)))

(assert (=> d!557472 t!169752))

(declare-fun b_and!140969 () Bool)

(assert (= b_and!140957 (and (=> t!169752 result!133568) b_and!140969)))

(assert (=> d!557472 t!169754))

(declare-fun b_and!140971 () Bool)

(assert (= b_and!140959 (and (=> t!169754 result!133572) b_and!140971)))

(assert (=> d!557472 t!169756))

(declare-fun b_and!140973 () Bool)

(assert (= b_and!140961 (and (=> t!169756 result!133574) b_and!140973)))

(declare-fun m!2248175 () Bool)

(assert (=> d!557472 m!2248175))

(assert (=> d!557472 m!2248013))

(assert (=> b!1818784 d!557472))

(declare-fun d!557474 () Bool)

(declare-fun res!817984 () Bool)

(declare-fun e!1162323 () Bool)

(assert (=> d!557474 (=> (not res!817984) (not e!1162323))))

(assert (=> d!557474 (= res!817984 (rulesValid!1358 thiss!28068 rules!4538))))

(assert (=> d!557474 (= (rulesInvariant!2880 thiss!28068 rules!4538) e!1162323)))

(declare-fun b!1819057 () Bool)

(declare-datatypes ((List!19970 0))(
  ( (Nil!19900) (Cons!19900 (h!25301 String!22694) (t!169773 List!19970)) )
))
(declare-fun noDuplicateTag!1358 (LexerInterface!3211 List!19964 List!19970) Bool)

(assert (=> b!1819057 (= e!1162323 (noDuplicateTag!1358 thiss!28068 rules!4538 Nil!19900))))

(assert (= (and d!557474 res!817984) b!1819057))

(assert (=> d!557474 m!2248155))

(declare-fun m!2248185 () Bool)

(assert (=> b!1819057 m!2248185))

(assert (=> b!1818786 d!557474))

(declare-fun b!1819089 () Bool)

(declare-fun res!818011 () Bool)

(declare-fun e!1162344 () Bool)

(assert (=> b!1819089 (=> res!818011 e!1162344)))

(declare-fun e!1162341 () Bool)

(assert (=> b!1819089 (= res!818011 e!1162341)))

(declare-fun res!818005 () Bool)

(assert (=> b!1819089 (=> (not res!818005) (not e!1162341))))

(declare-fun lt!706774 () Bool)

(assert (=> b!1819089 (= res!818005 lt!706774)))

(declare-fun b!1819090 () Bool)

(declare-fun e!1162345 () Bool)

(declare-fun e!1162343 () Bool)

(assert (=> b!1819090 (= e!1162345 e!1162343)))

(declare-fun c!296933 () Bool)

(assert (=> b!1819090 (= c!296933 (is-EmptyLang!4910 (regex!3582 rule!559)))))

(declare-fun b!1819091 () Bool)

(declare-fun head!4233 (List!19963) C!9994)

(assert (=> b!1819091 (= e!1162341 (= (head!4233 lt!706660) (c!296882 (regex!3582 rule!559))))))

(declare-fun b!1819092 () Bool)

(declare-fun e!1162342 () Bool)

(assert (=> b!1819092 (= e!1162344 e!1162342)))

(declare-fun res!818008 () Bool)

(assert (=> b!1819092 (=> (not res!818008) (not e!1162342))))

(assert (=> b!1819092 (= res!818008 (not lt!706774))))

(declare-fun b!1819093 () Bool)

(declare-fun res!818010 () Bool)

(assert (=> b!1819093 (=> (not res!818010) (not e!1162341))))

(declare-fun tail!2692 (List!19963) List!19963)

(assert (=> b!1819093 (= res!818010 (isEmpty!12583 (tail!2692 lt!706660)))))

(declare-fun b!1819094 () Bool)

(declare-fun res!818009 () Bool)

(assert (=> b!1819094 (=> res!818009 e!1162344)))

(assert (=> b!1819094 (= res!818009 (not (is-ElementMatch!4910 (regex!3582 rule!559))))))

(assert (=> b!1819094 (= e!1162343 e!1162344)))

(declare-fun b!1819095 () Bool)

(declare-fun e!1162347 () Bool)

(assert (=> b!1819095 (= e!1162342 e!1162347)))

(declare-fun res!818006 () Bool)

(assert (=> b!1819095 (=> res!818006 e!1162347)))

(declare-fun call!114279 () Bool)

(assert (=> b!1819095 (= res!818006 call!114279)))

(declare-fun b!1819096 () Bool)

(declare-fun res!818007 () Bool)

(assert (=> b!1819096 (=> (not res!818007) (not e!1162341))))

(assert (=> b!1819096 (= res!818007 (not call!114279))))

(declare-fun b!1819097 () Bool)

(assert (=> b!1819097 (= e!1162343 (not lt!706774))))

(declare-fun b!1819098 () Bool)

(assert (=> b!1819098 (= e!1162345 (= lt!706774 call!114279))))

(declare-fun b!1819099 () Bool)

(declare-fun e!1162346 () Bool)

(declare-fun derivativeStep!1283 (Regex!4910 C!9994) Regex!4910)

(assert (=> b!1819099 (= e!1162346 (matchR!2375 (derivativeStep!1283 (regex!3582 rule!559) (head!4233 lt!706660)) (tail!2692 lt!706660)))))

(declare-fun b!1819100 () Bool)

(declare-fun nullable!1518 (Regex!4910) Bool)

(assert (=> b!1819100 (= e!1162346 (nullable!1518 (regex!3582 rule!559)))))

(declare-fun b!1819101 () Bool)

(declare-fun res!818004 () Bool)

(assert (=> b!1819101 (=> res!818004 e!1162347)))

(assert (=> b!1819101 (= res!818004 (not (isEmpty!12583 (tail!2692 lt!706660))))))

(declare-fun b!1819102 () Bool)

(assert (=> b!1819102 (= e!1162347 (not (= (head!4233 lt!706660) (c!296882 (regex!3582 rule!559)))))))

(declare-fun bm!114274 () Bool)

(assert (=> bm!114274 (= call!114279 (isEmpty!12583 lt!706660))))

(declare-fun d!557476 () Bool)

(assert (=> d!557476 e!1162345))

(declare-fun c!296931 () Bool)

(assert (=> d!557476 (= c!296931 (is-EmptyExpr!4910 (regex!3582 rule!559)))))

(assert (=> d!557476 (= lt!706774 e!1162346)))

(declare-fun c!296932 () Bool)

(assert (=> d!557476 (= c!296932 (isEmpty!12583 lt!706660))))

(declare-fun validRegex!1992 (Regex!4910) Bool)

(assert (=> d!557476 (validRegex!1992 (regex!3582 rule!559))))

(assert (=> d!557476 (= (matchR!2375 (regex!3582 rule!559) lt!706660) lt!706774)))

(assert (= (and d!557476 c!296932) b!1819100))

(assert (= (and d!557476 (not c!296932)) b!1819099))

(assert (= (and d!557476 c!296931) b!1819098))

(assert (= (and d!557476 (not c!296931)) b!1819090))

(assert (= (and b!1819090 c!296933) b!1819097))

(assert (= (and b!1819090 (not c!296933)) b!1819094))

(assert (= (and b!1819094 (not res!818009)) b!1819089))

(assert (= (and b!1819089 res!818005) b!1819096))

(assert (= (and b!1819096 res!818007) b!1819093))

(assert (= (and b!1819093 res!818010) b!1819091))

(assert (= (and b!1819089 (not res!818011)) b!1819092))

(assert (= (and b!1819092 res!818008) b!1819095))

(assert (= (and b!1819095 (not res!818006)) b!1819101))

(assert (= (and b!1819101 (not res!818004)) b!1819102))

(assert (= (or b!1819098 b!1819095 b!1819096) bm!114274))

(declare-fun m!2248197 () Bool)

(assert (=> bm!114274 m!2248197))

(declare-fun m!2248199 () Bool)

(assert (=> b!1819099 m!2248199))

(assert (=> b!1819099 m!2248199))

(declare-fun m!2248201 () Bool)

(assert (=> b!1819099 m!2248201))

(declare-fun m!2248203 () Bool)

(assert (=> b!1819099 m!2248203))

(assert (=> b!1819099 m!2248201))

(assert (=> b!1819099 m!2248203))

(declare-fun m!2248205 () Bool)

(assert (=> b!1819099 m!2248205))

(assert (=> b!1819091 m!2248199))

(declare-fun m!2248207 () Bool)

(assert (=> b!1819100 m!2248207))

(assert (=> d!557476 m!2248197))

(declare-fun m!2248209 () Bool)

(assert (=> d!557476 m!2248209))

(assert (=> b!1819101 m!2248203))

(assert (=> b!1819101 m!2248203))

(declare-fun m!2248211 () Bool)

(assert (=> b!1819101 m!2248211))

(assert (=> b!1819093 m!2248203))

(assert (=> b!1819093 m!2248203))

(assert (=> b!1819093 m!2248211))

(assert (=> b!1819102 m!2248199))

(assert (=> b!1818797 d!557476))

(declare-fun d!557484 () Bool)

(declare-fun res!818020 () Bool)

(declare-fun e!1162354 () Bool)

(assert (=> d!557484 (=> (not res!818020) (not e!1162354))))

(assert (=> d!557484 (= res!818020 (validRegex!1992 (regex!3582 rule!559)))))

(assert (=> d!557484 (= (ruleValid!1074 thiss!28068 rule!559) e!1162354)))

(declare-fun b!1819115 () Bool)

(declare-fun res!818021 () Bool)

(assert (=> b!1819115 (=> (not res!818021) (not e!1162354))))

(assert (=> b!1819115 (= res!818021 (not (nullable!1518 (regex!3582 rule!559))))))

(declare-fun b!1819116 () Bool)

(assert (=> b!1819116 (= e!1162354 (not (= (tag!3996 rule!559) (String!22695 ""))))))

(assert (= (and d!557484 res!818020) b!1819115))

(assert (= (and b!1819115 res!818021) b!1819116))

(assert (=> d!557484 m!2248209))

(assert (=> b!1819115 m!2248207))

(assert (=> b!1818797 d!557484))

(declare-fun d!557486 () Bool)

(assert (=> d!557486 (ruleValid!1074 thiss!28068 rule!559)))

(declare-fun lt!706780 () Unit!34576)

(declare-fun choose!11465 (LexerInterface!3211 Rule!6964 List!19964) Unit!34576)

(assert (=> d!557486 (= lt!706780 (choose!11465 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557486 (contains!3618 rules!4538 rule!559)))

(assert (=> d!557486 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!595 thiss!28068 rule!559 rules!4538) lt!706780)))

(declare-fun bs!407268 () Bool)

(assert (= bs!407268 d!557486))

(assert (=> bs!407268 m!2247911))

(declare-fun m!2248225 () Bool)

(assert (=> bs!407268 m!2248225))

(assert (=> bs!407268 m!2247903))

(assert (=> b!1818797 d!557486))

(declare-fun b!1819131 () Bool)

(declare-fun e!1162363 () Bool)

(declare-fun inv!17 (TokenValue!3672) Bool)

(assert (=> b!1819131 (= e!1162363 (inv!17 (value!111755 token!556)))))

(declare-fun d!557490 () Bool)

(declare-fun c!296941 () Bool)

(assert (=> d!557490 (= c!296941 (is-IntegerValue!11016 (value!111755 token!556)))))

(declare-fun e!1162364 () Bool)

(assert (=> d!557490 (= (inv!21 (value!111755 token!556)) e!1162364)))

(declare-fun b!1819132 () Bool)

(assert (=> b!1819132 (= e!1162364 e!1162363)))

(declare-fun c!296942 () Bool)

(assert (=> b!1819132 (= c!296942 (is-IntegerValue!11017 (value!111755 token!556)))))

(declare-fun b!1819133 () Bool)

(declare-fun res!818026 () Bool)

(declare-fun e!1162365 () Bool)

(assert (=> b!1819133 (=> res!818026 e!1162365)))

(assert (=> b!1819133 (= res!818026 (not (is-IntegerValue!11018 (value!111755 token!556))))))

(assert (=> b!1819133 (= e!1162363 e!1162365)))

(declare-fun b!1819134 () Bool)

(declare-fun inv!15 (TokenValue!3672) Bool)

(assert (=> b!1819134 (= e!1162365 (inv!15 (value!111755 token!556)))))

(declare-fun b!1819135 () Bool)

(declare-fun inv!16 (TokenValue!3672) Bool)

(assert (=> b!1819135 (= e!1162364 (inv!16 (value!111755 token!556)))))

(assert (= (and d!557490 c!296941) b!1819135))

(assert (= (and d!557490 (not c!296941)) b!1819132))

(assert (= (and b!1819132 c!296942) b!1819131))

(assert (= (and b!1819132 (not c!296942)) b!1819133))

(assert (= (and b!1819133 (not res!818026)) b!1819134))

(declare-fun m!2248229 () Bool)

(assert (=> b!1819131 m!2248229))

(declare-fun m!2248231 () Bool)

(assert (=> b!1819134 m!2248231))

(declare-fun m!2248233 () Bool)

(assert (=> b!1819135 m!2248233))

(assert (=> b!1818796 d!557490))

(declare-fun b!1819149 () Bool)

(declare-fun e!1162368 () Bool)

(declare-fun tp!514028 () Bool)

(declare-fun tp!514030 () Bool)

(assert (=> b!1819149 (= e!1162368 (and tp!514028 tp!514030))))

(declare-fun b!1819147 () Bool)

(declare-fun tp!514027 () Bool)

(declare-fun tp!514026 () Bool)

(assert (=> b!1819147 (= e!1162368 (and tp!514027 tp!514026))))

(assert (=> b!1818782 (= tp!513971 e!1162368)))

(declare-fun b!1819146 () Bool)

(assert (=> b!1819146 (= e!1162368 tp_is_empty!8055)))

(declare-fun b!1819148 () Bool)

(declare-fun tp!514029 () Bool)

(assert (=> b!1819148 (= e!1162368 tp!514029)))

(assert (= (and b!1818782 (is-ElementMatch!4910 (regex!3582 rule!559))) b!1819146))

(assert (= (and b!1818782 (is-Concat!8583 (regex!3582 rule!559))) b!1819147))

(assert (= (and b!1818782 (is-Star!4910 (regex!3582 rule!559))) b!1819148))

(assert (= (and b!1818782 (is-Union!4910 (regex!3582 rule!559))) b!1819149))

(declare-fun b!1819154 () Bool)

(declare-fun e!1162371 () Bool)

(declare-fun tp!514033 () Bool)

(assert (=> b!1819154 (= e!1162371 (and tp_is_empty!8055 tp!514033))))

(assert (=> b!1818798 (= tp!513963 e!1162371)))

(assert (= (and b!1818798 (is-Cons!19893 (t!169744 suffix!1667))) b!1819154))

(declare-fun b!1819160 () Bool)

(declare-fun e!1162372 () Bool)

(declare-fun tp!514036 () Bool)

(declare-fun tp!514038 () Bool)

(assert (=> b!1819160 (= e!1162372 (and tp!514036 tp!514038))))

(declare-fun b!1819158 () Bool)

(declare-fun tp!514035 () Bool)

(declare-fun tp!514034 () Bool)

(assert (=> b!1819158 (= e!1162372 (and tp!514035 tp!514034))))

(assert (=> b!1818793 (= tp!513961 e!1162372)))

(declare-fun b!1819157 () Bool)

(assert (=> b!1819157 (= e!1162372 tp_is_empty!8055)))

(declare-fun b!1819159 () Bool)

(declare-fun tp!514037 () Bool)

(assert (=> b!1819159 (= e!1162372 tp!514037)))

(assert (= (and b!1818793 (is-ElementMatch!4910 (regex!3582 (rule!5698 token!556)))) b!1819157))

(assert (= (and b!1818793 (is-Concat!8583 (regex!3582 (rule!5698 token!556)))) b!1819158))

(assert (= (and b!1818793 (is-Star!4910 (regex!3582 (rule!5698 token!556)))) b!1819159))

(assert (= (and b!1818793 (is-Union!4910 (regex!3582 (rule!5698 token!556)))) b!1819160))

(declare-fun b!1819166 () Bool)

(declare-fun e!1162375 () Bool)

(declare-fun tp!514043 () Bool)

(declare-fun tp!514045 () Bool)

(assert (=> b!1819166 (= e!1162375 (and tp!514043 tp!514045))))

(declare-fun b!1819164 () Bool)

(declare-fun tp!514042 () Bool)

(declare-fun tp!514041 () Bool)

(assert (=> b!1819164 (= e!1162375 (and tp!514042 tp!514041))))

(assert (=> b!1818792 (= tp!513972 e!1162375)))

(declare-fun b!1819163 () Bool)

(assert (=> b!1819163 (= e!1162375 tp_is_empty!8055)))

(declare-fun b!1819165 () Bool)

(declare-fun tp!514044 () Bool)

(assert (=> b!1819165 (= e!1162375 tp!514044)))

(assert (= (and b!1818792 (is-ElementMatch!4910 (regex!3582 (h!25295 rules!4538)))) b!1819163))

(assert (= (and b!1818792 (is-Concat!8583 (regex!3582 (h!25295 rules!4538)))) b!1819164))

(assert (= (and b!1818792 (is-Star!4910 (regex!3582 (h!25295 rules!4538)))) b!1819165))

(assert (= (and b!1818792 (is-Union!4910 (regex!3582 (h!25295 rules!4538)))) b!1819166))

(declare-fun b!1819178 () Bool)

(declare-fun b_free!50379 () Bool)

(declare-fun b_next!51083 () Bool)

(assert (=> b!1819178 (= b_free!50379 (not b_next!51083))))

(declare-fun t!169770 () Bool)

(declare-fun tb!111191 () Bool)

(assert (=> (and b!1819178 (= (toValue!5117 (transformation!3582 (h!25295 (t!169745 rules!4538)))) (toValue!5117 (transformation!3582 rule!559))) t!169770) tb!111191))

(declare-fun result!133598 () Bool)

(assert (= result!133598 result!133576))

(assert (=> d!557444 t!169770))

(declare-fun b_and!140981 () Bool)

(declare-fun tp!514055 () Bool)

(assert (=> b!1819178 (= tp!514055 (and (=> t!169770 result!133598) b_and!140981))))

(declare-fun b_free!50381 () Bool)

(declare-fun b_next!51085 () Bool)

(assert (=> b!1819178 (= b_free!50381 (not b_next!51085))))

(declare-fun tb!111193 () Bool)

(declare-fun t!169772 () Bool)

(assert (=> (and b!1819178 (= (toChars!4976 (transformation!3582 (h!25295 (t!169745 rules!4538)))) (toChars!4976 (transformation!3582 (rule!5698 token!556)))) t!169772) tb!111193))

(declare-fun result!133600 () Bool)

(assert (= result!133600 result!133568))

(assert (=> b!1818888 t!169772))

(assert (=> d!557472 t!169772))

(declare-fun b_and!140983 () Bool)

(declare-fun tp!514056 () Bool)

(assert (=> b!1819178 (= tp!514056 (and (=> t!169772 result!133600) b_and!140983))))

(declare-fun e!1162385 () Bool)

(assert (=> b!1819178 (= e!1162385 (and tp!514055 tp!514056))))

(declare-fun b!1819177 () Bool)

(declare-fun e!1162386 () Bool)

(declare-fun tp!514058 () Bool)

(assert (=> b!1819177 (= e!1162386 (and tp!514058 (inv!25927 (tag!3996 (h!25295 (t!169745 rules!4538)))) (inv!25930 (transformation!3582 (h!25295 (t!169745 rules!4538)))) e!1162385))))

(declare-fun b!1819176 () Bool)

(declare-fun e!1162388 () Bool)

(declare-fun tp!514057 () Bool)

(assert (=> b!1819176 (= e!1162388 (and e!1162386 tp!514057))))

(assert (=> b!1818783 (= tp!513968 e!1162388)))

(assert (= b!1819177 b!1819178))

(assert (= b!1819176 b!1819177))

(assert (= (and b!1818783 (is-Cons!19894 (t!169745 rules!4538))) b!1819176))

(declare-fun m!2248243 () Bool)

(assert (=> b!1819177 m!2248243))

(declare-fun m!2248245 () Bool)

(assert (=> b!1819177 m!2248245))

(declare-fun b!1819179 () Bool)

(declare-fun e!1162389 () Bool)

(declare-fun tp!514059 () Bool)

(assert (=> b!1819179 (= e!1162389 (and tp_is_empty!8055 tp!514059))))

(assert (=> b!1818790 (= tp!513973 e!1162389)))

(assert (= (and b!1818790 (is-Cons!19893 (t!169744 input!3612))) b!1819179))

(declare-fun b!1819180 () Bool)

(declare-fun e!1162390 () Bool)

(declare-fun tp!514060 () Bool)

(assert (=> b!1819180 (= e!1162390 (and tp_is_empty!8055 tp!514060))))

(assert (=> b!1818796 (= tp!513962 e!1162390)))

(assert (= (and b!1818796 (is-Cons!19893 (originalCharacters!4390 token!556))) b!1819180))

(declare-fun b_lambda!60041 () Bool)

(assert (= b_lambda!60035 (or b!1818794 b_lambda!60041)))

(declare-fun bs!407270 () Bool)

(declare-fun d!557496 () Bool)

(assert (= bs!407270 (and d!557496 b!1818794)))

(assert (=> bs!407270 (= (dynLambda!9909 lambda!71131 (h!25295 rules!4538)) (regex!3582 (h!25295 rules!4538)))))

(assert (=> b!1819030 d!557496))

(declare-fun b_lambda!60043 () Bool)

(assert (= b_lambda!60025 (or (and b!1818789 b_free!50357 (= (toChars!4976 (transformation!3582 rule!559)) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) (and b!1818785 b_free!50361 (= (toChars!4976 (transformation!3582 (h!25295 rules!4538))) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) (and b!1818795 b_free!50365) (and b!1819178 b_free!50381 (= (toChars!4976 (transformation!3582 (h!25295 (t!169745 rules!4538)))) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) b_lambda!60043)))

(declare-fun b_lambda!60045 () Bool)

(assert (= b_lambda!60033 (or b!1818794 b_lambda!60045)))

(declare-fun bs!407271 () Bool)

(declare-fun d!557498 () Bool)

(assert (= bs!407271 (and d!557498 b!1818794)))

(assert (=> bs!407271 (= (dynLambda!9908 lambda!71132 (h!25296 (map!4104 rules!4538 lambda!71131))) (validRegex!1992 (h!25296 (map!4104 rules!4538 lambda!71131))))))

(declare-fun m!2248247 () Bool)

(assert (=> bs!407271 m!2248247))

(assert (=> b!1819023 d!557498))

(declare-fun b_lambda!60047 () Bool)

(assert (= b_lambda!60029 (or (and b!1818789 b_free!50355) (and b!1818785 b_free!50359 (= (toValue!5117 (transformation!3582 (h!25295 rules!4538))) (toValue!5117 (transformation!3582 rule!559)))) (and b!1818795 b_free!50363 (= (toValue!5117 (transformation!3582 (rule!5698 token!556))) (toValue!5117 (transformation!3582 rule!559)))) (and b!1819178 b_free!50379 (= (toValue!5117 (transformation!3582 (h!25295 (t!169745 rules!4538)))) (toValue!5117 (transformation!3582 rule!559)))) b_lambda!60047)))

(declare-fun b_lambda!60049 () Bool)

(assert (= b_lambda!60037 (or (and b!1818789 b_free!50357 (= (toChars!4976 (transformation!3582 rule!559)) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) (and b!1818785 b_free!50361 (= (toChars!4976 (transformation!3582 (h!25295 rules!4538))) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) (and b!1818795 b_free!50365) (and b!1819178 b_free!50381 (= (toChars!4976 (transformation!3582 (h!25295 (t!169745 rules!4538)))) (toChars!4976 (transformation!3582 (rule!5698 token!556))))) b_lambda!60049)))

(push 1)

(assert (not b!1819160))

(assert (not bm!114274))

(assert (not b!1819164))

(assert (not b_lambda!60045))

(assert (not b_next!51059))

(assert (not b!1818964))

(assert (not b!1819003))

(assert (not bm!114268))

(assert (not b_lambda!60041))

(assert (not b!1818877))

(assert (not b!1818967))

(assert (not b!1819030))

(assert (not d!557464))

(assert b_and!140963)

(assert (not b_lambda!60047))

(assert b_and!140983)

(assert (not b_next!51065))

(assert (not b!1818970))

(assert (not b!1819016))

(assert b_and!140973)

(assert (not d!557484))

(assert (not b!1819091))

(assert tp_is_empty!8055)

(assert (not d!557434))

(assert (not b_next!51083))

(assert (not b_next!51085))

(assert (not b!1818969))

(assert (not d!557466))

(assert b_and!140967)

(assert (not b!1819154))

(assert (not b!1819050))

(assert (not d!557472))

(assert (not b!1819180))

(assert (not d!557436))

(assert (not b!1819101))

(assert b_and!140971)

(assert (not d!557476))

(assert (not b!1819093))

(assert (not b!1819179))

(assert (not b_next!51063))

(assert (not b!1819051))

(assert (not d!557416))

(assert (not b!1819018))

(assert (not b!1818881))

(assert b_and!140981)

(assert (not b!1818880))

(assert (not b_next!51067))

(assert (not d!557446))

(assert (not b!1819057))

(assert (not b!1818875))

(assert (not b!1819024))

(assert (not b_next!51061))

(assert (not b!1819148))

(assert (not b!1818888))

(assert (not d!557452))

(assert (not d!557418))

(assert (not b!1819036))

(assert (not b!1819134))

(assert (not b!1818971))

(assert (not b!1818879))

(assert (not b!1819017))

(assert (not b!1819149))

(assert (not b!1819131))

(assert (not b!1819158))

(assert (not tb!111173))

(assert (not d!557456))

(assert (not b!1819013))

(assert (not b!1819100))

(assert (not d!557420))

(assert (not b_next!51069))

(assert (not d!557468))

(assert (not b_lambda!60049))

(assert (not b!1819115))

(assert (not b!1819165))

(assert b_and!140965)

(assert (not b!1818894))

(assert (not b!1819159))

(assert (not b!1818966))

(assert (not b!1818878))

(assert (not b!1818889))

(assert (not b!1819166))

(assert (not b!1818876))

(assert (not b!1818968))

(assert (not d!557486))

(assert (not d!557460))

(assert b_and!140969)

(assert (not b!1819176))

(assert (not b!1818882))

(assert (not d!557474))

(assert (not bs!407271))

(assert (not b!1819177))

(assert (not b!1818972))

(assert (not b!1819099))

(assert (not b!1819102))

(assert (not b!1819147))

(assert (not b_lambda!60043))

(assert (not d!557470))

(assert (not tb!111179))

(assert (not b!1819135))

(check-sat)

(pop 1)

(push 1)

(assert b_and!140963)

(assert b_and!140973)

(assert b_and!140967)

(assert b_and!140971)

(assert (not b_next!51063))

(assert (not b_next!51061))

(assert (not b_next!51069))

(assert (not b_next!51059))

(assert b_and!140965)

(assert b_and!140969)

(assert b_and!140983)

(assert (not b_next!51065))

(assert (not b_next!51083))

(assert (not b_next!51085))

(assert b_and!140981)

(assert (not b_next!51067))

(check-sat)

(pop 1)

