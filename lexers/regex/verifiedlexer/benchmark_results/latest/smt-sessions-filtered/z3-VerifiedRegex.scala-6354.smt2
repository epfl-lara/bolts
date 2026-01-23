; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327902 () Bool)

(assert start!327902)

(declare-fun b!3527899 () Bool)

(declare-fun b_free!90937 () Bool)

(declare-fun b_next!91641 () Bool)

(assert (=> b!3527899 (= b_free!90937 (not b_next!91641))))

(declare-fun tp!1088027 () Bool)

(declare-fun b_and!251567 () Bool)

(assert (=> b!3527899 (= tp!1088027 b_and!251567)))

(declare-fun b_free!90939 () Bool)

(declare-fun b_next!91643 () Bool)

(assert (=> b!3527899 (= b_free!90939 (not b_next!91643))))

(declare-fun tp!1088025 () Bool)

(declare-fun b_and!251569 () Bool)

(assert (=> b!3527899 (= tp!1088025 b_and!251569)))

(declare-fun b!3527879 () Bool)

(declare-fun b_free!90941 () Bool)

(declare-fun b_next!91645 () Bool)

(assert (=> b!3527879 (= b_free!90941 (not b_next!91645))))

(declare-fun tp!1088030 () Bool)

(declare-fun b_and!251571 () Bool)

(assert (=> b!3527879 (= tp!1088030 b_and!251571)))

(declare-fun b_free!90943 () Bool)

(declare-fun b_next!91647 () Bool)

(assert (=> b!3527879 (= b_free!90943 (not b_next!91647))))

(declare-fun tp!1088028 () Bool)

(declare-fun b_and!251573 () Bool)

(assert (=> b!3527879 (= tp!1088028 b_and!251573)))

(declare-fun b!3527919 () Bool)

(declare-fun b_free!90945 () Bool)

(declare-fun b_next!91649 () Bool)

(assert (=> b!3527919 (= b_free!90945 (not b_next!91649))))

(declare-fun tp!1088029 () Bool)

(declare-fun b_and!251575 () Bool)

(assert (=> b!3527919 (= tp!1088029 b_and!251575)))

(declare-fun b_free!90947 () Bool)

(declare-fun b_next!91651 () Bool)

(assert (=> b!3527919 (= b_free!90947 (not b_next!91651))))

(declare-fun tp!1088024 () Bool)

(declare-fun b_and!251577 () Bool)

(assert (=> b!3527919 (= tp!1088024 b_and!251577)))

(declare-fun bs!565777 () Bool)

(declare-fun b!3527883 () Bool)

(declare-fun b!3527890 () Bool)

(assert (= bs!565777 (and b!3527883 b!3527890)))

(declare-fun lambda!122939 () Int)

(declare-fun lambda!122938 () Int)

(assert (=> bs!565777 (not (= lambda!122939 lambda!122938))))

(declare-fun b!3527932 () Bool)

(declare-fun e!2183920 () Bool)

(assert (=> b!3527932 (= e!2183920 true)))

(declare-fun b!3527931 () Bool)

(declare-fun e!2183919 () Bool)

(assert (=> b!3527931 (= e!2183919 e!2183920)))

(declare-fun b!3527930 () Bool)

(declare-fun e!2183918 () Bool)

(assert (=> b!3527930 (= e!2183918 e!2183919)))

(assert (=> b!3527883 e!2183918))

(assert (= b!3527931 b!3527932))

(assert (= b!3527930 b!3527931))

(declare-datatypes ((C!20680 0))(
  ( (C!20681 (val!12388 Int)) )
))
(declare-datatypes ((Regex!10247 0))(
  ( (ElementMatch!10247 (c!608140 C!20680)) (Concat!15965 (regOne!21006 Regex!10247) (regTwo!21006 Regex!10247)) (EmptyExpr!10247) (Star!10247 (reg!10576 Regex!10247)) (EmptyLang!10247) (Union!10247 (regOne!21007 Regex!10247) (regTwo!21007 Regex!10247)) )
))
(declare-datatypes ((List!37520 0))(
  ( (Nil!37396) (Cons!37396 (h!42816 (_ BitVec 16)) (t!282673 List!37520)) )
))
(declare-datatypes ((TokenValue!5718 0))(
  ( (FloatLiteralValue!11436 (text!40471 List!37520)) (TokenValueExt!5717 (__x!23653 Int)) (Broken!28590 (value!176842 List!37520)) (Object!5841) (End!5718) (Def!5718) (Underscore!5718) (Match!5718) (Else!5718) (Error!5718) (Case!5718) (If!5718) (Extends!5718) (Abstract!5718) (Class!5718) (Val!5718) (DelimiterValue!11436 (del!5778 List!37520)) (KeywordValue!5724 (value!176843 List!37520)) (CommentValue!11436 (value!176844 List!37520)) (WhitespaceValue!11436 (value!176845 List!37520)) (IndentationValue!5718 (value!176846 List!37520)) (String!41923) (Int32!5718) (Broken!28591 (value!176847 List!37520)) (Boolean!5719) (Unit!53095) (OperatorValue!5721 (op!5778 List!37520)) (IdentifierValue!11436 (value!176848 List!37520)) (IdentifierValue!11437 (value!176849 List!37520)) (WhitespaceValue!11437 (value!176850 List!37520)) (True!11436) (False!11436) (Broken!28592 (value!176851 List!37520)) (Broken!28593 (value!176852 List!37520)) (True!11437) (RightBrace!5718) (RightBracket!5718) (Colon!5718) (Null!5718) (Comma!5718) (LeftBracket!5718) (False!11437) (LeftBrace!5718) (ImaginaryLiteralValue!5718 (text!40472 List!37520)) (StringLiteralValue!17154 (value!176853 List!37520)) (EOFValue!5718 (value!176854 List!37520)) (IdentValue!5718 (value!176855 List!37520)) (DelimiterValue!11437 (value!176856 List!37520)) (DedentValue!5718 (value!176857 List!37520)) (NewLineValue!5718 (value!176858 List!37520)) (IntegerValue!17154 (value!176859 (_ BitVec 32)) (text!40473 List!37520)) (IntegerValue!17155 (value!176860 Int) (text!40474 List!37520)) (Times!5718) (Or!5718) (Equal!5718) (Minus!5718) (Broken!28594 (value!176861 List!37520)) (And!5718) (Div!5718) (LessEqual!5718) (Mod!5718) (Concat!15966) (Not!5718) (Plus!5718) (SpaceValue!5718 (value!176862 List!37520)) (IntegerValue!17156 (value!176863 Int) (text!40475 List!37520)) (StringLiteralValue!17155 (text!40476 List!37520)) (FloatLiteralValue!11437 (text!40477 List!37520)) (BytesLiteralValue!5718 (value!176864 List!37520)) (CommentValue!11437 (value!176865 List!37520)) (StringLiteralValue!17156 (value!176866 List!37520)) (ErrorTokenValue!5718 (msg!5779 List!37520)) )
))
(declare-datatypes ((List!37521 0))(
  ( (Nil!37397) (Cons!37397 (h!42817 C!20680) (t!282674 List!37521)) )
))
(declare-datatypes ((IArray!22707 0))(
  ( (IArray!22708 (innerList!11411 List!37521)) )
))
(declare-datatypes ((Conc!11351 0))(
  ( (Node!11351 (left!29221 Conc!11351) (right!29551 Conc!11351) (csize!22932 Int) (cheight!11562 Int)) (Leaf!17706 (xs!14541 IArray!22707) (csize!22933 Int)) (Empty!11351) )
))
(declare-datatypes ((BalanceConc!22316 0))(
  ( (BalanceConc!22317 (c!608141 Conc!11351)) )
))
(declare-datatypes ((String!41924 0))(
  ( (String!41925 (value!176867 String)) )
))
(declare-datatypes ((TokenValueInjection!10864 0))(
  ( (TokenValueInjection!10865 (toValue!7744 Int) (toChars!7603 Int)) )
))
(declare-datatypes ((Rule!10776 0))(
  ( (Rule!10777 (regex!5488 Regex!10247) (tag!6132 String!41924) (isSeparator!5488 Bool) (transformation!5488 TokenValueInjection!10864)) )
))
(declare-datatypes ((List!37522 0))(
  ( (Nil!37398) (Cons!37398 (h!42818 Rule!10776) (t!282675 List!37522)) )
))
(declare-fun rules!2135 () List!37522)

(get-info :version)

(assert (= (and b!3527883 ((_ is Cons!37398) rules!2135)) b!3527930))

(declare-fun order!20165 () Int)

(declare-fun order!20167 () Int)

(declare-fun dynLambda!15962 (Int Int) Int)

(declare-fun dynLambda!15963 (Int Int) Int)

(assert (=> b!3527932 (< (dynLambda!15962 order!20165 (toValue!7744 (transformation!5488 (h!42818 rules!2135)))) (dynLambda!15963 order!20167 lambda!122939))))

(declare-fun order!20169 () Int)

(declare-fun dynLambda!15964 (Int Int) Int)

(assert (=> b!3527932 (< (dynLambda!15964 order!20169 (toChars!7603 (transformation!5488 (h!42818 rules!2135)))) (dynLambda!15963 order!20167 lambda!122939))))

(assert (=> b!3527883 true))

(declare-fun e!2183899 () Bool)

(assert (=> b!3527879 (= e!2183899 (and tp!1088030 tp!1088028))))

(declare-fun b!3527880 () Bool)

(declare-fun e!2183877 () Bool)

(declare-fun e!2183904 () Bool)

(assert (=> b!3527880 (= e!2183877 (not e!2183904))))

(declare-fun res!1423330 () Bool)

(assert (=> b!3527880 (=> res!1423330 e!2183904)))

(declare-fun lt!1205979 () List!37521)

(declare-fun lt!1205989 () List!37521)

(assert (=> b!3527880 (= res!1423330 (not (= lt!1205979 lt!1205989)))))

(declare-datatypes ((LexerInterface!5077 0))(
  ( (LexerInterfaceExt!5074 (__x!23654 Int)) (Lexer!5075) )
))
(declare-fun thiss!18206 () LexerInterface!5077)

(declare-datatypes ((Token!10342 0))(
  ( (Token!10343 (value!176868 TokenValue!5718) (rule!8148 Rule!10776) (size!28467 Int) (originalCharacters!6202 List!37521)) )
))
(declare-datatypes ((List!37523 0))(
  ( (Nil!37399) (Cons!37399 (h!42819 Token!10342) (t!282676 List!37523)) )
))
(declare-fun tokens!494 () List!37523)

(declare-fun printList!1625 (LexerInterface!5077 List!37523) List!37521)

(assert (=> b!3527880 (= lt!1205989 (printList!1625 thiss!18206 (Cons!37399 (h!42819 tokens!494) Nil!37399)))))

(declare-fun lt!1205969 () BalanceConc!22316)

(declare-fun list!13687 (BalanceConc!22316) List!37521)

(assert (=> b!3527880 (= lt!1205979 (list!13687 lt!1205969))))

(declare-datatypes ((IArray!22709 0))(
  ( (IArray!22710 (innerList!11412 List!37523)) )
))
(declare-datatypes ((Conc!11352 0))(
  ( (Node!11352 (left!29222 Conc!11352) (right!29552 Conc!11352) (csize!22934 Int) (cheight!11563 Int)) (Leaf!17707 (xs!14542 IArray!22709) (csize!22935 Int)) (Empty!11352) )
))
(declare-datatypes ((BalanceConc!22318 0))(
  ( (BalanceConc!22319 (c!608142 Conc!11352)) )
))
(declare-fun lt!1205959 () BalanceConc!22318)

(declare-fun printTailRec!1572 (LexerInterface!5077 BalanceConc!22318 Int BalanceConc!22316) BalanceConc!22316)

(assert (=> b!3527880 (= lt!1205969 (printTailRec!1572 thiss!18206 lt!1205959 0 (BalanceConc!22317 Empty!11351)))))

(declare-fun print!2142 (LexerInterface!5077 BalanceConc!22318) BalanceConc!22316)

(assert (=> b!3527880 (= lt!1205969 (print!2142 thiss!18206 lt!1205959))))

(declare-fun singletonSeq!2584 (Token!10342) BalanceConc!22318)

(assert (=> b!3527880 (= lt!1205959 (singletonSeq!2584 (h!42819 tokens!494)))))

(declare-fun b!3527881 () Bool)

(declare-fun res!1423340 () Bool)

(assert (=> b!3527881 (=> (not res!1423340) (not e!2183877))))

(declare-fun rulesProduceEachTokenIndividually!1528 (LexerInterface!5077 List!37522 BalanceConc!22318) Bool)

(declare-fun seqFromList!4029 (List!37523) BalanceConc!22318)

(assert (=> b!3527881 (= res!1423340 (rulesProduceEachTokenIndividually!1528 thiss!18206 rules!2135 (seqFromList!4029 tokens!494)))))

(declare-fun b!3527882 () Bool)

(declare-fun e!2183884 () Bool)

(declare-fun e!2183881 () Bool)

(assert (=> b!3527882 (= e!2183884 e!2183881)))

(declare-fun res!1423341 () Bool)

(assert (=> b!3527882 (=> res!1423341 e!2183881)))

(declare-fun lt!1205995 () List!37521)

(declare-fun lt!1205967 () List!37521)

(assert (=> b!3527882 (= res!1423341 (not (= lt!1205995 lt!1205967)))))

(declare-fun lt!1205955 () List!37521)

(declare-fun lt!1205994 () List!37521)

(declare-fun lt!1205986 () List!37521)

(declare-fun ++!9275 (List!37521 List!37521) List!37521)

(assert (=> b!3527882 (= lt!1205967 (++!9275 (++!9275 lt!1205986 lt!1205994) lt!1205955))))

(declare-fun e!2183898 () Bool)

(assert (=> b!3527883 (= e!2183898 true)))

(declare-fun lt!1205972 () List!37521)

(declare-fun lt!1205974 () C!20680)

(declare-fun contains!7032 (List!37521 C!20680) Bool)

(assert (=> b!3527883 (not (contains!7032 lt!1205972 lt!1205974))))

(declare-fun separatorToken!241 () Token!10342)

(declare-datatypes ((Unit!53096 0))(
  ( (Unit!53097) )
))
(declare-fun lt!1205957 () Unit!53096)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!170 (LexerInterface!5077 List!37522 List!37522 Rule!10776 Rule!10776 C!20680) Unit!53096)

(assert (=> b!3527883 (= lt!1205957 (lemmaSepRuleNotContainsCharContainedInANonSepRule!170 thiss!18206 rules!2135 rules!2135 (rule!8148 (h!42819 (t!282676 tokens!494))) (rule!8148 separatorToken!241) lt!1205974))))

(declare-fun lt!1205977 () Unit!53096)

(declare-fun e!2183890 () Unit!53096)

(assert (=> b!3527883 (= lt!1205977 e!2183890)))

(declare-fun c!608139 () Bool)

(declare-fun usedCharacters!722 (Regex!10247) List!37521)

(assert (=> b!3527883 (= c!608139 (not (contains!7032 (usedCharacters!722 (regex!5488 (rule!8148 (h!42819 (t!282676 tokens!494))))) lt!1205974)))))

(declare-fun lt!1205950 () List!37521)

(declare-fun head!7403 (List!37521) C!20680)

(assert (=> b!3527883 (= lt!1205974 (head!7403 lt!1205950))))

(declare-datatypes ((tuple2!37252 0))(
  ( (tuple2!37253 (_1!21760 Token!10342) (_2!21760 List!37521)) )
))
(declare-datatypes ((Option!7639 0))(
  ( (None!7638) (Some!7638 (v!37152 tuple2!37252)) )
))
(declare-fun maxPrefixOneRule!1784 (LexerInterface!5077 Rule!10776 List!37521) Option!7639)

(declare-fun apply!8934 (TokenValueInjection!10864 BalanceConc!22316) TokenValue!5718)

(declare-fun seqFromList!4030 (List!37521) BalanceConc!22316)

(declare-fun size!28468 (List!37521) Int)

(assert (=> b!3527883 (= (maxPrefixOneRule!1784 thiss!18206 (rule!8148 (h!42819 (t!282676 tokens!494))) lt!1205950) (Some!7638 (tuple2!37253 (Token!10343 (apply!8934 (transformation!5488 (rule!8148 (h!42819 (t!282676 tokens!494)))) (seqFromList!4030 lt!1205950)) (rule!8148 (h!42819 (t!282676 tokens!494))) (size!28468 lt!1205950) lt!1205950) Nil!37397)))))

(declare-fun lt!1205956 () Unit!53096)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!877 (LexerInterface!5077 List!37522 List!37521 List!37521 List!37521 Rule!10776) Unit!53096)

(assert (=> b!3527883 (= lt!1205956 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!877 thiss!18206 rules!2135 lt!1205950 lt!1205950 Nil!37397 (rule!8148 (h!42819 (t!282676 tokens!494)))))))

(declare-fun e!2183888 () Bool)

(assert (=> b!3527883 e!2183888))

(declare-fun res!1423324 () Bool)

(assert (=> b!3527883 (=> (not res!1423324) (not e!2183888))))

(declare-datatypes ((Option!7640 0))(
  ( (None!7639) (Some!7639 (v!37153 Rule!10776)) )
))
(declare-fun lt!1205952 () Option!7640)

(declare-fun isDefined!5888 (Option!7640) Bool)

(assert (=> b!3527883 (= res!1423324 (isDefined!5888 lt!1205952))))

(declare-fun getRuleFromTag!1131 (LexerInterface!5077 List!37522 String!41924) Option!7640)

(assert (=> b!3527883 (= lt!1205952 (getRuleFromTag!1131 thiss!18206 rules!2135 (tag!6132 (rule!8148 (h!42819 (t!282676 tokens!494))))))))

(declare-fun lt!1205991 () Unit!53096)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1131 (LexerInterface!5077 List!37522 List!37521 Token!10342) Unit!53096)

(assert (=> b!3527883 (= lt!1205991 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1131 thiss!18206 rules!2135 lt!1205950 (h!42819 (t!282676 tokens!494))))))

(declare-fun lt!1205975 () Bool)

(assert (=> b!3527883 lt!1205975))

(declare-fun lt!1205961 () Unit!53096)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1066 (LexerInterface!5077 List!37522 List!37523 Token!10342) Unit!53096)

(assert (=> b!3527883 (= lt!1205961 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1066 thiss!18206 rules!2135 tokens!494 (h!42819 (t!282676 tokens!494))))))

(declare-fun lt!1205976 () List!37521)

(declare-fun lt!1205963 () List!37521)

(declare-fun maxPrefix!2617 (LexerInterface!5077 List!37522 List!37521) Option!7639)

(assert (=> b!3527883 (= (maxPrefix!2617 thiss!18206 rules!2135 lt!1205976) (Some!7638 (tuple2!37253 (h!42819 tokens!494) lt!1205963)))))

(declare-fun lt!1205987 () Unit!53096)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!244 (LexerInterface!5077 List!37522 Token!10342 Rule!10776 List!37521 Rule!10776) Unit!53096)

(assert (=> b!3527883 (= lt!1205987 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!244 thiss!18206 rules!2135 (h!42819 tokens!494) (rule!8148 (h!42819 tokens!494)) lt!1205963 (rule!8148 separatorToken!241)))))

(declare-fun lt!1205992 () C!20680)

(assert (=> b!3527883 (not (contains!7032 (usedCharacters!722 (regex!5488 (rule!8148 (h!42819 tokens!494)))) lt!1205992))))

(declare-fun lt!1205964 () Unit!53096)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!288 (LexerInterface!5077 List!37522 List!37522 Rule!10776 Rule!10776 C!20680) Unit!53096)

(assert (=> b!3527883 (= lt!1205964 (lemmaNonSepRuleNotContainsCharContainedInASepRule!288 thiss!18206 rules!2135 rules!2135 (rule!8148 (h!42819 tokens!494)) (rule!8148 separatorToken!241) lt!1205992))))

(declare-fun lt!1205958 () Unit!53096)

(declare-fun forallContained!1435 (List!37523 Int Token!10342) Unit!53096)

(assert (=> b!3527883 (= lt!1205958 (forallContained!1435 tokens!494 lambda!122939 (h!42819 (t!282676 tokens!494))))))

(declare-fun lt!1205968 () Bool)

(assert (=> b!3527883 (= lt!1205975 (not lt!1205968))))

(declare-fun rulesProduceIndividualToken!2569 (LexerInterface!5077 List!37522 Token!10342) Bool)

(assert (=> b!3527883 (= lt!1205975 (rulesProduceIndividualToken!2569 thiss!18206 rules!2135 (h!42819 (t!282676 tokens!494))))))

(declare-fun e!2183878 () Bool)

(assert (=> b!3527883 (= lt!1205968 e!2183878)))

(declare-fun res!1423336 () Bool)

(assert (=> b!3527883 (=> res!1423336 e!2183878)))

(declare-datatypes ((tuple2!37254 0))(
  ( (tuple2!37255 (_1!21761 BalanceConc!22318) (_2!21761 BalanceConc!22316)) )
))
(declare-fun lt!1205984 () tuple2!37254)

(declare-fun size!28469 (BalanceConc!22318) Int)

(assert (=> b!3527883 (= res!1423336 (not (= (size!28469 (_1!21761 lt!1205984)) 1)))))

(declare-fun lt!1205951 () BalanceConc!22316)

(declare-fun lex!2403 (LexerInterface!5077 List!37522 BalanceConc!22316) tuple2!37254)

(assert (=> b!3527883 (= lt!1205984 (lex!2403 thiss!18206 rules!2135 lt!1205951))))

(declare-fun lt!1205962 () BalanceConc!22318)

(assert (=> b!3527883 (= lt!1205951 (printTailRec!1572 thiss!18206 lt!1205962 0 (BalanceConc!22317 Empty!11351)))))

(assert (=> b!3527883 (= lt!1205951 (print!2142 thiss!18206 lt!1205962))))

(assert (=> b!3527883 (= lt!1205962 (singletonSeq!2584 (h!42819 (t!282676 tokens!494))))))

(declare-fun e!2183905 () Bool)

(assert (=> b!3527883 e!2183905))

(declare-fun res!1423323 () Bool)

(assert (=> b!3527883 (=> (not res!1423323) (not e!2183905))))

(declare-fun lt!1205971 () tuple2!37254)

(assert (=> b!3527883 (= res!1423323 (= (size!28469 (_1!21761 lt!1205971)) 1))))

(declare-fun lt!1205953 () BalanceConc!22316)

(assert (=> b!3527883 (= lt!1205971 (lex!2403 thiss!18206 rules!2135 lt!1205953))))

(declare-fun lt!1205985 () BalanceConc!22318)

(assert (=> b!3527883 (= lt!1205953 (printTailRec!1572 thiss!18206 lt!1205985 0 (BalanceConc!22317 Empty!11351)))))

(assert (=> b!3527883 (= lt!1205953 (print!2142 thiss!18206 lt!1205985))))

(assert (=> b!3527883 (= lt!1205985 (singletonSeq!2584 separatorToken!241))))

(declare-fun lt!1205993 () Unit!53096)

(declare-fun e!2183897 () Unit!53096)

(assert (=> b!3527883 (= lt!1205993 e!2183897)))

(declare-fun c!608138 () Bool)

(assert (=> b!3527883 (= c!608138 (not (contains!7032 lt!1205972 lt!1205992)))))

(assert (=> b!3527883 (= lt!1205992 (head!7403 lt!1205994))))

(assert (=> b!3527883 (= lt!1205972 (usedCharacters!722 (regex!5488 (rule!8148 separatorToken!241))))))

(declare-fun e!2183907 () Bool)

(assert (=> b!3527883 e!2183907))

(declare-fun res!1423339 () Bool)

(assert (=> b!3527883 (=> (not res!1423339) (not e!2183907))))

(declare-fun lt!1205981 () Option!7640)

(assert (=> b!3527883 (= res!1423339 (isDefined!5888 lt!1205981))))

(assert (=> b!3527883 (= lt!1205981 (getRuleFromTag!1131 thiss!18206 rules!2135 (tag!6132 (rule!8148 separatorToken!241))))))

(declare-fun lt!1205983 () Unit!53096)

(assert (=> b!3527883 (= lt!1205983 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1131 thiss!18206 rules!2135 lt!1205994 separatorToken!241))))

(declare-fun lt!1205990 () BalanceConc!22316)

(assert (=> b!3527883 (= (maxPrefixOneRule!1784 thiss!18206 (rule!8148 (h!42819 tokens!494)) lt!1205986) (Some!7638 (tuple2!37253 (Token!10343 (apply!8934 (transformation!5488 (rule!8148 (h!42819 tokens!494))) lt!1205990) (rule!8148 (h!42819 tokens!494)) (size!28468 lt!1205986) lt!1205986) Nil!37397)))))

(declare-fun lt!1205965 () Unit!53096)

(assert (=> b!3527883 (= lt!1205965 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!877 thiss!18206 rules!2135 lt!1205986 lt!1205986 Nil!37397 (rule!8148 (h!42819 tokens!494))))))

(declare-fun e!2183889 () Bool)

(assert (=> b!3527883 e!2183889))

(declare-fun res!1423347 () Bool)

(assert (=> b!3527883 (=> (not res!1423347) (not e!2183889))))

(declare-fun lt!1205949 () Option!7640)

(assert (=> b!3527883 (= res!1423347 (isDefined!5888 lt!1205949))))

(assert (=> b!3527883 (= lt!1205949 (getRuleFromTag!1131 thiss!18206 rules!2135 (tag!6132 (rule!8148 (h!42819 tokens!494)))))))

(declare-fun lt!1205996 () Unit!53096)

(assert (=> b!3527883 (= lt!1205996 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1131 thiss!18206 rules!2135 lt!1205986 (h!42819 tokens!494)))))

(declare-fun lt!1205978 () Unit!53096)

(assert (=> b!3527883 (= lt!1205978 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1066 thiss!18206 rules!2135 tokens!494 (h!42819 tokens!494)))))

(declare-fun b!3527884 () Bool)

(declare-fun isEmpty!21877 (BalanceConc!22316) Bool)

(assert (=> b!3527884 (= e!2183878 (not (isEmpty!21877 (_2!21761 lt!1205984))))))

(declare-fun b!3527885 () Bool)

(declare-fun e!2183885 () Bool)

(assert (=> b!3527885 (= e!2183888 e!2183885)))

(declare-fun res!1423322 () Bool)

(assert (=> b!3527885 (=> (not res!1423322) (not e!2183885))))

(declare-fun lt!1205980 () Rule!10776)

(declare-fun matchR!4831 (Regex!10247 List!37521) Bool)

(assert (=> b!3527885 (= res!1423322 (matchR!4831 (regex!5488 lt!1205980) lt!1205950))))

(declare-fun get!12013 (Option!7640) Rule!10776)

(assert (=> b!3527885 (= lt!1205980 (get!12013 lt!1205952))))

(declare-fun b!3527886 () Bool)

(declare-fun e!2183909 () Bool)

(assert (=> b!3527886 (= e!2183909 false)))

(declare-fun b!3527887 () Bool)

(declare-fun res!1423334 () Bool)

(assert (=> b!3527887 (=> (not res!1423334) (not e!2183905))))

(declare-fun apply!8935 (BalanceConc!22318 Int) Token!10342)

(assert (=> b!3527887 (= res!1423334 (= (apply!8935 (_1!21761 lt!1205971) 0) separatorToken!241))))

(declare-fun b!3527888 () Bool)

(declare-fun e!2183886 () Bool)

(assert (=> b!3527888 (= e!2183886 e!2183884)))

(declare-fun res!1423344 () Bool)

(assert (=> b!3527888 (=> res!1423344 e!2183884)))

(declare-fun printWithSeparatorTokenList!364 (LexerInterface!5077 List!37523 Token!10342) List!37521)

(assert (=> b!3527888 (= res!1423344 (not (= lt!1205955 (++!9275 (++!9275 lt!1205950 lt!1205994) (printWithSeparatorTokenList!364 thiss!18206 (t!282676 (t!282676 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3502 (Token!10342) BalanceConc!22316)

(assert (=> b!3527888 (= lt!1205950 (list!13687 (charsOf!3502 (h!42819 (t!282676 tokens!494)))))))

(assert (=> b!3527888 (= lt!1205963 (++!9275 lt!1205994 lt!1205955))))

(assert (=> b!3527888 (= lt!1205994 (list!13687 (charsOf!3502 separatorToken!241)))))

(assert (=> b!3527888 (= lt!1205955 (printWithSeparatorTokenList!364 thiss!18206 (t!282676 tokens!494) separatorToken!241))))

(assert (=> b!3527888 (= lt!1205995 (printWithSeparatorTokenList!364 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun res!1423329 () Bool)

(assert (=> b!3527890 (=> (not res!1423329) (not e!2183877))))

(declare-fun forall!8051 (List!37523 Int) Bool)

(assert (=> b!3527890 (= res!1423329 (forall!8051 tokens!494 lambda!122938))))

(declare-fun b!3527891 () Bool)

(declare-fun e!2183908 () Bool)

(declare-fun e!2183902 () Bool)

(declare-fun tp!1088032 () Bool)

(assert (=> b!3527891 (= e!2183908 (and e!2183902 tp!1088032))))

(declare-fun b!3527892 () Bool)

(declare-fun res!1423337 () Bool)

(assert (=> b!3527892 (=> res!1423337 e!2183878)))

(assert (=> b!3527892 (= res!1423337 (not (= (apply!8935 (_1!21761 lt!1205984) 0) (h!42819 (t!282676 tokens!494)))))))

(declare-fun b!3527893 () Bool)

(assert (=> b!3527893 (= e!2183881 e!2183898)))

(declare-fun res!1423343 () Bool)

(assert (=> b!3527893 (=> res!1423343 e!2183898)))

(assert (=> b!3527893 (= res!1423343 (not (= lt!1205995 lt!1205976)))))

(assert (=> b!3527893 (= lt!1205967 lt!1205976)))

(assert (=> b!3527893 (= lt!1205976 (++!9275 lt!1205986 lt!1205963))))

(declare-fun lt!1205982 () Unit!53096)

(declare-fun lemmaConcatAssociativity!2022 (List!37521 List!37521 List!37521) Unit!53096)

(assert (=> b!3527893 (= lt!1205982 (lemmaConcatAssociativity!2022 lt!1205986 lt!1205994 lt!1205955))))

(declare-fun b!3527894 () Bool)

(declare-fun res!1423321 () Bool)

(assert (=> b!3527894 (=> (not res!1423321) (not e!2183877))))

(assert (=> b!3527894 (= res!1423321 (rulesProduceIndividualToken!2569 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3527895 () Bool)

(declare-fun e!2183879 () Bool)

(declare-fun lt!1205970 () Rule!10776)

(assert (=> b!3527895 (= e!2183879 (= (rule!8148 (h!42819 tokens!494)) lt!1205970))))

(declare-fun b!3527896 () Bool)

(assert (=> b!3527896 (= e!2183889 e!2183879)))

(declare-fun res!1423345 () Bool)

(assert (=> b!3527896 (=> (not res!1423345) (not e!2183879))))

(assert (=> b!3527896 (= res!1423345 (matchR!4831 (regex!5488 lt!1205970) lt!1205986))))

(assert (=> b!3527896 (= lt!1205970 (get!12013 lt!1205949))))

(declare-fun b!3527897 () Bool)

(declare-fun Unit!53098 () Unit!53096)

(assert (=> b!3527897 (= e!2183890 Unit!53098)))

(declare-fun lt!1205973 () Unit!53096)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!546 (Regex!10247 List!37521 C!20680) Unit!53096)

(assert (=> b!3527897 (= lt!1205973 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!546 (regex!5488 (rule!8148 (h!42819 (t!282676 tokens!494)))) lt!1205950 lt!1205974))))

(declare-fun res!1423333 () Bool)

(assert (=> b!3527897 (= res!1423333 (not (matchR!4831 (regex!5488 (rule!8148 (h!42819 (t!282676 tokens!494)))) lt!1205950)))))

(declare-fun e!2183901 () Bool)

(assert (=> b!3527897 (=> (not res!1423333) (not e!2183901))))

(assert (=> b!3527897 e!2183901))

(declare-fun b!3527898 () Bool)

(declare-fun res!1423342 () Bool)

(assert (=> b!3527898 (=> (not res!1423342) (not e!2183877))))

(declare-fun rulesInvariant!4474 (LexerInterface!5077 List!37522) Bool)

(assert (=> b!3527898 (= res!1423342 (rulesInvariant!4474 thiss!18206 rules!2135))))

(declare-fun e!2183906 () Bool)

(assert (=> b!3527899 (= e!2183906 (and tp!1088027 tp!1088025))))

(declare-fun b!3527900 () Bool)

(declare-fun e!2183896 () Bool)

(declare-fun lt!1205960 () Rule!10776)

(assert (=> b!3527900 (= e!2183896 (= (rule!8148 separatorToken!241) lt!1205960))))

(declare-fun e!2183893 () Bool)

(declare-fun b!3527901 () Bool)

(declare-fun tp!1088035 () Bool)

(declare-fun e!2183911 () Bool)

(declare-fun inv!21 (TokenValue!5718) Bool)

(assert (=> b!3527901 (= e!2183893 (and (inv!21 (value!176868 (h!42819 tokens!494))) e!2183911 tp!1088035))))

(declare-fun b!3527902 () Bool)

(declare-fun Unit!53099 () Unit!53096)

(assert (=> b!3527902 (= e!2183897 Unit!53099)))

(declare-fun lt!1205988 () Unit!53096)

(assert (=> b!3527902 (= lt!1205988 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!546 (regex!5488 (rule!8148 separatorToken!241)) lt!1205994 lt!1205992))))

(declare-fun res!1423326 () Bool)

(assert (=> b!3527902 (= res!1423326 (not (matchR!4831 (regex!5488 (rule!8148 separatorToken!241)) lt!1205994)))))

(assert (=> b!3527902 (=> (not res!1423326) (not e!2183909))))

(assert (=> b!3527902 e!2183909))

(declare-fun e!2183895 () Bool)

(declare-fun e!2183894 () Bool)

(declare-fun tp!1088036 () Bool)

(declare-fun b!3527903 () Bool)

(assert (=> b!3527903 (= e!2183894 (and (inv!21 (value!176868 separatorToken!241)) e!2183895 tp!1088036))))

(declare-fun b!3527904 () Bool)

(assert (=> b!3527904 (= e!2183907 e!2183896)))

(declare-fun res!1423335 () Bool)

(assert (=> b!3527904 (=> (not res!1423335) (not e!2183896))))

(assert (=> b!3527904 (= res!1423335 (matchR!4831 (regex!5488 lt!1205960) lt!1205994))))

(assert (=> b!3527904 (= lt!1205960 (get!12013 lt!1205981))))

(declare-fun b!3527905 () Bool)

(declare-fun Unit!53100 () Unit!53096)

(assert (=> b!3527905 (= e!2183897 Unit!53100)))

(declare-fun b!3527906 () Bool)

(declare-fun res!1423325 () Bool)

(assert (=> b!3527906 (=> (not res!1423325) (not e!2183877))))

(declare-fun isEmpty!21878 (List!37522) Bool)

(assert (=> b!3527906 (= res!1423325 (not (isEmpty!21878 rules!2135)))))

(declare-fun b!3527907 () Bool)

(declare-fun res!1423328 () Bool)

(assert (=> b!3527907 (=> (not res!1423328) (not e!2183877))))

(declare-fun sepAndNonSepRulesDisjointChars!1682 (List!37522 List!37522) Bool)

(assert (=> b!3527907 (= res!1423328 (sepAndNonSepRulesDisjointChars!1682 rules!2135 rules!2135))))

(declare-fun b!3527908 () Bool)

(assert (=> b!3527908 (= e!2183901 false)))

(declare-fun b!3527909 () Bool)

(declare-fun res!1423327 () Bool)

(declare-fun e!2183880 () Bool)

(assert (=> b!3527909 (=> res!1423327 e!2183880)))

(assert (=> b!3527909 (= res!1423327 (not (rulesProduceIndividualToken!2569 thiss!18206 rules!2135 (h!42819 tokens!494))))))

(declare-fun b!3527910 () Bool)

(assert (=> b!3527910 (= e!2183904 e!2183880)))

(declare-fun res!1423338 () Bool)

(assert (=> b!3527910 (=> res!1423338 e!2183880)))

(assert (=> b!3527910 (= res!1423338 (or (not (= lt!1205989 lt!1205986)) (not (= lt!1205979 lt!1205986))))))

(assert (=> b!3527910 (= lt!1205986 (list!13687 (charsOf!3502 (h!42819 tokens!494))))))

(declare-fun b!3527911 () Bool)

(declare-fun tp!1088033 () Bool)

(declare-fun inv!50634 (String!41924) Bool)

(declare-fun inv!50637 (TokenValueInjection!10864) Bool)

(assert (=> b!3527911 (= e!2183911 (and tp!1088033 (inv!50634 (tag!6132 (rule!8148 (h!42819 tokens!494)))) (inv!50637 (transformation!5488 (rule!8148 (h!42819 tokens!494)))) e!2183899))))

(declare-fun res!1423332 () Bool)

(assert (=> start!327902 (=> (not res!1423332) (not e!2183877))))

(assert (=> start!327902 (= res!1423332 ((_ is Lexer!5075) thiss!18206))))

(assert (=> start!327902 e!2183877))

(assert (=> start!327902 true))

(assert (=> start!327902 e!2183908))

(declare-fun e!2183900 () Bool)

(assert (=> start!327902 e!2183900))

(declare-fun inv!50638 (Token!10342) Bool)

(assert (=> start!327902 (and (inv!50638 separatorToken!241) e!2183894)))

(declare-fun b!3527889 () Bool)

(declare-fun Unit!53101 () Unit!53096)

(assert (=> b!3527889 (= e!2183890 Unit!53101)))

(declare-fun b!3527912 () Bool)

(declare-fun tp!1088034 () Bool)

(assert (=> b!3527912 (= e!2183902 (and tp!1088034 (inv!50634 (tag!6132 (h!42818 rules!2135))) (inv!50637 (transformation!5488 (h!42818 rules!2135))) e!2183906))))

(declare-fun b!3527913 () Bool)

(assert (=> b!3527913 (= e!2183905 (isEmpty!21877 (_2!21761 lt!1205971)))))

(declare-fun b!3527914 () Bool)

(assert (=> b!3527914 (= e!2183885 (= (rule!8148 (h!42819 (t!282676 tokens!494))) lt!1205980))))

(declare-fun b!3527915 () Bool)

(declare-fun e!2183887 () Bool)

(assert (=> b!3527915 (= e!2183880 e!2183887)))

(declare-fun res!1423331 () Bool)

(assert (=> b!3527915 (=> res!1423331 e!2183887)))

(declare-fun isEmpty!21879 (BalanceConc!22318) Bool)

(assert (=> b!3527915 (= res!1423331 (isEmpty!21879 (_1!21761 (lex!2403 thiss!18206 rules!2135 lt!1205990))))))

(assert (=> b!3527915 (= lt!1205990 (seqFromList!4030 lt!1205986))))

(declare-fun b!3527916 () Bool)

(declare-fun tp!1088026 () Bool)

(assert (=> b!3527916 (= e!2183900 (and (inv!50638 (h!42819 tokens!494)) e!2183893 tp!1088026))))

(declare-fun b!3527917 () Bool)

(assert (=> b!3527917 (= e!2183887 e!2183886)))

(declare-fun res!1423349 () Bool)

(assert (=> b!3527917 (=> res!1423349 e!2183886)))

(assert (=> b!3527917 (= res!1423349 (or (isSeparator!5488 (rule!8148 (h!42819 tokens!494))) (isSeparator!5488 (rule!8148 (h!42819 (t!282676 tokens!494))))))))

(declare-fun lt!1205954 () Unit!53096)

(assert (=> b!3527917 (= lt!1205954 (forallContained!1435 tokens!494 lambda!122938 (h!42819 (t!282676 tokens!494))))))

(declare-fun lt!1205966 () Unit!53096)

(assert (=> b!3527917 (= lt!1205966 (forallContained!1435 tokens!494 lambda!122938 (h!42819 tokens!494)))))

(declare-fun tp!1088031 () Bool)

(declare-fun b!3527918 () Bool)

(declare-fun e!2183903 () Bool)

(assert (=> b!3527918 (= e!2183895 (and tp!1088031 (inv!50634 (tag!6132 (rule!8148 separatorToken!241))) (inv!50637 (transformation!5488 (rule!8148 separatorToken!241))) e!2183903))))

(assert (=> b!3527919 (= e!2183903 (and tp!1088029 tp!1088024))))

(declare-fun b!3527920 () Bool)

(declare-fun res!1423346 () Bool)

(assert (=> b!3527920 (=> (not res!1423346) (not e!2183877))))

(assert (=> b!3527920 (= res!1423346 (isSeparator!5488 (rule!8148 separatorToken!241)))))

(declare-fun b!3527921 () Bool)

(declare-fun res!1423348 () Bool)

(assert (=> b!3527921 (=> (not res!1423348) (not e!2183877))))

(assert (=> b!3527921 (= res!1423348 (and (not ((_ is Nil!37399) tokens!494)) (not ((_ is Nil!37399) (t!282676 tokens!494)))))))

(assert (= (and start!327902 res!1423332) b!3527906))

(assert (= (and b!3527906 res!1423325) b!3527898))

(assert (= (and b!3527898 res!1423342) b!3527881))

(assert (= (and b!3527881 res!1423340) b!3527894))

(assert (= (and b!3527894 res!1423321) b!3527920))

(assert (= (and b!3527920 res!1423346) b!3527890))

(assert (= (and b!3527890 res!1423329) b!3527907))

(assert (= (and b!3527907 res!1423328) b!3527921))

(assert (= (and b!3527921 res!1423348) b!3527880))

(assert (= (and b!3527880 (not res!1423330)) b!3527910))

(assert (= (and b!3527910 (not res!1423338)) b!3527909))

(assert (= (and b!3527909 (not res!1423327)) b!3527915))

(assert (= (and b!3527915 (not res!1423331)) b!3527917))

(assert (= (and b!3527917 (not res!1423349)) b!3527888))

(assert (= (and b!3527888 (not res!1423344)) b!3527882))

(assert (= (and b!3527882 (not res!1423341)) b!3527893))

(assert (= (and b!3527893 (not res!1423343)) b!3527883))

(assert (= (and b!3527883 res!1423347) b!3527896))

(assert (= (and b!3527896 res!1423345) b!3527895))

(assert (= (and b!3527883 res!1423339) b!3527904))

(assert (= (and b!3527904 res!1423335) b!3527900))

(assert (= (and b!3527883 c!608138) b!3527902))

(assert (= (and b!3527883 (not c!608138)) b!3527905))

(assert (= (and b!3527902 res!1423326) b!3527886))

(assert (= (and b!3527883 res!1423323) b!3527887))

(assert (= (and b!3527887 res!1423334) b!3527913))

(assert (= (and b!3527883 (not res!1423336)) b!3527892))

(assert (= (and b!3527892 (not res!1423337)) b!3527884))

(assert (= (and b!3527883 res!1423324) b!3527885))

(assert (= (and b!3527885 res!1423322) b!3527914))

(assert (= (and b!3527883 c!608139) b!3527897))

(assert (= (and b!3527883 (not c!608139)) b!3527889))

(assert (= (and b!3527897 res!1423333) b!3527908))

(assert (= b!3527912 b!3527899))

(assert (= b!3527891 b!3527912))

(assert (= (and start!327902 ((_ is Cons!37398) rules!2135)) b!3527891))

(assert (= b!3527911 b!3527879))

(assert (= b!3527901 b!3527911))

(assert (= b!3527916 b!3527901))

(assert (= (and start!327902 ((_ is Cons!37399) tokens!494)) b!3527916))

(assert (= b!3527918 b!3527919))

(assert (= b!3527903 b!3527918))

(assert (= start!327902 b!3527903))

(declare-fun m!3982483 () Bool)

(assert (=> b!3527893 m!3982483))

(declare-fun m!3982485 () Bool)

(assert (=> b!3527893 m!3982485))

(declare-fun m!3982487 () Bool)

(assert (=> start!327902 m!3982487))

(declare-fun m!3982489 () Bool)

(assert (=> b!3527913 m!3982489))

(declare-fun m!3982491 () Bool)

(assert (=> b!3527883 m!3982491))

(declare-fun m!3982493 () Bool)

(assert (=> b!3527883 m!3982493))

(declare-fun m!3982495 () Bool)

(assert (=> b!3527883 m!3982495))

(declare-fun m!3982497 () Bool)

(assert (=> b!3527883 m!3982497))

(declare-fun m!3982499 () Bool)

(assert (=> b!3527883 m!3982499))

(declare-fun m!3982501 () Bool)

(assert (=> b!3527883 m!3982501))

(declare-fun m!3982503 () Bool)

(assert (=> b!3527883 m!3982503))

(declare-fun m!3982505 () Bool)

(assert (=> b!3527883 m!3982505))

(declare-fun m!3982507 () Bool)

(assert (=> b!3527883 m!3982507))

(declare-fun m!3982509 () Bool)

(assert (=> b!3527883 m!3982509))

(declare-fun m!3982511 () Bool)

(assert (=> b!3527883 m!3982511))

(declare-fun m!3982513 () Bool)

(assert (=> b!3527883 m!3982513))

(declare-fun m!3982515 () Bool)

(assert (=> b!3527883 m!3982515))

(declare-fun m!3982517 () Bool)

(assert (=> b!3527883 m!3982517))

(declare-fun m!3982519 () Bool)

(assert (=> b!3527883 m!3982519))

(declare-fun m!3982521 () Bool)

(assert (=> b!3527883 m!3982521))

(declare-fun m!3982523 () Bool)

(assert (=> b!3527883 m!3982523))

(declare-fun m!3982525 () Bool)

(assert (=> b!3527883 m!3982525))

(declare-fun m!3982527 () Bool)

(assert (=> b!3527883 m!3982527))

(declare-fun m!3982529 () Bool)

(assert (=> b!3527883 m!3982529))

(declare-fun m!3982531 () Bool)

(assert (=> b!3527883 m!3982531))

(declare-fun m!3982533 () Bool)

(assert (=> b!3527883 m!3982533))

(declare-fun m!3982535 () Bool)

(assert (=> b!3527883 m!3982535))

(declare-fun m!3982537 () Bool)

(assert (=> b!3527883 m!3982537))

(declare-fun m!3982539 () Bool)

(assert (=> b!3527883 m!3982539))

(declare-fun m!3982541 () Bool)

(assert (=> b!3527883 m!3982541))

(declare-fun m!3982543 () Bool)

(assert (=> b!3527883 m!3982543))

(declare-fun m!3982545 () Bool)

(assert (=> b!3527883 m!3982545))

(declare-fun m!3982547 () Bool)

(assert (=> b!3527883 m!3982547))

(declare-fun m!3982549 () Bool)

(assert (=> b!3527883 m!3982549))

(declare-fun m!3982551 () Bool)

(assert (=> b!3527883 m!3982551))

(declare-fun m!3982553 () Bool)

(assert (=> b!3527883 m!3982553))

(declare-fun m!3982555 () Bool)

(assert (=> b!3527883 m!3982555))

(declare-fun m!3982557 () Bool)

(assert (=> b!3527883 m!3982557))

(assert (=> b!3527883 m!3982495))

(declare-fun m!3982559 () Bool)

(assert (=> b!3527883 m!3982559))

(declare-fun m!3982561 () Bool)

(assert (=> b!3527883 m!3982561))

(assert (=> b!3527883 m!3982539))

(declare-fun m!3982563 () Bool)

(assert (=> b!3527883 m!3982563))

(declare-fun m!3982565 () Bool)

(assert (=> b!3527883 m!3982565))

(declare-fun m!3982567 () Bool)

(assert (=> b!3527883 m!3982567))

(declare-fun m!3982569 () Bool)

(assert (=> b!3527883 m!3982569))

(assert (=> b!3527883 m!3982569))

(declare-fun m!3982571 () Bool)

(assert (=> b!3527883 m!3982571))

(declare-fun m!3982573 () Bool)

(assert (=> b!3527883 m!3982573))

(declare-fun m!3982575 () Bool)

(assert (=> b!3527883 m!3982575))

(declare-fun m!3982577 () Bool)

(assert (=> b!3527883 m!3982577))

(declare-fun m!3982579 () Bool)

(assert (=> b!3527883 m!3982579))

(declare-fun m!3982581 () Bool)

(assert (=> b!3527897 m!3982581))

(declare-fun m!3982583 () Bool)

(assert (=> b!3527897 m!3982583))

(declare-fun m!3982585 () Bool)

(assert (=> b!3527882 m!3982585))

(assert (=> b!3527882 m!3982585))

(declare-fun m!3982587 () Bool)

(assert (=> b!3527882 m!3982587))

(declare-fun m!3982589 () Bool)

(assert (=> b!3527881 m!3982589))

(assert (=> b!3527881 m!3982589))

(declare-fun m!3982591 () Bool)

(assert (=> b!3527881 m!3982591))

(declare-fun m!3982593 () Bool)

(assert (=> b!3527907 m!3982593))

(declare-fun m!3982595 () Bool)

(assert (=> b!3527880 m!3982595))

(declare-fun m!3982597 () Bool)

(assert (=> b!3527880 m!3982597))

(declare-fun m!3982599 () Bool)

(assert (=> b!3527880 m!3982599))

(declare-fun m!3982601 () Bool)

(assert (=> b!3527880 m!3982601))

(declare-fun m!3982603 () Bool)

(assert (=> b!3527880 m!3982603))

(declare-fun m!3982605 () Bool)

(assert (=> b!3527896 m!3982605))

(declare-fun m!3982607 () Bool)

(assert (=> b!3527896 m!3982607))

(declare-fun m!3982609 () Bool)

(assert (=> b!3527885 m!3982609))

(declare-fun m!3982611 () Bool)

(assert (=> b!3527885 m!3982611))

(declare-fun m!3982613 () Bool)

(assert (=> b!3527884 m!3982613))

(declare-fun m!3982615 () Bool)

(assert (=> b!3527888 m!3982615))

(declare-fun m!3982617 () Bool)

(assert (=> b!3527888 m!3982617))

(declare-fun m!3982619 () Bool)

(assert (=> b!3527888 m!3982619))

(declare-fun m!3982621 () Bool)

(assert (=> b!3527888 m!3982621))

(assert (=> b!3527888 m!3982615))

(declare-fun m!3982623 () Bool)

(assert (=> b!3527888 m!3982623))

(declare-fun m!3982625 () Bool)

(assert (=> b!3527888 m!3982625))

(declare-fun m!3982627 () Bool)

(assert (=> b!3527888 m!3982627))

(declare-fun m!3982629 () Bool)

(assert (=> b!3527888 m!3982629))

(assert (=> b!3527888 m!3982617))

(declare-fun m!3982631 () Bool)

(assert (=> b!3527888 m!3982631))

(assert (=> b!3527888 m!3982627))

(assert (=> b!3527888 m!3982629))

(declare-fun m!3982633 () Bool)

(assert (=> b!3527888 m!3982633))

(declare-fun m!3982635 () Bool)

(assert (=> b!3527892 m!3982635))

(declare-fun m!3982637 () Bool)

(assert (=> b!3527915 m!3982637))

(declare-fun m!3982639 () Bool)

(assert (=> b!3527915 m!3982639))

(declare-fun m!3982641 () Bool)

(assert (=> b!3527915 m!3982641))

(declare-fun m!3982643 () Bool)

(assert (=> b!3527902 m!3982643))

(declare-fun m!3982645 () Bool)

(assert (=> b!3527902 m!3982645))

(declare-fun m!3982647 () Bool)

(assert (=> b!3527917 m!3982647))

(declare-fun m!3982649 () Bool)

(assert (=> b!3527917 m!3982649))

(declare-fun m!3982651 () Bool)

(assert (=> b!3527916 m!3982651))

(declare-fun m!3982653 () Bool)

(assert (=> b!3527887 m!3982653))

(declare-fun m!3982655 () Bool)

(assert (=> b!3527918 m!3982655))

(declare-fun m!3982657 () Bool)

(assert (=> b!3527918 m!3982657))

(declare-fun m!3982659 () Bool)

(assert (=> b!3527910 m!3982659))

(assert (=> b!3527910 m!3982659))

(declare-fun m!3982661 () Bool)

(assert (=> b!3527910 m!3982661))

(declare-fun m!3982663 () Bool)

(assert (=> b!3527911 m!3982663))

(declare-fun m!3982665 () Bool)

(assert (=> b!3527911 m!3982665))

(declare-fun m!3982667 () Bool)

(assert (=> b!3527906 m!3982667))

(declare-fun m!3982669 () Bool)

(assert (=> b!3527901 m!3982669))

(declare-fun m!3982671 () Bool)

(assert (=> b!3527909 m!3982671))

(declare-fun m!3982673 () Bool)

(assert (=> b!3527898 m!3982673))

(declare-fun m!3982675 () Bool)

(assert (=> b!3527903 m!3982675))

(declare-fun m!3982677 () Bool)

(assert (=> b!3527890 m!3982677))

(declare-fun m!3982679 () Bool)

(assert (=> b!3527912 m!3982679))

(declare-fun m!3982681 () Bool)

(assert (=> b!3527912 m!3982681))

(declare-fun m!3982683 () Bool)

(assert (=> b!3527894 m!3982683))

(declare-fun m!3982685 () Bool)

(assert (=> b!3527904 m!3982685))

(declare-fun m!3982687 () Bool)

(assert (=> b!3527904 m!3982687))

(check-sat (not b_next!91651) (not b_next!91641) b_and!251573 b_and!251569 (not b!3527892) b_and!251577 (not b_next!91643) (not b!3527907) (not b!3527911) (not b!3527913) (not b!3527904) (not b!3527910) (not b!3527881) (not b!3527909) (not b!3527930) (not start!327902) (not b!3527896) (not b!3527898) (not b!3527890) (not b!3527916) (not b!3527887) b_and!251571 b_and!251567 (not b!3527894) (not b!3527884) (not b!3527883) (not b!3527897) (not b!3527882) (not b!3527902) (not b!3527912) b_and!251575 (not b!3527903) (not b!3527906) (not b!3527891) (not b_next!91645) (not b!3527888) (not b!3527917) (not b_next!91649) (not b_next!91647) (not b!3527901) (not b!3527893) (not b!3527885) (not b!3527918) (not b!3527880) (not b!3527915))
(check-sat (not b_next!91651) b_and!251571 b_and!251567 (not b_next!91641) b_and!251573 b_and!251569 b_and!251577 (not b_next!91643) b_and!251575 (not b_next!91647) (not b_next!91645) (not b_next!91649))
