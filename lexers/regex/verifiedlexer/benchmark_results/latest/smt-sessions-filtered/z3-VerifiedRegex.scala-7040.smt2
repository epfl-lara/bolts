; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373636 () Bool)

(assert start!373636)

(declare-fun b!3970976 () Bool)

(declare-fun b_free!110017 () Bool)

(declare-fun b_next!110721 () Bool)

(assert (=> b!3970976 (= b_free!110017 (not b_next!110721))))

(declare-fun tp!1210813 () Bool)

(declare-fun b_and!305263 () Bool)

(assert (=> b!3970976 (= tp!1210813 b_and!305263)))

(declare-fun b_free!110019 () Bool)

(declare-fun b_next!110723 () Bool)

(assert (=> b!3970976 (= b_free!110019 (not b_next!110723))))

(declare-fun tp!1210804 () Bool)

(declare-fun b_and!305265 () Bool)

(assert (=> b!3970976 (= tp!1210804 b_and!305265)))

(declare-fun b!3970981 () Bool)

(declare-fun b_free!110021 () Bool)

(declare-fun b_next!110725 () Bool)

(assert (=> b!3970981 (= b_free!110021 (not b_next!110725))))

(declare-fun tp!1210806 () Bool)

(declare-fun b_and!305267 () Bool)

(assert (=> b!3970981 (= tp!1210806 b_and!305267)))

(declare-fun b_free!110023 () Bool)

(declare-fun b_next!110727 () Bool)

(assert (=> b!3970981 (= b_free!110023 (not b_next!110727))))

(declare-fun tp!1210807 () Bool)

(declare-fun b_and!305269 () Bool)

(assert (=> b!3970981 (= tp!1210807 b_and!305269)))

(declare-fun tp!1210808 () Bool)

(declare-datatypes ((C!23332 0))(
  ( (C!23333 (val!13760 Int)) )
))
(declare-datatypes ((List!42512 0))(
  ( (Nil!42388) (Cons!42388 (h!47808 C!23332) (t!330879 List!42512)) )
))
(declare-datatypes ((IArray!25763 0))(
  ( (IArray!25764 (innerList!12939 List!42512)) )
))
(declare-datatypes ((Conc!12879 0))(
  ( (Node!12879 (left!32107 Conc!12879) (right!32437 Conc!12879) (csize!25988 Int) (cheight!13090 Int)) (Leaf!19920 (xs!16185 IArray!25763) (csize!25989 Int)) (Empty!12879) )
))
(declare-datatypes ((BalanceConc!25352 0))(
  ( (BalanceConc!25353 (c!688738 Conc!12879)) )
))
(declare-datatypes ((List!42513 0))(
  ( (Nil!42389) (Cons!42389 (h!47809 (_ BitVec 16)) (t!330880 List!42513)) )
))
(declare-datatypes ((TokenValue!6898 0))(
  ( (FloatLiteralValue!13796 (text!48731 List!42513)) (TokenValueExt!6897 (__x!26013 Int)) (Broken!34490 (value!210646 List!42513)) (Object!7021) (End!6898) (Def!6898) (Underscore!6898) (Match!6898) (Else!6898) (Error!6898) (Case!6898) (If!6898) (Extends!6898) (Abstract!6898) (Class!6898) (Val!6898) (DelimiterValue!13796 (del!6958 List!42513)) (KeywordValue!6904 (value!210647 List!42513)) (CommentValue!13796 (value!210648 List!42513)) (WhitespaceValue!13796 (value!210649 List!42513)) (IndentationValue!6898 (value!210650 List!42513)) (String!48207) (Int32!6898) (Broken!34491 (value!210651 List!42513)) (Boolean!6899) (Unit!61039) (OperatorValue!6901 (op!6958 List!42513)) (IdentifierValue!13796 (value!210652 List!42513)) (IdentifierValue!13797 (value!210653 List!42513)) (WhitespaceValue!13797 (value!210654 List!42513)) (True!13796) (False!13796) (Broken!34492 (value!210655 List!42513)) (Broken!34493 (value!210656 List!42513)) (True!13797) (RightBrace!6898) (RightBracket!6898) (Colon!6898) (Null!6898) (Comma!6898) (LeftBracket!6898) (False!13797) (LeftBrace!6898) (ImaginaryLiteralValue!6898 (text!48732 List!42513)) (StringLiteralValue!20694 (value!210657 List!42513)) (EOFValue!6898 (value!210658 List!42513)) (IdentValue!6898 (value!210659 List!42513)) (DelimiterValue!13797 (value!210660 List!42513)) (DedentValue!6898 (value!210661 List!42513)) (NewLineValue!6898 (value!210662 List!42513)) (IntegerValue!20694 (value!210663 (_ BitVec 32)) (text!48733 List!42513)) (IntegerValue!20695 (value!210664 Int) (text!48734 List!42513)) (Times!6898) (Or!6898) (Equal!6898) (Minus!6898) (Broken!34494 (value!210665 List!42513)) (And!6898) (Div!6898) (LessEqual!6898) (Mod!6898) (Concat!18471) (Not!6898) (Plus!6898) (SpaceValue!6898 (value!210666 List!42513)) (IntegerValue!20696 (value!210667 Int) (text!48735 List!42513)) (StringLiteralValue!20695 (text!48736 List!42513)) (FloatLiteralValue!13797 (text!48737 List!42513)) (BytesLiteralValue!6898 (value!210668 List!42513)) (CommentValue!13797 (value!210669 List!42513)) (StringLiteralValue!20696 (value!210670 List!42513)) (ErrorTokenValue!6898 (msg!6959 List!42513)) )
))
(declare-datatypes ((Regex!11573 0))(
  ( (ElementMatch!11573 (c!688739 C!23332)) (Concat!18472 (regOne!23658 Regex!11573) (regTwo!23658 Regex!11573)) (EmptyExpr!11573) (Star!11573 (reg!11902 Regex!11573)) (EmptyLang!11573) (Union!11573 (regOne!23659 Regex!11573) (regTwo!23659 Regex!11573)) )
))
(declare-datatypes ((String!48208 0))(
  ( (String!48209 (value!210671 String)) )
))
(declare-datatypes ((TokenValueInjection!13224 0))(
  ( (TokenValueInjection!13225 (toValue!9156 Int) (toChars!9015 Int)) )
))
(declare-datatypes ((Rule!13136 0))(
  ( (Rule!13137 (regex!6668 Regex!11573) (tag!7528 String!48208) (isSeparator!6668 Bool) (transformation!6668 TokenValueInjection!13224)) )
))
(declare-datatypes ((Token!12474 0))(
  ( (Token!12475 (value!210672 TokenValue!6898) (rule!9656 Rule!13136) (size!31716 Int) (originalCharacters!7268 List!42512)) )
))
(declare-fun token!484 () Token!12474)

(declare-fun e!2459854 () Bool)

(declare-fun b!3970968 () Bool)

(declare-fun e!2459858 () Bool)

(declare-fun inv!21 (TokenValue!6898) Bool)

(assert (=> b!3970968 (= e!2459854 (and (inv!21 (value!210672 token!484)) e!2459858 tp!1210808))))

(declare-fun b!3970969 () Bool)

(declare-fun res!1607426 () Bool)

(declare-fun e!2459861 () Bool)

(assert (=> b!3970969 (=> (not res!1607426) (not e!2459861))))

(declare-fun newSuffix!27 () List!42512)

(declare-fun suffix!1299 () List!42512)

(declare-fun isPrefix!3755 (List!42512 List!42512) Bool)

(assert (=> b!3970969 (= res!1607426 (isPrefix!3755 newSuffix!27 suffix!1299))))

(declare-fun b!3970970 () Bool)

(declare-fun e!2459852 () Bool)

(assert (=> b!3970970 (= e!2459861 e!2459852)))

(declare-fun res!1607430 () Bool)

(assert (=> b!3970970 (=> (not res!1607430) (not e!2459852))))

(declare-fun lt!1390855 () Int)

(declare-fun lt!1390839 () Int)

(assert (=> b!3970970 (= res!1607430 (>= lt!1390855 lt!1390839))))

(declare-fun lt!1390840 () List!42512)

(declare-fun size!31717 (List!42512) Int)

(assert (=> b!3970970 (= lt!1390839 (size!31717 lt!1390840))))

(declare-fun prefix!494 () List!42512)

(assert (=> b!3970970 (= lt!1390855 (size!31717 prefix!494))))

(declare-fun list!15728 (BalanceConc!25352) List!42512)

(declare-fun charsOf!4484 (Token!12474) BalanceConc!25352)

(assert (=> b!3970970 (= lt!1390840 (list!15728 (charsOf!4484 token!484)))))

(declare-fun b!3970971 () Bool)

(declare-fun res!1607429 () Bool)

(assert (=> b!3970971 (=> (not res!1607429) (not e!2459861))))

(assert (=> b!3970971 (= res!1607429 (>= (size!31717 suffix!1299) (size!31717 newSuffix!27)))))

(declare-fun b!3970972 () Bool)

(declare-fun e!2459859 () Bool)

(declare-fun e!2459866 () Bool)

(assert (=> b!3970972 (= e!2459859 (not e!2459866))))

(declare-fun res!1607425 () Bool)

(assert (=> b!3970972 (=> res!1607425 e!2459866)))

(declare-fun lt!1390856 () List!42512)

(declare-fun lt!1390852 () List!42512)

(assert (=> b!3970972 (= res!1607425 (not (= lt!1390856 lt!1390852)))))

(declare-fun suffixResult!105 () List!42512)

(declare-fun ++!11070 (List!42512 List!42512) List!42512)

(assert (=> b!3970972 (= lt!1390856 (++!11070 lt!1390840 suffixResult!105))))

(declare-datatypes ((Unit!61040 0))(
  ( (Unit!61041) )
))
(declare-fun lt!1390854 () Unit!61040)

(declare-fun lemmaInv!883 (TokenValueInjection!13224) Unit!61040)

(assert (=> b!3970972 (= lt!1390854 (lemmaInv!883 (transformation!6668 (rule!9656 token!484))))))

(declare-datatypes ((LexerInterface!6257 0))(
  ( (LexerInterfaceExt!6254 (__x!26014 Int)) (Lexer!6255) )
))
(declare-fun thiss!21717 () LexerInterface!6257)

(declare-fun ruleValid!2600 (LexerInterface!6257 Rule!13136) Bool)

(assert (=> b!3970972 (ruleValid!2600 thiss!21717 (rule!9656 token!484))))

(declare-fun lt!1390850 () Unit!61040)

(declare-datatypes ((List!42514 0))(
  ( (Nil!42390) (Cons!42390 (h!47810 Rule!13136) (t!330881 List!42514)) )
))
(declare-fun rules!2999 () List!42514)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1674 (LexerInterface!6257 Rule!13136 List!42514) Unit!61040)

(assert (=> b!3970972 (= lt!1390850 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1674 thiss!21717 (rule!9656 token!484) rules!2999))))

(declare-fun b!3970973 () Bool)

(declare-fun e!2459864 () Bool)

(declare-fun e!2459860 () Bool)

(assert (=> b!3970973 (= e!2459864 e!2459860)))

(declare-fun res!1607422 () Bool)

(assert (=> b!3970973 (=> res!1607422 e!2459860)))

(declare-fun lt!1390857 () List!42512)

(assert (=> b!3970973 (= res!1607422 (not (= lt!1390857 prefix!494)))))

(declare-fun lt!1390841 () List!42512)

(assert (=> b!3970973 (= lt!1390857 (++!11070 lt!1390840 lt!1390841))))

(declare-fun getSuffix!2186 (List!42512 List!42512) List!42512)

(assert (=> b!3970973 (= lt!1390841 (getSuffix!2186 prefix!494 lt!1390840))))

(assert (=> b!3970973 (isPrefix!3755 lt!1390840 prefix!494)))

(declare-fun lt!1390847 () Unit!61040)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!333 (List!42512 List!42512 List!42512) Unit!61040)

(assert (=> b!3970973 (= lt!1390847 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!333 prefix!494 lt!1390840 lt!1390852))))

(declare-fun b!3970974 () Bool)

(declare-fun e!2459853 () Bool)

(declare-fun e!2459857 () Bool)

(declare-fun tp!1210812 () Bool)

(declare-fun inv!56638 (String!48208) Bool)

(declare-fun inv!56641 (TokenValueInjection!13224) Bool)

(assert (=> b!3970974 (= e!2459857 (and tp!1210812 (inv!56638 (tag!7528 (h!47810 rules!2999))) (inv!56641 (transformation!6668 (h!47810 rules!2999))) e!2459853))))

(declare-fun b!3970975 () Bool)

(assert (=> b!3970975 (= e!2459852 e!2459859)))

(declare-fun res!1607428 () Bool)

(assert (=> b!3970975 (=> (not res!1607428) (not e!2459859))))

(declare-datatypes ((tuple2!41648 0))(
  ( (tuple2!41649 (_1!23958 Token!12474) (_2!23958 List!42512)) )
))
(declare-datatypes ((Option!9082 0))(
  ( (None!9081) (Some!9081 (v!39429 tuple2!41648)) )
))
(declare-fun maxPrefix!3555 (LexerInterface!6257 List!42514 List!42512) Option!9082)

(assert (=> b!3970975 (= res!1607428 (= (maxPrefix!3555 thiss!21717 rules!2999 lt!1390852) (Some!9081 (tuple2!41649 token!484 suffixResult!105))))))

(assert (=> b!3970975 (= lt!1390852 (++!11070 prefix!494 suffix!1299))))

(assert (=> b!3970976 (= e!2459853 (and tp!1210813 tp!1210804))))

(declare-fun b!3970977 () Bool)

(declare-fun e!2459862 () Bool)

(declare-fun tp!1210810 () Bool)

(assert (=> b!3970977 (= e!2459862 (and e!2459857 tp!1210810))))

(declare-fun b!3970978 () Bool)

(assert (=> b!3970978 (= e!2459866 e!2459864)))

(declare-fun res!1607421 () Bool)

(assert (=> b!3970978 (=> res!1607421 e!2459864)))

(assert (=> b!3970978 (= res!1607421 (not (isPrefix!3755 lt!1390840 lt!1390852)))))

(assert (=> b!3970978 (isPrefix!3755 prefix!494 lt!1390852)))

(declare-fun lt!1390848 () Unit!61040)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2598 (List!42512 List!42512) Unit!61040)

(assert (=> b!3970978 (= lt!1390848 (lemmaConcatTwoListThenFirstIsPrefix!2598 prefix!494 suffix!1299))))

(assert (=> b!3970978 (isPrefix!3755 lt!1390840 lt!1390856)))

(declare-fun lt!1390842 () Unit!61040)

(assert (=> b!3970978 (= lt!1390842 (lemmaConcatTwoListThenFirstIsPrefix!2598 lt!1390840 suffixResult!105))))

(declare-fun b!3970979 () Bool)

(declare-fun e!2459856 () Bool)

(declare-fun tp_is_empty!20117 () Bool)

(declare-fun tp!1210805 () Bool)

(assert (=> b!3970979 (= e!2459856 (and tp_is_empty!20117 tp!1210805))))

(declare-fun b!3970980 () Bool)

(declare-fun e!2459867 () Bool)

(assert (=> b!3970980 (= e!2459860 e!2459867)))

(declare-fun res!1607419 () Bool)

(assert (=> b!3970980 (=> res!1607419 e!2459867)))

(declare-fun lt!1390851 () List!42512)

(declare-fun lt!1390843 () List!42512)

(assert (=> b!3970980 (= res!1607419 (or (not (= lt!1390852 lt!1390843)) (not (= lt!1390852 lt!1390851))))))

(assert (=> b!3970980 (= lt!1390843 lt!1390851)))

(declare-fun lt!1390844 () List!42512)

(assert (=> b!3970980 (= lt!1390851 (++!11070 lt!1390840 lt!1390844))))

(assert (=> b!3970980 (= lt!1390843 (++!11070 lt!1390857 suffix!1299))))

(assert (=> b!3970980 (= lt!1390844 (++!11070 lt!1390841 suffix!1299))))

(declare-fun lt!1390845 () Unit!61040)

(declare-fun lemmaConcatAssociativity!2390 (List!42512 List!42512 List!42512) Unit!61040)

(assert (=> b!3970980 (= lt!1390845 (lemmaConcatAssociativity!2390 lt!1390840 lt!1390841 suffix!1299))))

(declare-fun e!2459868 () Bool)

(assert (=> b!3970981 (= e!2459868 (and tp!1210806 tp!1210807))))

(declare-fun tp!1210815 () Bool)

(declare-fun b!3970982 () Bool)

(assert (=> b!3970982 (= e!2459858 (and tp!1210815 (inv!56638 (tag!7528 (rule!9656 token!484))) (inv!56641 (transformation!6668 (rule!9656 token!484))) e!2459868))))

(declare-fun b!3970983 () Bool)

(declare-fun res!1607427 () Bool)

(assert (=> b!3970983 (=> (not res!1607427) (not e!2459852))))

(declare-fun newSuffixResult!27 () List!42512)

(assert (=> b!3970983 (= res!1607427 (= (++!11070 lt!1390840 newSuffixResult!27) (++!11070 prefix!494 newSuffix!27)))))

(declare-fun res!1607420 () Bool)

(assert (=> start!373636 (=> (not res!1607420) (not e!2459861))))

(get-info :version)

(assert (=> start!373636 (= res!1607420 ((_ is Lexer!6255) thiss!21717))))

(assert (=> start!373636 e!2459861))

(declare-fun e!2459863 () Bool)

(assert (=> start!373636 e!2459863))

(declare-fun inv!56642 (Token!12474) Bool)

(assert (=> start!373636 (and (inv!56642 token!484) e!2459854)))

(declare-fun e!2459849 () Bool)

(assert (=> start!373636 e!2459849))

(declare-fun e!2459848 () Bool)

(assert (=> start!373636 e!2459848))

(declare-fun e!2459850 () Bool)

(assert (=> start!373636 e!2459850))

(assert (=> start!373636 true))

(assert (=> start!373636 e!2459862))

(assert (=> start!373636 e!2459856))

(declare-fun b!3970984 () Bool)

(declare-fun res!1607423 () Bool)

(assert (=> b!3970984 (=> (not res!1607423) (not e!2459861))))

(declare-fun isEmpty!25358 (List!42514) Bool)

(assert (=> b!3970984 (= res!1607423 (not (isEmpty!25358 rules!2999)))))

(declare-fun b!3970985 () Bool)

(declare-fun tp!1210814 () Bool)

(assert (=> b!3970985 (= e!2459850 (and tp_is_empty!20117 tp!1210814))))

(declare-fun b!3970986 () Bool)

(declare-fun tp!1210811 () Bool)

(assert (=> b!3970986 (= e!2459863 (and tp_is_empty!20117 tp!1210811))))

(declare-fun b!3970987 () Bool)

(declare-fun tp!1210809 () Bool)

(assert (=> b!3970987 (= e!2459848 (and tp_is_empty!20117 tp!1210809))))

(declare-fun b!3970988 () Bool)

(declare-fun tp!1210816 () Bool)

(assert (=> b!3970988 (= e!2459849 (and tp_is_empty!20117 tp!1210816))))

(declare-fun b!3970989 () Bool)

(assert (=> b!3970989 (= e!2459867 true)))

(declare-fun maxPrefixOneRule!2589 (LexerInterface!6257 Rule!13136 List!42512) Option!9082)

(declare-fun apply!9879 (TokenValueInjection!13224 BalanceConc!25352) TokenValue!6898)

(declare-fun seqFromList!4907 (List!42512) BalanceConc!25352)

(assert (=> b!3970989 (= (maxPrefixOneRule!2589 thiss!21717 (rule!9656 token!484) lt!1390852) (Some!9081 (tuple2!41649 (Token!12475 (apply!9879 (transformation!6668 (rule!9656 token!484)) (seqFromList!4907 lt!1390840)) (rule!9656 token!484) lt!1390839 lt!1390840) suffixResult!105)))))

(declare-fun lt!1390853 () Unit!61040)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1411 (LexerInterface!6257 List!42514 List!42512 List!42512 List!42512 Rule!13136) Unit!61040)

(assert (=> b!3970989 (= lt!1390853 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1411 thiss!21717 rules!2999 lt!1390840 lt!1390852 suffixResult!105 (rule!9656 token!484)))))

(assert (=> b!3970989 (= lt!1390844 suffixResult!105)))

(declare-fun lt!1390849 () Unit!61040)

(declare-fun lemmaSamePrefixThenSameSuffix!1942 (List!42512 List!42512 List!42512 List!42512 List!42512) Unit!61040)

(assert (=> b!3970989 (= lt!1390849 (lemmaSamePrefixThenSameSuffix!1942 lt!1390840 lt!1390844 lt!1390840 suffixResult!105 lt!1390852))))

(assert (=> b!3970989 (isPrefix!3755 lt!1390840 lt!1390851)))

(declare-fun lt!1390846 () Unit!61040)

(assert (=> b!3970989 (= lt!1390846 (lemmaConcatTwoListThenFirstIsPrefix!2598 lt!1390840 lt!1390844))))

(declare-fun b!3970990 () Bool)

(declare-fun res!1607424 () Bool)

(assert (=> b!3970990 (=> (not res!1607424) (not e!2459861))))

(declare-fun rulesInvariant!5600 (LexerInterface!6257 List!42514) Bool)

(assert (=> b!3970990 (= res!1607424 (rulesInvariant!5600 thiss!21717 rules!2999))))

(assert (= (and start!373636 res!1607420) b!3970984))

(assert (= (and b!3970984 res!1607423) b!3970990))

(assert (= (and b!3970990 res!1607424) b!3970971))

(assert (= (and b!3970971 res!1607429) b!3970969))

(assert (= (and b!3970969 res!1607426) b!3970970))

(assert (= (and b!3970970 res!1607430) b!3970983))

(assert (= (and b!3970983 res!1607427) b!3970975))

(assert (= (and b!3970975 res!1607428) b!3970972))

(assert (= (and b!3970972 (not res!1607425)) b!3970978))

(assert (= (and b!3970978 (not res!1607421)) b!3970973))

(assert (= (and b!3970973 (not res!1607422)) b!3970980))

(assert (= (and b!3970980 (not res!1607419)) b!3970989))

(assert (= (and start!373636 ((_ is Cons!42388) prefix!494)) b!3970986))

(assert (= b!3970982 b!3970981))

(assert (= b!3970968 b!3970982))

(assert (= start!373636 b!3970968))

(assert (= (and start!373636 ((_ is Cons!42388) suffixResult!105)) b!3970988))

(assert (= (and start!373636 ((_ is Cons!42388) suffix!1299)) b!3970987))

(assert (= (and start!373636 ((_ is Cons!42388) newSuffix!27)) b!3970985))

(assert (= b!3970974 b!3970976))

(assert (= b!3970977 b!3970974))

(assert (= (and start!373636 ((_ is Cons!42390) rules!2999)) b!3970977))

(assert (= (and start!373636 ((_ is Cons!42388) newSuffixResult!27)) b!3970979))

(declare-fun m!4541143 () Bool)

(assert (=> b!3970975 m!4541143))

(declare-fun m!4541145 () Bool)

(assert (=> b!3970975 m!4541145))

(declare-fun m!4541147 () Bool)

(assert (=> b!3970982 m!4541147))

(declare-fun m!4541149 () Bool)

(assert (=> b!3970982 m!4541149))

(declare-fun m!4541151 () Bool)

(assert (=> b!3970989 m!4541151))

(declare-fun m!4541153 () Bool)

(assert (=> b!3970989 m!4541153))

(declare-fun m!4541155 () Bool)

(assert (=> b!3970989 m!4541155))

(declare-fun m!4541157 () Bool)

(assert (=> b!3970989 m!4541157))

(declare-fun m!4541159 () Bool)

(assert (=> b!3970989 m!4541159))

(assert (=> b!3970989 m!4541151))

(declare-fun m!4541161 () Bool)

(assert (=> b!3970989 m!4541161))

(declare-fun m!4541163 () Bool)

(assert (=> b!3970989 m!4541163))

(declare-fun m!4541165 () Bool)

(assert (=> b!3970973 m!4541165))

(declare-fun m!4541167 () Bool)

(assert (=> b!3970973 m!4541167))

(declare-fun m!4541169 () Bool)

(assert (=> b!3970973 m!4541169))

(declare-fun m!4541171 () Bool)

(assert (=> b!3970973 m!4541171))

(declare-fun m!4541173 () Bool)

(assert (=> b!3970974 m!4541173))

(declare-fun m!4541175 () Bool)

(assert (=> b!3970974 m!4541175))

(declare-fun m!4541177 () Bool)

(assert (=> b!3970984 m!4541177))

(declare-fun m!4541179 () Bool)

(assert (=> b!3970978 m!4541179))

(declare-fun m!4541181 () Bool)

(assert (=> b!3970978 m!4541181))

(declare-fun m!4541183 () Bool)

(assert (=> b!3970978 m!4541183))

(declare-fun m!4541185 () Bool)

(assert (=> b!3970978 m!4541185))

(declare-fun m!4541187 () Bool)

(assert (=> b!3970978 m!4541187))

(declare-fun m!4541189 () Bool)

(assert (=> b!3970971 m!4541189))

(declare-fun m!4541191 () Bool)

(assert (=> b!3970971 m!4541191))

(declare-fun m!4541193 () Bool)

(assert (=> b!3970969 m!4541193))

(declare-fun m!4541195 () Bool)

(assert (=> b!3970968 m!4541195))

(declare-fun m!4541197 () Bool)

(assert (=> b!3970990 m!4541197))

(declare-fun m!4541199 () Bool)

(assert (=> b!3970980 m!4541199))

(declare-fun m!4541201 () Bool)

(assert (=> b!3970980 m!4541201))

(declare-fun m!4541203 () Bool)

(assert (=> b!3970980 m!4541203))

(declare-fun m!4541205 () Bool)

(assert (=> b!3970980 m!4541205))

(declare-fun m!4541207 () Bool)

(assert (=> b!3970972 m!4541207))

(declare-fun m!4541209 () Bool)

(assert (=> b!3970972 m!4541209))

(declare-fun m!4541211 () Bool)

(assert (=> b!3970972 m!4541211))

(declare-fun m!4541213 () Bool)

(assert (=> b!3970972 m!4541213))

(declare-fun m!4541215 () Bool)

(assert (=> b!3970970 m!4541215))

(declare-fun m!4541217 () Bool)

(assert (=> b!3970970 m!4541217))

(declare-fun m!4541219 () Bool)

(assert (=> b!3970970 m!4541219))

(assert (=> b!3970970 m!4541219))

(declare-fun m!4541221 () Bool)

(assert (=> b!3970970 m!4541221))

(declare-fun m!4541223 () Bool)

(assert (=> start!373636 m!4541223))

(declare-fun m!4541225 () Bool)

(assert (=> b!3970983 m!4541225))

(declare-fun m!4541227 () Bool)

(assert (=> b!3970983 m!4541227))

(check-sat (not b!3970974) (not b!3970986) (not start!373636) (not b!3970988) (not b!3970971) (not b_next!110721) (not b!3970969) (not b!3970987) (not b!3970989) (not b!3970985) (not b!3970984) (not b!3970975) (not b!3970977) (not b!3970982) (not b!3970968) (not b_next!110723) (not b!3970983) (not b!3970979) tp_is_empty!20117 b_and!305263 b_and!305265 (not b_next!110727) b_and!305269 (not b!3970978) b_and!305267 (not b!3970970) (not b_next!110725) (not b!3970973) (not b!3970980) (not b!3970972) (not b!3970990))
(check-sat (not b_next!110723) b_and!305263 (not b_next!110721) (not b_next!110725) b_and!305265 (not b_next!110727) b_and!305269 b_and!305267)
