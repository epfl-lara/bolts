; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374604 () Bool)

(assert start!374604)

(declare-fun b!3980180 () Bool)

(declare-fun b_free!110465 () Bool)

(declare-fun b_next!111169 () Bool)

(assert (=> b!3980180 (= b_free!110465 (not b_next!111169))))

(declare-fun tp!1213372 () Bool)

(declare-fun b_and!305935 () Bool)

(assert (=> b!3980180 (= tp!1213372 b_and!305935)))

(declare-fun b_free!110467 () Bool)

(declare-fun b_next!111171 () Bool)

(assert (=> b!3980180 (= b_free!110467 (not b_next!111171))))

(declare-fun tp!1213370 () Bool)

(declare-fun b_and!305937 () Bool)

(assert (=> b!3980180 (= tp!1213370 b_and!305937)))

(declare-fun b!3980176 () Bool)

(declare-fun b_free!110469 () Bool)

(declare-fun b_next!111173 () Bool)

(assert (=> b!3980176 (= b_free!110469 (not b_next!111173))))

(declare-fun tp!1213369 () Bool)

(declare-fun b_and!305939 () Bool)

(assert (=> b!3980176 (= tp!1213369 b_and!305939)))

(declare-fun b_free!110471 () Bool)

(declare-fun b_next!111175 () Bool)

(assert (=> b!3980176 (= b_free!110471 (not b_next!111175))))

(declare-fun tp!1213375 () Bool)

(declare-fun b_and!305941 () Bool)

(assert (=> b!3980176 (= tp!1213375 b_and!305941)))

(declare-fun b!3980145 () Bool)

(declare-fun e!2466495 () Bool)

(declare-fun e!2466473 () Bool)

(assert (=> b!3980145 (= e!2466495 e!2466473)))

(declare-fun res!1612871 () Bool)

(assert (=> b!3980145 (=> res!1612871 e!2466473)))

(declare-datatypes ((C!23428 0))(
  ( (C!23429 (val!13808 Int)) )
))
(declare-datatypes ((List!42672 0))(
  ( (Nil!42548) (Cons!42548 (h!47968 C!23428) (t!331279 List!42672)) )
))
(declare-datatypes ((IArray!25859 0))(
  ( (IArray!25860 (innerList!12987 List!42672)) )
))
(declare-datatypes ((Conc!12927 0))(
  ( (Node!12927 (left!32183 Conc!12927) (right!32513 Conc!12927) (csize!26084 Int) (cheight!13138 Int)) (Leaf!19992 (xs!16233 IArray!25859) (csize!26085 Int)) (Empty!12927) )
))
(declare-datatypes ((BalanceConc!25448 0))(
  ( (BalanceConc!25449 (c!689606 Conc!12927)) )
))
(declare-datatypes ((List!42673 0))(
  ( (Nil!42549) (Cons!42549 (h!47969 (_ BitVec 16)) (t!331280 List!42673)) )
))
(declare-datatypes ((TokenValue!6946 0))(
  ( (FloatLiteralValue!13892 (text!49067 List!42673)) (TokenValueExt!6945 (__x!26109 Int)) (Broken!34730 (value!212014 List!42673)) (Object!7069) (End!6946) (Def!6946) (Underscore!6946) (Match!6946) (Else!6946) (Error!6946) (Case!6946) (If!6946) (Extends!6946) (Abstract!6946) (Class!6946) (Val!6946) (DelimiterValue!13892 (del!7006 List!42673)) (KeywordValue!6952 (value!212015 List!42673)) (CommentValue!13892 (value!212016 List!42673)) (WhitespaceValue!13892 (value!212017 List!42673)) (IndentationValue!6946 (value!212018 List!42673)) (String!48447) (Int32!6946) (Broken!34731 (value!212019 List!42673)) (Boolean!6947) (Unit!61209) (OperatorValue!6949 (op!7006 List!42673)) (IdentifierValue!13892 (value!212020 List!42673)) (IdentifierValue!13893 (value!212021 List!42673)) (WhitespaceValue!13893 (value!212022 List!42673)) (True!13892) (False!13892) (Broken!34732 (value!212023 List!42673)) (Broken!34733 (value!212024 List!42673)) (True!13893) (RightBrace!6946) (RightBracket!6946) (Colon!6946) (Null!6946) (Comma!6946) (LeftBracket!6946) (False!13893) (LeftBrace!6946) (ImaginaryLiteralValue!6946 (text!49068 List!42673)) (StringLiteralValue!20838 (value!212025 List!42673)) (EOFValue!6946 (value!212026 List!42673)) (IdentValue!6946 (value!212027 List!42673)) (DelimiterValue!13893 (value!212028 List!42673)) (DedentValue!6946 (value!212029 List!42673)) (NewLineValue!6946 (value!212030 List!42673)) (IntegerValue!20838 (value!212031 (_ BitVec 32)) (text!49069 List!42673)) (IntegerValue!20839 (value!212032 Int) (text!49070 List!42673)) (Times!6946) (Or!6946) (Equal!6946) (Minus!6946) (Broken!34734 (value!212033 List!42673)) (And!6946) (Div!6946) (LessEqual!6946) (Mod!6946) (Concat!18567) (Not!6946) (Plus!6946) (SpaceValue!6946 (value!212034 List!42673)) (IntegerValue!20840 (value!212035 Int) (text!49071 List!42673)) (StringLiteralValue!20839 (text!49072 List!42673)) (FloatLiteralValue!13893 (text!49073 List!42673)) (BytesLiteralValue!6946 (value!212036 List!42673)) (CommentValue!13893 (value!212037 List!42673)) (StringLiteralValue!20840 (value!212038 List!42673)) (ErrorTokenValue!6946 (msg!7007 List!42673)) )
))
(declare-datatypes ((Regex!11621 0))(
  ( (ElementMatch!11621 (c!689607 C!23428)) (Concat!18568 (regOne!23754 Regex!11621) (regTwo!23754 Regex!11621)) (EmptyExpr!11621) (Star!11621 (reg!11950 Regex!11621)) (EmptyLang!11621) (Union!11621 (regOne!23755 Regex!11621) (regTwo!23755 Regex!11621)) )
))
(declare-datatypes ((String!48448 0))(
  ( (String!48449 (value!212039 String)) )
))
(declare-datatypes ((TokenValueInjection!13320 0))(
  ( (TokenValueInjection!13321 (toValue!9204 Int) (toChars!9063 Int)) )
))
(declare-datatypes ((Rule!13232 0))(
  ( (Rule!13233 (regex!6716 Regex!11621) (tag!7576 String!48448) (isSeparator!6716 Bool) (transformation!6716 TokenValueInjection!13320)) )
))
(declare-datatypes ((Token!12570 0))(
  ( (Token!12571 (value!212040 TokenValue!6946) (rule!9720 Rule!13232) (size!31828 Int) (originalCharacters!7316 List!42672)) )
))
(declare-datatypes ((tuple2!41776 0))(
  ( (tuple2!41777 (_1!24022 Token!12570) (_2!24022 List!42672)) )
))
(declare-datatypes ((Option!9130 0))(
  ( (None!9129) (Some!9129 (v!39477 tuple2!41776)) )
))
(declare-fun lt!1397716 () Option!9130)

(declare-fun lt!1397677 () Option!9130)

(assert (=> b!3980145 (= res!1612871 (not (= lt!1397716 lt!1397677)))))

(declare-fun lt!1397696 () Token!12570)

(declare-fun suffixResult!105 () List!42672)

(assert (=> b!3980145 (= lt!1397716 (Some!9129 (tuple2!41777 lt!1397696 suffixResult!105)))))

(declare-fun token!484 () Token!12570)

(declare-fun lt!1397684 () List!42672)

(declare-datatypes ((LexerInterface!6305 0))(
  ( (LexerInterfaceExt!6302 (__x!26110 Int)) (Lexer!6303) )
))
(declare-fun thiss!21717 () LexerInterface!6305)

(declare-fun maxPrefixOneRule!2637 (LexerInterface!6305 Rule!13232 List!42672) Option!9130)

(assert (=> b!3980145 (= lt!1397716 (maxPrefixOneRule!2637 thiss!21717 (rule!9720 token!484) lt!1397684))))

(declare-fun lt!1397693 () List!42672)

(declare-fun lt!1397719 () TokenValue!6946)

(declare-fun lt!1397686 () Int)

(assert (=> b!3980145 (= lt!1397696 (Token!12571 lt!1397719 (rule!9720 token!484) lt!1397686 lt!1397693))))

(declare-fun apply!9927 (TokenValueInjection!13320 BalanceConc!25448) TokenValue!6946)

(declare-fun seqFromList!4955 (List!42672) BalanceConc!25448)

(assert (=> b!3980145 (= lt!1397719 (apply!9927 (transformation!6716 (rule!9720 token!484)) (seqFromList!4955 lt!1397693)))))

(declare-datatypes ((List!42674 0))(
  ( (Nil!42550) (Cons!42550 (h!47970 Rule!13232) (t!331281 List!42674)) )
))
(declare-fun rules!2999 () List!42674)

(declare-datatypes ((Unit!61210 0))(
  ( (Unit!61211) )
))
(declare-fun lt!1397703 () Unit!61210)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1459 (LexerInterface!6305 List!42674 List!42672 List!42672 List!42672 Rule!13232) Unit!61210)

(assert (=> b!3980145 (= lt!1397703 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1459 thiss!21717 rules!2999 lt!1397693 lt!1397684 suffixResult!105 (rule!9720 token!484)))))

(declare-fun lt!1397728 () List!42672)

(assert (=> b!3980145 (= lt!1397728 suffixResult!105)))

(declare-fun lt!1397681 () Unit!61210)

(declare-fun lemmaSamePrefixThenSameSuffix!1990 (List!42672 List!42672 List!42672 List!42672 List!42672) Unit!61210)

(assert (=> b!3980145 (= lt!1397681 (lemmaSamePrefixThenSameSuffix!1990 lt!1397693 lt!1397728 lt!1397693 suffixResult!105 lt!1397684))))

(declare-fun lt!1397697 () List!42672)

(declare-fun isPrefix!3803 (List!42672 List!42672) Bool)

(assert (=> b!3980145 (isPrefix!3803 lt!1397693 lt!1397697)))

(declare-fun lt!1397698 () Unit!61210)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2646 (List!42672 List!42672) Unit!61210)

(assert (=> b!3980145 (= lt!1397698 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 lt!1397728))))

(declare-fun res!1612853 () Bool)

(declare-fun e!2466493 () Bool)

(assert (=> start!374604 (=> (not res!1612853) (not e!2466493))))

(get-info :version)

(assert (=> start!374604 (= res!1612853 ((_ is Lexer!6303) thiss!21717))))

(assert (=> start!374604 e!2466493))

(declare-fun e!2466472 () Bool)

(assert (=> start!374604 e!2466472))

(declare-fun e!2466471 () Bool)

(declare-fun inv!56841 (Token!12570) Bool)

(assert (=> start!374604 (and (inv!56841 token!484) e!2466471)))

(declare-fun e!2466494 () Bool)

(assert (=> start!374604 e!2466494))

(declare-fun e!2466484 () Bool)

(assert (=> start!374604 e!2466484))

(declare-fun e!2466488 () Bool)

(assert (=> start!374604 e!2466488))

(assert (=> start!374604 true))

(declare-fun e!2466470 () Bool)

(assert (=> start!374604 e!2466470))

(declare-fun e!2466479 () Bool)

(assert (=> start!374604 e!2466479))

(declare-fun b!3980146 () Bool)

(declare-fun e!2466483 () Bool)

(assert (=> b!3980146 (= e!2466473 e!2466483)))

(declare-fun res!1612857 () Bool)

(assert (=> b!3980146 (=> res!1612857 e!2466483)))

(declare-fun matchR!5598 (Regex!11621 List!42672) Bool)

(assert (=> b!3980146 (= res!1612857 (not (matchR!5598 (regex!6716 (rule!9720 token!484)) lt!1397693)))))

(declare-fun lt!1397718 () List!42672)

(assert (=> b!3980146 (isPrefix!3803 lt!1397693 lt!1397718)))

(declare-fun prefix!494 () List!42672)

(declare-fun lt!1397683 () Unit!61210)

(declare-fun newSuffix!27 () List!42672)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!636 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> b!3980146 (= lt!1397683 (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397693 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42672)

(declare-fun lt!1397678 () Unit!61210)

(assert (=> b!3980146 (= lt!1397678 (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397693 prefix!494 suffix!1299))))

(declare-fun b!3980147 () Bool)

(declare-fun e!2466481 () Bool)

(declare-fun e!2466491 () Bool)

(assert (=> b!3980147 (= e!2466481 e!2466491)))

(declare-fun res!1612859 () Bool)

(assert (=> b!3980147 (=> res!1612859 e!2466491)))

(assert (=> b!3980147 (= res!1612859 (not (isPrefix!3803 lt!1397693 lt!1397684)))))

(assert (=> b!3980147 (isPrefix!3803 prefix!494 lt!1397684)))

(declare-fun lt!1397699 () Unit!61210)

(assert (=> b!3980147 (= lt!1397699 (lemmaConcatTwoListThenFirstIsPrefix!2646 prefix!494 suffix!1299))))

(declare-fun lt!1397725 () List!42672)

(assert (=> b!3980147 (isPrefix!3803 lt!1397693 lt!1397725)))

(declare-fun lt!1397721 () Unit!61210)

(assert (=> b!3980147 (= lt!1397721 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 suffixResult!105))))

(declare-fun b!3980148 () Bool)

(declare-fun res!1612865 () Bool)

(assert (=> b!3980148 (=> (not res!1612865) (not e!2466493))))

(declare-fun rulesInvariant!5648 (LexerInterface!6305 List!42674) Bool)

(assert (=> b!3980148 (= res!1612865 (rulesInvariant!5648 thiss!21717 rules!2999))))

(declare-fun b!3980149 () Bool)

(declare-fun res!1612856 () Bool)

(assert (=> b!3980149 (=> (not res!1612856) (not e!2466493))))

(assert (=> b!3980149 (= res!1612856 (isPrefix!3803 newSuffix!27 suffix!1299))))

(declare-fun b!3980150 () Bool)

(declare-fun e!2466492 () Bool)

(assert (=> b!3980150 (= e!2466493 e!2466492)))

(declare-fun res!1612876 () Bool)

(assert (=> b!3980150 (=> (not res!1612876) (not e!2466492))))

(declare-fun lt!1397712 () Int)

(assert (=> b!3980150 (= res!1612876 (>= lt!1397712 lt!1397686))))

(declare-fun size!31829 (List!42672) Int)

(assert (=> b!3980150 (= lt!1397686 (size!31829 lt!1397693))))

(assert (=> b!3980150 (= lt!1397712 (size!31829 prefix!494))))

(declare-fun list!15792 (BalanceConc!25448) List!42672)

(declare-fun charsOf!4532 (Token!12570) BalanceConc!25448)

(assert (=> b!3980150 (= lt!1397693 (list!15792 (charsOf!4532 token!484)))))

(declare-fun b!3980151 () Bool)

(declare-fun e!2466467 () Bool)

(assert (=> b!3980151 (= e!2466467 (not e!2466481))))

(declare-fun res!1612869 () Bool)

(assert (=> b!3980151 (=> res!1612869 e!2466481)))

(assert (=> b!3980151 (= res!1612869 (not (= lt!1397725 lt!1397684)))))

(declare-fun ++!11118 (List!42672 List!42672) List!42672)

(assert (=> b!3980151 (= lt!1397725 (++!11118 lt!1397693 suffixResult!105))))

(declare-fun lt!1397709 () Unit!61210)

(declare-fun lemmaInv!931 (TokenValueInjection!13320) Unit!61210)

(assert (=> b!3980151 (= lt!1397709 (lemmaInv!931 (transformation!6716 (rule!9720 token!484))))))

(declare-fun ruleValid!2648 (LexerInterface!6305 Rule!13232) Bool)

(assert (=> b!3980151 (ruleValid!2648 thiss!21717 (rule!9720 token!484))))

(declare-fun lt!1397707 () Unit!61210)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1722 (LexerInterface!6305 Rule!13232 List!42674) Unit!61210)

(assert (=> b!3980151 (= lt!1397707 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1722 thiss!21717 (rule!9720 token!484) rules!2999))))

(declare-fun b!3980152 () Bool)

(declare-fun e!2466468 () Bool)

(assert (=> b!3980152 (= e!2466468 e!2466495)))

(declare-fun res!1612862 () Bool)

(assert (=> b!3980152 (=> res!1612862 e!2466495)))

(declare-fun lt!1397727 () List!42672)

(assert (=> b!3980152 (= res!1612862 (or (not (= lt!1397684 lt!1397727)) (not (= lt!1397684 lt!1397697))))))

(assert (=> b!3980152 (= lt!1397727 lt!1397697)))

(assert (=> b!3980152 (= lt!1397697 (++!11118 lt!1397693 lt!1397728))))

(declare-fun lt!1397723 () List!42672)

(assert (=> b!3980152 (= lt!1397727 (++!11118 lt!1397723 suffix!1299))))

(declare-fun lt!1397676 () List!42672)

(assert (=> b!3980152 (= lt!1397728 (++!11118 lt!1397676 suffix!1299))))

(declare-fun lt!1397711 () Unit!61210)

(declare-fun lemmaConcatAssociativity!2438 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> b!3980152 (= lt!1397711 (lemmaConcatAssociativity!2438 lt!1397693 lt!1397676 suffix!1299))))

(declare-fun b!3980153 () Bool)

(declare-fun res!1612854 () Bool)

(declare-fun e!2466490 () Bool)

(assert (=> b!3980153 (=> (not res!1612854) (not e!2466490))))

(assert (=> b!3980153 (= res!1612854 (= (value!212040 token!484) lt!1397719))))

(declare-fun b!3980154 () Bool)

(declare-fun e!2466478 () Bool)

(assert (=> b!3980154 (= e!2466492 e!2466478)))

(declare-fun res!1612860 () Bool)

(assert (=> b!3980154 (=> (not res!1612860) (not e!2466478))))

(declare-fun lt!1397717 () List!42672)

(assert (=> b!3980154 (= res!1612860 (= lt!1397717 lt!1397718))))

(assert (=> b!3980154 (= lt!1397718 (++!11118 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42672)

(assert (=> b!3980154 (= lt!1397717 (++!11118 lt!1397693 newSuffixResult!27))))

(declare-fun b!3980155 () Bool)

(declare-fun res!1612864 () Bool)

(assert (=> b!3980155 (=> (not res!1612864) (not e!2466493))))

(declare-fun isEmpty!25440 (List!42674) Bool)

(assert (=> b!3980155 (= res!1612864 (not (isEmpty!25440 rules!2999)))))

(declare-fun b!3980156 () Bool)

(declare-fun tp_is_empty!20213 () Bool)

(declare-fun tp!1213380 () Bool)

(assert (=> b!3980156 (= e!2466488 (and tp_is_empty!20213 tp!1213380))))

(declare-fun b!3980157 () Bool)

(assert (=> b!3980157 (= e!2466478 e!2466467)))

(declare-fun res!1612866 () Bool)

(assert (=> b!3980157 (=> (not res!1612866) (not e!2466467))))

(declare-fun maxPrefix!3603 (LexerInterface!6305 List!42674 List!42672) Option!9130)

(assert (=> b!3980157 (= res!1612866 (= (maxPrefix!3603 thiss!21717 rules!2999 lt!1397684) lt!1397677))))

(declare-fun lt!1397690 () tuple2!41776)

(assert (=> b!3980157 (= lt!1397677 (Some!9129 lt!1397690))))

(assert (=> b!3980157 (= lt!1397690 (tuple2!41777 token!484 suffixResult!105))))

(assert (=> b!3980157 (= lt!1397684 (++!11118 prefix!494 suffix!1299))))

(declare-fun b!3980158 () Bool)

(assert (=> b!3980158 (= e!2466491 e!2466468)))

(declare-fun res!1612875 () Bool)

(assert (=> b!3980158 (=> res!1612875 e!2466468)))

(assert (=> b!3980158 (= res!1612875 (not (= lt!1397723 prefix!494)))))

(assert (=> b!3980158 (= lt!1397723 (++!11118 lt!1397693 lt!1397676))))

(declare-fun getSuffix!2234 (List!42672 List!42672) List!42672)

(assert (=> b!3980158 (= lt!1397676 (getSuffix!2234 prefix!494 lt!1397693))))

(assert (=> b!3980158 (isPrefix!3803 lt!1397693 prefix!494)))

(declare-fun lt!1397720 () Unit!61210)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!381 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> b!3980158 (= lt!1397720 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!381 prefix!494 lt!1397693 lt!1397684))))

(declare-fun b!3980159 () Bool)

(declare-fun res!1612870 () Bool)

(assert (=> b!3980159 (=> (not res!1612870) (not e!2466493))))

(assert (=> b!3980159 (= res!1612870 (>= (size!31829 suffix!1299) (size!31829 newSuffix!27)))))

(declare-fun e!2466465 () Bool)

(declare-fun tp!1213379 () Bool)

(declare-fun b!3980160 () Bool)

(declare-fun e!2466477 () Bool)

(declare-fun inv!56838 (String!48448) Bool)

(declare-fun inv!56842 (TokenValueInjection!13320) Bool)

(assert (=> b!3980160 (= e!2466477 (and tp!1213379 (inv!56838 (tag!7576 (rule!9720 token!484))) (inv!56842 (transformation!6716 (rule!9720 token!484))) e!2466465))))

(declare-fun b!3980161 () Bool)

(declare-fun e!2466480 () Bool)

(declare-fun e!2466489 () Bool)

(assert (=> b!3980161 (= e!2466480 e!2466489)))

(declare-fun res!1612867 () Bool)

(assert (=> b!3980161 (=> res!1612867 e!2466489)))

(declare-fun lt!1397722 () List!42672)

(assert (=> b!3980161 (= res!1612867 (not (isPrefix!3803 lt!1397722 lt!1397684)))))

(declare-fun lt!1397724 () List!42672)

(assert (=> b!3980161 (isPrefix!3803 lt!1397722 lt!1397724)))

(declare-fun lt!1397687 () List!42672)

(declare-fun lt!1397715 () Unit!61210)

(assert (=> b!3980161 (= lt!1397715 (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397722 lt!1397718 lt!1397687))))

(declare-fun b!3980162 () Bool)

(declare-fun e!2466487 () Bool)

(declare-fun tp!1213378 () Bool)

(assert (=> b!3980162 (= e!2466470 (and e!2466487 tp!1213378))))

(declare-fun b!3980163 () Bool)

(declare-fun res!1612872 () Bool)

(assert (=> b!3980163 (=> res!1612872 e!2466489)))

(declare-fun lt!1397702 () List!42672)

(assert (=> b!3980163 (= res!1612872 (not (= lt!1397702 lt!1397718)))))

(declare-fun b!3980164 () Bool)

(declare-fun e!2466485 () Bool)

(declare-fun e!2466474 () Bool)

(assert (=> b!3980164 (= e!2466485 e!2466474)))

(declare-fun res!1612874 () Bool)

(assert (=> b!3980164 (=> res!1612874 e!2466474)))

(declare-fun lt!1397692 () List!42672)

(assert (=> b!3980164 (= res!1612874 (not (= lt!1397692 suffix!1299)))))

(assert (=> b!3980164 (= lt!1397692 (++!11118 newSuffix!27 lt!1397687))))

(assert (=> b!3980164 (= lt!1397687 (getSuffix!2234 suffix!1299 newSuffix!27))))

(declare-fun b!3980165 () Bool)

(declare-fun tp!1213371 () Bool)

(assert (=> b!3980165 (= e!2466472 (and tp_is_empty!20213 tp!1213371))))

(declare-fun b!3980166 () Bool)

(declare-fun e!2466466 () Bool)

(assert (=> b!3980166 (= e!2466466 e!2466485)))

(declare-fun res!1612858 () Bool)

(assert (=> b!3980166 (=> res!1612858 e!2466485)))

(declare-fun lt!1397714 () Option!9130)

(declare-fun lt!1397695 () Option!9130)

(assert (=> b!3980166 (= res!1612858 (not (= lt!1397714 (Some!9129 (v!39477 lt!1397695)))))))

(assert (=> b!3980166 (isPrefix!3803 lt!1397722 (++!11118 lt!1397722 newSuffixResult!27))))

(declare-fun lt!1397713 () Unit!61210)

(assert (=> b!3980166 (= lt!1397713 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 newSuffixResult!27))))

(assert (=> b!3980166 (isPrefix!3803 lt!1397722 lt!1397702)))

(assert (=> b!3980166 (= lt!1397702 (++!11118 lt!1397722 (_2!24022 (v!39477 lt!1397695))))))

(declare-fun lt!1397704 () Unit!61210)

(assert (=> b!3980166 (= lt!1397704 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 (_2!24022 (v!39477 lt!1397695))))))

(declare-fun lt!1397679 () TokenValue!6946)

(declare-fun lt!1397700 () Int)

(assert (=> b!3980166 (= lt!1397714 (Some!9129 (tuple2!41777 (Token!12571 lt!1397679 (rule!9720 (_1!24022 (v!39477 lt!1397695))) lt!1397700 lt!1397722) (_2!24022 (v!39477 lt!1397695)))))))

(assert (=> b!3980166 (= lt!1397714 (maxPrefixOneRule!2637 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) lt!1397718))))

(assert (=> b!3980166 (= lt!1397700 (size!31829 lt!1397722))))

(assert (=> b!3980166 (= lt!1397679 (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (seqFromList!4955 lt!1397722)))))

(declare-fun lt!1397680 () Unit!61210)

(assert (=> b!3980166 (= lt!1397680 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1459 thiss!21717 rules!2999 lt!1397722 lt!1397718 (_2!24022 (v!39477 lt!1397695)) (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))

(assert (=> b!3980166 (= lt!1397722 (list!15792 (charsOf!4532 (_1!24022 (v!39477 lt!1397695)))))))

(declare-fun lt!1397701 () Unit!61210)

(assert (=> b!3980166 (= lt!1397701 (lemmaInv!931 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))))

(assert (=> b!3980166 (ruleValid!2648 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))

(declare-fun lt!1397689 () Unit!61210)

(assert (=> b!3980166 (= lt!1397689 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1722 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) rules!2999))))

(declare-fun lt!1397688 () Unit!61210)

(declare-fun lemmaCharactersSize!1311 (Token!12570) Unit!61210)

(assert (=> b!3980166 (= lt!1397688 (lemmaCharactersSize!1311 token!484))))

(declare-fun lt!1397685 () Unit!61210)

(assert (=> b!3980166 (= lt!1397685 (lemmaCharactersSize!1311 (_1!24022 (v!39477 lt!1397695))))))

(declare-fun b!3980167 () Bool)

(declare-fun e!2466496 () Bool)

(assert (=> b!3980167 (= e!2466496 e!2466466)))

(declare-fun res!1612873 () Bool)

(assert (=> b!3980167 (=> res!1612873 e!2466466)))

(assert (=> b!3980167 (= res!1612873 (not ((_ is Some!9129) lt!1397695)))))

(assert (=> b!3980167 (= lt!1397695 (maxPrefix!3603 thiss!21717 rules!2999 lt!1397718))))

(declare-fun lt!1397729 () List!42672)

(assert (=> b!3980167 (and (= suffixResult!105 lt!1397729) (= lt!1397690 (tuple2!41777 lt!1397696 lt!1397729)))))

(declare-fun lt!1397726 () Unit!61210)

(assert (=> b!3980167 (= lt!1397726 (lemmaSamePrefixThenSameSuffix!1990 lt!1397693 suffixResult!105 lt!1397693 lt!1397729 lt!1397684))))

(declare-fun lt!1397705 () List!42672)

(assert (=> b!3980167 (isPrefix!3803 lt!1397693 lt!1397705)))

(declare-fun lt!1397706 () Unit!61210)

(assert (=> b!3980167 (= lt!1397706 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 lt!1397729))))

(declare-fun b!3980168 () Bool)

(declare-fun res!1612855 () Bool)

(assert (=> b!3980168 (=> (not res!1612855) (not e!2466490))))

(assert (=> b!3980168 (= res!1612855 (= (size!31828 token!484) (size!31829 (originalCharacters!7316 token!484))))))

(declare-fun b!3980169 () Bool)

(declare-fun tp!1213368 () Bool)

(assert (=> b!3980169 (= e!2466484 (and tp_is_empty!20213 tp!1213368))))

(declare-fun b!3980170 () Bool)

(declare-fun tp!1213376 () Bool)

(assert (=> b!3980170 (= e!2466479 (and tp_is_empty!20213 tp!1213376))))

(declare-fun b!3980171 () Bool)

(assert (=> b!3980171 (= e!2466490 (and (= (size!31828 token!484) lt!1397686) (= (originalCharacters!7316 token!484) lt!1397693)))))

(declare-fun b!3980172 () Bool)

(declare-fun e!2466486 () Bool)

(assert (=> b!3980172 (= e!2466486 (>= (size!31829 lt!1397718) lt!1397700))))

(declare-fun lt!1397682 () List!42672)

(assert (=> b!3980172 (isPrefix!3803 lt!1397722 lt!1397682)))

(declare-fun lt!1397694 () Unit!61210)

(declare-fun lt!1397710 () List!42672)

(assert (=> b!3980172 (= lt!1397694 (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 lt!1397710))))

(declare-fun tp!1213377 () Bool)

(declare-fun b!3980173 () Bool)

(declare-fun e!2466482 () Bool)

(assert (=> b!3980173 (= e!2466487 (and tp!1213377 (inv!56838 (tag!7576 (h!47970 rules!2999))) (inv!56842 (transformation!6716 (h!47970 rules!2999))) e!2466482))))

(declare-fun b!3980174 () Bool)

(assert (=> b!3980174 (= e!2466489 e!2466486)))

(declare-fun res!1612852 () Bool)

(assert (=> b!3980174 (=> res!1612852 e!2466486)))

(assert (=> b!3980174 (= res!1612852 (not (= lt!1397682 lt!1397718)))))

(assert (=> b!3980174 (= lt!1397682 (++!11118 lt!1397722 lt!1397710))))

(assert (=> b!3980174 (= lt!1397710 (getSuffix!2234 lt!1397718 lt!1397722))))

(declare-fun b!3980175 () Bool)

(assert (=> b!3980175 (= e!2466474 e!2466480)))

(declare-fun res!1612861 () Bool)

(assert (=> b!3980175 (=> res!1612861 e!2466480)))

(assert (=> b!3980175 (= res!1612861 (not (= lt!1397724 lt!1397684)))))

(assert (=> b!3980175 (= lt!1397724 (++!11118 prefix!494 lt!1397692))))

(assert (=> b!3980175 (= lt!1397724 (++!11118 lt!1397718 lt!1397687))))

(declare-fun lt!1397691 () Unit!61210)

(assert (=> b!3980175 (= lt!1397691 (lemmaConcatAssociativity!2438 prefix!494 newSuffix!27 lt!1397687))))

(assert (=> b!3980176 (= e!2466465 (and tp!1213369 tp!1213375))))

(declare-fun b!3980177 () Bool)

(assert (=> b!3980177 (= e!2466483 e!2466496)))

(declare-fun res!1612868 () Bool)

(assert (=> b!3980177 (=> res!1612868 e!2466496)))

(assert (=> b!3980177 (= res!1612868 (not (= lt!1397705 lt!1397684)))))

(assert (=> b!3980177 (= lt!1397705 (++!11118 lt!1397693 lt!1397729))))

(assert (=> b!3980177 (= lt!1397729 (getSuffix!2234 lt!1397684 lt!1397693))))

(assert (=> b!3980177 e!2466490))

(declare-fun res!1612863 () Bool)

(assert (=> b!3980177 (=> (not res!1612863) (not e!2466490))))

(assert (=> b!3980177 (= res!1612863 (isPrefix!3803 lt!1397684 lt!1397684))))

(declare-fun lt!1397708 () Unit!61210)

(declare-fun lemmaIsPrefixRefl!2395 (List!42672 List!42672) Unit!61210)

(assert (=> b!3980177 (= lt!1397708 (lemmaIsPrefixRefl!2395 lt!1397684 lt!1397684))))

(declare-fun b!3980178 () Bool)

(declare-fun tp!1213373 () Bool)

(assert (=> b!3980178 (= e!2466494 (and tp_is_empty!20213 tp!1213373))))

(declare-fun tp!1213374 () Bool)

(declare-fun b!3980179 () Bool)

(declare-fun inv!21 (TokenValue!6946) Bool)

(assert (=> b!3980179 (= e!2466471 (and (inv!21 (value!212040 token!484)) e!2466477 tp!1213374))))

(assert (=> b!3980180 (= e!2466482 (and tp!1213372 tp!1213370))))

(assert (= (and start!374604 res!1612853) b!3980155))

(assert (= (and b!3980155 res!1612864) b!3980148))

(assert (= (and b!3980148 res!1612865) b!3980159))

(assert (= (and b!3980159 res!1612870) b!3980149))

(assert (= (and b!3980149 res!1612856) b!3980150))

(assert (= (and b!3980150 res!1612876) b!3980154))

(assert (= (and b!3980154 res!1612860) b!3980157))

(assert (= (and b!3980157 res!1612866) b!3980151))

(assert (= (and b!3980151 (not res!1612869)) b!3980147))

(assert (= (and b!3980147 (not res!1612859)) b!3980158))

(assert (= (and b!3980158 (not res!1612875)) b!3980152))

(assert (= (and b!3980152 (not res!1612862)) b!3980145))

(assert (= (and b!3980145 (not res!1612871)) b!3980146))

(assert (= (and b!3980146 (not res!1612857)) b!3980177))

(assert (= (and b!3980177 res!1612863) b!3980153))

(assert (= (and b!3980153 res!1612854) b!3980168))

(assert (= (and b!3980168 res!1612855) b!3980171))

(assert (= (and b!3980177 (not res!1612868)) b!3980167))

(assert (= (and b!3980167 (not res!1612873)) b!3980166))

(assert (= (and b!3980166 (not res!1612858)) b!3980164))

(assert (= (and b!3980164 (not res!1612874)) b!3980175))

(assert (= (and b!3980175 (not res!1612861)) b!3980161))

(assert (= (and b!3980161 (not res!1612867)) b!3980163))

(assert (= (and b!3980163 (not res!1612872)) b!3980174))

(assert (= (and b!3980174 (not res!1612852)) b!3980172))

(assert (= (and start!374604 ((_ is Cons!42548) prefix!494)) b!3980165))

(assert (= b!3980160 b!3980176))

(assert (= b!3980179 b!3980160))

(assert (= start!374604 b!3980179))

(assert (= (and start!374604 ((_ is Cons!42548) suffixResult!105)) b!3980178))

(assert (= (and start!374604 ((_ is Cons!42548) suffix!1299)) b!3980169))

(assert (= (and start!374604 ((_ is Cons!42548) newSuffix!27)) b!3980156))

(assert (= b!3980173 b!3980180))

(assert (= b!3980162 b!3980173))

(assert (= (and start!374604 ((_ is Cons!42550) rules!2999)) b!3980162))

(assert (= (and start!374604 ((_ is Cons!42548) newSuffixResult!27)) b!3980170))

(declare-fun m!4553119 () Bool)

(assert (=> b!3980164 m!4553119))

(declare-fun m!4553121 () Bool)

(assert (=> b!3980164 m!4553121))

(declare-fun m!4553123 () Bool)

(assert (=> b!3980152 m!4553123))

(declare-fun m!4553125 () Bool)

(assert (=> b!3980152 m!4553125))

(declare-fun m!4553127 () Bool)

(assert (=> b!3980152 m!4553127))

(declare-fun m!4553129 () Bool)

(assert (=> b!3980152 m!4553129))

(declare-fun m!4553131 () Bool)

(assert (=> b!3980166 m!4553131))

(declare-fun m!4553133 () Bool)

(assert (=> b!3980166 m!4553133))

(declare-fun m!4553135 () Bool)

(assert (=> b!3980166 m!4553135))

(declare-fun m!4553137 () Bool)

(assert (=> b!3980166 m!4553137))

(declare-fun m!4553139 () Bool)

(assert (=> b!3980166 m!4553139))

(declare-fun m!4553141 () Bool)

(assert (=> b!3980166 m!4553141))

(declare-fun m!4553143 () Bool)

(assert (=> b!3980166 m!4553143))

(declare-fun m!4553145 () Bool)

(assert (=> b!3980166 m!4553145))

(assert (=> b!3980166 m!4553137))

(declare-fun m!4553147 () Bool)

(assert (=> b!3980166 m!4553147))

(declare-fun m!4553149 () Bool)

(assert (=> b!3980166 m!4553149))

(assert (=> b!3980166 m!4553143))

(declare-fun m!4553151 () Bool)

(assert (=> b!3980166 m!4553151))

(declare-fun m!4553153 () Bool)

(assert (=> b!3980166 m!4553153))

(declare-fun m!4553155 () Bool)

(assert (=> b!3980166 m!4553155))

(declare-fun m!4553157 () Bool)

(assert (=> b!3980166 m!4553157))

(declare-fun m!4553159 () Bool)

(assert (=> b!3980166 m!4553159))

(assert (=> b!3980166 m!4553131))

(declare-fun m!4553161 () Bool)

(assert (=> b!3980166 m!4553161))

(declare-fun m!4553163 () Bool)

(assert (=> b!3980166 m!4553163))

(declare-fun m!4553165 () Bool)

(assert (=> b!3980166 m!4553165))

(declare-fun m!4553167 () Bool)

(assert (=> b!3980145 m!4553167))

(declare-fun m!4553169 () Bool)

(assert (=> b!3980145 m!4553169))

(assert (=> b!3980145 m!4553167))

(declare-fun m!4553171 () Bool)

(assert (=> b!3980145 m!4553171))

(declare-fun m!4553173 () Bool)

(assert (=> b!3980145 m!4553173))

(declare-fun m!4553175 () Bool)

(assert (=> b!3980145 m!4553175))

(declare-fun m!4553177 () Bool)

(assert (=> b!3980145 m!4553177))

(declare-fun m!4553179 () Bool)

(assert (=> b!3980145 m!4553179))

(declare-fun m!4553181 () Bool)

(assert (=> b!3980157 m!4553181))

(declare-fun m!4553183 () Bool)

(assert (=> b!3980157 m!4553183))

(declare-fun m!4553185 () Bool)

(assert (=> b!3980154 m!4553185))

(declare-fun m!4553187 () Bool)

(assert (=> b!3980154 m!4553187))

(declare-fun m!4553189 () Bool)

(assert (=> b!3980159 m!4553189))

(declare-fun m!4553191 () Bool)

(assert (=> b!3980159 m!4553191))

(declare-fun m!4553193 () Bool)

(assert (=> b!3980158 m!4553193))

(declare-fun m!4553195 () Bool)

(assert (=> b!3980158 m!4553195))

(declare-fun m!4553197 () Bool)

(assert (=> b!3980158 m!4553197))

(declare-fun m!4553199 () Bool)

(assert (=> b!3980158 m!4553199))

(declare-fun m!4553201 () Bool)

(assert (=> b!3980146 m!4553201))

(declare-fun m!4553203 () Bool)

(assert (=> b!3980146 m!4553203))

(declare-fun m!4553205 () Bool)

(assert (=> b!3980146 m!4553205))

(declare-fun m!4553207 () Bool)

(assert (=> b!3980146 m!4553207))

(declare-fun m!4553209 () Bool)

(assert (=> b!3980147 m!4553209))

(declare-fun m!4553211 () Bool)

(assert (=> b!3980147 m!4553211))

(declare-fun m!4553213 () Bool)

(assert (=> b!3980147 m!4553213))

(declare-fun m!4553215 () Bool)

(assert (=> b!3980147 m!4553215))

(declare-fun m!4553217 () Bool)

(assert (=> b!3980147 m!4553217))

(declare-fun m!4553219 () Bool)

(assert (=> b!3980149 m!4553219))

(declare-fun m!4553221 () Bool)

(assert (=> b!3980173 m!4553221))

(declare-fun m!4553223 () Bool)

(assert (=> b!3980173 m!4553223))

(declare-fun m!4553225 () Bool)

(assert (=> b!3980168 m!4553225))

(declare-fun m!4553227 () Bool)

(assert (=> b!3980151 m!4553227))

(declare-fun m!4553229 () Bool)

(assert (=> b!3980151 m!4553229))

(declare-fun m!4553231 () Bool)

(assert (=> b!3980151 m!4553231))

(declare-fun m!4553233 () Bool)

(assert (=> b!3980151 m!4553233))

(declare-fun m!4553235 () Bool)

(assert (=> b!3980160 m!4553235))

(declare-fun m!4553237 () Bool)

(assert (=> b!3980160 m!4553237))

(declare-fun m!4553239 () Bool)

(assert (=> b!3980174 m!4553239))

(declare-fun m!4553241 () Bool)

(assert (=> b!3980174 m!4553241))

(declare-fun m!4553243 () Bool)

(assert (=> b!3980177 m!4553243))

(declare-fun m!4553245 () Bool)

(assert (=> b!3980177 m!4553245))

(declare-fun m!4553247 () Bool)

(assert (=> b!3980177 m!4553247))

(declare-fun m!4553249 () Bool)

(assert (=> b!3980177 m!4553249))

(declare-fun m!4553251 () Bool)

(assert (=> b!3980155 m!4553251))

(declare-fun m!4553253 () Bool)

(assert (=> start!374604 m!4553253))

(declare-fun m!4553255 () Bool)

(assert (=> b!3980161 m!4553255))

(declare-fun m!4553257 () Bool)

(assert (=> b!3980161 m!4553257))

(declare-fun m!4553259 () Bool)

(assert (=> b!3980161 m!4553259))

(declare-fun m!4553261 () Bool)

(assert (=> b!3980179 m!4553261))

(declare-fun m!4553263 () Bool)

(assert (=> b!3980150 m!4553263))

(declare-fun m!4553265 () Bool)

(assert (=> b!3980150 m!4553265))

(declare-fun m!4553267 () Bool)

(assert (=> b!3980150 m!4553267))

(assert (=> b!3980150 m!4553267))

(declare-fun m!4553269 () Bool)

(assert (=> b!3980150 m!4553269))

(declare-fun m!4553271 () Bool)

(assert (=> b!3980167 m!4553271))

(declare-fun m!4553273 () Bool)

(assert (=> b!3980167 m!4553273))

(declare-fun m!4553275 () Bool)

(assert (=> b!3980167 m!4553275))

(declare-fun m!4553277 () Bool)

(assert (=> b!3980167 m!4553277))

(declare-fun m!4553279 () Bool)

(assert (=> b!3980148 m!4553279))

(declare-fun m!4553281 () Bool)

(assert (=> b!3980172 m!4553281))

(declare-fun m!4553283 () Bool)

(assert (=> b!3980172 m!4553283))

(declare-fun m!4553285 () Bool)

(assert (=> b!3980172 m!4553285))

(declare-fun m!4553287 () Bool)

(assert (=> b!3980175 m!4553287))

(declare-fun m!4553289 () Bool)

(assert (=> b!3980175 m!4553289))

(declare-fun m!4553291 () Bool)

(assert (=> b!3980175 m!4553291))

(check-sat (not b!3980178) b_and!305939 (not b!3980155) (not b!3980161) (not start!374604) tp_is_empty!20213 (not b_next!111173) (not b_next!111175) (not b!3980175) (not b!3980151) (not b!3980170) (not b!3980177) (not b!3980165) (not b_next!111169) (not b!3980172) (not b!3980150) (not b!3980148) (not b!3980162) (not b!3980145) (not b!3980156) (not b!3980168) (not b!3980154) (not b!3980179) (not b!3980166) (not b!3980157) (not b!3980147) b_and!305941 (not b!3980167) (not b!3980173) (not b!3980164) (not b!3980152) b_and!305937 (not b!3980160) (not b!3980174) (not b!3980149) (not b_next!111171) (not b!3980158) (not b!3980146) (not b!3980169) b_and!305935 (not b!3980159))
(check-sat b_and!305939 (not b_next!111169) b_and!305941 (not b_next!111173) (not b_next!111175) b_and!305937 (not b_next!111171) b_and!305935)
(get-model)

(declare-fun d!1178189 () Bool)

(assert (=> d!1178189 (= (inv!56838 (tag!7576 (h!47970 rules!2999))) (= (mod (str.len (value!212039 (tag!7576 (h!47970 rules!2999)))) 2) 0))))

(assert (=> b!3980173 d!1178189))

(declare-fun d!1178191 () Bool)

(declare-fun res!1612881 () Bool)

(declare-fun e!2466499 () Bool)

(assert (=> d!1178191 (=> (not res!1612881) (not e!2466499))))

(declare-fun semiInverseModEq!2882 (Int Int) Bool)

(assert (=> d!1178191 (= res!1612881 (semiInverseModEq!2882 (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toValue!9204 (transformation!6716 (h!47970 rules!2999)))))))

(assert (=> d!1178191 (= (inv!56842 (transformation!6716 (h!47970 rules!2999))) e!2466499)))

(declare-fun b!3980183 () Bool)

(declare-fun equivClasses!2781 (Int Int) Bool)

(assert (=> b!3980183 (= e!2466499 (equivClasses!2781 (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toValue!9204 (transformation!6716 (h!47970 rules!2999)))))))

(assert (= (and d!1178191 res!1612881) b!3980183))

(declare-fun m!4553293 () Bool)

(assert (=> d!1178191 m!4553293))

(declare-fun m!4553295 () Bool)

(assert (=> b!3980183 m!4553295))

(assert (=> b!3980173 d!1178191))

(declare-fun b!3980193 () Bool)

(declare-fun e!2466504 () List!42672)

(assert (=> b!3980193 (= e!2466504 (Cons!42548 (h!47968 lt!1397693) (++!11118 (t!331279 lt!1397693) lt!1397728)))))

(declare-fun b!3980194 () Bool)

(declare-fun res!1612886 () Bool)

(declare-fun e!2466505 () Bool)

(assert (=> b!3980194 (=> (not res!1612886) (not e!2466505))))

(declare-fun lt!1397732 () List!42672)

(assert (=> b!3980194 (= res!1612886 (= (size!31829 lt!1397732) (+ (size!31829 lt!1397693) (size!31829 lt!1397728))))))

(declare-fun d!1178193 () Bool)

(assert (=> d!1178193 e!2466505))

(declare-fun res!1612887 () Bool)

(assert (=> d!1178193 (=> (not res!1612887) (not e!2466505))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6450 (List!42672) (InoxSet C!23428))

(assert (=> d!1178193 (= res!1612887 (= (content!6450 lt!1397732) ((_ map or) (content!6450 lt!1397693) (content!6450 lt!1397728))))))

(assert (=> d!1178193 (= lt!1397732 e!2466504)))

(declare-fun c!689610 () Bool)

(assert (=> d!1178193 (= c!689610 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178193 (= (++!11118 lt!1397693 lt!1397728) lt!1397732)))

(declare-fun b!3980192 () Bool)

(assert (=> b!3980192 (= e!2466504 lt!1397728)))

(declare-fun b!3980195 () Bool)

(assert (=> b!3980195 (= e!2466505 (or (not (= lt!1397728 Nil!42548)) (= lt!1397732 lt!1397693)))))

(assert (= (and d!1178193 c!689610) b!3980192))

(assert (= (and d!1178193 (not c!689610)) b!3980193))

(assert (= (and d!1178193 res!1612887) b!3980194))

(assert (= (and b!3980194 res!1612886) b!3980195))

(declare-fun m!4553297 () Bool)

(assert (=> b!3980193 m!4553297))

(declare-fun m!4553299 () Bool)

(assert (=> b!3980194 m!4553299))

(assert (=> b!3980194 m!4553263))

(declare-fun m!4553301 () Bool)

(assert (=> b!3980194 m!4553301))

(declare-fun m!4553303 () Bool)

(assert (=> d!1178193 m!4553303))

(declare-fun m!4553305 () Bool)

(assert (=> d!1178193 m!4553305))

(declare-fun m!4553307 () Bool)

(assert (=> d!1178193 m!4553307))

(assert (=> b!3980152 d!1178193))

(declare-fun b!3980197 () Bool)

(declare-fun e!2466506 () List!42672)

(assert (=> b!3980197 (= e!2466506 (Cons!42548 (h!47968 lt!1397723) (++!11118 (t!331279 lt!1397723) suffix!1299)))))

(declare-fun b!3980198 () Bool)

(declare-fun res!1612888 () Bool)

(declare-fun e!2466507 () Bool)

(assert (=> b!3980198 (=> (not res!1612888) (not e!2466507))))

(declare-fun lt!1397733 () List!42672)

(assert (=> b!3980198 (= res!1612888 (= (size!31829 lt!1397733) (+ (size!31829 lt!1397723) (size!31829 suffix!1299))))))

(declare-fun d!1178195 () Bool)

(assert (=> d!1178195 e!2466507))

(declare-fun res!1612889 () Bool)

(assert (=> d!1178195 (=> (not res!1612889) (not e!2466507))))

(assert (=> d!1178195 (= res!1612889 (= (content!6450 lt!1397733) ((_ map or) (content!6450 lt!1397723) (content!6450 suffix!1299))))))

(assert (=> d!1178195 (= lt!1397733 e!2466506)))

(declare-fun c!689611 () Bool)

(assert (=> d!1178195 (= c!689611 ((_ is Nil!42548) lt!1397723))))

(assert (=> d!1178195 (= (++!11118 lt!1397723 suffix!1299) lt!1397733)))

(declare-fun b!3980196 () Bool)

(assert (=> b!3980196 (= e!2466506 suffix!1299)))

(declare-fun b!3980199 () Bool)

(assert (=> b!3980199 (= e!2466507 (or (not (= suffix!1299 Nil!42548)) (= lt!1397733 lt!1397723)))))

(assert (= (and d!1178195 c!689611) b!3980196))

(assert (= (and d!1178195 (not c!689611)) b!3980197))

(assert (= (and d!1178195 res!1612889) b!3980198))

(assert (= (and b!3980198 res!1612888) b!3980199))

(declare-fun m!4553309 () Bool)

(assert (=> b!3980197 m!4553309))

(declare-fun m!4553311 () Bool)

(assert (=> b!3980198 m!4553311))

(declare-fun m!4553313 () Bool)

(assert (=> b!3980198 m!4553313))

(assert (=> b!3980198 m!4553189))

(declare-fun m!4553315 () Bool)

(assert (=> d!1178195 m!4553315))

(declare-fun m!4553317 () Bool)

(assert (=> d!1178195 m!4553317))

(declare-fun m!4553319 () Bool)

(assert (=> d!1178195 m!4553319))

(assert (=> b!3980152 d!1178195))

(declare-fun b!3980201 () Bool)

(declare-fun e!2466508 () List!42672)

(assert (=> b!3980201 (= e!2466508 (Cons!42548 (h!47968 lt!1397676) (++!11118 (t!331279 lt!1397676) suffix!1299)))))

(declare-fun b!3980202 () Bool)

(declare-fun res!1612890 () Bool)

(declare-fun e!2466509 () Bool)

(assert (=> b!3980202 (=> (not res!1612890) (not e!2466509))))

(declare-fun lt!1397734 () List!42672)

(assert (=> b!3980202 (= res!1612890 (= (size!31829 lt!1397734) (+ (size!31829 lt!1397676) (size!31829 suffix!1299))))))

(declare-fun d!1178197 () Bool)

(assert (=> d!1178197 e!2466509))

(declare-fun res!1612891 () Bool)

(assert (=> d!1178197 (=> (not res!1612891) (not e!2466509))))

(assert (=> d!1178197 (= res!1612891 (= (content!6450 lt!1397734) ((_ map or) (content!6450 lt!1397676) (content!6450 suffix!1299))))))

(assert (=> d!1178197 (= lt!1397734 e!2466508)))

(declare-fun c!689612 () Bool)

(assert (=> d!1178197 (= c!689612 ((_ is Nil!42548) lt!1397676))))

(assert (=> d!1178197 (= (++!11118 lt!1397676 suffix!1299) lt!1397734)))

(declare-fun b!3980200 () Bool)

(assert (=> b!3980200 (= e!2466508 suffix!1299)))

(declare-fun b!3980203 () Bool)

(assert (=> b!3980203 (= e!2466509 (or (not (= suffix!1299 Nil!42548)) (= lt!1397734 lt!1397676)))))

(assert (= (and d!1178197 c!689612) b!3980200))

(assert (= (and d!1178197 (not c!689612)) b!3980201))

(assert (= (and d!1178197 res!1612891) b!3980202))

(assert (= (and b!3980202 res!1612890) b!3980203))

(declare-fun m!4553321 () Bool)

(assert (=> b!3980201 m!4553321))

(declare-fun m!4553323 () Bool)

(assert (=> b!3980202 m!4553323))

(declare-fun m!4553325 () Bool)

(assert (=> b!3980202 m!4553325))

(assert (=> b!3980202 m!4553189))

(declare-fun m!4553327 () Bool)

(assert (=> d!1178197 m!4553327))

(declare-fun m!4553329 () Bool)

(assert (=> d!1178197 m!4553329))

(assert (=> d!1178197 m!4553319))

(assert (=> b!3980152 d!1178197))

(declare-fun d!1178199 () Bool)

(assert (=> d!1178199 (= (++!11118 (++!11118 lt!1397693 lt!1397676) suffix!1299) (++!11118 lt!1397693 (++!11118 lt!1397676 suffix!1299)))))

(declare-fun lt!1397737 () Unit!61210)

(declare-fun choose!23869 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> d!1178199 (= lt!1397737 (choose!23869 lt!1397693 lt!1397676 suffix!1299))))

(assert (=> d!1178199 (= (lemmaConcatAssociativity!2438 lt!1397693 lt!1397676 suffix!1299) lt!1397737)))

(declare-fun bs!587915 () Bool)

(assert (= bs!587915 d!1178199))

(declare-fun m!4553331 () Bool)

(assert (=> bs!587915 m!4553331))

(assert (=> bs!587915 m!4553127))

(declare-fun m!4553333 () Bool)

(assert (=> bs!587915 m!4553333))

(assert (=> bs!587915 m!4553193))

(assert (=> bs!587915 m!4553127))

(assert (=> bs!587915 m!4553193))

(declare-fun m!4553335 () Bool)

(assert (=> bs!587915 m!4553335))

(assert (=> b!3980152 d!1178199))

(declare-fun b!3980205 () Bool)

(declare-fun e!2466510 () List!42672)

(assert (=> b!3980205 (= e!2466510 (Cons!42548 (h!47968 lt!1397693) (++!11118 (t!331279 lt!1397693) suffixResult!105)))))

(declare-fun b!3980206 () Bool)

(declare-fun res!1612892 () Bool)

(declare-fun e!2466511 () Bool)

(assert (=> b!3980206 (=> (not res!1612892) (not e!2466511))))

(declare-fun lt!1397738 () List!42672)

(assert (=> b!3980206 (= res!1612892 (= (size!31829 lt!1397738) (+ (size!31829 lt!1397693) (size!31829 suffixResult!105))))))

(declare-fun d!1178201 () Bool)

(assert (=> d!1178201 e!2466511))

(declare-fun res!1612893 () Bool)

(assert (=> d!1178201 (=> (not res!1612893) (not e!2466511))))

(assert (=> d!1178201 (= res!1612893 (= (content!6450 lt!1397738) ((_ map or) (content!6450 lt!1397693) (content!6450 suffixResult!105))))))

(assert (=> d!1178201 (= lt!1397738 e!2466510)))

(declare-fun c!689613 () Bool)

(assert (=> d!1178201 (= c!689613 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178201 (= (++!11118 lt!1397693 suffixResult!105) lt!1397738)))

(declare-fun b!3980204 () Bool)

(assert (=> b!3980204 (= e!2466510 suffixResult!105)))

(declare-fun b!3980207 () Bool)

(assert (=> b!3980207 (= e!2466511 (or (not (= suffixResult!105 Nil!42548)) (= lt!1397738 lt!1397693)))))

(assert (= (and d!1178201 c!689613) b!3980204))

(assert (= (and d!1178201 (not c!689613)) b!3980205))

(assert (= (and d!1178201 res!1612893) b!3980206))

(assert (= (and b!3980206 res!1612892) b!3980207))

(declare-fun m!4553337 () Bool)

(assert (=> b!3980205 m!4553337))

(declare-fun m!4553339 () Bool)

(assert (=> b!3980206 m!4553339))

(assert (=> b!3980206 m!4553263))

(declare-fun m!4553341 () Bool)

(assert (=> b!3980206 m!4553341))

(declare-fun m!4553343 () Bool)

(assert (=> d!1178201 m!4553343))

(assert (=> d!1178201 m!4553305))

(declare-fun m!4553345 () Bool)

(assert (=> d!1178201 m!4553345))

(assert (=> b!3980151 d!1178201))

(declare-fun d!1178203 () Bool)

(declare-fun e!2466514 () Bool)

(assert (=> d!1178203 e!2466514))

(declare-fun res!1612896 () Bool)

(assert (=> d!1178203 (=> (not res!1612896) (not e!2466514))))

(assert (=> d!1178203 (= res!1612896 (semiInverseModEq!2882 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))))))

(declare-fun Unit!61212 () Unit!61210)

(assert (=> d!1178203 (= (lemmaInv!931 (transformation!6716 (rule!9720 token!484))) Unit!61212)))

(declare-fun b!3980210 () Bool)

(assert (=> b!3980210 (= e!2466514 (equivClasses!2781 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))))))

(assert (= (and d!1178203 res!1612896) b!3980210))

(declare-fun m!4553347 () Bool)

(assert (=> d!1178203 m!4553347))

(declare-fun m!4553349 () Bool)

(assert (=> b!3980210 m!4553349))

(assert (=> b!3980151 d!1178203))

(declare-fun d!1178205 () Bool)

(declare-fun res!1612901 () Bool)

(declare-fun e!2466517 () Bool)

(assert (=> d!1178205 (=> (not res!1612901) (not e!2466517))))

(declare-fun validRegex!5275 (Regex!11621) Bool)

(assert (=> d!1178205 (= res!1612901 (validRegex!5275 (regex!6716 (rule!9720 token!484))))))

(assert (=> d!1178205 (= (ruleValid!2648 thiss!21717 (rule!9720 token!484)) e!2466517)))

(declare-fun b!3980215 () Bool)

(declare-fun res!1612902 () Bool)

(assert (=> b!3980215 (=> (not res!1612902) (not e!2466517))))

(declare-fun nullable!4075 (Regex!11621) Bool)

(assert (=> b!3980215 (= res!1612902 (not (nullable!4075 (regex!6716 (rule!9720 token!484)))))))

(declare-fun b!3980216 () Bool)

(assert (=> b!3980216 (= e!2466517 (not (= (tag!7576 (rule!9720 token!484)) (String!48449 ""))))))

(assert (= (and d!1178205 res!1612901) b!3980215))

(assert (= (and b!3980215 res!1612902) b!3980216))

(declare-fun m!4553351 () Bool)

(assert (=> d!1178205 m!4553351))

(declare-fun m!4553353 () Bool)

(assert (=> b!3980215 m!4553353))

(assert (=> b!3980151 d!1178205))

(declare-fun d!1178207 () Bool)

(assert (=> d!1178207 (ruleValid!2648 thiss!21717 (rule!9720 token!484))))

(declare-fun lt!1397741 () Unit!61210)

(declare-fun choose!23870 (LexerInterface!6305 Rule!13232 List!42674) Unit!61210)

(assert (=> d!1178207 (= lt!1397741 (choose!23870 thiss!21717 (rule!9720 token!484) rules!2999))))

(declare-fun contains!8468 (List!42674 Rule!13232) Bool)

(assert (=> d!1178207 (contains!8468 rules!2999 (rule!9720 token!484))))

(assert (=> d!1178207 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1722 thiss!21717 (rule!9720 token!484) rules!2999) lt!1397741)))

(declare-fun bs!587916 () Bool)

(assert (= bs!587916 d!1178207))

(assert (=> bs!587916 m!4553231))

(declare-fun m!4553355 () Bool)

(assert (=> bs!587916 m!4553355))

(declare-fun m!4553357 () Bool)

(assert (=> bs!587916 m!4553357))

(assert (=> b!3980151 d!1178207))

(declare-fun b!3980218 () Bool)

(declare-fun e!2466518 () List!42672)

(assert (=> b!3980218 (= e!2466518 (Cons!42548 (h!47968 lt!1397722) (++!11118 (t!331279 lt!1397722) lt!1397710)))))

(declare-fun b!3980219 () Bool)

(declare-fun res!1612903 () Bool)

(declare-fun e!2466519 () Bool)

(assert (=> b!3980219 (=> (not res!1612903) (not e!2466519))))

(declare-fun lt!1397742 () List!42672)

(assert (=> b!3980219 (= res!1612903 (= (size!31829 lt!1397742) (+ (size!31829 lt!1397722) (size!31829 lt!1397710))))))

(declare-fun d!1178209 () Bool)

(assert (=> d!1178209 e!2466519))

(declare-fun res!1612904 () Bool)

(assert (=> d!1178209 (=> (not res!1612904) (not e!2466519))))

(assert (=> d!1178209 (= res!1612904 (= (content!6450 lt!1397742) ((_ map or) (content!6450 lt!1397722) (content!6450 lt!1397710))))))

(assert (=> d!1178209 (= lt!1397742 e!2466518)))

(declare-fun c!689614 () Bool)

(assert (=> d!1178209 (= c!689614 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178209 (= (++!11118 lt!1397722 lt!1397710) lt!1397742)))

(declare-fun b!3980217 () Bool)

(assert (=> b!3980217 (= e!2466518 lt!1397710)))

(declare-fun b!3980220 () Bool)

(assert (=> b!3980220 (= e!2466519 (or (not (= lt!1397710 Nil!42548)) (= lt!1397742 lt!1397722)))))

(assert (= (and d!1178209 c!689614) b!3980217))

(assert (= (and d!1178209 (not c!689614)) b!3980218))

(assert (= (and d!1178209 res!1612904) b!3980219))

(assert (= (and b!3980219 res!1612903) b!3980220))

(declare-fun m!4553359 () Bool)

(assert (=> b!3980218 m!4553359))

(declare-fun m!4553361 () Bool)

(assert (=> b!3980219 m!4553361))

(assert (=> b!3980219 m!4553149))

(declare-fun m!4553363 () Bool)

(assert (=> b!3980219 m!4553363))

(declare-fun m!4553365 () Bool)

(assert (=> d!1178209 m!4553365))

(declare-fun m!4553367 () Bool)

(assert (=> d!1178209 m!4553367))

(declare-fun m!4553369 () Bool)

(assert (=> d!1178209 m!4553369))

(assert (=> b!3980174 d!1178209))

(declare-fun d!1178211 () Bool)

(declare-fun lt!1397745 () List!42672)

(assert (=> d!1178211 (= (++!11118 lt!1397722 lt!1397745) lt!1397718)))

(declare-fun e!2466522 () List!42672)

(assert (=> d!1178211 (= lt!1397745 e!2466522)))

(declare-fun c!689617 () Bool)

(assert (=> d!1178211 (= c!689617 ((_ is Cons!42548) lt!1397722))))

(assert (=> d!1178211 (>= (size!31829 lt!1397718) (size!31829 lt!1397722))))

(assert (=> d!1178211 (= (getSuffix!2234 lt!1397718 lt!1397722) lt!1397745)))

(declare-fun b!3980225 () Bool)

(declare-fun tail!6208 (List!42672) List!42672)

(assert (=> b!3980225 (= e!2466522 (getSuffix!2234 (tail!6208 lt!1397718) (t!331279 lt!1397722)))))

(declare-fun b!3980226 () Bool)

(assert (=> b!3980226 (= e!2466522 lt!1397718)))

(assert (= (and d!1178211 c!689617) b!3980225))

(assert (= (and d!1178211 (not c!689617)) b!3980226))

(declare-fun m!4553371 () Bool)

(assert (=> d!1178211 m!4553371))

(assert (=> d!1178211 m!4553281))

(assert (=> d!1178211 m!4553149))

(declare-fun m!4553373 () Bool)

(assert (=> b!3980225 m!4553373))

(assert (=> b!3980225 m!4553373))

(declare-fun m!4553375 () Bool)

(assert (=> b!3980225 m!4553375))

(assert (=> b!3980174 d!1178211))

(declare-fun b!3980228 () Bool)

(declare-fun e!2466523 () List!42672)

(assert (=> b!3980228 (= e!2466523 (Cons!42548 (h!47968 prefix!494) (++!11118 (t!331279 prefix!494) lt!1397692)))))

(declare-fun b!3980229 () Bool)

(declare-fun res!1612905 () Bool)

(declare-fun e!2466524 () Bool)

(assert (=> b!3980229 (=> (not res!1612905) (not e!2466524))))

(declare-fun lt!1397746 () List!42672)

(assert (=> b!3980229 (= res!1612905 (= (size!31829 lt!1397746) (+ (size!31829 prefix!494) (size!31829 lt!1397692))))))

(declare-fun d!1178213 () Bool)

(assert (=> d!1178213 e!2466524))

(declare-fun res!1612906 () Bool)

(assert (=> d!1178213 (=> (not res!1612906) (not e!2466524))))

(assert (=> d!1178213 (= res!1612906 (= (content!6450 lt!1397746) ((_ map or) (content!6450 prefix!494) (content!6450 lt!1397692))))))

(assert (=> d!1178213 (= lt!1397746 e!2466523)))

(declare-fun c!689618 () Bool)

(assert (=> d!1178213 (= c!689618 ((_ is Nil!42548) prefix!494))))

(assert (=> d!1178213 (= (++!11118 prefix!494 lt!1397692) lt!1397746)))

(declare-fun b!3980227 () Bool)

(assert (=> b!3980227 (= e!2466523 lt!1397692)))

(declare-fun b!3980230 () Bool)

(assert (=> b!3980230 (= e!2466524 (or (not (= lt!1397692 Nil!42548)) (= lt!1397746 prefix!494)))))

(assert (= (and d!1178213 c!689618) b!3980227))

(assert (= (and d!1178213 (not c!689618)) b!3980228))

(assert (= (and d!1178213 res!1612906) b!3980229))

(assert (= (and b!3980229 res!1612905) b!3980230))

(declare-fun m!4553377 () Bool)

(assert (=> b!3980228 m!4553377))

(declare-fun m!4553379 () Bool)

(assert (=> b!3980229 m!4553379))

(assert (=> b!3980229 m!4553265))

(declare-fun m!4553381 () Bool)

(assert (=> b!3980229 m!4553381))

(declare-fun m!4553383 () Bool)

(assert (=> d!1178213 m!4553383))

(declare-fun m!4553385 () Bool)

(assert (=> d!1178213 m!4553385))

(declare-fun m!4553387 () Bool)

(assert (=> d!1178213 m!4553387))

(assert (=> b!3980175 d!1178213))

(declare-fun b!3980232 () Bool)

(declare-fun e!2466525 () List!42672)

(assert (=> b!3980232 (= e!2466525 (Cons!42548 (h!47968 lt!1397718) (++!11118 (t!331279 lt!1397718) lt!1397687)))))

(declare-fun b!3980233 () Bool)

(declare-fun res!1612907 () Bool)

(declare-fun e!2466526 () Bool)

(assert (=> b!3980233 (=> (not res!1612907) (not e!2466526))))

(declare-fun lt!1397747 () List!42672)

(assert (=> b!3980233 (= res!1612907 (= (size!31829 lt!1397747) (+ (size!31829 lt!1397718) (size!31829 lt!1397687))))))

(declare-fun d!1178215 () Bool)

(assert (=> d!1178215 e!2466526))

(declare-fun res!1612908 () Bool)

(assert (=> d!1178215 (=> (not res!1612908) (not e!2466526))))

(assert (=> d!1178215 (= res!1612908 (= (content!6450 lt!1397747) ((_ map or) (content!6450 lt!1397718) (content!6450 lt!1397687))))))

(assert (=> d!1178215 (= lt!1397747 e!2466525)))

(declare-fun c!689619 () Bool)

(assert (=> d!1178215 (= c!689619 ((_ is Nil!42548) lt!1397718))))

(assert (=> d!1178215 (= (++!11118 lt!1397718 lt!1397687) lt!1397747)))

(declare-fun b!3980231 () Bool)

(assert (=> b!3980231 (= e!2466525 lt!1397687)))

(declare-fun b!3980234 () Bool)

(assert (=> b!3980234 (= e!2466526 (or (not (= lt!1397687 Nil!42548)) (= lt!1397747 lt!1397718)))))

(assert (= (and d!1178215 c!689619) b!3980231))

(assert (= (and d!1178215 (not c!689619)) b!3980232))

(assert (= (and d!1178215 res!1612908) b!3980233))

(assert (= (and b!3980233 res!1612907) b!3980234))

(declare-fun m!4553389 () Bool)

(assert (=> b!3980232 m!4553389))

(declare-fun m!4553391 () Bool)

(assert (=> b!3980233 m!4553391))

(assert (=> b!3980233 m!4553281))

(declare-fun m!4553393 () Bool)

(assert (=> b!3980233 m!4553393))

(declare-fun m!4553395 () Bool)

(assert (=> d!1178215 m!4553395))

(declare-fun m!4553397 () Bool)

(assert (=> d!1178215 m!4553397))

(declare-fun m!4553399 () Bool)

(assert (=> d!1178215 m!4553399))

(assert (=> b!3980175 d!1178215))

(declare-fun d!1178217 () Bool)

(assert (=> d!1178217 (= (++!11118 (++!11118 prefix!494 newSuffix!27) lt!1397687) (++!11118 prefix!494 (++!11118 newSuffix!27 lt!1397687)))))

(declare-fun lt!1397748 () Unit!61210)

(assert (=> d!1178217 (= lt!1397748 (choose!23869 prefix!494 newSuffix!27 lt!1397687))))

(assert (=> d!1178217 (= (lemmaConcatAssociativity!2438 prefix!494 newSuffix!27 lt!1397687) lt!1397748)))

(declare-fun bs!587917 () Bool)

(assert (= bs!587917 d!1178217))

(declare-fun m!4553401 () Bool)

(assert (=> bs!587917 m!4553401))

(assert (=> bs!587917 m!4553119))

(declare-fun m!4553403 () Bool)

(assert (=> bs!587917 m!4553403))

(assert (=> bs!587917 m!4553185))

(assert (=> bs!587917 m!4553119))

(assert (=> bs!587917 m!4553185))

(declare-fun m!4553405 () Bool)

(assert (=> bs!587917 m!4553405))

(assert (=> b!3980175 d!1178217))

(declare-fun b!3980236 () Bool)

(declare-fun e!2466527 () List!42672)

(assert (=> b!3980236 (= e!2466527 (Cons!42548 (h!47968 prefix!494) (++!11118 (t!331279 prefix!494) newSuffix!27)))))

(declare-fun b!3980237 () Bool)

(declare-fun res!1612909 () Bool)

(declare-fun e!2466528 () Bool)

(assert (=> b!3980237 (=> (not res!1612909) (not e!2466528))))

(declare-fun lt!1397749 () List!42672)

(assert (=> b!3980237 (= res!1612909 (= (size!31829 lt!1397749) (+ (size!31829 prefix!494) (size!31829 newSuffix!27))))))

(declare-fun d!1178219 () Bool)

(assert (=> d!1178219 e!2466528))

(declare-fun res!1612910 () Bool)

(assert (=> d!1178219 (=> (not res!1612910) (not e!2466528))))

(assert (=> d!1178219 (= res!1612910 (= (content!6450 lt!1397749) ((_ map or) (content!6450 prefix!494) (content!6450 newSuffix!27))))))

(assert (=> d!1178219 (= lt!1397749 e!2466527)))

(declare-fun c!689620 () Bool)

(assert (=> d!1178219 (= c!689620 ((_ is Nil!42548) prefix!494))))

(assert (=> d!1178219 (= (++!11118 prefix!494 newSuffix!27) lt!1397749)))

(declare-fun b!3980235 () Bool)

(assert (=> b!3980235 (= e!2466527 newSuffix!27)))

(declare-fun b!3980238 () Bool)

(assert (=> b!3980238 (= e!2466528 (or (not (= newSuffix!27 Nil!42548)) (= lt!1397749 prefix!494)))))

(assert (= (and d!1178219 c!689620) b!3980235))

(assert (= (and d!1178219 (not c!689620)) b!3980236))

(assert (= (and d!1178219 res!1612910) b!3980237))

(assert (= (and b!3980237 res!1612909) b!3980238))

(declare-fun m!4553407 () Bool)

(assert (=> b!3980236 m!4553407))

(declare-fun m!4553409 () Bool)

(assert (=> b!3980237 m!4553409))

(assert (=> b!3980237 m!4553265))

(assert (=> b!3980237 m!4553191))

(declare-fun m!4553411 () Bool)

(assert (=> d!1178219 m!4553411))

(assert (=> d!1178219 m!4553385))

(declare-fun m!4553413 () Bool)

(assert (=> d!1178219 m!4553413))

(assert (=> b!3980154 d!1178219))

(declare-fun b!3980240 () Bool)

(declare-fun e!2466529 () List!42672)

(assert (=> b!3980240 (= e!2466529 (Cons!42548 (h!47968 lt!1397693) (++!11118 (t!331279 lt!1397693) newSuffixResult!27)))))

(declare-fun b!3980241 () Bool)

(declare-fun res!1612911 () Bool)

(declare-fun e!2466530 () Bool)

(assert (=> b!3980241 (=> (not res!1612911) (not e!2466530))))

(declare-fun lt!1397750 () List!42672)

(assert (=> b!3980241 (= res!1612911 (= (size!31829 lt!1397750) (+ (size!31829 lt!1397693) (size!31829 newSuffixResult!27))))))

(declare-fun d!1178221 () Bool)

(assert (=> d!1178221 e!2466530))

(declare-fun res!1612912 () Bool)

(assert (=> d!1178221 (=> (not res!1612912) (not e!2466530))))

(assert (=> d!1178221 (= res!1612912 (= (content!6450 lt!1397750) ((_ map or) (content!6450 lt!1397693) (content!6450 newSuffixResult!27))))))

(assert (=> d!1178221 (= lt!1397750 e!2466529)))

(declare-fun c!689621 () Bool)

(assert (=> d!1178221 (= c!689621 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178221 (= (++!11118 lt!1397693 newSuffixResult!27) lt!1397750)))

(declare-fun b!3980239 () Bool)

(assert (=> b!3980239 (= e!2466529 newSuffixResult!27)))

(declare-fun b!3980242 () Bool)

(assert (=> b!3980242 (= e!2466530 (or (not (= newSuffixResult!27 Nil!42548)) (= lt!1397750 lt!1397693)))))

(assert (= (and d!1178221 c!689621) b!3980239))

(assert (= (and d!1178221 (not c!689621)) b!3980240))

(assert (= (and d!1178221 res!1612912) b!3980241))

(assert (= (and b!3980241 res!1612911) b!3980242))

(declare-fun m!4553415 () Bool)

(assert (=> b!3980240 m!4553415))

(declare-fun m!4553417 () Bool)

(assert (=> b!3980241 m!4553417))

(assert (=> b!3980241 m!4553263))

(declare-fun m!4553419 () Bool)

(assert (=> b!3980241 m!4553419))

(declare-fun m!4553421 () Bool)

(assert (=> d!1178221 m!4553421))

(assert (=> d!1178221 m!4553305))

(declare-fun m!4553423 () Bool)

(assert (=> d!1178221 m!4553423))

(assert (=> b!3980154 d!1178221))

(declare-fun b!3980244 () Bool)

(declare-fun e!2466531 () List!42672)

(assert (=> b!3980244 (= e!2466531 (Cons!42548 (h!47968 lt!1397693) (++!11118 (t!331279 lt!1397693) lt!1397729)))))

(declare-fun b!3980245 () Bool)

(declare-fun res!1612913 () Bool)

(declare-fun e!2466532 () Bool)

(assert (=> b!3980245 (=> (not res!1612913) (not e!2466532))))

(declare-fun lt!1397751 () List!42672)

(assert (=> b!3980245 (= res!1612913 (= (size!31829 lt!1397751) (+ (size!31829 lt!1397693) (size!31829 lt!1397729))))))

(declare-fun d!1178223 () Bool)

(assert (=> d!1178223 e!2466532))

(declare-fun res!1612914 () Bool)

(assert (=> d!1178223 (=> (not res!1612914) (not e!2466532))))

(assert (=> d!1178223 (= res!1612914 (= (content!6450 lt!1397751) ((_ map or) (content!6450 lt!1397693) (content!6450 lt!1397729))))))

(assert (=> d!1178223 (= lt!1397751 e!2466531)))

(declare-fun c!689622 () Bool)

(assert (=> d!1178223 (= c!689622 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178223 (= (++!11118 lt!1397693 lt!1397729) lt!1397751)))

(declare-fun b!3980243 () Bool)

(assert (=> b!3980243 (= e!2466531 lt!1397729)))

(declare-fun b!3980246 () Bool)

(assert (=> b!3980246 (= e!2466532 (or (not (= lt!1397729 Nil!42548)) (= lt!1397751 lt!1397693)))))

(assert (= (and d!1178223 c!689622) b!3980243))

(assert (= (and d!1178223 (not c!689622)) b!3980244))

(assert (= (and d!1178223 res!1612914) b!3980245))

(assert (= (and b!3980245 res!1612913) b!3980246))

(declare-fun m!4553425 () Bool)

(assert (=> b!3980244 m!4553425))

(declare-fun m!4553427 () Bool)

(assert (=> b!3980245 m!4553427))

(assert (=> b!3980245 m!4553263))

(declare-fun m!4553429 () Bool)

(assert (=> b!3980245 m!4553429))

(declare-fun m!4553431 () Bool)

(assert (=> d!1178223 m!4553431))

(assert (=> d!1178223 m!4553305))

(declare-fun m!4553433 () Bool)

(assert (=> d!1178223 m!4553433))

(assert (=> b!3980177 d!1178223))

(declare-fun d!1178225 () Bool)

(declare-fun lt!1397752 () List!42672)

(assert (=> d!1178225 (= (++!11118 lt!1397693 lt!1397752) lt!1397684)))

(declare-fun e!2466533 () List!42672)

(assert (=> d!1178225 (= lt!1397752 e!2466533)))

(declare-fun c!689623 () Bool)

(assert (=> d!1178225 (= c!689623 ((_ is Cons!42548) lt!1397693))))

(assert (=> d!1178225 (>= (size!31829 lt!1397684) (size!31829 lt!1397693))))

(assert (=> d!1178225 (= (getSuffix!2234 lt!1397684 lt!1397693) lt!1397752)))

(declare-fun b!3980247 () Bool)

(assert (=> b!3980247 (= e!2466533 (getSuffix!2234 (tail!6208 lt!1397684) (t!331279 lt!1397693)))))

(declare-fun b!3980248 () Bool)

(assert (=> b!3980248 (= e!2466533 lt!1397684)))

(assert (= (and d!1178225 c!689623) b!3980247))

(assert (= (and d!1178225 (not c!689623)) b!3980248))

(declare-fun m!4553435 () Bool)

(assert (=> d!1178225 m!4553435))

(declare-fun m!4553437 () Bool)

(assert (=> d!1178225 m!4553437))

(assert (=> d!1178225 m!4553263))

(declare-fun m!4553439 () Bool)

(assert (=> b!3980247 m!4553439))

(assert (=> b!3980247 m!4553439))

(declare-fun m!4553441 () Bool)

(assert (=> b!3980247 m!4553441))

(assert (=> b!3980177 d!1178225))

(declare-fun b!3980257 () Bool)

(declare-fun e!2466540 () Bool)

(declare-fun e!2466541 () Bool)

(assert (=> b!3980257 (= e!2466540 e!2466541)))

(declare-fun res!1612923 () Bool)

(assert (=> b!3980257 (=> (not res!1612923) (not e!2466541))))

(assert (=> b!3980257 (= res!1612923 (not ((_ is Nil!42548) lt!1397684)))))

(declare-fun b!3980260 () Bool)

(declare-fun e!2466542 () Bool)

(assert (=> b!3980260 (= e!2466542 (>= (size!31829 lt!1397684) (size!31829 lt!1397684)))))

(declare-fun d!1178227 () Bool)

(assert (=> d!1178227 e!2466542))

(declare-fun res!1612926 () Bool)

(assert (=> d!1178227 (=> res!1612926 e!2466542)))

(declare-fun lt!1397755 () Bool)

(assert (=> d!1178227 (= res!1612926 (not lt!1397755))))

(assert (=> d!1178227 (= lt!1397755 e!2466540)))

(declare-fun res!1612924 () Bool)

(assert (=> d!1178227 (=> res!1612924 e!2466540)))

(assert (=> d!1178227 (= res!1612924 ((_ is Nil!42548) lt!1397684))))

(assert (=> d!1178227 (= (isPrefix!3803 lt!1397684 lt!1397684) lt!1397755)))

(declare-fun b!3980259 () Bool)

(assert (=> b!3980259 (= e!2466541 (isPrefix!3803 (tail!6208 lt!1397684) (tail!6208 lt!1397684)))))

(declare-fun b!3980258 () Bool)

(declare-fun res!1612925 () Bool)

(assert (=> b!3980258 (=> (not res!1612925) (not e!2466541))))

(declare-fun head!8477 (List!42672) C!23428)

(assert (=> b!3980258 (= res!1612925 (= (head!8477 lt!1397684) (head!8477 lt!1397684)))))

(assert (= (and d!1178227 (not res!1612924)) b!3980257))

(assert (= (and b!3980257 res!1612923) b!3980258))

(assert (= (and b!3980258 res!1612925) b!3980259))

(assert (= (and d!1178227 (not res!1612926)) b!3980260))

(assert (=> b!3980260 m!4553437))

(assert (=> b!3980260 m!4553437))

(assert (=> b!3980259 m!4553439))

(assert (=> b!3980259 m!4553439))

(assert (=> b!3980259 m!4553439))

(assert (=> b!3980259 m!4553439))

(declare-fun m!4553443 () Bool)

(assert (=> b!3980259 m!4553443))

(declare-fun m!4553445 () Bool)

(assert (=> b!3980258 m!4553445))

(assert (=> b!3980258 m!4553445))

(assert (=> b!3980177 d!1178227))

(declare-fun d!1178229 () Bool)

(assert (=> d!1178229 (isPrefix!3803 lt!1397684 lt!1397684)))

(declare-fun lt!1397758 () Unit!61210)

(declare-fun choose!23871 (List!42672 List!42672) Unit!61210)

(assert (=> d!1178229 (= lt!1397758 (choose!23871 lt!1397684 lt!1397684))))

(assert (=> d!1178229 (= (lemmaIsPrefixRefl!2395 lt!1397684 lt!1397684) lt!1397758)))

(declare-fun bs!587918 () Bool)

(assert (= bs!587918 d!1178229))

(assert (=> bs!587918 m!4553247))

(declare-fun m!4553447 () Bool)

(assert (=> bs!587918 m!4553447))

(assert (=> b!3980177 d!1178229))

(declare-fun d!1178231 () Bool)

(assert (=> d!1178231 (= (isEmpty!25440 rules!2999) ((_ is Nil!42550) rules!2999))))

(assert (=> b!3980155 d!1178231))

(declare-fun d!1178233 () Bool)

(declare-fun lt!1397761 () Int)

(assert (=> d!1178233 (>= lt!1397761 0)))

(declare-fun e!2466545 () Int)

(assert (=> d!1178233 (= lt!1397761 e!2466545)))

(declare-fun c!689626 () Bool)

(assert (=> d!1178233 (= c!689626 ((_ is Nil!42548) (originalCharacters!7316 token!484)))))

(assert (=> d!1178233 (= (size!31829 (originalCharacters!7316 token!484)) lt!1397761)))

(declare-fun b!3980265 () Bool)

(assert (=> b!3980265 (= e!2466545 0)))

(declare-fun b!3980266 () Bool)

(assert (=> b!3980266 (= e!2466545 (+ 1 (size!31829 (t!331279 (originalCharacters!7316 token!484)))))))

(assert (= (and d!1178233 c!689626) b!3980265))

(assert (= (and d!1178233 (not c!689626)) b!3980266))

(declare-fun m!4553449 () Bool)

(assert (=> b!3980266 m!4553449))

(assert (=> b!3980168 d!1178233))

(declare-fun b!3980285 () Bool)

(declare-fun res!1612944 () Bool)

(declare-fun e!2466553 () Bool)

(assert (=> b!3980285 (=> (not res!1612944) (not e!2466553))))

(declare-fun lt!1397772 () Option!9130)

(declare-fun get!14009 (Option!9130) tuple2!41776)

(assert (=> b!3980285 (= res!1612944 (matchR!5598 (regex!6716 (rule!9720 (_1!24022 (get!14009 lt!1397772)))) (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397772))))))))

(declare-fun b!3980286 () Bool)

(declare-fun res!1612947 () Bool)

(assert (=> b!3980286 (=> (not res!1612947) (not e!2466553))))

(assert (=> b!3980286 (= res!1612947 (< (size!31829 (_2!24022 (get!14009 lt!1397772))) (size!31829 lt!1397718)))))

(declare-fun b!3980287 () Bool)

(declare-fun e!2466552 () Option!9130)

(declare-fun lt!1397774 () Option!9130)

(declare-fun lt!1397773 () Option!9130)

(assert (=> b!3980287 (= e!2466552 (ite (and ((_ is None!9129) lt!1397774) ((_ is None!9129) lt!1397773)) None!9129 (ite ((_ is None!9129) lt!1397773) lt!1397774 (ite ((_ is None!9129) lt!1397774) lt!1397773 (ite (>= (size!31828 (_1!24022 (v!39477 lt!1397774))) (size!31828 (_1!24022 (v!39477 lt!1397773)))) lt!1397774 lt!1397773)))))))

(declare-fun call!285715 () Option!9130)

(assert (=> b!3980287 (= lt!1397774 call!285715)))

(assert (=> b!3980287 (= lt!1397773 (maxPrefix!3603 thiss!21717 (t!331281 rules!2999) lt!1397718))))

(declare-fun b!3980288 () Bool)

(declare-fun res!1612945 () Bool)

(assert (=> b!3980288 (=> (not res!1612945) (not e!2466553))))

(assert (=> b!3980288 (= res!1612945 (= (++!11118 (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397772)))) (_2!24022 (get!14009 lt!1397772))) lt!1397718))))

(declare-fun b!3980289 () Bool)

(declare-fun res!1612943 () Bool)

(assert (=> b!3980289 (=> (not res!1612943) (not e!2466553))))

(assert (=> b!3980289 (= res!1612943 (= (value!212040 (_1!24022 (get!14009 lt!1397772))) (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (get!14009 lt!1397772)))) (seqFromList!4955 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397772)))))))))

(declare-fun d!1178235 () Bool)

(declare-fun e!2466554 () Bool)

(assert (=> d!1178235 e!2466554))

(declare-fun res!1612942 () Bool)

(assert (=> d!1178235 (=> res!1612942 e!2466554)))

(declare-fun isEmpty!25442 (Option!9130) Bool)

(assert (=> d!1178235 (= res!1612942 (isEmpty!25442 lt!1397772))))

(assert (=> d!1178235 (= lt!1397772 e!2466552)))

(declare-fun c!689629 () Bool)

(assert (=> d!1178235 (= c!689629 (and ((_ is Cons!42550) rules!2999) ((_ is Nil!42550) (t!331281 rules!2999))))))

(declare-fun lt!1397776 () Unit!61210)

(declare-fun lt!1397775 () Unit!61210)

(assert (=> d!1178235 (= lt!1397776 lt!1397775)))

(assert (=> d!1178235 (isPrefix!3803 lt!1397718 lt!1397718)))

(assert (=> d!1178235 (= lt!1397775 (lemmaIsPrefixRefl!2395 lt!1397718 lt!1397718))))

(declare-fun rulesValidInductive!2438 (LexerInterface!6305 List!42674) Bool)

(assert (=> d!1178235 (rulesValidInductive!2438 thiss!21717 rules!2999)))

(assert (=> d!1178235 (= (maxPrefix!3603 thiss!21717 rules!2999 lt!1397718) lt!1397772)))

(declare-fun bm!285710 () Bool)

(assert (=> bm!285710 (= call!285715 (maxPrefixOneRule!2637 thiss!21717 (h!47970 rules!2999) lt!1397718))))

(declare-fun b!3980290 () Bool)

(assert (=> b!3980290 (= e!2466552 call!285715)))

(declare-fun b!3980291 () Bool)

(assert (=> b!3980291 (= e!2466554 e!2466553)))

(declare-fun res!1612946 () Bool)

(assert (=> b!3980291 (=> (not res!1612946) (not e!2466553))))

(declare-fun isDefined!7027 (Option!9130) Bool)

(assert (=> b!3980291 (= res!1612946 (isDefined!7027 lt!1397772))))

(declare-fun b!3980292 () Bool)

(declare-fun res!1612941 () Bool)

(assert (=> b!3980292 (=> (not res!1612941) (not e!2466553))))

(assert (=> b!3980292 (= res!1612941 (= (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397772)))) (originalCharacters!7316 (_1!24022 (get!14009 lt!1397772)))))))

(declare-fun b!3980293 () Bool)

(assert (=> b!3980293 (= e!2466553 (contains!8468 rules!2999 (rule!9720 (_1!24022 (get!14009 lt!1397772)))))))

(assert (= (and d!1178235 c!689629) b!3980290))

(assert (= (and d!1178235 (not c!689629)) b!3980287))

(assert (= (or b!3980290 b!3980287) bm!285710))

(assert (= (and d!1178235 (not res!1612942)) b!3980291))

(assert (= (and b!3980291 res!1612946) b!3980292))

(assert (= (and b!3980292 res!1612941) b!3980286))

(assert (= (and b!3980286 res!1612947) b!3980288))

(assert (= (and b!3980288 res!1612945) b!3980289))

(assert (= (and b!3980289 res!1612943) b!3980285))

(assert (= (and b!3980285 res!1612944) b!3980293))

(declare-fun m!4553451 () Bool)

(assert (=> b!3980289 m!4553451))

(declare-fun m!4553453 () Bool)

(assert (=> b!3980289 m!4553453))

(assert (=> b!3980289 m!4553453))

(declare-fun m!4553455 () Bool)

(assert (=> b!3980289 m!4553455))

(assert (=> b!3980285 m!4553451))

(declare-fun m!4553457 () Bool)

(assert (=> b!3980285 m!4553457))

(assert (=> b!3980285 m!4553457))

(declare-fun m!4553459 () Bool)

(assert (=> b!3980285 m!4553459))

(assert (=> b!3980285 m!4553459))

(declare-fun m!4553461 () Bool)

(assert (=> b!3980285 m!4553461))

(declare-fun m!4553463 () Bool)

(assert (=> d!1178235 m!4553463))

(declare-fun m!4553465 () Bool)

(assert (=> d!1178235 m!4553465))

(declare-fun m!4553467 () Bool)

(assert (=> d!1178235 m!4553467))

(declare-fun m!4553469 () Bool)

(assert (=> d!1178235 m!4553469))

(declare-fun m!4553471 () Bool)

(assert (=> bm!285710 m!4553471))

(declare-fun m!4553473 () Bool)

(assert (=> b!3980287 m!4553473))

(assert (=> b!3980286 m!4553451))

(declare-fun m!4553475 () Bool)

(assert (=> b!3980286 m!4553475))

(assert (=> b!3980286 m!4553281))

(assert (=> b!3980293 m!4553451))

(declare-fun m!4553477 () Bool)

(assert (=> b!3980293 m!4553477))

(assert (=> b!3980288 m!4553451))

(assert (=> b!3980288 m!4553457))

(assert (=> b!3980288 m!4553457))

(assert (=> b!3980288 m!4553459))

(assert (=> b!3980288 m!4553459))

(declare-fun m!4553479 () Bool)

(assert (=> b!3980288 m!4553479))

(declare-fun m!4553481 () Bool)

(assert (=> b!3980291 m!4553481))

(assert (=> b!3980292 m!4553451))

(assert (=> b!3980292 m!4553457))

(assert (=> b!3980292 m!4553457))

(assert (=> b!3980292 m!4553459))

(assert (=> b!3980167 d!1178235))

(declare-fun d!1178237 () Bool)

(assert (=> d!1178237 (= suffixResult!105 lt!1397729)))

(declare-fun lt!1397779 () Unit!61210)

(declare-fun choose!23874 (List!42672 List!42672 List!42672 List!42672 List!42672) Unit!61210)

(assert (=> d!1178237 (= lt!1397779 (choose!23874 lt!1397693 suffixResult!105 lt!1397693 lt!1397729 lt!1397684))))

(assert (=> d!1178237 (isPrefix!3803 lt!1397693 lt!1397684)))

(assert (=> d!1178237 (= (lemmaSamePrefixThenSameSuffix!1990 lt!1397693 suffixResult!105 lt!1397693 lt!1397729 lt!1397684) lt!1397779)))

(declare-fun bs!587919 () Bool)

(assert (= bs!587919 d!1178237))

(declare-fun m!4553483 () Bool)

(assert (=> bs!587919 m!4553483))

(assert (=> bs!587919 m!4553209))

(assert (=> b!3980167 d!1178237))

(declare-fun b!3980294 () Bool)

(declare-fun e!2466555 () Bool)

(declare-fun e!2466556 () Bool)

(assert (=> b!3980294 (= e!2466555 e!2466556)))

(declare-fun res!1612950 () Bool)

(assert (=> b!3980294 (=> (not res!1612950) (not e!2466556))))

(assert (=> b!3980294 (= res!1612950 (not ((_ is Nil!42548) lt!1397705)))))

(declare-fun b!3980297 () Bool)

(declare-fun e!2466557 () Bool)

(assert (=> b!3980297 (= e!2466557 (>= (size!31829 lt!1397705) (size!31829 lt!1397693)))))

(declare-fun d!1178239 () Bool)

(assert (=> d!1178239 e!2466557))

(declare-fun res!1612953 () Bool)

(assert (=> d!1178239 (=> res!1612953 e!2466557)))

(declare-fun lt!1397780 () Bool)

(assert (=> d!1178239 (= res!1612953 (not lt!1397780))))

(assert (=> d!1178239 (= lt!1397780 e!2466555)))

(declare-fun res!1612951 () Bool)

(assert (=> d!1178239 (=> res!1612951 e!2466555)))

(assert (=> d!1178239 (= res!1612951 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178239 (= (isPrefix!3803 lt!1397693 lt!1397705) lt!1397780)))

(declare-fun b!3980296 () Bool)

(assert (=> b!3980296 (= e!2466556 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 lt!1397705)))))

(declare-fun b!3980295 () Bool)

(declare-fun res!1612952 () Bool)

(assert (=> b!3980295 (=> (not res!1612952) (not e!2466556))))

(assert (=> b!3980295 (= res!1612952 (= (head!8477 lt!1397693) (head!8477 lt!1397705)))))

(assert (= (and d!1178239 (not res!1612951)) b!3980294))

(assert (= (and b!3980294 res!1612950) b!3980295))

(assert (= (and b!3980295 res!1612952) b!3980296))

(assert (= (and d!1178239 (not res!1612953)) b!3980297))

(declare-fun m!4553485 () Bool)

(assert (=> b!3980297 m!4553485))

(assert (=> b!3980297 m!4553263))

(declare-fun m!4553487 () Bool)

(assert (=> b!3980296 m!4553487))

(declare-fun m!4553489 () Bool)

(assert (=> b!3980296 m!4553489))

(assert (=> b!3980296 m!4553487))

(assert (=> b!3980296 m!4553489))

(declare-fun m!4553491 () Bool)

(assert (=> b!3980296 m!4553491))

(declare-fun m!4553493 () Bool)

(assert (=> b!3980295 m!4553493))

(declare-fun m!4553495 () Bool)

(assert (=> b!3980295 m!4553495))

(assert (=> b!3980167 d!1178239))

(declare-fun d!1178241 () Bool)

(assert (=> d!1178241 (isPrefix!3803 lt!1397693 (++!11118 lt!1397693 lt!1397729))))

(declare-fun lt!1397783 () Unit!61210)

(declare-fun choose!23876 (List!42672 List!42672) Unit!61210)

(assert (=> d!1178241 (= lt!1397783 (choose!23876 lt!1397693 lt!1397729))))

(assert (=> d!1178241 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 lt!1397729) lt!1397783)))

(declare-fun bs!587920 () Bool)

(assert (= bs!587920 d!1178241))

(assert (=> bs!587920 m!4553243))

(assert (=> bs!587920 m!4553243))

(declare-fun m!4553497 () Bool)

(assert (=> bs!587920 m!4553497))

(declare-fun m!4553499 () Bool)

(assert (=> bs!587920 m!4553499))

(assert (=> b!3980167 d!1178241))

(declare-fun b!3980354 () Bool)

(declare-fun e!2466586 () Bool)

(declare-fun e!2466589 () Bool)

(assert (=> b!3980354 (= e!2466586 e!2466589)))

(declare-fun res!1612991 () Bool)

(assert (=> b!3980354 (=> res!1612991 e!2466589)))

(declare-fun call!285720 () Bool)

(assert (=> b!3980354 (= res!1612991 call!285720)))

(declare-fun d!1178243 () Bool)

(declare-fun e!2466587 () Bool)

(assert (=> d!1178243 e!2466587))

(declare-fun c!689643 () Bool)

(assert (=> d!1178243 (= c!689643 ((_ is EmptyExpr!11621) (regex!6716 (rule!9720 token!484))))))

(declare-fun lt!1397788 () Bool)

(declare-fun e!2466588 () Bool)

(assert (=> d!1178243 (= lt!1397788 e!2466588)))

(declare-fun c!689642 () Bool)

(declare-fun isEmpty!25443 (List!42672) Bool)

(assert (=> d!1178243 (= c!689642 (isEmpty!25443 lt!1397693))))

(assert (=> d!1178243 (validRegex!5275 (regex!6716 (rule!9720 token!484)))))

(assert (=> d!1178243 (= (matchR!5598 (regex!6716 (rule!9720 token!484)) lt!1397693) lt!1397788)))

(declare-fun bm!285715 () Bool)

(assert (=> bm!285715 (= call!285720 (isEmpty!25443 lt!1397693))))

(declare-fun b!3980355 () Bool)

(assert (=> b!3980355 (= e!2466588 (nullable!4075 (regex!6716 (rule!9720 token!484))))))

(declare-fun b!3980356 () Bool)

(declare-fun e!2466591 () Bool)

(assert (=> b!3980356 (= e!2466591 (= (head!8477 lt!1397693) (c!689607 (regex!6716 (rule!9720 token!484)))))))

(declare-fun b!3980357 () Bool)

(declare-fun res!1612989 () Bool)

(declare-fun e!2466590 () Bool)

(assert (=> b!3980357 (=> res!1612989 e!2466590)))

(assert (=> b!3980357 (= res!1612989 e!2466591)))

(declare-fun res!1612993 () Bool)

(assert (=> b!3980357 (=> (not res!1612993) (not e!2466591))))

(assert (=> b!3980357 (= res!1612993 lt!1397788)))

(declare-fun b!3980358 () Bool)

(assert (=> b!3980358 (= e!2466590 e!2466586)))

(declare-fun res!1612986 () Bool)

(assert (=> b!3980358 (=> (not res!1612986) (not e!2466586))))

(assert (=> b!3980358 (= res!1612986 (not lt!1397788))))

(declare-fun b!3980359 () Bool)

(declare-fun res!1612990 () Bool)

(assert (=> b!3980359 (=> (not res!1612990) (not e!2466591))))

(assert (=> b!3980359 (= res!1612990 (isEmpty!25443 (tail!6208 lt!1397693)))))

(declare-fun b!3980360 () Bool)

(assert (=> b!3980360 (= e!2466589 (not (= (head!8477 lt!1397693) (c!689607 (regex!6716 (rule!9720 token!484))))))))

(declare-fun b!3980361 () Bool)

(declare-fun e!2466592 () Bool)

(assert (=> b!3980361 (= e!2466592 (not lt!1397788))))

(declare-fun b!3980362 () Bool)

(declare-fun res!1612987 () Bool)

(assert (=> b!3980362 (=> (not res!1612987) (not e!2466591))))

(assert (=> b!3980362 (= res!1612987 (not call!285720))))

(declare-fun b!3980363 () Bool)

(declare-fun res!1612992 () Bool)

(assert (=> b!3980363 (=> res!1612992 e!2466590)))

(assert (=> b!3980363 (= res!1612992 (not ((_ is ElementMatch!11621) (regex!6716 (rule!9720 token!484)))))))

(assert (=> b!3980363 (= e!2466592 e!2466590)))

(declare-fun b!3980364 () Bool)

(declare-fun res!1612988 () Bool)

(assert (=> b!3980364 (=> res!1612988 e!2466589)))

(assert (=> b!3980364 (= res!1612988 (not (isEmpty!25443 (tail!6208 lt!1397693))))))

(declare-fun b!3980365 () Bool)

(declare-fun derivativeStep!3487 (Regex!11621 C!23428) Regex!11621)

(assert (=> b!3980365 (= e!2466588 (matchR!5598 (derivativeStep!3487 (regex!6716 (rule!9720 token!484)) (head!8477 lt!1397693)) (tail!6208 lt!1397693)))))

(declare-fun b!3980366 () Bool)

(assert (=> b!3980366 (= e!2466587 (= lt!1397788 call!285720))))

(declare-fun b!3980367 () Bool)

(assert (=> b!3980367 (= e!2466587 e!2466592)))

(declare-fun c!689644 () Bool)

(assert (=> b!3980367 (= c!689644 ((_ is EmptyLang!11621) (regex!6716 (rule!9720 token!484))))))

(assert (= (and d!1178243 c!689642) b!3980355))

(assert (= (and d!1178243 (not c!689642)) b!3980365))

(assert (= (and d!1178243 c!689643) b!3980366))

(assert (= (and d!1178243 (not c!689643)) b!3980367))

(assert (= (and b!3980367 c!689644) b!3980361))

(assert (= (and b!3980367 (not c!689644)) b!3980363))

(assert (= (and b!3980363 (not res!1612992)) b!3980357))

(assert (= (and b!3980357 res!1612993) b!3980362))

(assert (= (and b!3980362 res!1612987) b!3980359))

(assert (= (and b!3980359 res!1612990) b!3980356))

(assert (= (and b!3980357 (not res!1612989)) b!3980358))

(assert (= (and b!3980358 res!1612986) b!3980354))

(assert (= (and b!3980354 (not res!1612991)) b!3980364))

(assert (= (and b!3980364 (not res!1612988)) b!3980360))

(assert (= (or b!3980366 b!3980354 b!3980362) bm!285715))

(declare-fun m!4553501 () Bool)

(assert (=> d!1178243 m!4553501))

(assert (=> d!1178243 m!4553351))

(assert (=> b!3980359 m!4553487))

(assert (=> b!3980359 m!4553487))

(declare-fun m!4553503 () Bool)

(assert (=> b!3980359 m!4553503))

(assert (=> b!3980356 m!4553493))

(assert (=> b!3980364 m!4553487))

(assert (=> b!3980364 m!4553487))

(assert (=> b!3980364 m!4553503))

(assert (=> b!3980365 m!4553493))

(assert (=> b!3980365 m!4553493))

(declare-fun m!4553505 () Bool)

(assert (=> b!3980365 m!4553505))

(assert (=> b!3980365 m!4553487))

(assert (=> b!3980365 m!4553505))

(assert (=> b!3980365 m!4553487))

(declare-fun m!4553507 () Bool)

(assert (=> b!3980365 m!4553507))

(assert (=> bm!285715 m!4553501))

(assert (=> b!3980355 m!4553353))

(assert (=> b!3980360 m!4553493))

(assert (=> b!3980146 d!1178243))

(declare-fun b!3980368 () Bool)

(declare-fun e!2466593 () Bool)

(declare-fun e!2466594 () Bool)

(assert (=> b!3980368 (= e!2466593 e!2466594)))

(declare-fun res!1612994 () Bool)

(assert (=> b!3980368 (=> (not res!1612994) (not e!2466594))))

(assert (=> b!3980368 (= res!1612994 (not ((_ is Nil!42548) lt!1397718)))))

(declare-fun b!3980371 () Bool)

(declare-fun e!2466595 () Bool)

(assert (=> b!3980371 (= e!2466595 (>= (size!31829 lt!1397718) (size!31829 lt!1397693)))))

(declare-fun d!1178247 () Bool)

(assert (=> d!1178247 e!2466595))

(declare-fun res!1612997 () Bool)

(assert (=> d!1178247 (=> res!1612997 e!2466595)))

(declare-fun lt!1397789 () Bool)

(assert (=> d!1178247 (= res!1612997 (not lt!1397789))))

(assert (=> d!1178247 (= lt!1397789 e!2466593)))

(declare-fun res!1612995 () Bool)

(assert (=> d!1178247 (=> res!1612995 e!2466593)))

(assert (=> d!1178247 (= res!1612995 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178247 (= (isPrefix!3803 lt!1397693 lt!1397718) lt!1397789)))

(declare-fun b!3980370 () Bool)

(assert (=> b!3980370 (= e!2466594 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 lt!1397718)))))

(declare-fun b!3980369 () Bool)

(declare-fun res!1612996 () Bool)

(assert (=> b!3980369 (=> (not res!1612996) (not e!2466594))))

(assert (=> b!3980369 (= res!1612996 (= (head!8477 lt!1397693) (head!8477 lt!1397718)))))

(assert (= (and d!1178247 (not res!1612995)) b!3980368))

(assert (= (and b!3980368 res!1612994) b!3980369))

(assert (= (and b!3980369 res!1612996) b!3980370))

(assert (= (and d!1178247 (not res!1612997)) b!3980371))

(assert (=> b!3980371 m!4553281))

(assert (=> b!3980371 m!4553263))

(assert (=> b!3980370 m!4553487))

(assert (=> b!3980370 m!4553373))

(assert (=> b!3980370 m!4553487))

(assert (=> b!3980370 m!4553373))

(declare-fun m!4553509 () Bool)

(assert (=> b!3980370 m!4553509))

(assert (=> b!3980369 m!4553493))

(declare-fun m!4553511 () Bool)

(assert (=> b!3980369 m!4553511))

(assert (=> b!3980146 d!1178247))

(declare-fun d!1178249 () Bool)

(assert (=> d!1178249 (isPrefix!3803 lt!1397693 (++!11118 prefix!494 newSuffix!27))))

(declare-fun lt!1397793 () Unit!61210)

(declare-fun choose!23879 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> d!1178249 (= lt!1397793 (choose!23879 lt!1397693 prefix!494 newSuffix!27))))

(assert (=> d!1178249 (isPrefix!3803 lt!1397693 prefix!494)))

(assert (=> d!1178249 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397693 prefix!494 newSuffix!27) lt!1397793)))

(declare-fun bs!587921 () Bool)

(assert (= bs!587921 d!1178249))

(assert (=> bs!587921 m!4553185))

(assert (=> bs!587921 m!4553185))

(declare-fun m!4553517 () Bool)

(assert (=> bs!587921 m!4553517))

(declare-fun m!4553521 () Bool)

(assert (=> bs!587921 m!4553521))

(assert (=> bs!587921 m!4553197))

(assert (=> b!3980146 d!1178249))

(declare-fun d!1178251 () Bool)

(assert (=> d!1178251 (isPrefix!3803 lt!1397693 (++!11118 prefix!494 suffix!1299))))

(declare-fun lt!1397794 () Unit!61210)

(assert (=> d!1178251 (= lt!1397794 (choose!23879 lt!1397693 prefix!494 suffix!1299))))

(assert (=> d!1178251 (isPrefix!3803 lt!1397693 prefix!494)))

(assert (=> d!1178251 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397693 prefix!494 suffix!1299) lt!1397794)))

(declare-fun bs!587922 () Bool)

(assert (= bs!587922 d!1178251))

(assert (=> bs!587922 m!4553183))

(assert (=> bs!587922 m!4553183))

(declare-fun m!4553533 () Bool)

(assert (=> bs!587922 m!4553533))

(declare-fun m!4553535 () Bool)

(assert (=> bs!587922 m!4553535))

(assert (=> bs!587922 m!4553197))

(assert (=> b!3980146 d!1178251))

(declare-fun d!1178255 () Bool)

(declare-fun res!1613008 () Bool)

(declare-fun e!2466605 () Bool)

(assert (=> d!1178255 (=> (not res!1613008) (not e!2466605))))

(declare-fun rulesValid!2616 (LexerInterface!6305 List!42674) Bool)

(assert (=> d!1178255 (= res!1613008 (rulesValid!2616 thiss!21717 rules!2999))))

(assert (=> d!1178255 (= (rulesInvariant!5648 thiss!21717 rules!2999) e!2466605)))

(declare-fun b!3980388 () Bool)

(declare-datatypes ((List!42675 0))(
  ( (Nil!42551) (Cons!42551 (h!47971 String!48448) (t!331330 List!42675)) )
))
(declare-fun noDuplicateTag!2617 (LexerInterface!6305 List!42674 List!42675) Bool)

(assert (=> b!3980388 (= e!2466605 (noDuplicateTag!2617 thiss!21717 rules!2999 Nil!42551))))

(assert (= (and d!1178255 res!1613008) b!3980388))

(declare-fun m!4553537 () Bool)

(assert (=> d!1178255 m!4553537))

(declare-fun m!4553539 () Bool)

(assert (=> b!3980388 m!4553539))

(assert (=> b!3980148 d!1178255))

(declare-fun b!3980397 () Bool)

(declare-fun e!2466612 () Bool)

(declare-fun e!2466613 () Bool)

(assert (=> b!3980397 (= e!2466612 e!2466613)))

(declare-fun res!1613017 () Bool)

(assert (=> b!3980397 (=> (not res!1613017) (not e!2466613))))

(assert (=> b!3980397 (= res!1613017 (not ((_ is Nil!42548) lt!1397684)))))

(declare-fun b!3980400 () Bool)

(declare-fun e!2466614 () Bool)

(assert (=> b!3980400 (= e!2466614 (>= (size!31829 lt!1397684) (size!31829 prefix!494)))))

(declare-fun d!1178257 () Bool)

(assert (=> d!1178257 e!2466614))

(declare-fun res!1613020 () Bool)

(assert (=> d!1178257 (=> res!1613020 e!2466614)))

(declare-fun lt!1397797 () Bool)

(assert (=> d!1178257 (= res!1613020 (not lt!1397797))))

(assert (=> d!1178257 (= lt!1397797 e!2466612)))

(declare-fun res!1613018 () Bool)

(assert (=> d!1178257 (=> res!1613018 e!2466612)))

(assert (=> d!1178257 (= res!1613018 ((_ is Nil!42548) prefix!494))))

(assert (=> d!1178257 (= (isPrefix!3803 prefix!494 lt!1397684) lt!1397797)))

(declare-fun b!3980399 () Bool)

(assert (=> b!3980399 (= e!2466613 (isPrefix!3803 (tail!6208 prefix!494) (tail!6208 lt!1397684)))))

(declare-fun b!3980398 () Bool)

(declare-fun res!1613019 () Bool)

(assert (=> b!3980398 (=> (not res!1613019) (not e!2466613))))

(assert (=> b!3980398 (= res!1613019 (= (head!8477 prefix!494) (head!8477 lt!1397684)))))

(assert (= (and d!1178257 (not res!1613018)) b!3980397))

(assert (= (and b!3980397 res!1613017) b!3980398))

(assert (= (and b!3980398 res!1613019) b!3980399))

(assert (= (and d!1178257 (not res!1613020)) b!3980400))

(assert (=> b!3980400 m!4553437))

(assert (=> b!3980400 m!4553265))

(declare-fun m!4553541 () Bool)

(assert (=> b!3980399 m!4553541))

(assert (=> b!3980399 m!4553439))

(assert (=> b!3980399 m!4553541))

(assert (=> b!3980399 m!4553439))

(declare-fun m!4553543 () Bool)

(assert (=> b!3980399 m!4553543))

(declare-fun m!4553545 () Bool)

(assert (=> b!3980398 m!4553545))

(assert (=> b!3980398 m!4553445))

(assert (=> b!3980147 d!1178257))

(declare-fun b!3980401 () Bool)

(declare-fun e!2466615 () Bool)

(declare-fun e!2466616 () Bool)

(assert (=> b!3980401 (= e!2466615 e!2466616)))

(declare-fun res!1613021 () Bool)

(assert (=> b!3980401 (=> (not res!1613021) (not e!2466616))))

(assert (=> b!3980401 (= res!1613021 (not ((_ is Nil!42548) lt!1397684)))))

(declare-fun b!3980404 () Bool)

(declare-fun e!2466617 () Bool)

(assert (=> b!3980404 (= e!2466617 (>= (size!31829 lt!1397684) (size!31829 lt!1397693)))))

(declare-fun d!1178259 () Bool)

(assert (=> d!1178259 e!2466617))

(declare-fun res!1613024 () Bool)

(assert (=> d!1178259 (=> res!1613024 e!2466617)))

(declare-fun lt!1397798 () Bool)

(assert (=> d!1178259 (= res!1613024 (not lt!1397798))))

(assert (=> d!1178259 (= lt!1397798 e!2466615)))

(declare-fun res!1613022 () Bool)

(assert (=> d!1178259 (=> res!1613022 e!2466615)))

(assert (=> d!1178259 (= res!1613022 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178259 (= (isPrefix!3803 lt!1397693 lt!1397684) lt!1397798)))

(declare-fun b!3980403 () Bool)

(assert (=> b!3980403 (= e!2466616 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 lt!1397684)))))

(declare-fun b!3980402 () Bool)

(declare-fun res!1613023 () Bool)

(assert (=> b!3980402 (=> (not res!1613023) (not e!2466616))))

(assert (=> b!3980402 (= res!1613023 (= (head!8477 lt!1397693) (head!8477 lt!1397684)))))

(assert (= (and d!1178259 (not res!1613022)) b!3980401))

(assert (= (and b!3980401 res!1613021) b!3980402))

(assert (= (and b!3980402 res!1613023) b!3980403))

(assert (= (and d!1178259 (not res!1613024)) b!3980404))

(assert (=> b!3980404 m!4553437))

(assert (=> b!3980404 m!4553263))

(assert (=> b!3980403 m!4553487))

(assert (=> b!3980403 m!4553439))

(assert (=> b!3980403 m!4553487))

(assert (=> b!3980403 m!4553439))

(declare-fun m!4553547 () Bool)

(assert (=> b!3980403 m!4553547))

(assert (=> b!3980402 m!4553493))

(assert (=> b!3980402 m!4553445))

(assert (=> b!3980147 d!1178259))

(declare-fun d!1178261 () Bool)

(assert (=> d!1178261 (isPrefix!3803 prefix!494 (++!11118 prefix!494 suffix!1299))))

(declare-fun lt!1397799 () Unit!61210)

(assert (=> d!1178261 (= lt!1397799 (choose!23876 prefix!494 suffix!1299))))

(assert (=> d!1178261 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 prefix!494 suffix!1299) lt!1397799)))

(declare-fun bs!587923 () Bool)

(assert (= bs!587923 d!1178261))

(assert (=> bs!587923 m!4553183))

(assert (=> bs!587923 m!4553183))

(declare-fun m!4553549 () Bool)

(assert (=> bs!587923 m!4553549))

(declare-fun m!4553551 () Bool)

(assert (=> bs!587923 m!4553551))

(assert (=> b!3980147 d!1178261))

(declare-fun b!3980405 () Bool)

(declare-fun e!2466618 () Bool)

(declare-fun e!2466619 () Bool)

(assert (=> b!3980405 (= e!2466618 e!2466619)))

(declare-fun res!1613025 () Bool)

(assert (=> b!3980405 (=> (not res!1613025) (not e!2466619))))

(assert (=> b!3980405 (= res!1613025 (not ((_ is Nil!42548) lt!1397725)))))

(declare-fun b!3980408 () Bool)

(declare-fun e!2466620 () Bool)

(assert (=> b!3980408 (= e!2466620 (>= (size!31829 lt!1397725) (size!31829 lt!1397693)))))

(declare-fun d!1178263 () Bool)

(assert (=> d!1178263 e!2466620))

(declare-fun res!1613028 () Bool)

(assert (=> d!1178263 (=> res!1613028 e!2466620)))

(declare-fun lt!1397800 () Bool)

(assert (=> d!1178263 (= res!1613028 (not lt!1397800))))

(assert (=> d!1178263 (= lt!1397800 e!2466618)))

(declare-fun res!1613026 () Bool)

(assert (=> d!1178263 (=> res!1613026 e!2466618)))

(assert (=> d!1178263 (= res!1613026 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178263 (= (isPrefix!3803 lt!1397693 lt!1397725) lt!1397800)))

(declare-fun b!3980407 () Bool)

(assert (=> b!3980407 (= e!2466619 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 lt!1397725)))))

(declare-fun b!3980406 () Bool)

(declare-fun res!1613027 () Bool)

(assert (=> b!3980406 (=> (not res!1613027) (not e!2466619))))

(assert (=> b!3980406 (= res!1613027 (= (head!8477 lt!1397693) (head!8477 lt!1397725)))))

(assert (= (and d!1178263 (not res!1613026)) b!3980405))

(assert (= (and b!3980405 res!1613025) b!3980406))

(assert (= (and b!3980406 res!1613027) b!3980407))

(assert (= (and d!1178263 (not res!1613028)) b!3980408))

(declare-fun m!4553553 () Bool)

(assert (=> b!3980408 m!4553553))

(assert (=> b!3980408 m!4553263))

(assert (=> b!3980407 m!4553487))

(declare-fun m!4553555 () Bool)

(assert (=> b!3980407 m!4553555))

(assert (=> b!3980407 m!4553487))

(assert (=> b!3980407 m!4553555))

(declare-fun m!4553557 () Bool)

(assert (=> b!3980407 m!4553557))

(assert (=> b!3980406 m!4553493))

(declare-fun m!4553559 () Bool)

(assert (=> b!3980406 m!4553559))

(assert (=> b!3980147 d!1178263))

(declare-fun d!1178265 () Bool)

(assert (=> d!1178265 (isPrefix!3803 lt!1397693 (++!11118 lt!1397693 suffixResult!105))))

(declare-fun lt!1397802 () Unit!61210)

(assert (=> d!1178265 (= lt!1397802 (choose!23876 lt!1397693 suffixResult!105))))

(assert (=> d!1178265 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 suffixResult!105) lt!1397802)))

(declare-fun bs!587924 () Bool)

(assert (= bs!587924 d!1178265))

(assert (=> bs!587924 m!4553227))

(assert (=> bs!587924 m!4553227))

(declare-fun m!4553561 () Bool)

(assert (=> bs!587924 m!4553561))

(declare-fun m!4553565 () Bool)

(assert (=> bs!587924 m!4553565))

(assert (=> b!3980147 d!1178265))

(declare-fun b!3980413 () Bool)

(declare-fun e!2466624 () Bool)

(declare-fun e!2466625 () Bool)

(assert (=> b!3980413 (= e!2466624 e!2466625)))

(declare-fun res!1613033 () Bool)

(assert (=> b!3980413 (=> (not res!1613033) (not e!2466625))))

(assert (=> b!3980413 (= res!1613033 (not ((_ is Nil!42548) suffix!1299)))))

(declare-fun b!3980416 () Bool)

(declare-fun e!2466626 () Bool)

(assert (=> b!3980416 (= e!2466626 (>= (size!31829 suffix!1299) (size!31829 newSuffix!27)))))

(declare-fun d!1178267 () Bool)

(assert (=> d!1178267 e!2466626))

(declare-fun res!1613036 () Bool)

(assert (=> d!1178267 (=> res!1613036 e!2466626)))

(declare-fun lt!1397803 () Bool)

(assert (=> d!1178267 (= res!1613036 (not lt!1397803))))

(assert (=> d!1178267 (= lt!1397803 e!2466624)))

(declare-fun res!1613034 () Bool)

(assert (=> d!1178267 (=> res!1613034 e!2466624)))

(assert (=> d!1178267 (= res!1613034 ((_ is Nil!42548) newSuffix!27))))

(assert (=> d!1178267 (= (isPrefix!3803 newSuffix!27 suffix!1299) lt!1397803)))

(declare-fun b!3980415 () Bool)

(assert (=> b!3980415 (= e!2466625 (isPrefix!3803 (tail!6208 newSuffix!27) (tail!6208 suffix!1299)))))

(declare-fun b!3980414 () Bool)

(declare-fun res!1613035 () Bool)

(assert (=> b!3980414 (=> (not res!1613035) (not e!2466625))))

(assert (=> b!3980414 (= res!1613035 (= (head!8477 newSuffix!27) (head!8477 suffix!1299)))))

(assert (= (and d!1178267 (not res!1613034)) b!3980413))

(assert (= (and b!3980413 res!1613033) b!3980414))

(assert (= (and b!3980414 res!1613035) b!3980415))

(assert (= (and d!1178267 (not res!1613036)) b!3980416))

(assert (=> b!3980416 m!4553189))

(assert (=> b!3980416 m!4553191))

(declare-fun m!4553571 () Bool)

(assert (=> b!3980415 m!4553571))

(declare-fun m!4553573 () Bool)

(assert (=> b!3980415 m!4553573))

(assert (=> b!3980415 m!4553571))

(assert (=> b!3980415 m!4553573))

(declare-fun m!4553575 () Bool)

(assert (=> b!3980415 m!4553575))

(declare-fun m!4553577 () Bool)

(assert (=> b!3980414 m!4553577))

(declare-fun m!4553579 () Bool)

(assert (=> b!3980414 m!4553579))

(assert (=> b!3980149 d!1178267))

(declare-fun d!1178271 () Bool)

(declare-fun lt!1397804 () Int)

(assert (=> d!1178271 (>= lt!1397804 0)))

(declare-fun e!2466627 () Int)

(assert (=> d!1178271 (= lt!1397804 e!2466627)))

(declare-fun c!689648 () Bool)

(assert (=> d!1178271 (= c!689648 ((_ is Nil!42548) lt!1397718))))

(assert (=> d!1178271 (= (size!31829 lt!1397718) lt!1397804)))

(declare-fun b!3980417 () Bool)

(assert (=> b!3980417 (= e!2466627 0)))

(declare-fun b!3980418 () Bool)

(assert (=> b!3980418 (= e!2466627 (+ 1 (size!31829 (t!331279 lt!1397718))))))

(assert (= (and d!1178271 c!689648) b!3980417))

(assert (= (and d!1178271 (not c!689648)) b!3980418))

(declare-fun m!4553581 () Bool)

(assert (=> b!3980418 m!4553581))

(assert (=> b!3980172 d!1178271))

(declare-fun b!3980419 () Bool)

(declare-fun e!2466628 () Bool)

(declare-fun e!2466629 () Bool)

(assert (=> b!3980419 (= e!2466628 e!2466629)))

(declare-fun res!1613037 () Bool)

(assert (=> b!3980419 (=> (not res!1613037) (not e!2466629))))

(assert (=> b!3980419 (= res!1613037 (not ((_ is Nil!42548) lt!1397682)))))

(declare-fun b!3980422 () Bool)

(declare-fun e!2466630 () Bool)

(assert (=> b!3980422 (= e!2466630 (>= (size!31829 lt!1397682) (size!31829 lt!1397722)))))

(declare-fun d!1178273 () Bool)

(assert (=> d!1178273 e!2466630))

(declare-fun res!1613040 () Bool)

(assert (=> d!1178273 (=> res!1613040 e!2466630)))

(declare-fun lt!1397805 () Bool)

(assert (=> d!1178273 (= res!1613040 (not lt!1397805))))

(assert (=> d!1178273 (= lt!1397805 e!2466628)))

(declare-fun res!1613038 () Bool)

(assert (=> d!1178273 (=> res!1613038 e!2466628)))

(assert (=> d!1178273 (= res!1613038 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178273 (= (isPrefix!3803 lt!1397722 lt!1397682) lt!1397805)))

(declare-fun b!3980421 () Bool)

(assert (=> b!3980421 (= e!2466629 (isPrefix!3803 (tail!6208 lt!1397722) (tail!6208 lt!1397682)))))

(declare-fun b!3980420 () Bool)

(declare-fun res!1613039 () Bool)

(assert (=> b!3980420 (=> (not res!1613039) (not e!2466629))))

(assert (=> b!3980420 (= res!1613039 (= (head!8477 lt!1397722) (head!8477 lt!1397682)))))

(assert (= (and d!1178273 (not res!1613038)) b!3980419))

(assert (= (and b!3980419 res!1613037) b!3980420))

(assert (= (and b!3980420 res!1613039) b!3980421))

(assert (= (and d!1178273 (not res!1613040)) b!3980422))

(declare-fun m!4553583 () Bool)

(assert (=> b!3980422 m!4553583))

(assert (=> b!3980422 m!4553149))

(declare-fun m!4553585 () Bool)

(assert (=> b!3980421 m!4553585))

(declare-fun m!4553587 () Bool)

(assert (=> b!3980421 m!4553587))

(assert (=> b!3980421 m!4553585))

(assert (=> b!3980421 m!4553587))

(declare-fun m!4553589 () Bool)

(assert (=> b!3980421 m!4553589))

(declare-fun m!4553591 () Bool)

(assert (=> b!3980420 m!4553591))

(declare-fun m!4553593 () Bool)

(assert (=> b!3980420 m!4553593))

(assert (=> b!3980172 d!1178273))

(declare-fun d!1178275 () Bool)

(assert (=> d!1178275 (isPrefix!3803 lt!1397722 (++!11118 lt!1397722 lt!1397710))))

(declare-fun lt!1397806 () Unit!61210)

(assert (=> d!1178275 (= lt!1397806 (choose!23876 lt!1397722 lt!1397710))))

(assert (=> d!1178275 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 lt!1397710) lt!1397806)))

(declare-fun bs!587925 () Bool)

(assert (= bs!587925 d!1178275))

(assert (=> bs!587925 m!4553239))

(assert (=> bs!587925 m!4553239))

(declare-fun m!4553595 () Bool)

(assert (=> bs!587925 m!4553595))

(declare-fun m!4553597 () Bool)

(assert (=> bs!587925 m!4553597))

(assert (=> b!3980172 d!1178275))

(declare-fun d!1178277 () Bool)

(declare-fun lt!1397807 () Int)

(assert (=> d!1178277 (>= lt!1397807 0)))

(declare-fun e!2466631 () Int)

(assert (=> d!1178277 (= lt!1397807 e!2466631)))

(declare-fun c!689649 () Bool)

(assert (=> d!1178277 (= c!689649 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178277 (= (size!31829 lt!1397693) lt!1397807)))

(declare-fun b!3980423 () Bool)

(assert (=> b!3980423 (= e!2466631 0)))

(declare-fun b!3980424 () Bool)

(assert (=> b!3980424 (= e!2466631 (+ 1 (size!31829 (t!331279 lt!1397693))))))

(assert (= (and d!1178277 c!689649) b!3980423))

(assert (= (and d!1178277 (not c!689649)) b!3980424))

(declare-fun m!4553599 () Bool)

(assert (=> b!3980424 m!4553599))

(assert (=> b!3980150 d!1178277))

(declare-fun d!1178279 () Bool)

(declare-fun lt!1397808 () Int)

(assert (=> d!1178279 (>= lt!1397808 0)))

(declare-fun e!2466632 () Int)

(assert (=> d!1178279 (= lt!1397808 e!2466632)))

(declare-fun c!689650 () Bool)

(assert (=> d!1178279 (= c!689650 ((_ is Nil!42548) prefix!494))))

(assert (=> d!1178279 (= (size!31829 prefix!494) lt!1397808)))

(declare-fun b!3980425 () Bool)

(assert (=> b!3980425 (= e!2466632 0)))

(declare-fun b!3980426 () Bool)

(assert (=> b!3980426 (= e!2466632 (+ 1 (size!31829 (t!331279 prefix!494))))))

(assert (= (and d!1178279 c!689650) b!3980425))

(assert (= (and d!1178279 (not c!689650)) b!3980426))

(declare-fun m!4553601 () Bool)

(assert (=> b!3980426 m!4553601))

(assert (=> b!3980150 d!1178279))

(declare-fun d!1178281 () Bool)

(declare-fun list!15794 (Conc!12927) List!42672)

(assert (=> d!1178281 (= (list!15792 (charsOf!4532 token!484)) (list!15794 (c!689606 (charsOf!4532 token!484))))))

(declare-fun bs!587927 () Bool)

(assert (= bs!587927 d!1178281))

(declare-fun m!4553607 () Bool)

(assert (=> bs!587927 m!4553607))

(assert (=> b!3980150 d!1178281))

(declare-fun d!1178285 () Bool)

(declare-fun lt!1397815 () BalanceConc!25448)

(assert (=> d!1178285 (= (list!15792 lt!1397815) (originalCharacters!7316 token!484))))

(declare-fun dynLambda!18104 (Int TokenValue!6946) BalanceConc!25448)

(assert (=> d!1178285 (= lt!1397815 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (value!212040 token!484)))))

(assert (=> d!1178285 (= (charsOf!4532 token!484) lt!1397815)))

(declare-fun b_lambda!116271 () Bool)

(assert (=> (not b_lambda!116271) (not d!1178285)))

(declare-fun t!331283 () Bool)

(declare-fun tb!239869 () Bool)

(assert (=> (and b!3980180 (= (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toChars!9063 (transformation!6716 (rule!9720 token!484)))) t!331283) tb!239869))

(declare-fun b!3980439 () Bool)

(declare-fun e!2466639 () Bool)

(declare-fun tp!1213383 () Bool)

(declare-fun inv!56845 (Conc!12927) Bool)

(assert (=> b!3980439 (= e!2466639 (and (inv!56845 (c!689606 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (value!212040 token!484)))) tp!1213383))))

(declare-fun result!290570 () Bool)

(declare-fun inv!56846 (BalanceConc!25448) Bool)

(assert (=> tb!239869 (= result!290570 (and (inv!56846 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (value!212040 token!484))) e!2466639))))

(assert (= tb!239869 b!3980439))

(declare-fun m!4553613 () Bool)

(assert (=> b!3980439 m!4553613))

(declare-fun m!4553615 () Bool)

(assert (=> tb!239869 m!4553615))

(assert (=> d!1178285 t!331283))

(declare-fun b_and!305943 () Bool)

(assert (= b_and!305937 (and (=> t!331283 result!290570) b_and!305943)))

(declare-fun t!331285 () Bool)

(declare-fun tb!239871 () Bool)

(assert (=> (and b!3980176 (= (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toChars!9063 (transformation!6716 (rule!9720 token!484)))) t!331285) tb!239871))

(declare-fun result!290574 () Bool)

(assert (= result!290574 result!290570))

(assert (=> d!1178285 t!331285))

(declare-fun b_and!305945 () Bool)

(assert (= b_and!305941 (and (=> t!331285 result!290574) b_and!305945)))

(declare-fun m!4553617 () Bool)

(assert (=> d!1178285 m!4553617))

(declare-fun m!4553619 () Bool)

(assert (=> d!1178285 m!4553619))

(assert (=> b!3980150 d!1178285))

(declare-fun b!3980441 () Bool)

(declare-fun e!2466640 () List!42672)

(assert (=> b!3980441 (= e!2466640 (Cons!42548 (h!47968 newSuffix!27) (++!11118 (t!331279 newSuffix!27) lt!1397687)))))

(declare-fun b!3980442 () Bool)

(declare-fun res!1613045 () Bool)

(declare-fun e!2466641 () Bool)

(assert (=> b!3980442 (=> (not res!1613045) (not e!2466641))))

(declare-fun lt!1397818 () List!42672)

(assert (=> b!3980442 (= res!1613045 (= (size!31829 lt!1397818) (+ (size!31829 newSuffix!27) (size!31829 lt!1397687))))))

(declare-fun d!1178289 () Bool)

(assert (=> d!1178289 e!2466641))

(declare-fun res!1613046 () Bool)

(assert (=> d!1178289 (=> (not res!1613046) (not e!2466641))))

(assert (=> d!1178289 (= res!1613046 (= (content!6450 lt!1397818) ((_ map or) (content!6450 newSuffix!27) (content!6450 lt!1397687))))))

(assert (=> d!1178289 (= lt!1397818 e!2466640)))

(declare-fun c!689653 () Bool)

(assert (=> d!1178289 (= c!689653 ((_ is Nil!42548) newSuffix!27))))

(assert (=> d!1178289 (= (++!11118 newSuffix!27 lt!1397687) lt!1397818)))

(declare-fun b!3980440 () Bool)

(assert (=> b!3980440 (= e!2466640 lt!1397687)))

(declare-fun b!3980443 () Bool)

(assert (=> b!3980443 (= e!2466641 (or (not (= lt!1397687 Nil!42548)) (= lt!1397818 newSuffix!27)))))

(assert (= (and d!1178289 c!689653) b!3980440))

(assert (= (and d!1178289 (not c!689653)) b!3980441))

(assert (= (and d!1178289 res!1613046) b!3980442))

(assert (= (and b!3980442 res!1613045) b!3980443))

(declare-fun m!4553621 () Bool)

(assert (=> b!3980441 m!4553621))

(declare-fun m!4553623 () Bool)

(assert (=> b!3980442 m!4553623))

(assert (=> b!3980442 m!4553191))

(assert (=> b!3980442 m!4553393))

(declare-fun m!4553625 () Bool)

(assert (=> d!1178289 m!4553625))

(assert (=> d!1178289 m!4553413))

(assert (=> d!1178289 m!4553399))

(assert (=> b!3980164 d!1178289))

(declare-fun d!1178291 () Bool)

(declare-fun lt!1397819 () List!42672)

(assert (=> d!1178291 (= (++!11118 newSuffix!27 lt!1397819) suffix!1299)))

(declare-fun e!2466642 () List!42672)

(assert (=> d!1178291 (= lt!1397819 e!2466642)))

(declare-fun c!689654 () Bool)

(assert (=> d!1178291 (= c!689654 ((_ is Cons!42548) newSuffix!27))))

(assert (=> d!1178291 (>= (size!31829 suffix!1299) (size!31829 newSuffix!27))))

(assert (=> d!1178291 (= (getSuffix!2234 suffix!1299 newSuffix!27) lt!1397819)))

(declare-fun b!3980444 () Bool)

(assert (=> b!3980444 (= e!2466642 (getSuffix!2234 (tail!6208 suffix!1299) (t!331279 newSuffix!27)))))

(declare-fun b!3980445 () Bool)

(assert (=> b!3980445 (= e!2466642 suffix!1299)))

(assert (= (and d!1178291 c!689654) b!3980444))

(assert (= (and d!1178291 (not c!689654)) b!3980445))

(declare-fun m!4553627 () Bool)

(assert (=> d!1178291 m!4553627))

(assert (=> d!1178291 m!4553189))

(assert (=> d!1178291 m!4553191))

(assert (=> b!3980444 m!4553573))

(assert (=> b!3980444 m!4553573))

(declare-fun m!4553629 () Bool)

(assert (=> b!3980444 m!4553629))

(assert (=> b!3980164 d!1178291))

(declare-fun d!1178293 () Bool)

(assert (=> d!1178293 (= lt!1397728 suffixResult!105)))

(declare-fun lt!1397820 () Unit!61210)

(assert (=> d!1178293 (= lt!1397820 (choose!23874 lt!1397693 lt!1397728 lt!1397693 suffixResult!105 lt!1397684))))

(assert (=> d!1178293 (isPrefix!3803 lt!1397693 lt!1397684)))

(assert (=> d!1178293 (= (lemmaSamePrefixThenSameSuffix!1990 lt!1397693 lt!1397728 lt!1397693 suffixResult!105 lt!1397684) lt!1397820)))

(declare-fun bs!587929 () Bool)

(assert (= bs!587929 d!1178293))

(declare-fun m!4553631 () Bool)

(assert (=> bs!587929 m!4553631))

(assert (=> bs!587929 m!4553209))

(assert (=> b!3980145 d!1178293))

(declare-fun d!1178295 () Bool)

(declare-fun dynLambda!18105 (Int BalanceConc!25448) TokenValue!6946)

(assert (=> d!1178295 (= (apply!9927 (transformation!6716 (rule!9720 token!484)) (seqFromList!4955 lt!1397693)) (dynLambda!18105 (toValue!9204 (transformation!6716 (rule!9720 token!484))) (seqFromList!4955 lt!1397693)))))

(declare-fun b_lambda!116273 () Bool)

(assert (=> (not b_lambda!116273) (not d!1178295)))

(declare-fun t!331287 () Bool)

(declare-fun tb!239873 () Bool)

(assert (=> (and b!3980180 (= (toValue!9204 (transformation!6716 (h!47970 rules!2999))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))) t!331287) tb!239873))

(declare-fun result!290576 () Bool)

(assert (=> tb!239873 (= result!290576 (inv!21 (dynLambda!18105 (toValue!9204 (transformation!6716 (rule!9720 token!484))) (seqFromList!4955 lt!1397693))))))

(declare-fun m!4553645 () Bool)

(assert (=> tb!239873 m!4553645))

(assert (=> d!1178295 t!331287))

(declare-fun b_and!305947 () Bool)

(assert (= b_and!305935 (and (=> t!331287 result!290576) b_and!305947)))

(declare-fun t!331289 () Bool)

(declare-fun tb!239875 () Bool)

(assert (=> (and b!3980176 (= (toValue!9204 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))) t!331289) tb!239875))

(declare-fun result!290580 () Bool)

(assert (= result!290580 result!290576))

(assert (=> d!1178295 t!331289))

(declare-fun b_and!305949 () Bool)

(assert (= b_and!305939 (and (=> t!331289 result!290580) b_and!305949)))

(assert (=> d!1178295 m!4553167))

(declare-fun m!4553647 () Bool)

(assert (=> d!1178295 m!4553647))

(assert (=> b!3980145 d!1178295))

(declare-fun d!1178299 () Bool)

(declare-fun fromListB!2278 (List!42672) BalanceConc!25448)

(assert (=> d!1178299 (= (seqFromList!4955 lt!1397693) (fromListB!2278 lt!1397693))))

(declare-fun bs!587930 () Bool)

(assert (= bs!587930 d!1178299))

(declare-fun m!4553649 () Bool)

(assert (=> bs!587930 m!4553649))

(assert (=> b!3980145 d!1178299))

(declare-fun d!1178301 () Bool)

(assert (=> d!1178301 (isPrefix!3803 lt!1397693 (++!11118 lt!1397693 lt!1397728))))

(declare-fun lt!1397822 () Unit!61210)

(assert (=> d!1178301 (= lt!1397822 (choose!23876 lt!1397693 lt!1397728))))

(assert (=> d!1178301 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397693 lt!1397728) lt!1397822)))

(declare-fun bs!587931 () Bool)

(assert (= bs!587931 d!1178301))

(assert (=> bs!587931 m!4553123))

(assert (=> bs!587931 m!4553123))

(declare-fun m!4553651 () Bool)

(assert (=> bs!587931 m!4553651))

(declare-fun m!4553653 () Bool)

(assert (=> bs!587931 m!4553653))

(assert (=> b!3980145 d!1178301))

(declare-fun d!1178303 () Bool)

(assert (=> d!1178303 (= (maxPrefixOneRule!2637 thiss!21717 (rule!9720 token!484) lt!1397684) (Some!9129 (tuple2!41777 (Token!12571 (apply!9927 (transformation!6716 (rule!9720 token!484)) (seqFromList!4955 lt!1397693)) (rule!9720 token!484) (size!31829 lt!1397693) lt!1397693) suffixResult!105)))))

(declare-fun lt!1397839 () Unit!61210)

(declare-fun choose!23882 (LexerInterface!6305 List!42674 List!42672 List!42672 List!42672 Rule!13232) Unit!61210)

(assert (=> d!1178303 (= lt!1397839 (choose!23882 thiss!21717 rules!2999 lt!1397693 lt!1397684 suffixResult!105 (rule!9720 token!484)))))

(assert (=> d!1178303 (not (isEmpty!25440 rules!2999))))

(assert (=> d!1178303 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1459 thiss!21717 rules!2999 lt!1397693 lt!1397684 suffixResult!105 (rule!9720 token!484)) lt!1397839)))

(declare-fun bs!587934 () Bool)

(assert (= bs!587934 d!1178303))

(assert (=> bs!587934 m!4553175))

(assert (=> bs!587934 m!4553167))

(declare-fun m!4553707 () Bool)

(assert (=> bs!587934 m!4553707))

(assert (=> bs!587934 m!4553263))

(assert (=> bs!587934 m!4553251))

(assert (=> bs!587934 m!4553167))

(assert (=> bs!587934 m!4553171))

(assert (=> b!3980145 d!1178303))

(declare-fun b!3980534 () Bool)

(declare-fun e!2466697 () Bool)

(declare-datatypes ((tuple2!41780 0))(
  ( (tuple2!41781 (_1!24024 List!42672) (_2!24024 List!42672)) )
))
(declare-fun findLongestMatchInner!1320 (Regex!11621 List!42672 Int List!42672 List!42672 Int) tuple2!41780)

(assert (=> b!3980534 (= e!2466697 (matchR!5598 (regex!6716 (rule!9720 token!484)) (_1!24024 (findLongestMatchInner!1320 (regex!6716 (rule!9720 token!484)) Nil!42548 (size!31829 Nil!42548) lt!1397684 lt!1397684 (size!31829 lt!1397684)))))))

(declare-fun b!3980535 () Bool)

(declare-fun e!2466698 () Bool)

(declare-fun e!2466696 () Bool)

(assert (=> b!3980535 (= e!2466698 e!2466696)))

(declare-fun res!1613100 () Bool)

(assert (=> b!3980535 (=> (not res!1613100) (not e!2466696))))

(declare-fun lt!1397870 () Option!9130)

(assert (=> b!3980535 (= res!1613100 (matchR!5598 (regex!6716 (rule!9720 token!484)) (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397870))))))))

(declare-fun d!1178325 () Bool)

(assert (=> d!1178325 e!2466698))

(declare-fun res!1613102 () Bool)

(assert (=> d!1178325 (=> res!1613102 e!2466698)))

(assert (=> d!1178325 (= res!1613102 (isEmpty!25442 lt!1397870))))

(declare-fun e!2466699 () Option!9130)

(assert (=> d!1178325 (= lt!1397870 e!2466699)))

(declare-fun c!689669 () Bool)

(declare-fun lt!1397871 () tuple2!41780)

(assert (=> d!1178325 (= c!689669 (isEmpty!25443 (_1!24024 lt!1397871)))))

(declare-fun findLongestMatch!1233 (Regex!11621 List!42672) tuple2!41780)

(assert (=> d!1178325 (= lt!1397871 (findLongestMatch!1233 (regex!6716 (rule!9720 token!484)) lt!1397684))))

(assert (=> d!1178325 (ruleValid!2648 thiss!21717 (rule!9720 token!484))))

(assert (=> d!1178325 (= (maxPrefixOneRule!2637 thiss!21717 (rule!9720 token!484) lt!1397684) lt!1397870)))

(declare-fun b!3980536 () Bool)

(assert (=> b!3980536 (= e!2466696 (= (size!31828 (_1!24022 (get!14009 lt!1397870))) (size!31829 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397870))))))))

(declare-fun b!3980537 () Bool)

(declare-fun res!1613098 () Bool)

(assert (=> b!3980537 (=> (not res!1613098) (not e!2466696))))

(assert (=> b!3980537 (= res!1613098 (= (++!11118 (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397870)))) (_2!24022 (get!14009 lt!1397870))) lt!1397684))))

(declare-fun b!3980538 () Bool)

(declare-fun res!1613104 () Bool)

(assert (=> b!3980538 (=> (not res!1613104) (not e!2466696))))

(assert (=> b!3980538 (= res!1613104 (< (size!31829 (_2!24022 (get!14009 lt!1397870))) (size!31829 lt!1397684)))))

(declare-fun b!3980539 () Bool)

(declare-fun res!1613101 () Bool)

(assert (=> b!3980539 (=> (not res!1613101) (not e!2466696))))

(assert (=> b!3980539 (= res!1613101 (= (value!212040 (_1!24022 (get!14009 lt!1397870))) (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (get!14009 lt!1397870)))) (seqFromList!4955 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397870)))))))))

(declare-fun b!3980540 () Bool)

(declare-fun size!31831 (BalanceConc!25448) Int)

(assert (=> b!3980540 (= e!2466699 (Some!9129 (tuple2!41777 (Token!12571 (apply!9927 (transformation!6716 (rule!9720 token!484)) (seqFromList!4955 (_1!24024 lt!1397871))) (rule!9720 token!484) (size!31831 (seqFromList!4955 (_1!24024 lt!1397871))) (_1!24024 lt!1397871)) (_2!24024 lt!1397871))))))

(declare-fun lt!1397869 () Unit!61210)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1293 (Regex!11621 List!42672) Unit!61210)

(assert (=> b!3980540 (= lt!1397869 (longestMatchIsAcceptedByMatchOrIsEmpty!1293 (regex!6716 (rule!9720 token!484)) lt!1397684))))

(declare-fun res!1613099 () Bool)

(assert (=> b!3980540 (= res!1613099 (isEmpty!25443 (_1!24024 (findLongestMatchInner!1320 (regex!6716 (rule!9720 token!484)) Nil!42548 (size!31829 Nil!42548) lt!1397684 lt!1397684 (size!31829 lt!1397684)))))))

(assert (=> b!3980540 (=> res!1613099 e!2466697)))

(assert (=> b!3980540 e!2466697))

(declare-fun lt!1397868 () Unit!61210)

(assert (=> b!3980540 (= lt!1397868 lt!1397869)))

(declare-fun lt!1397872 () Unit!61210)

(declare-fun lemmaSemiInverse!1832 (TokenValueInjection!13320 BalanceConc!25448) Unit!61210)

(assert (=> b!3980540 (= lt!1397872 (lemmaSemiInverse!1832 (transformation!6716 (rule!9720 token!484)) (seqFromList!4955 (_1!24024 lt!1397871))))))

(declare-fun b!3980541 () Bool)

(declare-fun res!1613103 () Bool)

(assert (=> b!3980541 (=> (not res!1613103) (not e!2466696))))

(assert (=> b!3980541 (= res!1613103 (= (rule!9720 (_1!24022 (get!14009 lt!1397870))) (rule!9720 token!484)))))

(declare-fun b!3980542 () Bool)

(assert (=> b!3980542 (= e!2466699 None!9129)))

(assert (= (and d!1178325 c!689669) b!3980542))

(assert (= (and d!1178325 (not c!689669)) b!3980540))

(assert (= (and b!3980540 (not res!1613099)) b!3980534))

(assert (= (and d!1178325 (not res!1613102)) b!3980535))

(assert (= (and b!3980535 res!1613100) b!3980537))

(assert (= (and b!3980537 res!1613098) b!3980538))

(assert (= (and b!3980538 res!1613104) b!3980541))

(assert (= (and b!3980541 res!1613103) b!3980539))

(assert (= (and b!3980539 res!1613101) b!3980536))

(declare-fun m!4553787 () Bool)

(assert (=> b!3980534 m!4553787))

(assert (=> b!3980534 m!4553437))

(assert (=> b!3980534 m!4553787))

(assert (=> b!3980534 m!4553437))

(declare-fun m!4553789 () Bool)

(assert (=> b!3980534 m!4553789))

(declare-fun m!4553791 () Bool)

(assert (=> b!3980534 m!4553791))

(declare-fun m!4553793 () Bool)

(assert (=> b!3980538 m!4553793))

(declare-fun m!4553795 () Bool)

(assert (=> b!3980538 m!4553795))

(assert (=> b!3980538 m!4553437))

(assert (=> b!3980537 m!4553793))

(declare-fun m!4553797 () Bool)

(assert (=> b!3980537 m!4553797))

(assert (=> b!3980537 m!4553797))

(declare-fun m!4553799 () Bool)

(assert (=> b!3980537 m!4553799))

(assert (=> b!3980537 m!4553799))

(declare-fun m!4553801 () Bool)

(assert (=> b!3980537 m!4553801))

(declare-fun m!4553803 () Bool)

(assert (=> d!1178325 m!4553803))

(declare-fun m!4553805 () Bool)

(assert (=> d!1178325 m!4553805))

(declare-fun m!4553807 () Bool)

(assert (=> d!1178325 m!4553807))

(assert (=> d!1178325 m!4553231))

(assert (=> b!3980541 m!4553793))

(assert (=> b!3980536 m!4553793))

(declare-fun m!4553809 () Bool)

(assert (=> b!3980536 m!4553809))

(assert (=> b!3980539 m!4553793))

(declare-fun m!4553811 () Bool)

(assert (=> b!3980539 m!4553811))

(assert (=> b!3980539 m!4553811))

(declare-fun m!4553813 () Bool)

(assert (=> b!3980539 m!4553813))

(assert (=> b!3980535 m!4553793))

(assert (=> b!3980535 m!4553797))

(assert (=> b!3980535 m!4553797))

(assert (=> b!3980535 m!4553799))

(assert (=> b!3980535 m!4553799))

(declare-fun m!4553815 () Bool)

(assert (=> b!3980535 m!4553815))

(declare-fun m!4553817 () Bool)

(assert (=> b!3980540 m!4553817))

(declare-fun m!4553819 () Bool)

(assert (=> b!3980540 m!4553819))

(assert (=> b!3980540 m!4553787))

(assert (=> b!3980540 m!4553437))

(assert (=> b!3980540 m!4553789))

(assert (=> b!3980540 m!4553819))

(declare-fun m!4553821 () Bool)

(assert (=> b!3980540 m!4553821))

(declare-fun m!4553823 () Bool)

(assert (=> b!3980540 m!4553823))

(assert (=> b!3980540 m!4553437))

(assert (=> b!3980540 m!4553787))

(assert (=> b!3980540 m!4553819))

(declare-fun m!4553825 () Bool)

(assert (=> b!3980540 m!4553825))

(assert (=> b!3980540 m!4553819))

(declare-fun m!4553827 () Bool)

(assert (=> b!3980540 m!4553827))

(assert (=> b!3980145 d!1178325))

(declare-fun b!3980543 () Bool)

(declare-fun e!2466700 () Bool)

(declare-fun e!2466701 () Bool)

(assert (=> b!3980543 (= e!2466700 e!2466701)))

(declare-fun res!1613105 () Bool)

(assert (=> b!3980543 (=> (not res!1613105) (not e!2466701))))

(assert (=> b!3980543 (= res!1613105 (not ((_ is Nil!42548) lt!1397697)))))

(declare-fun b!3980546 () Bool)

(declare-fun e!2466702 () Bool)

(assert (=> b!3980546 (= e!2466702 (>= (size!31829 lt!1397697) (size!31829 lt!1397693)))))

(declare-fun d!1178361 () Bool)

(assert (=> d!1178361 e!2466702))

(declare-fun res!1613108 () Bool)

(assert (=> d!1178361 (=> res!1613108 e!2466702)))

(declare-fun lt!1397873 () Bool)

(assert (=> d!1178361 (= res!1613108 (not lt!1397873))))

(assert (=> d!1178361 (= lt!1397873 e!2466700)))

(declare-fun res!1613106 () Bool)

(assert (=> d!1178361 (=> res!1613106 e!2466700)))

(assert (=> d!1178361 (= res!1613106 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178361 (= (isPrefix!3803 lt!1397693 lt!1397697) lt!1397873)))

(declare-fun b!3980545 () Bool)

(assert (=> b!3980545 (= e!2466701 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 lt!1397697)))))

(declare-fun b!3980544 () Bool)

(declare-fun res!1613107 () Bool)

(assert (=> b!3980544 (=> (not res!1613107) (not e!2466701))))

(assert (=> b!3980544 (= res!1613107 (= (head!8477 lt!1397693) (head!8477 lt!1397697)))))

(assert (= (and d!1178361 (not res!1613106)) b!3980543))

(assert (= (and b!3980543 res!1613105) b!3980544))

(assert (= (and b!3980544 res!1613107) b!3980545))

(assert (= (and d!1178361 (not res!1613108)) b!3980546))

(declare-fun m!4553829 () Bool)

(assert (=> b!3980546 m!4553829))

(assert (=> b!3980546 m!4553263))

(assert (=> b!3980545 m!4553487))

(declare-fun m!4553831 () Bool)

(assert (=> b!3980545 m!4553831))

(assert (=> b!3980545 m!4553487))

(assert (=> b!3980545 m!4553831))

(declare-fun m!4553833 () Bool)

(assert (=> b!3980545 m!4553833))

(assert (=> b!3980544 m!4553493))

(declare-fun m!4553835 () Bool)

(assert (=> b!3980544 m!4553835))

(assert (=> b!3980145 d!1178361))

(declare-fun d!1178363 () Bool)

(declare-fun res!1613113 () Bool)

(declare-fun e!2466705 () Bool)

(assert (=> d!1178363 (=> (not res!1613113) (not e!2466705))))

(assert (=> d!1178363 (= res!1613113 (not (isEmpty!25443 (originalCharacters!7316 token!484))))))

(assert (=> d!1178363 (= (inv!56841 token!484) e!2466705)))

(declare-fun b!3980553 () Bool)

(declare-fun res!1613114 () Bool)

(assert (=> b!3980553 (=> (not res!1613114) (not e!2466705))))

(assert (=> b!3980553 (= res!1613114 (= (originalCharacters!7316 token!484) (list!15792 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (value!212040 token!484)))))))

(declare-fun b!3980554 () Bool)

(assert (=> b!3980554 (= e!2466705 (= (size!31828 token!484) (size!31829 (originalCharacters!7316 token!484))))))

(assert (= (and d!1178363 res!1613113) b!3980553))

(assert (= (and b!3980553 res!1613114) b!3980554))

(declare-fun b_lambda!116279 () Bool)

(assert (=> (not b_lambda!116279) (not b!3980553)))

(assert (=> b!3980553 t!331283))

(declare-fun b_and!305959 () Bool)

(assert (= b_and!305943 (and (=> t!331283 result!290570) b_and!305959)))

(assert (=> b!3980553 t!331285))

(declare-fun b_and!305961 () Bool)

(assert (= b_and!305945 (and (=> t!331285 result!290574) b_and!305961)))

(declare-fun m!4553837 () Bool)

(assert (=> d!1178363 m!4553837))

(assert (=> b!3980553 m!4553619))

(assert (=> b!3980553 m!4553619))

(declare-fun m!4553839 () Bool)

(assert (=> b!3980553 m!4553839))

(assert (=> b!3980554 m!4553225))

(assert (=> start!374604 d!1178363))

(declare-fun b!3980559 () Bool)

(declare-fun e!2466710 () Bool)

(declare-fun e!2466711 () Bool)

(assert (=> b!3980559 (= e!2466710 e!2466711)))

(declare-fun res!1613117 () Bool)

(assert (=> b!3980559 (=> (not res!1613117) (not e!2466711))))

(assert (=> b!3980559 (= res!1613117 (not ((_ is Nil!42548) lt!1397702)))))

(declare-fun b!3980562 () Bool)

(declare-fun e!2466712 () Bool)

(assert (=> b!3980562 (= e!2466712 (>= (size!31829 lt!1397702) (size!31829 lt!1397722)))))

(declare-fun d!1178365 () Bool)

(assert (=> d!1178365 e!2466712))

(declare-fun res!1613120 () Bool)

(assert (=> d!1178365 (=> res!1613120 e!2466712)))

(declare-fun lt!1397884 () Bool)

(assert (=> d!1178365 (= res!1613120 (not lt!1397884))))

(assert (=> d!1178365 (= lt!1397884 e!2466710)))

(declare-fun res!1613118 () Bool)

(assert (=> d!1178365 (=> res!1613118 e!2466710)))

(assert (=> d!1178365 (= res!1613118 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178365 (= (isPrefix!3803 lt!1397722 lt!1397702) lt!1397884)))

(declare-fun b!3980561 () Bool)

(assert (=> b!3980561 (= e!2466711 (isPrefix!3803 (tail!6208 lt!1397722) (tail!6208 lt!1397702)))))

(declare-fun b!3980560 () Bool)

(declare-fun res!1613119 () Bool)

(assert (=> b!3980560 (=> (not res!1613119) (not e!2466711))))

(assert (=> b!3980560 (= res!1613119 (= (head!8477 lt!1397722) (head!8477 lt!1397702)))))

(assert (= (and d!1178365 (not res!1613118)) b!3980559))

(assert (= (and b!3980559 res!1613117) b!3980560))

(assert (= (and b!3980560 res!1613119) b!3980561))

(assert (= (and d!1178365 (not res!1613120)) b!3980562))

(declare-fun m!4553841 () Bool)

(assert (=> b!3980562 m!4553841))

(assert (=> b!3980562 m!4553149))

(assert (=> b!3980561 m!4553585))

(declare-fun m!4553843 () Bool)

(assert (=> b!3980561 m!4553843))

(assert (=> b!3980561 m!4553585))

(assert (=> b!3980561 m!4553843))

(declare-fun m!4553845 () Bool)

(assert (=> b!3980561 m!4553845))

(assert (=> b!3980560 m!4553591))

(declare-fun m!4553847 () Bool)

(assert (=> b!3980560 m!4553847))

(assert (=> b!3980166 d!1178365))

(declare-fun d!1178367 () Bool)

(assert (=> d!1178367 (= (seqFromList!4955 lt!1397722) (fromListB!2278 lt!1397722))))

(declare-fun bs!587943 () Bool)

(assert (= bs!587943 d!1178367))

(declare-fun m!4553849 () Bool)

(assert (=> bs!587943 m!4553849))

(assert (=> b!3980166 d!1178367))

(declare-fun b!3980572 () Bool)

(declare-fun e!2466717 () List!42672)

(assert (=> b!3980572 (= e!2466717 (Cons!42548 (h!47968 lt!1397722) (++!11118 (t!331279 lt!1397722) newSuffixResult!27)))))

(declare-fun b!3980573 () Bool)

(declare-fun res!1613129 () Bool)

(declare-fun e!2466718 () Bool)

(assert (=> b!3980573 (=> (not res!1613129) (not e!2466718))))

(declare-fun lt!1397885 () List!42672)

(assert (=> b!3980573 (= res!1613129 (= (size!31829 lt!1397885) (+ (size!31829 lt!1397722) (size!31829 newSuffixResult!27))))))

(declare-fun d!1178369 () Bool)

(assert (=> d!1178369 e!2466718))

(declare-fun res!1613132 () Bool)

(assert (=> d!1178369 (=> (not res!1613132) (not e!2466718))))

(assert (=> d!1178369 (= res!1613132 (= (content!6450 lt!1397885) ((_ map or) (content!6450 lt!1397722) (content!6450 newSuffixResult!27))))))

(assert (=> d!1178369 (= lt!1397885 e!2466717)))

(declare-fun c!689672 () Bool)

(assert (=> d!1178369 (= c!689672 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178369 (= (++!11118 lt!1397722 newSuffixResult!27) lt!1397885)))

(declare-fun b!3980571 () Bool)

(assert (=> b!3980571 (= e!2466717 newSuffixResult!27)))

(declare-fun b!3980574 () Bool)

(assert (=> b!3980574 (= e!2466718 (or (not (= newSuffixResult!27 Nil!42548)) (= lt!1397885 lt!1397722)))))

(assert (= (and d!1178369 c!689672) b!3980571))

(assert (= (and d!1178369 (not c!689672)) b!3980572))

(assert (= (and d!1178369 res!1613132) b!3980573))

(assert (= (and b!3980573 res!1613129) b!3980574))

(declare-fun m!4553851 () Bool)

(assert (=> b!3980572 m!4553851))

(declare-fun m!4553853 () Bool)

(assert (=> b!3980573 m!4553853))

(assert (=> b!3980573 m!4553149))

(assert (=> b!3980573 m!4553419))

(declare-fun m!4553855 () Bool)

(assert (=> d!1178369 m!4553855))

(assert (=> d!1178369 m!4553367))

(assert (=> d!1178369 m!4553423))

(assert (=> b!3980166 d!1178369))

(declare-fun d!1178371 () Bool)

(declare-fun res!1613135 () Bool)

(declare-fun e!2466719 () Bool)

(assert (=> d!1178371 (=> (not res!1613135) (not e!2466719))))

(assert (=> d!1178371 (= res!1613135 (validRegex!5275 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))))

(assert (=> d!1178371 (= (ruleValid!2648 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) e!2466719)))

(declare-fun b!3980579 () Bool)

(declare-fun res!1613136 () Bool)

(assert (=> b!3980579 (=> (not res!1613136) (not e!2466719))))

(assert (=> b!3980579 (= res!1613136 (not (nullable!4075 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))))

(declare-fun b!3980580 () Bool)

(assert (=> b!3980580 (= e!2466719 (not (= (tag!7576 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (String!48449 ""))))))

(assert (= (and d!1178371 res!1613135) b!3980579))

(assert (= (and b!3980579 res!1613136) b!3980580))

(declare-fun m!4553857 () Bool)

(assert (=> d!1178371 m!4553857))

(declare-fun m!4553859 () Bool)

(assert (=> b!3980579 m!4553859))

(assert (=> b!3980166 d!1178371))

(declare-fun b!3980582 () Bool)

(declare-fun e!2466720 () List!42672)

(assert (=> b!3980582 (= e!2466720 (Cons!42548 (h!47968 lt!1397722) (++!11118 (t!331279 lt!1397722) (_2!24022 (v!39477 lt!1397695)))))))

(declare-fun b!3980583 () Bool)

(declare-fun res!1613137 () Bool)

(declare-fun e!2466721 () Bool)

(assert (=> b!3980583 (=> (not res!1613137) (not e!2466721))))

(declare-fun lt!1397886 () List!42672)

(assert (=> b!3980583 (= res!1613137 (= (size!31829 lt!1397886) (+ (size!31829 lt!1397722) (size!31829 (_2!24022 (v!39477 lt!1397695))))))))

(declare-fun d!1178373 () Bool)

(assert (=> d!1178373 e!2466721))

(declare-fun res!1613138 () Bool)

(assert (=> d!1178373 (=> (not res!1613138) (not e!2466721))))

(assert (=> d!1178373 (= res!1613138 (= (content!6450 lt!1397886) ((_ map or) (content!6450 lt!1397722) (content!6450 (_2!24022 (v!39477 lt!1397695))))))))

(assert (=> d!1178373 (= lt!1397886 e!2466720)))

(declare-fun c!689673 () Bool)

(assert (=> d!1178373 (= c!689673 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178373 (= (++!11118 lt!1397722 (_2!24022 (v!39477 lt!1397695))) lt!1397886)))

(declare-fun b!3980581 () Bool)

(assert (=> b!3980581 (= e!2466720 (_2!24022 (v!39477 lt!1397695)))))

(declare-fun b!3980584 () Bool)

(assert (=> b!3980584 (= e!2466721 (or (not (= (_2!24022 (v!39477 lt!1397695)) Nil!42548)) (= lt!1397886 lt!1397722)))))

(assert (= (and d!1178373 c!689673) b!3980581))

(assert (= (and d!1178373 (not c!689673)) b!3980582))

(assert (= (and d!1178373 res!1613138) b!3980583))

(assert (= (and b!3980583 res!1613137) b!3980584))

(declare-fun m!4553861 () Bool)

(assert (=> b!3980582 m!4553861))

(declare-fun m!4553863 () Bool)

(assert (=> b!3980583 m!4553863))

(assert (=> b!3980583 m!4553149))

(declare-fun m!4553865 () Bool)

(assert (=> b!3980583 m!4553865))

(declare-fun m!4553867 () Bool)

(assert (=> d!1178373 m!4553867))

(assert (=> d!1178373 m!4553367))

(declare-fun m!4553869 () Bool)

(assert (=> d!1178373 m!4553869))

(assert (=> b!3980166 d!1178373))

(declare-fun b!3980585 () Bool)

(declare-fun e!2466722 () Bool)

(declare-fun e!2466723 () Bool)

(assert (=> b!3980585 (= e!2466722 e!2466723)))

(declare-fun res!1613139 () Bool)

(assert (=> b!3980585 (=> (not res!1613139) (not e!2466723))))

(assert (=> b!3980585 (= res!1613139 (not ((_ is Nil!42548) (++!11118 lt!1397722 newSuffixResult!27))))))

(declare-fun b!3980588 () Bool)

(declare-fun e!2466724 () Bool)

(assert (=> b!3980588 (= e!2466724 (>= (size!31829 (++!11118 lt!1397722 newSuffixResult!27)) (size!31829 lt!1397722)))))

(declare-fun d!1178375 () Bool)

(assert (=> d!1178375 e!2466724))

(declare-fun res!1613142 () Bool)

(assert (=> d!1178375 (=> res!1613142 e!2466724)))

(declare-fun lt!1397887 () Bool)

(assert (=> d!1178375 (= res!1613142 (not lt!1397887))))

(assert (=> d!1178375 (= lt!1397887 e!2466722)))

(declare-fun res!1613140 () Bool)

(assert (=> d!1178375 (=> res!1613140 e!2466722)))

(assert (=> d!1178375 (= res!1613140 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178375 (= (isPrefix!3803 lt!1397722 (++!11118 lt!1397722 newSuffixResult!27)) lt!1397887)))

(declare-fun b!3980587 () Bool)

(assert (=> b!3980587 (= e!2466723 (isPrefix!3803 (tail!6208 lt!1397722) (tail!6208 (++!11118 lt!1397722 newSuffixResult!27))))))

(declare-fun b!3980586 () Bool)

(declare-fun res!1613141 () Bool)

(assert (=> b!3980586 (=> (not res!1613141) (not e!2466723))))

(assert (=> b!3980586 (= res!1613141 (= (head!8477 lt!1397722) (head!8477 (++!11118 lt!1397722 newSuffixResult!27))))))

(assert (= (and d!1178375 (not res!1613140)) b!3980585))

(assert (= (and b!3980585 res!1613139) b!3980586))

(assert (= (and b!3980586 res!1613141) b!3980587))

(assert (= (and d!1178375 (not res!1613142)) b!3980588))

(assert (=> b!3980588 m!4553131))

(declare-fun m!4553871 () Bool)

(assert (=> b!3980588 m!4553871))

(assert (=> b!3980588 m!4553149))

(assert (=> b!3980587 m!4553585))

(assert (=> b!3980587 m!4553131))

(declare-fun m!4553873 () Bool)

(assert (=> b!3980587 m!4553873))

(assert (=> b!3980587 m!4553585))

(assert (=> b!3980587 m!4553873))

(declare-fun m!4553875 () Bool)

(assert (=> b!3980587 m!4553875))

(assert (=> b!3980586 m!4553591))

(assert (=> b!3980586 m!4553131))

(declare-fun m!4553877 () Bool)

(assert (=> b!3980586 m!4553877))

(assert (=> b!3980166 d!1178375))

(declare-fun d!1178377 () Bool)

(assert (=> d!1178377 (= (list!15792 (charsOf!4532 (_1!24022 (v!39477 lt!1397695)))) (list!15794 (c!689606 (charsOf!4532 (_1!24022 (v!39477 lt!1397695))))))))

(declare-fun bs!587944 () Bool)

(assert (= bs!587944 d!1178377))

(declare-fun m!4553879 () Bool)

(assert (=> bs!587944 m!4553879))

(assert (=> b!3980166 d!1178377))

(declare-fun d!1178379 () Bool)

(assert (=> d!1178379 (= (size!31828 (_1!24022 (v!39477 lt!1397695))) (size!31829 (originalCharacters!7316 (_1!24022 (v!39477 lt!1397695)))))))

(declare-fun Unit!61217 () Unit!61210)

(assert (=> d!1178379 (= (lemmaCharactersSize!1311 (_1!24022 (v!39477 lt!1397695))) Unit!61217)))

(declare-fun bs!587945 () Bool)

(assert (= bs!587945 d!1178379))

(declare-fun m!4553881 () Bool)

(assert (=> bs!587945 m!4553881))

(assert (=> b!3980166 d!1178379))

(declare-fun d!1178381 () Bool)

(assert (=> d!1178381 (isPrefix!3803 lt!1397722 (++!11118 lt!1397722 newSuffixResult!27))))

(declare-fun lt!1397888 () Unit!61210)

(assert (=> d!1178381 (= lt!1397888 (choose!23876 lt!1397722 newSuffixResult!27))))

(assert (=> d!1178381 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 newSuffixResult!27) lt!1397888)))

(declare-fun bs!587946 () Bool)

(assert (= bs!587946 d!1178381))

(assert (=> bs!587946 m!4553131))

(assert (=> bs!587946 m!4553131))

(assert (=> bs!587946 m!4553133))

(declare-fun m!4553883 () Bool)

(assert (=> bs!587946 m!4553883))

(assert (=> b!3980166 d!1178381))

(declare-fun d!1178383 () Bool)

(declare-fun lt!1397889 () Int)

(assert (=> d!1178383 (>= lt!1397889 0)))

(declare-fun e!2466725 () Int)

(assert (=> d!1178383 (= lt!1397889 e!2466725)))

(declare-fun c!689674 () Bool)

(assert (=> d!1178383 (= c!689674 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178383 (= (size!31829 lt!1397722) lt!1397889)))

(declare-fun b!3980589 () Bool)

(assert (=> b!3980589 (= e!2466725 0)))

(declare-fun b!3980590 () Bool)

(assert (=> b!3980590 (= e!2466725 (+ 1 (size!31829 (t!331279 lt!1397722))))))

(assert (= (and d!1178383 c!689674) b!3980589))

(assert (= (and d!1178383 (not c!689674)) b!3980590))

(declare-fun m!4553885 () Bool)

(assert (=> b!3980590 m!4553885))

(assert (=> b!3980166 d!1178383))

(declare-fun d!1178385 () Bool)

(declare-fun e!2466726 () Bool)

(assert (=> d!1178385 e!2466726))

(declare-fun res!1613143 () Bool)

(assert (=> d!1178385 (=> (not res!1613143) (not e!2466726))))

(assert (=> d!1178385 (= res!1613143 (semiInverseModEq!2882 (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))))

(declare-fun Unit!61218 () Unit!61210)

(assert (=> d!1178385 (= (lemmaInv!931 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) Unit!61218)))

(declare-fun b!3980591 () Bool)

(assert (=> b!3980591 (= e!2466726 (equivClasses!2781 (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))))

(assert (= (and d!1178385 res!1613143) b!3980591))

(declare-fun m!4553887 () Bool)

(assert (=> d!1178385 m!4553887))

(declare-fun m!4553889 () Bool)

(assert (=> b!3980591 m!4553889))

(assert (=> b!3980166 d!1178385))

(declare-fun d!1178387 () Bool)

(assert (=> d!1178387 (= (size!31828 token!484) (size!31829 (originalCharacters!7316 token!484)))))

(declare-fun Unit!61219 () Unit!61210)

(assert (=> d!1178387 (= (lemmaCharactersSize!1311 token!484) Unit!61219)))

(declare-fun bs!587947 () Bool)

(assert (= bs!587947 d!1178387))

(assert (=> bs!587947 m!4553225))

(assert (=> b!3980166 d!1178387))

(declare-fun d!1178389 () Bool)

(declare-fun lt!1397890 () BalanceConc!25448)

(assert (=> d!1178389 (= (list!15792 lt!1397890) (originalCharacters!7316 (_1!24022 (v!39477 lt!1397695))))))

(assert (=> d!1178389 (= lt!1397890 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (value!212040 (_1!24022 (v!39477 lt!1397695)))))))

(assert (=> d!1178389 (= (charsOf!4532 (_1!24022 (v!39477 lt!1397695))) lt!1397890)))

(declare-fun b_lambda!116281 () Bool)

(assert (=> (not b_lambda!116281) (not d!1178389)))

(declare-fun t!331299 () Bool)

(declare-fun tb!239885 () Bool)

(assert (=> (and b!3980180 (= (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331299) tb!239885))

(declare-fun b!3980592 () Bool)

(declare-fun e!2466727 () Bool)

(declare-fun tp!1213387 () Bool)

(assert (=> b!3980592 (= e!2466727 (and (inv!56845 (c!689606 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (value!212040 (_1!24022 (v!39477 lt!1397695)))))) tp!1213387))))

(declare-fun result!290594 () Bool)

(assert (=> tb!239885 (= result!290594 (and (inv!56846 (dynLambda!18104 (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (value!212040 (_1!24022 (v!39477 lt!1397695))))) e!2466727))))

(assert (= tb!239885 b!3980592))

(declare-fun m!4553891 () Bool)

(assert (=> b!3980592 m!4553891))

(declare-fun m!4553893 () Bool)

(assert (=> tb!239885 m!4553893))

(assert (=> d!1178389 t!331299))

(declare-fun b_and!305963 () Bool)

(assert (= b_and!305959 (and (=> t!331299 result!290594) b_and!305963)))

(declare-fun tb!239887 () Bool)

(declare-fun t!331301 () Bool)

(assert (=> (and b!3980176 (= (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331301) tb!239887))

(declare-fun result!290596 () Bool)

(assert (= result!290596 result!290594))

(assert (=> d!1178389 t!331301))

(declare-fun b_and!305965 () Bool)

(assert (= b_and!305961 (and (=> t!331301 result!290596) b_and!305965)))

(declare-fun m!4553895 () Bool)

(assert (=> d!1178389 m!4553895))

(declare-fun m!4553897 () Bool)

(assert (=> d!1178389 m!4553897))

(assert (=> b!3980166 d!1178389))

(declare-fun b!3980593 () Bool)

(declare-fun e!2466729 () Bool)

(assert (=> b!3980593 (= e!2466729 (matchR!5598 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (_1!24024 (findLongestMatchInner!1320 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) Nil!42548 (size!31829 Nil!42548) lt!1397718 lt!1397718 (size!31829 lt!1397718)))))))

(declare-fun b!3980594 () Bool)

(declare-fun e!2466730 () Bool)

(declare-fun e!2466728 () Bool)

(assert (=> b!3980594 (= e!2466730 e!2466728)))

(declare-fun res!1613146 () Bool)

(assert (=> b!3980594 (=> (not res!1613146) (not e!2466728))))

(declare-fun lt!1397893 () Option!9130)

(assert (=> b!3980594 (= res!1613146 (matchR!5598 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397893))))))))

(declare-fun d!1178391 () Bool)

(assert (=> d!1178391 e!2466730))

(declare-fun res!1613148 () Bool)

(assert (=> d!1178391 (=> res!1613148 e!2466730)))

(assert (=> d!1178391 (= res!1613148 (isEmpty!25442 lt!1397893))))

(declare-fun e!2466731 () Option!9130)

(assert (=> d!1178391 (= lt!1397893 e!2466731)))

(declare-fun c!689675 () Bool)

(declare-fun lt!1397894 () tuple2!41780)

(assert (=> d!1178391 (= c!689675 (isEmpty!25443 (_1!24024 lt!1397894)))))

(assert (=> d!1178391 (= lt!1397894 (findLongestMatch!1233 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) lt!1397718))))

(assert (=> d!1178391 (ruleValid!2648 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))

(assert (=> d!1178391 (= (maxPrefixOneRule!2637 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) lt!1397718) lt!1397893)))

(declare-fun b!3980595 () Bool)

(assert (=> b!3980595 (= e!2466728 (= (size!31828 (_1!24022 (get!14009 lt!1397893))) (size!31829 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397893))))))))

(declare-fun b!3980596 () Bool)

(declare-fun res!1613144 () Bool)

(assert (=> b!3980596 (=> (not res!1613144) (not e!2466728))))

(assert (=> b!3980596 (= res!1613144 (= (++!11118 (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397893)))) (_2!24022 (get!14009 lt!1397893))) lt!1397718))))

(declare-fun b!3980597 () Bool)

(declare-fun res!1613150 () Bool)

(assert (=> b!3980597 (=> (not res!1613150) (not e!2466728))))

(assert (=> b!3980597 (= res!1613150 (< (size!31829 (_2!24022 (get!14009 lt!1397893))) (size!31829 lt!1397718)))))

(declare-fun b!3980598 () Bool)

(declare-fun res!1613147 () Bool)

(assert (=> b!3980598 (=> (not res!1613147) (not e!2466728))))

(assert (=> b!3980598 (= res!1613147 (= (value!212040 (_1!24022 (get!14009 lt!1397893))) (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (get!14009 lt!1397893)))) (seqFromList!4955 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397893)))))))))

(declare-fun b!3980599 () Bool)

(assert (=> b!3980599 (= e!2466731 (Some!9129 (tuple2!41777 (Token!12571 (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (seqFromList!4955 (_1!24024 lt!1397894))) (rule!9720 (_1!24022 (v!39477 lt!1397695))) (size!31831 (seqFromList!4955 (_1!24024 lt!1397894))) (_1!24024 lt!1397894)) (_2!24024 lt!1397894))))))

(declare-fun lt!1397892 () Unit!61210)

(assert (=> b!3980599 (= lt!1397892 (longestMatchIsAcceptedByMatchOrIsEmpty!1293 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) lt!1397718))))

(declare-fun res!1613145 () Bool)

(assert (=> b!3980599 (= res!1613145 (isEmpty!25443 (_1!24024 (findLongestMatchInner!1320 (regex!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) Nil!42548 (size!31829 Nil!42548) lt!1397718 lt!1397718 (size!31829 lt!1397718)))))))

(assert (=> b!3980599 (=> res!1613145 e!2466729)))

(assert (=> b!3980599 e!2466729))

(declare-fun lt!1397891 () Unit!61210)

(assert (=> b!3980599 (= lt!1397891 lt!1397892)))

(declare-fun lt!1397895 () Unit!61210)

(assert (=> b!3980599 (= lt!1397895 (lemmaSemiInverse!1832 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (seqFromList!4955 (_1!24024 lt!1397894))))))

(declare-fun b!3980600 () Bool)

(declare-fun res!1613149 () Bool)

(assert (=> b!3980600 (=> (not res!1613149) (not e!2466728))))

(assert (=> b!3980600 (= res!1613149 (= (rule!9720 (_1!24022 (get!14009 lt!1397893))) (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))

(declare-fun b!3980601 () Bool)

(assert (=> b!3980601 (= e!2466731 None!9129)))

(assert (= (and d!1178391 c!689675) b!3980601))

(assert (= (and d!1178391 (not c!689675)) b!3980599))

(assert (= (and b!3980599 (not res!1613145)) b!3980593))

(assert (= (and d!1178391 (not res!1613148)) b!3980594))

(assert (= (and b!3980594 res!1613146) b!3980596))

(assert (= (and b!3980596 res!1613144) b!3980597))

(assert (= (and b!3980597 res!1613150) b!3980600))

(assert (= (and b!3980600 res!1613149) b!3980598))

(assert (= (and b!3980598 res!1613147) b!3980595))

(assert (=> b!3980593 m!4553787))

(assert (=> b!3980593 m!4553281))

(assert (=> b!3980593 m!4553787))

(assert (=> b!3980593 m!4553281))

(declare-fun m!4553899 () Bool)

(assert (=> b!3980593 m!4553899))

(declare-fun m!4553901 () Bool)

(assert (=> b!3980593 m!4553901))

(declare-fun m!4553903 () Bool)

(assert (=> b!3980597 m!4553903))

(declare-fun m!4553905 () Bool)

(assert (=> b!3980597 m!4553905))

(assert (=> b!3980597 m!4553281))

(assert (=> b!3980596 m!4553903))

(declare-fun m!4553907 () Bool)

(assert (=> b!3980596 m!4553907))

(assert (=> b!3980596 m!4553907))

(declare-fun m!4553909 () Bool)

(assert (=> b!3980596 m!4553909))

(assert (=> b!3980596 m!4553909))

(declare-fun m!4553911 () Bool)

(assert (=> b!3980596 m!4553911))

(declare-fun m!4553913 () Bool)

(assert (=> d!1178391 m!4553913))

(declare-fun m!4553915 () Bool)

(assert (=> d!1178391 m!4553915))

(declare-fun m!4553917 () Bool)

(assert (=> d!1178391 m!4553917))

(assert (=> d!1178391 m!4553165))

(assert (=> b!3980600 m!4553903))

(assert (=> b!3980595 m!4553903))

(declare-fun m!4553919 () Bool)

(assert (=> b!3980595 m!4553919))

(assert (=> b!3980598 m!4553903))

(declare-fun m!4553921 () Bool)

(assert (=> b!3980598 m!4553921))

(assert (=> b!3980598 m!4553921))

(declare-fun m!4553923 () Bool)

(assert (=> b!3980598 m!4553923))

(assert (=> b!3980594 m!4553903))

(assert (=> b!3980594 m!4553907))

(assert (=> b!3980594 m!4553907))

(assert (=> b!3980594 m!4553909))

(assert (=> b!3980594 m!4553909))

(declare-fun m!4553925 () Bool)

(assert (=> b!3980594 m!4553925))

(declare-fun m!4553927 () Bool)

(assert (=> b!3980599 m!4553927))

(declare-fun m!4553929 () Bool)

(assert (=> b!3980599 m!4553929))

(assert (=> b!3980599 m!4553787))

(assert (=> b!3980599 m!4553281))

(assert (=> b!3980599 m!4553899))

(assert (=> b!3980599 m!4553929))

(declare-fun m!4553931 () Bool)

(assert (=> b!3980599 m!4553931))

(declare-fun m!4553933 () Bool)

(assert (=> b!3980599 m!4553933))

(assert (=> b!3980599 m!4553281))

(assert (=> b!3980599 m!4553787))

(assert (=> b!3980599 m!4553929))

(declare-fun m!4553935 () Bool)

(assert (=> b!3980599 m!4553935))

(assert (=> b!3980599 m!4553929))

(declare-fun m!4553937 () Bool)

(assert (=> b!3980599 m!4553937))

(assert (=> b!3980166 d!1178391))

(declare-fun d!1178393 () Bool)

(assert (=> d!1178393 (isPrefix!3803 lt!1397722 (++!11118 lt!1397722 (_2!24022 (v!39477 lt!1397695))))))

(declare-fun lt!1397901 () Unit!61210)

(assert (=> d!1178393 (= lt!1397901 (choose!23876 lt!1397722 (_2!24022 (v!39477 lt!1397695))))))

(assert (=> d!1178393 (= (lemmaConcatTwoListThenFirstIsPrefix!2646 lt!1397722 (_2!24022 (v!39477 lt!1397695))) lt!1397901)))

(declare-fun bs!587948 () Bool)

(assert (= bs!587948 d!1178393))

(assert (=> bs!587948 m!4553157))

(assert (=> bs!587948 m!4553157))

(declare-fun m!4553945 () Bool)

(assert (=> bs!587948 m!4553945))

(declare-fun m!4553949 () Bool)

(assert (=> bs!587948 m!4553949))

(assert (=> b!3980166 d!1178393))

(declare-fun d!1178395 () Bool)

(assert (=> d!1178395 (= (maxPrefixOneRule!2637 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) lt!1397718) (Some!9129 (tuple2!41777 (Token!12571 (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (seqFromList!4955 lt!1397722)) (rule!9720 (_1!24022 (v!39477 lt!1397695))) (size!31829 lt!1397722) lt!1397722) (_2!24022 (v!39477 lt!1397695)))))))

(declare-fun lt!1397902 () Unit!61210)

(assert (=> d!1178395 (= lt!1397902 (choose!23882 thiss!21717 rules!2999 lt!1397722 lt!1397718 (_2!24022 (v!39477 lt!1397695)) (rule!9720 (_1!24022 (v!39477 lt!1397695)))))))

(assert (=> d!1178395 (not (isEmpty!25440 rules!2999))))

(assert (=> d!1178395 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1459 thiss!21717 rules!2999 lt!1397722 lt!1397718 (_2!24022 (v!39477 lt!1397695)) (rule!9720 (_1!24022 (v!39477 lt!1397695)))) lt!1397902)))

(declare-fun bs!587949 () Bool)

(assert (= bs!587949 d!1178395))

(assert (=> bs!587949 m!4553147))

(assert (=> bs!587949 m!4553137))

(declare-fun m!4553963 () Bool)

(assert (=> bs!587949 m!4553963))

(assert (=> bs!587949 m!4553149))

(assert (=> bs!587949 m!4553251))

(assert (=> bs!587949 m!4553137))

(assert (=> bs!587949 m!4553139))

(assert (=> b!3980166 d!1178395))

(declare-fun d!1178397 () Bool)

(assert (=> d!1178397 (= (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))) (seqFromList!4955 lt!1397722)) (dynLambda!18105 (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (seqFromList!4955 lt!1397722)))))

(declare-fun b_lambda!116283 () Bool)

(assert (=> (not b_lambda!116283) (not d!1178397)))

(declare-fun tb!239889 () Bool)

(declare-fun t!331303 () Bool)

(assert (=> (and b!3980180 (= (toValue!9204 (transformation!6716 (h!47970 rules!2999))) (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331303) tb!239889))

(declare-fun result!290598 () Bool)

(assert (=> tb!239889 (= result!290598 (inv!21 (dynLambda!18105 (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695))))) (seqFromList!4955 lt!1397722))))))

(declare-fun m!4553983 () Bool)

(assert (=> tb!239889 m!4553983))

(assert (=> d!1178397 t!331303))

(declare-fun b_and!305967 () Bool)

(assert (= b_and!305947 (and (=> t!331303 result!290598) b_and!305967)))

(declare-fun t!331305 () Bool)

(declare-fun tb!239891 () Bool)

(assert (=> (and b!3980176 (= (toValue!9204 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331305) tb!239891))

(declare-fun result!290600 () Bool)

(assert (= result!290600 result!290598))

(assert (=> d!1178397 t!331305))

(declare-fun b_and!305969 () Bool)

(assert (= b_and!305949 (and (=> t!331305 result!290600) b_and!305969)))

(assert (=> d!1178397 m!4553137))

(declare-fun m!4553987 () Bool)

(assert (=> d!1178397 m!4553987))

(assert (=> b!3980166 d!1178397))

(declare-fun d!1178399 () Bool)

(assert (=> d!1178399 (ruleValid!2648 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))

(declare-fun lt!1397903 () Unit!61210)

(assert (=> d!1178399 (= lt!1397903 (choose!23870 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) rules!2999))))

(assert (=> d!1178399 (contains!8468 rules!2999 (rule!9720 (_1!24022 (v!39477 lt!1397695))))))

(assert (=> d!1178399 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1722 thiss!21717 (rule!9720 (_1!24022 (v!39477 lt!1397695))) rules!2999) lt!1397903)))

(declare-fun bs!587950 () Bool)

(assert (= bs!587950 d!1178399))

(assert (=> bs!587950 m!4553165))

(declare-fun m!4553991 () Bool)

(assert (=> bs!587950 m!4553991))

(declare-fun m!4553993 () Bool)

(assert (=> bs!587950 m!4553993))

(assert (=> b!3980166 d!1178399))

(declare-fun b!3980611 () Bool)

(declare-fun res!1613161 () Bool)

(declare-fun e!2466738 () Bool)

(assert (=> b!3980611 (=> (not res!1613161) (not e!2466738))))

(declare-fun lt!1397904 () Option!9130)

(assert (=> b!3980611 (= res!1613161 (matchR!5598 (regex!6716 (rule!9720 (_1!24022 (get!14009 lt!1397904)))) (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397904))))))))

(declare-fun b!3980612 () Bool)

(declare-fun res!1613164 () Bool)

(assert (=> b!3980612 (=> (not res!1613164) (not e!2466738))))

(assert (=> b!3980612 (= res!1613164 (< (size!31829 (_2!24022 (get!14009 lt!1397904))) (size!31829 lt!1397684)))))

(declare-fun b!3980613 () Bool)

(declare-fun e!2466737 () Option!9130)

(declare-fun lt!1397906 () Option!9130)

(declare-fun lt!1397905 () Option!9130)

(assert (=> b!3980613 (= e!2466737 (ite (and ((_ is None!9129) lt!1397906) ((_ is None!9129) lt!1397905)) None!9129 (ite ((_ is None!9129) lt!1397905) lt!1397906 (ite ((_ is None!9129) lt!1397906) lt!1397905 (ite (>= (size!31828 (_1!24022 (v!39477 lt!1397906))) (size!31828 (_1!24022 (v!39477 lt!1397905)))) lt!1397906 lt!1397905)))))))

(declare-fun call!285722 () Option!9130)

(assert (=> b!3980613 (= lt!1397906 call!285722)))

(assert (=> b!3980613 (= lt!1397905 (maxPrefix!3603 thiss!21717 (t!331281 rules!2999) lt!1397684))))

(declare-fun b!3980614 () Bool)

(declare-fun res!1613162 () Bool)

(assert (=> b!3980614 (=> (not res!1613162) (not e!2466738))))

(assert (=> b!3980614 (= res!1613162 (= (++!11118 (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397904)))) (_2!24022 (get!14009 lt!1397904))) lt!1397684))))

(declare-fun b!3980615 () Bool)

(declare-fun res!1613160 () Bool)

(assert (=> b!3980615 (=> (not res!1613160) (not e!2466738))))

(assert (=> b!3980615 (= res!1613160 (= (value!212040 (_1!24022 (get!14009 lt!1397904))) (apply!9927 (transformation!6716 (rule!9720 (_1!24022 (get!14009 lt!1397904)))) (seqFromList!4955 (originalCharacters!7316 (_1!24022 (get!14009 lt!1397904)))))))))

(declare-fun d!1178403 () Bool)

(declare-fun e!2466739 () Bool)

(assert (=> d!1178403 e!2466739))

(declare-fun res!1613159 () Bool)

(assert (=> d!1178403 (=> res!1613159 e!2466739)))

(assert (=> d!1178403 (= res!1613159 (isEmpty!25442 lt!1397904))))

(assert (=> d!1178403 (= lt!1397904 e!2466737)))

(declare-fun c!689677 () Bool)

(assert (=> d!1178403 (= c!689677 (and ((_ is Cons!42550) rules!2999) ((_ is Nil!42550) (t!331281 rules!2999))))))

(declare-fun lt!1397908 () Unit!61210)

(declare-fun lt!1397907 () Unit!61210)

(assert (=> d!1178403 (= lt!1397908 lt!1397907)))

(assert (=> d!1178403 (isPrefix!3803 lt!1397684 lt!1397684)))

(assert (=> d!1178403 (= lt!1397907 (lemmaIsPrefixRefl!2395 lt!1397684 lt!1397684))))

(assert (=> d!1178403 (rulesValidInductive!2438 thiss!21717 rules!2999)))

(assert (=> d!1178403 (= (maxPrefix!3603 thiss!21717 rules!2999 lt!1397684) lt!1397904)))

(declare-fun bm!285717 () Bool)

(assert (=> bm!285717 (= call!285722 (maxPrefixOneRule!2637 thiss!21717 (h!47970 rules!2999) lt!1397684))))

(declare-fun b!3980616 () Bool)

(assert (=> b!3980616 (= e!2466737 call!285722)))

(declare-fun b!3980617 () Bool)

(assert (=> b!3980617 (= e!2466739 e!2466738)))

(declare-fun res!1613163 () Bool)

(assert (=> b!3980617 (=> (not res!1613163) (not e!2466738))))

(assert (=> b!3980617 (= res!1613163 (isDefined!7027 lt!1397904))))

(declare-fun b!3980618 () Bool)

(declare-fun res!1613158 () Bool)

(assert (=> b!3980618 (=> (not res!1613158) (not e!2466738))))

(assert (=> b!3980618 (= res!1613158 (= (list!15792 (charsOf!4532 (_1!24022 (get!14009 lt!1397904)))) (originalCharacters!7316 (_1!24022 (get!14009 lt!1397904)))))))

(declare-fun b!3980619 () Bool)

(assert (=> b!3980619 (= e!2466738 (contains!8468 rules!2999 (rule!9720 (_1!24022 (get!14009 lt!1397904)))))))

(assert (= (and d!1178403 c!689677) b!3980616))

(assert (= (and d!1178403 (not c!689677)) b!3980613))

(assert (= (or b!3980616 b!3980613) bm!285717))

(assert (= (and d!1178403 (not res!1613159)) b!3980617))

(assert (= (and b!3980617 res!1613163) b!3980618))

(assert (= (and b!3980618 res!1613158) b!3980612))

(assert (= (and b!3980612 res!1613164) b!3980614))

(assert (= (and b!3980614 res!1613162) b!3980615))

(assert (= (and b!3980615 res!1613160) b!3980611))

(assert (= (and b!3980611 res!1613161) b!3980619))

(declare-fun m!4553995 () Bool)

(assert (=> b!3980615 m!4553995))

(declare-fun m!4553997 () Bool)

(assert (=> b!3980615 m!4553997))

(assert (=> b!3980615 m!4553997))

(declare-fun m!4553999 () Bool)

(assert (=> b!3980615 m!4553999))

(assert (=> b!3980611 m!4553995))

(declare-fun m!4554001 () Bool)

(assert (=> b!3980611 m!4554001))

(assert (=> b!3980611 m!4554001))

(declare-fun m!4554003 () Bool)

(assert (=> b!3980611 m!4554003))

(assert (=> b!3980611 m!4554003))

(declare-fun m!4554005 () Bool)

(assert (=> b!3980611 m!4554005))

(declare-fun m!4554007 () Bool)

(assert (=> d!1178403 m!4554007))

(assert (=> d!1178403 m!4553247))

(assert (=> d!1178403 m!4553249))

(assert (=> d!1178403 m!4553469))

(declare-fun m!4554009 () Bool)

(assert (=> bm!285717 m!4554009))

(declare-fun m!4554011 () Bool)

(assert (=> b!3980613 m!4554011))

(assert (=> b!3980612 m!4553995))

(declare-fun m!4554013 () Bool)

(assert (=> b!3980612 m!4554013))

(assert (=> b!3980612 m!4553437))

(assert (=> b!3980619 m!4553995))

(declare-fun m!4554015 () Bool)

(assert (=> b!3980619 m!4554015))

(assert (=> b!3980614 m!4553995))

(assert (=> b!3980614 m!4554001))

(assert (=> b!3980614 m!4554001))

(assert (=> b!3980614 m!4554003))

(assert (=> b!3980614 m!4554003))

(declare-fun m!4554017 () Bool)

(assert (=> b!3980614 m!4554017))

(declare-fun m!4554019 () Bool)

(assert (=> b!3980617 m!4554019))

(assert (=> b!3980618 m!4553995))

(assert (=> b!3980618 m!4554001))

(assert (=> b!3980618 m!4554001))

(assert (=> b!3980618 m!4554003))

(assert (=> b!3980157 d!1178403))

(declare-fun b!3980621 () Bool)

(declare-fun e!2466740 () List!42672)

(assert (=> b!3980621 (= e!2466740 (Cons!42548 (h!47968 prefix!494) (++!11118 (t!331279 prefix!494) suffix!1299)))))

(declare-fun b!3980622 () Bool)

(declare-fun res!1613165 () Bool)

(declare-fun e!2466741 () Bool)

(assert (=> b!3980622 (=> (not res!1613165) (not e!2466741))))

(declare-fun lt!1397909 () List!42672)

(assert (=> b!3980622 (= res!1613165 (= (size!31829 lt!1397909) (+ (size!31829 prefix!494) (size!31829 suffix!1299))))))

(declare-fun d!1178405 () Bool)

(assert (=> d!1178405 e!2466741))

(declare-fun res!1613166 () Bool)

(assert (=> d!1178405 (=> (not res!1613166) (not e!2466741))))

(assert (=> d!1178405 (= res!1613166 (= (content!6450 lt!1397909) ((_ map or) (content!6450 prefix!494) (content!6450 suffix!1299))))))

(assert (=> d!1178405 (= lt!1397909 e!2466740)))

(declare-fun c!689678 () Bool)

(assert (=> d!1178405 (= c!689678 ((_ is Nil!42548) prefix!494))))

(assert (=> d!1178405 (= (++!11118 prefix!494 suffix!1299) lt!1397909)))

(declare-fun b!3980620 () Bool)

(assert (=> b!3980620 (= e!2466740 suffix!1299)))

(declare-fun b!3980623 () Bool)

(assert (=> b!3980623 (= e!2466741 (or (not (= suffix!1299 Nil!42548)) (= lt!1397909 prefix!494)))))

(assert (= (and d!1178405 c!689678) b!3980620))

(assert (= (and d!1178405 (not c!689678)) b!3980621))

(assert (= (and d!1178405 res!1613166) b!3980622))

(assert (= (and b!3980622 res!1613165) b!3980623))

(declare-fun m!4554021 () Bool)

(assert (=> b!3980621 m!4554021))

(declare-fun m!4554023 () Bool)

(assert (=> b!3980622 m!4554023))

(assert (=> b!3980622 m!4553265))

(assert (=> b!3980622 m!4553189))

(declare-fun m!4554025 () Bool)

(assert (=> d!1178405 m!4554025))

(assert (=> d!1178405 m!4553385))

(assert (=> d!1178405 m!4553319))

(assert (=> b!3980157 d!1178405))

(declare-fun b!3980634 () Bool)

(declare-fun res!1613169 () Bool)

(declare-fun e!2466749 () Bool)

(assert (=> b!3980634 (=> res!1613169 e!2466749)))

(assert (=> b!3980634 (= res!1613169 (not ((_ is IntegerValue!20840) (value!212040 token!484))))))

(declare-fun e!2466750 () Bool)

(assert (=> b!3980634 (= e!2466750 e!2466749)))

(declare-fun b!3980635 () Bool)

(declare-fun inv!17 (TokenValue!6946) Bool)

(assert (=> b!3980635 (= e!2466750 (inv!17 (value!212040 token!484)))))

(declare-fun d!1178407 () Bool)

(declare-fun c!689683 () Bool)

(assert (=> d!1178407 (= c!689683 ((_ is IntegerValue!20838) (value!212040 token!484)))))

(declare-fun e!2466748 () Bool)

(assert (=> d!1178407 (= (inv!21 (value!212040 token!484)) e!2466748)))

(declare-fun b!3980636 () Bool)

(declare-fun inv!15 (TokenValue!6946) Bool)

(assert (=> b!3980636 (= e!2466749 (inv!15 (value!212040 token!484)))))

(declare-fun b!3980637 () Bool)

(declare-fun inv!16 (TokenValue!6946) Bool)

(assert (=> b!3980637 (= e!2466748 (inv!16 (value!212040 token!484)))))

(declare-fun b!3980638 () Bool)

(assert (=> b!3980638 (= e!2466748 e!2466750)))

(declare-fun c!689684 () Bool)

(assert (=> b!3980638 (= c!689684 ((_ is IntegerValue!20839) (value!212040 token!484)))))

(assert (= (and d!1178407 c!689683) b!3980637))

(assert (= (and d!1178407 (not c!689683)) b!3980638))

(assert (= (and b!3980638 c!689684) b!3980635))

(assert (= (and b!3980638 (not c!689684)) b!3980634))

(assert (= (and b!3980634 (not res!1613169)) b!3980636))

(declare-fun m!4554027 () Bool)

(assert (=> b!3980635 m!4554027))

(declare-fun m!4554029 () Bool)

(assert (=> b!3980636 m!4554029))

(declare-fun m!4554031 () Bool)

(assert (=> b!3980637 m!4554031))

(assert (=> b!3980179 d!1178407))

(declare-fun b!3980640 () Bool)

(declare-fun e!2466751 () List!42672)

(assert (=> b!3980640 (= e!2466751 (Cons!42548 (h!47968 lt!1397693) (++!11118 (t!331279 lt!1397693) lt!1397676)))))

(declare-fun b!3980641 () Bool)

(declare-fun res!1613170 () Bool)

(declare-fun e!2466752 () Bool)

(assert (=> b!3980641 (=> (not res!1613170) (not e!2466752))))

(declare-fun lt!1397910 () List!42672)

(assert (=> b!3980641 (= res!1613170 (= (size!31829 lt!1397910) (+ (size!31829 lt!1397693) (size!31829 lt!1397676))))))

(declare-fun d!1178409 () Bool)

(assert (=> d!1178409 e!2466752))

(declare-fun res!1613171 () Bool)

(assert (=> d!1178409 (=> (not res!1613171) (not e!2466752))))

(assert (=> d!1178409 (= res!1613171 (= (content!6450 lt!1397910) ((_ map or) (content!6450 lt!1397693) (content!6450 lt!1397676))))))

(assert (=> d!1178409 (= lt!1397910 e!2466751)))

(declare-fun c!689685 () Bool)

(assert (=> d!1178409 (= c!689685 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178409 (= (++!11118 lt!1397693 lt!1397676) lt!1397910)))

(declare-fun b!3980639 () Bool)

(assert (=> b!3980639 (= e!2466751 lt!1397676)))

(declare-fun b!3980642 () Bool)

(assert (=> b!3980642 (= e!2466752 (or (not (= lt!1397676 Nil!42548)) (= lt!1397910 lt!1397693)))))

(assert (= (and d!1178409 c!689685) b!3980639))

(assert (= (and d!1178409 (not c!689685)) b!3980640))

(assert (= (and d!1178409 res!1613171) b!3980641))

(assert (= (and b!3980641 res!1613170) b!3980642))

(declare-fun m!4554033 () Bool)

(assert (=> b!3980640 m!4554033))

(declare-fun m!4554035 () Bool)

(assert (=> b!3980641 m!4554035))

(assert (=> b!3980641 m!4553263))

(assert (=> b!3980641 m!4553325))

(declare-fun m!4554037 () Bool)

(assert (=> d!1178409 m!4554037))

(assert (=> d!1178409 m!4553305))

(assert (=> d!1178409 m!4553329))

(assert (=> b!3980158 d!1178409))

(declare-fun d!1178411 () Bool)

(declare-fun lt!1397911 () List!42672)

(assert (=> d!1178411 (= (++!11118 lt!1397693 lt!1397911) prefix!494)))

(declare-fun e!2466753 () List!42672)

(assert (=> d!1178411 (= lt!1397911 e!2466753)))

(declare-fun c!689686 () Bool)

(assert (=> d!1178411 (= c!689686 ((_ is Cons!42548) lt!1397693))))

(assert (=> d!1178411 (>= (size!31829 prefix!494) (size!31829 lt!1397693))))

(assert (=> d!1178411 (= (getSuffix!2234 prefix!494 lt!1397693) lt!1397911)))

(declare-fun b!3980643 () Bool)

(assert (=> b!3980643 (= e!2466753 (getSuffix!2234 (tail!6208 prefix!494) (t!331279 lt!1397693)))))

(declare-fun b!3980644 () Bool)

(assert (=> b!3980644 (= e!2466753 prefix!494)))

(assert (= (and d!1178411 c!689686) b!3980643))

(assert (= (and d!1178411 (not c!689686)) b!3980644))

(declare-fun m!4554039 () Bool)

(assert (=> d!1178411 m!4554039))

(assert (=> d!1178411 m!4553265))

(assert (=> d!1178411 m!4553263))

(assert (=> b!3980643 m!4553541))

(assert (=> b!3980643 m!4553541))

(declare-fun m!4554041 () Bool)

(assert (=> b!3980643 m!4554041))

(assert (=> b!3980158 d!1178411))

(declare-fun b!3980645 () Bool)

(declare-fun e!2466754 () Bool)

(declare-fun e!2466755 () Bool)

(assert (=> b!3980645 (= e!2466754 e!2466755)))

(declare-fun res!1613172 () Bool)

(assert (=> b!3980645 (=> (not res!1613172) (not e!2466755))))

(assert (=> b!3980645 (= res!1613172 (not ((_ is Nil!42548) prefix!494)))))

(declare-fun b!3980648 () Bool)

(declare-fun e!2466756 () Bool)

(assert (=> b!3980648 (= e!2466756 (>= (size!31829 prefix!494) (size!31829 lt!1397693)))))

(declare-fun d!1178413 () Bool)

(assert (=> d!1178413 e!2466756))

(declare-fun res!1613175 () Bool)

(assert (=> d!1178413 (=> res!1613175 e!2466756)))

(declare-fun lt!1397912 () Bool)

(assert (=> d!1178413 (= res!1613175 (not lt!1397912))))

(assert (=> d!1178413 (= lt!1397912 e!2466754)))

(declare-fun res!1613173 () Bool)

(assert (=> d!1178413 (=> res!1613173 e!2466754)))

(assert (=> d!1178413 (= res!1613173 ((_ is Nil!42548) lt!1397693))))

(assert (=> d!1178413 (= (isPrefix!3803 lt!1397693 prefix!494) lt!1397912)))

(declare-fun b!3980647 () Bool)

(assert (=> b!3980647 (= e!2466755 (isPrefix!3803 (tail!6208 lt!1397693) (tail!6208 prefix!494)))))

(declare-fun b!3980646 () Bool)

(declare-fun res!1613174 () Bool)

(assert (=> b!3980646 (=> (not res!1613174) (not e!2466755))))

(assert (=> b!3980646 (= res!1613174 (= (head!8477 lt!1397693) (head!8477 prefix!494)))))

(assert (= (and d!1178413 (not res!1613173)) b!3980645))

(assert (= (and b!3980645 res!1613172) b!3980646))

(assert (= (and b!3980646 res!1613174) b!3980647))

(assert (= (and d!1178413 (not res!1613175)) b!3980648))

(assert (=> b!3980648 m!4553265))

(assert (=> b!3980648 m!4553263))

(assert (=> b!3980647 m!4553487))

(assert (=> b!3980647 m!4553541))

(assert (=> b!3980647 m!4553487))

(assert (=> b!3980647 m!4553541))

(declare-fun m!4554043 () Bool)

(assert (=> b!3980647 m!4554043))

(assert (=> b!3980646 m!4553493))

(assert (=> b!3980646 m!4553545))

(assert (=> b!3980158 d!1178413))

(declare-fun d!1178415 () Bool)

(assert (=> d!1178415 (isPrefix!3803 lt!1397693 prefix!494)))

(declare-fun lt!1397915 () Unit!61210)

(declare-fun choose!23884 (List!42672 List!42672 List!42672) Unit!61210)

(assert (=> d!1178415 (= lt!1397915 (choose!23884 prefix!494 lt!1397693 lt!1397684))))

(assert (=> d!1178415 (isPrefix!3803 prefix!494 lt!1397684)))

(assert (=> d!1178415 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!381 prefix!494 lt!1397693 lt!1397684) lt!1397915)))

(declare-fun bs!587951 () Bool)

(assert (= bs!587951 d!1178415))

(assert (=> bs!587951 m!4553197))

(declare-fun m!4554045 () Bool)

(assert (=> bs!587951 m!4554045))

(assert (=> bs!587951 m!4553217))

(assert (=> b!3980158 d!1178415))

(declare-fun d!1178417 () Bool)

(assert (=> d!1178417 (= (inv!56838 (tag!7576 (rule!9720 token!484))) (= (mod (str.len (value!212039 (tag!7576 (rule!9720 token!484)))) 2) 0))))

(assert (=> b!3980160 d!1178417))

(declare-fun d!1178419 () Bool)

(declare-fun res!1613176 () Bool)

(declare-fun e!2466757 () Bool)

(assert (=> d!1178419 (=> (not res!1613176) (not e!2466757))))

(assert (=> d!1178419 (= res!1613176 (semiInverseModEq!2882 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))))))

(assert (=> d!1178419 (= (inv!56842 (transformation!6716 (rule!9720 token!484))) e!2466757)))

(declare-fun b!3980649 () Bool)

(assert (=> b!3980649 (= e!2466757 (equivClasses!2781 (toChars!9063 (transformation!6716 (rule!9720 token!484))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))))))

(assert (= (and d!1178419 res!1613176) b!3980649))

(assert (=> d!1178419 m!4553347))

(assert (=> b!3980649 m!4553349))

(assert (=> b!3980160 d!1178419))

(declare-fun d!1178421 () Bool)

(declare-fun lt!1397918 () Int)

(assert (=> d!1178421 (>= lt!1397918 0)))

(declare-fun e!2466758 () Int)

(assert (=> d!1178421 (= lt!1397918 e!2466758)))

(declare-fun c!689687 () Bool)

(assert (=> d!1178421 (= c!689687 ((_ is Nil!42548) suffix!1299))))

(assert (=> d!1178421 (= (size!31829 suffix!1299) lt!1397918)))

(declare-fun b!3980650 () Bool)

(assert (=> b!3980650 (= e!2466758 0)))

(declare-fun b!3980651 () Bool)

(assert (=> b!3980651 (= e!2466758 (+ 1 (size!31829 (t!331279 suffix!1299))))))

(assert (= (and d!1178421 c!689687) b!3980650))

(assert (= (and d!1178421 (not c!689687)) b!3980651))

(declare-fun m!4554047 () Bool)

(assert (=> b!3980651 m!4554047))

(assert (=> b!3980159 d!1178421))

(declare-fun d!1178423 () Bool)

(declare-fun lt!1397919 () Int)

(assert (=> d!1178423 (>= lt!1397919 0)))

(declare-fun e!2466759 () Int)

(assert (=> d!1178423 (= lt!1397919 e!2466759)))

(declare-fun c!689688 () Bool)

(assert (=> d!1178423 (= c!689688 ((_ is Nil!42548) newSuffix!27))))

(assert (=> d!1178423 (= (size!31829 newSuffix!27) lt!1397919)))

(declare-fun b!3980652 () Bool)

(assert (=> b!3980652 (= e!2466759 0)))

(declare-fun b!3980653 () Bool)

(assert (=> b!3980653 (= e!2466759 (+ 1 (size!31829 (t!331279 newSuffix!27))))))

(assert (= (and d!1178423 c!689688) b!3980652))

(assert (= (and d!1178423 (not c!689688)) b!3980653))

(declare-fun m!4554049 () Bool)

(assert (=> b!3980653 m!4554049))

(assert (=> b!3980159 d!1178423))

(declare-fun b!3980654 () Bool)

(declare-fun e!2466760 () Bool)

(declare-fun e!2466761 () Bool)

(assert (=> b!3980654 (= e!2466760 e!2466761)))

(declare-fun res!1613177 () Bool)

(assert (=> b!3980654 (=> (not res!1613177) (not e!2466761))))

(assert (=> b!3980654 (= res!1613177 (not ((_ is Nil!42548) lt!1397684)))))

(declare-fun b!3980657 () Bool)

(declare-fun e!2466762 () Bool)

(assert (=> b!3980657 (= e!2466762 (>= (size!31829 lt!1397684) (size!31829 lt!1397722)))))

(declare-fun d!1178425 () Bool)

(assert (=> d!1178425 e!2466762))

(declare-fun res!1613180 () Bool)

(assert (=> d!1178425 (=> res!1613180 e!2466762)))

(declare-fun lt!1397920 () Bool)

(assert (=> d!1178425 (= res!1613180 (not lt!1397920))))

(assert (=> d!1178425 (= lt!1397920 e!2466760)))

(declare-fun res!1613178 () Bool)

(assert (=> d!1178425 (=> res!1613178 e!2466760)))

(assert (=> d!1178425 (= res!1613178 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178425 (= (isPrefix!3803 lt!1397722 lt!1397684) lt!1397920)))

(declare-fun b!3980656 () Bool)

(assert (=> b!3980656 (= e!2466761 (isPrefix!3803 (tail!6208 lt!1397722) (tail!6208 lt!1397684)))))

(declare-fun b!3980655 () Bool)

(declare-fun res!1613179 () Bool)

(assert (=> b!3980655 (=> (not res!1613179) (not e!2466761))))

(assert (=> b!3980655 (= res!1613179 (= (head!8477 lt!1397722) (head!8477 lt!1397684)))))

(assert (= (and d!1178425 (not res!1613178)) b!3980654))

(assert (= (and b!3980654 res!1613177) b!3980655))

(assert (= (and b!3980655 res!1613179) b!3980656))

(assert (= (and d!1178425 (not res!1613180)) b!3980657))

(assert (=> b!3980657 m!4553437))

(assert (=> b!3980657 m!4553149))

(assert (=> b!3980656 m!4553585))

(assert (=> b!3980656 m!4553439))

(assert (=> b!3980656 m!4553585))

(assert (=> b!3980656 m!4553439))

(declare-fun m!4554051 () Bool)

(assert (=> b!3980656 m!4554051))

(assert (=> b!3980655 m!4553591))

(assert (=> b!3980655 m!4553445))

(assert (=> b!3980161 d!1178425))

(declare-fun b!3980658 () Bool)

(declare-fun e!2466763 () Bool)

(declare-fun e!2466764 () Bool)

(assert (=> b!3980658 (= e!2466763 e!2466764)))

(declare-fun res!1613181 () Bool)

(assert (=> b!3980658 (=> (not res!1613181) (not e!2466764))))

(assert (=> b!3980658 (= res!1613181 (not ((_ is Nil!42548) lt!1397724)))))

(declare-fun b!3980661 () Bool)

(declare-fun e!2466765 () Bool)

(assert (=> b!3980661 (= e!2466765 (>= (size!31829 lt!1397724) (size!31829 lt!1397722)))))

(declare-fun d!1178427 () Bool)

(assert (=> d!1178427 e!2466765))

(declare-fun res!1613184 () Bool)

(assert (=> d!1178427 (=> res!1613184 e!2466765)))

(declare-fun lt!1397922 () Bool)

(assert (=> d!1178427 (= res!1613184 (not lt!1397922))))

(assert (=> d!1178427 (= lt!1397922 e!2466763)))

(declare-fun res!1613182 () Bool)

(assert (=> d!1178427 (=> res!1613182 e!2466763)))

(assert (=> d!1178427 (= res!1613182 ((_ is Nil!42548) lt!1397722))))

(assert (=> d!1178427 (= (isPrefix!3803 lt!1397722 lt!1397724) lt!1397922)))

(declare-fun b!3980660 () Bool)

(assert (=> b!3980660 (= e!2466764 (isPrefix!3803 (tail!6208 lt!1397722) (tail!6208 lt!1397724)))))

(declare-fun b!3980659 () Bool)

(declare-fun res!1613183 () Bool)

(assert (=> b!3980659 (=> (not res!1613183) (not e!2466764))))

(assert (=> b!3980659 (= res!1613183 (= (head!8477 lt!1397722) (head!8477 lt!1397724)))))

(assert (= (and d!1178427 (not res!1613182)) b!3980658))

(assert (= (and b!3980658 res!1613181) b!3980659))

(assert (= (and b!3980659 res!1613183) b!3980660))

(assert (= (and d!1178427 (not res!1613184)) b!3980661))

(declare-fun m!4554053 () Bool)

(assert (=> b!3980661 m!4554053))

(assert (=> b!3980661 m!4553149))

(assert (=> b!3980660 m!4553585))

(declare-fun m!4554055 () Bool)

(assert (=> b!3980660 m!4554055))

(assert (=> b!3980660 m!4553585))

(assert (=> b!3980660 m!4554055))

(declare-fun m!4554057 () Bool)

(assert (=> b!3980660 m!4554057))

(assert (=> b!3980659 m!4553591))

(declare-fun m!4554059 () Bool)

(assert (=> b!3980659 m!4554059))

(assert (=> b!3980161 d!1178427))

(declare-fun d!1178429 () Bool)

(assert (=> d!1178429 (isPrefix!3803 lt!1397722 (++!11118 lt!1397718 lt!1397687))))

(declare-fun lt!1397923 () Unit!61210)

(assert (=> d!1178429 (= lt!1397923 (choose!23879 lt!1397722 lt!1397718 lt!1397687))))

(assert (=> d!1178429 (isPrefix!3803 lt!1397722 lt!1397718)))

(assert (=> d!1178429 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!636 lt!1397722 lt!1397718 lt!1397687) lt!1397923)))

(declare-fun bs!587953 () Bool)

(assert (= bs!587953 d!1178429))

(assert (=> bs!587953 m!4553289))

(assert (=> bs!587953 m!4553289))

(declare-fun m!4554063 () Bool)

(assert (=> bs!587953 m!4554063))

(declare-fun m!4554065 () Bool)

(assert (=> bs!587953 m!4554065))

(declare-fun m!4554067 () Bool)

(assert (=> bs!587953 m!4554067))

(assert (=> b!3980161 d!1178429))

(declare-fun b!3980685 () Bool)

(declare-fun e!2466776 () Bool)

(assert (=> b!3980685 (= e!2466776 tp_is_empty!20213)))

(declare-fun b!3980686 () Bool)

(declare-fun tp!1213401 () Bool)

(declare-fun tp!1213399 () Bool)

(assert (=> b!3980686 (= e!2466776 (and tp!1213401 tp!1213399))))

(declare-fun b!3980687 () Bool)

(declare-fun tp!1213400 () Bool)

(assert (=> b!3980687 (= e!2466776 tp!1213400)))

(assert (=> b!3980173 (= tp!1213377 e!2466776)))

(declare-fun b!3980688 () Bool)

(declare-fun tp!1213398 () Bool)

(declare-fun tp!1213402 () Bool)

(assert (=> b!3980688 (= e!2466776 (and tp!1213398 tp!1213402))))

(assert (= (and b!3980173 ((_ is ElementMatch!11621) (regex!6716 (h!47970 rules!2999)))) b!3980685))

(assert (= (and b!3980173 ((_ is Concat!18568) (regex!6716 (h!47970 rules!2999)))) b!3980686))

(assert (= (and b!3980173 ((_ is Star!11621) (regex!6716 (h!47970 rules!2999)))) b!3980687))

(assert (= (and b!3980173 ((_ is Union!11621) (regex!6716 (h!47970 rules!2999)))) b!3980688))

(declare-fun b!3980703 () Bool)

(declare-fun b_free!110473 () Bool)

(declare-fun b_next!111177 () Bool)

(assert (=> b!3980703 (= b_free!110473 (not b_next!111177))))

(declare-fun tb!239893 () Bool)

(declare-fun t!331307 () Bool)

(assert (=> (and b!3980703 (= (toValue!9204 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toValue!9204 (transformation!6716 (rule!9720 token!484)))) t!331307) tb!239893))

(declare-fun result!290606 () Bool)

(assert (= result!290606 result!290576))

(assert (=> d!1178295 t!331307))

(declare-fun tb!239895 () Bool)

(declare-fun t!331309 () Bool)

(assert (=> (and b!3980703 (= (toValue!9204 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toValue!9204 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331309) tb!239895))

(declare-fun result!290608 () Bool)

(assert (= result!290608 result!290598))

(assert (=> d!1178397 t!331309))

(declare-fun b_and!305971 () Bool)

(declare-fun tp!1213411 () Bool)

(assert (=> b!3980703 (= tp!1213411 (and (=> t!331307 result!290606) (=> t!331309 result!290608) b_and!305971))))

(declare-fun b_free!110475 () Bool)

(declare-fun b_next!111179 () Bool)

(assert (=> b!3980703 (= b_free!110475 (not b_next!111179))))

(declare-fun tb!239897 () Bool)

(declare-fun t!331311 () Bool)

(assert (=> (and b!3980703 (= (toChars!9063 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toChars!9063 (transformation!6716 (rule!9720 token!484)))) t!331311) tb!239897))

(declare-fun result!290610 () Bool)

(assert (= result!290610 result!290570))

(assert (=> d!1178285 t!331311))

(assert (=> b!3980553 t!331311))

(declare-fun tb!239899 () Bool)

(declare-fun t!331313 () Bool)

(assert (=> (and b!3980703 (= (toChars!9063 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toChars!9063 (transformation!6716 (rule!9720 (_1!24022 (v!39477 lt!1397695)))))) t!331313) tb!239899))

(declare-fun result!290612 () Bool)

(assert (= result!290612 result!290594))

(assert (=> d!1178389 t!331313))

(declare-fun tp!1213412 () Bool)

(declare-fun b_and!305973 () Bool)

(assert (=> b!3980703 (= tp!1213412 (and (=> t!331311 result!290610) (=> t!331313 result!290612) b_and!305973))))

(declare-fun e!2466787 () Bool)

(assert (=> b!3980703 (= e!2466787 (and tp!1213411 tp!1213412))))

(declare-fun b!3980702 () Bool)

(declare-fun e!2466789 () Bool)

(declare-fun tp!1213413 () Bool)

(assert (=> b!3980702 (= e!2466789 (and tp!1213413 (inv!56838 (tag!7576 (h!47970 (t!331281 rules!2999)))) (inv!56842 (transformation!6716 (h!47970 (t!331281 rules!2999)))) e!2466787))))

(declare-fun b!3980701 () Bool)

(declare-fun e!2466790 () Bool)

(declare-fun tp!1213414 () Bool)

(assert (=> b!3980701 (= e!2466790 (and e!2466789 tp!1213414))))

(assert (=> b!3980162 (= tp!1213378 e!2466790)))

(assert (= b!3980702 b!3980703))

(assert (= b!3980701 b!3980702))

(assert (= (and b!3980162 ((_ is Cons!42550) (t!331281 rules!2999))) b!3980701))

(declare-fun m!4554113 () Bool)

(assert (=> b!3980702 m!4554113))

(declare-fun m!4554117 () Bool)

(assert (=> b!3980702 m!4554117))

(declare-fun b!3980708 () Bool)

(declare-fun e!2466793 () Bool)

(declare-fun tp!1213417 () Bool)

(assert (=> b!3980708 (= e!2466793 (and tp_is_empty!20213 tp!1213417))))

(assert (=> b!3980178 (= tp!1213373 e!2466793)))

(assert (= (and b!3980178 ((_ is Cons!42548) (t!331279 suffixResult!105))) b!3980708))

(declare-fun b!3980709 () Bool)

(declare-fun e!2466794 () Bool)

(declare-fun tp!1213418 () Bool)

(assert (=> b!3980709 (= e!2466794 (and tp_is_empty!20213 tp!1213418))))

(assert (=> b!3980169 (= tp!1213368 e!2466794)))

(assert (= (and b!3980169 ((_ is Cons!42548) (t!331279 suffix!1299))) b!3980709))

(declare-fun b!3980710 () Bool)

(declare-fun e!2466795 () Bool)

(declare-fun tp!1213419 () Bool)

(assert (=> b!3980710 (= e!2466795 (and tp_is_empty!20213 tp!1213419))))

(assert (=> b!3980179 (= tp!1213374 e!2466795)))

(assert (= (and b!3980179 ((_ is Cons!42548) (originalCharacters!7316 token!484))) b!3980710))

(declare-fun b!3980711 () Bool)

(declare-fun e!2466796 () Bool)

(declare-fun tp!1213420 () Bool)

(assert (=> b!3980711 (= e!2466796 (and tp_is_empty!20213 tp!1213420))))

(assert (=> b!3980165 (= tp!1213371 e!2466796)))

(assert (= (and b!3980165 ((_ is Cons!42548) (t!331279 prefix!494))) b!3980711))

(declare-fun b!3980712 () Bool)

(declare-fun e!2466797 () Bool)

(assert (=> b!3980712 (= e!2466797 tp_is_empty!20213)))

(declare-fun b!3980713 () Bool)

(declare-fun tp!1213424 () Bool)

(declare-fun tp!1213422 () Bool)

(assert (=> b!3980713 (= e!2466797 (and tp!1213424 tp!1213422))))

(declare-fun b!3980714 () Bool)

(declare-fun tp!1213423 () Bool)

(assert (=> b!3980714 (= e!2466797 tp!1213423)))

(assert (=> b!3980160 (= tp!1213379 e!2466797)))

(declare-fun b!3980715 () Bool)

(declare-fun tp!1213421 () Bool)

(declare-fun tp!1213425 () Bool)

(assert (=> b!3980715 (= e!2466797 (and tp!1213421 tp!1213425))))

(assert (= (and b!3980160 ((_ is ElementMatch!11621) (regex!6716 (rule!9720 token!484)))) b!3980712))

(assert (= (and b!3980160 ((_ is Concat!18568) (regex!6716 (rule!9720 token!484)))) b!3980713))

(assert (= (and b!3980160 ((_ is Star!11621) (regex!6716 (rule!9720 token!484)))) b!3980714))

(assert (= (and b!3980160 ((_ is Union!11621) (regex!6716 (rule!9720 token!484)))) b!3980715))

(declare-fun b!3980716 () Bool)

(declare-fun e!2466798 () Bool)

(declare-fun tp!1213426 () Bool)

(assert (=> b!3980716 (= e!2466798 (and tp_is_empty!20213 tp!1213426))))

(assert (=> b!3980170 (= tp!1213376 e!2466798)))

(assert (= (and b!3980170 ((_ is Cons!42548) (t!331279 newSuffixResult!27))) b!3980716))

(declare-fun b!3980717 () Bool)

(declare-fun e!2466799 () Bool)

(declare-fun tp!1213427 () Bool)

(assert (=> b!3980717 (= e!2466799 (and tp_is_empty!20213 tp!1213427))))

(assert (=> b!3980156 (= tp!1213380 e!2466799)))

(assert (= (and b!3980156 ((_ is Cons!42548) (t!331279 newSuffix!27))) b!3980717))

(declare-fun b_lambda!116285 () Bool)

(assert (= b_lambda!116279 (or (and b!3980180 b_free!110467 (= (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toChars!9063 (transformation!6716 (rule!9720 token!484))))) (and b!3980176 b_free!110471) (and b!3980703 b_free!110475 (= (toChars!9063 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toChars!9063 (transformation!6716 (rule!9720 token!484))))) b_lambda!116285)))

(declare-fun b_lambda!116287 () Bool)

(assert (= b_lambda!116271 (or (and b!3980180 b_free!110467 (= (toChars!9063 (transformation!6716 (h!47970 rules!2999))) (toChars!9063 (transformation!6716 (rule!9720 token!484))))) (and b!3980176 b_free!110471) (and b!3980703 b_free!110475 (= (toChars!9063 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toChars!9063 (transformation!6716 (rule!9720 token!484))))) b_lambda!116287)))

(declare-fun b_lambda!116289 () Bool)

(assert (= b_lambda!116273 (or (and b!3980180 b_free!110465 (= (toValue!9204 (transformation!6716 (h!47970 rules!2999))) (toValue!9204 (transformation!6716 (rule!9720 token!484))))) (and b!3980176 b_free!110469) (and b!3980703 b_free!110473 (= (toValue!9204 (transformation!6716 (h!47970 (t!331281 rules!2999)))) (toValue!9204 (transformation!6716 (rule!9720 token!484))))) b_lambda!116289)))

(check-sat (not b!3980244) (not d!1178411) (not b!3980229) (not b!3980369) (not b!3980247) (not b!3980225) (not d!1178387) (not d!1178255) (not b!3980554) (not b!3980646) (not d!1178281) (not b!3980355) (not b!3980422) (not d!1178209) (not d!1178399) (not b!3980418) (not b!3980414) (not d!1178243) (not bm!285717) (not d!1178373) (not b!3980686) (not b!3980266) (not b_lambda!116287) (not b!3980573) (not b!3980717) (not b!3980364) b_and!305971 (not b!3980356) (not d!1178219) (not b!3980587) (not b!3980591) (not d!1178301) (not b!3980295) (not b!3980421) (not d!1178285) (not b!3980708) b_and!305967 (not b!3980637) (not b!3980403) (not b!3980611) (not b_lambda!116285) (not d!1178289) (not b!3980586) (not d!1178225) (not b!3980617) (not b!3980289) (not d!1178367) (not b!3980538) (not b!3980651) (not b!3980541) (not b_next!111169) (not b!3980416) (not d!1178205) (not d!1178419) (not b!3980399) (not b!3980206) (not d!1178409) (not b!3980408) (not b!3980233) (not b_next!111179) (not b!3980183) (not d!1178191) (not b!3980371) (not d!1178403) (not b!3980370) (not d!1178201) (not b!3980655) (not d!1178415) (not d!1178221) (not b!3980598) b_and!305963 (not d!1178275) (not b!3980240) (not d!1178193) (not b!3980615) (not b!3980560) (not b!3980426) (not b!3980402) b_and!305965 (not d!1178199) (not d!1178405) (not d!1178369) (not d!1178385) (not b!3980544) (not b!3980636) (not b!3980612) (not b!3980404) (not b_next!111177) (not b!3980193) (not b!3980198) (not b!3980400) (not bm!285710) (not b!3980292) (not b!3980561) (not b!3980716) (not d!1178303) (not b!3980622) (not d!1178261) (not b!3980241) (not b!3980618) (not b!3980596) (not b!3980660) (not d!1178215) (not b!3980388) b_and!305969 (not b!3980713) (not b!3980600) (not b!3980540) (not b!3980286) (not b!3980258) (not d!1178371) (not b!3980562) (not b!3980647) (not d!1178213) (not d!1178241) (not b!3980715) (not b!3980649) (not d!1178195) (not tb!239889) (not b!3980687) (not b!3980583) (not b!3980297) (not b!3980710) (not b!3980714) (not d!1178249) (not d!1178381) (not b!3980365) (not d!1178229) tp_is_empty!20213 (not b!3980582) (not b!3980197) (not d!1178379) (not b!3980653) (not b!3980360) (not b!3980572) (not b!3980701) (not b_next!111173) (not b!3980288) (not b!3980553) (not b!3980287) (not tb!239885) (not b!3980359) (not b!3980711) (not d!1178389) (not b!3980597) (not b!3980398) (not b!3980709) (not d!1178207) (not b!3980210) (not b_next!111175) (not b!3980259) (not b!3980593) (not b!3980659) (not b!3980579) (not tb!239869) (not b!3980537) (not b!3980424) (not b!3980595) (not b!3980260) (not d!1178197) (not d!1178235) (not d!1178299) (not b!3980296) (not b!3980194) (not b!3980613) (not d!1178291) (not b!3980534) (not b!3980641) (not b_lambda!116281) (not d!1178265) (not bm!285715) (not b!3980205) b_and!305973 (not b!3980407) (not b!3980619) (not b!3980657) (not b!3980592) (not d!1178293) (not b!3980614) (not b!3980237) (not b!3980621) (not d!1178363) (not b!3980546) (not b_lambda!116283) (not d!1178393) (not d!1178237) (not b!3980545) (not d!1178223) (not b!3980202) (not b!3980441) (not d!1178217) (not b_next!111171) (not b!3980201) (not b!3980215) (not b!3980635) (not b!3980640) (not b!3980232) (not d!1178325) (not b!3980535) (not b!3980285) (not b!3980599) (not b!3980643) (not b!3980420) (not d!1178395) (not b!3980536) (not b!3980656) (not d!1178203) (not b!3980590) (not d!1178429) (not b!3980291) (not b_lambda!116289) (not b!3980648) (not b!3980439) (not b!3980218) (not d!1178377) (not d!1178251) (not b!3980661) (not b!3980702) (not tb!239873) (not b!3980293) (not b!3980245) (not b!3980406) (not d!1178211) (not d!1178391) (not b!3980442) (not b!3980539) (not b!3980588) (not b!3980594) (not b!3980219) (not b!3980236) (not b!3980415) (not b!3980444) (not b!3980228) (not b!3980688))
(check-sat (not b_next!111169) (not b_next!111179) b_and!305963 b_and!305965 (not b_next!111177) b_and!305969 (not b_next!111173) (not b_next!111175) b_and!305973 (not b_next!111171) b_and!305971 b_and!305967)
