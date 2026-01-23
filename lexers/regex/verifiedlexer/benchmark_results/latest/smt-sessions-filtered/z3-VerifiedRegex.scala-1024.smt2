; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51136 () Bool)

(assert start!51136)

(declare-fun b!551894 () Bool)

(declare-fun b_free!15393 () Bool)

(declare-fun b_next!15409 () Bool)

(assert (=> b!551894 (= b_free!15393 (not b_next!15409))))

(declare-fun tp!174445 () Bool)

(declare-fun b_and!53875 () Bool)

(assert (=> b!551894 (= tp!174445 b_and!53875)))

(declare-fun b_free!15395 () Bool)

(declare-fun b_next!15411 () Bool)

(assert (=> b!551894 (= b_free!15395 (not b_next!15411))))

(declare-fun tp!174451 () Bool)

(declare-fun b_and!53877 () Bool)

(assert (=> b!551894 (= tp!174451 b_and!53877)))

(declare-fun b!551898 () Bool)

(declare-fun b_free!15397 () Bool)

(declare-fun b_next!15413 () Bool)

(assert (=> b!551898 (= b_free!15397 (not b_next!15413))))

(declare-fun tp!174444 () Bool)

(declare-fun b_and!53879 () Bool)

(assert (=> b!551898 (= tp!174444 b_and!53879)))

(declare-fun b_free!15399 () Bool)

(declare-fun b_next!15415 () Bool)

(assert (=> b!551898 (= b_free!15399 (not b_next!15415))))

(declare-fun tp!174447 () Bool)

(declare-fun b_and!53881 () Bool)

(assert (=> b!551898 (= tp!174447 b_and!53881)))

(declare-fun b!551885 () Bool)

(declare-fun res!236655 () Bool)

(declare-fun e!333777 () Bool)

(assert (=> b!551885 (=> (not res!236655) (not e!333777))))

(declare-datatypes ((C!3660 0))(
  ( (C!3661 (val!2056 Int)) )
))
(declare-datatypes ((List!5463 0))(
  ( (Nil!5453) (Cons!5453 (h!10854 C!3660) (t!75136 List!5463)) )
))
(declare-fun input!2705 () List!5463)

(declare-fun isEmpty!3936 (List!5463) Bool)

(assert (=> b!551885 (= res!236655 (not (isEmpty!3936 input!2705)))))

(declare-fun b!551886 () Bool)

(declare-fun e!333787 () Bool)

(assert (=> b!551886 e!333787))

(declare-fun res!236649 () Bool)

(assert (=> b!551886 (=> (not res!236649) (not e!333787))))

(declare-datatypes ((Regex!1369 0))(
  ( (ElementMatch!1369 (c!103756 C!3660)) (Concat!2428 (regOne!3250 Regex!1369) (regTwo!3250 Regex!1369)) (EmptyExpr!1369) (Star!1369 (reg!1698 Regex!1369)) (EmptyLang!1369) (Union!1369 (regOne!3251 Regex!1369) (regTwo!3251 Regex!1369)) )
))
(declare-datatypes ((List!5464 0))(
  ( (Nil!5454) (Cons!5454 (h!10855 (_ BitVec 16)) (t!75137 List!5464)) )
))
(declare-datatypes ((TokenValue!1059 0))(
  ( (FloatLiteralValue!2118 (text!7858 List!5464)) (TokenValueExt!1058 (__x!4016 Int)) (Broken!5295 (value!34338 List!5464)) (Object!1068) (End!1059) (Def!1059) (Underscore!1059) (Match!1059) (Else!1059) (Error!1059) (Case!1059) (If!1059) (Extends!1059) (Abstract!1059) (Class!1059) (Val!1059) (DelimiterValue!2118 (del!1119 List!5464)) (KeywordValue!1065 (value!34339 List!5464)) (CommentValue!2118 (value!34340 List!5464)) (WhitespaceValue!2118 (value!34341 List!5464)) (IndentationValue!1059 (value!34342 List!5464)) (String!7038) (Int32!1059) (Broken!5296 (value!34343 List!5464)) (Boolean!1060) (Unit!9699) (OperatorValue!1062 (op!1119 List!5464)) (IdentifierValue!2118 (value!34344 List!5464)) (IdentifierValue!2119 (value!34345 List!5464)) (WhitespaceValue!2119 (value!34346 List!5464)) (True!2118) (False!2118) (Broken!5297 (value!34347 List!5464)) (Broken!5298 (value!34348 List!5464)) (True!2119) (RightBrace!1059) (RightBracket!1059) (Colon!1059) (Null!1059) (Comma!1059) (LeftBracket!1059) (False!2119) (LeftBrace!1059) (ImaginaryLiteralValue!1059 (text!7859 List!5464)) (StringLiteralValue!3177 (value!34349 List!5464)) (EOFValue!1059 (value!34350 List!5464)) (IdentValue!1059 (value!34351 List!5464)) (DelimiterValue!2119 (value!34352 List!5464)) (DedentValue!1059 (value!34353 List!5464)) (NewLineValue!1059 (value!34354 List!5464)) (IntegerValue!3177 (value!34355 (_ BitVec 32)) (text!7860 List!5464)) (IntegerValue!3178 (value!34356 Int) (text!7861 List!5464)) (Times!1059) (Or!1059) (Equal!1059) (Minus!1059) (Broken!5299 (value!34357 List!5464)) (And!1059) (Div!1059) (LessEqual!1059) (Mod!1059) (Concat!2429) (Not!1059) (Plus!1059) (SpaceValue!1059 (value!34358 List!5464)) (IntegerValue!3179 (value!34359 Int) (text!7862 List!5464)) (StringLiteralValue!3178 (text!7863 List!5464)) (FloatLiteralValue!2119 (text!7864 List!5464)) (BytesLiteralValue!1059 (value!34360 List!5464)) (CommentValue!2119 (value!34361 List!5464)) (StringLiteralValue!3179 (value!34362 List!5464)) (ErrorTokenValue!1059 (msg!1120 List!5464)) )
))
(declare-datatypes ((String!7039 0))(
  ( (String!7040 (value!34363 String)) )
))
(declare-datatypes ((IArray!3505 0))(
  ( (IArray!3506 (innerList!1810 List!5463)) )
))
(declare-datatypes ((Conc!1752 0))(
  ( (Node!1752 (left!4506 Conc!1752) (right!4836 Conc!1752) (csize!3734 Int) (cheight!1963 Int)) (Leaf!2777 (xs!4389 IArray!3505) (csize!3735 Int)) (Empty!1752) )
))
(declare-datatypes ((BalanceConc!3512 0))(
  ( (BalanceConc!3513 (c!103757 Conc!1752)) )
))
(declare-datatypes ((TokenValueInjection!1886 0))(
  ( (TokenValueInjection!1887 (toValue!1882 Int) (toChars!1741 Int)) )
))
(declare-datatypes ((Rule!1870 0))(
  ( (Rule!1871 (regex!1035 Regex!1369) (tag!1297 String!7039) (isSeparator!1035 Bool) (transformation!1035 TokenValueInjection!1886)) )
))
(declare-datatypes ((Token!1806 0))(
  ( (Token!1807 (value!34364 TokenValue!1059) (rule!1761 Rule!1870) (size!4364 Int) (originalCharacters!1074 List!5463)) )
))
(declare-fun token!491 () Token!1806)

(declare-fun matchR!528 (Regex!1369 List!5463) Bool)

(assert (=> b!551886 (= res!236649 (not (matchR!528 (regex!1035 (rule!1761 token!491)) input!2705)))))

(declare-datatypes ((Unit!9700 0))(
  ( (Unit!9701) )
))
(declare-fun lt!232931 () Unit!9700)

(declare-datatypes ((List!5465 0))(
  ( (Nil!5455) (Cons!5455 (h!10856 Rule!1870) (t!75138 List!5465)) )
))
(declare-fun rules!3103 () List!5465)

(declare-datatypes ((LexerInterface!921 0))(
  ( (LexerInterfaceExt!918 (__x!4017 Int)) (Lexer!919) )
))
(declare-fun thiss!22590 () LexerInterface!921)

(declare-datatypes ((tuple2!6476 0))(
  ( (tuple2!6477 (_1!3502 Token!1806) (_2!3502 List!5463)) )
))
(declare-datatypes ((Option!1385 0))(
  ( (None!1384) (Some!1384 (v!16211 tuple2!6476)) )
))
(declare-fun lt!232945 () Option!1385)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!18 (LexerInterface!921 List!5465 Rule!1870 List!5463 List!5463 Rule!1870) Unit!9700)

(assert (=> b!551886 (= lt!232931 (lemmaMaxPrefNoSmallerRuleMatches!18 thiss!22590 rules!3103 (rule!1761 (_1!3502 (v!16211 lt!232945))) input!2705 input!2705 (rule!1761 token!491)))))

(declare-fun e!333798 () Unit!9700)

(declare-fun Unit!9702 () Unit!9700)

(assert (=> b!551886 (= e!333798 Unit!9702)))

(declare-fun b!551887 () Bool)

(declare-fun e!333793 () Unit!9700)

(declare-fun Unit!9703 () Unit!9700)

(assert (=> b!551887 (= e!333793 Unit!9703)))

(declare-fun b!551888 () Bool)

(declare-fun e!333790 () Unit!9700)

(declare-fun Unit!9704 () Unit!9700)

(assert (=> b!551888 (= e!333790 Unit!9704)))

(declare-fun b!551889 () Bool)

(declare-fun e!333804 () Bool)

(declare-fun lt!232918 () List!5463)

(assert (=> b!551889 (= e!333804 (= lt!232918 (_2!3502 (v!16211 lt!232945))))))

(declare-fun b!551890 () Bool)

(declare-fun e!333803 () Unit!9700)

(declare-fun Unit!9705 () Unit!9700)

(assert (=> b!551890 (= e!333803 Unit!9705)))

(declare-fun b!551891 () Bool)

(declare-fun e!333778 () Bool)

(declare-fun tp_is_empty!3093 () Bool)

(declare-fun tp!174449 () Bool)

(assert (=> b!551891 (= e!333778 (and tp_is_empty!3093 tp!174449))))

(declare-fun b!551892 () Bool)

(declare-fun Unit!9706 () Unit!9700)

(assert (=> b!551892 (= e!333803 Unit!9706)))

(declare-fun lt!232926 () Unit!9700)

(declare-fun lt!232936 () BalanceConc!3512)

(declare-fun lemmaSemiInverse!164 (TokenValueInjection!1886 BalanceConc!3512) Unit!9700)

(assert (=> b!551892 (= lt!232926 (lemmaSemiInverse!164 (transformation!1035 (rule!1761 (_1!3502 (v!16211 lt!232945)))) lt!232936))))

(declare-fun lt!232930 () Unit!9700)

(declare-fun lt!232922 () List!5463)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!40 (LexerInterface!921 List!5465 Rule!1870 List!5463 List!5463 List!5463 Rule!1870) Unit!9700)

(assert (=> b!551892 (= lt!232930 (lemmaMaxPrefixOutputsMaxPrefix!40 thiss!22590 rules!3103 (rule!1761 (_1!3502 (v!16211 lt!232945))) lt!232922 input!2705 input!2705 (rule!1761 token!491)))))

(declare-fun res!236668 () Bool)

(assert (=> b!551892 (= res!236668 (not (matchR!528 (regex!1035 (rule!1761 token!491)) input!2705)))))

(declare-fun e!333802 () Bool)

(assert (=> b!551892 (=> (not res!236668) (not e!333802))))

(assert (=> b!551892 e!333802))

(declare-fun b!551893 () Bool)

(declare-fun e!333775 () Bool)

(declare-fun e!333800 () Bool)

(assert (=> b!551893 (= e!333775 (not e!333800))))

(declare-fun res!236647 () Bool)

(assert (=> b!551893 (=> res!236647 e!333800)))

(declare-fun lt!232900 () List!5463)

(declare-fun isPrefix!677 (List!5463 List!5463) Bool)

(assert (=> b!551893 (= res!236647 (not (isPrefix!677 input!2705 lt!232900)))))

(declare-fun lt!232904 () List!5463)

(assert (=> b!551893 (isPrefix!677 lt!232904 lt!232900)))

(declare-fun lt!232924 () Unit!9700)

(declare-fun suffix!1342 () List!5463)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!528 (List!5463 List!5463) Unit!9700)

(assert (=> b!551893 (= lt!232924 (lemmaConcatTwoListThenFirstIsPrefix!528 lt!232904 suffix!1342))))

(declare-fun lt!232923 () List!5463)

(assert (=> b!551893 (isPrefix!677 input!2705 lt!232923)))

(declare-fun lt!232933 () Unit!9700)

(assert (=> b!551893 (= lt!232933 (lemmaConcatTwoListThenFirstIsPrefix!528 input!2705 suffix!1342))))

(declare-fun e!333783 () Bool)

(assert (=> b!551893 e!333783))

(declare-fun res!236654 () Bool)

(assert (=> b!551893 (=> (not res!236654) (not e!333783))))

(declare-fun lt!232909 () TokenValue!1059)

(assert (=> b!551893 (= res!236654 (= (value!34364 (_1!3502 (v!16211 lt!232945))) lt!232909))))

(declare-fun apply!1310 (TokenValueInjection!1886 BalanceConc!3512) TokenValue!1059)

(assert (=> b!551893 (= lt!232909 (apply!1310 (transformation!1035 (rule!1761 (_1!3502 (v!16211 lt!232945)))) lt!232936))))

(declare-fun seqFromList!1233 (List!5463) BalanceConc!3512)

(assert (=> b!551893 (= lt!232936 (seqFromList!1233 lt!232922))))

(declare-fun lt!232913 () Unit!9700)

(declare-fun lemmaInv!183 (TokenValueInjection!1886) Unit!9700)

(assert (=> b!551893 (= lt!232913 (lemmaInv!183 (transformation!1035 (rule!1761 token!491))))))

(declare-fun lt!232901 () Unit!9700)

(assert (=> b!551893 (= lt!232901 (lemmaInv!183 (transformation!1035 (rule!1761 (_1!3502 (v!16211 lt!232945))))))))

(declare-fun ruleValid!255 (LexerInterface!921 Rule!1870) Bool)

(assert (=> b!551893 (ruleValid!255 thiss!22590 (rule!1761 token!491))))

(declare-fun lt!232919 () Unit!9700)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!114 (LexerInterface!921 Rule!1870 List!5465) Unit!9700)

(assert (=> b!551893 (= lt!232919 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!114 thiss!22590 (rule!1761 token!491) rules!3103))))

(assert (=> b!551893 (ruleValid!255 thiss!22590 (rule!1761 (_1!3502 (v!16211 lt!232945))))))

(declare-fun lt!232940 () Unit!9700)

(assert (=> b!551893 (= lt!232940 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!114 thiss!22590 (rule!1761 (_1!3502 (v!16211 lt!232945))) rules!3103))))

(assert (=> b!551893 (isPrefix!677 input!2705 input!2705)))

(declare-fun lt!232907 () Unit!9700)

(declare-fun lemmaIsPrefixRefl!417 (List!5463 List!5463) Unit!9700)

(assert (=> b!551893 (= lt!232907 (lemmaIsPrefixRefl!417 input!2705 input!2705))))

(assert (=> b!551893 (= (_2!3502 (v!16211 lt!232945)) lt!232918)))

(declare-fun lt!232916 () Unit!9700)

(declare-fun lemmaSamePrefixThenSameSuffix!404 (List!5463 List!5463 List!5463 List!5463 List!5463) Unit!9700)

(assert (=> b!551893 (= lt!232916 (lemmaSamePrefixThenSameSuffix!404 lt!232922 (_2!3502 (v!16211 lt!232945)) lt!232922 lt!232918 input!2705))))

(declare-fun getSuffix!200 (List!5463 List!5463) List!5463)

(assert (=> b!551893 (= lt!232918 (getSuffix!200 input!2705 lt!232922))))

(declare-fun lt!232903 () List!5463)

(assert (=> b!551893 (isPrefix!677 lt!232922 lt!232903)))

(declare-fun ++!1523 (List!5463 List!5463) List!5463)

(assert (=> b!551893 (= lt!232903 (++!1523 lt!232922 (_2!3502 (v!16211 lt!232945))))))

(declare-fun lt!232915 () Unit!9700)

(assert (=> b!551893 (= lt!232915 (lemmaConcatTwoListThenFirstIsPrefix!528 lt!232922 (_2!3502 (v!16211 lt!232945))))))

(declare-fun lt!232905 () Unit!9700)

(declare-fun lemmaCharactersSize!114 (Token!1806) Unit!9700)

(assert (=> b!551893 (= lt!232905 (lemmaCharactersSize!114 token!491))))

(declare-fun lt!232908 () Unit!9700)

(assert (=> b!551893 (= lt!232908 (lemmaCharactersSize!114 (_1!3502 (v!16211 lt!232945))))))

(declare-fun lt!232938 () Unit!9700)

(declare-fun e!333781 () Unit!9700)

(assert (=> b!551893 (= lt!232938 e!333781)))

(declare-fun c!103754 () Bool)

(declare-fun lt!232927 () Int)

(declare-fun lt!232911 () Int)

(assert (=> b!551893 (= c!103754 (> lt!232927 lt!232911))))

(declare-fun size!4365 (List!5463) Int)

(assert (=> b!551893 (= lt!232911 (size!4365 lt!232904))))

(assert (=> b!551893 (= lt!232927 (size!4365 lt!232922))))

(declare-fun list!2261 (BalanceConc!3512) List!5463)

(declare-fun charsOf!664 (Token!1806) BalanceConc!3512)

(assert (=> b!551893 (= lt!232922 (list!2261 (charsOf!664 (_1!3502 (v!16211 lt!232945)))))))

(declare-fun lt!232912 () tuple2!6476)

(assert (=> b!551893 (= lt!232945 (Some!1384 lt!232912))))

(assert (=> b!551893 (= lt!232912 (tuple2!6477 (_1!3502 (v!16211 lt!232945)) (_2!3502 (v!16211 lt!232945))))))

(declare-fun lt!232910 () Unit!9700)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!120 (List!5463 List!5463 List!5463 List!5463) Unit!9700)

(assert (=> b!551893 (= lt!232910 (lemmaConcatSameAndSameSizesThenSameLists!120 lt!232904 suffix!1342 input!2705 suffix!1342))))

(declare-fun e!333795 () Bool)

(assert (=> b!551894 (= e!333795 (and tp!174445 tp!174451))))

(declare-fun b!551895 () Bool)

(declare-fun res!236648 () Bool)

(assert (=> b!551895 (=> (not res!236648) (not e!333777))))

(declare-fun isEmpty!3937 (List!5465) Bool)

(assert (=> b!551895 (= res!236648 (not (isEmpty!3937 rules!3103)))))

(declare-fun b!551896 () Bool)

(declare-fun res!236656 () Bool)

(assert (=> b!551896 (=> (not res!236656) (not e!333804))))

(declare-fun get!2067 (Option!1385) tuple2!6476)

(assert (=> b!551896 (= res!236656 (= (_1!3502 (get!2067 lt!232945)) (_1!3502 (v!16211 lt!232945))))))

(declare-fun b!551897 () Bool)

(declare-fun res!236665 () Bool)

(assert (=> b!551897 (=> (not res!236665) (not e!333777))))

(declare-fun rulesInvariant!884 (LexerInterface!921 List!5465) Bool)

(assert (=> b!551897 (= res!236665 (rulesInvariant!884 thiss!22590 rules!3103))))

(declare-fun e!333796 () Bool)

(assert (=> b!551898 (= e!333796 (and tp!174444 tp!174447))))

(declare-fun b!551899 () Bool)

(declare-fun e!333792 () Bool)

(assert (=> b!551899 (= e!333792 e!333804)))

(declare-fun res!236663 () Bool)

(assert (=> b!551899 (=> (not res!236663) (not e!333804))))

(declare-fun isDefined!1197 (Option!1385) Bool)

(assert (=> b!551899 (= res!236663 (isDefined!1197 lt!232945))))

(declare-fun b!551900 () Bool)

(declare-fun Unit!9707 () Unit!9700)

(assert (=> b!551900 (= e!333781 Unit!9707)))

(assert (=> b!551900 false))

(declare-fun b!551901 () Bool)

(declare-fun res!236667 () Bool)

(declare-fun e!333794 () Bool)

(assert (=> b!551901 (=> res!236667 e!333794)))

(declare-fun contains!1277 (List!5465 Rule!1870) Bool)

(assert (=> b!551901 (= res!236667 (not (contains!1277 rules!3103 (rule!1761 token!491))))))

(declare-fun b!551902 () Bool)

(declare-fun e!333782 () Bool)

(assert (=> b!551902 e!333782))

(declare-fun res!236646 () Bool)

(assert (=> b!551902 (=> (not res!236646) (not e!333782))))

(assert (=> b!551902 (= res!236646 (not (matchR!528 (regex!1035 (rule!1761 (_1!3502 (v!16211 lt!232945)))) input!2705)))))

(declare-fun lt!232941 () Unit!9700)

(assert (=> b!551902 (= lt!232941 (lemmaMaxPrefNoSmallerRuleMatches!18 thiss!22590 rules!3103 (rule!1761 token!491) input!2705 lt!232923 (rule!1761 (_1!3502 (v!16211 lt!232945)))))))

(declare-fun Unit!9708 () Unit!9700)

(assert (=> b!551902 (= e!333790 Unit!9708)))

(declare-fun b!551903 () Bool)

(declare-fun e!333774 () Bool)

(assert (=> b!551903 (= e!333774 e!333792)))

(declare-fun res!236653 () Bool)

(assert (=> b!551903 (=> res!236653 e!333792)))

(assert (=> b!551903 (= res!236653 (>= lt!232927 lt!232911))))

(declare-fun b!551904 () Bool)

(declare-fun e!333785 () Bool)

(declare-fun e!333779 () Bool)

(assert (=> b!551904 (= e!333785 e!333779)))

(declare-fun res!236661 () Bool)

(assert (=> b!551904 (=> (not res!236661) (not e!333779))))

(declare-fun lt!232932 () Option!1385)

(assert (=> b!551904 (= res!236661 (isDefined!1197 lt!232932))))

(declare-fun maxPrefix!619 (LexerInterface!921 List!5465 List!5463) Option!1385)

(assert (=> b!551904 (= lt!232932 (maxPrefix!619 thiss!22590 rules!3103 lt!232923))))

(assert (=> b!551904 (= lt!232923 (++!1523 input!2705 suffix!1342))))

(declare-fun b!551905 () Bool)

(declare-fun e!333806 () Bool)

(assert (=> b!551905 (= e!333779 e!333806)))

(declare-fun res!236666 () Bool)

(assert (=> b!551905 (=> (not res!236666) (not e!333806))))

(declare-fun lt!232935 () tuple2!6476)

(assert (=> b!551905 (= res!236666 (and (= (_1!3502 lt!232935) token!491) (= (_2!3502 lt!232935) suffix!1342)))))

(assert (=> b!551905 (= lt!232935 (get!2067 lt!232932))))

(declare-fun b!551906 () Bool)

(declare-fun e!333789 () Bool)

(assert (=> b!551906 (= e!333794 e!333789)))

(declare-fun res!236669 () Bool)

(assert (=> b!551906 (=> res!236669 e!333789)))

(assert (=> b!551906 (= res!236669 (or (not (= (size!4364 (_1!3502 (v!16211 lt!232945))) (size!4364 token!491))) (not (= (_1!3502 (v!16211 lt!232945)) token!491)) (not (= lt!232945 (Some!1384 (tuple2!6477 token!491 Nil!5453))))))))

(assert (=> b!551906 (= (rule!1761 (_1!3502 (v!16211 lt!232945))) (rule!1761 token!491))))

(declare-fun lt!232942 () Unit!9700)

(declare-fun lemmaSameIndexThenSameElement!10 (List!5465 Rule!1870 Rule!1870) Unit!9700)

(assert (=> b!551906 (= lt!232942 (lemmaSameIndexThenSameElement!10 rules!3103 (rule!1761 (_1!3502 (v!16211 lt!232945))) (rule!1761 token!491)))))

(declare-fun lt!232902 () Unit!9700)

(assert (=> b!551906 (= lt!232902 e!333793)))

(declare-fun c!103751 () Bool)

(assert (=> b!551906 (= c!103751 (not (= (rule!1761 (_1!3502 (v!16211 lt!232945))) (rule!1761 token!491))))))

(declare-fun b!551907 () Bool)

(declare-fun e!333784 () Bool)

(assert (=> b!551907 (= e!333806 e!333784)))

(declare-fun res!236660 () Bool)

(assert (=> b!551907 (=> (not res!236660) (not e!333784))))

(get-info :version)

(assert (=> b!551907 (= res!236660 ((_ is Some!1384) lt!232945))))

(assert (=> b!551907 (= lt!232945 (maxPrefix!619 thiss!22590 rules!3103 input!2705))))

(declare-fun b!551908 () Bool)

(declare-fun Unit!9709 () Unit!9700)

(assert (=> b!551908 (= e!333781 Unit!9709)))

(declare-fun b!551909 () Bool)

(declare-fun res!236657 () Bool)

(assert (=> b!551909 (=> res!236657 e!333794)))

(assert (=> b!551909 (= res!236657 (not (contains!1277 rules!3103 (rule!1761 (_1!3502 (v!16211 lt!232945))))))))

(declare-fun b!551910 () Bool)

(declare-fun e!333776 () Bool)

(declare-fun tp!174443 () Bool)

(assert (=> b!551910 (= e!333776 (and tp_is_empty!3093 tp!174443))))

(declare-fun b!551911 () Bool)

(declare-fun res!236658 () Bool)

(assert (=> b!551911 (=> res!236658 e!333794)))

(assert (=> b!551911 (= res!236658 (or (not (= lt!232922 lt!232904)) (not (= (originalCharacters!1074 (_1!3502 (v!16211 lt!232945))) (originalCharacters!1074 token!491)))))))

(declare-fun b!551912 () Bool)

(assert (=> b!551912 (= e!333802 false)))

(declare-fun b!551913 () Bool)

(assert (=> b!551913 (= e!333783 (and (= (size!4364 (_1!3502 (v!16211 lt!232945))) lt!232927) (= (originalCharacters!1074 (_1!3502 (v!16211 lt!232945))) lt!232922) (= lt!232912 (tuple2!6477 (Token!1807 lt!232909 (rule!1761 (_1!3502 (v!16211 lt!232945))) lt!232927 lt!232922) lt!232918))))))

(declare-fun b!551914 () Bool)

(assert (=> b!551914 (= e!333787 false)))

(declare-fun b!551915 () Bool)

(assert (=> b!551915 (= e!333777 e!333785)))

(declare-fun res!236659 () Bool)

(assert (=> b!551915 (=> (not res!236659) (not e!333785))))

(assert (=> b!551915 (= res!236659 (= lt!232904 input!2705))))

(assert (=> b!551915 (= lt!232904 (list!2261 (charsOf!664 token!491)))))

(declare-fun e!333788 () Bool)

(declare-fun e!333791 () Bool)

(declare-fun b!551916 () Bool)

(declare-fun tp!174452 () Bool)

(declare-fun inv!21 (TokenValue!1059) Bool)

(assert (=> b!551916 (= e!333791 (and (inv!21 (value!34364 token!491)) e!333788 tp!174452))))

(declare-fun b!551917 () Bool)

(assert (=> b!551917 (= e!333793 e!333798)))

(declare-fun lt!232944 () Int)

(declare-fun getIndex!36 (List!5465 Rule!1870) Int)

(assert (=> b!551917 (= lt!232944 (getIndex!36 rules!3103 (rule!1761 (_1!3502 (v!16211 lt!232945)))))))

(declare-fun lt!232906 () Int)

(assert (=> b!551917 (= lt!232906 (getIndex!36 rules!3103 (rule!1761 token!491)))))

(declare-fun c!103753 () Bool)

(assert (=> b!551917 (= c!103753 (< lt!232944 lt!232906))))

(declare-fun lt!232937 () Unit!9700)

(assert (=> b!551917 (= lt!232937 e!333790)))

(declare-fun c!103752 () Bool)

(assert (=> b!551917 (= c!103752 (> lt!232944 lt!232906))))

(declare-fun b!551918 () Bool)

(declare-fun res!236650 () Bool)

(assert (=> b!551918 (=> (not res!236650) (not e!333783))))

(assert (=> b!551918 (= res!236650 (= (size!4364 (_1!3502 (v!16211 lt!232945))) (size!4365 (originalCharacters!1074 (_1!3502 (v!16211 lt!232945))))))))

(declare-fun b!551919 () Bool)

(declare-fun Unit!9710 () Unit!9700)

(assert (=> b!551919 (= e!333798 Unit!9710)))

(declare-fun b!551920 () Bool)

(assert (=> b!551920 (= e!333782 false)))

(declare-fun b!551921 () Bool)

(assert (=> b!551921 (= e!333800 e!333794)))

(declare-fun res!236651 () Bool)

(assert (=> b!551921 (=> res!236651 e!333794)))

(assert (=> b!551921 (= res!236651 (or (not (= lt!232927 lt!232911)) (not (= lt!232903 input!2705)) (not (= lt!232903 lt!232904))))))

(declare-fun lt!232917 () Unit!9700)

(declare-fun lt!232943 () BalanceConc!3512)

(assert (=> b!551921 (= lt!232917 (lemmaSemiInverse!164 (transformation!1035 (rule!1761 token!491)) lt!232943))))

(declare-fun lt!232928 () Unit!9700)

(assert (=> b!551921 (= lt!232928 (lemmaSemiInverse!164 (transformation!1035 (rule!1761 (_1!3502 (v!16211 lt!232945)))) lt!232936))))

(declare-fun lt!232939 () Unit!9700)

(assert (=> b!551921 (= lt!232939 e!333803)))

(declare-fun c!103755 () Bool)

(assert (=> b!551921 (= c!103755 (< lt!232927 lt!232911))))

(assert (=> b!551921 e!333774))

(declare-fun res!236671 () Bool)

(assert (=> b!551921 (=> (not res!236671) (not e!333774))))

(declare-fun lt!232921 () TokenValue!1059)

(declare-fun maxPrefixOneRule!334 (LexerInterface!921 Rule!1870 List!5463) Option!1385)

(assert (=> b!551921 (= res!236671 (= (maxPrefixOneRule!334 thiss!22590 (rule!1761 token!491) lt!232923) (Some!1384 (tuple2!6477 (Token!1807 lt!232921 (rule!1761 token!491) lt!232911 lt!232904) suffix!1342))))))

(declare-fun lt!232914 () Unit!9700)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!86 (LexerInterface!921 List!5465 List!5463 List!5463 List!5463 Rule!1870) Unit!9700)

(assert (=> b!551921 (= lt!232914 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!86 thiss!22590 rules!3103 lt!232904 lt!232923 suffix!1342 (rule!1761 token!491)))))

(assert (=> b!551921 (= (maxPrefixOneRule!334 thiss!22590 (rule!1761 (_1!3502 (v!16211 lt!232945))) input!2705) (Some!1384 (tuple2!6477 (Token!1807 lt!232909 (rule!1761 (_1!3502 (v!16211 lt!232945))) lt!232927 lt!232922) (_2!3502 (v!16211 lt!232945)))))))

(declare-fun lt!232925 () Unit!9700)

(assert (=> b!551921 (= lt!232925 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!86 thiss!22590 rules!3103 lt!232922 input!2705 (_2!3502 (v!16211 lt!232945)) (rule!1761 (_1!3502 (v!16211 lt!232945)))))))

(declare-fun e!333797 () Bool)

(assert (=> b!551921 e!333797))

(declare-fun res!236670 () Bool)

(assert (=> b!551921 (=> (not res!236670) (not e!333797))))

(assert (=> b!551921 (= res!236670 (= (value!34364 token!491) lt!232921))))

(assert (=> b!551921 (= lt!232921 (apply!1310 (transformation!1035 (rule!1761 token!491)) lt!232943))))

(assert (=> b!551921 (= lt!232943 (seqFromList!1233 lt!232904))))

(declare-fun lt!232934 () List!5463)

(assert (=> b!551921 (= suffix!1342 lt!232934)))

(declare-fun lt!232920 () Unit!9700)

(assert (=> b!551921 (= lt!232920 (lemmaSamePrefixThenSameSuffix!404 lt!232904 suffix!1342 lt!232904 lt!232934 lt!232923))))

(assert (=> b!551921 (= lt!232934 (getSuffix!200 lt!232923 lt!232904))))

(declare-fun b!551922 () Bool)

(declare-fun res!236652 () Bool)

(assert (=> b!551922 (=> (not res!236652) (not e!333797))))

(assert (=> b!551922 (= res!236652 (= (size!4364 token!491) (size!4365 (originalCharacters!1074 token!491))))))

(declare-fun b!551923 () Bool)

(declare-fun e!333799 () Bool)

(declare-fun e!333805 () Bool)

(declare-fun tp!174448 () Bool)

(assert (=> b!551923 (= e!333799 (and e!333805 tp!174448))))

(declare-fun b!551924 () Bool)

(declare-fun res!236664 () Bool)

(assert (=> b!551924 (=> res!236664 e!333794)))

(assert (=> b!551924 (= res!236664 (not (isEmpty!3936 (_2!3502 (v!16211 lt!232945)))))))

(declare-fun tp!174450 () Bool)

(declare-fun b!551925 () Bool)

(declare-fun inv!6839 (String!7039) Bool)

(declare-fun inv!6842 (TokenValueInjection!1886) Bool)

(assert (=> b!551925 (= e!333788 (and tp!174450 (inv!6839 (tag!1297 (rule!1761 token!491))) (inv!6842 (transformation!1035 (rule!1761 token!491))) e!333796))))

(declare-fun res!236662 () Bool)

(assert (=> start!51136 (=> (not res!236662) (not e!333777))))

(assert (=> start!51136 (= res!236662 ((_ is Lexer!919) thiss!22590))))

(assert (=> start!51136 e!333777))

(assert (=> start!51136 e!333776))

(assert (=> start!51136 e!333799))

(declare-fun inv!6843 (Token!1806) Bool)

(assert (=> start!51136 (and (inv!6843 token!491) e!333791)))

(assert (=> start!51136 true))

(assert (=> start!51136 e!333778))

(declare-fun b!551926 () Bool)

(assert (=> b!551926 (= e!333789 true)))

(declare-fun lt!232929 () Bool)

(declare-fun rulesValidInductive!368 (LexerInterface!921 List!5465) Bool)

(assert (=> b!551926 (= lt!232929 (rulesValidInductive!368 thiss!22590 rules!3103))))

(declare-fun b!551927 () Bool)

(assert (=> b!551927 (= e!333797 (and (= (size!4364 token!491) lt!232911) (= (originalCharacters!1074 token!491) lt!232904) (= (tuple2!6477 token!491 suffix!1342) (tuple2!6477 (Token!1807 lt!232921 (rule!1761 token!491) lt!232911 lt!232904) lt!232934))))))

(declare-fun b!551928 () Bool)

(assert (=> b!551928 (= e!333784 e!333775)))

(declare-fun res!236672 () Bool)

(assert (=> b!551928 (=> (not res!236672) (not e!333775))))

(assert (=> b!551928 (= res!236672 (= lt!232900 lt!232923))))

(assert (=> b!551928 (= lt!232900 (++!1523 lt!232904 suffix!1342))))

(declare-fun tp!174446 () Bool)

(declare-fun b!551929 () Bool)

(assert (=> b!551929 (= e!333805 (and tp!174446 (inv!6839 (tag!1297 (h!10856 rules!3103))) (inv!6842 (transformation!1035 (h!10856 rules!3103))) e!333795))))

(assert (= (and start!51136 res!236662) b!551895))

(assert (= (and b!551895 res!236648) b!551897))

(assert (= (and b!551897 res!236665) b!551885))

(assert (= (and b!551885 res!236655) b!551915))

(assert (= (and b!551915 res!236659) b!551904))

(assert (= (and b!551904 res!236661) b!551905))

(assert (= (and b!551905 res!236666) b!551907))

(assert (= (and b!551907 res!236660) b!551928))

(assert (= (and b!551928 res!236672) b!551893))

(assert (= (and b!551893 c!103754) b!551900))

(assert (= (and b!551893 (not c!103754)) b!551908))

(assert (= (and b!551893 res!236654) b!551918))

(assert (= (and b!551918 res!236650) b!551913))

(assert (= (and b!551893 (not res!236647)) b!551921))

(assert (= (and b!551921 res!236670) b!551922))

(assert (= (and b!551922 res!236652) b!551927))

(assert (= (and b!551921 res!236671) b!551903))

(assert (= (and b!551903 (not res!236653)) b!551899))

(assert (= (and b!551899 res!236663) b!551896))

(assert (= (and b!551896 res!236656) b!551889))

(assert (= (and b!551921 c!103755) b!551892))

(assert (= (and b!551921 (not c!103755)) b!551890))

(assert (= (and b!551892 res!236668) b!551912))

(assert (= (and b!551921 (not res!236651)) b!551924))

(assert (= (and b!551924 (not res!236664)) b!551911))

(assert (= (and b!551911 (not res!236658)) b!551909))

(assert (= (and b!551909 (not res!236657)) b!551901))

(assert (= (and b!551901 (not res!236667)) b!551906))

(assert (= (and b!551906 c!103751) b!551917))

(assert (= (and b!551906 (not c!103751)) b!551887))

(assert (= (and b!551917 c!103753) b!551902))

(assert (= (and b!551917 (not c!103753)) b!551888))

(assert (= (and b!551902 res!236646) b!551920))

(assert (= (and b!551917 c!103752) b!551886))

(assert (= (and b!551917 (not c!103752)) b!551919))

(assert (= (and b!551886 res!236649) b!551914))

(assert (= (and b!551906 (not res!236669)) b!551926))

(assert (= (and start!51136 ((_ is Cons!5453) suffix!1342)) b!551910))

(assert (= b!551929 b!551894))

(assert (= b!551923 b!551929))

(assert (= (and start!51136 ((_ is Cons!5455) rules!3103)) b!551923))

(assert (= b!551925 b!551898))

(assert (= b!551916 b!551925))

(assert (= start!51136 b!551916))

(assert (= (and start!51136 ((_ is Cons!5453) input!2705)) b!551891))

(declare-fun m!801451 () Bool)

(assert (=> b!551929 m!801451))

(declare-fun m!801453 () Bool)

(assert (=> b!551929 m!801453))

(declare-fun m!801455 () Bool)

(assert (=> b!551906 m!801455))

(declare-fun m!801457 () Bool)

(assert (=> b!551886 m!801457))

(declare-fun m!801459 () Bool)

(assert (=> b!551886 m!801459))

(declare-fun m!801461 () Bool)

(assert (=> b!551926 m!801461))

(declare-fun m!801463 () Bool)

(assert (=> b!551899 m!801463))

(declare-fun m!801465 () Bool)

(assert (=> start!51136 m!801465))

(declare-fun m!801467 () Bool)

(assert (=> b!551924 m!801467))

(declare-fun m!801469 () Bool)

(assert (=> b!551922 m!801469))

(declare-fun m!801471 () Bool)

(assert (=> b!551918 m!801471))

(declare-fun m!801473 () Bool)

(assert (=> b!551907 m!801473))

(declare-fun m!801475 () Bool)

(assert (=> b!551901 m!801475))

(declare-fun m!801477 () Bool)

(assert (=> b!551928 m!801477))

(declare-fun m!801479 () Bool)

(assert (=> b!551885 m!801479))

(declare-fun m!801481 () Bool)

(assert (=> b!551916 m!801481))

(declare-fun m!801483 () Bool)

(assert (=> b!551921 m!801483))

(declare-fun m!801485 () Bool)

(assert (=> b!551921 m!801485))

(declare-fun m!801487 () Bool)

(assert (=> b!551921 m!801487))

(declare-fun m!801489 () Bool)

(assert (=> b!551921 m!801489))

(declare-fun m!801491 () Bool)

(assert (=> b!551921 m!801491))

(declare-fun m!801493 () Bool)

(assert (=> b!551921 m!801493))

(declare-fun m!801495 () Bool)

(assert (=> b!551921 m!801495))

(declare-fun m!801497 () Bool)

(assert (=> b!551921 m!801497))

(declare-fun m!801499 () Bool)

(assert (=> b!551921 m!801499))

(declare-fun m!801501 () Bool)

(assert (=> b!551921 m!801501))

(declare-fun m!801503 () Bool)

(assert (=> b!551917 m!801503))

(declare-fun m!801505 () Bool)

(assert (=> b!551917 m!801505))

(declare-fun m!801507 () Bool)

(assert (=> b!551905 m!801507))

(declare-fun m!801509 () Bool)

(assert (=> b!551904 m!801509))

(declare-fun m!801511 () Bool)

(assert (=> b!551904 m!801511))

(declare-fun m!801513 () Bool)

(assert (=> b!551904 m!801513))

(declare-fun m!801515 () Bool)

(assert (=> b!551896 m!801515))

(assert (=> b!551892 m!801499))

(declare-fun m!801517 () Bool)

(assert (=> b!551892 m!801517))

(assert (=> b!551892 m!801457))

(declare-fun m!801519 () Bool)

(assert (=> b!551902 m!801519))

(declare-fun m!801521 () Bool)

(assert (=> b!551902 m!801521))

(declare-fun m!801523 () Bool)

(assert (=> b!551925 m!801523))

(declare-fun m!801525 () Bool)

(assert (=> b!551925 m!801525))

(declare-fun m!801527 () Bool)

(assert (=> b!551893 m!801527))

(declare-fun m!801529 () Bool)

(assert (=> b!551893 m!801529))

(declare-fun m!801531 () Bool)

(assert (=> b!551893 m!801531))

(declare-fun m!801533 () Bool)

(assert (=> b!551893 m!801533))

(declare-fun m!801535 () Bool)

(assert (=> b!551893 m!801535))

(declare-fun m!801537 () Bool)

(assert (=> b!551893 m!801537))

(declare-fun m!801539 () Bool)

(assert (=> b!551893 m!801539))

(declare-fun m!801541 () Bool)

(assert (=> b!551893 m!801541))

(declare-fun m!801543 () Bool)

(assert (=> b!551893 m!801543))

(declare-fun m!801545 () Bool)

(assert (=> b!551893 m!801545))

(declare-fun m!801547 () Bool)

(assert (=> b!551893 m!801547))

(declare-fun m!801549 () Bool)

(assert (=> b!551893 m!801549))

(declare-fun m!801551 () Bool)

(assert (=> b!551893 m!801551))

(declare-fun m!801553 () Bool)

(assert (=> b!551893 m!801553))

(declare-fun m!801555 () Bool)

(assert (=> b!551893 m!801555))

(declare-fun m!801557 () Bool)

(assert (=> b!551893 m!801557))

(assert (=> b!551893 m!801547))

(declare-fun m!801559 () Bool)

(assert (=> b!551893 m!801559))

(declare-fun m!801561 () Bool)

(assert (=> b!551893 m!801561))

(declare-fun m!801563 () Bool)

(assert (=> b!551893 m!801563))

(declare-fun m!801565 () Bool)

(assert (=> b!551893 m!801565))

(declare-fun m!801567 () Bool)

(assert (=> b!551893 m!801567))

(declare-fun m!801569 () Bool)

(assert (=> b!551893 m!801569))

(declare-fun m!801571 () Bool)

(assert (=> b!551893 m!801571))

(declare-fun m!801573 () Bool)

(assert (=> b!551893 m!801573))

(declare-fun m!801575 () Bool)

(assert (=> b!551893 m!801575))

(declare-fun m!801577 () Bool)

(assert (=> b!551893 m!801577))

(declare-fun m!801579 () Bool)

(assert (=> b!551893 m!801579))

(declare-fun m!801581 () Bool)

(assert (=> b!551897 m!801581))

(declare-fun m!801583 () Bool)

(assert (=> b!551915 m!801583))

(assert (=> b!551915 m!801583))

(declare-fun m!801585 () Bool)

(assert (=> b!551915 m!801585))

(declare-fun m!801587 () Bool)

(assert (=> b!551895 m!801587))

(declare-fun m!801589 () Bool)

(assert (=> b!551909 m!801589))

(check-sat b_and!53875 (not b_next!15411) (not b!551925) (not b!551897) (not b!551891) (not b!551904) (not b_next!15409) tp_is_empty!3093 (not b!551926) (not b!551929) (not b!551928) (not b!551896) (not b!551918) (not b_next!15413) b_and!53877 (not b_next!15415) (not start!51136) b_and!53881 (not b!551902) (not b!551915) (not b!551910) (not b!551885) (not b!551905) (not b!551886) b_and!53879 (not b!551921) (not b!551909) (not b!551916) (not b!551901) (not b!551893) (not b!551906) (not b!551922) (not b!551899) (not b!551907) (not b!551924) (not b!551923) (not b!551917) (not b!551892) (not b!551895))
(check-sat b_and!53875 (not b_next!15411) (not b_next!15413) b_and!53879 (not b_next!15409) b_and!53877 (not b_next!15415) b_and!53881)
