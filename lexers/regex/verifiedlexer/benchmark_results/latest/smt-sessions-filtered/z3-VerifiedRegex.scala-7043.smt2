; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373752 () Bool)

(assert start!373752)

(declare-fun b!3971932 () Bool)

(declare-fun b_free!110073 () Bool)

(declare-fun b_next!110777 () Bool)

(assert (=> b!3971932 (= b_free!110073 (not b_next!110777))))

(declare-fun tp!1211130 () Bool)

(declare-fun b_and!305343 () Bool)

(assert (=> b!3971932 (= tp!1211130 b_and!305343)))

(declare-fun b_free!110075 () Bool)

(declare-fun b_next!110779 () Bool)

(assert (=> b!3971932 (= b_free!110075 (not b_next!110779))))

(declare-fun tp!1211126 () Bool)

(declare-fun b_and!305345 () Bool)

(assert (=> b!3971932 (= tp!1211126 b_and!305345)))

(declare-fun b!3971926 () Bool)

(declare-fun b_free!110077 () Bool)

(declare-fun b_next!110781 () Bool)

(assert (=> b!3971926 (= b_free!110077 (not b_next!110781))))

(declare-fun tp!1211124 () Bool)

(declare-fun b_and!305347 () Bool)

(assert (=> b!3971926 (= tp!1211124 b_and!305347)))

(declare-fun b_free!110079 () Bool)

(declare-fun b_next!110783 () Bool)

(assert (=> b!3971926 (= b_free!110079 (not b_next!110783))))

(declare-fun tp!1211134 () Bool)

(declare-fun b_and!305349 () Bool)

(assert (=> b!3971926 (= tp!1211134 b_and!305349)))

(declare-datatypes ((C!23344 0))(
  ( (C!23345 (val!13766 Int)) )
))
(declare-datatypes ((List!42532 0))(
  ( (Nil!42408) (Cons!42408 (h!47828 C!23344) (t!330923 List!42532)) )
))
(declare-datatypes ((IArray!25775 0))(
  ( (IArray!25776 (innerList!12945 List!42532)) )
))
(declare-datatypes ((Conc!12885 0))(
  ( (Node!12885 (left!32116 Conc!12885) (right!32446 Conc!12885) (csize!26000 Int) (cheight!13096 Int)) (Leaf!19929 (xs!16191 IArray!25775) (csize!26001 Int)) (Empty!12885) )
))
(declare-datatypes ((BalanceConc!25364 0))(
  ( (BalanceConc!25365 (c!688830 Conc!12885)) )
))
(declare-datatypes ((List!42533 0))(
  ( (Nil!42409) (Cons!42409 (h!47829 (_ BitVec 16)) (t!330924 List!42533)) )
))
(declare-datatypes ((TokenValue!6904 0))(
  ( (FloatLiteralValue!13808 (text!48773 List!42533)) (TokenValueExt!6903 (__x!26025 Int)) (Broken!34520 (value!210817 List!42533)) (Object!7027) (End!6904) (Def!6904) (Underscore!6904) (Match!6904) (Else!6904) (Error!6904) (Case!6904) (If!6904) (Extends!6904) (Abstract!6904) (Class!6904) (Val!6904) (DelimiterValue!13808 (del!6964 List!42533)) (KeywordValue!6910 (value!210818 List!42533)) (CommentValue!13808 (value!210819 List!42533)) (WhitespaceValue!13808 (value!210820 List!42533)) (IndentationValue!6904 (value!210821 List!42533)) (String!48237) (Int32!6904) (Broken!34521 (value!210822 List!42533)) (Boolean!6905) (Unit!61058) (OperatorValue!6907 (op!6964 List!42533)) (IdentifierValue!13808 (value!210823 List!42533)) (IdentifierValue!13809 (value!210824 List!42533)) (WhitespaceValue!13809 (value!210825 List!42533)) (True!13808) (False!13808) (Broken!34522 (value!210826 List!42533)) (Broken!34523 (value!210827 List!42533)) (True!13809) (RightBrace!6904) (RightBracket!6904) (Colon!6904) (Null!6904) (Comma!6904) (LeftBracket!6904) (False!13809) (LeftBrace!6904) (ImaginaryLiteralValue!6904 (text!48774 List!42533)) (StringLiteralValue!20712 (value!210828 List!42533)) (EOFValue!6904 (value!210829 List!42533)) (IdentValue!6904 (value!210830 List!42533)) (DelimiterValue!13809 (value!210831 List!42533)) (DedentValue!6904 (value!210832 List!42533)) (NewLineValue!6904 (value!210833 List!42533)) (IntegerValue!20712 (value!210834 (_ BitVec 32)) (text!48775 List!42533)) (IntegerValue!20713 (value!210835 Int) (text!48776 List!42533)) (Times!6904) (Or!6904) (Equal!6904) (Minus!6904) (Broken!34524 (value!210836 List!42533)) (And!6904) (Div!6904) (LessEqual!6904) (Mod!6904) (Concat!18483) (Not!6904) (Plus!6904) (SpaceValue!6904 (value!210837 List!42533)) (IntegerValue!20714 (value!210838 Int) (text!48777 List!42533)) (StringLiteralValue!20713 (text!48778 List!42533)) (FloatLiteralValue!13809 (text!48779 List!42533)) (BytesLiteralValue!6904 (value!210839 List!42533)) (CommentValue!13809 (value!210840 List!42533)) (StringLiteralValue!20714 (value!210841 List!42533)) (ErrorTokenValue!6904 (msg!6965 List!42533)) )
))
(declare-datatypes ((Regex!11579 0))(
  ( (ElementMatch!11579 (c!688831 C!23344)) (Concat!18484 (regOne!23670 Regex!11579) (regTwo!23670 Regex!11579)) (EmptyExpr!11579) (Star!11579 (reg!11908 Regex!11579)) (EmptyLang!11579) (Union!11579 (regOne!23671 Regex!11579) (regTwo!23671 Regex!11579)) )
))
(declare-datatypes ((String!48238 0))(
  ( (String!48239 (value!210842 String)) )
))
(declare-datatypes ((TokenValueInjection!13236 0))(
  ( (TokenValueInjection!13237 (toValue!9162 Int) (toChars!9021 Int)) )
))
(declare-datatypes ((Rule!13148 0))(
  ( (Rule!13149 (regex!6674 Regex!11579) (tag!7534 String!48238) (isSeparator!6674 Bool) (transformation!6674 TokenValueInjection!13236)) )
))
(declare-datatypes ((Token!12486 0))(
  ( (Token!12487 (value!210843 TokenValue!6904) (rule!9664 Rule!13148) (size!31730 Int) (originalCharacters!7274 List!42532)) )
))
(declare-fun token!484 () Token!12486)

(declare-fun e!2460572 () Bool)

(declare-fun b!3971915 () Bool)

(declare-fun e!2460566 () Bool)

(declare-fun tp!1211127 () Bool)

(declare-fun inv!21 (TokenValue!6904) Bool)

(assert (=> b!3971915 (= e!2460566 (and (inv!21 (value!210843 token!484)) e!2460572 tp!1211127))))

(declare-fun b!3971916 () Bool)

(declare-fun e!2460565 () Bool)

(declare-fun e!2460579 () Bool)

(assert (=> b!3971916 (= e!2460565 e!2460579)))

(declare-fun res!1607940 () Bool)

(assert (=> b!3971916 (=> res!1607940 e!2460579)))

(declare-fun lt!1391482 () List!42532)

(declare-fun lt!1391483 () List!42532)

(declare-fun isPrefix!3761 (List!42532 List!42532) Bool)

(assert (=> b!3971916 (= res!1607940 (not (isPrefix!3761 lt!1391482 lt!1391483)))))

(declare-fun prefix!494 () List!42532)

(assert (=> b!3971916 (isPrefix!3761 prefix!494 lt!1391483)))

(declare-datatypes ((Unit!61059 0))(
  ( (Unit!61060) )
))
(declare-fun lt!1391472 () Unit!61059)

(declare-fun suffix!1299 () List!42532)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2604 (List!42532 List!42532) Unit!61059)

(assert (=> b!3971916 (= lt!1391472 (lemmaConcatTwoListThenFirstIsPrefix!2604 prefix!494 suffix!1299))))

(declare-fun lt!1391480 () List!42532)

(assert (=> b!3971916 (isPrefix!3761 lt!1391482 lt!1391480)))

(declare-fun lt!1391471 () Unit!61059)

(declare-fun suffixResult!105 () List!42532)

(assert (=> b!3971916 (= lt!1391471 (lemmaConcatTwoListThenFirstIsPrefix!2604 lt!1391482 suffixResult!105))))

(declare-fun b!3971917 () Bool)

(declare-fun res!1607938 () Bool)

(declare-fun e!2460578 () Bool)

(assert (=> b!3971917 (=> (not res!1607938) (not e!2460578))))

(declare-fun newSuffix!27 () List!42532)

(assert (=> b!3971917 (= res!1607938 (isPrefix!3761 newSuffix!27 suffix!1299))))

(declare-fun b!3971918 () Bool)

(declare-fun e!2460562 () Bool)

(declare-fun e!2460564 () Bool)

(assert (=> b!3971918 (= e!2460562 e!2460564)))

(declare-fun res!1607934 () Bool)

(assert (=> b!3971918 (=> (not res!1607934) (not e!2460564))))

(declare-datatypes ((tuple2!41664 0))(
  ( (tuple2!41665 (_1!23966 Token!12486) (_2!23966 List!42532)) )
))
(declare-datatypes ((Option!9088 0))(
  ( (None!9087) (Some!9087 (v!39435 tuple2!41664)) )
))
(declare-fun lt!1391459 () Option!9088)

(declare-datatypes ((List!42534 0))(
  ( (Nil!42410) (Cons!42410 (h!47830 Rule!13148) (t!330925 List!42534)) )
))
(declare-fun rules!2999 () List!42534)

(declare-datatypes ((LexerInterface!6263 0))(
  ( (LexerInterfaceExt!6260 (__x!26026 Int)) (Lexer!6261) )
))
(declare-fun thiss!21717 () LexerInterface!6263)

(declare-fun maxPrefix!3561 (LexerInterface!6263 List!42534 List!42532) Option!9088)

(assert (=> b!3971918 (= res!1607934 (= (maxPrefix!3561 thiss!21717 rules!2999 lt!1391483) lt!1391459))))

(assert (=> b!3971918 (= lt!1391459 (Some!9087 (tuple2!41665 token!484 suffixResult!105)))))

(declare-fun ++!11076 (List!42532 List!42532) List!42532)

(assert (=> b!3971918 (= lt!1391483 (++!11076 prefix!494 suffix!1299))))

(declare-fun res!1607942 () Bool)

(assert (=> start!373752 (=> (not res!1607942) (not e!2460578))))

(get-info :version)

(assert (=> start!373752 (= res!1607942 ((_ is Lexer!6261) thiss!21717))))

(assert (=> start!373752 e!2460578))

(declare-fun e!2460568 () Bool)

(assert (=> start!373752 e!2460568))

(declare-fun inv!56666 (Token!12486) Bool)

(assert (=> start!373752 (and (inv!56666 token!484) e!2460566)))

(declare-fun e!2460560 () Bool)

(assert (=> start!373752 e!2460560))

(declare-fun e!2460571 () Bool)

(assert (=> start!373752 e!2460571))

(declare-fun e!2460580 () Bool)

(assert (=> start!373752 e!2460580))

(assert (=> start!373752 true))

(declare-fun e!2460573 () Bool)

(assert (=> start!373752 e!2460573))

(declare-fun e!2460561 () Bool)

(assert (=> start!373752 e!2460561))

(declare-fun b!3971919 () Bool)

(declare-fun e!2460569 () Bool)

(assert (=> b!3971919 (= e!2460579 e!2460569)))

(declare-fun res!1607937 () Bool)

(assert (=> b!3971919 (=> res!1607937 e!2460569)))

(declare-fun lt!1391466 () List!42532)

(assert (=> b!3971919 (= res!1607937 (not (= lt!1391466 prefix!494)))))

(declare-fun lt!1391479 () List!42532)

(assert (=> b!3971919 (= lt!1391466 (++!11076 lt!1391482 lt!1391479))))

(declare-fun getSuffix!2192 (List!42532 List!42532) List!42532)

(assert (=> b!3971919 (= lt!1391479 (getSuffix!2192 prefix!494 lt!1391482))))

(assert (=> b!3971919 (isPrefix!3761 lt!1391482 prefix!494)))

(declare-fun lt!1391475 () Unit!61059)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!339 (List!42532 List!42532 List!42532) Unit!61059)

(assert (=> b!3971919 (= lt!1391475 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!339 prefix!494 lt!1391482 lt!1391483))))

(declare-fun tp!1211131 () Bool)

(declare-fun b!3971920 () Bool)

(declare-fun e!2460582 () Bool)

(declare-fun inv!56663 (String!48238) Bool)

(declare-fun inv!56667 (TokenValueInjection!13236) Bool)

(assert (=> b!3971920 (= e!2460572 (and tp!1211131 (inv!56663 (tag!7534 (rule!9664 token!484))) (inv!56667 (transformation!6674 (rule!9664 token!484))) e!2460582))))

(declare-fun b!3971921 () Bool)

(declare-fun e!2460577 () Bool)

(assert (=> b!3971921 (= e!2460569 e!2460577)))

(declare-fun res!1607939 () Bool)

(assert (=> b!3971921 (=> res!1607939 e!2460577)))

(declare-fun lt!1391468 () List!42532)

(declare-fun lt!1391478 () List!42532)

(assert (=> b!3971921 (= res!1607939 (or (not (= lt!1391483 lt!1391478)) (not (= lt!1391483 lt!1391468))))))

(assert (=> b!3971921 (= lt!1391478 lt!1391468)))

(declare-fun lt!1391481 () List!42532)

(assert (=> b!3971921 (= lt!1391468 (++!11076 lt!1391482 lt!1391481))))

(assert (=> b!3971921 (= lt!1391478 (++!11076 lt!1391466 suffix!1299))))

(assert (=> b!3971921 (= lt!1391481 (++!11076 lt!1391479 suffix!1299))))

(declare-fun lt!1391463 () Unit!61059)

(declare-fun lemmaConcatAssociativity!2396 (List!42532 List!42532 List!42532) Unit!61059)

(assert (=> b!3971921 (= lt!1391463 (lemmaConcatAssociativity!2396 lt!1391482 lt!1391479 suffix!1299))))

(declare-fun b!3971922 () Bool)

(declare-fun e!2460567 () Bool)

(assert (=> b!3971922 (= e!2460578 e!2460567)))

(declare-fun res!1607944 () Bool)

(assert (=> b!3971922 (=> (not res!1607944) (not e!2460567))))

(declare-fun lt!1391474 () Int)

(declare-fun lt!1391464 () Int)

(assert (=> b!3971922 (= res!1607944 (>= lt!1391474 lt!1391464))))

(declare-fun size!31731 (List!42532) Int)

(assert (=> b!3971922 (= lt!1391464 (size!31731 lt!1391482))))

(assert (=> b!3971922 (= lt!1391474 (size!31731 prefix!494))))

(declare-fun list!15736 (BalanceConc!25364) List!42532)

(declare-fun charsOf!4490 (Token!12486) BalanceConc!25364)

(assert (=> b!3971922 (= lt!1391482 (list!15736 (charsOf!4490 token!484)))))

(declare-fun b!3971923 () Bool)

(declare-fun e!2460576 () Bool)

(declare-fun tp!1211128 () Bool)

(assert (=> b!3971923 (= e!2460573 (and e!2460576 tp!1211128))))

(declare-fun b!3971924 () Bool)

(assert (=> b!3971924 (= e!2460567 e!2460562)))

(declare-fun res!1607941 () Bool)

(assert (=> b!3971924 (=> (not res!1607941) (not e!2460562))))

(declare-fun lt!1391460 () List!42532)

(declare-fun lt!1391458 () List!42532)

(assert (=> b!3971924 (= res!1607941 (= lt!1391460 lt!1391458))))

(assert (=> b!3971924 (= lt!1391458 (++!11076 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42532)

(assert (=> b!3971924 (= lt!1391460 (++!11076 lt!1391482 newSuffixResult!27))))

(declare-fun b!3971925 () Bool)

(declare-fun res!1607935 () Bool)

(assert (=> b!3971925 (=> (not res!1607935) (not e!2460578))))

(declare-fun isEmpty!25368 (List!42534) Bool)

(assert (=> b!3971925 (= res!1607935 (not (isEmpty!25368 rules!2999)))))

(declare-fun e!2460574 () Bool)

(assert (=> b!3971926 (= e!2460574 (and tp!1211124 tp!1211134))))

(declare-fun b!3971927 () Bool)

(declare-fun tp_is_empty!20129 () Bool)

(declare-fun tp!1211133 () Bool)

(assert (=> b!3971927 (= e!2460561 (and tp_is_empty!20129 tp!1211133))))

(declare-fun b!3971928 () Bool)

(declare-fun tp!1211125 () Bool)

(assert (=> b!3971928 (= e!2460571 (and tp_is_empty!20129 tp!1211125))))

(declare-fun b!3971929 () Bool)

(declare-fun tp!1211135 () Bool)

(assert (=> b!3971929 (= e!2460560 (and tp_is_empty!20129 tp!1211135))))

(declare-fun b!3971930 () Bool)

(declare-fun tp!1211129 () Bool)

(assert (=> b!3971930 (= e!2460576 (and tp!1211129 (inv!56663 (tag!7534 (h!47830 rules!2999))) (inv!56667 (transformation!6674 (h!47830 rules!2999))) e!2460574))))

(declare-fun b!3971931 () Bool)

(declare-fun e!2460563 () Bool)

(assert (=> b!3971931 (= e!2460563 true)))

(declare-fun lt!1391467 () Bool)

(declare-fun matchR!5556 (Regex!11579 List!42532) Bool)

(assert (=> b!3971931 (= lt!1391467 (matchR!5556 (regex!6674 (rule!9664 token!484)) lt!1391482))))

(assert (=> b!3971931 (isPrefix!3761 lt!1391482 lt!1391458)))

(declare-fun lt!1391473 () Unit!61059)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!594 (List!42532 List!42532 List!42532) Unit!61059)

(assert (=> b!3971931 (= lt!1391473 (lemmaPrefixStaysPrefixWhenAddingToSuffix!594 lt!1391482 prefix!494 newSuffix!27))))

(declare-fun lt!1391470 () Unit!61059)

(assert (=> b!3971931 (= lt!1391470 (lemmaPrefixStaysPrefixWhenAddingToSuffix!594 lt!1391482 prefix!494 suffix!1299))))

(assert (=> b!3971932 (= e!2460582 (and tp!1211130 tp!1211126))))

(declare-fun b!3971933 () Bool)

(declare-fun res!1607943 () Bool)

(assert (=> b!3971933 (=> (not res!1607943) (not e!2460578))))

(declare-fun rulesInvariant!5606 (LexerInterface!6263 List!42534) Bool)

(assert (=> b!3971933 (= res!1607943 (rulesInvariant!5606 thiss!21717 rules!2999))))

(declare-fun b!3971934 () Bool)

(assert (=> b!3971934 (= e!2460564 (not e!2460565))))

(declare-fun res!1607936 () Bool)

(assert (=> b!3971934 (=> res!1607936 e!2460565)))

(assert (=> b!3971934 (= res!1607936 (not (= lt!1391480 lt!1391483)))))

(assert (=> b!3971934 (= lt!1391480 (++!11076 lt!1391482 suffixResult!105))))

(declare-fun lt!1391465 () Unit!61059)

(declare-fun lemmaInv!889 (TokenValueInjection!13236) Unit!61059)

(assert (=> b!3971934 (= lt!1391465 (lemmaInv!889 (transformation!6674 (rule!9664 token!484))))))

(declare-fun ruleValid!2606 (LexerInterface!6263 Rule!13148) Bool)

(assert (=> b!3971934 (ruleValid!2606 thiss!21717 (rule!9664 token!484))))

(declare-fun lt!1391476 () Unit!61059)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1680 (LexerInterface!6263 Rule!13148 List!42534) Unit!61059)

(assert (=> b!3971934 (= lt!1391476 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1680 thiss!21717 (rule!9664 token!484) rules!2999))))

(declare-fun b!3971935 () Bool)

(declare-fun tp!1211132 () Bool)

(assert (=> b!3971935 (= e!2460568 (and tp_is_empty!20129 tp!1211132))))

(declare-fun b!3971936 () Bool)

(assert (=> b!3971936 (= e!2460577 e!2460563)))

(declare-fun res!1607932 () Bool)

(assert (=> b!3971936 (=> res!1607932 e!2460563)))

(declare-fun lt!1391477 () Option!9088)

(assert (=> b!3971936 (= res!1607932 (not (= lt!1391477 lt!1391459)))))

(declare-fun lt!1391461 () TokenValue!6904)

(assert (=> b!3971936 (= lt!1391477 (Some!9087 (tuple2!41665 (Token!12487 lt!1391461 (rule!9664 token!484) lt!1391464 lt!1391482) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2595 (LexerInterface!6263 Rule!13148 List!42532) Option!9088)

(assert (=> b!3971936 (= lt!1391477 (maxPrefixOneRule!2595 thiss!21717 (rule!9664 token!484) lt!1391483))))

(declare-fun apply!9885 (TokenValueInjection!13236 BalanceConc!25364) TokenValue!6904)

(declare-fun seqFromList!4913 (List!42532) BalanceConc!25364)

(assert (=> b!3971936 (= lt!1391461 (apply!9885 (transformation!6674 (rule!9664 token!484)) (seqFromList!4913 lt!1391482)))))

(declare-fun lt!1391457 () Unit!61059)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1417 (LexerInterface!6263 List!42534 List!42532 List!42532 List!42532 Rule!13148) Unit!61059)

(assert (=> b!3971936 (= lt!1391457 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1417 thiss!21717 rules!2999 lt!1391482 lt!1391483 suffixResult!105 (rule!9664 token!484)))))

(assert (=> b!3971936 (= lt!1391481 suffixResult!105)))

(declare-fun lt!1391462 () Unit!61059)

(declare-fun lemmaSamePrefixThenSameSuffix!1948 (List!42532 List!42532 List!42532 List!42532 List!42532) Unit!61059)

(assert (=> b!3971936 (= lt!1391462 (lemmaSamePrefixThenSameSuffix!1948 lt!1391482 lt!1391481 lt!1391482 suffixResult!105 lt!1391483))))

(assert (=> b!3971936 (isPrefix!3761 lt!1391482 lt!1391468)))

(declare-fun lt!1391469 () Unit!61059)

(assert (=> b!3971936 (= lt!1391469 (lemmaConcatTwoListThenFirstIsPrefix!2604 lt!1391482 lt!1391481))))

(declare-fun b!3971937 () Bool)

(declare-fun res!1607933 () Bool)

(assert (=> b!3971937 (=> (not res!1607933) (not e!2460578))))

(assert (=> b!3971937 (= res!1607933 (>= (size!31731 suffix!1299) (size!31731 newSuffix!27)))))

(declare-fun b!3971938 () Bool)

(declare-fun tp!1211136 () Bool)

(assert (=> b!3971938 (= e!2460580 (and tp_is_empty!20129 tp!1211136))))

(assert (= (and start!373752 res!1607942) b!3971925))

(assert (= (and b!3971925 res!1607935) b!3971933))

(assert (= (and b!3971933 res!1607943) b!3971937))

(assert (= (and b!3971937 res!1607933) b!3971917))

(assert (= (and b!3971917 res!1607938) b!3971922))

(assert (= (and b!3971922 res!1607944) b!3971924))

(assert (= (and b!3971924 res!1607941) b!3971918))

(assert (= (and b!3971918 res!1607934) b!3971934))

(assert (= (and b!3971934 (not res!1607936)) b!3971916))

(assert (= (and b!3971916 (not res!1607940)) b!3971919))

(assert (= (and b!3971919 (not res!1607937)) b!3971921))

(assert (= (and b!3971921 (not res!1607939)) b!3971936))

(assert (= (and b!3971936 (not res!1607932)) b!3971931))

(assert (= (and start!373752 ((_ is Cons!42408) prefix!494)) b!3971935))

(assert (= b!3971920 b!3971932))

(assert (= b!3971915 b!3971920))

(assert (= start!373752 b!3971915))

(assert (= (and start!373752 ((_ is Cons!42408) suffixResult!105)) b!3971929))

(assert (= (and start!373752 ((_ is Cons!42408) suffix!1299)) b!3971928))

(assert (= (and start!373752 ((_ is Cons!42408) newSuffix!27)) b!3971938))

(assert (= b!3971930 b!3971926))

(assert (= b!3971923 b!3971930))

(assert (= (and start!373752 ((_ is Cons!42410) rules!2999)) b!3971923))

(assert (= (and start!373752 ((_ is Cons!42408) newSuffixResult!27)) b!3971927))

(declare-fun m!4542295 () Bool)

(assert (=> b!3971916 m!4542295))

(declare-fun m!4542297 () Bool)

(assert (=> b!3971916 m!4542297))

(declare-fun m!4542299 () Bool)

(assert (=> b!3971916 m!4542299))

(declare-fun m!4542301 () Bool)

(assert (=> b!3971916 m!4542301))

(declare-fun m!4542303 () Bool)

(assert (=> b!3971916 m!4542303))

(declare-fun m!4542305 () Bool)

(assert (=> b!3971933 m!4542305))

(declare-fun m!4542307 () Bool)

(assert (=> b!3971917 m!4542307))

(declare-fun m!4542309 () Bool)

(assert (=> b!3971931 m!4542309))

(declare-fun m!4542311 () Bool)

(assert (=> b!3971931 m!4542311))

(declare-fun m!4542313 () Bool)

(assert (=> b!3971931 m!4542313))

(declare-fun m!4542315 () Bool)

(assert (=> b!3971931 m!4542315))

(declare-fun m!4542317 () Bool)

(assert (=> b!3971915 m!4542317))

(declare-fun m!4542319 () Bool)

(assert (=> b!3971922 m!4542319))

(declare-fun m!4542321 () Bool)

(assert (=> b!3971922 m!4542321))

(declare-fun m!4542323 () Bool)

(assert (=> b!3971922 m!4542323))

(assert (=> b!3971922 m!4542323))

(declare-fun m!4542325 () Bool)

(assert (=> b!3971922 m!4542325))

(declare-fun m!4542327 () Bool)

(assert (=> b!3971937 m!4542327))

(declare-fun m!4542329 () Bool)

(assert (=> b!3971937 m!4542329))

(declare-fun m!4542331 () Bool)

(assert (=> b!3971930 m!4542331))

(declare-fun m!4542333 () Bool)

(assert (=> b!3971930 m!4542333))

(declare-fun m!4542335 () Bool)

(assert (=> b!3971918 m!4542335))

(declare-fun m!4542337 () Bool)

(assert (=> b!3971918 m!4542337))

(declare-fun m!4542339 () Bool)

(assert (=> b!3971936 m!4542339))

(declare-fun m!4542341 () Bool)

(assert (=> b!3971936 m!4542341))

(declare-fun m!4542343 () Bool)

(assert (=> b!3971936 m!4542343))

(declare-fun m!4542345 () Bool)

(assert (=> b!3971936 m!4542345))

(declare-fun m!4542347 () Bool)

(assert (=> b!3971936 m!4542347))

(declare-fun m!4542349 () Bool)

(assert (=> b!3971936 m!4542349))

(declare-fun m!4542351 () Bool)

(assert (=> b!3971936 m!4542351))

(assert (=> b!3971936 m!4542339))

(declare-fun m!4542353 () Bool)

(assert (=> b!3971925 m!4542353))

(declare-fun m!4542355 () Bool)

(assert (=> b!3971924 m!4542355))

(declare-fun m!4542357 () Bool)

(assert (=> b!3971924 m!4542357))

(declare-fun m!4542359 () Bool)

(assert (=> b!3971934 m!4542359))

(declare-fun m!4542361 () Bool)

(assert (=> b!3971934 m!4542361))

(declare-fun m!4542363 () Bool)

(assert (=> b!3971934 m!4542363))

(declare-fun m!4542365 () Bool)

(assert (=> b!3971934 m!4542365))

(declare-fun m!4542367 () Bool)

(assert (=> b!3971920 m!4542367))

(declare-fun m!4542369 () Bool)

(assert (=> b!3971920 m!4542369))

(declare-fun m!4542371 () Bool)

(assert (=> b!3971921 m!4542371))

(declare-fun m!4542373 () Bool)

(assert (=> b!3971921 m!4542373))

(declare-fun m!4542375 () Bool)

(assert (=> b!3971921 m!4542375))

(declare-fun m!4542377 () Bool)

(assert (=> b!3971921 m!4542377))

(declare-fun m!4542379 () Bool)

(assert (=> start!373752 m!4542379))

(declare-fun m!4542381 () Bool)

(assert (=> b!3971919 m!4542381))

(declare-fun m!4542383 () Bool)

(assert (=> b!3971919 m!4542383))

(declare-fun m!4542385 () Bool)

(assert (=> b!3971919 m!4542385))

(declare-fun m!4542387 () Bool)

(assert (=> b!3971919 m!4542387))

(check-sat (not b!3971937) (not b!3971928) (not b!3971929) (not b!3971918) (not b!3971916) (not b!3971935) b_and!305343 (not b!3971931) (not b!3971922) (not b!3971920) (not b!3971930) (not b_next!110783) (not b!3971938) (not b!3971921) b_and!305345 (not start!373752) (not b_next!110781) (not b_next!110779) (not b!3971936) b_and!305347 (not b!3971924) (not b!3971917) (not b!3971933) (not b!3971923) b_and!305349 (not b!3971919) tp_is_empty!20129 (not b!3971934) (not b!3971925) (not b!3971915) (not b!3971927) (not b_next!110777))
(check-sat b_and!305347 b_and!305343 b_and!305349 (not b_next!110783) b_and!305345 (not b_next!110777) (not b_next!110781) (not b_next!110779))
