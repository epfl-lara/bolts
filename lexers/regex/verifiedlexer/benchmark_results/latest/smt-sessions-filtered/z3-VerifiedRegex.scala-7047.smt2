; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373984 () Bool)

(assert start!373984)

(declare-fun b!3973730 () Bool)

(declare-fun b_free!110153 () Bool)

(declare-fun b_next!110857 () Bool)

(assert (=> b!3973730 (= b_free!110153 (not b_next!110857))))

(declare-fun tp!1211620 () Bool)

(declare-fun b_and!305471 () Bool)

(assert (=> b!3973730 (= tp!1211620 b_and!305471)))

(declare-fun b_free!110155 () Bool)

(declare-fun b_next!110859 () Bool)

(assert (=> b!3973730 (= b_free!110155 (not b_next!110859))))

(declare-fun tp!1211609 () Bool)

(declare-fun b_and!305473 () Bool)

(assert (=> b!3973730 (= tp!1211609 b_and!305473)))

(declare-fun b!3973756 () Bool)

(declare-fun b_free!110157 () Bool)

(declare-fun b_next!110861 () Bool)

(assert (=> b!3973756 (= b_free!110157 (not b_next!110861))))

(declare-fun tp!1211612 () Bool)

(declare-fun b_and!305475 () Bool)

(assert (=> b!3973756 (= tp!1211612 b_and!305475)))

(declare-fun b_free!110159 () Bool)

(declare-fun b_next!110863 () Bool)

(assert (=> b!3973756 (= b_free!110159 (not b_next!110863))))

(declare-fun tp!1211619 () Bool)

(declare-fun b_and!305477 () Bool)

(assert (=> b!3973756 (= tp!1211619 b_and!305477)))

(declare-fun e!2461831 () Bool)

(assert (=> b!3973730 (= e!2461831 (and tp!1211620 tp!1211609))))

(declare-fun b!3973731 () Bool)

(declare-fun e!2461814 () Bool)

(declare-fun e!2461815 () Bool)

(declare-fun tp!1211614 () Bool)

(assert (=> b!3973731 (= e!2461814 (and e!2461815 tp!1211614))))

(declare-fun b!3973732 () Bool)

(declare-fun e!2461808 () Bool)

(declare-fun e!2461813 () Bool)

(assert (=> b!3973732 (= e!2461808 e!2461813)))

(declare-fun res!1608980 () Bool)

(assert (=> b!3973732 (=> (not res!1608980) (not e!2461813))))

(declare-fun lt!1392500 () Int)

(declare-fun lt!1392523 () Int)

(assert (=> b!3973732 (= res!1608980 (>= lt!1392500 lt!1392523))))

(declare-datatypes ((C!23360 0))(
  ( (C!23361 (val!13774 Int)) )
))
(declare-datatypes ((List!42560 0))(
  ( (Nil!42436) (Cons!42436 (h!47856 C!23360) (t!330999 List!42560)) )
))
(declare-fun lt!1392498 () List!42560)

(declare-fun size!31750 (List!42560) Int)

(assert (=> b!3973732 (= lt!1392523 (size!31750 lt!1392498))))

(declare-fun prefix!494 () List!42560)

(assert (=> b!3973732 (= lt!1392500 (size!31750 prefix!494))))

(declare-datatypes ((IArray!25791 0))(
  ( (IArray!25792 (innerList!12953 List!42560)) )
))
(declare-datatypes ((Conc!12893 0))(
  ( (Node!12893 (left!32128 Conc!12893) (right!32458 Conc!12893) (csize!26016 Int) (cheight!13104 Int)) (Leaf!19941 (xs!16199 IArray!25791) (csize!26017 Int)) (Empty!12893) )
))
(declare-datatypes ((BalanceConc!25380 0))(
  ( (BalanceConc!25381 (c!689026 Conc!12893)) )
))
(declare-datatypes ((List!42561 0))(
  ( (Nil!42437) (Cons!42437 (h!47857 (_ BitVec 16)) (t!331000 List!42561)) )
))
(declare-datatypes ((TokenValue!6912 0))(
  ( (FloatLiteralValue!13824 (text!48829 List!42561)) (TokenValueExt!6911 (__x!26041 Int)) (Broken!34560 (value!211045 List!42561)) (Object!7035) (End!6912) (Def!6912) (Underscore!6912) (Match!6912) (Else!6912) (Error!6912) (Case!6912) (If!6912) (Extends!6912) (Abstract!6912) (Class!6912) (Val!6912) (DelimiterValue!13824 (del!6972 List!42561)) (KeywordValue!6918 (value!211046 List!42561)) (CommentValue!13824 (value!211047 List!42561)) (WhitespaceValue!13824 (value!211048 List!42561)) (IndentationValue!6912 (value!211049 List!42561)) (String!48277) (Int32!6912) (Broken!34561 (value!211050 List!42561)) (Boolean!6913) (Unit!61086) (OperatorValue!6915 (op!6972 List!42561)) (IdentifierValue!13824 (value!211051 List!42561)) (IdentifierValue!13825 (value!211052 List!42561)) (WhitespaceValue!13825 (value!211053 List!42561)) (True!13824) (False!13824) (Broken!34562 (value!211054 List!42561)) (Broken!34563 (value!211055 List!42561)) (True!13825) (RightBrace!6912) (RightBracket!6912) (Colon!6912) (Null!6912) (Comma!6912) (LeftBracket!6912) (False!13825) (LeftBrace!6912) (ImaginaryLiteralValue!6912 (text!48830 List!42561)) (StringLiteralValue!20736 (value!211056 List!42561)) (EOFValue!6912 (value!211057 List!42561)) (IdentValue!6912 (value!211058 List!42561)) (DelimiterValue!13825 (value!211059 List!42561)) (DedentValue!6912 (value!211060 List!42561)) (NewLineValue!6912 (value!211061 List!42561)) (IntegerValue!20736 (value!211062 (_ BitVec 32)) (text!48831 List!42561)) (IntegerValue!20737 (value!211063 Int) (text!48832 List!42561)) (Times!6912) (Or!6912) (Equal!6912) (Minus!6912) (Broken!34564 (value!211064 List!42561)) (And!6912) (Div!6912) (LessEqual!6912) (Mod!6912) (Concat!18499) (Not!6912) (Plus!6912) (SpaceValue!6912 (value!211065 List!42561)) (IntegerValue!20738 (value!211066 Int) (text!48833 List!42561)) (StringLiteralValue!20737 (text!48834 List!42561)) (FloatLiteralValue!13825 (text!48835 List!42561)) (BytesLiteralValue!6912 (value!211067 List!42561)) (CommentValue!13825 (value!211068 List!42561)) (StringLiteralValue!20738 (value!211069 List!42561)) (ErrorTokenValue!6912 (msg!6973 List!42561)) )
))
(declare-datatypes ((Regex!11587 0))(
  ( (ElementMatch!11587 (c!689027 C!23360)) (Concat!18500 (regOne!23686 Regex!11587) (regTwo!23686 Regex!11587)) (EmptyExpr!11587) (Star!11587 (reg!11916 Regex!11587)) (EmptyLang!11587) (Union!11587 (regOne!23687 Regex!11587) (regTwo!23687 Regex!11587)) )
))
(declare-datatypes ((String!48278 0))(
  ( (String!48279 (value!211070 String)) )
))
(declare-datatypes ((TokenValueInjection!13252 0))(
  ( (TokenValueInjection!13253 (toValue!9170 Int) (toChars!9029 Int)) )
))
(declare-datatypes ((Rule!13164 0))(
  ( (Rule!13165 (regex!6682 Regex!11587) (tag!7542 String!48278) (isSeparator!6682 Bool) (transformation!6682 TokenValueInjection!13252)) )
))
(declare-datatypes ((Token!12502 0))(
  ( (Token!12503 (value!211071 TokenValue!6912) (rule!9676 Rule!13164) (size!31751 Int) (originalCharacters!7282 List!42560)) )
))
(declare-fun token!484 () Token!12502)

(declare-fun list!15748 (BalanceConc!25380) List!42560)

(declare-fun charsOf!4498 (Token!12502) BalanceConc!25380)

(assert (=> b!3973732 (= lt!1392498 (list!15748 (charsOf!4498 token!484)))))

(declare-fun b!3973733 () Bool)

(declare-fun res!1608978 () Bool)

(declare-fun e!2461825 () Bool)

(assert (=> b!3973733 (=> (not res!1608978) (not e!2461825))))

(assert (=> b!3973733 (= res!1608978 (= (size!31751 token!484) (size!31750 (originalCharacters!7282 token!484))))))

(declare-fun b!3973734 () Bool)

(declare-fun res!1608968 () Bool)

(assert (=> b!3973734 (=> (not res!1608968) (not e!2461808))))

(declare-fun suffix!1299 () List!42560)

(declare-fun newSuffix!27 () List!42560)

(assert (=> b!3973734 (= res!1608968 (>= (size!31750 suffix!1299) (size!31750 newSuffix!27)))))

(declare-fun b!3973735 () Bool)

(declare-fun e!2461809 () Bool)

(declare-fun e!2461824 () Bool)

(assert (=> b!3973735 (= e!2461809 e!2461824)))

(declare-fun res!1608966 () Bool)

(assert (=> b!3973735 (=> res!1608966 e!2461824)))

(declare-fun lt!1392516 () List!42560)

(declare-fun isPrefix!3769 (List!42560 List!42560) Bool)

(assert (=> b!3973735 (= res!1608966 (not (isPrefix!3769 lt!1392498 lt!1392516)))))

(assert (=> b!3973735 (isPrefix!3769 prefix!494 lt!1392516)))

(declare-datatypes ((Unit!61087 0))(
  ( (Unit!61088) )
))
(declare-fun lt!1392521 () Unit!61087)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2612 (List!42560 List!42560) Unit!61087)

(assert (=> b!3973735 (= lt!1392521 (lemmaConcatTwoListThenFirstIsPrefix!2612 prefix!494 suffix!1299))))

(declare-fun lt!1392502 () List!42560)

(assert (=> b!3973735 (isPrefix!3769 lt!1392498 lt!1392502)))

(declare-fun lt!1392501 () Unit!61087)

(declare-fun suffixResult!105 () List!42560)

(assert (=> b!3973735 (= lt!1392501 (lemmaConcatTwoListThenFirstIsPrefix!2612 lt!1392498 suffixResult!105))))

(declare-fun b!3973736 () Bool)

(declare-fun e!2461827 () Bool)

(declare-fun tp_is_empty!20145 () Bool)

(declare-fun tp!1211618 () Bool)

(assert (=> b!3973736 (= e!2461827 (and tp_is_empty!20145 tp!1211618))))

(declare-fun b!3973737 () Bool)

(declare-fun res!1608963 () Bool)

(assert (=> b!3973737 (=> (not res!1608963) (not e!2461808))))

(declare-datatypes ((LexerInterface!6271 0))(
  ( (LexerInterfaceExt!6268 (__x!26042 Int)) (Lexer!6269) )
))
(declare-fun thiss!21717 () LexerInterface!6271)

(declare-datatypes ((List!42562 0))(
  ( (Nil!42438) (Cons!42438 (h!47858 Rule!13164) (t!331001 List!42562)) )
))
(declare-fun rules!2999 () List!42562)

(declare-fun rulesInvariant!5614 (LexerInterface!6271 List!42562) Bool)

(assert (=> b!3973737 (= res!1608963 (rulesInvariant!5614 thiss!21717 rules!2999))))

(declare-fun b!3973738 () Bool)

(declare-fun e!2461832 () Bool)

(declare-fun tp!1211616 () Bool)

(assert (=> b!3973738 (= e!2461832 (and tp_is_empty!20145 tp!1211616))))

(declare-fun b!3973739 () Bool)

(declare-fun e!2461807 () Bool)

(declare-fun e!2461817 () Bool)

(assert (=> b!3973739 (= e!2461807 e!2461817)))

(declare-fun res!1608972 () Bool)

(assert (=> b!3973739 (=> res!1608972 e!2461817)))

(declare-fun matchR!5564 (Regex!11587 List!42560) Bool)

(assert (=> b!3973739 (= res!1608972 (not (matchR!5564 (regex!6682 (rule!9676 token!484)) lt!1392498)))))

(declare-fun lt!1392505 () List!42560)

(assert (=> b!3973739 (isPrefix!3769 lt!1392498 lt!1392505)))

(declare-fun lt!1392514 () Unit!61087)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!602 (List!42560 List!42560 List!42560) Unit!61087)

(assert (=> b!3973739 (= lt!1392514 (lemmaPrefixStaysPrefixWhenAddingToSuffix!602 lt!1392498 prefix!494 newSuffix!27))))

(declare-fun lt!1392511 () Unit!61087)

(assert (=> b!3973739 (= lt!1392511 (lemmaPrefixStaysPrefixWhenAddingToSuffix!602 lt!1392498 prefix!494 suffix!1299))))

(declare-fun b!3973740 () Bool)

(declare-fun e!2461823 () Bool)

(assert (=> b!3973740 (= e!2461823 true)))

(declare-fun lt!1392520 () Int)

(assert (=> b!3973740 (= lt!1392520 (size!31750 lt!1392516))))

(declare-fun b!3973741 () Bool)

(declare-fun res!1608973 () Bool)

(assert (=> b!3973741 (=> (not res!1608973) (not e!2461825))))

(declare-fun lt!1392513 () TokenValue!6912)

(assert (=> b!3973741 (= res!1608973 (= (value!211071 token!484) lt!1392513))))

(declare-fun b!3973742 () Bool)

(assert (=> b!3973742 (= e!2461825 (and (= (size!31751 token!484) lt!1392523) (= (originalCharacters!7282 token!484) lt!1392498)))))

(declare-fun b!3973743 () Bool)

(assert (=> b!3973743 (= e!2461817 e!2461823)))

(declare-fun res!1608970 () Bool)

(assert (=> b!3973743 (=> res!1608970 e!2461823)))

(declare-fun ++!11084 (List!42560 List!42560) List!42560)

(declare-fun getSuffix!2200 (List!42560 List!42560) List!42560)

(assert (=> b!3973743 (= res!1608970 (not (= (++!11084 lt!1392498 (getSuffix!2200 lt!1392516 lt!1392498)) lt!1392516)))))

(assert (=> b!3973743 e!2461825))

(declare-fun res!1608967 () Bool)

(assert (=> b!3973743 (=> (not res!1608967) (not e!2461825))))

(assert (=> b!3973743 (= res!1608967 (isPrefix!3769 lt!1392516 lt!1392516))))

(declare-fun lt!1392518 () Unit!61087)

(declare-fun lemmaIsPrefixRefl!2361 (List!42560 List!42560) Unit!61087)

(assert (=> b!3973743 (= lt!1392518 (lemmaIsPrefixRefl!2361 lt!1392516 lt!1392516))))

(declare-fun b!3973744 () Bool)

(declare-fun e!2461812 () Bool)

(declare-fun e!2461821 () Bool)

(assert (=> b!3973744 (= e!2461812 e!2461821)))

(declare-fun res!1608976 () Bool)

(assert (=> b!3973744 (=> res!1608976 e!2461821)))

(declare-fun lt!1392522 () List!42560)

(declare-fun lt!1392510 () List!42560)

(assert (=> b!3973744 (= res!1608976 (or (not (= lt!1392516 lt!1392510)) (not (= lt!1392516 lt!1392522))))))

(assert (=> b!3973744 (= lt!1392510 lt!1392522)))

(declare-fun lt!1392503 () List!42560)

(assert (=> b!3973744 (= lt!1392522 (++!11084 lt!1392498 lt!1392503))))

(declare-fun lt!1392507 () List!42560)

(assert (=> b!3973744 (= lt!1392510 (++!11084 lt!1392507 suffix!1299))))

(declare-fun lt!1392504 () List!42560)

(assert (=> b!3973744 (= lt!1392503 (++!11084 lt!1392504 suffix!1299))))

(declare-fun lt!1392508 () Unit!61087)

(declare-fun lemmaConcatAssociativity!2404 (List!42560 List!42560 List!42560) Unit!61087)

(assert (=> b!3973744 (= lt!1392508 (lemmaConcatAssociativity!2404 lt!1392498 lt!1392504 suffix!1299))))

(declare-fun res!1608969 () Bool)

(assert (=> start!373984 (=> (not res!1608969) (not e!2461808))))

(get-info :version)

(assert (=> start!373984 (= res!1608969 ((_ is Lexer!6269) thiss!21717))))

(assert (=> start!373984 e!2461808))

(assert (=> start!373984 e!2461832))

(declare-fun e!2461829 () Bool)

(declare-fun inv!56702 (Token!12502) Bool)

(assert (=> start!373984 (and (inv!56702 token!484) e!2461829)))

(assert (=> start!373984 e!2461827))

(declare-fun e!2461811 () Bool)

(assert (=> start!373984 e!2461811))

(declare-fun e!2461818 () Bool)

(assert (=> start!373984 e!2461818))

(assert (=> start!373984 true))

(assert (=> start!373984 e!2461814))

(declare-fun e!2461826 () Bool)

(assert (=> start!373984 e!2461826))

(declare-fun b!3973745 () Bool)

(declare-fun e!2461816 () Bool)

(declare-fun e!2461822 () Bool)

(assert (=> b!3973745 (= e!2461816 e!2461822)))

(declare-fun res!1608964 () Bool)

(assert (=> b!3973745 (=> (not res!1608964) (not e!2461822))))

(declare-datatypes ((tuple2!41688 0))(
  ( (tuple2!41689 (_1!23978 Token!12502) (_2!23978 List!42560)) )
))
(declare-datatypes ((Option!9096 0))(
  ( (None!9095) (Some!9095 (v!39443 tuple2!41688)) )
))
(declare-fun lt!1392506 () Option!9096)

(declare-fun maxPrefix!3569 (LexerInterface!6271 List!42562 List!42560) Option!9096)

(assert (=> b!3973745 (= res!1608964 (= (maxPrefix!3569 thiss!21717 rules!2999 lt!1392516) lt!1392506))))

(assert (=> b!3973745 (= lt!1392506 (Some!9095 (tuple2!41689 token!484 suffixResult!105)))))

(assert (=> b!3973745 (= lt!1392516 (++!11084 prefix!494 suffix!1299))))

(declare-fun b!3973746 () Bool)

(declare-fun tp!1211608 () Bool)

(declare-fun e!2461828 () Bool)

(declare-fun inv!21 (TokenValue!6912) Bool)

(assert (=> b!3973746 (= e!2461829 (and (inv!21 (value!211071 token!484)) e!2461828 tp!1211608))))

(declare-fun b!3973747 () Bool)

(declare-fun tp!1211610 () Bool)

(assert (=> b!3973747 (= e!2461826 (and tp_is_empty!20145 tp!1211610))))

(declare-fun b!3973748 () Bool)

(assert (=> b!3973748 (= e!2461822 (not e!2461809))))

(declare-fun res!1608977 () Bool)

(assert (=> b!3973748 (=> res!1608977 e!2461809)))

(assert (=> b!3973748 (= res!1608977 (not (= lt!1392502 lt!1392516)))))

(assert (=> b!3973748 (= lt!1392502 (++!11084 lt!1392498 suffixResult!105))))

(declare-fun lt!1392499 () Unit!61087)

(declare-fun lemmaInv!897 (TokenValueInjection!13252) Unit!61087)

(assert (=> b!3973748 (= lt!1392499 (lemmaInv!897 (transformation!6682 (rule!9676 token!484))))))

(declare-fun ruleValid!2614 (LexerInterface!6271 Rule!13164) Bool)

(assert (=> b!3973748 (ruleValid!2614 thiss!21717 (rule!9676 token!484))))

(declare-fun lt!1392515 () Unit!61087)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1688 (LexerInterface!6271 Rule!13164 List!42562) Unit!61087)

(assert (=> b!3973748 (= lt!1392515 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1688 thiss!21717 (rule!9676 token!484) rules!2999))))

(declare-fun b!3973749 () Bool)

(declare-fun tp!1211613 () Bool)

(assert (=> b!3973749 (= e!2461811 (and tp_is_empty!20145 tp!1211613))))

(declare-fun tp!1211611 () Bool)

(declare-fun e!2461810 () Bool)

(declare-fun b!3973750 () Bool)

(declare-fun inv!56699 (String!48278) Bool)

(declare-fun inv!56703 (TokenValueInjection!13252) Bool)

(assert (=> b!3973750 (= e!2461828 (and tp!1211611 (inv!56699 (tag!7542 (rule!9676 token!484))) (inv!56703 (transformation!6682 (rule!9676 token!484))) e!2461810))))

(declare-fun b!3973751 () Bool)

(assert (=> b!3973751 (= e!2461824 e!2461812)))

(declare-fun res!1608974 () Bool)

(assert (=> b!3973751 (=> res!1608974 e!2461812)))

(assert (=> b!3973751 (= res!1608974 (not (= lt!1392507 prefix!494)))))

(assert (=> b!3973751 (= lt!1392507 (++!11084 lt!1392498 lt!1392504))))

(assert (=> b!3973751 (= lt!1392504 (getSuffix!2200 prefix!494 lt!1392498))))

(assert (=> b!3973751 (isPrefix!3769 lt!1392498 prefix!494)))

(declare-fun lt!1392512 () Unit!61087)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!347 (List!42560 List!42560 List!42560) Unit!61087)

(assert (=> b!3973751 (= lt!1392512 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!347 prefix!494 lt!1392498 lt!1392516))))

(declare-fun b!3973752 () Bool)

(declare-fun tp!1211617 () Bool)

(assert (=> b!3973752 (= e!2461818 (and tp_is_empty!20145 tp!1211617))))

(declare-fun b!3973753 () Bool)

(declare-fun res!1608979 () Bool)

(assert (=> b!3973753 (=> (not res!1608979) (not e!2461808))))

(declare-fun isEmpty!25384 (List!42562) Bool)

(assert (=> b!3973753 (= res!1608979 (not (isEmpty!25384 rules!2999)))))

(declare-fun b!3973754 () Bool)

(assert (=> b!3973754 (= e!2461813 e!2461816)))

(declare-fun res!1608975 () Bool)

(assert (=> b!3973754 (=> (not res!1608975) (not e!2461816))))

(declare-fun lt!1392509 () List!42560)

(assert (=> b!3973754 (= res!1608975 (= lt!1392509 lt!1392505))))

(assert (=> b!3973754 (= lt!1392505 (++!11084 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42560)

(assert (=> b!3973754 (= lt!1392509 (++!11084 lt!1392498 newSuffixResult!27))))

(declare-fun b!3973755 () Bool)

(declare-fun tp!1211615 () Bool)

(assert (=> b!3973755 (= e!2461815 (and tp!1211615 (inv!56699 (tag!7542 (h!47858 rules!2999))) (inv!56703 (transformation!6682 (h!47858 rules!2999))) e!2461831))))

(assert (=> b!3973756 (= e!2461810 (and tp!1211612 tp!1211619))))

(declare-fun b!3973757 () Bool)

(assert (=> b!3973757 (= e!2461821 e!2461807)))

(declare-fun res!1608971 () Bool)

(assert (=> b!3973757 (=> res!1608971 e!2461807)))

(declare-fun lt!1392497 () Option!9096)

(assert (=> b!3973757 (= res!1608971 (not (= lt!1392497 lt!1392506)))))

(assert (=> b!3973757 (= lt!1392497 (Some!9095 (tuple2!41689 (Token!12503 lt!1392513 (rule!9676 token!484) lt!1392523 lt!1392498) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2603 (LexerInterface!6271 Rule!13164 List!42560) Option!9096)

(assert (=> b!3973757 (= lt!1392497 (maxPrefixOneRule!2603 thiss!21717 (rule!9676 token!484) lt!1392516))))

(declare-fun apply!9893 (TokenValueInjection!13252 BalanceConc!25380) TokenValue!6912)

(declare-fun seqFromList!4921 (List!42560) BalanceConc!25380)

(assert (=> b!3973757 (= lt!1392513 (apply!9893 (transformation!6682 (rule!9676 token!484)) (seqFromList!4921 lt!1392498)))))

(declare-fun lt!1392519 () Unit!61087)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1425 (LexerInterface!6271 List!42562 List!42560 List!42560 List!42560 Rule!13164) Unit!61087)

(assert (=> b!3973757 (= lt!1392519 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1425 thiss!21717 rules!2999 lt!1392498 lt!1392516 suffixResult!105 (rule!9676 token!484)))))

(assert (=> b!3973757 (= lt!1392503 suffixResult!105)))

(declare-fun lt!1392496 () Unit!61087)

(declare-fun lemmaSamePrefixThenSameSuffix!1956 (List!42560 List!42560 List!42560 List!42560 List!42560) Unit!61087)

(assert (=> b!3973757 (= lt!1392496 (lemmaSamePrefixThenSameSuffix!1956 lt!1392498 lt!1392503 lt!1392498 suffixResult!105 lt!1392516))))

(assert (=> b!3973757 (isPrefix!3769 lt!1392498 lt!1392522)))

(declare-fun lt!1392517 () Unit!61087)

(assert (=> b!3973757 (= lt!1392517 (lemmaConcatTwoListThenFirstIsPrefix!2612 lt!1392498 lt!1392503))))

(declare-fun b!3973758 () Bool)

(declare-fun res!1608965 () Bool)

(assert (=> b!3973758 (=> (not res!1608965) (not e!2461808))))

(assert (=> b!3973758 (= res!1608965 (isPrefix!3769 newSuffix!27 suffix!1299))))

(assert (= (and start!373984 res!1608969) b!3973753))

(assert (= (and b!3973753 res!1608979) b!3973737))

(assert (= (and b!3973737 res!1608963) b!3973734))

(assert (= (and b!3973734 res!1608968) b!3973758))

(assert (= (and b!3973758 res!1608965) b!3973732))

(assert (= (and b!3973732 res!1608980) b!3973754))

(assert (= (and b!3973754 res!1608975) b!3973745))

(assert (= (and b!3973745 res!1608964) b!3973748))

(assert (= (and b!3973748 (not res!1608977)) b!3973735))

(assert (= (and b!3973735 (not res!1608966)) b!3973751))

(assert (= (and b!3973751 (not res!1608974)) b!3973744))

(assert (= (and b!3973744 (not res!1608976)) b!3973757))

(assert (= (and b!3973757 (not res!1608971)) b!3973739))

(assert (= (and b!3973739 (not res!1608972)) b!3973743))

(assert (= (and b!3973743 res!1608967) b!3973741))

(assert (= (and b!3973741 res!1608973) b!3973733))

(assert (= (and b!3973733 res!1608978) b!3973742))

(assert (= (and b!3973743 (not res!1608970)) b!3973740))

(assert (= (and start!373984 ((_ is Cons!42436) prefix!494)) b!3973738))

(assert (= b!3973750 b!3973756))

(assert (= b!3973746 b!3973750))

(assert (= start!373984 b!3973746))

(assert (= (and start!373984 ((_ is Cons!42436) suffixResult!105)) b!3973736))

(assert (= (and start!373984 ((_ is Cons!42436) suffix!1299)) b!3973749))

(assert (= (and start!373984 ((_ is Cons!42436) newSuffix!27)) b!3973752))

(assert (= b!3973755 b!3973730))

(assert (= b!3973731 b!3973755))

(assert (= (and start!373984 ((_ is Cons!42438) rules!2999)) b!3973731))

(assert (= (and start!373984 ((_ is Cons!42436) newSuffixResult!27)) b!3973747))

(declare-fun m!4544375 () Bool)

(assert (=> b!3973734 m!4544375))

(declare-fun m!4544377 () Bool)

(assert (=> b!3973734 m!4544377))

(declare-fun m!4544379 () Bool)

(assert (=> b!3973753 m!4544379))

(declare-fun m!4544381 () Bool)

(assert (=> b!3973743 m!4544381))

(assert (=> b!3973743 m!4544381))

(declare-fun m!4544383 () Bool)

(assert (=> b!3973743 m!4544383))

(declare-fun m!4544385 () Bool)

(assert (=> b!3973743 m!4544385))

(declare-fun m!4544387 () Bool)

(assert (=> b!3973743 m!4544387))

(declare-fun m!4544389 () Bool)

(assert (=> b!3973748 m!4544389))

(declare-fun m!4544391 () Bool)

(assert (=> b!3973748 m!4544391))

(declare-fun m!4544393 () Bool)

(assert (=> b!3973748 m!4544393))

(declare-fun m!4544395 () Bool)

(assert (=> b!3973748 m!4544395))

(declare-fun m!4544397 () Bool)

(assert (=> start!373984 m!4544397))

(declare-fun m!4544399 () Bool)

(assert (=> b!3973733 m!4544399))

(declare-fun m!4544401 () Bool)

(assert (=> b!3973754 m!4544401))

(declare-fun m!4544403 () Bool)

(assert (=> b!3973754 m!4544403))

(declare-fun m!4544405 () Bool)

(assert (=> b!3973739 m!4544405))

(declare-fun m!4544407 () Bool)

(assert (=> b!3973739 m!4544407))

(declare-fun m!4544409 () Bool)

(assert (=> b!3973739 m!4544409))

(declare-fun m!4544411 () Bool)

(assert (=> b!3973739 m!4544411))

(declare-fun m!4544413 () Bool)

(assert (=> b!3973750 m!4544413))

(declare-fun m!4544415 () Bool)

(assert (=> b!3973750 m!4544415))

(declare-fun m!4544417 () Bool)

(assert (=> b!3973735 m!4544417))

(declare-fun m!4544419 () Bool)

(assert (=> b!3973735 m!4544419))

(declare-fun m!4544421 () Bool)

(assert (=> b!3973735 m!4544421))

(declare-fun m!4544423 () Bool)

(assert (=> b!3973735 m!4544423))

(declare-fun m!4544425 () Bool)

(assert (=> b!3973735 m!4544425))

(declare-fun m!4544427 () Bool)

(assert (=> b!3973757 m!4544427))

(declare-fun m!4544429 () Bool)

(assert (=> b!3973757 m!4544429))

(declare-fun m!4544431 () Bool)

(assert (=> b!3973757 m!4544431))

(declare-fun m!4544433 () Bool)

(assert (=> b!3973757 m!4544433))

(declare-fun m!4544435 () Bool)

(assert (=> b!3973757 m!4544435))

(declare-fun m!4544437 () Bool)

(assert (=> b!3973757 m!4544437))

(assert (=> b!3973757 m!4544429))

(declare-fun m!4544439 () Bool)

(assert (=> b!3973757 m!4544439))

(declare-fun m!4544441 () Bool)

(assert (=> b!3973732 m!4544441))

(declare-fun m!4544443 () Bool)

(assert (=> b!3973732 m!4544443))

(declare-fun m!4544445 () Bool)

(assert (=> b!3973732 m!4544445))

(assert (=> b!3973732 m!4544445))

(declare-fun m!4544447 () Bool)

(assert (=> b!3973732 m!4544447))

(declare-fun m!4544449 () Bool)

(assert (=> b!3973755 m!4544449))

(declare-fun m!4544451 () Bool)

(assert (=> b!3973755 m!4544451))

(declare-fun m!4544453 () Bool)

(assert (=> b!3973746 m!4544453))

(declare-fun m!4544455 () Bool)

(assert (=> b!3973758 m!4544455))

(declare-fun m!4544457 () Bool)

(assert (=> b!3973744 m!4544457))

(declare-fun m!4544459 () Bool)

(assert (=> b!3973744 m!4544459))

(declare-fun m!4544461 () Bool)

(assert (=> b!3973744 m!4544461))

(declare-fun m!4544463 () Bool)

(assert (=> b!3973744 m!4544463))

(declare-fun m!4544465 () Bool)

(assert (=> b!3973751 m!4544465))

(declare-fun m!4544467 () Bool)

(assert (=> b!3973751 m!4544467))

(declare-fun m!4544469 () Bool)

(assert (=> b!3973751 m!4544469))

(declare-fun m!4544471 () Bool)

(assert (=> b!3973751 m!4544471))

(declare-fun m!4544473 () Bool)

(assert (=> b!3973745 m!4544473))

(declare-fun m!4544475 () Bool)

(assert (=> b!3973745 m!4544475))

(declare-fun m!4544477 () Bool)

(assert (=> b!3973737 m!4544477))

(declare-fun m!4544479 () Bool)

(assert (=> b!3973740 m!4544479))

(check-sat tp_is_empty!20145 (not b!3973746) (not b!3973739) b_and!305471 (not b!3973743) (not b!3973744) b_and!305475 (not b_next!110863) (not b!3973733) (not b!3973755) (not b!3973747) (not b!3973754) (not b!3973752) (not b!3973732) (not b!3973758) (not b_next!110861) (not b!3973731) (not b!3973751) (not b!3973735) (not b!3973734) (not b!3973738) (not b!3973749) (not b!3973745) (not b!3973757) (not b!3973753) (not b_next!110857) (not b!3973736) (not b!3973737) b_and!305473 (not b!3973740) (not b!3973750) (not start!373984) (not b!3973748) (not b_next!110859) b_and!305477)
(check-sat (not b_next!110861) b_and!305471 b_and!305475 (not b_next!110857) (not b_next!110863) b_and!305473 (not b_next!110859) b_and!305477)
