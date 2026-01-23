; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19342 () Bool)

(assert start!19342)

(declare-fun b!178916 () Bool)

(declare-fun b_free!6905 () Bool)

(declare-fun b_next!6905 () Bool)

(assert (=> b!178916 (= b_free!6905 (not b_next!6905))))

(declare-fun tp!85912 () Bool)

(declare-fun b_and!12173 () Bool)

(assert (=> b!178916 (= tp!85912 b_and!12173)))

(declare-fun b_free!6907 () Bool)

(declare-fun b_next!6907 () Bool)

(assert (=> b!178916 (= b_free!6907 (not b_next!6907))))

(declare-fun tp!85904 () Bool)

(declare-fun b_and!12175 () Bool)

(assert (=> b!178916 (= tp!85904 b_and!12175)))

(declare-fun b!178933 () Bool)

(declare-fun b_free!6909 () Bool)

(declare-fun b_next!6909 () Bool)

(assert (=> b!178933 (= b_free!6909 (not b_next!6909))))

(declare-fun tp!85902 () Bool)

(declare-fun b_and!12177 () Bool)

(assert (=> b!178933 (= tp!85902 b_and!12177)))

(declare-fun b_free!6911 () Bool)

(declare-fun b_next!6911 () Bool)

(assert (=> b!178933 (= b_free!6911 (not b_next!6911))))

(declare-fun tp!85910 () Bool)

(declare-fun b_and!12179 () Bool)

(assert (=> b!178933 (= tp!85910 b_and!12179)))

(declare-fun b!178925 () Bool)

(declare-fun b_free!6913 () Bool)

(declare-fun b_next!6913 () Bool)

(assert (=> b!178925 (= b_free!6913 (not b_next!6913))))

(declare-fun tp!85907 () Bool)

(declare-fun b_and!12181 () Bool)

(assert (=> b!178925 (= tp!85907 b_and!12181)))

(declare-fun b_free!6915 () Bool)

(declare-fun b_next!6915 () Bool)

(assert (=> b!178925 (= b_free!6915 (not b_next!6915))))

(declare-fun tp!85913 () Bool)

(declare-fun b_and!12183 () Bool)

(assert (=> b!178925 (= tp!85913 b_and!12183)))

(declare-fun bs!17836 () Bool)

(declare-fun b!178910 () Bool)

(declare-fun b!178926 () Bool)

(assert (= bs!17836 (and b!178910 b!178926)))

(declare-fun lambda!5248 () Int)

(declare-fun lambda!5247 () Int)

(assert (=> bs!17836 (not (= lambda!5248 lambda!5247))))

(declare-fun b!178952 () Bool)

(declare-fun e!108805 () Bool)

(assert (=> b!178952 (= e!108805 true)))

(declare-fun b!178951 () Bool)

(declare-fun e!108804 () Bool)

(assert (=> b!178951 (= e!108804 e!108805)))

(declare-fun b!178950 () Bool)

(declare-fun e!108803 () Bool)

(assert (=> b!178950 (= e!108803 e!108804)))

(assert (=> b!178910 e!108803))

(assert (= b!178951 b!178952))

(assert (= b!178950 b!178951))

(declare-datatypes ((List!3005 0))(
  ( (Nil!2995) (Cons!2995 (h!8392 (_ BitVec 16)) (t!28139 List!3005)) )
))
(declare-datatypes ((TokenValue!563 0))(
  ( (FloatLiteralValue!1126 (text!4386 List!3005)) (TokenValueExt!562 (__x!2613 Int)) (Broken!2815 (value!19708 List!3005)) (Object!572) (End!563) (Def!563) (Underscore!563) (Match!563) (Else!563) (Error!563) (Case!563) (If!563) (Extends!563) (Abstract!563) (Class!563) (Val!563) (DelimiterValue!1126 (del!623 List!3005)) (KeywordValue!569 (value!19709 List!3005)) (CommentValue!1126 (value!19710 List!3005)) (WhitespaceValue!1126 (value!19711 List!3005)) (IndentationValue!563 (value!19712 List!3005)) (String!3894) (Int32!563) (Broken!2816 (value!19713 List!3005)) (Boolean!564) (Unit!2729) (OperatorValue!566 (op!623 List!3005)) (IdentifierValue!1126 (value!19714 List!3005)) (IdentifierValue!1127 (value!19715 List!3005)) (WhitespaceValue!1127 (value!19716 List!3005)) (True!1126) (False!1126) (Broken!2817 (value!19717 List!3005)) (Broken!2818 (value!19718 List!3005)) (True!1127) (RightBrace!563) (RightBracket!563) (Colon!563) (Null!563) (Comma!563) (LeftBracket!563) (False!1127) (LeftBrace!563) (ImaginaryLiteralValue!563 (text!4387 List!3005)) (StringLiteralValue!1689 (value!19719 List!3005)) (EOFValue!563 (value!19720 List!3005)) (IdentValue!563 (value!19721 List!3005)) (DelimiterValue!1127 (value!19722 List!3005)) (DedentValue!563 (value!19723 List!3005)) (NewLineValue!563 (value!19724 List!3005)) (IntegerValue!1689 (value!19725 (_ BitVec 32)) (text!4388 List!3005)) (IntegerValue!1690 (value!19726 Int) (text!4389 List!3005)) (Times!563) (Or!563) (Equal!563) (Minus!563) (Broken!2819 (value!19727 List!3005)) (And!563) (Div!563) (LessEqual!563) (Mod!563) (Concat!1328) (Not!563) (Plus!563) (SpaceValue!563 (value!19728 List!3005)) (IntegerValue!1691 (value!19729 Int) (text!4390 List!3005)) (StringLiteralValue!1690 (text!4391 List!3005)) (FloatLiteralValue!1127 (text!4392 List!3005)) (BytesLiteralValue!563 (value!19730 List!3005)) (CommentValue!1127 (value!19731 List!3005)) (StringLiteralValue!1691 (value!19732 List!3005)) (ErrorTokenValue!563 (msg!624 List!3005)) )
))
(declare-datatypes ((C!2452 0))(
  ( (C!2453 (val!1112 Int)) )
))
(declare-datatypes ((List!3006 0))(
  ( (Nil!2996) (Cons!2996 (h!8393 C!2452) (t!28140 List!3006)) )
))
(declare-datatypes ((IArray!1809 0))(
  ( (IArray!1810 (innerList!962 List!3006)) )
))
(declare-datatypes ((Conc!904 0))(
  ( (Node!904 (left!2313 Conc!904) (right!2643 Conc!904) (csize!2038 Int) (cheight!1115 Int)) (Leaf!1514 (xs!3499 IArray!1809) (csize!2039 Int)) (Empty!904) )
))
(declare-datatypes ((BalanceConc!1816 0))(
  ( (BalanceConc!1817 (c!35141 Conc!904)) )
))
(declare-datatypes ((TokenValueInjection!898 0))(
  ( (TokenValueInjection!899 (toValue!1212 Int) (toChars!1071 Int)) )
))
(declare-datatypes ((String!3895 0))(
  ( (String!3896 (value!19733 String)) )
))
(declare-datatypes ((Regex!765 0))(
  ( (ElementMatch!765 (c!35142 C!2452)) (Concat!1329 (regOne!2042 Regex!765) (regTwo!2042 Regex!765)) (EmptyExpr!765) (Star!765 (reg!1094 Regex!765)) (EmptyLang!765) (Union!765 (regOne!2043 Regex!765) (regTwo!2043 Regex!765)) )
))
(declare-datatypes ((Rule!882 0))(
  ( (Rule!883 (regex!541 Regex!765) (tag!719 String!3895) (isSeparator!541 Bool) (transformation!541 TokenValueInjection!898)) )
))
(declare-datatypes ((List!3007 0))(
  ( (Nil!2997) (Cons!2997 (h!8394 Rule!882) (t!28141 List!3007)) )
))
(declare-fun rules!1920 () List!3007)

(get-info :version)

(assert (= (and b!178910 ((_ is Cons!2997) rules!1920)) b!178950))

(declare-fun order!1721 () Int)

(declare-fun order!1723 () Int)

(declare-fun dynLambda!1185 (Int Int) Int)

(declare-fun dynLambda!1186 (Int Int) Int)

(assert (=> b!178952 (< (dynLambda!1185 order!1721 (toValue!1212 (transformation!541 (h!8394 rules!1920)))) (dynLambda!1186 order!1723 lambda!5248))))

(declare-fun order!1725 () Int)

(declare-fun dynLambda!1187 (Int Int) Int)

(assert (=> b!178952 (< (dynLambda!1187 order!1725 (toChars!1071 (transformation!541 (h!8394 rules!1920)))) (dynLambda!1186 order!1723 lambda!5248))))

(assert (=> b!178910 true))

(declare-fun b!178909 () Bool)

(declare-fun res!80926 () Bool)

(declare-fun e!108776 () Bool)

(assert (=> b!178909 (=> (not res!80926) (not e!108776))))

(declare-fun lt!58478 () List!3006)

(declare-fun lt!58486 () List!3006)

(declare-fun list!1099 (BalanceConc!1816) List!3006)

(declare-fun seqFromList!459 (List!3006) BalanceConc!1816)

(assert (=> b!178909 (= res!80926 (= (list!1099 (seqFromList!459 lt!58478)) lt!58486))))

(declare-fun e!108781 () Bool)

(declare-fun e!108784 () Bool)

(assert (=> b!178910 (= e!108781 e!108784)))

(declare-fun res!80930 () Bool)

(assert (=> b!178910 (=> res!80930 e!108784)))

(declare-datatypes ((Token!826 0))(
  ( (Token!827 (value!19734 TokenValue!563) (rule!1056 Rule!882) (size!2459 Int) (originalCharacters!584 List!3006)) )
))
(declare-datatypes ((List!3008 0))(
  ( (Nil!2998) (Cons!2998 (h!8395 Token!826) (t!28142 List!3008)) )
))
(declare-fun tokens!465 () List!3008)

(declare-datatypes ((LexerInterface!427 0))(
  ( (LexerInterfaceExt!424 (__x!2614 Int)) (Lexer!425) )
))
(declare-fun thiss!17480 () LexerInterface!427)

(declare-datatypes ((tuple2!2962 0))(
  ( (tuple2!2963 (_1!1697 Token!826) (_2!1697 BalanceConc!1816)) )
))
(declare-datatypes ((Option!360 0))(
  ( (None!359) (Some!359 (v!13828 tuple2!2962)) )
))
(declare-fun isDefined!211 (Option!360) Bool)

(declare-fun maxPrefixZipperSequence!120 (LexerInterface!427 List!3007 BalanceConc!1816) Option!360)

(assert (=> b!178910 (= res!80930 (not (isDefined!211 (maxPrefixZipperSequence!120 thiss!17480 rules!1920 (seqFromList!459 (originalCharacters!584 (h!8395 tokens!465)))))))))

(declare-datatypes ((Unit!2730 0))(
  ( (Unit!2731) )
))
(declare-fun lt!58485 () Unit!2730)

(declare-fun forallContained!108 (List!3008 Int Token!826) Unit!2730)

(assert (=> b!178910 (= lt!58485 (forallContained!108 tokens!465 lambda!5248 (h!8395 tokens!465)))))

(declare-fun lt!58494 () List!3006)

(assert (=> b!178910 (= lt!58494 (originalCharacters!584 (h!8395 tokens!465)))))

(declare-fun b!178911 () Bool)

(declare-fun e!108791 () Bool)

(declare-fun e!108789 () Bool)

(declare-fun tp!85905 () Bool)

(assert (=> b!178911 (= e!108791 (and e!108789 tp!85905))))

(declare-fun b!178912 () Bool)

(declare-fun e!108775 () Bool)

(assert (=> b!178912 (= e!108784 e!108775)))

(declare-fun res!80935 () Bool)

(assert (=> b!178912 (=> res!80935 e!108775)))

(declare-fun lt!58481 () Bool)

(assert (=> b!178912 (= res!80935 (not lt!58481))))

(declare-fun e!108787 () Bool)

(assert (=> b!178912 e!108787))

(declare-fun res!80934 () Bool)

(assert (=> b!178912 (=> (not res!80934) (not e!108787))))

(declare-datatypes ((tuple2!2964 0))(
  ( (tuple2!2965 (_1!1698 Token!826) (_2!1698 List!3006)) )
))
(declare-fun lt!58484 () tuple2!2964)

(assert (=> b!178912 (= res!80934 (= (_1!1698 lt!58484) (h!8395 tokens!465)))))

(declare-datatypes ((Option!361 0))(
  ( (None!360) (Some!360 (v!13829 tuple2!2964)) )
))
(declare-fun lt!58477 () Option!361)

(declare-fun get!838 (Option!361) tuple2!2964)

(assert (=> b!178912 (= lt!58484 (get!838 lt!58477))))

(declare-fun isDefined!212 (Option!361) Bool)

(assert (=> b!178912 (isDefined!212 lt!58477)))

(declare-fun maxPrefix!157 (LexerInterface!427 List!3007 List!3006) Option!361)

(assert (=> b!178912 (= lt!58477 (maxPrefix!157 thiss!17480 rules!1920 lt!58494))))

(declare-fun b!178913 () Bool)

(declare-fun e!108795 () Bool)

(declare-fun e!108779 () Bool)

(assert (=> b!178913 (= e!108795 e!108779)))

(declare-fun res!80939 () Bool)

(assert (=> b!178913 (=> (not res!80939) (not e!108779))))

(declare-datatypes ((IArray!1811 0))(
  ( (IArray!1812 (innerList!963 List!3008)) )
))
(declare-datatypes ((Conc!905 0))(
  ( (Node!905 (left!2314 Conc!905) (right!2644 Conc!905) (csize!2040 Int) (cheight!1116 Int)) (Leaf!1515 (xs!3500 IArray!1811) (csize!2041 Int)) (Empty!905) )
))
(declare-datatypes ((BalanceConc!1818 0))(
  ( (BalanceConc!1819 (c!35143 Conc!905)) )
))
(declare-fun lt!58496 () BalanceConc!1818)

(declare-fun rulesProduceEachTokenIndividually!219 (LexerInterface!427 List!3007 BalanceConc!1818) Bool)

(assert (=> b!178913 (= res!80939 (rulesProduceEachTokenIndividually!219 thiss!17480 rules!1920 lt!58496))))

(declare-fun seqFromList!460 (List!3008) BalanceConc!1818)

(assert (=> b!178913 (= lt!58496 (seqFromList!460 tokens!465))))

(declare-fun b!178914 () Bool)

(declare-fun matchR!103 (Regex!765 List!3006) Bool)

(assert (=> b!178914 (= e!108787 (matchR!103 (regex!541 (rule!1056 (h!8395 tokens!465))) lt!58494))))

(declare-fun b!178915 () Bool)

(declare-fun res!80942 () Bool)

(assert (=> b!178915 (=> (not res!80942) (not e!108779))))

(assert (=> b!178915 (= res!80942 ((_ is Cons!2998) tokens!465))))

(declare-fun e!108774 () Bool)

(assert (=> b!178916 (= e!108774 (and tp!85912 tp!85904))))

(declare-fun e!108790 () Bool)

(declare-fun separatorToken!170 () Token!826)

(declare-fun tp!85909 () Bool)

(declare-fun b!178917 () Bool)

(declare-fun e!108785 () Bool)

(declare-fun inv!21 (TokenValue!563) Bool)

(assert (=> b!178917 (= e!108785 (and (inv!21 (value!19734 separatorToken!170)) e!108790 tp!85909))))

(declare-fun tp!85903 () Bool)

(declare-fun b!178918 () Bool)

(declare-fun e!108793 () Bool)

(declare-fun inv!3827 (String!3895) Bool)

(declare-fun inv!3830 (TokenValueInjection!898) Bool)

(assert (=> b!178918 (= e!108790 (and tp!85903 (inv!3827 (tag!719 (rule!1056 separatorToken!170))) (inv!3830 (transformation!541 (rule!1056 separatorToken!170))) e!108793))))

(declare-fun b!178919 () Bool)

(declare-fun e!108777 () Bool)

(declare-fun lt!58482 () Option!361)

(declare-fun head!616 (List!3008) Token!826)

(assert (=> b!178919 (= e!108777 (= (_1!1698 (get!838 lt!58482)) (head!616 tokens!465)))))

(declare-fun b!178920 () Bool)

(declare-fun res!80945 () Bool)

(assert (=> b!178920 (=> (not res!80945) (not e!108795))))

(declare-fun rulesInvariant!393 (LexerInterface!427 List!3007) Bool)

(assert (=> b!178920 (= res!80945 (rulesInvariant!393 thiss!17480 rules!1920))))

(declare-fun b!178921 () Bool)

(declare-fun res!80943 () Bool)

(assert (=> b!178921 (=> (not res!80943) (not e!108779))))

(declare-fun rulesProduceIndividualToken!176 (LexerInterface!427 List!3007 Token!826) Bool)

(assert (=> b!178921 (= res!80943 (rulesProduceIndividualToken!176 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!178922 () Bool)

(declare-fun e!108773 () Bool)

(assert (=> b!178922 (= e!108773 e!108777)))

(declare-fun res!80929 () Bool)

(assert (=> b!178922 (=> (not res!80929) (not e!108777))))

(assert (=> b!178922 (= res!80929 (isDefined!212 lt!58482))))

(assert (=> b!178922 (= lt!58482 (maxPrefix!157 thiss!17480 rules!1920 lt!58478))))

(declare-fun b!178923 () Bool)

(declare-fun e!108792 () Bool)

(assert (=> b!178923 (= e!108792 e!108781)))

(declare-fun res!80927 () Bool)

(assert (=> b!178923 (=> res!80927 e!108781)))

(declare-fun lt!58488 () List!3006)

(declare-fun lt!58495 () List!3006)

(assert (=> b!178923 (= res!80927 (or (not (= lt!58488 lt!58495)) (not (= lt!58495 lt!58494)) (not (= lt!58488 lt!58494))))))

(declare-fun printList!111 (LexerInterface!427 List!3008) List!3006)

(assert (=> b!178923 (= lt!58495 (printList!111 thiss!17480 (Cons!2998 (h!8395 tokens!465) Nil!2998)))))

(declare-fun lt!58493 () BalanceConc!1816)

(assert (=> b!178923 (= lt!58488 (list!1099 lt!58493))))

(declare-fun lt!58490 () BalanceConc!1818)

(declare-fun printTailRec!121 (LexerInterface!427 BalanceConc!1818 Int BalanceConc!1816) BalanceConc!1816)

(assert (=> b!178923 (= lt!58493 (printTailRec!121 thiss!17480 lt!58490 0 (BalanceConc!1817 Empty!904)))))

(declare-fun print!158 (LexerInterface!427 BalanceConc!1818) BalanceConc!1816)

(assert (=> b!178923 (= lt!58493 (print!158 thiss!17480 lt!58490))))

(declare-fun singletonSeq!93 (Token!826) BalanceConc!1818)

(assert (=> b!178923 (= lt!58490 (singletonSeq!93 (h!8395 tokens!465)))))

(declare-fun e!108794 () Bool)

(declare-fun e!108778 () Bool)

(declare-fun b!178924 () Bool)

(declare-fun tp!85908 () Bool)

(assert (=> b!178924 (= e!108778 (and (inv!21 (value!19734 (h!8395 tokens!465))) e!108794 tp!85908))))

(assert (=> b!178925 (= e!108793 (and tp!85907 tp!85913))))

(declare-fun res!80941 () Bool)

(assert (=> b!178926 (=> (not res!80941) (not e!108779))))

(declare-fun forall!605 (List!3008 Int) Bool)

(assert (=> b!178926 (= res!80941 (forall!605 tokens!465 lambda!5247))))

(declare-fun e!108783 () Bool)

(declare-fun tp!85901 () Bool)

(declare-fun b!178927 () Bool)

(declare-fun inv!3831 (Token!826) Bool)

(assert (=> b!178927 (= e!108783 (and (inv!3831 (h!8395 tokens!465)) e!108778 tp!85901))))

(declare-fun b!178928 () Bool)

(declare-fun e!108796 () Bool)

(assert (=> b!178928 (= e!108776 (not e!108796))))

(declare-fun res!80944 () Bool)

(assert (=> b!178928 (=> res!80944 e!108796)))

(declare-fun lt!58487 () List!3006)

(declare-fun printWithSeparatorTokenWhenNeededRec!110 (LexerInterface!427 List!3007 BalanceConc!1818 Token!826 Int) BalanceConc!1816)

(assert (=> b!178928 (= res!80944 (not (= lt!58487 (list!1099 (printWithSeparatorTokenWhenNeededRec!110 thiss!17480 rules!1920 (seqFromList!460 (t!28142 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58492 () List!3006)

(declare-fun lt!58480 () List!3006)

(assert (=> b!178928 (= lt!58492 lt!58480)))

(declare-fun lt!58491 () List!3006)

(declare-fun ++!702 (List!3006 List!3006) List!3006)

(assert (=> b!178928 (= lt!58480 (++!702 lt!58494 lt!58491))))

(declare-fun lt!58476 () List!3006)

(assert (=> b!178928 (= lt!58492 (++!702 (++!702 lt!58494 lt!58476) lt!58487))))

(declare-fun lt!58479 () Unit!2730)

(declare-fun lemmaConcatAssociativity!230 (List!3006 List!3006 List!3006) Unit!2730)

(assert (=> b!178928 (= lt!58479 (lemmaConcatAssociativity!230 lt!58494 lt!58476 lt!58487))))

(declare-fun charsOf!196 (Token!826) BalanceConc!1816)

(assert (=> b!178928 (= lt!58494 (list!1099 (charsOf!196 (h!8395 tokens!465))))))

(assert (=> b!178928 (= lt!58491 (++!702 lt!58476 lt!58487))))

(declare-fun printWithSeparatorTokenWhenNeededList!120 (LexerInterface!427 List!3007 List!3008 Token!826) List!3006)

(assert (=> b!178928 (= lt!58487 (printWithSeparatorTokenWhenNeededList!120 thiss!17480 rules!1920 (t!28142 tokens!465) separatorToken!170))))

(assert (=> b!178928 (= lt!58476 (list!1099 (charsOf!196 separatorToken!170)))))

(declare-fun b!178929 () Bool)

(assert (=> b!178929 (= e!108779 e!108776)))

(declare-fun res!80940 () Bool)

(assert (=> b!178929 (=> (not res!80940) (not e!108776))))

(assert (=> b!178929 (= res!80940 (= lt!58478 lt!58486))))

(assert (=> b!178929 (= lt!58486 (list!1099 (printWithSeparatorTokenWhenNeededRec!110 thiss!17480 rules!1920 lt!58496 separatorToken!170 0)))))

(assert (=> b!178929 (= lt!58478 (printWithSeparatorTokenWhenNeededList!120 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!178930 () Bool)

(declare-fun tp!85911 () Bool)

(declare-fun e!108786 () Bool)

(assert (=> b!178930 (= e!108789 (and tp!85911 (inv!3827 (tag!719 (h!8394 rules!1920))) (inv!3830 (transformation!541 (h!8394 rules!1920))) e!108786))))

(declare-fun b!178931 () Bool)

(declare-fun res!80933 () Bool)

(assert (=> b!178931 (=> (not res!80933) (not e!108779))))

(declare-fun sepAndNonSepRulesDisjointChars!130 (List!3007 List!3007) Bool)

(assert (=> b!178931 (= res!80933 (sepAndNonSepRulesDisjointChars!130 rules!1920 rules!1920))))

(declare-fun b!178932 () Bool)

(declare-fun res!80937 () Bool)

(assert (=> b!178932 (=> (not res!80937) (not e!108795))))

(declare-fun isEmpty!1335 (List!3007) Bool)

(assert (=> b!178932 (= res!80937 (not (isEmpty!1335 rules!1920)))))

(assert (=> b!178933 (= e!108786 (and tp!85902 tp!85910))))

(declare-fun b!178934 () Bool)

(assert (=> b!178934 (= e!108775 true)))

(declare-fun isPrefix!237 (List!3006 List!3006) Bool)

(assert (=> b!178934 (isPrefix!237 lt!58494 lt!58480)))

(declare-fun lt!58483 () Unit!2730)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!132 (List!3006 List!3006) Unit!2730)

(assert (=> b!178934 (= lt!58483 (lemmaConcatTwoListThenFirstIsPrefix!132 lt!58494 lt!58491))))

(assert (=> b!178934 e!108773))

(declare-fun res!80946 () Bool)

(assert (=> b!178934 (=> res!80946 e!108773)))

(declare-fun isEmpty!1336 (List!3008) Bool)

(assert (=> b!178934 (= res!80946 (isEmpty!1336 tokens!465))))

(declare-fun lt!58489 () Unit!2730)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!2 (LexerInterface!427 List!3007 List!3008 Token!826) Unit!2730)

(assert (=> b!178934 (= lt!58489 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!2 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!178935 () Bool)

(declare-fun tp!85906 () Bool)

(assert (=> b!178935 (= e!108794 (and tp!85906 (inv!3827 (tag!719 (rule!1056 (h!8395 tokens!465)))) (inv!3830 (transformation!541 (rule!1056 (h!8395 tokens!465)))) e!108774))))

(declare-fun res!80947 () Bool)

(assert (=> start!19342 (=> (not res!80947) (not e!108795))))

(assert (=> start!19342 (= res!80947 ((_ is Lexer!425) thiss!17480))))

(assert (=> start!19342 e!108795))

(assert (=> start!19342 true))

(assert (=> start!19342 e!108791))

(assert (=> start!19342 (and (inv!3831 separatorToken!170) e!108785)))

(assert (=> start!19342 e!108783))

(declare-fun b!178936 () Bool)

(declare-fun res!80931 () Bool)

(assert (=> b!178936 (=> (not res!80931) (not e!108787))))

(declare-fun isEmpty!1337 (List!3006) Bool)

(assert (=> b!178936 (= res!80931 (isEmpty!1337 (_2!1698 lt!58484)))))

(declare-fun b!178937 () Bool)

(declare-fun res!80932 () Bool)

(assert (=> b!178937 (=> res!80932 e!108781)))

(declare-fun isEmpty!1338 (BalanceConc!1818) Bool)

(declare-datatypes ((tuple2!2966 0))(
  ( (tuple2!2967 (_1!1699 BalanceConc!1818) (_2!1699 BalanceConc!1816)) )
))
(declare-fun lex!227 (LexerInterface!427 List!3007 BalanceConc!1816) tuple2!2966)

(assert (=> b!178937 (= res!80932 (isEmpty!1338 (_1!1699 (lex!227 thiss!17480 rules!1920 (seqFromList!459 lt!58494)))))))

(declare-fun b!178938 () Bool)

(assert (=> b!178938 (= e!108796 e!108792)))

(declare-fun res!80936 () Bool)

(assert (=> b!178938 (=> res!80936 e!108792)))

(declare-fun e!108770 () Bool)

(assert (=> b!178938 (= res!80936 e!108770)))

(declare-fun res!80948 () Bool)

(assert (=> b!178938 (=> (not res!80948) (not e!108770))))

(assert (=> b!178938 (= res!80948 (not lt!58481))))

(assert (=> b!178938 (= lt!58481 (= lt!58478 lt!58480))))

(declare-fun b!178939 () Bool)

(declare-fun res!80938 () Bool)

(assert (=> b!178939 (=> (not res!80938) (not e!108779))))

(assert (=> b!178939 (= res!80938 (isSeparator!541 (rule!1056 separatorToken!170)))))

(declare-fun b!178940 () Bool)

(declare-fun res!80928 () Bool)

(assert (=> b!178940 (=> res!80928 e!108781)))

(assert (=> b!178940 (= res!80928 (not (rulesProduceIndividualToken!176 thiss!17480 rules!1920 (h!8395 tokens!465))))))

(declare-fun b!178941 () Bool)

(assert (=> b!178941 (= e!108770 (not (= lt!58478 (++!702 lt!58494 lt!58487))))))

(assert (= (and start!19342 res!80947) b!178932))

(assert (= (and b!178932 res!80937) b!178920))

(assert (= (and b!178920 res!80945) b!178913))

(assert (= (and b!178913 res!80939) b!178921))

(assert (= (and b!178921 res!80943) b!178939))

(assert (= (and b!178939 res!80938) b!178926))

(assert (= (and b!178926 res!80941) b!178931))

(assert (= (and b!178931 res!80933) b!178915))

(assert (= (and b!178915 res!80942) b!178929))

(assert (= (and b!178929 res!80940) b!178909))

(assert (= (and b!178909 res!80926) b!178928))

(assert (= (and b!178928 (not res!80944)) b!178938))

(assert (= (and b!178938 res!80948) b!178941))

(assert (= (and b!178938 (not res!80936)) b!178923))

(assert (= (and b!178923 (not res!80927)) b!178940))

(assert (= (and b!178940 (not res!80928)) b!178937))

(assert (= (and b!178937 (not res!80932)) b!178910))

(assert (= (and b!178910 (not res!80930)) b!178912))

(assert (= (and b!178912 res!80934) b!178936))

(assert (= (and b!178936 res!80931) b!178914))

(assert (= (and b!178912 (not res!80935)) b!178934))

(assert (= (and b!178934 (not res!80946)) b!178922))

(assert (= (and b!178922 res!80929) b!178919))

(assert (= b!178930 b!178933))

(assert (= b!178911 b!178930))

(assert (= (and start!19342 ((_ is Cons!2997) rules!1920)) b!178911))

(assert (= b!178918 b!178925))

(assert (= b!178917 b!178918))

(assert (= start!19342 b!178917))

(assert (= b!178935 b!178916))

(assert (= b!178924 b!178935))

(assert (= b!178927 b!178924))

(assert (= (and start!19342 ((_ is Cons!2998) tokens!465)) b!178927))

(declare-fun m!180775 () Bool)

(assert (=> b!178920 m!180775))

(declare-fun m!180777 () Bool)

(assert (=> b!178931 m!180777))

(declare-fun m!180779 () Bool)

(assert (=> b!178934 m!180779))

(declare-fun m!180781 () Bool)

(assert (=> b!178934 m!180781))

(declare-fun m!180783 () Bool)

(assert (=> b!178934 m!180783))

(declare-fun m!180785 () Bool)

(assert (=> b!178934 m!180785))

(declare-fun m!180787 () Bool)

(assert (=> b!178918 m!180787))

(declare-fun m!180789 () Bool)

(assert (=> b!178918 m!180789))

(declare-fun m!180791 () Bool)

(assert (=> b!178912 m!180791))

(declare-fun m!180793 () Bool)

(assert (=> b!178912 m!180793))

(declare-fun m!180795 () Bool)

(assert (=> b!178912 m!180795))

(declare-fun m!180797 () Bool)

(assert (=> b!178930 m!180797))

(declare-fun m!180799 () Bool)

(assert (=> b!178930 m!180799))

(declare-fun m!180801 () Bool)

(assert (=> b!178929 m!180801))

(assert (=> b!178929 m!180801))

(declare-fun m!180803 () Bool)

(assert (=> b!178929 m!180803))

(declare-fun m!180805 () Bool)

(assert (=> b!178929 m!180805))

(declare-fun m!180807 () Bool)

(assert (=> start!19342 m!180807))

(declare-fun m!180809 () Bool)

(assert (=> b!178913 m!180809))

(declare-fun m!180811 () Bool)

(assert (=> b!178913 m!180811))

(declare-fun m!180813 () Bool)

(assert (=> b!178935 m!180813))

(declare-fun m!180815 () Bool)

(assert (=> b!178935 m!180815))

(declare-fun m!180817 () Bool)

(assert (=> b!178917 m!180817))

(declare-fun m!180819 () Bool)

(assert (=> b!178926 m!180819))

(declare-fun m!180821 () Bool)

(assert (=> b!178941 m!180821))

(declare-fun m!180823 () Bool)

(assert (=> b!178936 m!180823))

(declare-fun m!180825 () Bool)

(assert (=> b!178910 m!180825))

(assert (=> b!178910 m!180825))

(declare-fun m!180827 () Bool)

(assert (=> b!178910 m!180827))

(assert (=> b!178910 m!180827))

(declare-fun m!180829 () Bool)

(assert (=> b!178910 m!180829))

(declare-fun m!180831 () Bool)

(assert (=> b!178910 m!180831))

(declare-fun m!180833 () Bool)

(assert (=> b!178921 m!180833))

(declare-fun m!180835 () Bool)

(assert (=> b!178919 m!180835))

(declare-fun m!180837 () Bool)

(assert (=> b!178919 m!180837))

(declare-fun m!180839 () Bool)

(assert (=> b!178928 m!180839))

(declare-fun m!180841 () Bool)

(assert (=> b!178928 m!180841))

(declare-fun m!180843 () Bool)

(assert (=> b!178928 m!180843))

(declare-fun m!180845 () Bool)

(assert (=> b!178928 m!180845))

(declare-fun m!180847 () Bool)

(assert (=> b!178928 m!180847))

(declare-fun m!180849 () Bool)

(assert (=> b!178928 m!180849))

(declare-fun m!180851 () Bool)

(assert (=> b!178928 m!180851))

(declare-fun m!180853 () Bool)

(assert (=> b!178928 m!180853))

(declare-fun m!180855 () Bool)

(assert (=> b!178928 m!180855))

(declare-fun m!180857 () Bool)

(assert (=> b!178928 m!180857))

(assert (=> b!178928 m!180849))

(assert (=> b!178928 m!180853))

(declare-fun m!180859 () Bool)

(assert (=> b!178928 m!180859))

(assert (=> b!178928 m!180843))

(assert (=> b!178928 m!180857))

(declare-fun m!180861 () Bool)

(assert (=> b!178928 m!180861))

(assert (=> b!178928 m!180855))

(declare-fun m!180863 () Bool)

(assert (=> b!178928 m!180863))

(declare-fun m!180865 () Bool)

(assert (=> b!178932 m!180865))

(declare-fun m!180867 () Bool)

(assert (=> b!178909 m!180867))

(assert (=> b!178909 m!180867))

(declare-fun m!180869 () Bool)

(assert (=> b!178909 m!180869))

(declare-fun m!180871 () Bool)

(assert (=> b!178937 m!180871))

(assert (=> b!178937 m!180871))

(declare-fun m!180873 () Bool)

(assert (=> b!178937 m!180873))

(declare-fun m!180875 () Bool)

(assert (=> b!178937 m!180875))

(declare-fun m!180877 () Bool)

(assert (=> b!178927 m!180877))

(declare-fun m!180879 () Bool)

(assert (=> b!178922 m!180879))

(declare-fun m!180881 () Bool)

(assert (=> b!178922 m!180881))

(declare-fun m!180883 () Bool)

(assert (=> b!178924 m!180883))

(declare-fun m!180885 () Bool)

(assert (=> b!178914 m!180885))

(declare-fun m!180887 () Bool)

(assert (=> b!178923 m!180887))

(declare-fun m!180889 () Bool)

(assert (=> b!178923 m!180889))

(declare-fun m!180891 () Bool)

(assert (=> b!178923 m!180891))

(declare-fun m!180893 () Bool)

(assert (=> b!178923 m!180893))

(declare-fun m!180895 () Bool)

(assert (=> b!178923 m!180895))

(declare-fun m!180897 () Bool)

(assert (=> b!178940 m!180897))

(check-sat (not b!178931) (not b!178936) (not b!178910) (not b_next!6915) (not b!178920) (not b!178950) (not b!178911) (not b!178924) (not b!178913) (not b_next!6911) (not b!178937) (not b!178941) (not b!178922) b_and!12175 (not b!178927) (not b!178909) (not b!178918) (not b!178932) (not b_next!6907) b_and!12177 (not b!178917) b_and!12183 (not b!178912) (not b!178930) b_and!12173 (not b!178934) (not b!178928) (not b!178919) b_and!12179 (not b!178926) (not b!178935) (not b!178923) (not b!178929) (not b!178940) (not b!178914) (not b_next!6913) (not b_next!6909) (not start!19342) (not b_next!6905) b_and!12181 (not b!178921))
(check-sat b_and!12175 b_and!12173 b_and!12179 (not b_next!6915) (not b_next!6911) b_and!12181 (not b_next!6907) b_and!12177 b_and!12183 (not b_next!6913) (not b_next!6909) (not b_next!6905))
