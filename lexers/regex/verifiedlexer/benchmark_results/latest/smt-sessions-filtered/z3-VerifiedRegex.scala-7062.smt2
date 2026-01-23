; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374484 () Bool)

(assert start!374484)

(declare-fun b!3979023 () Bool)

(declare-fun b_free!110425 () Bool)

(declare-fun b_next!111129 () Bool)

(assert (=> b!3979023 (= b_free!110425 (not b_next!111129))))

(declare-fun tp!1213126 () Bool)

(declare-fun b_and!305855 () Bool)

(assert (=> b!3979023 (= tp!1213126 b_and!305855)))

(declare-fun b_free!110427 () Bool)

(declare-fun b_next!111131 () Bool)

(assert (=> b!3979023 (= b_free!110427 (not b_next!111131))))

(declare-fun tp!1213136 () Bool)

(declare-fun b_and!305857 () Bool)

(assert (=> b!3979023 (= tp!1213136 b_and!305857)))

(declare-fun b!3979005 () Bool)

(declare-fun b_free!110429 () Bool)

(declare-fun b_next!111133 () Bool)

(assert (=> b!3979005 (= b_free!110429 (not b_next!111133))))

(declare-fun tp!1213131 () Bool)

(declare-fun b_and!305859 () Bool)

(assert (=> b!3979005 (= tp!1213131 b_and!305859)))

(declare-fun b_free!110431 () Bool)

(declare-fun b_next!111135 () Bool)

(assert (=> b!3979005 (= b_free!110431 (not b_next!111135))))

(declare-fun tp!1213135 () Bool)

(declare-fun b_and!305861 () Bool)

(assert (=> b!3979005 (= tp!1213135 b_and!305861)))

(declare-fun b!3978989 () Bool)

(declare-fun e!2465710 () Bool)

(declare-fun e!2465713 () Bool)

(assert (=> b!3978989 (= e!2465710 (not e!2465713))))

(declare-fun res!1612148 () Bool)

(assert (=> b!3978989 (=> res!1612148 e!2465713)))

(declare-datatypes ((C!23420 0))(
  ( (C!23421 (val!13804 Int)) )
))
(declare-datatypes ((List!42658 0))(
  ( (Nil!42534) (Cons!42534 (h!47954 C!23420) (t!331217 List!42658)) )
))
(declare-fun lt!1396839 () List!42658)

(declare-fun lt!1396801 () List!42658)

(assert (=> b!3978989 (= res!1612148 (not (= lt!1396839 lt!1396801)))))

(declare-fun lt!1396803 () List!42658)

(declare-fun suffixResult!105 () List!42658)

(declare-fun ++!11114 (List!42658 List!42658) List!42658)

(assert (=> b!3978989 (= lt!1396839 (++!11114 lt!1396803 suffixResult!105))))

(declare-datatypes ((Unit!61189 0))(
  ( (Unit!61190) )
))
(declare-fun lt!1396822 () Unit!61189)

(declare-datatypes ((IArray!25851 0))(
  ( (IArray!25852 (innerList!12983 List!42658)) )
))
(declare-datatypes ((Conc!12923 0))(
  ( (Node!12923 (left!32177 Conc!12923) (right!32507 Conc!12923) (csize!26076 Int) (cheight!13134 Int)) (Leaf!19986 (xs!16229 IArray!25851) (csize!26077 Int)) (Empty!12923) )
))
(declare-datatypes ((BalanceConc!25440 0))(
  ( (BalanceConc!25441 (c!689484 Conc!12923)) )
))
(declare-datatypes ((List!42659 0))(
  ( (Nil!42535) (Cons!42535 (h!47955 (_ BitVec 16)) (t!331218 List!42659)) )
))
(declare-datatypes ((TokenValue!6942 0))(
  ( (FloatLiteralValue!13884 (text!49039 List!42659)) (TokenValueExt!6941 (__x!26101 Int)) (Broken!34710 (value!211900 List!42659)) (Object!7065) (End!6942) (Def!6942) (Underscore!6942) (Match!6942) (Else!6942) (Error!6942) (Case!6942) (If!6942) (Extends!6942) (Abstract!6942) (Class!6942) (Val!6942) (DelimiterValue!13884 (del!7002 List!42659)) (KeywordValue!6948 (value!211901 List!42659)) (CommentValue!13884 (value!211902 List!42659)) (WhitespaceValue!13884 (value!211903 List!42659)) (IndentationValue!6942 (value!211904 List!42659)) (String!48427) (Int32!6942) (Broken!34711 (value!211905 List!42659)) (Boolean!6943) (Unit!61191) (OperatorValue!6945 (op!7002 List!42659)) (IdentifierValue!13884 (value!211906 List!42659)) (IdentifierValue!13885 (value!211907 List!42659)) (WhitespaceValue!13885 (value!211908 List!42659)) (True!13884) (False!13884) (Broken!34712 (value!211909 List!42659)) (Broken!34713 (value!211910 List!42659)) (True!13885) (RightBrace!6942) (RightBracket!6942) (Colon!6942) (Null!6942) (Comma!6942) (LeftBracket!6942) (False!13885) (LeftBrace!6942) (ImaginaryLiteralValue!6942 (text!49040 List!42659)) (StringLiteralValue!20826 (value!211911 List!42659)) (EOFValue!6942 (value!211912 List!42659)) (IdentValue!6942 (value!211913 List!42659)) (DelimiterValue!13885 (value!211914 List!42659)) (DedentValue!6942 (value!211915 List!42659)) (NewLineValue!6942 (value!211916 List!42659)) (IntegerValue!20826 (value!211917 (_ BitVec 32)) (text!49041 List!42659)) (IntegerValue!20827 (value!211918 Int) (text!49042 List!42659)) (Times!6942) (Or!6942) (Equal!6942) (Minus!6942) (Broken!34714 (value!211919 List!42659)) (And!6942) (Div!6942) (LessEqual!6942) (Mod!6942) (Concat!18559) (Not!6942) (Plus!6942) (SpaceValue!6942 (value!211920 List!42659)) (IntegerValue!20828 (value!211921 Int) (text!49043 List!42659)) (StringLiteralValue!20827 (text!49044 List!42659)) (FloatLiteralValue!13885 (text!49045 List!42659)) (BytesLiteralValue!6942 (value!211922 List!42659)) (CommentValue!13885 (value!211923 List!42659)) (StringLiteralValue!20828 (value!211924 List!42659)) (ErrorTokenValue!6942 (msg!7003 List!42659)) )
))
(declare-datatypes ((Regex!11617 0))(
  ( (ElementMatch!11617 (c!689485 C!23420)) (Concat!18560 (regOne!23746 Regex!11617) (regTwo!23746 Regex!11617)) (EmptyExpr!11617) (Star!11617 (reg!11946 Regex!11617)) (EmptyLang!11617) (Union!11617 (regOne!23747 Regex!11617) (regTwo!23747 Regex!11617)) )
))
(declare-datatypes ((String!48428 0))(
  ( (String!48429 (value!211925 String)) )
))
(declare-datatypes ((TokenValueInjection!13312 0))(
  ( (TokenValueInjection!13313 (toValue!9200 Int) (toChars!9059 Int)) )
))
(declare-datatypes ((Rule!13224 0))(
  ( (Rule!13225 (regex!6712 Regex!11617) (tag!7572 String!48428) (isSeparator!6712 Bool) (transformation!6712 TokenValueInjection!13312)) )
))
(declare-datatypes ((Token!12562 0))(
  ( (Token!12563 (value!211926 TokenValue!6942) (rule!9714 Rule!13224) (size!31818 Int) (originalCharacters!7312 List!42658)) )
))
(declare-fun token!484 () Token!12562)

(declare-fun lemmaInv!927 (TokenValueInjection!13312) Unit!61189)

(assert (=> b!3978989 (= lt!1396822 (lemmaInv!927 (transformation!6712 (rule!9714 token!484))))))

(declare-datatypes ((LexerInterface!6301 0))(
  ( (LexerInterfaceExt!6298 (__x!26102 Int)) (Lexer!6299) )
))
(declare-fun thiss!21717 () LexerInterface!6301)

(declare-fun ruleValid!2644 (LexerInterface!6301 Rule!13224) Bool)

(assert (=> b!3978989 (ruleValid!2644 thiss!21717 (rule!9714 token!484))))

(declare-datatypes ((List!42660 0))(
  ( (Nil!42536) (Cons!42536 (h!47956 Rule!13224) (t!331219 List!42660)) )
))
(declare-fun rules!2999 () List!42660)

(declare-fun lt!1396825 () Unit!61189)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1718 (LexerInterface!6301 Rule!13224 List!42660) Unit!61189)

(assert (=> b!3978989 (= lt!1396825 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1718 thiss!21717 (rule!9714 token!484) rules!2999))))

(declare-fun b!3978990 () Bool)

(declare-fun e!2465701 () Bool)

(declare-fun e!2465686 () Bool)

(assert (=> b!3978990 (= e!2465701 e!2465686)))

(declare-fun res!1612145 () Bool)

(assert (=> b!3978990 (=> res!1612145 e!2465686)))

(declare-fun lt!1396792 () List!42658)

(declare-fun prefix!494 () List!42658)

(assert (=> b!3978990 (= res!1612145 (not (= lt!1396792 prefix!494)))))

(declare-fun lt!1396831 () List!42658)

(assert (=> b!3978990 (= lt!1396792 (++!11114 lt!1396803 lt!1396831))))

(declare-fun getSuffix!2230 (List!42658 List!42658) List!42658)

(assert (=> b!3978990 (= lt!1396831 (getSuffix!2230 prefix!494 lt!1396803))))

(declare-fun isPrefix!3799 (List!42658 List!42658) Bool)

(assert (=> b!3978990 (isPrefix!3799 lt!1396803 prefix!494)))

(declare-fun lt!1396794 () Unit!61189)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!377 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> b!3978990 (= lt!1396794 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!377 prefix!494 lt!1396803 lt!1396801))))

(declare-fun b!3978991 () Bool)

(declare-fun e!2465688 () Bool)

(declare-fun tp!1213132 () Bool)

(declare-fun e!2465684 () Bool)

(declare-fun inv!56820 (String!48428) Bool)

(declare-fun inv!56823 (TokenValueInjection!13312) Bool)

(assert (=> b!3978991 (= e!2465688 (and tp!1213132 (inv!56820 (tag!7572 (h!47956 rules!2999))) (inv!56823 (transformation!6712 (h!47956 rules!2999))) e!2465684))))

(declare-fun b!3978992 () Bool)

(declare-fun res!1612158 () Bool)

(declare-fun e!2465709 () Bool)

(assert (=> b!3978992 (=> (not res!1612158) (not e!2465709))))

(declare-fun rulesInvariant!5644 (LexerInterface!6301 List!42660) Bool)

(assert (=> b!3978992 (= res!1612158 (rulesInvariant!5644 thiss!21717 rules!2999))))

(declare-fun res!1612146 () Bool)

(assert (=> start!374484 (=> (not res!1612146) (not e!2465709))))

(get-info :version)

(assert (=> start!374484 (= res!1612146 ((_ is Lexer!6299) thiss!21717))))

(assert (=> start!374484 e!2465709))

(declare-fun e!2465698 () Bool)

(assert (=> start!374484 e!2465698))

(declare-fun e!2465699 () Bool)

(declare-fun inv!56824 (Token!12562) Bool)

(assert (=> start!374484 (and (inv!56824 token!484) e!2465699)))

(declare-fun e!2465693 () Bool)

(assert (=> start!374484 e!2465693))

(declare-fun e!2465697 () Bool)

(assert (=> start!374484 e!2465697))

(declare-fun e!2465712 () Bool)

(assert (=> start!374484 e!2465712))

(assert (=> start!374484 true))

(declare-fun e!2465692 () Bool)

(assert (=> start!374484 e!2465692))

(declare-fun e!2465700 () Bool)

(assert (=> start!374484 e!2465700))

(declare-fun b!3978993 () Bool)

(declare-fun e!2465695 () Bool)

(assert (=> b!3978993 (= e!2465695 e!2465710)))

(declare-fun res!1612149 () Bool)

(assert (=> b!3978993 (=> (not res!1612149) (not e!2465710))))

(declare-datatypes ((tuple2!41764 0))(
  ( (tuple2!41765 (_1!24016 Token!12562) (_2!24016 List!42658)) )
))
(declare-datatypes ((Option!9126 0))(
  ( (None!9125) (Some!9125 (v!39473 tuple2!41764)) )
))
(declare-fun lt!1396830 () Option!9126)

(declare-fun maxPrefix!3599 (LexerInterface!6301 List!42660 List!42658) Option!9126)

(assert (=> b!3978993 (= res!1612149 (= (maxPrefix!3599 thiss!21717 rules!2999 lt!1396801) lt!1396830))))

(declare-fun lt!1396809 () tuple2!41764)

(assert (=> b!3978993 (= lt!1396830 (Some!9125 lt!1396809))))

(assert (=> b!3978993 (= lt!1396809 (tuple2!41765 token!484 suffixResult!105))))

(declare-fun suffix!1299 () List!42658)

(assert (=> b!3978993 (= lt!1396801 (++!11114 prefix!494 suffix!1299))))

(declare-fun b!3978994 () Bool)

(declare-fun tp_is_empty!20205 () Bool)

(declare-fun tp!1213127 () Bool)

(assert (=> b!3978994 (= e!2465698 (and tp_is_empty!20205 tp!1213127))))

(declare-fun b!3978995 () Bool)

(declare-fun tp!1213134 () Bool)

(declare-fun e!2465694 () Bool)

(declare-fun inv!21 (TokenValue!6942) Bool)

(assert (=> b!3978995 (= e!2465699 (and (inv!21 (value!211926 token!484)) e!2465694 tp!1213134))))

(declare-fun b!3978996 () Bool)

(declare-fun e!2465704 () Bool)

(declare-fun e!2465714 () Bool)

(assert (=> b!3978996 (= e!2465704 e!2465714)))

(declare-fun res!1612157 () Bool)

(assert (=> b!3978996 (=> res!1612157 e!2465714)))

(declare-fun lt!1396835 () List!42658)

(assert (=> b!3978996 (= res!1612157 (not (= lt!1396835 lt!1396801)))))

(declare-fun lt!1396820 () List!42658)

(assert (=> b!3978996 (= lt!1396835 (++!11114 lt!1396803 lt!1396820))))

(assert (=> b!3978996 (= lt!1396820 (getSuffix!2230 lt!1396801 lt!1396803))))

(declare-fun e!2465689 () Bool)

(assert (=> b!3978996 e!2465689))

(declare-fun res!1612142 () Bool)

(assert (=> b!3978996 (=> (not res!1612142) (not e!2465689))))

(assert (=> b!3978996 (= res!1612142 (isPrefix!3799 lt!1396801 lt!1396801))))

(declare-fun lt!1396821 () Unit!61189)

(declare-fun lemmaIsPrefixRefl!2391 (List!42658 List!42658) Unit!61189)

(assert (=> b!3978996 (= lt!1396821 (lemmaIsPrefixRefl!2391 lt!1396801 lt!1396801))))

(declare-fun b!3978997 () Bool)

(declare-fun e!2465711 () Bool)

(assert (=> b!3978997 (= e!2465709 e!2465711)))

(declare-fun res!1612141 () Bool)

(assert (=> b!3978997 (=> (not res!1612141) (not e!2465711))))

(declare-fun lt!1396826 () Int)

(declare-fun lt!1396837 () Int)

(assert (=> b!3978997 (= res!1612141 (>= lt!1396826 lt!1396837))))

(declare-fun size!31819 (List!42658) Int)

(assert (=> b!3978997 (= lt!1396837 (size!31819 lt!1396803))))

(assert (=> b!3978997 (= lt!1396826 (size!31819 prefix!494))))

(declare-fun list!15786 (BalanceConc!25440) List!42658)

(declare-fun charsOf!4528 (Token!12562) BalanceConc!25440)

(assert (=> b!3978997 (= lt!1396803 (list!15786 (charsOf!4528 token!484)))))

(declare-fun b!3978998 () Bool)

(declare-fun e!2465685 () Bool)

(assert (=> b!3978998 (= e!2465714 e!2465685)))

(declare-fun res!1612160 () Bool)

(assert (=> b!3978998 (=> res!1612160 e!2465685)))

(declare-fun lt!1396838 () Option!9126)

(assert (=> b!3978998 (= res!1612160 (not ((_ is Some!9125) lt!1396838)))))

(declare-fun lt!1396807 () List!42658)

(assert (=> b!3978998 (= lt!1396838 (maxPrefix!3599 thiss!21717 rules!2999 lt!1396807))))

(declare-fun lt!1396836 () Token!12562)

(assert (=> b!3978998 (and (= suffixResult!105 lt!1396820) (= lt!1396809 (tuple2!41765 lt!1396836 lt!1396820)))))

(declare-fun lt!1396819 () Unit!61189)

(declare-fun lemmaSamePrefixThenSameSuffix!1986 (List!42658 List!42658 List!42658 List!42658 List!42658) Unit!61189)

(assert (=> b!3978998 (= lt!1396819 (lemmaSamePrefixThenSameSuffix!1986 lt!1396803 suffixResult!105 lt!1396803 lt!1396820 lt!1396801))))

(assert (=> b!3978998 (isPrefix!3799 lt!1396803 lt!1396835)))

(declare-fun lt!1396827 () Unit!61189)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2642 (List!42658 List!42658) Unit!61189)

(assert (=> b!3978998 (= lt!1396827 (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 lt!1396820))))

(declare-fun b!3978999 () Bool)

(declare-fun res!1612155 () Bool)

(assert (=> b!3978999 (=> (not res!1612155) (not e!2465689))))

(assert (=> b!3978999 (= res!1612155 (= (size!31818 token!484) (size!31819 (originalCharacters!7312 token!484))))))

(declare-fun b!3979000 () Bool)

(declare-fun e!2465707 () Bool)

(declare-fun e!2465705 () Bool)

(assert (=> b!3979000 (= e!2465707 e!2465705)))

(declare-fun res!1612140 () Bool)

(assert (=> b!3979000 (=> res!1612140 e!2465705)))

(declare-fun lt!1396805 () List!42658)

(assert (=> b!3979000 (= res!1612140 (not (isPrefix!3799 lt!1396805 lt!1396801)))))

(declare-fun lt!1396828 () List!42658)

(assert (=> b!3979000 (isPrefix!3799 lt!1396805 lt!1396828)))

(declare-fun lt!1396802 () Unit!61189)

(declare-fun lt!1396800 () List!42658)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!632 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> b!3979000 (= lt!1396802 (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396805 lt!1396807 lt!1396800))))

(declare-fun b!3979001 () Bool)

(declare-fun res!1612156 () Bool)

(assert (=> b!3979001 (=> (not res!1612156) (not e!2465689))))

(declare-fun lt!1396817 () TokenValue!6942)

(assert (=> b!3979001 (= res!1612156 (= (value!211926 token!484) lt!1396817))))

(declare-fun b!3979002 () Bool)

(declare-fun e!2465690 () Bool)

(assert (=> b!3979002 (= e!2465685 e!2465690)))

(declare-fun res!1612154 () Bool)

(assert (=> b!3979002 (=> res!1612154 e!2465690)))

(declare-fun lt!1396816 () Option!9126)

(assert (=> b!3979002 (= res!1612154 (not (= lt!1396816 (Some!9125 (v!39473 lt!1396838)))))))

(declare-fun newSuffixResult!27 () List!42658)

(assert (=> b!3979002 (isPrefix!3799 lt!1396805 (++!11114 lt!1396805 newSuffixResult!27))))

(declare-fun lt!1396833 () Unit!61189)

(assert (=> b!3979002 (= lt!1396833 (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396805 newSuffixResult!27))))

(declare-fun lt!1396815 () List!42658)

(assert (=> b!3979002 (isPrefix!3799 lt!1396805 lt!1396815)))

(assert (=> b!3979002 (= lt!1396815 (++!11114 lt!1396805 (_2!24016 (v!39473 lt!1396838))))))

(declare-fun lt!1396804 () Unit!61189)

(assert (=> b!3979002 (= lt!1396804 (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396805 (_2!24016 (v!39473 lt!1396838))))))

(declare-fun lt!1396814 () TokenValue!6942)

(declare-fun lt!1396824 () Int)

(assert (=> b!3979002 (= lt!1396816 (Some!9125 (tuple2!41765 (Token!12563 lt!1396814 (rule!9714 (_1!24016 (v!39473 lt!1396838))) lt!1396824 lt!1396805) (_2!24016 (v!39473 lt!1396838)))))))

(declare-fun maxPrefixOneRule!2633 (LexerInterface!6301 Rule!13224 List!42658) Option!9126)

(assert (=> b!3979002 (= lt!1396816 (maxPrefixOneRule!2633 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) lt!1396807))))

(assert (=> b!3979002 (= lt!1396824 (size!31819 lt!1396805))))

(declare-fun apply!9923 (TokenValueInjection!13312 BalanceConc!25440) TokenValue!6942)

(declare-fun seqFromList!4951 (List!42658) BalanceConc!25440)

(assert (=> b!3979002 (= lt!1396814 (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (seqFromList!4951 lt!1396805)))))

(declare-fun lt!1396799 () Unit!61189)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1455 (LexerInterface!6301 List!42660 List!42658 List!42658 List!42658 Rule!13224) Unit!61189)

(assert (=> b!3979002 (= lt!1396799 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1455 thiss!21717 rules!2999 lt!1396805 lt!1396807 (_2!24016 (v!39473 lt!1396838)) (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))

(assert (=> b!3979002 (= lt!1396805 (list!15786 (charsOf!4528 (_1!24016 (v!39473 lt!1396838)))))))

(declare-fun lt!1396840 () Unit!61189)

(assert (=> b!3979002 (= lt!1396840 (lemmaInv!927 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))))

(assert (=> b!3979002 (ruleValid!2644 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))

(declare-fun lt!1396832 () Unit!61189)

(assert (=> b!3979002 (= lt!1396832 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1718 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) rules!2999))))

(declare-fun lt!1396806 () Unit!61189)

(declare-fun lemmaCharactersSize!1307 (Token!12562) Unit!61189)

(assert (=> b!3979002 (= lt!1396806 (lemmaCharactersSize!1307 token!484))))

(declare-fun lt!1396796 () Unit!61189)

(assert (=> b!3979002 (= lt!1396796 (lemmaCharactersSize!1307 (_1!24016 (v!39473 lt!1396838))))))

(declare-fun b!3979003 () Bool)

(declare-fun tp!1213128 () Bool)

(assert (=> b!3979003 (= e!2465700 (and tp_is_empty!20205 tp!1213128))))

(declare-fun b!3979004 () Bool)

(assert (=> b!3979004 (= e!2465713 e!2465701)))

(declare-fun res!1612162 () Bool)

(assert (=> b!3979004 (=> res!1612162 e!2465701)))

(assert (=> b!3979004 (= res!1612162 (not (isPrefix!3799 lt!1396803 lt!1396801)))))

(assert (=> b!3979004 (isPrefix!3799 prefix!494 lt!1396801)))

(declare-fun lt!1396808 () Unit!61189)

(assert (=> b!3979004 (= lt!1396808 (lemmaConcatTwoListThenFirstIsPrefix!2642 prefix!494 suffix!1299))))

(assert (=> b!3979004 (isPrefix!3799 lt!1396803 lt!1396839)))

(declare-fun lt!1396795 () Unit!61189)

(assert (=> b!3979004 (= lt!1396795 (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 suffixResult!105))))

(declare-fun e!2465702 () Bool)

(assert (=> b!3979005 (= e!2465702 (and tp!1213131 tp!1213135))))

(declare-fun b!3979006 () Bool)

(assert (=> b!3979006 (= e!2465689 (and (= (size!31818 token!484) lt!1396837) (= (originalCharacters!7312 token!484) lt!1396803)))))

(declare-fun b!3979007 () Bool)

(declare-fun tp!1213125 () Bool)

(assert (=> b!3979007 (= e!2465712 (and tp_is_empty!20205 tp!1213125))))

(declare-fun b!3979008 () Bool)

(assert (=> b!3979008 (= e!2465705 (>= (size!31819 lt!1396807) lt!1396824))))

(declare-fun b!3979009 () Bool)

(declare-fun e!2465703 () Bool)

(assert (=> b!3979009 (= e!2465703 e!2465707)))

(declare-fun res!1612143 () Bool)

(assert (=> b!3979009 (=> res!1612143 e!2465707)))

(assert (=> b!3979009 (= res!1612143 (not (= lt!1396828 lt!1396801)))))

(declare-fun lt!1396823 () List!42658)

(assert (=> b!3979009 (= lt!1396828 (++!11114 prefix!494 lt!1396823))))

(assert (=> b!3979009 (= lt!1396828 (++!11114 lt!1396807 lt!1396800))))

(declare-fun newSuffix!27 () List!42658)

(declare-fun lt!1396813 () Unit!61189)

(declare-fun lemmaConcatAssociativity!2434 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> b!3979009 (= lt!1396813 (lemmaConcatAssociativity!2434 prefix!494 newSuffix!27 lt!1396800))))

(declare-fun b!3979010 () Bool)

(assert (=> b!3979010 (= e!2465711 e!2465695)))

(declare-fun res!1612147 () Bool)

(assert (=> b!3979010 (=> (not res!1612147) (not e!2465695))))

(declare-fun lt!1396797 () List!42658)

(assert (=> b!3979010 (= res!1612147 (= lt!1396797 lt!1396807))))

(assert (=> b!3979010 (= lt!1396807 (++!11114 prefix!494 newSuffix!27))))

(assert (=> b!3979010 (= lt!1396797 (++!11114 lt!1396803 newSuffixResult!27))))

(declare-fun b!3979011 () Bool)

(declare-fun tp!1213124 () Bool)

(assert (=> b!3979011 (= e!2465697 (and tp_is_empty!20205 tp!1213124))))

(declare-fun b!3979012 () Bool)

(declare-fun res!1612159 () Bool)

(assert (=> b!3979012 (=> (not res!1612159) (not e!2465709))))

(declare-fun isEmpty!25432 (List!42660) Bool)

(assert (=> b!3979012 (= res!1612159 (not (isEmpty!25432 rules!2999)))))

(declare-fun b!3979013 () Bool)

(declare-fun e!2465708 () Bool)

(assert (=> b!3979013 (= e!2465686 e!2465708)))

(declare-fun res!1612139 () Bool)

(assert (=> b!3979013 (=> res!1612139 e!2465708)))

(declare-fun lt!1396829 () List!42658)

(declare-fun lt!1396834 () List!42658)

(assert (=> b!3979013 (= res!1612139 (or (not (= lt!1396801 lt!1396834)) (not (= lt!1396801 lt!1396829))))))

(assert (=> b!3979013 (= lt!1396834 lt!1396829)))

(declare-fun lt!1396811 () List!42658)

(assert (=> b!3979013 (= lt!1396829 (++!11114 lt!1396803 lt!1396811))))

(assert (=> b!3979013 (= lt!1396834 (++!11114 lt!1396792 suffix!1299))))

(assert (=> b!3979013 (= lt!1396811 (++!11114 lt!1396831 suffix!1299))))

(declare-fun lt!1396793 () Unit!61189)

(assert (=> b!3979013 (= lt!1396793 (lemmaConcatAssociativity!2434 lt!1396803 lt!1396831 suffix!1299))))

(declare-fun b!3979014 () Bool)

(declare-fun res!1612138 () Bool)

(assert (=> b!3979014 (=> res!1612138 e!2465705)))

(assert (=> b!3979014 (= res!1612138 (not (= (++!11114 lt!1396805 (getSuffix!2230 lt!1396807 lt!1396805)) lt!1396807)))))

(declare-fun b!3979015 () Bool)

(assert (=> b!3979015 (= e!2465690 e!2465703)))

(declare-fun res!1612150 () Bool)

(assert (=> b!3979015 (=> res!1612150 e!2465703)))

(assert (=> b!3979015 (= res!1612150 (not (= lt!1396823 suffix!1299)))))

(assert (=> b!3979015 (= lt!1396823 (++!11114 newSuffix!27 lt!1396800))))

(assert (=> b!3979015 (= lt!1396800 (getSuffix!2230 suffix!1299 newSuffix!27))))

(declare-fun b!3979016 () Bool)

(declare-fun tp!1213130 () Bool)

(assert (=> b!3979016 (= e!2465693 (and tp_is_empty!20205 tp!1213130))))

(declare-fun b!3979017 () Bool)

(declare-fun e!2465691 () Bool)

(assert (=> b!3979017 (= e!2465708 e!2465691)))

(declare-fun res!1612151 () Bool)

(assert (=> b!3979017 (=> res!1612151 e!2465691)))

(declare-fun lt!1396818 () Option!9126)

(assert (=> b!3979017 (= res!1612151 (not (= lt!1396818 lt!1396830)))))

(assert (=> b!3979017 (= lt!1396818 (Some!9125 (tuple2!41765 lt!1396836 suffixResult!105)))))

(assert (=> b!3979017 (= lt!1396818 (maxPrefixOneRule!2633 thiss!21717 (rule!9714 token!484) lt!1396801))))

(assert (=> b!3979017 (= lt!1396836 (Token!12563 lt!1396817 (rule!9714 token!484) lt!1396837 lt!1396803))))

(assert (=> b!3979017 (= lt!1396817 (apply!9923 (transformation!6712 (rule!9714 token!484)) (seqFromList!4951 lt!1396803)))))

(declare-fun lt!1396812 () Unit!61189)

(assert (=> b!3979017 (= lt!1396812 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1455 thiss!21717 rules!2999 lt!1396803 lt!1396801 suffixResult!105 (rule!9714 token!484)))))

(assert (=> b!3979017 (= lt!1396811 suffixResult!105)))

(declare-fun lt!1396810 () Unit!61189)

(assert (=> b!3979017 (= lt!1396810 (lemmaSamePrefixThenSameSuffix!1986 lt!1396803 lt!1396811 lt!1396803 suffixResult!105 lt!1396801))))

(assert (=> b!3979017 (isPrefix!3799 lt!1396803 lt!1396829)))

(declare-fun lt!1396798 () Unit!61189)

(assert (=> b!3979017 (= lt!1396798 (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 lt!1396811))))

(declare-fun b!3979018 () Bool)

(declare-fun res!1612152 () Bool)

(assert (=> b!3979018 (=> res!1612152 e!2465705)))

(assert (=> b!3979018 (= res!1612152 (not (= lt!1396815 lt!1396807)))))

(declare-fun b!3979019 () Bool)

(declare-fun tp!1213129 () Bool)

(assert (=> b!3979019 (= e!2465694 (and tp!1213129 (inv!56820 (tag!7572 (rule!9714 token!484))) (inv!56823 (transformation!6712 (rule!9714 token!484))) e!2465702))))

(declare-fun b!3979020 () Bool)

(declare-fun res!1612153 () Bool)

(assert (=> b!3979020 (=> (not res!1612153) (not e!2465709))))

(assert (=> b!3979020 (= res!1612153 (isPrefix!3799 newSuffix!27 suffix!1299))))

(declare-fun b!3979021 () Bool)

(declare-fun tp!1213133 () Bool)

(assert (=> b!3979021 (= e!2465692 (and e!2465688 tp!1213133))))

(declare-fun b!3979022 () Bool)

(assert (=> b!3979022 (= e!2465691 e!2465704)))

(declare-fun res!1612161 () Bool)

(assert (=> b!3979022 (=> res!1612161 e!2465704)))

(declare-fun matchR!5594 (Regex!11617 List!42658) Bool)

(assert (=> b!3979022 (= res!1612161 (not (matchR!5594 (regex!6712 (rule!9714 token!484)) lt!1396803)))))

(assert (=> b!3979022 (isPrefix!3799 lt!1396803 lt!1396807)))

(declare-fun lt!1396791 () Unit!61189)

(assert (=> b!3979022 (= lt!1396791 (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396803 prefix!494 newSuffix!27))))

(declare-fun lt!1396841 () Unit!61189)

(assert (=> b!3979022 (= lt!1396841 (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396803 prefix!494 suffix!1299))))

(assert (=> b!3979023 (= e!2465684 (and tp!1213126 tp!1213136))))

(declare-fun b!3979024 () Bool)

(declare-fun res!1612144 () Bool)

(assert (=> b!3979024 (=> (not res!1612144) (not e!2465709))))

(assert (=> b!3979024 (= res!1612144 (>= (size!31819 suffix!1299) (size!31819 newSuffix!27)))))

(assert (= (and start!374484 res!1612146) b!3979012))

(assert (= (and b!3979012 res!1612159) b!3978992))

(assert (= (and b!3978992 res!1612158) b!3979024))

(assert (= (and b!3979024 res!1612144) b!3979020))

(assert (= (and b!3979020 res!1612153) b!3978997))

(assert (= (and b!3978997 res!1612141) b!3979010))

(assert (= (and b!3979010 res!1612147) b!3978993))

(assert (= (and b!3978993 res!1612149) b!3978989))

(assert (= (and b!3978989 (not res!1612148)) b!3979004))

(assert (= (and b!3979004 (not res!1612162)) b!3978990))

(assert (= (and b!3978990 (not res!1612145)) b!3979013))

(assert (= (and b!3979013 (not res!1612139)) b!3979017))

(assert (= (and b!3979017 (not res!1612151)) b!3979022))

(assert (= (and b!3979022 (not res!1612161)) b!3978996))

(assert (= (and b!3978996 res!1612142) b!3979001))

(assert (= (and b!3979001 res!1612156) b!3978999))

(assert (= (and b!3978999 res!1612155) b!3979006))

(assert (= (and b!3978996 (not res!1612157)) b!3978998))

(assert (= (and b!3978998 (not res!1612160)) b!3979002))

(assert (= (and b!3979002 (not res!1612154)) b!3979015))

(assert (= (and b!3979015 (not res!1612150)) b!3979009))

(assert (= (and b!3979009 (not res!1612143)) b!3979000))

(assert (= (and b!3979000 (not res!1612140)) b!3979018))

(assert (= (and b!3979018 (not res!1612152)) b!3979014))

(assert (= (and b!3979014 (not res!1612138)) b!3979008))

(assert (= (and start!374484 ((_ is Cons!42534) prefix!494)) b!3978994))

(assert (= b!3979019 b!3979005))

(assert (= b!3978995 b!3979019))

(assert (= start!374484 b!3978995))

(assert (= (and start!374484 ((_ is Cons!42534) suffixResult!105)) b!3979016))

(assert (= (and start!374484 ((_ is Cons!42534) suffix!1299)) b!3979011))

(assert (= (and start!374484 ((_ is Cons!42534) newSuffix!27)) b!3979007))

(assert (= b!3978991 b!3979023))

(assert (= b!3979021 b!3978991))

(assert (= (and start!374484 ((_ is Cons!42536) rules!2999)) b!3979021))

(assert (= (and start!374484 ((_ is Cons!42534) newSuffixResult!27)) b!3979003))

(declare-fun m!4551327 () Bool)

(assert (=> b!3978992 m!4551327))

(declare-fun m!4551329 () Bool)

(assert (=> b!3979014 m!4551329))

(assert (=> b!3979014 m!4551329))

(declare-fun m!4551331 () Bool)

(assert (=> b!3979014 m!4551331))

(declare-fun m!4551333 () Bool)

(assert (=> b!3978996 m!4551333))

(declare-fun m!4551335 () Bool)

(assert (=> b!3978996 m!4551335))

(declare-fun m!4551337 () Bool)

(assert (=> b!3978996 m!4551337))

(declare-fun m!4551339 () Bool)

(assert (=> b!3978996 m!4551339))

(declare-fun m!4551341 () Bool)

(assert (=> b!3979020 m!4551341))

(declare-fun m!4551343 () Bool)

(assert (=> b!3979013 m!4551343))

(declare-fun m!4551345 () Bool)

(assert (=> b!3979013 m!4551345))

(declare-fun m!4551347 () Bool)

(assert (=> b!3979013 m!4551347))

(declare-fun m!4551349 () Bool)

(assert (=> b!3979013 m!4551349))

(declare-fun m!4551351 () Bool)

(assert (=> b!3979004 m!4551351))

(declare-fun m!4551353 () Bool)

(assert (=> b!3979004 m!4551353))

(declare-fun m!4551355 () Bool)

(assert (=> b!3979004 m!4551355))

(declare-fun m!4551357 () Bool)

(assert (=> b!3979004 m!4551357))

(declare-fun m!4551359 () Bool)

(assert (=> b!3979004 m!4551359))

(declare-fun m!4551361 () Bool)

(assert (=> b!3979002 m!4551361))

(declare-fun m!4551363 () Bool)

(assert (=> b!3979002 m!4551363))

(declare-fun m!4551365 () Bool)

(assert (=> b!3979002 m!4551365))

(declare-fun m!4551367 () Bool)

(assert (=> b!3979002 m!4551367))

(declare-fun m!4551369 () Bool)

(assert (=> b!3979002 m!4551369))

(declare-fun m!4551371 () Bool)

(assert (=> b!3979002 m!4551371))

(declare-fun m!4551373 () Bool)

(assert (=> b!3979002 m!4551373))

(declare-fun m!4551375 () Bool)

(assert (=> b!3979002 m!4551375))

(declare-fun m!4551377 () Bool)

(assert (=> b!3979002 m!4551377))

(declare-fun m!4551379 () Bool)

(assert (=> b!3979002 m!4551379))

(assert (=> b!3979002 m!4551369))

(declare-fun m!4551381 () Bool)

(assert (=> b!3979002 m!4551381))

(declare-fun m!4551383 () Bool)

(assert (=> b!3979002 m!4551383))

(assert (=> b!3979002 m!4551363))

(declare-fun m!4551385 () Bool)

(assert (=> b!3979002 m!4551385))

(declare-fun m!4551387 () Bool)

(assert (=> b!3979002 m!4551387))

(declare-fun m!4551389 () Bool)

(assert (=> b!3979002 m!4551389))

(declare-fun m!4551391 () Bool)

(assert (=> b!3979002 m!4551391))

(declare-fun m!4551393 () Bool)

(assert (=> b!3979002 m!4551393))

(declare-fun m!4551395 () Bool)

(assert (=> b!3979002 m!4551395))

(assert (=> b!3979002 m!4551373))

(declare-fun m!4551397 () Bool)

(assert (=> b!3978991 m!4551397))

(declare-fun m!4551399 () Bool)

(assert (=> b!3978991 m!4551399))

(declare-fun m!4551401 () Bool)

(assert (=> start!374484 m!4551401))

(declare-fun m!4551403 () Bool)

(assert (=> b!3978998 m!4551403))

(declare-fun m!4551405 () Bool)

(assert (=> b!3978998 m!4551405))

(declare-fun m!4551407 () Bool)

(assert (=> b!3978998 m!4551407))

(declare-fun m!4551409 () Bool)

(assert (=> b!3978998 m!4551409))

(declare-fun m!4551411 () Bool)

(assert (=> b!3979019 m!4551411))

(declare-fun m!4551413 () Bool)

(assert (=> b!3979019 m!4551413))

(declare-fun m!4551415 () Bool)

(assert (=> b!3979017 m!4551415))

(declare-fun m!4551417 () Bool)

(assert (=> b!3979017 m!4551417))

(declare-fun m!4551419 () Bool)

(assert (=> b!3979017 m!4551419))

(declare-fun m!4551421 () Bool)

(assert (=> b!3979017 m!4551421))

(assert (=> b!3979017 m!4551421))

(declare-fun m!4551423 () Bool)

(assert (=> b!3979017 m!4551423))

(declare-fun m!4551425 () Bool)

(assert (=> b!3979017 m!4551425))

(declare-fun m!4551427 () Bool)

(assert (=> b!3979017 m!4551427))

(declare-fun m!4551429 () Bool)

(assert (=> b!3978990 m!4551429))

(declare-fun m!4551431 () Bool)

(assert (=> b!3978990 m!4551431))

(declare-fun m!4551433 () Bool)

(assert (=> b!3978990 m!4551433))

(declare-fun m!4551435 () Bool)

(assert (=> b!3978990 m!4551435))

(declare-fun m!4551437 () Bool)

(assert (=> b!3978997 m!4551437))

(declare-fun m!4551439 () Bool)

(assert (=> b!3978997 m!4551439))

(declare-fun m!4551441 () Bool)

(assert (=> b!3978997 m!4551441))

(assert (=> b!3978997 m!4551441))

(declare-fun m!4551443 () Bool)

(assert (=> b!3978997 m!4551443))

(declare-fun m!4551445 () Bool)

(assert (=> b!3979010 m!4551445))

(declare-fun m!4551447 () Bool)

(assert (=> b!3979010 m!4551447))

(declare-fun m!4551449 () Bool)

(assert (=> b!3978995 m!4551449))

(declare-fun m!4551451 () Bool)

(assert (=> b!3979015 m!4551451))

(declare-fun m!4551453 () Bool)

(assert (=> b!3979015 m!4551453))

(declare-fun m!4551455 () Bool)

(assert (=> b!3979012 m!4551455))

(declare-fun m!4551457 () Bool)

(assert (=> b!3978999 m!4551457))

(declare-fun m!4551459 () Bool)

(assert (=> b!3979008 m!4551459))

(declare-fun m!4551461 () Bool)

(assert (=> b!3979024 m!4551461))

(declare-fun m!4551463 () Bool)

(assert (=> b!3979024 m!4551463))

(declare-fun m!4551465 () Bool)

(assert (=> b!3978989 m!4551465))

(declare-fun m!4551467 () Bool)

(assert (=> b!3978989 m!4551467))

(declare-fun m!4551469 () Bool)

(assert (=> b!3978989 m!4551469))

(declare-fun m!4551471 () Bool)

(assert (=> b!3978989 m!4551471))

(declare-fun m!4551473 () Bool)

(assert (=> b!3979009 m!4551473))

(declare-fun m!4551475 () Bool)

(assert (=> b!3979009 m!4551475))

(declare-fun m!4551477 () Bool)

(assert (=> b!3979009 m!4551477))

(declare-fun m!4551479 () Bool)

(assert (=> b!3978993 m!4551479))

(declare-fun m!4551481 () Bool)

(assert (=> b!3978993 m!4551481))

(declare-fun m!4551483 () Bool)

(assert (=> b!3979000 m!4551483))

(declare-fun m!4551485 () Bool)

(assert (=> b!3979000 m!4551485))

(declare-fun m!4551487 () Bool)

(assert (=> b!3979000 m!4551487))

(declare-fun m!4551489 () Bool)

(assert (=> b!3979022 m!4551489))

(declare-fun m!4551491 () Bool)

(assert (=> b!3979022 m!4551491))

(declare-fun m!4551493 () Bool)

(assert (=> b!3979022 m!4551493))

(declare-fun m!4551495 () Bool)

(assert (=> b!3979022 m!4551495))

(check-sat (not b!3979013) (not b!3979004) b_and!305861 (not b!3978997) (not b!3979020) (not b!3979015) (not b_next!111131) (not b!3978994) (not b!3979012) (not b_next!111129) (not b!3979010) (not b!3979014) (not b!3978992) (not start!374484) (not b!3978989) (not b_next!111135) b_and!305855 b_and!305859 (not b!3978990) (not b!3978991) (not b!3979024) (not b!3979011) (not b!3979000) (not b!3978999) (not b!3979003) (not b!3978995) (not b!3979019) (not b!3978996) (not b!3978998) (not b!3978993) (not b_next!111133) (not b!3979008) (not b!3979016) (not b!3979002) b_and!305857 (not b!3979007) (not b!3979009) (not b!3979021) (not b!3979022) (not b!3979017) tp_is_empty!20205)
(check-sat (not b_next!111131) (not b_next!111129) b_and!305861 b_and!305859 (not b_next!111133) b_and!305857 (not b_next!111135) b_and!305855)
(get-model)

(declare-fun lt!1396844 () List!42658)

(declare-fun e!2465719 () Bool)

(declare-fun b!3979036 () Bool)

(assert (=> b!3979036 (= e!2465719 (or (not (= lt!1396823 Nil!42534)) (= lt!1396844 prefix!494)))))

(declare-fun b!3979034 () Bool)

(declare-fun e!2465720 () List!42658)

(assert (=> b!3979034 (= e!2465720 (Cons!42534 (h!47954 prefix!494) (++!11114 (t!331217 prefix!494) lt!1396823)))))

(declare-fun d!1177847 () Bool)

(assert (=> d!1177847 e!2465719))

(declare-fun res!1612169 () Bool)

(assert (=> d!1177847 (=> (not res!1612169) (not e!2465719))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6449 (List!42658) (InoxSet C!23420))

(assert (=> d!1177847 (= res!1612169 (= (content!6449 lt!1396844) ((_ map or) (content!6449 prefix!494) (content!6449 lt!1396823))))))

(assert (=> d!1177847 (= lt!1396844 e!2465720)))

(declare-fun c!689488 () Bool)

(assert (=> d!1177847 (= c!689488 ((_ is Nil!42534) prefix!494))))

(assert (=> d!1177847 (= (++!11114 prefix!494 lt!1396823) lt!1396844)))

(declare-fun b!3979033 () Bool)

(assert (=> b!3979033 (= e!2465720 lt!1396823)))

(declare-fun b!3979035 () Bool)

(declare-fun res!1612170 () Bool)

(assert (=> b!3979035 (=> (not res!1612170) (not e!2465719))))

(assert (=> b!3979035 (= res!1612170 (= (size!31819 lt!1396844) (+ (size!31819 prefix!494) (size!31819 lt!1396823))))))

(assert (= (and d!1177847 c!689488) b!3979033))

(assert (= (and d!1177847 (not c!689488)) b!3979034))

(assert (= (and d!1177847 res!1612169) b!3979035))

(assert (= (and b!3979035 res!1612170) b!3979036))

(declare-fun m!4551497 () Bool)

(assert (=> b!3979034 m!4551497))

(declare-fun m!4551499 () Bool)

(assert (=> d!1177847 m!4551499))

(declare-fun m!4551501 () Bool)

(assert (=> d!1177847 m!4551501))

(declare-fun m!4551503 () Bool)

(assert (=> d!1177847 m!4551503))

(declare-fun m!4551505 () Bool)

(assert (=> b!3979035 m!4551505))

(assert (=> b!3979035 m!4551439))

(declare-fun m!4551507 () Bool)

(assert (=> b!3979035 m!4551507))

(assert (=> b!3979009 d!1177847))

(declare-fun lt!1396845 () List!42658)

(declare-fun b!3979040 () Bool)

(declare-fun e!2465721 () Bool)

(assert (=> b!3979040 (= e!2465721 (or (not (= lt!1396800 Nil!42534)) (= lt!1396845 lt!1396807)))))

(declare-fun b!3979038 () Bool)

(declare-fun e!2465722 () List!42658)

(assert (=> b!3979038 (= e!2465722 (Cons!42534 (h!47954 lt!1396807) (++!11114 (t!331217 lt!1396807) lt!1396800)))))

(declare-fun d!1177849 () Bool)

(assert (=> d!1177849 e!2465721))

(declare-fun res!1612171 () Bool)

(assert (=> d!1177849 (=> (not res!1612171) (not e!2465721))))

(assert (=> d!1177849 (= res!1612171 (= (content!6449 lt!1396845) ((_ map or) (content!6449 lt!1396807) (content!6449 lt!1396800))))))

(assert (=> d!1177849 (= lt!1396845 e!2465722)))

(declare-fun c!689489 () Bool)

(assert (=> d!1177849 (= c!689489 ((_ is Nil!42534) lt!1396807))))

(assert (=> d!1177849 (= (++!11114 lt!1396807 lt!1396800) lt!1396845)))

(declare-fun b!3979037 () Bool)

(assert (=> b!3979037 (= e!2465722 lt!1396800)))

(declare-fun b!3979039 () Bool)

(declare-fun res!1612172 () Bool)

(assert (=> b!3979039 (=> (not res!1612172) (not e!2465721))))

(assert (=> b!3979039 (= res!1612172 (= (size!31819 lt!1396845) (+ (size!31819 lt!1396807) (size!31819 lt!1396800))))))

(assert (= (and d!1177849 c!689489) b!3979037))

(assert (= (and d!1177849 (not c!689489)) b!3979038))

(assert (= (and d!1177849 res!1612171) b!3979039))

(assert (= (and b!3979039 res!1612172) b!3979040))

(declare-fun m!4551509 () Bool)

(assert (=> b!3979038 m!4551509))

(declare-fun m!4551511 () Bool)

(assert (=> d!1177849 m!4551511))

(declare-fun m!4551513 () Bool)

(assert (=> d!1177849 m!4551513))

(declare-fun m!4551515 () Bool)

(assert (=> d!1177849 m!4551515))

(declare-fun m!4551517 () Bool)

(assert (=> b!3979039 m!4551517))

(assert (=> b!3979039 m!4551459))

(declare-fun m!4551519 () Bool)

(assert (=> b!3979039 m!4551519))

(assert (=> b!3979009 d!1177849))

(declare-fun d!1177851 () Bool)

(assert (=> d!1177851 (= (++!11114 (++!11114 prefix!494 newSuffix!27) lt!1396800) (++!11114 prefix!494 (++!11114 newSuffix!27 lt!1396800)))))

(declare-fun lt!1396848 () Unit!61189)

(declare-fun choose!23856 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> d!1177851 (= lt!1396848 (choose!23856 prefix!494 newSuffix!27 lt!1396800))))

(assert (=> d!1177851 (= (lemmaConcatAssociativity!2434 prefix!494 newSuffix!27 lt!1396800) lt!1396848)))

(declare-fun bs!587861 () Bool)

(assert (= bs!587861 d!1177851))

(assert (=> bs!587861 m!4551451))

(assert (=> bs!587861 m!4551445))

(declare-fun m!4551521 () Bool)

(assert (=> bs!587861 m!4551521))

(declare-fun m!4551523 () Bool)

(assert (=> bs!587861 m!4551523))

(assert (=> bs!587861 m!4551451))

(declare-fun m!4551525 () Bool)

(assert (=> bs!587861 m!4551525))

(assert (=> bs!587861 m!4551445))

(assert (=> b!3979009 d!1177851))

(declare-fun d!1177853 () Bool)

(declare-fun lt!1396851 () Int)

(assert (=> d!1177853 (>= lt!1396851 0)))

(declare-fun e!2465725 () Int)

(assert (=> d!1177853 (= lt!1396851 e!2465725)))

(declare-fun c!689492 () Bool)

(assert (=> d!1177853 (= c!689492 ((_ is Nil!42534) lt!1396807))))

(assert (=> d!1177853 (= (size!31819 lt!1396807) lt!1396851)))

(declare-fun b!3979045 () Bool)

(assert (=> b!3979045 (= e!2465725 0)))

(declare-fun b!3979046 () Bool)

(assert (=> b!3979046 (= e!2465725 (+ 1 (size!31819 (t!331217 lt!1396807))))))

(assert (= (and d!1177853 c!689492) b!3979045))

(assert (= (and d!1177853 (not c!689492)) b!3979046))

(declare-fun m!4551527 () Bool)

(assert (=> b!3979046 m!4551527))

(assert (=> b!3979008 d!1177853))

(declare-fun b!3979066 () Bool)

(declare-fun e!2465737 () Bool)

(assert (=> b!3979066 (= e!2465737 (>= (size!31819 lt!1396801) (size!31819 prefix!494)))))

(declare-fun d!1177855 () Bool)

(assert (=> d!1177855 e!2465737))

(declare-fun res!1612190 () Bool)

(assert (=> d!1177855 (=> res!1612190 e!2465737)))

(declare-fun lt!1396856 () Bool)

(assert (=> d!1177855 (= res!1612190 (not lt!1396856))))

(declare-fun e!2465738 () Bool)

(assert (=> d!1177855 (= lt!1396856 e!2465738)))

(declare-fun res!1612189 () Bool)

(assert (=> d!1177855 (=> res!1612189 e!2465738)))

(assert (=> d!1177855 (= res!1612189 ((_ is Nil!42534) prefix!494))))

(assert (=> d!1177855 (= (isPrefix!3799 prefix!494 lt!1396801) lt!1396856)))

(declare-fun b!3979063 () Bool)

(declare-fun e!2465736 () Bool)

(assert (=> b!3979063 (= e!2465738 e!2465736)))

(declare-fun res!1612187 () Bool)

(assert (=> b!3979063 (=> (not res!1612187) (not e!2465736))))

(assert (=> b!3979063 (= res!1612187 (not ((_ is Nil!42534) lt!1396801)))))

(declare-fun b!3979065 () Bool)

(declare-fun tail!6207 (List!42658) List!42658)

(assert (=> b!3979065 (= e!2465736 (isPrefix!3799 (tail!6207 prefix!494) (tail!6207 lt!1396801)))))

(declare-fun b!3979064 () Bool)

(declare-fun res!1612188 () Bool)

(assert (=> b!3979064 (=> (not res!1612188) (not e!2465736))))

(declare-fun head!8475 (List!42658) C!23420)

(assert (=> b!3979064 (= res!1612188 (= (head!8475 prefix!494) (head!8475 lt!1396801)))))

(assert (= (and d!1177855 (not res!1612189)) b!3979063))

(assert (= (and b!3979063 res!1612187) b!3979064))

(assert (= (and b!3979064 res!1612188) b!3979065))

(assert (= (and d!1177855 (not res!1612190)) b!3979066))

(declare-fun m!4551529 () Bool)

(assert (=> b!3979066 m!4551529))

(assert (=> b!3979066 m!4551439))

(declare-fun m!4551531 () Bool)

(assert (=> b!3979065 m!4551531))

(declare-fun m!4551533 () Bool)

(assert (=> b!3979065 m!4551533))

(assert (=> b!3979065 m!4551531))

(assert (=> b!3979065 m!4551533))

(declare-fun m!4551535 () Bool)

(assert (=> b!3979065 m!4551535))

(declare-fun m!4551537 () Bool)

(assert (=> b!3979064 m!4551537))

(declare-fun m!4551539 () Bool)

(assert (=> b!3979064 m!4551539))

(assert (=> b!3979004 d!1177855))

(declare-fun d!1177859 () Bool)

(assert (=> d!1177859 (isPrefix!3799 lt!1396803 (++!11114 lt!1396803 suffixResult!105))))

(declare-fun lt!1396863 () Unit!61189)

(declare-fun choose!23857 (List!42658 List!42658) Unit!61189)

(assert (=> d!1177859 (= lt!1396863 (choose!23857 lt!1396803 suffixResult!105))))

(assert (=> d!1177859 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 suffixResult!105) lt!1396863)))

(declare-fun bs!587862 () Bool)

(assert (= bs!587862 d!1177859))

(assert (=> bs!587862 m!4551465))

(assert (=> bs!587862 m!4551465))

(declare-fun m!4551559 () Bool)

(assert (=> bs!587862 m!4551559))

(declare-fun m!4551561 () Bool)

(assert (=> bs!587862 m!4551561))

(assert (=> b!3979004 d!1177859))

(declare-fun b!3979080 () Bool)

(declare-fun e!2465745 () Bool)

(assert (=> b!3979080 (= e!2465745 (>= (size!31819 lt!1396801) (size!31819 lt!1396803)))))

(declare-fun d!1177865 () Bool)

(assert (=> d!1177865 e!2465745))

(declare-fun res!1612196 () Bool)

(assert (=> d!1177865 (=> res!1612196 e!2465745)))

(declare-fun lt!1396864 () Bool)

(assert (=> d!1177865 (= res!1612196 (not lt!1396864))))

(declare-fun e!2465746 () Bool)

(assert (=> d!1177865 (= lt!1396864 e!2465746)))

(declare-fun res!1612195 () Bool)

(assert (=> d!1177865 (=> res!1612195 e!2465746)))

(assert (=> d!1177865 (= res!1612195 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1177865 (= (isPrefix!3799 lt!1396803 lt!1396801) lt!1396864)))

(declare-fun b!3979077 () Bool)

(declare-fun e!2465744 () Bool)

(assert (=> b!3979077 (= e!2465746 e!2465744)))

(declare-fun res!1612193 () Bool)

(assert (=> b!3979077 (=> (not res!1612193) (not e!2465744))))

(assert (=> b!3979077 (= res!1612193 (not ((_ is Nil!42534) lt!1396801)))))

(declare-fun b!3979079 () Bool)

(assert (=> b!3979079 (= e!2465744 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 lt!1396801)))))

(declare-fun b!3979078 () Bool)

(declare-fun res!1612194 () Bool)

(assert (=> b!3979078 (=> (not res!1612194) (not e!2465744))))

(assert (=> b!3979078 (= res!1612194 (= (head!8475 lt!1396803) (head!8475 lt!1396801)))))

(assert (= (and d!1177865 (not res!1612195)) b!3979077))

(assert (= (and b!3979077 res!1612193) b!3979078))

(assert (= (and b!3979078 res!1612194) b!3979079))

(assert (= (and d!1177865 (not res!1612196)) b!3979080))

(assert (=> b!3979080 m!4551529))

(assert (=> b!3979080 m!4551437))

(declare-fun m!4551563 () Bool)

(assert (=> b!3979079 m!4551563))

(assert (=> b!3979079 m!4551533))

(assert (=> b!3979079 m!4551563))

(assert (=> b!3979079 m!4551533))

(declare-fun m!4551565 () Bool)

(assert (=> b!3979079 m!4551565))

(declare-fun m!4551567 () Bool)

(assert (=> b!3979078 m!4551567))

(assert (=> b!3979078 m!4551539))

(assert (=> b!3979004 d!1177865))

(declare-fun d!1177867 () Bool)

(assert (=> d!1177867 (isPrefix!3799 prefix!494 (++!11114 prefix!494 suffix!1299))))

(declare-fun lt!1396865 () Unit!61189)

(assert (=> d!1177867 (= lt!1396865 (choose!23857 prefix!494 suffix!1299))))

(assert (=> d!1177867 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 prefix!494 suffix!1299) lt!1396865)))

(declare-fun bs!587863 () Bool)

(assert (= bs!587863 d!1177867))

(assert (=> bs!587863 m!4551481))

(assert (=> bs!587863 m!4551481))

(declare-fun m!4551569 () Bool)

(assert (=> bs!587863 m!4551569))

(declare-fun m!4551571 () Bool)

(assert (=> bs!587863 m!4551571))

(assert (=> b!3979004 d!1177867))

(declare-fun b!3979088 () Bool)

(declare-fun e!2465750 () Bool)

(assert (=> b!3979088 (= e!2465750 (>= (size!31819 lt!1396839) (size!31819 lt!1396803)))))

(declare-fun d!1177869 () Bool)

(assert (=> d!1177869 e!2465750))

(declare-fun res!1612202 () Bool)

(assert (=> d!1177869 (=> res!1612202 e!2465750)))

(declare-fun lt!1396868 () Bool)

(assert (=> d!1177869 (= res!1612202 (not lt!1396868))))

(declare-fun e!2465753 () Bool)

(assert (=> d!1177869 (= lt!1396868 e!2465753)))

(declare-fun res!1612201 () Bool)

(assert (=> d!1177869 (=> res!1612201 e!2465753)))

(assert (=> d!1177869 (= res!1612201 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1177869 (= (isPrefix!3799 lt!1396803 lt!1396839) lt!1396868)))

(declare-fun b!3979084 () Bool)

(declare-fun e!2465749 () Bool)

(assert (=> b!3979084 (= e!2465753 e!2465749)))

(declare-fun res!1612199 () Bool)

(assert (=> b!3979084 (=> (not res!1612199) (not e!2465749))))

(assert (=> b!3979084 (= res!1612199 (not ((_ is Nil!42534) lt!1396839)))))

(declare-fun b!3979087 () Bool)

(assert (=> b!3979087 (= e!2465749 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 lt!1396839)))))

(declare-fun b!3979086 () Bool)

(declare-fun res!1612200 () Bool)

(assert (=> b!3979086 (=> (not res!1612200) (not e!2465749))))

(assert (=> b!3979086 (= res!1612200 (= (head!8475 lt!1396803) (head!8475 lt!1396839)))))

(assert (= (and d!1177869 (not res!1612201)) b!3979084))

(assert (= (and b!3979084 res!1612199) b!3979086))

(assert (= (and b!3979086 res!1612200) b!3979087))

(assert (= (and d!1177869 (not res!1612202)) b!3979088))

(declare-fun m!4551573 () Bool)

(assert (=> b!3979088 m!4551573))

(assert (=> b!3979088 m!4551437))

(assert (=> b!3979087 m!4551563))

(declare-fun m!4551575 () Bool)

(assert (=> b!3979087 m!4551575))

(assert (=> b!3979087 m!4551563))

(assert (=> b!3979087 m!4551575))

(declare-fun m!4551577 () Bool)

(assert (=> b!3979087 m!4551577))

(assert (=> b!3979086 m!4551567))

(declare-fun m!4551579 () Bool)

(assert (=> b!3979086 m!4551579))

(assert (=> b!3979004 d!1177869))

(declare-fun d!1177871 () Bool)

(assert (=> d!1177871 (isPrefix!3799 lt!1396805 (++!11114 lt!1396805 newSuffixResult!27))))

(declare-fun lt!1396869 () Unit!61189)

(assert (=> d!1177871 (= lt!1396869 (choose!23857 lt!1396805 newSuffixResult!27))))

(assert (=> d!1177871 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396805 newSuffixResult!27) lt!1396869)))

(declare-fun bs!587864 () Bool)

(assert (= bs!587864 d!1177871))

(assert (=> bs!587864 m!4551369))

(assert (=> bs!587864 m!4551369))

(assert (=> bs!587864 m!4551381))

(declare-fun m!4551581 () Bool)

(assert (=> bs!587864 m!4551581))

(assert (=> b!3979002 d!1177871))

(declare-fun e!2465756 () Bool)

(declare-fun lt!1396870 () List!42658)

(declare-fun b!3979096 () Bool)

(assert (=> b!3979096 (= e!2465756 (or (not (= newSuffixResult!27 Nil!42534)) (= lt!1396870 lt!1396805)))))

(declare-fun b!3979094 () Bool)

(declare-fun e!2465757 () List!42658)

(assert (=> b!3979094 (= e!2465757 (Cons!42534 (h!47954 lt!1396805) (++!11114 (t!331217 lt!1396805) newSuffixResult!27)))))

(declare-fun d!1177873 () Bool)

(assert (=> d!1177873 e!2465756))

(declare-fun res!1612209 () Bool)

(assert (=> d!1177873 (=> (not res!1612209) (not e!2465756))))

(assert (=> d!1177873 (= res!1612209 (= (content!6449 lt!1396870) ((_ map or) (content!6449 lt!1396805) (content!6449 newSuffixResult!27))))))

(assert (=> d!1177873 (= lt!1396870 e!2465757)))

(declare-fun c!689499 () Bool)

(assert (=> d!1177873 (= c!689499 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1177873 (= (++!11114 lt!1396805 newSuffixResult!27) lt!1396870)))

(declare-fun b!3979093 () Bool)

(assert (=> b!3979093 (= e!2465757 newSuffixResult!27)))

(declare-fun b!3979095 () Bool)

(declare-fun res!1612210 () Bool)

(assert (=> b!3979095 (=> (not res!1612210) (not e!2465756))))

(assert (=> b!3979095 (= res!1612210 (= (size!31819 lt!1396870) (+ (size!31819 lt!1396805) (size!31819 newSuffixResult!27))))))

(assert (= (and d!1177873 c!689499) b!3979093))

(assert (= (and d!1177873 (not c!689499)) b!3979094))

(assert (= (and d!1177873 res!1612209) b!3979095))

(assert (= (and b!3979095 res!1612210) b!3979096))

(declare-fun m!4551591 () Bool)

(assert (=> b!3979094 m!4551591))

(declare-fun m!4551593 () Bool)

(assert (=> d!1177873 m!4551593))

(declare-fun m!4551595 () Bool)

(assert (=> d!1177873 m!4551595))

(declare-fun m!4551597 () Bool)

(assert (=> d!1177873 m!4551597))

(declare-fun m!4551599 () Bool)

(assert (=> b!3979095 m!4551599))

(assert (=> b!3979095 m!4551395))

(declare-fun m!4551601 () Bool)

(assert (=> b!3979095 m!4551601))

(assert (=> b!3979002 d!1177873))

(declare-fun d!1177877 () Bool)

(assert (=> d!1177877 (isPrefix!3799 lt!1396805 (++!11114 lt!1396805 (_2!24016 (v!39473 lt!1396838))))))

(declare-fun lt!1396872 () Unit!61189)

(assert (=> d!1177877 (= lt!1396872 (choose!23857 lt!1396805 (_2!24016 (v!39473 lt!1396838))))))

(assert (=> d!1177877 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396805 (_2!24016 (v!39473 lt!1396838))) lt!1396872)))

(declare-fun bs!587865 () Bool)

(assert (= bs!587865 d!1177877))

(assert (=> bs!587865 m!4551387))

(assert (=> bs!587865 m!4551387))

(declare-fun m!4551603 () Bool)

(assert (=> bs!587865 m!4551603))

(declare-fun m!4551605 () Bool)

(assert (=> bs!587865 m!4551605))

(assert (=> b!3979002 d!1177877))

(declare-fun d!1177879 () Bool)

(assert (=> d!1177879 (= (size!31818 token!484) (size!31819 (originalCharacters!7312 token!484)))))

(declare-fun Unit!61192 () Unit!61189)

(assert (=> d!1177879 (= (lemmaCharactersSize!1307 token!484) Unit!61192)))

(declare-fun bs!587867 () Bool)

(assert (= bs!587867 d!1177879))

(assert (=> bs!587867 m!4551457))

(assert (=> b!3979002 d!1177879))

(declare-fun d!1177887 () Bool)

(declare-fun fromListB!2276 (List!42658) BalanceConc!25440)

(assert (=> d!1177887 (= (seqFromList!4951 lt!1396805) (fromListB!2276 lt!1396805))))

(declare-fun bs!587869 () Bool)

(assert (= bs!587869 d!1177887))

(declare-fun m!4551659 () Bool)

(assert (=> bs!587869 m!4551659))

(assert (=> b!3979002 d!1177887))

(declare-fun d!1177897 () Bool)

(declare-fun e!2465785 () Bool)

(assert (=> d!1177897 e!2465785))

(declare-fun res!1612237 () Bool)

(assert (=> d!1177897 (=> (not res!1612237) (not e!2465785))))

(declare-fun semiInverseModEq!2881 (Int Int) Bool)

(assert (=> d!1177897 (= res!1612237 (semiInverseModEq!2881 (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))))

(declare-fun Unit!61193 () Unit!61189)

(assert (=> d!1177897 (= (lemmaInv!927 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) Unit!61193)))

(declare-fun b!3979139 () Bool)

(declare-fun equivClasses!2780 (Int Int) Bool)

(assert (=> b!3979139 (= e!2465785 (equivClasses!2780 (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))))

(assert (= (and d!1177897 res!1612237) b!3979139))

(declare-fun m!4551697 () Bool)

(assert (=> d!1177897 m!4551697))

(declare-fun m!4551699 () Bool)

(assert (=> b!3979139 m!4551699))

(assert (=> b!3979002 d!1177897))

(declare-fun b!3979143 () Bool)

(declare-fun e!2465787 () Bool)

(assert (=> b!3979143 (= e!2465787 (>= (size!31819 lt!1396815) (size!31819 lt!1396805)))))

(declare-fun d!1177917 () Bool)

(assert (=> d!1177917 e!2465787))

(declare-fun res!1612241 () Bool)

(assert (=> d!1177917 (=> res!1612241 e!2465787)))

(declare-fun lt!1396892 () Bool)

(assert (=> d!1177917 (= res!1612241 (not lt!1396892))))

(declare-fun e!2465788 () Bool)

(assert (=> d!1177917 (= lt!1396892 e!2465788)))

(declare-fun res!1612240 () Bool)

(assert (=> d!1177917 (=> res!1612240 e!2465788)))

(assert (=> d!1177917 (= res!1612240 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1177917 (= (isPrefix!3799 lt!1396805 lt!1396815) lt!1396892)))

(declare-fun b!3979140 () Bool)

(declare-fun e!2465786 () Bool)

(assert (=> b!3979140 (= e!2465788 e!2465786)))

(declare-fun res!1612238 () Bool)

(assert (=> b!3979140 (=> (not res!1612238) (not e!2465786))))

(assert (=> b!3979140 (= res!1612238 (not ((_ is Nil!42534) lt!1396815)))))

(declare-fun b!3979142 () Bool)

(assert (=> b!3979142 (= e!2465786 (isPrefix!3799 (tail!6207 lt!1396805) (tail!6207 lt!1396815)))))

(declare-fun b!3979141 () Bool)

(declare-fun res!1612239 () Bool)

(assert (=> b!3979141 (=> (not res!1612239) (not e!2465786))))

(assert (=> b!3979141 (= res!1612239 (= (head!8475 lt!1396805) (head!8475 lt!1396815)))))

(assert (= (and d!1177917 (not res!1612240)) b!3979140))

(assert (= (and b!3979140 res!1612238) b!3979141))

(assert (= (and b!3979141 res!1612239) b!3979142))

(assert (= (and d!1177917 (not res!1612241)) b!3979143))

(declare-fun m!4551701 () Bool)

(assert (=> b!3979143 m!4551701))

(assert (=> b!3979143 m!4551395))

(declare-fun m!4551703 () Bool)

(assert (=> b!3979142 m!4551703))

(declare-fun m!4551705 () Bool)

(assert (=> b!3979142 m!4551705))

(assert (=> b!3979142 m!4551703))

(assert (=> b!3979142 m!4551705))

(declare-fun m!4551707 () Bool)

(assert (=> b!3979142 m!4551707))

(declare-fun m!4551709 () Bool)

(assert (=> b!3979141 m!4551709))

(declare-fun m!4551711 () Bool)

(assert (=> b!3979141 m!4551711))

(assert (=> b!3979002 d!1177917))

(declare-fun b!3979157 () Bool)

(declare-fun e!2465795 () Bool)

(declare-fun lt!1396893 () List!42658)

(assert (=> b!3979157 (= e!2465795 (or (not (= (_2!24016 (v!39473 lt!1396838)) Nil!42534)) (= lt!1396893 lt!1396805)))))

(declare-fun b!3979155 () Bool)

(declare-fun e!2465796 () List!42658)

(assert (=> b!3979155 (= e!2465796 (Cons!42534 (h!47954 lt!1396805) (++!11114 (t!331217 lt!1396805) (_2!24016 (v!39473 lt!1396838)))))))

(declare-fun d!1177919 () Bool)

(assert (=> d!1177919 e!2465795))

(declare-fun res!1612244 () Bool)

(assert (=> d!1177919 (=> (not res!1612244) (not e!2465795))))

(assert (=> d!1177919 (= res!1612244 (= (content!6449 lt!1396893) ((_ map or) (content!6449 lt!1396805) (content!6449 (_2!24016 (v!39473 lt!1396838))))))))

(assert (=> d!1177919 (= lt!1396893 e!2465796)))

(declare-fun c!689512 () Bool)

(assert (=> d!1177919 (= c!689512 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1177919 (= (++!11114 lt!1396805 (_2!24016 (v!39473 lt!1396838))) lt!1396893)))

(declare-fun b!3979154 () Bool)

(assert (=> b!3979154 (= e!2465796 (_2!24016 (v!39473 lt!1396838)))))

(declare-fun b!3979156 () Bool)

(declare-fun res!1612245 () Bool)

(assert (=> b!3979156 (=> (not res!1612245) (not e!2465795))))

(assert (=> b!3979156 (= res!1612245 (= (size!31819 lt!1396893) (+ (size!31819 lt!1396805) (size!31819 (_2!24016 (v!39473 lt!1396838))))))))

(assert (= (and d!1177919 c!689512) b!3979154))

(assert (= (and d!1177919 (not c!689512)) b!3979155))

(assert (= (and d!1177919 res!1612244) b!3979156))

(assert (= (and b!3979156 res!1612245) b!3979157))

(declare-fun m!4551713 () Bool)

(assert (=> b!3979155 m!4551713))

(declare-fun m!4551715 () Bool)

(assert (=> d!1177919 m!4551715))

(assert (=> d!1177919 m!4551595))

(declare-fun m!4551717 () Bool)

(assert (=> d!1177919 m!4551717))

(declare-fun m!4551719 () Bool)

(assert (=> b!3979156 m!4551719))

(assert (=> b!3979156 m!4551395))

(declare-fun m!4551721 () Bool)

(assert (=> b!3979156 m!4551721))

(assert (=> b!3979002 d!1177919))

(declare-fun d!1177921 () Bool)

(declare-fun lt!1396899 () BalanceConc!25440)

(assert (=> d!1177921 (= (list!15786 lt!1396899) (originalCharacters!7312 (_1!24016 (v!39473 lt!1396838))))))

(declare-fun dynLambda!18099 (Int TokenValue!6942) BalanceConc!25440)

(assert (=> d!1177921 (= lt!1396899 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (value!211926 (_1!24016 (v!39473 lt!1396838)))))))

(assert (=> d!1177921 (= (charsOf!4528 (_1!24016 (v!39473 lt!1396838))) lt!1396899)))

(declare-fun b_lambda!116241 () Bool)

(assert (=> (not b_lambda!116241) (not d!1177921)))

(declare-fun t!331225 () Bool)

(declare-fun tb!239825 () Bool)

(assert (=> (and b!3979023 (= (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331225) tb!239825))

(declare-fun b!3979169 () Bool)

(declare-fun e!2465805 () Bool)

(declare-fun tp!1213139 () Bool)

(declare-fun inv!56825 (Conc!12923) Bool)

(assert (=> b!3979169 (= e!2465805 (and (inv!56825 (c!689484 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (value!211926 (_1!24016 (v!39473 lt!1396838)))))) tp!1213139))))

(declare-fun result!290508 () Bool)

(declare-fun inv!56826 (BalanceConc!25440) Bool)

(assert (=> tb!239825 (= result!290508 (and (inv!56826 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (value!211926 (_1!24016 (v!39473 lt!1396838))))) e!2465805))))

(assert (= tb!239825 b!3979169))

(declare-fun m!4551739 () Bool)

(assert (=> b!3979169 m!4551739))

(declare-fun m!4551741 () Bool)

(assert (=> tb!239825 m!4551741))

(assert (=> d!1177921 t!331225))

(declare-fun b_and!305867 () Bool)

(assert (= b_and!305857 (and (=> t!331225 result!290508) b_and!305867)))

(declare-fun t!331227 () Bool)

(declare-fun tb!239827 () Bool)

(assert (=> (and b!3979005 (= (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331227) tb!239827))

(declare-fun result!290512 () Bool)

(assert (= result!290512 result!290508))

(assert (=> d!1177921 t!331227))

(declare-fun b_and!305869 () Bool)

(assert (= b_and!305861 (and (=> t!331227 result!290512) b_and!305869)))

(declare-fun m!4551743 () Bool)

(assert (=> d!1177921 m!4551743))

(declare-fun m!4551745 () Bool)

(assert (=> d!1177921 m!4551745))

(assert (=> b!3979002 d!1177921))

(declare-fun b!3979237 () Bool)

(declare-fun e!2465838 () Bool)

(declare-fun e!2465836 () Bool)

(assert (=> b!3979237 (= e!2465838 e!2465836)))

(declare-fun res!1612305 () Bool)

(assert (=> b!3979237 (=> (not res!1612305) (not e!2465836))))

(declare-fun lt!1396944 () Option!9126)

(declare-fun get!14006 (Option!9126) tuple2!41764)

(assert (=> b!3979237 (= res!1612305 (matchR!5594 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1396944))))))))

(declare-fun b!3979238 () Bool)

(declare-fun res!1612301 () Bool)

(assert (=> b!3979238 (=> (not res!1612301) (not e!2465836))))

(assert (=> b!3979238 (= res!1612301 (= (rule!9714 (_1!24016 (get!14006 lt!1396944))) (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))

(declare-fun b!3979239 () Bool)

(assert (=> b!3979239 (= e!2465836 (= (size!31818 (_1!24016 (get!14006 lt!1396944))) (size!31819 (originalCharacters!7312 (_1!24016 (get!14006 lt!1396944))))))))

(declare-fun b!3979240 () Bool)

(declare-fun e!2465837 () Option!9126)

(declare-datatypes ((tuple2!41768 0))(
  ( (tuple2!41769 (_1!24018 List!42658) (_2!24018 List!42658)) )
))
(declare-fun lt!1396943 () tuple2!41768)

(declare-fun size!31821 (BalanceConc!25440) Int)

(assert (=> b!3979240 (= e!2465837 (Some!9125 (tuple2!41765 (Token!12563 (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (seqFromList!4951 (_1!24018 lt!1396943))) (rule!9714 (_1!24016 (v!39473 lt!1396838))) (size!31821 (seqFromList!4951 (_1!24018 lt!1396943))) (_1!24018 lt!1396943)) (_2!24018 lt!1396943))))))

(declare-fun lt!1396946 () Unit!61189)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1291 (Regex!11617 List!42658) Unit!61189)

(assert (=> b!3979240 (= lt!1396946 (longestMatchIsAcceptedByMatchOrIsEmpty!1291 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) lt!1396807))))

(declare-fun res!1612306 () Bool)

(declare-fun isEmpty!25435 (List!42658) Bool)

(declare-fun findLongestMatchInner!1318 (Regex!11617 List!42658 Int List!42658 List!42658 Int) tuple2!41768)

(assert (=> b!3979240 (= res!1612306 (isEmpty!25435 (_1!24018 (findLongestMatchInner!1318 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) Nil!42534 (size!31819 Nil!42534) lt!1396807 lt!1396807 (size!31819 lt!1396807)))))))

(declare-fun e!2465835 () Bool)

(assert (=> b!3979240 (=> res!1612306 e!2465835)))

(assert (=> b!3979240 e!2465835))

(declare-fun lt!1396945 () Unit!61189)

(assert (=> b!3979240 (= lt!1396945 lt!1396946)))

(declare-fun lt!1396942 () Unit!61189)

(declare-fun lemmaSemiInverse!1830 (TokenValueInjection!13312 BalanceConc!25440) Unit!61189)

(assert (=> b!3979240 (= lt!1396942 (lemmaSemiInverse!1830 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (seqFromList!4951 (_1!24018 lt!1396943))))))

(declare-fun b!3979241 () Bool)

(declare-fun res!1612304 () Bool)

(assert (=> b!3979241 (=> (not res!1612304) (not e!2465836))))

(assert (=> b!3979241 (= res!1612304 (= (value!211926 (_1!24016 (get!14006 lt!1396944))) (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (get!14006 lt!1396944)))) (seqFromList!4951 (originalCharacters!7312 (_1!24016 (get!14006 lt!1396944)))))))))

(declare-fun d!1177931 () Bool)

(assert (=> d!1177931 e!2465838))

(declare-fun res!1612303 () Bool)

(assert (=> d!1177931 (=> res!1612303 e!2465838)))

(declare-fun isEmpty!25436 (Option!9126) Bool)

(assert (=> d!1177931 (= res!1612303 (isEmpty!25436 lt!1396944))))

(assert (=> d!1177931 (= lt!1396944 e!2465837)))

(declare-fun c!689522 () Bool)

(assert (=> d!1177931 (= c!689522 (isEmpty!25435 (_1!24018 lt!1396943)))))

(declare-fun findLongestMatch!1231 (Regex!11617 List!42658) tuple2!41768)

(assert (=> d!1177931 (= lt!1396943 (findLongestMatch!1231 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) lt!1396807))))

(assert (=> d!1177931 (ruleValid!2644 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))

(assert (=> d!1177931 (= (maxPrefixOneRule!2633 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) lt!1396807) lt!1396944)))

(declare-fun b!3979242 () Bool)

(assert (=> b!3979242 (= e!2465837 None!9125)))

(declare-fun b!3979243 () Bool)

(declare-fun res!1612300 () Bool)

(assert (=> b!3979243 (=> (not res!1612300) (not e!2465836))))

(assert (=> b!3979243 (= res!1612300 (= (++!11114 (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1396944)))) (_2!24016 (get!14006 lt!1396944))) lt!1396807))))

(declare-fun b!3979244 () Bool)

(declare-fun res!1612302 () Bool)

(assert (=> b!3979244 (=> (not res!1612302) (not e!2465836))))

(assert (=> b!3979244 (= res!1612302 (< (size!31819 (_2!24016 (get!14006 lt!1396944))) (size!31819 lt!1396807)))))

(declare-fun b!3979245 () Bool)

(assert (=> b!3979245 (= e!2465835 (matchR!5594 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (_1!24018 (findLongestMatchInner!1318 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) Nil!42534 (size!31819 Nil!42534) lt!1396807 lt!1396807 (size!31819 lt!1396807)))))))

(assert (= (and d!1177931 c!689522) b!3979242))

(assert (= (and d!1177931 (not c!689522)) b!3979240))

(assert (= (and b!3979240 (not res!1612306)) b!3979245))

(assert (= (and d!1177931 (not res!1612303)) b!3979237))

(assert (= (and b!3979237 res!1612305) b!3979243))

(assert (= (and b!3979243 res!1612300) b!3979244))

(assert (= (and b!3979244 res!1612302) b!3979238))

(assert (= (and b!3979238 res!1612301) b!3979241))

(assert (= (and b!3979241 res!1612304) b!3979239))

(declare-fun m!4551801 () Bool)

(assert (=> b!3979245 m!4551801))

(assert (=> b!3979245 m!4551459))

(assert (=> b!3979245 m!4551801))

(assert (=> b!3979245 m!4551459))

(declare-fun m!4551803 () Bool)

(assert (=> b!3979245 m!4551803))

(declare-fun m!4551805 () Bool)

(assert (=> b!3979245 m!4551805))

(declare-fun m!4551807 () Bool)

(assert (=> b!3979243 m!4551807))

(declare-fun m!4551809 () Bool)

(assert (=> b!3979243 m!4551809))

(assert (=> b!3979243 m!4551809))

(declare-fun m!4551811 () Bool)

(assert (=> b!3979243 m!4551811))

(assert (=> b!3979243 m!4551811))

(declare-fun m!4551813 () Bool)

(assert (=> b!3979243 m!4551813))

(declare-fun m!4551815 () Bool)

(assert (=> b!3979240 m!4551815))

(declare-fun m!4551817 () Bool)

(assert (=> b!3979240 m!4551817))

(declare-fun m!4551819 () Bool)

(assert (=> b!3979240 m!4551819))

(assert (=> b!3979240 m!4551459))

(assert (=> b!3979240 m!4551801))

(assert (=> b!3979240 m!4551459))

(assert (=> b!3979240 m!4551803))

(declare-fun m!4551821 () Bool)

(assert (=> b!3979240 m!4551821))

(assert (=> b!3979240 m!4551817))

(assert (=> b!3979240 m!4551801))

(assert (=> b!3979240 m!4551817))

(declare-fun m!4551823 () Bool)

(assert (=> b!3979240 m!4551823))

(assert (=> b!3979240 m!4551817))

(declare-fun m!4551825 () Bool)

(assert (=> b!3979240 m!4551825))

(declare-fun m!4551827 () Bool)

(assert (=> d!1177931 m!4551827))

(declare-fun m!4551829 () Bool)

(assert (=> d!1177931 m!4551829))

(declare-fun m!4551831 () Bool)

(assert (=> d!1177931 m!4551831))

(assert (=> d!1177931 m!4551379))

(assert (=> b!3979239 m!4551807))

(declare-fun m!4551833 () Bool)

(assert (=> b!3979239 m!4551833))

(assert (=> b!3979241 m!4551807))

(declare-fun m!4551835 () Bool)

(assert (=> b!3979241 m!4551835))

(assert (=> b!3979241 m!4551835))

(declare-fun m!4551837 () Bool)

(assert (=> b!3979241 m!4551837))

(assert (=> b!3979237 m!4551807))

(assert (=> b!3979237 m!4551809))

(assert (=> b!3979237 m!4551809))

(assert (=> b!3979237 m!4551811))

(assert (=> b!3979237 m!4551811))

(declare-fun m!4551839 () Bool)

(assert (=> b!3979237 m!4551839))

(assert (=> b!3979238 m!4551807))

(assert (=> b!3979244 m!4551807))

(declare-fun m!4551841 () Bool)

(assert (=> b!3979244 m!4551841))

(assert (=> b!3979244 m!4551459))

(assert (=> b!3979002 d!1177931))

(declare-fun d!1177941 () Bool)

(declare-fun dynLambda!18100 (Int BalanceConc!25440) TokenValue!6942)

(assert (=> d!1177941 (= (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (seqFromList!4951 lt!1396805)) (dynLambda!18100 (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (seqFromList!4951 lt!1396805)))))

(declare-fun b_lambda!116243 () Bool)

(assert (=> (not b_lambda!116243) (not d!1177941)))

(declare-fun t!331229 () Bool)

(declare-fun tb!239829 () Bool)

(assert (=> (and b!3979023 (= (toValue!9200 (transformation!6712 (h!47956 rules!2999))) (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331229) tb!239829))

(declare-fun result!290514 () Bool)

(assert (=> tb!239829 (= result!290514 (inv!21 (dynLambda!18100 (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))) (seqFromList!4951 lt!1396805))))))

(declare-fun m!4551871 () Bool)

(assert (=> tb!239829 m!4551871))

(assert (=> d!1177941 t!331229))

(declare-fun b_and!305871 () Bool)

(assert (= b_and!305855 (and (=> t!331229 result!290514) b_and!305871)))

(declare-fun t!331231 () Bool)

(declare-fun tb!239831 () Bool)

(assert (=> (and b!3979005 (= (toValue!9200 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331231) tb!239831))

(declare-fun result!290518 () Bool)

(assert (= result!290518 result!290514))

(assert (=> d!1177941 t!331231))

(declare-fun b_and!305873 () Bool)

(assert (= b_and!305859 (and (=> t!331231 result!290518) b_and!305873)))

(assert (=> d!1177941 m!4551363))

(declare-fun m!4551881 () Bool)

(assert (=> d!1177941 m!4551881))

(assert (=> b!3979002 d!1177941))

(declare-fun d!1177947 () Bool)

(declare-fun list!15787 (Conc!12923) List!42658)

(assert (=> d!1177947 (= (list!15786 (charsOf!4528 (_1!24016 (v!39473 lt!1396838)))) (list!15787 (c!689484 (charsOf!4528 (_1!24016 (v!39473 lt!1396838))))))))

(declare-fun bs!587875 () Bool)

(assert (= bs!587875 d!1177947))

(declare-fun m!4551903 () Bool)

(assert (=> bs!587875 m!4551903))

(assert (=> b!3979002 d!1177947))

(declare-fun d!1177953 () Bool)

(assert (=> d!1177953 (ruleValid!2644 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))

(declare-fun lt!1396960 () Unit!61189)

(declare-fun choose!23861 (LexerInterface!6301 Rule!13224 List!42660) Unit!61189)

(assert (=> d!1177953 (= lt!1396960 (choose!23861 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) rules!2999))))

(declare-fun contains!8467 (List!42660 Rule!13224) Bool)

(assert (=> d!1177953 (contains!8467 rules!2999 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))

(assert (=> d!1177953 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1718 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) rules!2999) lt!1396960)))

(declare-fun bs!587877 () Bool)

(assert (= bs!587877 d!1177953))

(assert (=> bs!587877 m!4551379))

(declare-fun m!4551927 () Bool)

(assert (=> bs!587877 m!4551927))

(declare-fun m!4551929 () Bool)

(assert (=> bs!587877 m!4551929))

(assert (=> b!3979002 d!1177953))

(declare-fun b!3979284 () Bool)

(declare-fun e!2465859 () Bool)

(assert (=> b!3979284 (= e!2465859 (>= (size!31819 (++!11114 lt!1396805 newSuffixResult!27)) (size!31819 lt!1396805)))))

(declare-fun d!1177961 () Bool)

(assert (=> d!1177961 e!2465859))

(declare-fun res!1612333 () Bool)

(assert (=> d!1177961 (=> res!1612333 e!2465859)))

(declare-fun lt!1396961 () Bool)

(assert (=> d!1177961 (= res!1612333 (not lt!1396961))))

(declare-fun e!2465860 () Bool)

(assert (=> d!1177961 (= lt!1396961 e!2465860)))

(declare-fun res!1612332 () Bool)

(assert (=> d!1177961 (=> res!1612332 e!2465860)))

(assert (=> d!1177961 (= res!1612332 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1177961 (= (isPrefix!3799 lt!1396805 (++!11114 lt!1396805 newSuffixResult!27)) lt!1396961)))

(declare-fun b!3979281 () Bool)

(declare-fun e!2465858 () Bool)

(assert (=> b!3979281 (= e!2465860 e!2465858)))

(declare-fun res!1612330 () Bool)

(assert (=> b!3979281 (=> (not res!1612330) (not e!2465858))))

(assert (=> b!3979281 (= res!1612330 (not ((_ is Nil!42534) (++!11114 lt!1396805 newSuffixResult!27))))))

(declare-fun b!3979283 () Bool)

(assert (=> b!3979283 (= e!2465858 (isPrefix!3799 (tail!6207 lt!1396805) (tail!6207 (++!11114 lt!1396805 newSuffixResult!27))))))

(declare-fun b!3979282 () Bool)

(declare-fun res!1612331 () Bool)

(assert (=> b!3979282 (=> (not res!1612331) (not e!2465858))))

(assert (=> b!3979282 (= res!1612331 (= (head!8475 lt!1396805) (head!8475 (++!11114 lt!1396805 newSuffixResult!27))))))

(assert (= (and d!1177961 (not res!1612332)) b!3979281))

(assert (= (and b!3979281 res!1612330) b!3979282))

(assert (= (and b!3979282 res!1612331) b!3979283))

(assert (= (and d!1177961 (not res!1612333)) b!3979284))

(assert (=> b!3979284 m!4551369))

(declare-fun m!4551931 () Bool)

(assert (=> b!3979284 m!4551931))

(assert (=> b!3979284 m!4551395))

(assert (=> b!3979283 m!4551703))

(assert (=> b!3979283 m!4551369))

(declare-fun m!4551933 () Bool)

(assert (=> b!3979283 m!4551933))

(assert (=> b!3979283 m!4551703))

(assert (=> b!3979283 m!4551933))

(declare-fun m!4551935 () Bool)

(assert (=> b!3979283 m!4551935))

(assert (=> b!3979282 m!4551709))

(assert (=> b!3979282 m!4551369))

(declare-fun m!4551937 () Bool)

(assert (=> b!3979282 m!4551937))

(assert (=> b!3979002 d!1177961))

(declare-fun d!1177963 () Bool)

(declare-fun lt!1396962 () Int)

(assert (=> d!1177963 (>= lt!1396962 0)))

(declare-fun e!2465861 () Int)

(assert (=> d!1177963 (= lt!1396962 e!2465861)))

(declare-fun c!689528 () Bool)

(assert (=> d!1177963 (= c!689528 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1177963 (= (size!31819 lt!1396805) lt!1396962)))

(declare-fun b!3979285 () Bool)

(assert (=> b!3979285 (= e!2465861 0)))

(declare-fun b!3979286 () Bool)

(assert (=> b!3979286 (= e!2465861 (+ 1 (size!31819 (t!331217 lt!1396805))))))

(assert (= (and d!1177963 c!689528) b!3979285))

(assert (= (and d!1177963 (not c!689528)) b!3979286))

(declare-fun m!4551939 () Bool)

(assert (=> b!3979286 m!4551939))

(assert (=> b!3979002 d!1177963))

(declare-fun d!1177965 () Bool)

(assert (=> d!1177965 (= (maxPrefixOneRule!2633 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838))) lt!1396807) (Some!9125 (tuple2!41765 (Token!12563 (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (seqFromList!4951 lt!1396805)) (rule!9714 (_1!24016 (v!39473 lt!1396838))) (size!31819 lt!1396805) lt!1396805) (_2!24016 (v!39473 lt!1396838)))))))

(declare-fun lt!1396979 () Unit!61189)

(declare-fun choose!23862 (LexerInterface!6301 List!42660 List!42658 List!42658 List!42658 Rule!13224) Unit!61189)

(assert (=> d!1177965 (= lt!1396979 (choose!23862 thiss!21717 rules!2999 lt!1396805 lt!1396807 (_2!24016 (v!39473 lt!1396838)) (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))

(assert (=> d!1177965 (not (isEmpty!25432 rules!2999))))

(assert (=> d!1177965 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1455 thiss!21717 rules!2999 lt!1396805 lt!1396807 (_2!24016 (v!39473 lt!1396838)) (rule!9714 (_1!24016 (v!39473 lt!1396838)))) lt!1396979)))

(declare-fun bs!587882 () Bool)

(assert (= bs!587882 d!1177965))

(assert (=> bs!587882 m!4551363))

(assert (=> bs!587882 m!4551385))

(assert (=> bs!587882 m!4551363))

(assert (=> bs!587882 m!4551383))

(assert (=> bs!587882 m!4551455))

(assert (=> bs!587882 m!4551395))

(declare-fun m!4552017 () Bool)

(assert (=> bs!587882 m!4552017))

(assert (=> b!3979002 d!1177965))

(declare-fun d!1177991 () Bool)

(declare-fun res!1612363 () Bool)

(declare-fun e!2465884 () Bool)

(assert (=> d!1177991 (=> (not res!1612363) (not e!2465884))))

(declare-fun validRegex!5273 (Regex!11617) Bool)

(assert (=> d!1177991 (= res!1612363 (validRegex!5273 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838))))))))

(assert (=> d!1177991 (= (ruleValid!2644 thiss!21717 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) e!2465884)))

(declare-fun b!3979327 () Bool)

(declare-fun res!1612364 () Bool)

(assert (=> b!3979327 (=> (not res!1612364) (not e!2465884))))

(declare-fun nullable!4073 (Regex!11617) Bool)

(assert (=> b!3979327 (= res!1612364 (not (nullable!4073 (regex!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))))))

(declare-fun b!3979328 () Bool)

(assert (=> b!3979328 (= e!2465884 (not (= (tag!7572 (rule!9714 (_1!24016 (v!39473 lt!1396838)))) (String!48429 ""))))))

(assert (= (and d!1177991 res!1612363) b!3979327))

(assert (= (and b!3979327 res!1612364) b!3979328))

(declare-fun m!4552019 () Bool)

(assert (=> d!1177991 m!4552019))

(declare-fun m!4552021 () Bool)

(assert (=> b!3979327 m!4552021))

(assert (=> b!3979002 d!1177991))

(declare-fun d!1177993 () Bool)

(assert (=> d!1177993 (= (size!31818 (_1!24016 (v!39473 lt!1396838))) (size!31819 (originalCharacters!7312 (_1!24016 (v!39473 lt!1396838)))))))

(declare-fun Unit!61194 () Unit!61189)

(assert (=> d!1177993 (= (lemmaCharactersSize!1307 (_1!24016 (v!39473 lt!1396838))) Unit!61194)))

(declare-fun bs!587883 () Bool)

(assert (= bs!587883 d!1177993))

(declare-fun m!4552023 () Bool)

(assert (=> bs!587883 m!4552023))

(assert (=> b!3979002 d!1177993))

(declare-fun d!1177995 () Bool)

(declare-fun lt!1396980 () Int)

(assert (=> d!1177995 (>= lt!1396980 0)))

(declare-fun e!2465886 () Int)

(assert (=> d!1177995 (= lt!1396980 e!2465886)))

(declare-fun c!689532 () Bool)

(assert (=> d!1177995 (= c!689532 ((_ is Nil!42534) suffix!1299))))

(assert (=> d!1177995 (= (size!31819 suffix!1299) lt!1396980)))

(declare-fun b!3979330 () Bool)

(assert (=> b!3979330 (= e!2465886 0)))

(declare-fun b!3979331 () Bool)

(assert (=> b!3979331 (= e!2465886 (+ 1 (size!31819 (t!331217 suffix!1299))))))

(assert (= (and d!1177995 c!689532) b!3979330))

(assert (= (and d!1177995 (not c!689532)) b!3979331))

(declare-fun m!4552029 () Bool)

(assert (=> b!3979331 m!4552029))

(assert (=> b!3979024 d!1177995))

(declare-fun d!1177999 () Bool)

(declare-fun lt!1396981 () Int)

(assert (=> d!1177999 (>= lt!1396981 0)))

(declare-fun e!2465887 () Int)

(assert (=> d!1177999 (= lt!1396981 e!2465887)))

(declare-fun c!689533 () Bool)

(assert (=> d!1177999 (= c!689533 ((_ is Nil!42534) newSuffix!27))))

(assert (=> d!1177999 (= (size!31819 newSuffix!27) lt!1396981)))

(declare-fun b!3979332 () Bool)

(assert (=> b!3979332 (= e!2465887 0)))

(declare-fun b!3979333 () Bool)

(assert (=> b!3979333 (= e!2465887 (+ 1 (size!31819 (t!331217 newSuffix!27))))))

(assert (= (and d!1177999 c!689533) b!3979332))

(assert (= (and d!1177999 (not c!689533)) b!3979333))

(declare-fun m!4552031 () Bool)

(assert (=> b!3979333 m!4552031))

(assert (=> b!3979024 d!1177999))

(declare-fun b!3979337 () Bool)

(declare-fun e!2465889 () Bool)

(assert (=> b!3979337 (= e!2465889 (>= (size!31819 suffix!1299) (size!31819 newSuffix!27)))))

(declare-fun d!1178001 () Bool)

(assert (=> d!1178001 e!2465889))

(declare-fun res!1612369 () Bool)

(assert (=> d!1178001 (=> res!1612369 e!2465889)))

(declare-fun lt!1396982 () Bool)

(assert (=> d!1178001 (= res!1612369 (not lt!1396982))))

(declare-fun e!2465890 () Bool)

(assert (=> d!1178001 (= lt!1396982 e!2465890)))

(declare-fun res!1612368 () Bool)

(assert (=> d!1178001 (=> res!1612368 e!2465890)))

(assert (=> d!1178001 (= res!1612368 ((_ is Nil!42534) newSuffix!27))))

(assert (=> d!1178001 (= (isPrefix!3799 newSuffix!27 suffix!1299) lt!1396982)))

(declare-fun b!3979334 () Bool)

(declare-fun e!2465888 () Bool)

(assert (=> b!3979334 (= e!2465890 e!2465888)))

(declare-fun res!1612366 () Bool)

(assert (=> b!3979334 (=> (not res!1612366) (not e!2465888))))

(assert (=> b!3979334 (= res!1612366 (not ((_ is Nil!42534) suffix!1299)))))

(declare-fun b!3979336 () Bool)

(assert (=> b!3979336 (= e!2465888 (isPrefix!3799 (tail!6207 newSuffix!27) (tail!6207 suffix!1299)))))

(declare-fun b!3979335 () Bool)

(declare-fun res!1612367 () Bool)

(assert (=> b!3979335 (=> (not res!1612367) (not e!2465888))))

(assert (=> b!3979335 (= res!1612367 (= (head!8475 newSuffix!27) (head!8475 suffix!1299)))))

(assert (= (and d!1178001 (not res!1612368)) b!3979334))

(assert (= (and b!3979334 res!1612366) b!3979335))

(assert (= (and b!3979335 res!1612367) b!3979336))

(assert (= (and d!1178001 (not res!1612369)) b!3979337))

(assert (=> b!3979337 m!4551461))

(assert (=> b!3979337 m!4551463))

(declare-fun m!4552033 () Bool)

(assert (=> b!3979336 m!4552033))

(declare-fun m!4552035 () Bool)

(assert (=> b!3979336 m!4552035))

(assert (=> b!3979336 m!4552033))

(assert (=> b!3979336 m!4552035))

(declare-fun m!4552037 () Bool)

(assert (=> b!3979336 m!4552037))

(declare-fun m!4552039 () Bool)

(assert (=> b!3979335 m!4552039))

(declare-fun m!4552041 () Bool)

(assert (=> b!3979335 m!4552041))

(assert (=> b!3979020 d!1178001))

(declare-fun d!1178003 () Bool)

(declare-fun lt!1396983 () Int)

(assert (=> d!1178003 (>= lt!1396983 0)))

(declare-fun e!2465891 () Int)

(assert (=> d!1178003 (= lt!1396983 e!2465891)))

(declare-fun c!689534 () Bool)

(assert (=> d!1178003 (= c!689534 ((_ is Nil!42534) (originalCharacters!7312 token!484)))))

(assert (=> d!1178003 (= (size!31819 (originalCharacters!7312 token!484)) lt!1396983)))

(declare-fun b!3979338 () Bool)

(assert (=> b!3979338 (= e!2465891 0)))

(declare-fun b!3979339 () Bool)

(assert (=> b!3979339 (= e!2465891 (+ 1 (size!31819 (t!331217 (originalCharacters!7312 token!484)))))))

(assert (= (and d!1178003 c!689534) b!3979338))

(assert (= (and d!1178003 (not c!689534)) b!3979339))

(declare-fun m!4552043 () Bool)

(assert (=> b!3979339 m!4552043))

(assert (=> b!3978999 d!1178003))

(declare-fun bm!285700 () Bool)

(declare-fun call!285705 () Bool)

(assert (=> bm!285700 (= call!285705 (isEmpty!25435 lt!1396803))))

(declare-fun b!3979392 () Bool)

(declare-fun e!2465925 () Bool)

(assert (=> b!3979392 (= e!2465925 (nullable!4073 (regex!6712 (rule!9714 token!484))))))

(declare-fun b!3979393 () Bool)

(declare-fun res!1612406 () Bool)

(declare-fun e!2465923 () Bool)

(assert (=> b!3979393 (=> (not res!1612406) (not e!2465923))))

(assert (=> b!3979393 (= res!1612406 (isEmpty!25435 (tail!6207 lt!1396803)))))

(declare-fun b!3979394 () Bool)

(declare-fun e!2465922 () Bool)

(declare-fun e!2465926 () Bool)

(assert (=> b!3979394 (= e!2465922 e!2465926)))

(declare-fun c!689547 () Bool)

(assert (=> b!3979394 (= c!689547 ((_ is EmptyLang!11617) (regex!6712 (rule!9714 token!484))))))

(declare-fun b!3979395 () Bool)

(declare-fun res!1612403 () Bool)

(declare-fun e!2465924 () Bool)

(assert (=> b!3979395 (=> res!1612403 e!2465924)))

(assert (=> b!3979395 (= res!1612403 e!2465923)))

(declare-fun res!1612408 () Bool)

(assert (=> b!3979395 (=> (not res!1612408) (not e!2465923))))

(declare-fun lt!1397002 () Bool)

(assert (=> b!3979395 (= res!1612408 lt!1397002)))

(declare-fun b!3979396 () Bool)

(assert (=> b!3979396 (= e!2465926 (not lt!1397002))))

(declare-fun b!3979397 () Bool)

(assert (=> b!3979397 (= e!2465923 (= (head!8475 lt!1396803) (c!689485 (regex!6712 (rule!9714 token!484)))))))

(declare-fun b!3979398 () Bool)

(declare-fun derivativeStep!3484 (Regex!11617 C!23420) Regex!11617)

(assert (=> b!3979398 (= e!2465925 (matchR!5594 (derivativeStep!3484 (regex!6712 (rule!9714 token!484)) (head!8475 lt!1396803)) (tail!6207 lt!1396803)))))

(declare-fun b!3979399 () Bool)

(declare-fun res!1612407 () Bool)

(assert (=> b!3979399 (=> res!1612407 e!2465924)))

(assert (=> b!3979399 (= res!1612407 (not ((_ is ElementMatch!11617) (regex!6712 (rule!9714 token!484)))))))

(assert (=> b!3979399 (= e!2465926 e!2465924)))

(declare-fun b!3979401 () Bool)

(declare-fun res!1612405 () Bool)

(declare-fun e!2465921 () Bool)

(assert (=> b!3979401 (=> res!1612405 e!2465921)))

(assert (=> b!3979401 (= res!1612405 (not (isEmpty!25435 (tail!6207 lt!1396803))))))

(declare-fun b!3979403 () Bool)

(assert (=> b!3979403 (= e!2465921 (not (= (head!8475 lt!1396803) (c!689485 (regex!6712 (rule!9714 token!484))))))))

(declare-fun d!1178005 () Bool)

(assert (=> d!1178005 e!2465922))

(declare-fun c!689546 () Bool)

(assert (=> d!1178005 (= c!689546 ((_ is EmptyExpr!11617) (regex!6712 (rule!9714 token!484))))))

(assert (=> d!1178005 (= lt!1397002 e!2465925)))

(declare-fun c!689545 () Bool)

(assert (=> d!1178005 (= c!689545 (isEmpty!25435 lt!1396803))))

(assert (=> d!1178005 (validRegex!5273 (regex!6712 (rule!9714 token!484)))))

(assert (=> d!1178005 (= (matchR!5594 (regex!6712 (rule!9714 token!484)) lt!1396803) lt!1397002)))

(declare-fun b!3979405 () Bool)

(declare-fun res!1612404 () Bool)

(assert (=> b!3979405 (=> (not res!1612404) (not e!2465923))))

(assert (=> b!3979405 (= res!1612404 (not call!285705))))

(declare-fun b!3979407 () Bool)

(assert (=> b!3979407 (= e!2465922 (= lt!1397002 call!285705))))

(declare-fun b!3979408 () Bool)

(declare-fun e!2465920 () Bool)

(assert (=> b!3979408 (= e!2465920 e!2465921)))

(declare-fun res!1612402 () Bool)

(assert (=> b!3979408 (=> res!1612402 e!2465921)))

(assert (=> b!3979408 (= res!1612402 call!285705)))

(declare-fun b!3979409 () Bool)

(assert (=> b!3979409 (= e!2465924 e!2465920)))

(declare-fun res!1612401 () Bool)

(assert (=> b!3979409 (=> (not res!1612401) (not e!2465920))))

(assert (=> b!3979409 (= res!1612401 (not lt!1397002))))

(assert (= (and d!1178005 c!689545) b!3979392))

(assert (= (and d!1178005 (not c!689545)) b!3979398))

(assert (= (and d!1178005 c!689546) b!3979407))

(assert (= (and d!1178005 (not c!689546)) b!3979394))

(assert (= (and b!3979394 c!689547) b!3979396))

(assert (= (and b!3979394 (not c!689547)) b!3979399))

(assert (= (and b!3979399 (not res!1612407)) b!3979395))

(assert (= (and b!3979395 res!1612408) b!3979405))

(assert (= (and b!3979405 res!1612404) b!3979393))

(assert (= (and b!3979393 res!1612406) b!3979397))

(assert (= (and b!3979395 (not res!1612403)) b!3979409))

(assert (= (and b!3979409 res!1612401) b!3979408))

(assert (= (and b!3979408 (not res!1612402)) b!3979401))

(assert (= (and b!3979401 (not res!1612405)) b!3979403))

(assert (= (or b!3979407 b!3979405 b!3979408) bm!285700))

(declare-fun m!4552157 () Bool)

(assert (=> b!3979392 m!4552157))

(assert (=> b!3979403 m!4551567))

(assert (=> b!3979398 m!4551567))

(assert (=> b!3979398 m!4551567))

(declare-fun m!4552159 () Bool)

(assert (=> b!3979398 m!4552159))

(assert (=> b!3979398 m!4551563))

(assert (=> b!3979398 m!4552159))

(assert (=> b!3979398 m!4551563))

(declare-fun m!4552161 () Bool)

(assert (=> b!3979398 m!4552161))

(assert (=> b!3979393 m!4551563))

(assert (=> b!3979393 m!4551563))

(declare-fun m!4552163 () Bool)

(assert (=> b!3979393 m!4552163))

(assert (=> b!3979401 m!4551563))

(assert (=> b!3979401 m!4551563))

(assert (=> b!3979401 m!4552163))

(declare-fun m!4552165 () Bool)

(assert (=> bm!285700 m!4552165))

(assert (=> d!1178005 m!4552165))

(declare-fun m!4552167 () Bool)

(assert (=> d!1178005 m!4552167))

(assert (=> b!3979397 m!4551567))

(assert (=> b!3979022 d!1178005))

(declare-fun b!3979415 () Bool)

(declare-fun e!2465931 () Bool)

(assert (=> b!3979415 (= e!2465931 (>= (size!31819 lt!1396807) (size!31819 lt!1396803)))))

(declare-fun d!1178039 () Bool)

(assert (=> d!1178039 e!2465931))

(declare-fun res!1612414 () Bool)

(assert (=> d!1178039 (=> res!1612414 e!2465931)))

(declare-fun lt!1397005 () Bool)

(assert (=> d!1178039 (= res!1612414 (not lt!1397005))))

(declare-fun e!2465932 () Bool)

(assert (=> d!1178039 (= lt!1397005 e!2465932)))

(declare-fun res!1612413 () Bool)

(assert (=> d!1178039 (=> res!1612413 e!2465932)))

(assert (=> d!1178039 (= res!1612413 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178039 (= (isPrefix!3799 lt!1396803 lt!1396807) lt!1397005)))

(declare-fun b!3979412 () Bool)

(declare-fun e!2465930 () Bool)

(assert (=> b!3979412 (= e!2465932 e!2465930)))

(declare-fun res!1612411 () Bool)

(assert (=> b!3979412 (=> (not res!1612411) (not e!2465930))))

(assert (=> b!3979412 (= res!1612411 (not ((_ is Nil!42534) lt!1396807)))))

(declare-fun b!3979414 () Bool)

(assert (=> b!3979414 (= e!2465930 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 lt!1396807)))))

(declare-fun b!3979413 () Bool)

(declare-fun res!1612412 () Bool)

(assert (=> b!3979413 (=> (not res!1612412) (not e!2465930))))

(assert (=> b!3979413 (= res!1612412 (= (head!8475 lt!1396803) (head!8475 lt!1396807)))))

(assert (= (and d!1178039 (not res!1612413)) b!3979412))

(assert (= (and b!3979412 res!1612411) b!3979413))

(assert (= (and b!3979413 res!1612412) b!3979414))

(assert (= (and d!1178039 (not res!1612414)) b!3979415))

(assert (=> b!3979415 m!4551459))

(assert (=> b!3979415 m!4551437))

(assert (=> b!3979414 m!4551563))

(declare-fun m!4552169 () Bool)

(assert (=> b!3979414 m!4552169))

(assert (=> b!3979414 m!4551563))

(assert (=> b!3979414 m!4552169))

(declare-fun m!4552171 () Bool)

(assert (=> b!3979414 m!4552171))

(assert (=> b!3979413 m!4551567))

(declare-fun m!4552173 () Bool)

(assert (=> b!3979413 m!4552173))

(assert (=> b!3979022 d!1178039))

(declare-fun d!1178041 () Bool)

(assert (=> d!1178041 (isPrefix!3799 lt!1396803 (++!11114 prefix!494 newSuffix!27))))

(declare-fun lt!1397008 () Unit!61189)

(declare-fun choose!23863 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> d!1178041 (= lt!1397008 (choose!23863 lt!1396803 prefix!494 newSuffix!27))))

(assert (=> d!1178041 (isPrefix!3799 lt!1396803 prefix!494)))

(assert (=> d!1178041 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396803 prefix!494 newSuffix!27) lt!1397008)))

(declare-fun bs!587891 () Bool)

(assert (= bs!587891 d!1178041))

(assert (=> bs!587891 m!4551445))

(assert (=> bs!587891 m!4551445))

(declare-fun m!4552175 () Bool)

(assert (=> bs!587891 m!4552175))

(declare-fun m!4552177 () Bool)

(assert (=> bs!587891 m!4552177))

(assert (=> bs!587891 m!4551433))

(assert (=> b!3979022 d!1178041))

(declare-fun d!1178043 () Bool)

(assert (=> d!1178043 (isPrefix!3799 lt!1396803 (++!11114 prefix!494 suffix!1299))))

(declare-fun lt!1397009 () Unit!61189)

(assert (=> d!1178043 (= lt!1397009 (choose!23863 lt!1396803 prefix!494 suffix!1299))))

(assert (=> d!1178043 (isPrefix!3799 lt!1396803 prefix!494)))

(assert (=> d!1178043 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396803 prefix!494 suffix!1299) lt!1397009)))

(declare-fun bs!587892 () Bool)

(assert (= bs!587892 d!1178043))

(assert (=> bs!587892 m!4551481))

(assert (=> bs!587892 m!4551481))

(declare-fun m!4552179 () Bool)

(assert (=> bs!587892 m!4552179))

(declare-fun m!4552181 () Bool)

(assert (=> bs!587892 m!4552181))

(assert (=> bs!587892 m!4551433))

(assert (=> b!3979022 d!1178043))

(declare-fun d!1178045 () Bool)

(declare-fun res!1612435 () Bool)

(declare-fun e!2465949 () Bool)

(assert (=> d!1178045 (=> (not res!1612435) (not e!2465949))))

(assert (=> d!1178045 (= res!1612435 (not (isEmpty!25435 (originalCharacters!7312 token!484))))))

(assert (=> d!1178045 (= (inv!56824 token!484) e!2465949)))

(declare-fun b!3979448 () Bool)

(declare-fun res!1612436 () Bool)

(assert (=> b!3979448 (=> (not res!1612436) (not e!2465949))))

(assert (=> b!3979448 (= res!1612436 (= (originalCharacters!7312 token!484) (list!15786 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (value!211926 token!484)))))))

(declare-fun b!3979449 () Bool)

(assert (=> b!3979449 (= e!2465949 (= (size!31818 token!484) (size!31819 (originalCharacters!7312 token!484))))))

(assert (= (and d!1178045 res!1612435) b!3979448))

(assert (= (and b!3979448 res!1612436) b!3979449))

(declare-fun b_lambda!116253 () Bool)

(assert (=> (not b_lambda!116253) (not b!3979448)))

(declare-fun t!331245 () Bool)

(declare-fun tb!239845 () Bool)

(assert (=> (and b!3979023 (= (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toChars!9059 (transformation!6712 (rule!9714 token!484)))) t!331245) tb!239845))

(declare-fun b!3979450 () Bool)

(declare-fun e!2465950 () Bool)

(declare-fun tp!1213144 () Bool)

(assert (=> b!3979450 (= e!2465950 (and (inv!56825 (c!689484 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (value!211926 token!484)))) tp!1213144))))

(declare-fun result!290534 () Bool)

(assert (=> tb!239845 (= result!290534 (and (inv!56826 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (value!211926 token!484))) e!2465950))))

(assert (= tb!239845 b!3979450))

(declare-fun m!4552183 () Bool)

(assert (=> b!3979450 m!4552183))

(declare-fun m!4552185 () Bool)

(assert (=> tb!239845 m!4552185))

(assert (=> b!3979448 t!331245))

(declare-fun b_and!305891 () Bool)

(assert (= b_and!305867 (and (=> t!331245 result!290534) b_and!305891)))

(declare-fun t!331247 () Bool)

(declare-fun tb!239847 () Bool)

(assert (=> (and b!3979005 (= (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toChars!9059 (transformation!6712 (rule!9714 token!484)))) t!331247) tb!239847))

(declare-fun result!290536 () Bool)

(assert (= result!290536 result!290534))

(assert (=> b!3979448 t!331247))

(declare-fun b_and!305893 () Bool)

(assert (= b_and!305869 (and (=> t!331247 result!290536) b_and!305893)))

(declare-fun m!4552187 () Bool)

(assert (=> d!1178045 m!4552187))

(declare-fun m!4552189 () Bool)

(assert (=> b!3979448 m!4552189))

(assert (=> b!3979448 m!4552189))

(declare-fun m!4552191 () Bool)

(assert (=> b!3979448 m!4552191))

(assert (=> b!3979449 m!4551457))

(assert (=> start!374484 d!1178045))

(declare-fun b!3979454 () Bool)

(declare-fun e!2465952 () Bool)

(assert (=> b!3979454 (= e!2465952 (>= (size!31819 lt!1396801) (size!31819 lt!1396805)))))

(declare-fun d!1178047 () Bool)

(assert (=> d!1178047 e!2465952))

(declare-fun res!1612440 () Bool)

(assert (=> d!1178047 (=> res!1612440 e!2465952)))

(declare-fun lt!1397012 () Bool)

(assert (=> d!1178047 (= res!1612440 (not lt!1397012))))

(declare-fun e!2465953 () Bool)

(assert (=> d!1178047 (= lt!1397012 e!2465953)))

(declare-fun res!1612439 () Bool)

(assert (=> d!1178047 (=> res!1612439 e!2465953)))

(assert (=> d!1178047 (= res!1612439 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1178047 (= (isPrefix!3799 lt!1396805 lt!1396801) lt!1397012)))

(declare-fun b!3979451 () Bool)

(declare-fun e!2465951 () Bool)

(assert (=> b!3979451 (= e!2465953 e!2465951)))

(declare-fun res!1612437 () Bool)

(assert (=> b!3979451 (=> (not res!1612437) (not e!2465951))))

(assert (=> b!3979451 (= res!1612437 (not ((_ is Nil!42534) lt!1396801)))))

(declare-fun b!3979453 () Bool)

(assert (=> b!3979453 (= e!2465951 (isPrefix!3799 (tail!6207 lt!1396805) (tail!6207 lt!1396801)))))

(declare-fun b!3979452 () Bool)

(declare-fun res!1612438 () Bool)

(assert (=> b!3979452 (=> (not res!1612438) (not e!2465951))))

(assert (=> b!3979452 (= res!1612438 (= (head!8475 lt!1396805) (head!8475 lt!1396801)))))

(assert (= (and d!1178047 (not res!1612439)) b!3979451))

(assert (= (and b!3979451 res!1612437) b!3979452))

(assert (= (and b!3979452 res!1612438) b!3979453))

(assert (= (and d!1178047 (not res!1612440)) b!3979454))

(assert (=> b!3979454 m!4551529))

(assert (=> b!3979454 m!4551395))

(assert (=> b!3979453 m!4551703))

(assert (=> b!3979453 m!4551533))

(assert (=> b!3979453 m!4551703))

(assert (=> b!3979453 m!4551533))

(declare-fun m!4552193 () Bool)

(assert (=> b!3979453 m!4552193))

(assert (=> b!3979452 m!4551709))

(assert (=> b!3979452 m!4551539))

(assert (=> b!3979000 d!1178047))

(declare-fun b!3979458 () Bool)

(declare-fun e!2465955 () Bool)

(assert (=> b!3979458 (= e!2465955 (>= (size!31819 lt!1396828) (size!31819 lt!1396805)))))

(declare-fun d!1178049 () Bool)

(assert (=> d!1178049 e!2465955))

(declare-fun res!1612444 () Bool)

(assert (=> d!1178049 (=> res!1612444 e!2465955)))

(declare-fun lt!1397013 () Bool)

(assert (=> d!1178049 (= res!1612444 (not lt!1397013))))

(declare-fun e!2465956 () Bool)

(assert (=> d!1178049 (= lt!1397013 e!2465956)))

(declare-fun res!1612443 () Bool)

(assert (=> d!1178049 (=> res!1612443 e!2465956)))

(assert (=> d!1178049 (= res!1612443 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1178049 (= (isPrefix!3799 lt!1396805 lt!1396828) lt!1397013)))

(declare-fun b!3979455 () Bool)

(declare-fun e!2465954 () Bool)

(assert (=> b!3979455 (= e!2465956 e!2465954)))

(declare-fun res!1612441 () Bool)

(assert (=> b!3979455 (=> (not res!1612441) (not e!2465954))))

(assert (=> b!3979455 (= res!1612441 (not ((_ is Nil!42534) lt!1396828)))))

(declare-fun b!3979457 () Bool)

(assert (=> b!3979457 (= e!2465954 (isPrefix!3799 (tail!6207 lt!1396805) (tail!6207 lt!1396828)))))

(declare-fun b!3979456 () Bool)

(declare-fun res!1612442 () Bool)

(assert (=> b!3979456 (=> (not res!1612442) (not e!2465954))))

(assert (=> b!3979456 (= res!1612442 (= (head!8475 lt!1396805) (head!8475 lt!1396828)))))

(assert (= (and d!1178049 (not res!1612443)) b!3979455))

(assert (= (and b!3979455 res!1612441) b!3979456))

(assert (= (and b!3979456 res!1612442) b!3979457))

(assert (= (and d!1178049 (not res!1612444)) b!3979458))

(declare-fun m!4552195 () Bool)

(assert (=> b!3979458 m!4552195))

(assert (=> b!3979458 m!4551395))

(assert (=> b!3979457 m!4551703))

(declare-fun m!4552197 () Bool)

(assert (=> b!3979457 m!4552197))

(assert (=> b!3979457 m!4551703))

(assert (=> b!3979457 m!4552197))

(declare-fun m!4552199 () Bool)

(assert (=> b!3979457 m!4552199))

(assert (=> b!3979456 m!4551709))

(declare-fun m!4552201 () Bool)

(assert (=> b!3979456 m!4552201))

(assert (=> b!3979000 d!1178049))

(declare-fun d!1178051 () Bool)

(assert (=> d!1178051 (isPrefix!3799 lt!1396805 (++!11114 lt!1396807 lt!1396800))))

(declare-fun lt!1397014 () Unit!61189)

(assert (=> d!1178051 (= lt!1397014 (choose!23863 lt!1396805 lt!1396807 lt!1396800))))

(assert (=> d!1178051 (isPrefix!3799 lt!1396805 lt!1396807)))

(assert (=> d!1178051 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!632 lt!1396805 lt!1396807 lt!1396800) lt!1397014)))

(declare-fun bs!587893 () Bool)

(assert (= bs!587893 d!1178051))

(assert (=> bs!587893 m!4551475))

(assert (=> bs!587893 m!4551475))

(declare-fun m!4552203 () Bool)

(assert (=> bs!587893 m!4552203))

(declare-fun m!4552205 () Bool)

(assert (=> bs!587893 m!4552205))

(declare-fun m!4552207 () Bool)

(assert (=> bs!587893 m!4552207))

(assert (=> b!3979000 d!1178051))

(declare-fun d!1178053 () Bool)

(declare-fun lt!1397015 () Int)

(assert (=> d!1178053 (>= lt!1397015 0)))

(declare-fun e!2465957 () Int)

(assert (=> d!1178053 (= lt!1397015 e!2465957)))

(declare-fun c!689556 () Bool)

(assert (=> d!1178053 (= c!689556 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178053 (= (size!31819 lt!1396803) lt!1397015)))

(declare-fun b!3979459 () Bool)

(assert (=> b!3979459 (= e!2465957 0)))

(declare-fun b!3979460 () Bool)

(assert (=> b!3979460 (= e!2465957 (+ 1 (size!31819 (t!331217 lt!1396803))))))

(assert (= (and d!1178053 c!689556) b!3979459))

(assert (= (and d!1178053 (not c!689556)) b!3979460))

(declare-fun m!4552209 () Bool)

(assert (=> b!3979460 m!4552209))

(assert (=> b!3978997 d!1178053))

(declare-fun d!1178055 () Bool)

(declare-fun lt!1397016 () Int)

(assert (=> d!1178055 (>= lt!1397016 0)))

(declare-fun e!2465958 () Int)

(assert (=> d!1178055 (= lt!1397016 e!2465958)))

(declare-fun c!689557 () Bool)

(assert (=> d!1178055 (= c!689557 ((_ is Nil!42534) prefix!494))))

(assert (=> d!1178055 (= (size!31819 prefix!494) lt!1397016)))

(declare-fun b!3979461 () Bool)

(assert (=> b!3979461 (= e!2465958 0)))

(declare-fun b!3979462 () Bool)

(assert (=> b!3979462 (= e!2465958 (+ 1 (size!31819 (t!331217 prefix!494))))))

(assert (= (and d!1178055 c!689557) b!3979461))

(assert (= (and d!1178055 (not c!689557)) b!3979462))

(declare-fun m!4552211 () Bool)

(assert (=> b!3979462 m!4552211))

(assert (=> b!3978997 d!1178055))

(declare-fun d!1178057 () Bool)

(assert (=> d!1178057 (= (list!15786 (charsOf!4528 token!484)) (list!15787 (c!689484 (charsOf!4528 token!484))))))

(declare-fun bs!587894 () Bool)

(assert (= bs!587894 d!1178057))

(declare-fun m!4552213 () Bool)

(assert (=> bs!587894 m!4552213))

(assert (=> b!3978997 d!1178057))

(declare-fun d!1178059 () Bool)

(declare-fun lt!1397017 () BalanceConc!25440)

(assert (=> d!1178059 (= (list!15786 lt!1397017) (originalCharacters!7312 token!484))))

(assert (=> d!1178059 (= lt!1397017 (dynLambda!18099 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (value!211926 token!484)))))

(assert (=> d!1178059 (= (charsOf!4528 token!484) lt!1397017)))

(declare-fun b_lambda!116255 () Bool)

(assert (=> (not b_lambda!116255) (not d!1178059)))

(assert (=> d!1178059 t!331245))

(declare-fun b_and!305895 () Bool)

(assert (= b_and!305891 (and (=> t!331245 result!290534) b_and!305895)))

(assert (=> d!1178059 t!331247))

(declare-fun b_and!305897 () Bool)

(assert (= b_and!305893 (and (=> t!331247 result!290536) b_and!305897)))

(declare-fun m!4552215 () Bool)

(assert (=> d!1178059 m!4552215))

(assert (=> d!1178059 m!4552189))

(assert (=> b!3978997 d!1178059))

(declare-fun lt!1397018 () List!42658)

(declare-fun b!3979466 () Bool)

(declare-fun e!2465959 () Bool)

(assert (=> b!3979466 (= e!2465959 (or (not (= lt!1396820 Nil!42534)) (= lt!1397018 lt!1396803)))))

(declare-fun b!3979464 () Bool)

(declare-fun e!2465960 () List!42658)

(assert (=> b!3979464 (= e!2465960 (Cons!42534 (h!47954 lt!1396803) (++!11114 (t!331217 lt!1396803) lt!1396820)))))

(declare-fun d!1178061 () Bool)

(assert (=> d!1178061 e!2465959))

(declare-fun res!1612445 () Bool)

(assert (=> d!1178061 (=> (not res!1612445) (not e!2465959))))

(assert (=> d!1178061 (= res!1612445 (= (content!6449 lt!1397018) ((_ map or) (content!6449 lt!1396803) (content!6449 lt!1396820))))))

(assert (=> d!1178061 (= lt!1397018 e!2465960)))

(declare-fun c!689558 () Bool)

(assert (=> d!1178061 (= c!689558 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178061 (= (++!11114 lt!1396803 lt!1396820) lt!1397018)))

(declare-fun b!3979463 () Bool)

(assert (=> b!3979463 (= e!2465960 lt!1396820)))

(declare-fun b!3979465 () Bool)

(declare-fun res!1612446 () Bool)

(assert (=> b!3979465 (=> (not res!1612446) (not e!2465959))))

(assert (=> b!3979465 (= res!1612446 (= (size!31819 lt!1397018) (+ (size!31819 lt!1396803) (size!31819 lt!1396820))))))

(assert (= (and d!1178061 c!689558) b!3979463))

(assert (= (and d!1178061 (not c!689558)) b!3979464))

(assert (= (and d!1178061 res!1612445) b!3979465))

(assert (= (and b!3979465 res!1612446) b!3979466))

(declare-fun m!4552217 () Bool)

(assert (=> b!3979464 m!4552217))

(declare-fun m!4552219 () Bool)

(assert (=> d!1178061 m!4552219))

(declare-fun m!4552221 () Bool)

(assert (=> d!1178061 m!4552221))

(declare-fun m!4552223 () Bool)

(assert (=> d!1178061 m!4552223))

(declare-fun m!4552225 () Bool)

(assert (=> b!3979465 m!4552225))

(assert (=> b!3979465 m!4551437))

(declare-fun m!4552227 () Bool)

(assert (=> b!3979465 m!4552227))

(assert (=> b!3978996 d!1178061))

(declare-fun d!1178063 () Bool)

(declare-fun lt!1397024 () List!42658)

(assert (=> d!1178063 (= (++!11114 lt!1396803 lt!1397024) lt!1396801)))

(declare-fun e!2465973 () List!42658)

(assert (=> d!1178063 (= lt!1397024 e!2465973)))

(declare-fun c!689564 () Bool)

(assert (=> d!1178063 (= c!689564 ((_ is Cons!42534) lt!1396803))))

(assert (=> d!1178063 (>= (size!31819 lt!1396801) (size!31819 lt!1396803))))

(assert (=> d!1178063 (= (getSuffix!2230 lt!1396801 lt!1396803) lt!1397024)))

(declare-fun b!3979489 () Bool)

(assert (=> b!3979489 (= e!2465973 (getSuffix!2230 (tail!6207 lt!1396801) (t!331217 lt!1396803)))))

(declare-fun b!3979490 () Bool)

(assert (=> b!3979490 (= e!2465973 lt!1396801)))

(assert (= (and d!1178063 c!689564) b!3979489))

(assert (= (and d!1178063 (not c!689564)) b!3979490))

(declare-fun m!4552253 () Bool)

(assert (=> d!1178063 m!4552253))

(assert (=> d!1178063 m!4551529))

(assert (=> d!1178063 m!4551437))

(assert (=> b!3979489 m!4551533))

(assert (=> b!3979489 m!4551533))

(declare-fun m!4552255 () Bool)

(assert (=> b!3979489 m!4552255))

(assert (=> b!3978996 d!1178063))

(declare-fun b!3979494 () Bool)

(declare-fun e!2465975 () Bool)

(assert (=> b!3979494 (= e!2465975 (>= (size!31819 lt!1396801) (size!31819 lt!1396801)))))

(declare-fun d!1178073 () Bool)

(assert (=> d!1178073 e!2465975))

(declare-fun res!1612462 () Bool)

(assert (=> d!1178073 (=> res!1612462 e!2465975)))

(declare-fun lt!1397026 () Bool)

(assert (=> d!1178073 (= res!1612462 (not lt!1397026))))

(declare-fun e!2465976 () Bool)

(assert (=> d!1178073 (= lt!1397026 e!2465976)))

(declare-fun res!1612461 () Bool)

(assert (=> d!1178073 (=> res!1612461 e!2465976)))

(assert (=> d!1178073 (= res!1612461 ((_ is Nil!42534) lt!1396801))))

(assert (=> d!1178073 (= (isPrefix!3799 lt!1396801 lt!1396801) lt!1397026)))

(declare-fun b!3979491 () Bool)

(declare-fun e!2465974 () Bool)

(assert (=> b!3979491 (= e!2465976 e!2465974)))

(declare-fun res!1612459 () Bool)

(assert (=> b!3979491 (=> (not res!1612459) (not e!2465974))))

(assert (=> b!3979491 (= res!1612459 (not ((_ is Nil!42534) lt!1396801)))))

(declare-fun b!3979493 () Bool)

(assert (=> b!3979493 (= e!2465974 (isPrefix!3799 (tail!6207 lt!1396801) (tail!6207 lt!1396801)))))

(declare-fun b!3979492 () Bool)

(declare-fun res!1612460 () Bool)

(assert (=> b!3979492 (=> (not res!1612460) (not e!2465974))))

(assert (=> b!3979492 (= res!1612460 (= (head!8475 lt!1396801) (head!8475 lt!1396801)))))

(assert (= (and d!1178073 (not res!1612461)) b!3979491))

(assert (= (and b!3979491 res!1612459) b!3979492))

(assert (= (and b!3979492 res!1612460) b!3979493))

(assert (= (and d!1178073 (not res!1612462)) b!3979494))

(assert (=> b!3979494 m!4551529))

(assert (=> b!3979494 m!4551529))

(assert (=> b!3979493 m!4551533))

(assert (=> b!3979493 m!4551533))

(assert (=> b!3979493 m!4551533))

(assert (=> b!3979493 m!4551533))

(declare-fun m!4552257 () Bool)

(assert (=> b!3979493 m!4552257))

(assert (=> b!3979492 m!4551539))

(assert (=> b!3979492 m!4551539))

(assert (=> b!3978996 d!1178073))

(declare-fun d!1178075 () Bool)

(assert (=> d!1178075 (isPrefix!3799 lt!1396801 lt!1396801)))

(declare-fun lt!1397029 () Unit!61189)

(declare-fun choose!23865 (List!42658 List!42658) Unit!61189)

(assert (=> d!1178075 (= lt!1397029 (choose!23865 lt!1396801 lt!1396801))))

(assert (=> d!1178075 (= (lemmaIsPrefixRefl!2391 lt!1396801 lt!1396801) lt!1397029)))

(declare-fun bs!587897 () Bool)

(assert (= bs!587897 d!1178075))

(assert (=> bs!587897 m!4551337))

(declare-fun m!4552259 () Bool)

(assert (=> bs!587897 m!4552259))

(assert (=> b!3978996 d!1178075))

(declare-fun b!3979594 () Bool)

(declare-fun e!2466034 () Bool)

(declare-fun lt!1397059 () Option!9126)

(assert (=> b!3979594 (= e!2466034 (contains!8467 rules!2999 (rule!9714 (_1!24016 (get!14006 lt!1397059)))))))

(declare-fun b!3979595 () Bool)

(declare-fun e!2466036 () Option!9126)

(declare-fun lt!1397060 () Option!9126)

(declare-fun lt!1397058 () Option!9126)

(assert (=> b!3979595 (= e!2466036 (ite (and ((_ is None!9125) lt!1397060) ((_ is None!9125) lt!1397058)) None!9125 (ite ((_ is None!9125) lt!1397058) lt!1397060 (ite ((_ is None!9125) lt!1397060) lt!1397058 (ite (>= (size!31818 (_1!24016 (v!39473 lt!1397060))) (size!31818 (_1!24016 (v!39473 lt!1397058)))) lt!1397060 lt!1397058)))))))

(declare-fun call!285711 () Option!9126)

(assert (=> b!3979595 (= lt!1397060 call!285711)))

(assert (=> b!3979595 (= lt!1397058 (maxPrefix!3599 thiss!21717 (t!331219 rules!2999) lt!1396807))))

(declare-fun b!3979596 () Bool)

(declare-fun e!2466035 () Bool)

(assert (=> b!3979596 (= e!2466035 e!2466034)))

(declare-fun res!1612505 () Bool)

(assert (=> b!3979596 (=> (not res!1612505) (not e!2466034))))

(declare-fun isDefined!7026 (Option!9126) Bool)

(assert (=> b!3979596 (= res!1612505 (isDefined!7026 lt!1397059))))

(declare-fun b!3979597 () Bool)

(declare-fun res!1612509 () Bool)

(assert (=> b!3979597 (=> (not res!1612509) (not e!2466034))))

(assert (=> b!3979597 (= res!1612509 (= (value!211926 (_1!24016 (get!14006 lt!1397059))) (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (get!14006 lt!1397059)))) (seqFromList!4951 (originalCharacters!7312 (_1!24016 (get!14006 lt!1397059)))))))))

(declare-fun d!1178077 () Bool)

(assert (=> d!1178077 e!2466035))

(declare-fun res!1612506 () Bool)

(assert (=> d!1178077 (=> res!1612506 e!2466035)))

(assert (=> d!1178077 (= res!1612506 (isEmpty!25436 lt!1397059))))

(assert (=> d!1178077 (= lt!1397059 e!2466036)))

(declare-fun c!689574 () Bool)

(assert (=> d!1178077 (= c!689574 (and ((_ is Cons!42536) rules!2999) ((_ is Nil!42536) (t!331219 rules!2999))))))

(declare-fun lt!1397061 () Unit!61189)

(declare-fun lt!1397057 () Unit!61189)

(assert (=> d!1178077 (= lt!1397061 lt!1397057)))

(assert (=> d!1178077 (isPrefix!3799 lt!1396807 lt!1396807)))

(assert (=> d!1178077 (= lt!1397057 (lemmaIsPrefixRefl!2391 lt!1396807 lt!1396807))))

(declare-fun rulesValidInductive!2437 (LexerInterface!6301 List!42660) Bool)

(assert (=> d!1178077 (rulesValidInductive!2437 thiss!21717 rules!2999)))

(assert (=> d!1178077 (= (maxPrefix!3599 thiss!21717 rules!2999 lt!1396807) lt!1397059)))

(declare-fun b!3979598 () Bool)

(declare-fun res!1612510 () Bool)

(assert (=> b!3979598 (=> (not res!1612510) (not e!2466034))))

(assert (=> b!3979598 (= res!1612510 (matchR!5594 (regex!6712 (rule!9714 (_1!24016 (get!14006 lt!1397059)))) (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397059))))))))

(declare-fun b!3979599 () Bool)

(assert (=> b!3979599 (= e!2466036 call!285711)))

(declare-fun b!3979600 () Bool)

(declare-fun res!1612507 () Bool)

(assert (=> b!3979600 (=> (not res!1612507) (not e!2466034))))

(assert (=> b!3979600 (= res!1612507 (= (++!11114 (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397059)))) (_2!24016 (get!14006 lt!1397059))) lt!1396807))))

(declare-fun b!3979601 () Bool)

(declare-fun res!1612508 () Bool)

(assert (=> b!3979601 (=> (not res!1612508) (not e!2466034))))

(assert (=> b!3979601 (= res!1612508 (= (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397059)))) (originalCharacters!7312 (_1!24016 (get!14006 lt!1397059)))))))

(declare-fun b!3979602 () Bool)

(declare-fun res!1612511 () Bool)

(assert (=> b!3979602 (=> (not res!1612511) (not e!2466034))))

(assert (=> b!3979602 (= res!1612511 (< (size!31819 (_2!24016 (get!14006 lt!1397059))) (size!31819 lt!1396807)))))

(declare-fun bm!285706 () Bool)

(assert (=> bm!285706 (= call!285711 (maxPrefixOneRule!2633 thiss!21717 (h!47956 rules!2999) lt!1396807))))

(assert (= (and d!1178077 c!689574) b!3979599))

(assert (= (and d!1178077 (not c!689574)) b!3979595))

(assert (= (or b!3979599 b!3979595) bm!285706))

(assert (= (and d!1178077 (not res!1612506)) b!3979596))

(assert (= (and b!3979596 res!1612505) b!3979601))

(assert (= (and b!3979601 res!1612508) b!3979602))

(assert (= (and b!3979602 res!1612511) b!3979600))

(assert (= (and b!3979600 res!1612507) b!3979597))

(assert (= (and b!3979597 res!1612509) b!3979598))

(assert (= (and b!3979598 res!1612510) b!3979594))

(declare-fun m!4552335 () Bool)

(assert (=> bm!285706 m!4552335))

(declare-fun m!4552337 () Bool)

(assert (=> b!3979594 m!4552337))

(declare-fun m!4552339 () Bool)

(assert (=> b!3979594 m!4552339))

(declare-fun m!4552341 () Bool)

(assert (=> b!3979595 m!4552341))

(assert (=> b!3979602 m!4552337))

(declare-fun m!4552343 () Bool)

(assert (=> b!3979602 m!4552343))

(assert (=> b!3979602 m!4551459))

(assert (=> b!3979598 m!4552337))

(declare-fun m!4552345 () Bool)

(assert (=> b!3979598 m!4552345))

(assert (=> b!3979598 m!4552345))

(declare-fun m!4552347 () Bool)

(assert (=> b!3979598 m!4552347))

(assert (=> b!3979598 m!4552347))

(declare-fun m!4552349 () Bool)

(assert (=> b!3979598 m!4552349))

(declare-fun m!4552351 () Bool)

(assert (=> b!3979596 m!4552351))

(assert (=> b!3979600 m!4552337))

(assert (=> b!3979600 m!4552345))

(assert (=> b!3979600 m!4552345))

(assert (=> b!3979600 m!4552347))

(assert (=> b!3979600 m!4552347))

(declare-fun m!4552353 () Bool)

(assert (=> b!3979600 m!4552353))

(assert (=> b!3979597 m!4552337))

(declare-fun m!4552355 () Bool)

(assert (=> b!3979597 m!4552355))

(assert (=> b!3979597 m!4552355))

(declare-fun m!4552357 () Bool)

(assert (=> b!3979597 m!4552357))

(declare-fun m!4552359 () Bool)

(assert (=> d!1178077 m!4552359))

(declare-fun m!4552361 () Bool)

(assert (=> d!1178077 m!4552361))

(declare-fun m!4552363 () Bool)

(assert (=> d!1178077 m!4552363))

(declare-fun m!4552365 () Bool)

(assert (=> d!1178077 m!4552365))

(assert (=> b!3979601 m!4552337))

(assert (=> b!3979601 m!4552345))

(assert (=> b!3979601 m!4552345))

(assert (=> b!3979601 m!4552347))

(assert (=> b!3978998 d!1178077))

(declare-fun d!1178113 () Bool)

(assert (=> d!1178113 (= suffixResult!105 lt!1396820)))

(declare-fun lt!1397064 () Unit!61189)

(declare-fun choose!23866 (List!42658 List!42658 List!42658 List!42658 List!42658) Unit!61189)

(assert (=> d!1178113 (= lt!1397064 (choose!23866 lt!1396803 suffixResult!105 lt!1396803 lt!1396820 lt!1396801))))

(assert (=> d!1178113 (isPrefix!3799 lt!1396803 lt!1396801)))

(assert (=> d!1178113 (= (lemmaSamePrefixThenSameSuffix!1986 lt!1396803 suffixResult!105 lt!1396803 lt!1396820 lt!1396801) lt!1397064)))

(declare-fun bs!587902 () Bool)

(assert (= bs!587902 d!1178113))

(declare-fun m!4552367 () Bool)

(assert (=> bs!587902 m!4552367))

(assert (=> bs!587902 m!4551353))

(assert (=> b!3978998 d!1178113))

(declare-fun b!3979606 () Bool)

(declare-fun e!2466038 () Bool)

(assert (=> b!3979606 (= e!2466038 (>= (size!31819 lt!1396835) (size!31819 lt!1396803)))))

(declare-fun d!1178115 () Bool)

(assert (=> d!1178115 e!2466038))

(declare-fun res!1612515 () Bool)

(assert (=> d!1178115 (=> res!1612515 e!2466038)))

(declare-fun lt!1397065 () Bool)

(assert (=> d!1178115 (= res!1612515 (not lt!1397065))))

(declare-fun e!2466039 () Bool)

(assert (=> d!1178115 (= lt!1397065 e!2466039)))

(declare-fun res!1612514 () Bool)

(assert (=> d!1178115 (=> res!1612514 e!2466039)))

(assert (=> d!1178115 (= res!1612514 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178115 (= (isPrefix!3799 lt!1396803 lt!1396835) lt!1397065)))

(declare-fun b!3979603 () Bool)

(declare-fun e!2466037 () Bool)

(assert (=> b!3979603 (= e!2466039 e!2466037)))

(declare-fun res!1612512 () Bool)

(assert (=> b!3979603 (=> (not res!1612512) (not e!2466037))))

(assert (=> b!3979603 (= res!1612512 (not ((_ is Nil!42534) lt!1396835)))))

(declare-fun b!3979605 () Bool)

(assert (=> b!3979605 (= e!2466037 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 lt!1396835)))))

(declare-fun b!3979604 () Bool)

(declare-fun res!1612513 () Bool)

(assert (=> b!3979604 (=> (not res!1612513) (not e!2466037))))

(assert (=> b!3979604 (= res!1612513 (= (head!8475 lt!1396803) (head!8475 lt!1396835)))))

(assert (= (and d!1178115 (not res!1612514)) b!3979603))

(assert (= (and b!3979603 res!1612512) b!3979604))

(assert (= (and b!3979604 res!1612513) b!3979605))

(assert (= (and d!1178115 (not res!1612515)) b!3979606))

(declare-fun m!4552369 () Bool)

(assert (=> b!3979606 m!4552369))

(assert (=> b!3979606 m!4551437))

(assert (=> b!3979605 m!4551563))

(declare-fun m!4552371 () Bool)

(assert (=> b!3979605 m!4552371))

(assert (=> b!3979605 m!4551563))

(assert (=> b!3979605 m!4552371))

(declare-fun m!4552373 () Bool)

(assert (=> b!3979605 m!4552373))

(assert (=> b!3979604 m!4551567))

(declare-fun m!4552375 () Bool)

(assert (=> b!3979604 m!4552375))

(assert (=> b!3978998 d!1178115))

(declare-fun d!1178117 () Bool)

(assert (=> d!1178117 (isPrefix!3799 lt!1396803 (++!11114 lt!1396803 lt!1396820))))

(declare-fun lt!1397066 () Unit!61189)

(assert (=> d!1178117 (= lt!1397066 (choose!23857 lt!1396803 lt!1396820))))

(assert (=> d!1178117 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 lt!1396820) lt!1397066)))

(declare-fun bs!587903 () Bool)

(assert (= bs!587903 d!1178117))

(assert (=> bs!587903 m!4551333))

(assert (=> bs!587903 m!4551333))

(declare-fun m!4552377 () Bool)

(assert (=> bs!587903 m!4552377))

(declare-fun m!4552379 () Bool)

(assert (=> bs!587903 m!4552379))

(assert (=> b!3978998 d!1178117))

(declare-fun d!1178119 () Bool)

(assert (=> d!1178119 (= (inv!56820 (tag!7572 (rule!9714 token!484))) (= (mod (str.len (value!211925 (tag!7572 (rule!9714 token!484)))) 2) 0))))

(assert (=> b!3979019 d!1178119))

(declare-fun d!1178121 () Bool)

(declare-fun res!1612518 () Bool)

(declare-fun e!2466042 () Bool)

(assert (=> d!1178121 (=> (not res!1612518) (not e!2466042))))

(assert (=> d!1178121 (= res!1612518 (semiInverseModEq!2881 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))))))

(assert (=> d!1178121 (= (inv!56823 (transformation!6712 (rule!9714 token!484))) e!2466042)))

(declare-fun b!3979609 () Bool)

(assert (=> b!3979609 (= e!2466042 (equivClasses!2780 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))))))

(assert (= (and d!1178121 res!1612518) b!3979609))

(declare-fun m!4552381 () Bool)

(assert (=> d!1178121 m!4552381))

(declare-fun m!4552383 () Bool)

(assert (=> b!3979609 m!4552383))

(assert (=> b!3979019 d!1178121))

(declare-fun b!3979613 () Bool)

(declare-fun lt!1397067 () List!42658)

(declare-fun e!2466043 () Bool)

(assert (=> b!3979613 (= e!2466043 (or (not (= lt!1396800 Nil!42534)) (= lt!1397067 newSuffix!27)))))

(declare-fun b!3979611 () Bool)

(declare-fun e!2466044 () List!42658)

(assert (=> b!3979611 (= e!2466044 (Cons!42534 (h!47954 newSuffix!27) (++!11114 (t!331217 newSuffix!27) lt!1396800)))))

(declare-fun d!1178123 () Bool)

(assert (=> d!1178123 e!2466043))

(declare-fun res!1612519 () Bool)

(assert (=> d!1178123 (=> (not res!1612519) (not e!2466043))))

(assert (=> d!1178123 (= res!1612519 (= (content!6449 lt!1397067) ((_ map or) (content!6449 newSuffix!27) (content!6449 lt!1396800))))))

(assert (=> d!1178123 (= lt!1397067 e!2466044)))

(declare-fun c!689575 () Bool)

(assert (=> d!1178123 (= c!689575 ((_ is Nil!42534) newSuffix!27))))

(assert (=> d!1178123 (= (++!11114 newSuffix!27 lt!1396800) lt!1397067)))

(declare-fun b!3979610 () Bool)

(assert (=> b!3979610 (= e!2466044 lt!1396800)))

(declare-fun b!3979612 () Bool)

(declare-fun res!1612520 () Bool)

(assert (=> b!3979612 (=> (not res!1612520) (not e!2466043))))

(assert (=> b!3979612 (= res!1612520 (= (size!31819 lt!1397067) (+ (size!31819 newSuffix!27) (size!31819 lt!1396800))))))

(assert (= (and d!1178123 c!689575) b!3979610))

(assert (= (and d!1178123 (not c!689575)) b!3979611))

(assert (= (and d!1178123 res!1612519) b!3979612))

(assert (= (and b!3979612 res!1612520) b!3979613))

(declare-fun m!4552385 () Bool)

(assert (=> b!3979611 m!4552385))

(declare-fun m!4552387 () Bool)

(assert (=> d!1178123 m!4552387))

(declare-fun m!4552389 () Bool)

(assert (=> d!1178123 m!4552389))

(assert (=> d!1178123 m!4551515))

(declare-fun m!4552391 () Bool)

(assert (=> b!3979612 m!4552391))

(assert (=> b!3979612 m!4551463))

(assert (=> b!3979612 m!4551519))

(assert (=> b!3979015 d!1178123))

(declare-fun d!1178125 () Bool)

(declare-fun lt!1397068 () List!42658)

(assert (=> d!1178125 (= (++!11114 newSuffix!27 lt!1397068) suffix!1299)))

(declare-fun e!2466045 () List!42658)

(assert (=> d!1178125 (= lt!1397068 e!2466045)))

(declare-fun c!689576 () Bool)

(assert (=> d!1178125 (= c!689576 ((_ is Cons!42534) newSuffix!27))))

(assert (=> d!1178125 (>= (size!31819 suffix!1299) (size!31819 newSuffix!27))))

(assert (=> d!1178125 (= (getSuffix!2230 suffix!1299 newSuffix!27) lt!1397068)))

(declare-fun b!3979614 () Bool)

(assert (=> b!3979614 (= e!2466045 (getSuffix!2230 (tail!6207 suffix!1299) (t!331217 newSuffix!27)))))

(declare-fun b!3979615 () Bool)

(assert (=> b!3979615 (= e!2466045 suffix!1299)))

(assert (= (and d!1178125 c!689576) b!3979614))

(assert (= (and d!1178125 (not c!689576)) b!3979615))

(declare-fun m!4552393 () Bool)

(assert (=> d!1178125 m!4552393))

(assert (=> d!1178125 m!4551461))

(assert (=> d!1178125 m!4551463))

(assert (=> b!3979614 m!4552035))

(assert (=> b!3979614 m!4552035))

(declare-fun m!4552395 () Bool)

(assert (=> b!3979614 m!4552395))

(assert (=> b!3979015 d!1178125))

(declare-fun b!3979616 () Bool)

(declare-fun e!2466049 () Bool)

(declare-fun e!2466047 () Bool)

(assert (=> b!3979616 (= e!2466049 e!2466047)))

(declare-fun res!1612526 () Bool)

(assert (=> b!3979616 (=> (not res!1612526) (not e!2466047))))

(declare-fun lt!1397071 () Option!9126)

(assert (=> b!3979616 (= res!1612526 (matchR!5594 (regex!6712 (rule!9714 token!484)) (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397071))))))))

(declare-fun b!3979617 () Bool)

(declare-fun res!1612522 () Bool)

(assert (=> b!3979617 (=> (not res!1612522) (not e!2466047))))

(assert (=> b!3979617 (= res!1612522 (= (rule!9714 (_1!24016 (get!14006 lt!1397071))) (rule!9714 token!484)))))

(declare-fun b!3979618 () Bool)

(assert (=> b!3979618 (= e!2466047 (= (size!31818 (_1!24016 (get!14006 lt!1397071))) (size!31819 (originalCharacters!7312 (_1!24016 (get!14006 lt!1397071))))))))

(declare-fun b!3979619 () Bool)

(declare-fun e!2466048 () Option!9126)

(declare-fun lt!1397070 () tuple2!41768)

(assert (=> b!3979619 (= e!2466048 (Some!9125 (tuple2!41765 (Token!12563 (apply!9923 (transformation!6712 (rule!9714 token!484)) (seqFromList!4951 (_1!24018 lt!1397070))) (rule!9714 token!484) (size!31821 (seqFromList!4951 (_1!24018 lt!1397070))) (_1!24018 lt!1397070)) (_2!24018 lt!1397070))))))

(declare-fun lt!1397073 () Unit!61189)

(assert (=> b!3979619 (= lt!1397073 (longestMatchIsAcceptedByMatchOrIsEmpty!1291 (regex!6712 (rule!9714 token!484)) lt!1396801))))

(declare-fun res!1612527 () Bool)

(assert (=> b!3979619 (= res!1612527 (isEmpty!25435 (_1!24018 (findLongestMatchInner!1318 (regex!6712 (rule!9714 token!484)) Nil!42534 (size!31819 Nil!42534) lt!1396801 lt!1396801 (size!31819 lt!1396801)))))))

(declare-fun e!2466046 () Bool)

(assert (=> b!3979619 (=> res!1612527 e!2466046)))

(assert (=> b!3979619 e!2466046))

(declare-fun lt!1397072 () Unit!61189)

(assert (=> b!3979619 (= lt!1397072 lt!1397073)))

(declare-fun lt!1397069 () Unit!61189)

(assert (=> b!3979619 (= lt!1397069 (lemmaSemiInverse!1830 (transformation!6712 (rule!9714 token!484)) (seqFromList!4951 (_1!24018 lt!1397070))))))

(declare-fun b!3979620 () Bool)

(declare-fun res!1612525 () Bool)

(assert (=> b!3979620 (=> (not res!1612525) (not e!2466047))))

(assert (=> b!3979620 (= res!1612525 (= (value!211926 (_1!24016 (get!14006 lt!1397071))) (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (get!14006 lt!1397071)))) (seqFromList!4951 (originalCharacters!7312 (_1!24016 (get!14006 lt!1397071)))))))))

(declare-fun d!1178127 () Bool)

(assert (=> d!1178127 e!2466049))

(declare-fun res!1612524 () Bool)

(assert (=> d!1178127 (=> res!1612524 e!2466049)))

(assert (=> d!1178127 (= res!1612524 (isEmpty!25436 lt!1397071))))

(assert (=> d!1178127 (= lt!1397071 e!2466048)))

(declare-fun c!689577 () Bool)

(assert (=> d!1178127 (= c!689577 (isEmpty!25435 (_1!24018 lt!1397070)))))

(assert (=> d!1178127 (= lt!1397070 (findLongestMatch!1231 (regex!6712 (rule!9714 token!484)) lt!1396801))))

(assert (=> d!1178127 (ruleValid!2644 thiss!21717 (rule!9714 token!484))))

(assert (=> d!1178127 (= (maxPrefixOneRule!2633 thiss!21717 (rule!9714 token!484) lt!1396801) lt!1397071)))

(declare-fun b!3979621 () Bool)

(assert (=> b!3979621 (= e!2466048 None!9125)))

(declare-fun b!3979622 () Bool)

(declare-fun res!1612521 () Bool)

(assert (=> b!3979622 (=> (not res!1612521) (not e!2466047))))

(assert (=> b!3979622 (= res!1612521 (= (++!11114 (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397071)))) (_2!24016 (get!14006 lt!1397071))) lt!1396801))))

(declare-fun b!3979623 () Bool)

(declare-fun res!1612523 () Bool)

(assert (=> b!3979623 (=> (not res!1612523) (not e!2466047))))

(assert (=> b!3979623 (= res!1612523 (< (size!31819 (_2!24016 (get!14006 lt!1397071))) (size!31819 lt!1396801)))))

(declare-fun b!3979624 () Bool)

(assert (=> b!3979624 (= e!2466046 (matchR!5594 (regex!6712 (rule!9714 token!484)) (_1!24018 (findLongestMatchInner!1318 (regex!6712 (rule!9714 token!484)) Nil!42534 (size!31819 Nil!42534) lt!1396801 lt!1396801 (size!31819 lt!1396801)))))))

(assert (= (and d!1178127 c!689577) b!3979621))

(assert (= (and d!1178127 (not c!689577)) b!3979619))

(assert (= (and b!3979619 (not res!1612527)) b!3979624))

(assert (= (and d!1178127 (not res!1612524)) b!3979616))

(assert (= (and b!3979616 res!1612526) b!3979622))

(assert (= (and b!3979622 res!1612521) b!3979623))

(assert (= (and b!3979623 res!1612523) b!3979617))

(assert (= (and b!3979617 res!1612522) b!3979620))

(assert (= (and b!3979620 res!1612525) b!3979618))

(assert (=> b!3979624 m!4551801))

(assert (=> b!3979624 m!4551529))

(assert (=> b!3979624 m!4551801))

(assert (=> b!3979624 m!4551529))

(declare-fun m!4552397 () Bool)

(assert (=> b!3979624 m!4552397))

(declare-fun m!4552399 () Bool)

(assert (=> b!3979624 m!4552399))

(declare-fun m!4552401 () Bool)

(assert (=> b!3979622 m!4552401))

(declare-fun m!4552403 () Bool)

(assert (=> b!3979622 m!4552403))

(assert (=> b!3979622 m!4552403))

(declare-fun m!4552405 () Bool)

(assert (=> b!3979622 m!4552405))

(assert (=> b!3979622 m!4552405))

(declare-fun m!4552407 () Bool)

(assert (=> b!3979622 m!4552407))

(declare-fun m!4552409 () Bool)

(assert (=> b!3979619 m!4552409))

(declare-fun m!4552411 () Bool)

(assert (=> b!3979619 m!4552411))

(declare-fun m!4552413 () Bool)

(assert (=> b!3979619 m!4552413))

(assert (=> b!3979619 m!4551529))

(assert (=> b!3979619 m!4551801))

(assert (=> b!3979619 m!4551529))

(assert (=> b!3979619 m!4552397))

(declare-fun m!4552415 () Bool)

(assert (=> b!3979619 m!4552415))

(assert (=> b!3979619 m!4552411))

(assert (=> b!3979619 m!4551801))

(assert (=> b!3979619 m!4552411))

(declare-fun m!4552417 () Bool)

(assert (=> b!3979619 m!4552417))

(assert (=> b!3979619 m!4552411))

(declare-fun m!4552419 () Bool)

(assert (=> b!3979619 m!4552419))

(declare-fun m!4552421 () Bool)

(assert (=> d!1178127 m!4552421))

(declare-fun m!4552423 () Bool)

(assert (=> d!1178127 m!4552423))

(declare-fun m!4552425 () Bool)

(assert (=> d!1178127 m!4552425))

(assert (=> d!1178127 m!4551469))

(assert (=> b!3979618 m!4552401))

(declare-fun m!4552427 () Bool)

(assert (=> b!3979618 m!4552427))

(assert (=> b!3979620 m!4552401))

(declare-fun m!4552429 () Bool)

(assert (=> b!3979620 m!4552429))

(assert (=> b!3979620 m!4552429))

(declare-fun m!4552431 () Bool)

(assert (=> b!3979620 m!4552431))

(assert (=> b!3979616 m!4552401))

(assert (=> b!3979616 m!4552403))

(assert (=> b!3979616 m!4552403))

(assert (=> b!3979616 m!4552405))

(assert (=> b!3979616 m!4552405))

(declare-fun m!4552433 () Bool)

(assert (=> b!3979616 m!4552433))

(assert (=> b!3979617 m!4552401))

(assert (=> b!3979623 m!4552401))

(declare-fun m!4552435 () Bool)

(assert (=> b!3979623 m!4552435))

(assert (=> b!3979623 m!4551529))

(assert (=> b!3979017 d!1178127))

(declare-fun d!1178129 () Bool)

(assert (=> d!1178129 (= lt!1396811 suffixResult!105)))

(declare-fun lt!1397074 () Unit!61189)

(assert (=> d!1178129 (= lt!1397074 (choose!23866 lt!1396803 lt!1396811 lt!1396803 suffixResult!105 lt!1396801))))

(assert (=> d!1178129 (isPrefix!3799 lt!1396803 lt!1396801)))

(assert (=> d!1178129 (= (lemmaSamePrefixThenSameSuffix!1986 lt!1396803 lt!1396811 lt!1396803 suffixResult!105 lt!1396801) lt!1397074)))

(declare-fun bs!587904 () Bool)

(assert (= bs!587904 d!1178129))

(declare-fun m!4552437 () Bool)

(assert (=> bs!587904 m!4552437))

(assert (=> bs!587904 m!4551353))

(assert (=> b!3979017 d!1178129))

(declare-fun b!3979628 () Bool)

(declare-fun e!2466051 () Bool)

(assert (=> b!3979628 (= e!2466051 (>= (size!31819 lt!1396829) (size!31819 lt!1396803)))))

(declare-fun d!1178131 () Bool)

(assert (=> d!1178131 e!2466051))

(declare-fun res!1612531 () Bool)

(assert (=> d!1178131 (=> res!1612531 e!2466051)))

(declare-fun lt!1397075 () Bool)

(assert (=> d!1178131 (= res!1612531 (not lt!1397075))))

(declare-fun e!2466052 () Bool)

(assert (=> d!1178131 (= lt!1397075 e!2466052)))

(declare-fun res!1612530 () Bool)

(assert (=> d!1178131 (=> res!1612530 e!2466052)))

(assert (=> d!1178131 (= res!1612530 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178131 (= (isPrefix!3799 lt!1396803 lt!1396829) lt!1397075)))

(declare-fun b!3979625 () Bool)

(declare-fun e!2466050 () Bool)

(assert (=> b!3979625 (= e!2466052 e!2466050)))

(declare-fun res!1612528 () Bool)

(assert (=> b!3979625 (=> (not res!1612528) (not e!2466050))))

(assert (=> b!3979625 (= res!1612528 (not ((_ is Nil!42534) lt!1396829)))))

(declare-fun b!3979627 () Bool)

(assert (=> b!3979627 (= e!2466050 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 lt!1396829)))))

(declare-fun b!3979626 () Bool)

(declare-fun res!1612529 () Bool)

(assert (=> b!3979626 (=> (not res!1612529) (not e!2466050))))

(assert (=> b!3979626 (= res!1612529 (= (head!8475 lt!1396803) (head!8475 lt!1396829)))))

(assert (= (and d!1178131 (not res!1612530)) b!3979625))

(assert (= (and b!3979625 res!1612528) b!3979626))

(assert (= (and b!3979626 res!1612529) b!3979627))

(assert (= (and d!1178131 (not res!1612531)) b!3979628))

(declare-fun m!4552439 () Bool)

(assert (=> b!3979628 m!4552439))

(assert (=> b!3979628 m!4551437))

(assert (=> b!3979627 m!4551563))

(declare-fun m!4552441 () Bool)

(assert (=> b!3979627 m!4552441))

(assert (=> b!3979627 m!4551563))

(assert (=> b!3979627 m!4552441))

(declare-fun m!4552443 () Bool)

(assert (=> b!3979627 m!4552443))

(assert (=> b!3979626 m!4551567))

(declare-fun m!4552445 () Bool)

(assert (=> b!3979626 m!4552445))

(assert (=> b!3979017 d!1178131))

(declare-fun d!1178133 () Bool)

(assert (=> d!1178133 (= (seqFromList!4951 lt!1396803) (fromListB!2276 lt!1396803))))

(declare-fun bs!587905 () Bool)

(assert (= bs!587905 d!1178133))

(declare-fun m!4552447 () Bool)

(assert (=> bs!587905 m!4552447))

(assert (=> b!3979017 d!1178133))

(declare-fun d!1178135 () Bool)

(assert (=> d!1178135 (= (apply!9923 (transformation!6712 (rule!9714 token!484)) (seqFromList!4951 lt!1396803)) (dynLambda!18100 (toValue!9200 (transformation!6712 (rule!9714 token!484))) (seqFromList!4951 lt!1396803)))))

(declare-fun b_lambda!116263 () Bool)

(assert (=> (not b_lambda!116263) (not d!1178135)))

(declare-fun t!331257 () Bool)

(declare-fun tb!239857 () Bool)

(assert (=> (and b!3979023 (= (toValue!9200 (transformation!6712 (h!47956 rules!2999))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))) t!331257) tb!239857))

(declare-fun result!290552 () Bool)

(assert (=> tb!239857 (= result!290552 (inv!21 (dynLambda!18100 (toValue!9200 (transformation!6712 (rule!9714 token!484))) (seqFromList!4951 lt!1396803))))))

(declare-fun m!4552449 () Bool)

(assert (=> tb!239857 m!4552449))

(assert (=> d!1178135 t!331257))

(declare-fun b_and!305903 () Bool)

(assert (= b_and!305871 (and (=> t!331257 result!290552) b_and!305903)))

(declare-fun t!331259 () Bool)

(declare-fun tb!239859 () Bool)

(assert (=> (and b!3979005 (= (toValue!9200 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))) t!331259) tb!239859))

(declare-fun result!290554 () Bool)

(assert (= result!290554 result!290552))

(assert (=> d!1178135 t!331259))

(declare-fun b_and!305905 () Bool)

(assert (= b_and!305873 (and (=> t!331259 result!290554) b_and!305905)))

(assert (=> d!1178135 m!4551421))

(declare-fun m!4552451 () Bool)

(assert (=> d!1178135 m!4552451))

(assert (=> b!3979017 d!1178135))

(declare-fun d!1178137 () Bool)

(assert (=> d!1178137 (isPrefix!3799 lt!1396803 (++!11114 lt!1396803 lt!1396811))))

(declare-fun lt!1397076 () Unit!61189)

(assert (=> d!1178137 (= lt!1397076 (choose!23857 lt!1396803 lt!1396811))))

(assert (=> d!1178137 (= (lemmaConcatTwoListThenFirstIsPrefix!2642 lt!1396803 lt!1396811) lt!1397076)))

(declare-fun bs!587906 () Bool)

(assert (= bs!587906 d!1178137))

(assert (=> bs!587906 m!4551343))

(assert (=> bs!587906 m!4551343))

(declare-fun m!4552453 () Bool)

(assert (=> bs!587906 m!4552453))

(declare-fun m!4552455 () Bool)

(assert (=> bs!587906 m!4552455))

(assert (=> b!3979017 d!1178137))

(declare-fun d!1178139 () Bool)

(assert (=> d!1178139 (= (maxPrefixOneRule!2633 thiss!21717 (rule!9714 token!484) lt!1396801) (Some!9125 (tuple2!41765 (Token!12563 (apply!9923 (transformation!6712 (rule!9714 token!484)) (seqFromList!4951 lt!1396803)) (rule!9714 token!484) (size!31819 lt!1396803) lt!1396803) suffixResult!105)))))

(declare-fun lt!1397077 () Unit!61189)

(assert (=> d!1178139 (= lt!1397077 (choose!23862 thiss!21717 rules!2999 lt!1396803 lt!1396801 suffixResult!105 (rule!9714 token!484)))))

(assert (=> d!1178139 (not (isEmpty!25432 rules!2999))))

(assert (=> d!1178139 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1455 thiss!21717 rules!2999 lt!1396803 lt!1396801 suffixResult!105 (rule!9714 token!484)) lt!1397077)))

(declare-fun bs!587907 () Bool)

(assert (= bs!587907 d!1178139))

(assert (=> bs!587907 m!4551421))

(assert (=> bs!587907 m!4551423))

(assert (=> bs!587907 m!4551421))

(assert (=> bs!587907 m!4551419))

(assert (=> bs!587907 m!4551455))

(assert (=> bs!587907 m!4551437))

(declare-fun m!4552457 () Bool)

(assert (=> bs!587907 m!4552457))

(assert (=> b!3979017 d!1178139))

(declare-fun b!3979639 () Bool)

(declare-fun e!2466060 () Bool)

(declare-fun inv!17 (TokenValue!6942) Bool)

(assert (=> b!3979639 (= e!2466060 (inv!17 (value!211926 token!484)))))

(declare-fun d!1178141 () Bool)

(declare-fun c!689583 () Bool)

(assert (=> d!1178141 (= c!689583 ((_ is IntegerValue!20826) (value!211926 token!484)))))

(declare-fun e!2466062 () Bool)

(assert (=> d!1178141 (= (inv!21 (value!211926 token!484)) e!2466062)))

(declare-fun b!3979640 () Bool)

(assert (=> b!3979640 (= e!2466062 e!2466060)))

(declare-fun c!689582 () Bool)

(assert (=> b!3979640 (= c!689582 ((_ is IntegerValue!20827) (value!211926 token!484)))))

(declare-fun b!3979641 () Bool)

(declare-fun res!1612534 () Bool)

(declare-fun e!2466061 () Bool)

(assert (=> b!3979641 (=> res!1612534 e!2466061)))

(assert (=> b!3979641 (= res!1612534 (not ((_ is IntegerValue!20828) (value!211926 token!484))))))

(assert (=> b!3979641 (= e!2466060 e!2466061)))

(declare-fun b!3979642 () Bool)

(declare-fun inv!15 (TokenValue!6942) Bool)

(assert (=> b!3979642 (= e!2466061 (inv!15 (value!211926 token!484)))))

(declare-fun b!3979643 () Bool)

(declare-fun inv!16 (TokenValue!6942) Bool)

(assert (=> b!3979643 (= e!2466062 (inv!16 (value!211926 token!484)))))

(assert (= (and d!1178141 c!689583) b!3979643))

(assert (= (and d!1178141 (not c!689583)) b!3979640))

(assert (= (and b!3979640 c!689582) b!3979639))

(assert (= (and b!3979640 (not c!689582)) b!3979641))

(assert (= (and b!3979641 (not res!1612534)) b!3979642))

(declare-fun m!4552459 () Bool)

(assert (=> b!3979639 m!4552459))

(declare-fun m!4552461 () Bool)

(assert (=> b!3979642 m!4552461))

(declare-fun m!4552463 () Bool)

(assert (=> b!3979643 m!4552463))

(assert (=> b!3978995 d!1178141))

(declare-fun lt!1397078 () List!42658)

(declare-fun e!2466063 () Bool)

(declare-fun b!3979647 () Bool)

(assert (=> b!3979647 (= e!2466063 (or (not (= lt!1396811 Nil!42534)) (= lt!1397078 lt!1396803)))))

(declare-fun b!3979645 () Bool)

(declare-fun e!2466064 () List!42658)

(assert (=> b!3979645 (= e!2466064 (Cons!42534 (h!47954 lt!1396803) (++!11114 (t!331217 lt!1396803) lt!1396811)))))

(declare-fun d!1178143 () Bool)

(assert (=> d!1178143 e!2466063))

(declare-fun res!1612535 () Bool)

(assert (=> d!1178143 (=> (not res!1612535) (not e!2466063))))

(assert (=> d!1178143 (= res!1612535 (= (content!6449 lt!1397078) ((_ map or) (content!6449 lt!1396803) (content!6449 lt!1396811))))))

(assert (=> d!1178143 (= lt!1397078 e!2466064)))

(declare-fun c!689584 () Bool)

(assert (=> d!1178143 (= c!689584 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178143 (= (++!11114 lt!1396803 lt!1396811) lt!1397078)))

(declare-fun b!3979644 () Bool)

(assert (=> b!3979644 (= e!2466064 lt!1396811)))

(declare-fun b!3979646 () Bool)

(declare-fun res!1612536 () Bool)

(assert (=> b!3979646 (=> (not res!1612536) (not e!2466063))))

(assert (=> b!3979646 (= res!1612536 (= (size!31819 lt!1397078) (+ (size!31819 lt!1396803) (size!31819 lt!1396811))))))

(assert (= (and d!1178143 c!689584) b!3979644))

(assert (= (and d!1178143 (not c!689584)) b!3979645))

(assert (= (and d!1178143 res!1612535) b!3979646))

(assert (= (and b!3979646 res!1612536) b!3979647))

(declare-fun m!4552465 () Bool)

(assert (=> b!3979645 m!4552465))

(declare-fun m!4552467 () Bool)

(assert (=> d!1178143 m!4552467))

(assert (=> d!1178143 m!4552221))

(declare-fun m!4552469 () Bool)

(assert (=> d!1178143 m!4552469))

(declare-fun m!4552471 () Bool)

(assert (=> b!3979646 m!4552471))

(assert (=> b!3979646 m!4551437))

(declare-fun m!4552473 () Bool)

(assert (=> b!3979646 m!4552473))

(assert (=> b!3979013 d!1178143))

(declare-fun lt!1397079 () List!42658)

(declare-fun e!2466065 () Bool)

(declare-fun b!3979651 () Bool)

(assert (=> b!3979651 (= e!2466065 (or (not (= suffix!1299 Nil!42534)) (= lt!1397079 lt!1396792)))))

(declare-fun b!3979649 () Bool)

(declare-fun e!2466066 () List!42658)

(assert (=> b!3979649 (= e!2466066 (Cons!42534 (h!47954 lt!1396792) (++!11114 (t!331217 lt!1396792) suffix!1299)))))

(declare-fun d!1178145 () Bool)

(assert (=> d!1178145 e!2466065))

(declare-fun res!1612537 () Bool)

(assert (=> d!1178145 (=> (not res!1612537) (not e!2466065))))

(assert (=> d!1178145 (= res!1612537 (= (content!6449 lt!1397079) ((_ map or) (content!6449 lt!1396792) (content!6449 suffix!1299))))))

(assert (=> d!1178145 (= lt!1397079 e!2466066)))

(declare-fun c!689585 () Bool)

(assert (=> d!1178145 (= c!689585 ((_ is Nil!42534) lt!1396792))))

(assert (=> d!1178145 (= (++!11114 lt!1396792 suffix!1299) lt!1397079)))

(declare-fun b!3979648 () Bool)

(assert (=> b!3979648 (= e!2466066 suffix!1299)))

(declare-fun b!3979650 () Bool)

(declare-fun res!1612538 () Bool)

(assert (=> b!3979650 (=> (not res!1612538) (not e!2466065))))

(assert (=> b!3979650 (= res!1612538 (= (size!31819 lt!1397079) (+ (size!31819 lt!1396792) (size!31819 suffix!1299))))))

(assert (= (and d!1178145 c!689585) b!3979648))

(assert (= (and d!1178145 (not c!689585)) b!3979649))

(assert (= (and d!1178145 res!1612537) b!3979650))

(assert (= (and b!3979650 res!1612538) b!3979651))

(declare-fun m!4552475 () Bool)

(assert (=> b!3979649 m!4552475))

(declare-fun m!4552477 () Bool)

(assert (=> d!1178145 m!4552477))

(declare-fun m!4552479 () Bool)

(assert (=> d!1178145 m!4552479))

(declare-fun m!4552481 () Bool)

(assert (=> d!1178145 m!4552481))

(declare-fun m!4552483 () Bool)

(assert (=> b!3979650 m!4552483))

(declare-fun m!4552485 () Bool)

(assert (=> b!3979650 m!4552485))

(assert (=> b!3979650 m!4551461))

(assert (=> b!3979013 d!1178145))

(declare-fun lt!1397080 () List!42658)

(declare-fun b!3979655 () Bool)

(declare-fun e!2466067 () Bool)

(assert (=> b!3979655 (= e!2466067 (or (not (= suffix!1299 Nil!42534)) (= lt!1397080 lt!1396831)))))

(declare-fun b!3979653 () Bool)

(declare-fun e!2466068 () List!42658)

(assert (=> b!3979653 (= e!2466068 (Cons!42534 (h!47954 lt!1396831) (++!11114 (t!331217 lt!1396831) suffix!1299)))))

(declare-fun d!1178147 () Bool)

(assert (=> d!1178147 e!2466067))

(declare-fun res!1612539 () Bool)

(assert (=> d!1178147 (=> (not res!1612539) (not e!2466067))))

(assert (=> d!1178147 (= res!1612539 (= (content!6449 lt!1397080) ((_ map or) (content!6449 lt!1396831) (content!6449 suffix!1299))))))

(assert (=> d!1178147 (= lt!1397080 e!2466068)))

(declare-fun c!689586 () Bool)

(assert (=> d!1178147 (= c!689586 ((_ is Nil!42534) lt!1396831))))

(assert (=> d!1178147 (= (++!11114 lt!1396831 suffix!1299) lt!1397080)))

(declare-fun b!3979652 () Bool)

(assert (=> b!3979652 (= e!2466068 suffix!1299)))

(declare-fun b!3979654 () Bool)

(declare-fun res!1612540 () Bool)

(assert (=> b!3979654 (=> (not res!1612540) (not e!2466067))))

(assert (=> b!3979654 (= res!1612540 (= (size!31819 lt!1397080) (+ (size!31819 lt!1396831) (size!31819 suffix!1299))))))

(assert (= (and d!1178147 c!689586) b!3979652))

(assert (= (and d!1178147 (not c!689586)) b!3979653))

(assert (= (and d!1178147 res!1612539) b!3979654))

(assert (= (and b!3979654 res!1612540) b!3979655))

(declare-fun m!4552487 () Bool)

(assert (=> b!3979653 m!4552487))

(declare-fun m!4552489 () Bool)

(assert (=> d!1178147 m!4552489))

(declare-fun m!4552491 () Bool)

(assert (=> d!1178147 m!4552491))

(assert (=> d!1178147 m!4552481))

(declare-fun m!4552493 () Bool)

(assert (=> b!3979654 m!4552493))

(declare-fun m!4552495 () Bool)

(assert (=> b!3979654 m!4552495))

(assert (=> b!3979654 m!4551461))

(assert (=> b!3979013 d!1178147))

(declare-fun d!1178149 () Bool)

(assert (=> d!1178149 (= (++!11114 (++!11114 lt!1396803 lt!1396831) suffix!1299) (++!11114 lt!1396803 (++!11114 lt!1396831 suffix!1299)))))

(declare-fun lt!1397081 () Unit!61189)

(assert (=> d!1178149 (= lt!1397081 (choose!23856 lt!1396803 lt!1396831 suffix!1299))))

(assert (=> d!1178149 (= (lemmaConcatAssociativity!2434 lt!1396803 lt!1396831 suffix!1299) lt!1397081)))

(declare-fun bs!587908 () Bool)

(assert (= bs!587908 d!1178149))

(assert (=> bs!587908 m!4551347))

(assert (=> bs!587908 m!4551429))

(declare-fun m!4552497 () Bool)

(assert (=> bs!587908 m!4552497))

(declare-fun m!4552499 () Bool)

(assert (=> bs!587908 m!4552499))

(assert (=> bs!587908 m!4551347))

(declare-fun m!4552501 () Bool)

(assert (=> bs!587908 m!4552501))

(assert (=> bs!587908 m!4551429))

(assert (=> b!3979013 d!1178149))

(declare-fun d!1178151 () Bool)

(assert (=> d!1178151 (= (isEmpty!25432 rules!2999) ((_ is Nil!42536) rules!2999))))

(assert (=> b!3979012 d!1178151))

(declare-fun d!1178153 () Bool)

(assert (=> d!1178153 (= (inv!56820 (tag!7572 (h!47956 rules!2999))) (= (mod (str.len (value!211925 (tag!7572 (h!47956 rules!2999)))) 2) 0))))

(assert (=> b!3978991 d!1178153))

(declare-fun d!1178155 () Bool)

(declare-fun res!1612541 () Bool)

(declare-fun e!2466069 () Bool)

(assert (=> d!1178155 (=> (not res!1612541) (not e!2466069))))

(assert (=> d!1178155 (= res!1612541 (semiInverseModEq!2881 (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toValue!9200 (transformation!6712 (h!47956 rules!2999)))))))

(assert (=> d!1178155 (= (inv!56823 (transformation!6712 (h!47956 rules!2999))) e!2466069)))

(declare-fun b!3979656 () Bool)

(assert (=> b!3979656 (= e!2466069 (equivClasses!2780 (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toValue!9200 (transformation!6712 (h!47956 rules!2999)))))))

(assert (= (and d!1178155 res!1612541) b!3979656))

(declare-fun m!4552503 () Bool)

(assert (=> d!1178155 m!4552503))

(declare-fun m!4552505 () Bool)

(assert (=> b!3979656 m!4552505))

(assert (=> b!3978991 d!1178155))

(declare-fun e!2466070 () Bool)

(declare-fun b!3979660 () Bool)

(declare-fun lt!1397082 () List!42658)

(assert (=> b!3979660 (= e!2466070 (or (not (= (getSuffix!2230 lt!1396807 lt!1396805) Nil!42534)) (= lt!1397082 lt!1396805)))))

(declare-fun b!3979658 () Bool)

(declare-fun e!2466071 () List!42658)

(assert (=> b!3979658 (= e!2466071 (Cons!42534 (h!47954 lt!1396805) (++!11114 (t!331217 lt!1396805) (getSuffix!2230 lt!1396807 lt!1396805))))))

(declare-fun d!1178157 () Bool)

(assert (=> d!1178157 e!2466070))

(declare-fun res!1612542 () Bool)

(assert (=> d!1178157 (=> (not res!1612542) (not e!2466070))))

(assert (=> d!1178157 (= res!1612542 (= (content!6449 lt!1397082) ((_ map or) (content!6449 lt!1396805) (content!6449 (getSuffix!2230 lt!1396807 lt!1396805)))))))

(assert (=> d!1178157 (= lt!1397082 e!2466071)))

(declare-fun c!689587 () Bool)

(assert (=> d!1178157 (= c!689587 ((_ is Nil!42534) lt!1396805))))

(assert (=> d!1178157 (= (++!11114 lt!1396805 (getSuffix!2230 lt!1396807 lt!1396805)) lt!1397082)))

(declare-fun b!3979657 () Bool)

(assert (=> b!3979657 (= e!2466071 (getSuffix!2230 lt!1396807 lt!1396805))))

(declare-fun b!3979659 () Bool)

(declare-fun res!1612543 () Bool)

(assert (=> b!3979659 (=> (not res!1612543) (not e!2466070))))

(assert (=> b!3979659 (= res!1612543 (= (size!31819 lt!1397082) (+ (size!31819 lt!1396805) (size!31819 (getSuffix!2230 lt!1396807 lt!1396805)))))))

(assert (= (and d!1178157 c!689587) b!3979657))

(assert (= (and d!1178157 (not c!689587)) b!3979658))

(assert (= (and d!1178157 res!1612542) b!3979659))

(assert (= (and b!3979659 res!1612543) b!3979660))

(assert (=> b!3979658 m!4551329))

(declare-fun m!4552507 () Bool)

(assert (=> b!3979658 m!4552507))

(declare-fun m!4552509 () Bool)

(assert (=> d!1178157 m!4552509))

(assert (=> d!1178157 m!4551595))

(assert (=> d!1178157 m!4551329))

(declare-fun m!4552511 () Bool)

(assert (=> d!1178157 m!4552511))

(declare-fun m!4552513 () Bool)

(assert (=> b!3979659 m!4552513))

(assert (=> b!3979659 m!4551395))

(assert (=> b!3979659 m!4551329))

(declare-fun m!4552515 () Bool)

(assert (=> b!3979659 m!4552515))

(assert (=> b!3979014 d!1178157))

(declare-fun d!1178159 () Bool)

(declare-fun lt!1397083 () List!42658)

(assert (=> d!1178159 (= (++!11114 lt!1396805 lt!1397083) lt!1396807)))

(declare-fun e!2466072 () List!42658)

(assert (=> d!1178159 (= lt!1397083 e!2466072)))

(declare-fun c!689588 () Bool)

(assert (=> d!1178159 (= c!689588 ((_ is Cons!42534) lt!1396805))))

(assert (=> d!1178159 (>= (size!31819 lt!1396807) (size!31819 lt!1396805))))

(assert (=> d!1178159 (= (getSuffix!2230 lt!1396807 lt!1396805) lt!1397083)))

(declare-fun b!3979661 () Bool)

(assert (=> b!3979661 (= e!2466072 (getSuffix!2230 (tail!6207 lt!1396807) (t!331217 lt!1396805)))))

(declare-fun b!3979662 () Bool)

(assert (=> b!3979662 (= e!2466072 lt!1396807)))

(assert (= (and d!1178159 c!689588) b!3979661))

(assert (= (and d!1178159 (not c!689588)) b!3979662))

(declare-fun m!4552517 () Bool)

(assert (=> d!1178159 m!4552517))

(assert (=> d!1178159 m!4551459))

(assert (=> d!1178159 m!4551395))

(assert (=> b!3979661 m!4552169))

(assert (=> b!3979661 m!4552169))

(declare-fun m!4552519 () Bool)

(assert (=> b!3979661 m!4552519))

(assert (=> b!3979014 d!1178159))

(declare-fun b!3979663 () Bool)

(declare-fun e!2466073 () Bool)

(declare-fun lt!1397086 () Option!9126)

(assert (=> b!3979663 (= e!2466073 (contains!8467 rules!2999 (rule!9714 (_1!24016 (get!14006 lt!1397086)))))))

(declare-fun b!3979664 () Bool)

(declare-fun e!2466075 () Option!9126)

(declare-fun lt!1397087 () Option!9126)

(declare-fun lt!1397085 () Option!9126)

(assert (=> b!3979664 (= e!2466075 (ite (and ((_ is None!9125) lt!1397087) ((_ is None!9125) lt!1397085)) None!9125 (ite ((_ is None!9125) lt!1397085) lt!1397087 (ite ((_ is None!9125) lt!1397087) lt!1397085 (ite (>= (size!31818 (_1!24016 (v!39473 lt!1397087))) (size!31818 (_1!24016 (v!39473 lt!1397085)))) lt!1397087 lt!1397085)))))))

(declare-fun call!285712 () Option!9126)

(assert (=> b!3979664 (= lt!1397087 call!285712)))

(assert (=> b!3979664 (= lt!1397085 (maxPrefix!3599 thiss!21717 (t!331219 rules!2999) lt!1396801))))

(declare-fun b!3979665 () Bool)

(declare-fun e!2466074 () Bool)

(assert (=> b!3979665 (= e!2466074 e!2466073)))

(declare-fun res!1612544 () Bool)

(assert (=> b!3979665 (=> (not res!1612544) (not e!2466073))))

(assert (=> b!3979665 (= res!1612544 (isDefined!7026 lt!1397086))))

(declare-fun b!3979666 () Bool)

(declare-fun res!1612548 () Bool)

(assert (=> b!3979666 (=> (not res!1612548) (not e!2466073))))

(assert (=> b!3979666 (= res!1612548 (= (value!211926 (_1!24016 (get!14006 lt!1397086))) (apply!9923 (transformation!6712 (rule!9714 (_1!24016 (get!14006 lt!1397086)))) (seqFromList!4951 (originalCharacters!7312 (_1!24016 (get!14006 lt!1397086)))))))))

(declare-fun d!1178161 () Bool)

(assert (=> d!1178161 e!2466074))

(declare-fun res!1612545 () Bool)

(assert (=> d!1178161 (=> res!1612545 e!2466074)))

(assert (=> d!1178161 (= res!1612545 (isEmpty!25436 lt!1397086))))

(assert (=> d!1178161 (= lt!1397086 e!2466075)))

(declare-fun c!689589 () Bool)

(assert (=> d!1178161 (= c!689589 (and ((_ is Cons!42536) rules!2999) ((_ is Nil!42536) (t!331219 rules!2999))))))

(declare-fun lt!1397088 () Unit!61189)

(declare-fun lt!1397084 () Unit!61189)

(assert (=> d!1178161 (= lt!1397088 lt!1397084)))

(assert (=> d!1178161 (isPrefix!3799 lt!1396801 lt!1396801)))

(assert (=> d!1178161 (= lt!1397084 (lemmaIsPrefixRefl!2391 lt!1396801 lt!1396801))))

(assert (=> d!1178161 (rulesValidInductive!2437 thiss!21717 rules!2999)))

(assert (=> d!1178161 (= (maxPrefix!3599 thiss!21717 rules!2999 lt!1396801) lt!1397086)))

(declare-fun b!3979667 () Bool)

(declare-fun res!1612549 () Bool)

(assert (=> b!3979667 (=> (not res!1612549) (not e!2466073))))

(assert (=> b!3979667 (= res!1612549 (matchR!5594 (regex!6712 (rule!9714 (_1!24016 (get!14006 lt!1397086)))) (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397086))))))))

(declare-fun b!3979668 () Bool)

(assert (=> b!3979668 (= e!2466075 call!285712)))

(declare-fun b!3979669 () Bool)

(declare-fun res!1612546 () Bool)

(assert (=> b!3979669 (=> (not res!1612546) (not e!2466073))))

(assert (=> b!3979669 (= res!1612546 (= (++!11114 (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397086)))) (_2!24016 (get!14006 lt!1397086))) lt!1396801))))

(declare-fun b!3979670 () Bool)

(declare-fun res!1612547 () Bool)

(assert (=> b!3979670 (=> (not res!1612547) (not e!2466073))))

(assert (=> b!3979670 (= res!1612547 (= (list!15786 (charsOf!4528 (_1!24016 (get!14006 lt!1397086)))) (originalCharacters!7312 (_1!24016 (get!14006 lt!1397086)))))))

(declare-fun b!3979671 () Bool)

(declare-fun res!1612550 () Bool)

(assert (=> b!3979671 (=> (not res!1612550) (not e!2466073))))

(assert (=> b!3979671 (= res!1612550 (< (size!31819 (_2!24016 (get!14006 lt!1397086))) (size!31819 lt!1396801)))))

(declare-fun bm!285707 () Bool)

(assert (=> bm!285707 (= call!285712 (maxPrefixOneRule!2633 thiss!21717 (h!47956 rules!2999) lt!1396801))))

(assert (= (and d!1178161 c!689589) b!3979668))

(assert (= (and d!1178161 (not c!689589)) b!3979664))

(assert (= (or b!3979668 b!3979664) bm!285707))

(assert (= (and d!1178161 (not res!1612545)) b!3979665))

(assert (= (and b!3979665 res!1612544) b!3979670))

(assert (= (and b!3979670 res!1612547) b!3979671))

(assert (= (and b!3979671 res!1612550) b!3979669))

(assert (= (and b!3979669 res!1612546) b!3979666))

(assert (= (and b!3979666 res!1612548) b!3979667))

(assert (= (and b!3979667 res!1612549) b!3979663))

(declare-fun m!4552521 () Bool)

(assert (=> bm!285707 m!4552521))

(declare-fun m!4552523 () Bool)

(assert (=> b!3979663 m!4552523))

(declare-fun m!4552525 () Bool)

(assert (=> b!3979663 m!4552525))

(declare-fun m!4552527 () Bool)

(assert (=> b!3979664 m!4552527))

(assert (=> b!3979671 m!4552523))

(declare-fun m!4552529 () Bool)

(assert (=> b!3979671 m!4552529))

(assert (=> b!3979671 m!4551529))

(assert (=> b!3979667 m!4552523))

(declare-fun m!4552531 () Bool)

(assert (=> b!3979667 m!4552531))

(assert (=> b!3979667 m!4552531))

(declare-fun m!4552533 () Bool)

(assert (=> b!3979667 m!4552533))

(assert (=> b!3979667 m!4552533))

(declare-fun m!4552535 () Bool)

(assert (=> b!3979667 m!4552535))

(declare-fun m!4552537 () Bool)

(assert (=> b!3979665 m!4552537))

(assert (=> b!3979669 m!4552523))

(assert (=> b!3979669 m!4552531))

(assert (=> b!3979669 m!4552531))

(assert (=> b!3979669 m!4552533))

(assert (=> b!3979669 m!4552533))

(declare-fun m!4552539 () Bool)

(assert (=> b!3979669 m!4552539))

(assert (=> b!3979666 m!4552523))

(declare-fun m!4552541 () Bool)

(assert (=> b!3979666 m!4552541))

(assert (=> b!3979666 m!4552541))

(declare-fun m!4552543 () Bool)

(assert (=> b!3979666 m!4552543))

(declare-fun m!4552545 () Bool)

(assert (=> d!1178161 m!4552545))

(assert (=> d!1178161 m!4551337))

(assert (=> d!1178161 m!4551339))

(assert (=> d!1178161 m!4552365))

(assert (=> b!3979670 m!4552523))

(assert (=> b!3979670 m!4552531))

(assert (=> b!3979670 m!4552531))

(assert (=> b!3979670 m!4552533))

(assert (=> b!3978993 d!1178161))

(declare-fun lt!1397089 () List!42658)

(declare-fun b!3979675 () Bool)

(declare-fun e!2466076 () Bool)

(assert (=> b!3979675 (= e!2466076 (or (not (= suffix!1299 Nil!42534)) (= lt!1397089 prefix!494)))))

(declare-fun b!3979673 () Bool)

(declare-fun e!2466077 () List!42658)

(assert (=> b!3979673 (= e!2466077 (Cons!42534 (h!47954 prefix!494) (++!11114 (t!331217 prefix!494) suffix!1299)))))

(declare-fun d!1178163 () Bool)

(assert (=> d!1178163 e!2466076))

(declare-fun res!1612551 () Bool)

(assert (=> d!1178163 (=> (not res!1612551) (not e!2466076))))

(assert (=> d!1178163 (= res!1612551 (= (content!6449 lt!1397089) ((_ map or) (content!6449 prefix!494) (content!6449 suffix!1299))))))

(assert (=> d!1178163 (= lt!1397089 e!2466077)))

(declare-fun c!689590 () Bool)

(assert (=> d!1178163 (= c!689590 ((_ is Nil!42534) prefix!494))))

(assert (=> d!1178163 (= (++!11114 prefix!494 suffix!1299) lt!1397089)))

(declare-fun b!3979672 () Bool)

(assert (=> b!3979672 (= e!2466077 suffix!1299)))

(declare-fun b!3979674 () Bool)

(declare-fun res!1612552 () Bool)

(assert (=> b!3979674 (=> (not res!1612552) (not e!2466076))))

(assert (=> b!3979674 (= res!1612552 (= (size!31819 lt!1397089) (+ (size!31819 prefix!494) (size!31819 suffix!1299))))))

(assert (= (and d!1178163 c!689590) b!3979672))

(assert (= (and d!1178163 (not c!689590)) b!3979673))

(assert (= (and d!1178163 res!1612551) b!3979674))

(assert (= (and b!3979674 res!1612552) b!3979675))

(declare-fun m!4552547 () Bool)

(assert (=> b!3979673 m!4552547))

(declare-fun m!4552549 () Bool)

(assert (=> d!1178163 m!4552549))

(assert (=> d!1178163 m!4551501))

(assert (=> d!1178163 m!4552481))

(declare-fun m!4552551 () Bool)

(assert (=> b!3979674 m!4552551))

(assert (=> b!3979674 m!4551439))

(assert (=> b!3979674 m!4551461))

(assert (=> b!3978993 d!1178163))

(declare-fun d!1178165 () Bool)

(declare-fun res!1612555 () Bool)

(declare-fun e!2466080 () Bool)

(assert (=> d!1178165 (=> (not res!1612555) (not e!2466080))))

(declare-fun rulesValid!2615 (LexerInterface!6301 List!42660) Bool)

(assert (=> d!1178165 (= res!1612555 (rulesValid!2615 thiss!21717 rules!2999))))

(assert (=> d!1178165 (= (rulesInvariant!5644 thiss!21717 rules!2999) e!2466080)))

(declare-fun b!3979678 () Bool)

(declare-datatypes ((List!42662 0))(
  ( (Nil!42538) (Cons!42538 (h!47958 String!48428) (t!331269 List!42662)) )
))
(declare-fun noDuplicateTag!2616 (LexerInterface!6301 List!42660 List!42662) Bool)

(assert (=> b!3979678 (= e!2466080 (noDuplicateTag!2616 thiss!21717 rules!2999 Nil!42538))))

(assert (= (and d!1178165 res!1612555) b!3979678))

(declare-fun m!4552553 () Bool)

(assert (=> d!1178165 m!4552553))

(declare-fun m!4552555 () Bool)

(assert (=> b!3979678 m!4552555))

(assert (=> b!3978992 d!1178165))

(declare-fun e!2466081 () Bool)

(declare-fun b!3979682 () Bool)

(declare-fun lt!1397090 () List!42658)

(assert (=> b!3979682 (= e!2466081 (or (not (= newSuffix!27 Nil!42534)) (= lt!1397090 prefix!494)))))

(declare-fun b!3979680 () Bool)

(declare-fun e!2466082 () List!42658)

(assert (=> b!3979680 (= e!2466082 (Cons!42534 (h!47954 prefix!494) (++!11114 (t!331217 prefix!494) newSuffix!27)))))

(declare-fun d!1178167 () Bool)

(assert (=> d!1178167 e!2466081))

(declare-fun res!1612556 () Bool)

(assert (=> d!1178167 (=> (not res!1612556) (not e!2466081))))

(assert (=> d!1178167 (= res!1612556 (= (content!6449 lt!1397090) ((_ map or) (content!6449 prefix!494) (content!6449 newSuffix!27))))))

(assert (=> d!1178167 (= lt!1397090 e!2466082)))

(declare-fun c!689591 () Bool)

(assert (=> d!1178167 (= c!689591 ((_ is Nil!42534) prefix!494))))

(assert (=> d!1178167 (= (++!11114 prefix!494 newSuffix!27) lt!1397090)))

(declare-fun b!3979679 () Bool)

(assert (=> b!3979679 (= e!2466082 newSuffix!27)))

(declare-fun b!3979681 () Bool)

(declare-fun res!1612557 () Bool)

(assert (=> b!3979681 (=> (not res!1612557) (not e!2466081))))

(assert (=> b!3979681 (= res!1612557 (= (size!31819 lt!1397090) (+ (size!31819 prefix!494) (size!31819 newSuffix!27))))))

(assert (= (and d!1178167 c!689591) b!3979679))

(assert (= (and d!1178167 (not c!689591)) b!3979680))

(assert (= (and d!1178167 res!1612556) b!3979681))

(assert (= (and b!3979681 res!1612557) b!3979682))

(declare-fun m!4552557 () Bool)

(assert (=> b!3979680 m!4552557))

(declare-fun m!4552559 () Bool)

(assert (=> d!1178167 m!4552559))

(assert (=> d!1178167 m!4551501))

(assert (=> d!1178167 m!4552389))

(declare-fun m!4552561 () Bool)

(assert (=> b!3979681 m!4552561))

(assert (=> b!3979681 m!4551439))

(assert (=> b!3979681 m!4551463))

(assert (=> b!3979010 d!1178167))

(declare-fun e!2466083 () Bool)

(declare-fun lt!1397091 () List!42658)

(declare-fun b!3979686 () Bool)

(assert (=> b!3979686 (= e!2466083 (or (not (= newSuffixResult!27 Nil!42534)) (= lt!1397091 lt!1396803)))))

(declare-fun b!3979684 () Bool)

(declare-fun e!2466084 () List!42658)

(assert (=> b!3979684 (= e!2466084 (Cons!42534 (h!47954 lt!1396803) (++!11114 (t!331217 lt!1396803) newSuffixResult!27)))))

(declare-fun d!1178169 () Bool)

(assert (=> d!1178169 e!2466083))

(declare-fun res!1612558 () Bool)

(assert (=> d!1178169 (=> (not res!1612558) (not e!2466083))))

(assert (=> d!1178169 (= res!1612558 (= (content!6449 lt!1397091) ((_ map or) (content!6449 lt!1396803) (content!6449 newSuffixResult!27))))))

(assert (=> d!1178169 (= lt!1397091 e!2466084)))

(declare-fun c!689592 () Bool)

(assert (=> d!1178169 (= c!689592 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178169 (= (++!11114 lt!1396803 newSuffixResult!27) lt!1397091)))

(declare-fun b!3979683 () Bool)

(assert (=> b!3979683 (= e!2466084 newSuffixResult!27)))

(declare-fun b!3979685 () Bool)

(declare-fun res!1612559 () Bool)

(assert (=> b!3979685 (=> (not res!1612559) (not e!2466083))))

(assert (=> b!3979685 (= res!1612559 (= (size!31819 lt!1397091) (+ (size!31819 lt!1396803) (size!31819 newSuffixResult!27))))))

(assert (= (and d!1178169 c!689592) b!3979683))

(assert (= (and d!1178169 (not c!689592)) b!3979684))

(assert (= (and d!1178169 res!1612558) b!3979685))

(assert (= (and b!3979685 res!1612559) b!3979686))

(declare-fun m!4552563 () Bool)

(assert (=> b!3979684 m!4552563))

(declare-fun m!4552565 () Bool)

(assert (=> d!1178169 m!4552565))

(assert (=> d!1178169 m!4552221))

(assert (=> d!1178169 m!4551597))

(declare-fun m!4552567 () Bool)

(assert (=> b!3979685 m!4552567))

(assert (=> b!3979685 m!4551437))

(assert (=> b!3979685 m!4551601))

(assert (=> b!3979010 d!1178169))

(declare-fun lt!1397092 () List!42658)

(declare-fun b!3979690 () Bool)

(declare-fun e!2466085 () Bool)

(assert (=> b!3979690 (= e!2466085 (or (not (= suffixResult!105 Nil!42534)) (= lt!1397092 lt!1396803)))))

(declare-fun b!3979688 () Bool)

(declare-fun e!2466086 () List!42658)

(assert (=> b!3979688 (= e!2466086 (Cons!42534 (h!47954 lt!1396803) (++!11114 (t!331217 lt!1396803) suffixResult!105)))))

(declare-fun d!1178171 () Bool)

(assert (=> d!1178171 e!2466085))

(declare-fun res!1612560 () Bool)

(assert (=> d!1178171 (=> (not res!1612560) (not e!2466085))))

(assert (=> d!1178171 (= res!1612560 (= (content!6449 lt!1397092) ((_ map or) (content!6449 lt!1396803) (content!6449 suffixResult!105))))))

(assert (=> d!1178171 (= lt!1397092 e!2466086)))

(declare-fun c!689593 () Bool)

(assert (=> d!1178171 (= c!689593 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178171 (= (++!11114 lt!1396803 suffixResult!105) lt!1397092)))

(declare-fun b!3979687 () Bool)

(assert (=> b!3979687 (= e!2466086 suffixResult!105)))

(declare-fun b!3979689 () Bool)

(declare-fun res!1612561 () Bool)

(assert (=> b!3979689 (=> (not res!1612561) (not e!2466085))))

(assert (=> b!3979689 (= res!1612561 (= (size!31819 lt!1397092) (+ (size!31819 lt!1396803) (size!31819 suffixResult!105))))))

(assert (= (and d!1178171 c!689593) b!3979687))

(assert (= (and d!1178171 (not c!689593)) b!3979688))

(assert (= (and d!1178171 res!1612560) b!3979689))

(assert (= (and b!3979689 res!1612561) b!3979690))

(declare-fun m!4552569 () Bool)

(assert (=> b!3979688 m!4552569))

(declare-fun m!4552571 () Bool)

(assert (=> d!1178171 m!4552571))

(assert (=> d!1178171 m!4552221))

(declare-fun m!4552573 () Bool)

(assert (=> d!1178171 m!4552573))

(declare-fun m!4552575 () Bool)

(assert (=> b!3979689 m!4552575))

(assert (=> b!3979689 m!4551437))

(declare-fun m!4552577 () Bool)

(assert (=> b!3979689 m!4552577))

(assert (=> b!3978989 d!1178171))

(declare-fun d!1178173 () Bool)

(declare-fun e!2466087 () Bool)

(assert (=> d!1178173 e!2466087))

(declare-fun res!1612562 () Bool)

(assert (=> d!1178173 (=> (not res!1612562) (not e!2466087))))

(assert (=> d!1178173 (= res!1612562 (semiInverseModEq!2881 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))))))

(declare-fun Unit!61199 () Unit!61189)

(assert (=> d!1178173 (= (lemmaInv!927 (transformation!6712 (rule!9714 token!484))) Unit!61199)))

(declare-fun b!3979691 () Bool)

(assert (=> b!3979691 (= e!2466087 (equivClasses!2780 (toChars!9059 (transformation!6712 (rule!9714 token!484))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))))))

(assert (= (and d!1178173 res!1612562) b!3979691))

(assert (=> d!1178173 m!4552381))

(assert (=> b!3979691 m!4552383))

(assert (=> b!3978989 d!1178173))

(declare-fun d!1178175 () Bool)

(declare-fun res!1612563 () Bool)

(declare-fun e!2466088 () Bool)

(assert (=> d!1178175 (=> (not res!1612563) (not e!2466088))))

(assert (=> d!1178175 (= res!1612563 (validRegex!5273 (regex!6712 (rule!9714 token!484))))))

(assert (=> d!1178175 (= (ruleValid!2644 thiss!21717 (rule!9714 token!484)) e!2466088)))

(declare-fun b!3979692 () Bool)

(declare-fun res!1612564 () Bool)

(assert (=> b!3979692 (=> (not res!1612564) (not e!2466088))))

(assert (=> b!3979692 (= res!1612564 (not (nullable!4073 (regex!6712 (rule!9714 token!484)))))))

(declare-fun b!3979693 () Bool)

(assert (=> b!3979693 (= e!2466088 (not (= (tag!7572 (rule!9714 token!484)) (String!48429 ""))))))

(assert (= (and d!1178175 res!1612563) b!3979692))

(assert (= (and b!3979692 res!1612564) b!3979693))

(assert (=> d!1178175 m!4552167))

(assert (=> b!3979692 m!4552157))

(assert (=> b!3978989 d!1178175))

(declare-fun d!1178177 () Bool)

(assert (=> d!1178177 (ruleValid!2644 thiss!21717 (rule!9714 token!484))))

(declare-fun lt!1397093 () Unit!61189)

(assert (=> d!1178177 (= lt!1397093 (choose!23861 thiss!21717 (rule!9714 token!484) rules!2999))))

(assert (=> d!1178177 (contains!8467 rules!2999 (rule!9714 token!484))))

(assert (=> d!1178177 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1718 thiss!21717 (rule!9714 token!484) rules!2999) lt!1397093)))

(declare-fun bs!587909 () Bool)

(assert (= bs!587909 d!1178177))

(assert (=> bs!587909 m!4551469))

(declare-fun m!4552579 () Bool)

(assert (=> bs!587909 m!4552579))

(declare-fun m!4552581 () Bool)

(assert (=> bs!587909 m!4552581))

(assert (=> b!3978989 d!1178177))

(declare-fun e!2466089 () Bool)

(declare-fun b!3979697 () Bool)

(declare-fun lt!1397094 () List!42658)

(assert (=> b!3979697 (= e!2466089 (or (not (= lt!1396831 Nil!42534)) (= lt!1397094 lt!1396803)))))

(declare-fun b!3979695 () Bool)

(declare-fun e!2466090 () List!42658)

(assert (=> b!3979695 (= e!2466090 (Cons!42534 (h!47954 lt!1396803) (++!11114 (t!331217 lt!1396803) lt!1396831)))))

(declare-fun d!1178179 () Bool)

(assert (=> d!1178179 e!2466089))

(declare-fun res!1612565 () Bool)

(assert (=> d!1178179 (=> (not res!1612565) (not e!2466089))))

(assert (=> d!1178179 (= res!1612565 (= (content!6449 lt!1397094) ((_ map or) (content!6449 lt!1396803) (content!6449 lt!1396831))))))

(assert (=> d!1178179 (= lt!1397094 e!2466090)))

(declare-fun c!689594 () Bool)

(assert (=> d!1178179 (= c!689594 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178179 (= (++!11114 lt!1396803 lt!1396831) lt!1397094)))

(declare-fun b!3979694 () Bool)

(assert (=> b!3979694 (= e!2466090 lt!1396831)))

(declare-fun b!3979696 () Bool)

(declare-fun res!1612566 () Bool)

(assert (=> b!3979696 (=> (not res!1612566) (not e!2466089))))

(assert (=> b!3979696 (= res!1612566 (= (size!31819 lt!1397094) (+ (size!31819 lt!1396803) (size!31819 lt!1396831))))))

(assert (= (and d!1178179 c!689594) b!3979694))

(assert (= (and d!1178179 (not c!689594)) b!3979695))

(assert (= (and d!1178179 res!1612565) b!3979696))

(assert (= (and b!3979696 res!1612566) b!3979697))

(declare-fun m!4552583 () Bool)

(assert (=> b!3979695 m!4552583))

(declare-fun m!4552585 () Bool)

(assert (=> d!1178179 m!4552585))

(assert (=> d!1178179 m!4552221))

(assert (=> d!1178179 m!4552491))

(declare-fun m!4552587 () Bool)

(assert (=> b!3979696 m!4552587))

(assert (=> b!3979696 m!4551437))

(assert (=> b!3979696 m!4552495))

(assert (=> b!3978990 d!1178179))

(declare-fun d!1178181 () Bool)

(declare-fun lt!1397095 () List!42658)

(assert (=> d!1178181 (= (++!11114 lt!1396803 lt!1397095) prefix!494)))

(declare-fun e!2466091 () List!42658)

(assert (=> d!1178181 (= lt!1397095 e!2466091)))

(declare-fun c!689595 () Bool)

(assert (=> d!1178181 (= c!689595 ((_ is Cons!42534) lt!1396803))))

(assert (=> d!1178181 (>= (size!31819 prefix!494) (size!31819 lt!1396803))))

(assert (=> d!1178181 (= (getSuffix!2230 prefix!494 lt!1396803) lt!1397095)))

(declare-fun b!3979698 () Bool)

(assert (=> b!3979698 (= e!2466091 (getSuffix!2230 (tail!6207 prefix!494) (t!331217 lt!1396803)))))

(declare-fun b!3979699 () Bool)

(assert (=> b!3979699 (= e!2466091 prefix!494)))

(assert (= (and d!1178181 c!689595) b!3979698))

(assert (= (and d!1178181 (not c!689595)) b!3979699))

(declare-fun m!4552589 () Bool)

(assert (=> d!1178181 m!4552589))

(assert (=> d!1178181 m!4551439))

(assert (=> d!1178181 m!4551437))

(assert (=> b!3979698 m!4551531))

(assert (=> b!3979698 m!4551531))

(declare-fun m!4552591 () Bool)

(assert (=> b!3979698 m!4552591))

(assert (=> b!3978990 d!1178181))

(declare-fun b!3979703 () Bool)

(declare-fun e!2466093 () Bool)

(assert (=> b!3979703 (= e!2466093 (>= (size!31819 prefix!494) (size!31819 lt!1396803)))))

(declare-fun d!1178183 () Bool)

(assert (=> d!1178183 e!2466093))

(declare-fun res!1612570 () Bool)

(assert (=> d!1178183 (=> res!1612570 e!2466093)))

(declare-fun lt!1397096 () Bool)

(assert (=> d!1178183 (= res!1612570 (not lt!1397096))))

(declare-fun e!2466094 () Bool)

(assert (=> d!1178183 (= lt!1397096 e!2466094)))

(declare-fun res!1612569 () Bool)

(assert (=> d!1178183 (=> res!1612569 e!2466094)))

(assert (=> d!1178183 (= res!1612569 ((_ is Nil!42534) lt!1396803))))

(assert (=> d!1178183 (= (isPrefix!3799 lt!1396803 prefix!494) lt!1397096)))

(declare-fun b!3979700 () Bool)

(declare-fun e!2466092 () Bool)

(assert (=> b!3979700 (= e!2466094 e!2466092)))

(declare-fun res!1612567 () Bool)

(assert (=> b!3979700 (=> (not res!1612567) (not e!2466092))))

(assert (=> b!3979700 (= res!1612567 (not ((_ is Nil!42534) prefix!494)))))

(declare-fun b!3979702 () Bool)

(assert (=> b!3979702 (= e!2466092 (isPrefix!3799 (tail!6207 lt!1396803) (tail!6207 prefix!494)))))

(declare-fun b!3979701 () Bool)

(declare-fun res!1612568 () Bool)

(assert (=> b!3979701 (=> (not res!1612568) (not e!2466092))))

(assert (=> b!3979701 (= res!1612568 (= (head!8475 lt!1396803) (head!8475 prefix!494)))))

(assert (= (and d!1178183 (not res!1612569)) b!3979700))

(assert (= (and b!3979700 res!1612567) b!3979701))

(assert (= (and b!3979701 res!1612568) b!3979702))

(assert (= (and d!1178183 (not res!1612570)) b!3979703))

(assert (=> b!3979703 m!4551439))

(assert (=> b!3979703 m!4551437))

(assert (=> b!3979702 m!4551563))

(assert (=> b!3979702 m!4551531))

(assert (=> b!3979702 m!4551563))

(assert (=> b!3979702 m!4551531))

(declare-fun m!4552593 () Bool)

(assert (=> b!3979702 m!4552593))

(assert (=> b!3979701 m!4551567))

(assert (=> b!3979701 m!4551537))

(assert (=> b!3978990 d!1178183))

(declare-fun d!1178185 () Bool)

(assert (=> d!1178185 (isPrefix!3799 lt!1396803 prefix!494)))

(declare-fun lt!1397099 () Unit!61189)

(declare-fun choose!23868 (List!42658 List!42658 List!42658) Unit!61189)

(assert (=> d!1178185 (= lt!1397099 (choose!23868 prefix!494 lt!1396803 lt!1396801))))

(assert (=> d!1178185 (isPrefix!3799 prefix!494 lt!1396801)))

(assert (=> d!1178185 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!377 prefix!494 lt!1396803 lt!1396801) lt!1397099)))

(declare-fun bs!587910 () Bool)

(assert (= bs!587910 d!1178185))

(assert (=> bs!587910 m!4551433))

(declare-fun m!4552595 () Bool)

(assert (=> bs!587910 m!4552595))

(assert (=> bs!587910 m!4551357))

(assert (=> b!3978990 d!1178185))

(declare-fun b!3979714 () Bool)

(declare-fun e!2466097 () Bool)

(assert (=> b!3979714 (= e!2466097 tp_is_empty!20205)))

(assert (=> b!3978991 (= tp!1213132 e!2466097)))

(declare-fun b!3979715 () Bool)

(declare-fun tp!1213195 () Bool)

(declare-fun tp!1213198 () Bool)

(assert (=> b!3979715 (= e!2466097 (and tp!1213195 tp!1213198))))

(declare-fun b!3979716 () Bool)

(declare-fun tp!1213197 () Bool)

(assert (=> b!3979716 (= e!2466097 tp!1213197)))

(declare-fun b!3979717 () Bool)

(declare-fun tp!1213196 () Bool)

(declare-fun tp!1213199 () Bool)

(assert (=> b!3979717 (= e!2466097 (and tp!1213196 tp!1213199))))

(assert (= (and b!3978991 ((_ is ElementMatch!11617) (regex!6712 (h!47956 rules!2999)))) b!3979714))

(assert (= (and b!3978991 ((_ is Concat!18560) (regex!6712 (h!47956 rules!2999)))) b!3979715))

(assert (= (and b!3978991 ((_ is Star!11617) (regex!6712 (h!47956 rules!2999)))) b!3979716))

(assert (= (and b!3978991 ((_ is Union!11617) (regex!6712 (h!47956 rules!2999)))) b!3979717))

(declare-fun b!3979722 () Bool)

(declare-fun e!2466100 () Bool)

(declare-fun tp!1213202 () Bool)

(assert (=> b!3979722 (= e!2466100 (and tp_is_empty!20205 tp!1213202))))

(assert (=> b!3979007 (= tp!1213125 e!2466100)))

(assert (= (and b!3979007 ((_ is Cons!42534) (t!331217 newSuffix!27))) b!3979722))

(declare-fun b!3979723 () Bool)

(declare-fun e!2466101 () Bool)

(declare-fun tp!1213203 () Bool)

(assert (=> b!3979723 (= e!2466101 (and tp_is_empty!20205 tp!1213203))))

(assert (=> b!3979003 (= tp!1213128 e!2466101)))

(assert (= (and b!3979003 ((_ is Cons!42534) (t!331217 newSuffixResult!27))) b!3979723))

(declare-fun b!3979724 () Bool)

(declare-fun e!2466102 () Bool)

(assert (=> b!3979724 (= e!2466102 tp_is_empty!20205)))

(assert (=> b!3979019 (= tp!1213129 e!2466102)))

(declare-fun b!3979725 () Bool)

(declare-fun tp!1213204 () Bool)

(declare-fun tp!1213207 () Bool)

(assert (=> b!3979725 (= e!2466102 (and tp!1213204 tp!1213207))))

(declare-fun b!3979726 () Bool)

(declare-fun tp!1213206 () Bool)

(assert (=> b!3979726 (= e!2466102 tp!1213206)))

(declare-fun b!3979727 () Bool)

(declare-fun tp!1213205 () Bool)

(declare-fun tp!1213208 () Bool)

(assert (=> b!3979727 (= e!2466102 (and tp!1213205 tp!1213208))))

(assert (= (and b!3979019 ((_ is ElementMatch!11617) (regex!6712 (rule!9714 token!484)))) b!3979724))

(assert (= (and b!3979019 ((_ is Concat!18560) (regex!6712 (rule!9714 token!484)))) b!3979725))

(assert (= (and b!3979019 ((_ is Star!11617) (regex!6712 (rule!9714 token!484)))) b!3979726))

(assert (= (and b!3979019 ((_ is Union!11617) (regex!6712 (rule!9714 token!484)))) b!3979727))

(declare-fun b!3979728 () Bool)

(declare-fun e!2466103 () Bool)

(declare-fun tp!1213209 () Bool)

(assert (=> b!3979728 (= e!2466103 (and tp_is_empty!20205 tp!1213209))))

(assert (=> b!3978994 (= tp!1213127 e!2466103)))

(assert (= (and b!3978994 ((_ is Cons!42534) (t!331217 prefix!494))) b!3979728))

(declare-fun b!3979739 () Bool)

(declare-fun b_free!110437 () Bool)

(declare-fun b_next!111141 () Bool)

(assert (=> b!3979739 (= b_free!110437 (not b_next!111141))))

(declare-fun tb!239861 () Bool)

(declare-fun t!331261 () Bool)

(assert (=> (and b!3979739 (= (toValue!9200 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toValue!9200 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331261) tb!239861))

(declare-fun result!290562 () Bool)

(assert (= result!290562 result!290514))

(assert (=> d!1177941 t!331261))

(declare-fun tb!239863 () Bool)

(declare-fun t!331263 () Bool)

(assert (=> (and b!3979739 (= (toValue!9200 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toValue!9200 (transformation!6712 (rule!9714 token!484)))) t!331263) tb!239863))

(declare-fun result!290564 () Bool)

(assert (= result!290564 result!290552))

(assert (=> d!1178135 t!331263))

(declare-fun tp!1213221 () Bool)

(declare-fun b_and!305907 () Bool)

(assert (=> b!3979739 (= tp!1213221 (and (=> t!331261 result!290562) (=> t!331263 result!290564) b_and!305907))))

(declare-fun b_free!110439 () Bool)

(declare-fun b_next!111143 () Bool)

(assert (=> b!3979739 (= b_free!110439 (not b_next!111143))))

(declare-fun tb!239865 () Bool)

(declare-fun t!331265 () Bool)

(assert (=> (and b!3979739 (= (toChars!9059 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toChars!9059 (transformation!6712 (rule!9714 (_1!24016 (v!39473 lt!1396838)))))) t!331265) tb!239865))

(declare-fun result!290566 () Bool)

(assert (= result!290566 result!290508))

(assert (=> d!1177921 t!331265))

(declare-fun t!331267 () Bool)

(declare-fun tb!239867 () Bool)

(assert (=> (and b!3979739 (= (toChars!9059 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toChars!9059 (transformation!6712 (rule!9714 token!484)))) t!331267) tb!239867))

(declare-fun result!290568 () Bool)

(assert (= result!290568 result!290534))

(assert (=> b!3979448 t!331267))

(assert (=> d!1178059 t!331267))

(declare-fun tp!1213220 () Bool)

(declare-fun b_and!305909 () Bool)

(assert (=> b!3979739 (= tp!1213220 (and (=> t!331265 result!290566) (=> t!331267 result!290568) b_and!305909))))

(declare-fun e!2466112 () Bool)

(assert (=> b!3979739 (= e!2466112 (and tp!1213221 tp!1213220))))

(declare-fun e!2466113 () Bool)

(declare-fun b!3979738 () Bool)

(declare-fun tp!1213218 () Bool)

(assert (=> b!3979738 (= e!2466113 (and tp!1213218 (inv!56820 (tag!7572 (h!47956 (t!331219 rules!2999)))) (inv!56823 (transformation!6712 (h!47956 (t!331219 rules!2999)))) e!2466112))))

(declare-fun b!3979737 () Bool)

(declare-fun e!2466115 () Bool)

(declare-fun tp!1213219 () Bool)

(assert (=> b!3979737 (= e!2466115 (and e!2466113 tp!1213219))))

(assert (=> b!3979021 (= tp!1213133 e!2466115)))

(assert (= b!3979738 b!3979739))

(assert (= b!3979737 b!3979738))

(assert (= (and b!3979021 ((_ is Cons!42536) (t!331219 rules!2999))) b!3979737))

(declare-fun m!4552597 () Bool)

(assert (=> b!3979738 m!4552597))

(declare-fun m!4552599 () Bool)

(assert (=> b!3979738 m!4552599))

(declare-fun b!3979740 () Bool)

(declare-fun e!2466116 () Bool)

(declare-fun tp!1213222 () Bool)

(assert (=> b!3979740 (= e!2466116 (and tp_is_empty!20205 tp!1213222))))

(assert (=> b!3979016 (= tp!1213130 e!2466116)))

(assert (= (and b!3979016 ((_ is Cons!42534) (t!331217 suffixResult!105))) b!3979740))

(declare-fun b!3979741 () Bool)

(declare-fun e!2466117 () Bool)

(declare-fun tp!1213223 () Bool)

(assert (=> b!3979741 (= e!2466117 (and tp_is_empty!20205 tp!1213223))))

(assert (=> b!3978995 (= tp!1213134 e!2466117)))

(assert (= (and b!3978995 ((_ is Cons!42534) (originalCharacters!7312 token!484))) b!3979741))

(declare-fun b!3979742 () Bool)

(declare-fun e!2466118 () Bool)

(declare-fun tp!1213224 () Bool)

(assert (=> b!3979742 (= e!2466118 (and tp_is_empty!20205 tp!1213224))))

(assert (=> b!3979011 (= tp!1213124 e!2466118)))

(assert (= (and b!3979011 ((_ is Cons!42534) (t!331217 suffix!1299))) b!3979742))

(declare-fun b_lambda!116265 () Bool)

(assert (= b_lambda!116263 (or (and b!3979023 b_free!110425 (= (toValue!9200 (transformation!6712 (h!47956 rules!2999))) (toValue!9200 (transformation!6712 (rule!9714 token!484))))) (and b!3979005 b_free!110429) (and b!3979739 b_free!110437 (= (toValue!9200 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toValue!9200 (transformation!6712 (rule!9714 token!484))))) b_lambda!116265)))

(declare-fun b_lambda!116267 () Bool)

(assert (= b_lambda!116253 (or (and b!3979023 b_free!110427 (= (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toChars!9059 (transformation!6712 (rule!9714 token!484))))) (and b!3979005 b_free!110431) (and b!3979739 b_free!110439 (= (toChars!9059 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toChars!9059 (transformation!6712 (rule!9714 token!484))))) b_lambda!116267)))

(declare-fun b_lambda!116269 () Bool)

(assert (= b_lambda!116255 (or (and b!3979023 b_free!110427 (= (toChars!9059 (transformation!6712 (h!47956 rules!2999))) (toChars!9059 (transformation!6712 (rule!9714 token!484))))) (and b!3979005 b_free!110431) (and b!3979739 b_free!110439 (= (toChars!9059 (transformation!6712 (h!47956 (t!331219 rules!2999)))) (toChars!9059 (transformation!6712 (rule!9714 token!484))))) b_lambda!116269)))

(check-sat (not b!3979606) (not b!3979653) (not b!3979643) (not b!3979413) (not b_next!111131) (not b!3979449) (not d!1177921) (not b!3979398) (not d!1178155) (not b!3979740) (not b!3979079) (not b!3979065) (not b!3979650) (not b!3979673) (not b!3979665) (not b!3979078) (not bm!285707) (not b!3979698) (not b!3979727) (not d!1178167) (not b!3979663) (not b_next!111129) b_and!305897 (not b!3979169) (not b!3979695) b_and!305909 b_and!305905 (not b!3979286) (not d!1177851) (not b!3979094) (not d!1177879) (not d!1178143) (not d!1177849) (not b!3979701) (not b!3979649) (not b!3979066) (not d!1178059) (not b!3979681) (not b_lambda!116243) (not d!1177867) (not d!1178117) (not b!3979241) (not d!1178137) (not b_lambda!116241) (not b!3979456) (not b!3979602) (not tb!239845) (not d!1178045) (not b!3979284) (not d!1177931) (not b!3979723) (not b!3979139) (not tb!239829) (not b!3979618) (not b!3979333) (not b!3979722) (not b!3979493) (not b!3979464) (not b!3979742) (not d!1177991) (not b_next!111143) (not d!1177947) (not tb!239857) (not b_next!111135) (not b!3979038) (not d!1178165) (not bm!285706) (not b!3979080) (not b!3979450) (not d!1178149) (not b!3979601) (not b!3979628) b_and!305895 (not b!3979598) (not b_next!111141) (not b!3979685) (not b!3979609) (not d!1178121) (not b!3979684) (not d!1178129) (not d!1178077) (not d!1178133) (not b!3979617) (not b!3979639) (not b!3979619) (not b!3979339) (not b!3979462) (not d!1178057) (not b!3979494) (not b!3979095) (not d!1178005) (not b!3979327) (not b!3979604) (not bm!285700) b_and!305903 (not b!3979489) (not b!3979715) (not tb!239825) (not d!1178061) (not d!1178075) (not d!1177897) (not b!3979614) (not d!1178127) (not b!3979142) (not b!3979612) (not b!3979454) (not d!1177919) (not d!1178157) (not d!1178145) (not b!3979403) (not b!3979393) (not b!3979452) (not b!3979087) (not b!3979143) (not b!3979725) (not b!3979702) (not b!3979415) (not b!3979243) (not d!1178177) (not b!3979658) (not b!3979244) (not b!3979335) (not b!3979688) (not d!1178113) (not b!3979622) (not b!3979659) (not d!1177873) (not b!3979661) (not d!1178159) (not b_lambda!116267) (not d!1178041) (not b!3979457) (not b!3979282) (not d!1177965) (not b!3979674) b_and!305907 (not d!1177993) (not b!3979696) (not b!3979642) (not d!1178169) (not b!3979141) (not d!1178185) (not b!3979064) (not d!1178181) (not d!1177887) (not b!3979664) (not b!3979691) (not b!3979035) (not d!1178163) (not b!3979726) (not d!1178063) (not b!3979703) (not b!3979414) (not b!3979670) (not b!3979738) (not b!3979692) (not b!3979448) (not b!3979678) (not b!3979039) (not b!3979717) (not b!3979624) (not d!1178173) (not b!3979397) (not b!3979460) (not b!3979616) (not b!3979458) (not b!3979654) (not d!1177859) (not b!3979594) (not b!3979392) (not b_next!111133) (not b!3979689) (not b!3979600) (not d!1177871) (not b!3979595) (not b!3979737) (not b_lambda!116269) (not b!3979667) (not b!3979239) (not b!3979596) (not b!3979237) (not b!3979611) (not b!3979627) (not b!3979245) (not d!1178125) (not d!1177877) (not b!3979741) (not b!3979034) (not b!3979238) (not b!3979336) (not b!3979155) (not b_lambda!116265) (not b!3979680) (not b!3979156) (not b!3979646) (not d!1178161) (not d!1178147) (not b!3979283) (not b!3979465) (not b!3979240) (not b!3979331) (not d!1178043) (not d!1178051) (not b!3979666) (not b!3979716) (not b!3979728) (not b!3979337) (not b!3979492) (not d!1178175) (not d!1177953) (not b!3979088) (not b!3979401) (not b!3979669) (not b!3979453) (not b!3979626) (not b!3979656) (not b!3979086) (not d!1178179) (not b!3979597) (not b!3979046) (not d!1178171) (not d!1178123) (not d!1178139) (not b!3979671) (not b!3979620) (not b!3979645) (not d!1177847) (not b!3979605) tp_is_empty!20205 (not b!3979623))
(check-sat (not b_next!111131) (not b_next!111143) (not b_next!111135) b_and!305903 b_and!305907 (not b_next!111133) (not b_next!111129) b_and!305897 b_and!305909 b_and!305905 b_and!305895 (not b_next!111141))
