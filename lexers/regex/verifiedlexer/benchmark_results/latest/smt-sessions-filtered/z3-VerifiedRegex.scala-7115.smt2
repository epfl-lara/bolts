; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377288 () Bool)

(assert start!377288)

(declare-fun b!4006980 () Bool)

(declare-fun b_free!111449 () Bool)

(declare-fun b_next!112153 () Bool)

(assert (=> b!4006980 (= b_free!111449 (not b_next!112153))))

(declare-fun tp!1219383 () Bool)

(declare-fun b_and!307751 () Bool)

(assert (=> b!4006980 (= tp!1219383 b_and!307751)))

(declare-fun b_free!111451 () Bool)

(declare-fun b_next!112155 () Bool)

(assert (=> b!4006980 (= b_free!111451 (not b_next!112155))))

(declare-fun tp!1219380 () Bool)

(declare-fun b_and!307753 () Bool)

(assert (=> b!4006980 (= tp!1219380 b_and!307753)))

(declare-fun b!4006976 () Bool)

(declare-fun b_free!111453 () Bool)

(declare-fun b_next!112157 () Bool)

(assert (=> b!4006976 (= b_free!111453 (not b_next!112157))))

(declare-fun tp!1219386 () Bool)

(declare-fun b_and!307755 () Bool)

(assert (=> b!4006976 (= tp!1219386 b_and!307755)))

(declare-fun b_free!111455 () Bool)

(declare-fun b_next!112159 () Bool)

(assert (=> b!4006976 (= b_free!111455 (not b_next!112159))))

(declare-fun tp!1219385 () Bool)

(declare-fun b_and!307757 () Bool)

(assert (=> b!4006976 (= tp!1219385 b_and!307757)))

(declare-fun b!4006957 () Bool)

(declare-fun res!1628316 () Bool)

(declare-fun e!2484888 () Bool)

(assert (=> b!4006957 (=> (not res!1628316) (not e!2484888))))

(declare-datatypes ((C!23632 0))(
  ( (C!23633 (val!13910 Int)) )
))
(declare-datatypes ((List!43014 0))(
  ( (Nil!42890) (Cons!42890 (h!48310 C!23632) (t!332615 List!43014)) )
))
(declare-datatypes ((IArray!26063 0))(
  ( (IArray!26064 (innerList!13089 List!43014)) )
))
(declare-datatypes ((Conc!13029 0))(
  ( (Node!13029 (left!32364 Conc!13029) (right!32694 Conc!13029) (csize!26288 Int) (cheight!13240 Int)) (Leaf!20145 (xs!16335 IArray!26063) (csize!26289 Int)) (Empty!13029) )
))
(declare-datatypes ((BalanceConc!25652 0))(
  ( (BalanceConc!25653 (c!692882 Conc!13029)) )
))
(declare-datatypes ((List!43015 0))(
  ( (Nil!42891) (Cons!42891 (h!48311 (_ BitVec 16)) (t!332616 List!43015)) )
))
(declare-datatypes ((TokenValue!7048 0))(
  ( (FloatLiteralValue!14096 (text!49781 List!43015)) (TokenValueExt!7047 (__x!26313 Int)) (Broken!35240 (value!214921 List!43015)) (Object!7171) (End!7048) (Def!7048) (Underscore!7048) (Match!7048) (Else!7048) (Error!7048) (Case!7048) (If!7048) (Extends!7048) (Abstract!7048) (Class!7048) (Val!7048) (DelimiterValue!14096 (del!7108 List!43015)) (KeywordValue!7054 (value!214922 List!43015)) (CommentValue!14096 (value!214923 List!43015)) (WhitespaceValue!14096 (value!214924 List!43015)) (IndentationValue!7048 (value!214925 List!43015)) (String!48957) (Int32!7048) (Broken!35241 (value!214926 List!43015)) (Boolean!7049) (Unit!61891) (OperatorValue!7051 (op!7108 List!43015)) (IdentifierValue!14096 (value!214927 List!43015)) (IdentifierValue!14097 (value!214928 List!43015)) (WhitespaceValue!14097 (value!214929 List!43015)) (True!14096) (False!14096) (Broken!35242 (value!214930 List!43015)) (Broken!35243 (value!214931 List!43015)) (True!14097) (RightBrace!7048) (RightBracket!7048) (Colon!7048) (Null!7048) (Comma!7048) (LeftBracket!7048) (False!14097) (LeftBrace!7048) (ImaginaryLiteralValue!7048 (text!49782 List!43015)) (StringLiteralValue!21144 (value!214932 List!43015)) (EOFValue!7048 (value!214933 List!43015)) (IdentValue!7048 (value!214934 List!43015)) (DelimiterValue!14097 (value!214935 List!43015)) (DedentValue!7048 (value!214936 List!43015)) (NewLineValue!7048 (value!214937 List!43015)) (IntegerValue!21144 (value!214938 (_ BitVec 32)) (text!49783 List!43015)) (IntegerValue!21145 (value!214939 Int) (text!49784 List!43015)) (Times!7048) (Or!7048) (Equal!7048) (Minus!7048) (Broken!35244 (value!214940 List!43015)) (And!7048) (Div!7048) (LessEqual!7048) (Mod!7048) (Concat!18771) (Not!7048) (Plus!7048) (SpaceValue!7048 (value!214941 List!43015)) (IntegerValue!21146 (value!214942 Int) (text!49785 List!43015)) (StringLiteralValue!21145 (text!49786 List!43015)) (FloatLiteralValue!14097 (text!49787 List!43015)) (BytesLiteralValue!7048 (value!214943 List!43015)) (CommentValue!14097 (value!214944 List!43015)) (StringLiteralValue!21146 (value!214945 List!43015)) (ErrorTokenValue!7048 (msg!7109 List!43015)) )
))
(declare-datatypes ((Regex!11723 0))(
  ( (ElementMatch!11723 (c!692883 C!23632)) (Concat!18772 (regOne!23958 Regex!11723) (regTwo!23958 Regex!11723)) (EmptyExpr!11723) (Star!11723 (reg!12052 Regex!11723)) (EmptyLang!11723) (Union!11723 (regOne!23959 Regex!11723) (regTwo!23959 Regex!11723)) )
))
(declare-datatypes ((String!48958 0))(
  ( (String!48959 (value!214946 String)) )
))
(declare-datatypes ((TokenValueInjection!13524 0))(
  ( (TokenValueInjection!13525 (toValue!9318 Int) (toChars!9177 Int)) )
))
(declare-datatypes ((Rule!13436 0))(
  ( (Rule!13437 (regex!6818 Regex!11723) (tag!7678 String!48958) (isSeparator!6818 Bool) (transformation!6818 TokenValueInjection!13524)) )
))
(declare-datatypes ((Token!12774 0))(
  ( (Token!12775 (value!214947 TokenValue!7048) (rule!9856 Rule!13436) (size!32069 Int) (originalCharacters!7418 List!43014)) )
))
(declare-fun token!484 () Token!12774)

(declare-fun size!32070 (List!43014) Int)

(assert (=> b!4006957 (= res!1628316 (= (size!32069 token!484) (size!32070 (originalCharacters!7418 token!484))))))

(declare-fun b!4006958 () Bool)

(declare-fun res!1628323 () Bool)

(declare-fun e!2484894 () Bool)

(assert (=> b!4006958 (=> (not res!1628323) (not e!2484894))))

(declare-datatypes ((LexerInterface!6407 0))(
  ( (LexerInterfaceExt!6404 (__x!26314 Int)) (Lexer!6405) )
))
(declare-fun thiss!21717 () LexerInterface!6407)

(declare-datatypes ((List!43016 0))(
  ( (Nil!42892) (Cons!42892 (h!48312 Rule!13436) (t!332617 List!43016)) )
))
(declare-fun rules!2999 () List!43016)

(declare-fun rulesInvariant!5750 (LexerInterface!6407 List!43016) Bool)

(assert (=> b!4006958 (= res!1628323 (rulesInvariant!5750 thiss!21717 rules!2999))))

(declare-fun b!4006959 () Bool)

(declare-fun e!2484881 () Bool)

(declare-fun e!2484892 () Bool)

(assert (=> b!4006959 (= e!2484881 e!2484892)))

(declare-fun res!1628321 () Bool)

(assert (=> b!4006959 (=> res!1628321 e!2484892)))

(declare-fun lt!1417641 () List!43014)

(declare-fun lt!1417650 () List!43014)

(declare-fun isPrefix!3905 (List!43014 List!43014) Bool)

(assert (=> b!4006959 (= res!1628321 (not (isPrefix!3905 lt!1417641 lt!1417650)))))

(declare-fun prefix!494 () List!43014)

(assert (=> b!4006959 (isPrefix!3905 prefix!494 lt!1417650)))

(declare-datatypes ((Unit!61892 0))(
  ( (Unit!61893) )
))
(declare-fun lt!1417651 () Unit!61892)

(declare-fun suffix!1299 () List!43014)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2746 (List!43014 List!43014) Unit!61892)

(assert (=> b!4006959 (= lt!1417651 (lemmaConcatTwoListThenFirstIsPrefix!2746 prefix!494 suffix!1299))))

(declare-fun lt!1417654 () List!43014)

(assert (=> b!4006959 (isPrefix!3905 lt!1417641 lt!1417654)))

(declare-fun lt!1417646 () Unit!61892)

(declare-fun suffixResult!105 () List!43014)

(assert (=> b!4006959 (= lt!1417646 (lemmaConcatTwoListThenFirstIsPrefix!2746 lt!1417641 suffixResult!105))))

(declare-fun b!4006960 () Bool)

(declare-fun e!2484896 () Bool)

(declare-fun e!2484897 () Bool)

(assert (=> b!4006960 (= e!2484896 e!2484897)))

(declare-fun res!1628318 () Bool)

(assert (=> b!4006960 (=> res!1628318 e!2484897)))

(declare-datatypes ((tuple2!42046 0))(
  ( (tuple2!42047 (_1!24157 Token!12774) (_2!24157 List!43014)) )
))
(declare-datatypes ((Option!9232 0))(
  ( (None!9231) (Some!9231 (v!39597 tuple2!42046)) )
))
(declare-fun lt!1417645 () Option!9232)

(declare-fun lt!1417637 () Option!9232)

(assert (=> b!4006960 (= res!1628318 (not (= lt!1417645 lt!1417637)))))

(declare-fun lt!1417657 () TokenValue!7048)

(declare-fun lt!1417642 () Int)

(assert (=> b!4006960 (= lt!1417645 (Some!9231 (tuple2!42047 (Token!12775 lt!1417657 (rule!9856 token!484) lt!1417642 lt!1417641) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2725 (LexerInterface!6407 Rule!13436 List!43014) Option!9232)

(assert (=> b!4006960 (= lt!1417645 (maxPrefixOneRule!2725 thiss!21717 (rule!9856 token!484) lt!1417650))))

(declare-fun apply!10015 (TokenValueInjection!13524 BalanceConc!25652) TokenValue!7048)

(declare-fun seqFromList!5043 (List!43014) BalanceConc!25652)

(assert (=> b!4006960 (= lt!1417657 (apply!10015 (transformation!6818 (rule!9856 token!484)) (seqFromList!5043 lt!1417641)))))

(declare-fun lt!1417659 () Unit!61892)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1543 (LexerInterface!6407 List!43016 List!43014 List!43014 List!43014 Rule!13436) Unit!61892)

(assert (=> b!4006960 (= lt!1417659 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1543 thiss!21717 rules!2999 lt!1417641 lt!1417650 suffixResult!105 (rule!9856 token!484)))))

(declare-fun lt!1417639 () List!43014)

(assert (=> b!4006960 (= lt!1417639 suffixResult!105)))

(declare-fun lt!1417656 () Unit!61892)

(declare-fun lemmaSamePrefixThenSameSuffix!2076 (List!43014 List!43014 List!43014 List!43014 List!43014) Unit!61892)

(assert (=> b!4006960 (= lt!1417656 (lemmaSamePrefixThenSameSuffix!2076 lt!1417641 lt!1417639 lt!1417641 suffixResult!105 lt!1417650))))

(declare-fun lt!1417640 () List!43014)

(assert (=> b!4006960 (isPrefix!3905 lt!1417641 lt!1417640)))

(declare-fun lt!1417643 () Unit!61892)

(assert (=> b!4006960 (= lt!1417643 (lemmaConcatTwoListThenFirstIsPrefix!2746 lt!1417641 lt!1417639))))

(declare-fun b!4006961 () Bool)

(declare-fun e!2484895 () Bool)

(assert (=> b!4006961 (= e!2484894 e!2484895)))

(declare-fun res!1628317 () Bool)

(assert (=> b!4006961 (=> (not res!1628317) (not e!2484895))))

(declare-fun lt!1417647 () Int)

(assert (=> b!4006961 (= res!1628317 (>= lt!1417647 lt!1417642))))

(assert (=> b!4006961 (= lt!1417642 (size!32070 lt!1417641))))

(assert (=> b!4006961 (= lt!1417647 (size!32070 prefix!494))))

(declare-fun list!15936 (BalanceConc!25652) List!43014)

(declare-fun charsOf!4634 (Token!12774) BalanceConc!25652)

(assert (=> b!4006961 (= lt!1417641 (list!15936 (charsOf!4634 token!484)))))

(declare-fun e!2484904 () Bool)

(declare-fun tp!1219381 () Bool)

(declare-fun e!2484900 () Bool)

(declare-fun b!4006962 () Bool)

(declare-fun inv!57282 (String!48958) Bool)

(declare-fun inv!57285 (TokenValueInjection!13524) Bool)

(assert (=> b!4006962 (= e!2484904 (and tp!1219381 (inv!57282 (tag!7678 (rule!9856 token!484))) (inv!57285 (transformation!6818 (rule!9856 token!484))) e!2484900))))

(declare-fun b!4006964 () Bool)

(declare-fun e!2484885 () Bool)

(declare-fun tp_is_empty!20417 () Bool)

(declare-fun tp!1219391 () Bool)

(assert (=> b!4006964 (= e!2484885 (and tp_is_empty!20417 tp!1219391))))

(declare-fun tp!1219388 () Bool)

(declare-fun e!2484887 () Bool)

(declare-fun e!2484893 () Bool)

(declare-fun b!4006965 () Bool)

(assert (=> b!4006965 (= e!2484887 (and tp!1219388 (inv!57282 (tag!7678 (h!48312 rules!2999))) (inv!57285 (transformation!6818 (h!48312 rules!2999))) e!2484893))))

(declare-fun b!4006966 () Bool)

(declare-fun e!2484890 () Bool)

(assert (=> b!4006966 (= e!2484890 (not e!2484881))))

(declare-fun res!1628315 () Bool)

(assert (=> b!4006966 (=> res!1628315 e!2484881)))

(assert (=> b!4006966 (= res!1628315 (not (= lt!1417654 lt!1417650)))))

(declare-fun ++!11220 (List!43014 List!43014) List!43014)

(assert (=> b!4006966 (= lt!1417654 (++!11220 lt!1417641 suffixResult!105))))

(declare-fun lt!1417648 () Unit!61892)

(declare-fun lemmaInv!1033 (TokenValueInjection!13524) Unit!61892)

(assert (=> b!4006966 (= lt!1417648 (lemmaInv!1033 (transformation!6818 (rule!9856 token!484))))))

(declare-fun ruleValid!2750 (LexerInterface!6407 Rule!13436) Bool)

(assert (=> b!4006966 (ruleValid!2750 thiss!21717 (rule!9856 token!484))))

(declare-fun lt!1417658 () Unit!61892)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1824 (LexerInterface!6407 Rule!13436 List!43016) Unit!61892)

(assert (=> b!4006966 (= lt!1417658 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1824 thiss!21717 (rule!9856 token!484) rules!2999))))

(declare-fun b!4006967 () Bool)

(declare-fun e!2484901 () Bool)

(assert (=> b!4006967 (= e!2484897 e!2484901)))

(declare-fun res!1628328 () Bool)

(assert (=> b!4006967 (=> res!1628328 e!2484901)))

(declare-fun matchR!5684 (Regex!11723 List!43014) Bool)

(assert (=> b!4006967 (= res!1628328 (not (matchR!5684 (regex!6818 (rule!9856 token!484)) lt!1417641)))))

(declare-fun lt!1417652 () List!43014)

(assert (=> b!4006967 (isPrefix!3905 lt!1417641 lt!1417652)))

(declare-fun lt!1417653 () Unit!61892)

(declare-fun newSuffix!27 () List!43014)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!718 (List!43014 List!43014 List!43014) Unit!61892)

(assert (=> b!4006967 (= lt!1417653 (lemmaPrefixStaysPrefixWhenAddingToSuffix!718 lt!1417641 prefix!494 newSuffix!27))))

(declare-fun lt!1417662 () Unit!61892)

(assert (=> b!4006967 (= lt!1417662 (lemmaPrefixStaysPrefixWhenAddingToSuffix!718 lt!1417641 prefix!494 suffix!1299))))

(declare-fun b!4006968 () Bool)

(declare-fun res!1628327 () Bool)

(assert (=> b!4006968 (=> (not res!1628327) (not e!2484894))))

(assert (=> b!4006968 (= res!1628327 (>= (size!32070 suffix!1299) (size!32070 newSuffix!27)))))

(declare-fun b!4006969 () Bool)

(declare-fun e!2484891 () Bool)

(assert (=> b!4006969 (= e!2484891 e!2484890)))

(declare-fun res!1628314 () Bool)

(assert (=> b!4006969 (=> (not res!1628314) (not e!2484890))))

(declare-fun maxPrefix!3705 (LexerInterface!6407 List!43016 List!43014) Option!9232)

(assert (=> b!4006969 (= res!1628314 (= (maxPrefix!3705 thiss!21717 rules!2999 lt!1417650) lt!1417637))))

(assert (=> b!4006969 (= lt!1417637 (Some!9231 (tuple2!42047 token!484 suffixResult!105)))))

(assert (=> b!4006969 (= lt!1417650 (++!11220 prefix!494 suffix!1299))))

(declare-fun b!4006970 () Bool)

(declare-fun e!2484882 () Bool)

(assert (=> b!4006970 (= e!2484892 e!2484882)))

(declare-fun res!1628329 () Bool)

(assert (=> b!4006970 (=> res!1628329 e!2484882)))

(declare-fun lt!1417644 () List!43014)

(assert (=> b!4006970 (= res!1628329 (not (= lt!1417644 prefix!494)))))

(declare-fun lt!1417663 () List!43014)

(assert (=> b!4006970 (= lt!1417644 (++!11220 lt!1417641 lt!1417663))))

(declare-fun getSuffix!2330 (List!43014 List!43014) List!43014)

(assert (=> b!4006970 (= lt!1417663 (getSuffix!2330 prefix!494 lt!1417641))))

(assert (=> b!4006970 (isPrefix!3905 lt!1417641 prefix!494)))

(declare-fun lt!1417638 () Unit!61892)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!477 (List!43014 List!43014 List!43014) Unit!61892)

(assert (=> b!4006970 (= lt!1417638 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!477 prefix!494 lt!1417641 lt!1417650))))

(declare-fun b!4006971 () Bool)

(declare-fun res!1628320 () Bool)

(assert (=> b!4006971 (=> (not res!1628320) (not e!2484894))))

(assert (=> b!4006971 (= res!1628320 (isPrefix!3905 newSuffix!27 suffix!1299))))

(declare-fun b!4006972 () Bool)

(declare-fun e!2484886 () Bool)

(declare-fun tp!1219390 () Bool)

(assert (=> b!4006972 (= e!2484886 (and e!2484887 tp!1219390))))

(declare-fun b!4006973 () Bool)

(declare-fun e!2484902 () Bool)

(declare-fun tp!1219382 () Bool)

(assert (=> b!4006973 (= e!2484902 (and tp_is_empty!20417 tp!1219382))))

(declare-fun b!4006974 () Bool)

(declare-fun res!1628325 () Bool)

(assert (=> b!4006974 (=> (not res!1628325) (not e!2484888))))

(assert (=> b!4006974 (= res!1628325 (= (value!214947 token!484) lt!1417657))))

(declare-fun b!4006975 () Bool)

(assert (=> b!4006975 (= e!2484882 e!2484896)))

(declare-fun res!1628322 () Bool)

(assert (=> b!4006975 (=> res!1628322 e!2484896)))

(declare-fun lt!1417661 () List!43014)

(assert (=> b!4006975 (= res!1628322 (or (not (= lt!1417650 lt!1417661)) (not (= lt!1417650 lt!1417640))))))

(assert (=> b!4006975 (= lt!1417661 lt!1417640)))

(assert (=> b!4006975 (= lt!1417640 (++!11220 lt!1417641 lt!1417639))))

(assert (=> b!4006975 (= lt!1417661 (++!11220 lt!1417644 suffix!1299))))

(assert (=> b!4006975 (= lt!1417639 (++!11220 lt!1417663 suffix!1299))))

(declare-fun lt!1417660 () Unit!61892)

(declare-fun lemmaConcatAssociativity!2530 (List!43014 List!43014 List!43014) Unit!61892)

(assert (=> b!4006975 (= lt!1417660 (lemmaConcatAssociativity!2530 lt!1417641 lt!1417663 suffix!1299))))

(assert (=> b!4006976 (= e!2484893 (and tp!1219386 tp!1219385))))

(declare-fun b!4006977 () Bool)

(assert (=> b!4006977 (= e!2484895 e!2484891)))

(declare-fun res!1628313 () Bool)

(assert (=> b!4006977 (=> (not res!1628313) (not e!2484891))))

(declare-fun lt!1417655 () List!43014)

(assert (=> b!4006977 (= res!1628313 (= lt!1417655 lt!1417652))))

(assert (=> b!4006977 (= lt!1417652 (++!11220 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43014)

(assert (=> b!4006977 (= lt!1417655 (++!11220 lt!1417641 newSuffixResult!27))))

(declare-fun b!4006978 () Bool)

(declare-fun res!1628319 () Bool)

(assert (=> b!4006978 (=> (not res!1628319) (not e!2484894))))

(declare-fun isEmpty!25622 (List!43016) Bool)

(assert (=> b!4006978 (= res!1628319 (not (isEmpty!25622 rules!2999)))))

(declare-fun b!4006979 () Bool)

(declare-fun e!2484883 () Bool)

(declare-fun tp!1219384 () Bool)

(assert (=> b!4006979 (= e!2484883 (and tp_is_empty!20417 tp!1219384))))

(assert (=> b!4006980 (= e!2484900 (and tp!1219383 tp!1219380))))

(declare-fun b!4006981 () Bool)

(declare-fun e!2484899 () Bool)

(declare-fun tp!1219387 () Bool)

(assert (=> b!4006981 (= e!2484899 (and tp_is_empty!20417 tp!1219387))))

(declare-fun tp!1219389 () Bool)

(declare-fun b!4006982 () Bool)

(declare-fun e!2484903 () Bool)

(declare-fun inv!21 (TokenValue!7048) Bool)

(assert (=> b!4006982 (= e!2484903 (and (inv!21 (value!214947 token!484)) e!2484904 tp!1219389))))

(declare-fun b!4006983 () Bool)

(assert (=> b!4006983 (= e!2484888 (and (= (size!32069 token!484) lt!1417642) (= (originalCharacters!7418 token!484) lt!1417641)))))

(declare-fun b!4006984 () Bool)

(declare-fun e!2484898 () Bool)

(declare-fun tp!1219392 () Bool)

(assert (=> b!4006984 (= e!2484898 (and tp_is_empty!20417 tp!1219392))))

(declare-fun b!4006963 () Bool)

(assert (=> b!4006963 (= e!2484901 true)))

(assert (=> b!4006963 e!2484888))

(declare-fun res!1628326 () Bool)

(assert (=> b!4006963 (=> (not res!1628326) (not e!2484888))))

(assert (=> b!4006963 (= res!1628326 (isPrefix!3905 lt!1417650 lt!1417650))))

(declare-fun lt!1417649 () Unit!61892)

(declare-fun lemmaIsPrefixRefl!2481 (List!43014 List!43014) Unit!61892)

(assert (=> b!4006963 (= lt!1417649 (lemmaIsPrefixRefl!2481 lt!1417650 lt!1417650))))

(declare-fun res!1628324 () Bool)

(assert (=> start!377288 (=> (not res!1628324) (not e!2484894))))

(get-info :version)

(assert (=> start!377288 (= res!1628324 ((_ is Lexer!6405) thiss!21717))))

(assert (=> start!377288 e!2484894))

(assert (=> start!377288 e!2484899))

(declare-fun inv!57286 (Token!12774) Bool)

(assert (=> start!377288 (and (inv!57286 token!484) e!2484903)))

(assert (=> start!377288 e!2484902))

(assert (=> start!377288 e!2484885))

(assert (=> start!377288 e!2484883))

(assert (=> start!377288 true))

(assert (=> start!377288 e!2484886))

(assert (=> start!377288 e!2484898))

(assert (= (and start!377288 res!1628324) b!4006978))

(assert (= (and b!4006978 res!1628319) b!4006958))

(assert (= (and b!4006958 res!1628323) b!4006968))

(assert (= (and b!4006968 res!1628327) b!4006971))

(assert (= (and b!4006971 res!1628320) b!4006961))

(assert (= (and b!4006961 res!1628317) b!4006977))

(assert (= (and b!4006977 res!1628313) b!4006969))

(assert (= (and b!4006969 res!1628314) b!4006966))

(assert (= (and b!4006966 (not res!1628315)) b!4006959))

(assert (= (and b!4006959 (not res!1628321)) b!4006970))

(assert (= (and b!4006970 (not res!1628329)) b!4006975))

(assert (= (and b!4006975 (not res!1628322)) b!4006960))

(assert (= (and b!4006960 (not res!1628318)) b!4006967))

(assert (= (and b!4006967 (not res!1628328)) b!4006963))

(assert (= (and b!4006963 res!1628326) b!4006974))

(assert (= (and b!4006974 res!1628325) b!4006957))

(assert (= (and b!4006957 res!1628316) b!4006983))

(assert (= (and start!377288 ((_ is Cons!42890) prefix!494)) b!4006981))

(assert (= b!4006962 b!4006980))

(assert (= b!4006982 b!4006962))

(assert (= start!377288 b!4006982))

(assert (= (and start!377288 ((_ is Cons!42890) suffixResult!105)) b!4006973))

(assert (= (and start!377288 ((_ is Cons!42890) suffix!1299)) b!4006964))

(assert (= (and start!377288 ((_ is Cons!42890) newSuffix!27)) b!4006979))

(assert (= b!4006965 b!4006976))

(assert (= b!4006972 b!4006965))

(assert (= (and start!377288 ((_ is Cons!42892) rules!2999)) b!4006972))

(assert (= (and start!377288 ((_ is Cons!42890) newSuffixResult!27)) b!4006984))

(declare-fun m!4590305 () Bool)

(assert (=> b!4006975 m!4590305))

(declare-fun m!4590307 () Bool)

(assert (=> b!4006975 m!4590307))

(declare-fun m!4590309 () Bool)

(assert (=> b!4006975 m!4590309))

(declare-fun m!4590311 () Bool)

(assert (=> b!4006975 m!4590311))

(declare-fun m!4590313 () Bool)

(assert (=> b!4006967 m!4590313))

(declare-fun m!4590315 () Bool)

(assert (=> b!4006967 m!4590315))

(declare-fun m!4590317 () Bool)

(assert (=> b!4006967 m!4590317))

(declare-fun m!4590319 () Bool)

(assert (=> b!4006967 m!4590319))

(declare-fun m!4590321 () Bool)

(assert (=> b!4006978 m!4590321))

(declare-fun m!4590323 () Bool)

(assert (=> b!4006960 m!4590323))

(declare-fun m!4590325 () Bool)

(assert (=> b!4006960 m!4590325))

(assert (=> b!4006960 m!4590323))

(declare-fun m!4590327 () Bool)

(assert (=> b!4006960 m!4590327))

(declare-fun m!4590329 () Bool)

(assert (=> b!4006960 m!4590329))

(declare-fun m!4590331 () Bool)

(assert (=> b!4006960 m!4590331))

(declare-fun m!4590333 () Bool)

(assert (=> b!4006960 m!4590333))

(declare-fun m!4590335 () Bool)

(assert (=> b!4006960 m!4590335))

(declare-fun m!4590337 () Bool)

(assert (=> b!4006977 m!4590337))

(declare-fun m!4590339 () Bool)

(assert (=> b!4006977 m!4590339))

(declare-fun m!4590341 () Bool)

(assert (=> b!4006962 m!4590341))

(declare-fun m!4590343 () Bool)

(assert (=> b!4006962 m!4590343))

(declare-fun m!4590345 () Bool)

(assert (=> b!4006961 m!4590345))

(declare-fun m!4590347 () Bool)

(assert (=> b!4006961 m!4590347))

(declare-fun m!4590349 () Bool)

(assert (=> b!4006961 m!4590349))

(assert (=> b!4006961 m!4590349))

(declare-fun m!4590351 () Bool)

(assert (=> b!4006961 m!4590351))

(declare-fun m!4590353 () Bool)

(assert (=> start!377288 m!4590353))

(declare-fun m!4590355 () Bool)

(assert (=> b!4006982 m!4590355))

(declare-fun m!4590357 () Bool)

(assert (=> b!4006970 m!4590357))

(declare-fun m!4590359 () Bool)

(assert (=> b!4006970 m!4590359))

(declare-fun m!4590361 () Bool)

(assert (=> b!4006970 m!4590361))

(declare-fun m!4590363 () Bool)

(assert (=> b!4006970 m!4590363))

(declare-fun m!4590365 () Bool)

(assert (=> b!4006966 m!4590365))

(declare-fun m!4590367 () Bool)

(assert (=> b!4006966 m!4590367))

(declare-fun m!4590369 () Bool)

(assert (=> b!4006966 m!4590369))

(declare-fun m!4590371 () Bool)

(assert (=> b!4006966 m!4590371))

(declare-fun m!4590373 () Bool)

(assert (=> b!4006969 m!4590373))

(declare-fun m!4590375 () Bool)

(assert (=> b!4006969 m!4590375))

(declare-fun m!4590377 () Bool)

(assert (=> b!4006963 m!4590377))

(declare-fun m!4590379 () Bool)

(assert (=> b!4006963 m!4590379))

(declare-fun m!4590381 () Bool)

(assert (=> b!4006957 m!4590381))

(declare-fun m!4590383 () Bool)

(assert (=> b!4006958 m!4590383))

(declare-fun m!4590385 () Bool)

(assert (=> b!4006959 m!4590385))

(declare-fun m!4590387 () Bool)

(assert (=> b!4006959 m!4590387))

(declare-fun m!4590389 () Bool)

(assert (=> b!4006959 m!4590389))

(declare-fun m!4590391 () Bool)

(assert (=> b!4006959 m!4590391))

(declare-fun m!4590393 () Bool)

(assert (=> b!4006959 m!4590393))

(declare-fun m!4590395 () Bool)

(assert (=> b!4006968 m!4590395))

(declare-fun m!4590397 () Bool)

(assert (=> b!4006968 m!4590397))

(declare-fun m!4590399 () Bool)

(assert (=> b!4006965 m!4590399))

(declare-fun m!4590401 () Bool)

(assert (=> b!4006965 m!4590401))

(declare-fun m!4590403 () Bool)

(assert (=> b!4006971 m!4590403))

(check-sat (not b!4006970) (not b!4006967) (not b_next!112155) (not b!4006968) (not b!4006975) b_and!307751 b_and!307757 (not b_next!112159) (not b!4006965) (not b!4006957) (not b!4006962) b_and!307753 (not b!4006961) (not b!4006966) (not b_next!112153) (not b_next!112157) (not b!4006982) (not start!377288) (not b!4006979) (not b!4006963) tp_is_empty!20417 (not b!4006971) (not b!4006959) (not b!4006972) (not b!4006969) (not b!4006960) b_and!307755 (not b!4006984) (not b!4006958) (not b!4006981) (not b!4006964) (not b!4006977) (not b!4006978) (not b!4006973))
(check-sat b_and!307753 b_and!307755 (not b_next!112155) b_and!307751 b_and!307757 (not b_next!112159) (not b_next!112153) (not b_next!112157))
