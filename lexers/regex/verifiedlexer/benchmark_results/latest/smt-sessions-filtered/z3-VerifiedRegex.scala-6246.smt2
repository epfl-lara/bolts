; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303910 () Bool)

(assert start!303910)

(declare-fun b!3232597 () Bool)

(declare-fun b_free!86249 () Bool)

(declare-fun b_next!86953 () Bool)

(assert (=> b!3232597 (= b_free!86249 (not b_next!86953))))

(declare-fun tp!1018794 () Bool)

(declare-fun b_and!216631 () Bool)

(assert (=> b!3232597 (= tp!1018794 b_and!216631)))

(declare-fun b_free!86251 () Bool)

(declare-fun b_next!86955 () Bool)

(assert (=> b!3232597 (= b_free!86251 (not b_next!86955))))

(declare-fun tp!1018801 () Bool)

(declare-fun b_and!216633 () Bool)

(assert (=> b!3232597 (= tp!1018801 b_and!216633)))

(declare-fun b!3232591 () Bool)

(declare-fun b_free!86253 () Bool)

(declare-fun b_next!86957 () Bool)

(assert (=> b!3232591 (= b_free!86253 (not b_next!86957))))

(declare-fun tp!1018802 () Bool)

(declare-fun b_and!216635 () Bool)

(assert (=> b!3232591 (= tp!1018802 b_and!216635)))

(declare-fun b_free!86255 () Bool)

(declare-fun b_next!86959 () Bool)

(assert (=> b!3232591 (= b_free!86255 (not b_next!86959))))

(declare-fun tp!1018796 () Bool)

(declare-fun b_and!216637 () Bool)

(assert (=> b!3232591 (= tp!1018796 b_and!216637)))

(declare-fun b!3232602 () Bool)

(declare-fun b_free!86257 () Bool)

(declare-fun b_next!86961 () Bool)

(assert (=> b!3232602 (= b_free!86257 (not b_next!86961))))

(declare-fun tp!1018792 () Bool)

(declare-fun b_and!216639 () Bool)

(assert (=> b!3232602 (= tp!1018792 b_and!216639)))

(declare-fun b_free!86259 () Bool)

(declare-fun b_next!86963 () Bool)

(assert (=> b!3232602 (= b_free!86259 (not b_next!86963))))

(declare-fun tp!1018800 () Bool)

(declare-fun b_and!216641 () Bool)

(assert (=> b!3232602 (= tp!1018800 b_and!216641)))

(declare-fun b!3232589 () Bool)

(declare-fun res!1316219 () Bool)

(declare-fun e!2015975 () Bool)

(assert (=> b!3232589 (=> (not res!1316219) (not e!2015975))))

(declare-datatypes ((C!20248 0))(
  ( (C!20249 (val!12172 Int)) )
))
(declare-datatypes ((Regex!10031 0))(
  ( (ElementMatch!10031 (c!543284 C!20248)) (Concat!15533 (regOne!20574 Regex!10031) (regTwo!20574 Regex!10031)) (EmptyExpr!10031) (Star!10031 (reg!10360 Regex!10031)) (EmptyLang!10031) (Union!10031 (regOne!20575 Regex!10031) (regTwo!20575 Regex!10031)) )
))
(declare-datatypes ((List!36510 0))(
  ( (Nil!36386) (Cons!36386 (h!41806 (_ BitVec 16)) (t!241879 List!36510)) )
))
(declare-datatypes ((TokenValue!5502 0))(
  ( (FloatLiteralValue!11004 (text!38959 List!36510)) (TokenValueExt!5501 (__x!23221 Int)) (Broken!27510 (value!170686 List!36510)) (Object!5625) (End!5502) (Def!5502) (Underscore!5502) (Match!5502) (Else!5502) (Error!5502) (Case!5502) (If!5502) (Extends!5502) (Abstract!5502) (Class!5502) (Val!5502) (DelimiterValue!11004 (del!5562 List!36510)) (KeywordValue!5508 (value!170687 List!36510)) (CommentValue!11004 (value!170688 List!36510)) (WhitespaceValue!11004 (value!170689 List!36510)) (IndentationValue!5502 (value!170690 List!36510)) (String!40843) (Int32!5502) (Broken!27511 (value!170691 List!36510)) (Boolean!5503) (Unit!50985) (OperatorValue!5505 (op!5562 List!36510)) (IdentifierValue!11004 (value!170692 List!36510)) (IdentifierValue!11005 (value!170693 List!36510)) (WhitespaceValue!11005 (value!170694 List!36510)) (True!11004) (False!11004) (Broken!27512 (value!170695 List!36510)) (Broken!27513 (value!170696 List!36510)) (True!11005) (RightBrace!5502) (RightBracket!5502) (Colon!5502) (Null!5502) (Comma!5502) (LeftBracket!5502) (False!11005) (LeftBrace!5502) (ImaginaryLiteralValue!5502 (text!38960 List!36510)) (StringLiteralValue!16506 (value!170697 List!36510)) (EOFValue!5502 (value!170698 List!36510)) (IdentValue!5502 (value!170699 List!36510)) (DelimiterValue!11005 (value!170700 List!36510)) (DedentValue!5502 (value!170701 List!36510)) (NewLineValue!5502 (value!170702 List!36510)) (IntegerValue!16506 (value!170703 (_ BitVec 32)) (text!38961 List!36510)) (IntegerValue!16507 (value!170704 Int) (text!38962 List!36510)) (Times!5502) (Or!5502) (Equal!5502) (Minus!5502) (Broken!27514 (value!170705 List!36510)) (And!5502) (Div!5502) (LessEqual!5502) (Mod!5502) (Concat!15534) (Not!5502) (Plus!5502) (SpaceValue!5502 (value!170706 List!36510)) (IntegerValue!16508 (value!170707 Int) (text!38963 List!36510)) (StringLiteralValue!16507 (text!38964 List!36510)) (FloatLiteralValue!11005 (text!38965 List!36510)) (BytesLiteralValue!5502 (value!170708 List!36510)) (CommentValue!11005 (value!170709 List!36510)) (StringLiteralValue!16508 (value!170710 List!36510)) (ErrorTokenValue!5502 (msg!5563 List!36510)) )
))
(declare-datatypes ((List!36511 0))(
  ( (Nil!36387) (Cons!36387 (h!41807 C!20248) (t!241880 List!36511)) )
))
(declare-datatypes ((IArray!21843 0))(
  ( (IArray!21844 (innerList!10979 List!36511)) )
))
(declare-datatypes ((Conc!10919 0))(
  ( (Node!10919 (left!28333 Conc!10919) (right!28663 Conc!10919) (csize!22068 Int) (cheight!11130 Int)) (Leaf!17166 (xs!14041 IArray!21843) (csize!22069 Int)) (Empty!10919) )
))
(declare-datatypes ((BalanceConc!21452 0))(
  ( (BalanceConc!21453 (c!543285 Conc!10919)) )
))
(declare-datatypes ((String!40844 0))(
  ( (String!40845 (value!170711 String)) )
))
(declare-datatypes ((TokenValueInjection!10432 0))(
  ( (TokenValueInjection!10433 (toValue!7384 Int) (toChars!7243 Int)) )
))
(declare-datatypes ((Rule!10344 0))(
  ( (Rule!10345 (regex!5272 Regex!10031) (tag!5804 String!40844) (isSeparator!5272 Bool) (transformation!5272 TokenValueInjection!10432)) )
))
(declare-datatypes ((Token!9910 0))(
  ( (Token!9911 (value!170712 TokenValue!5502) (rule!7730 Rule!10344) (size!27446 Int) (originalCharacters!5986 List!36511)) )
))
(declare-fun separatorToken!241 () Token!9910)

(assert (=> b!3232589 (= res!1316219 (isSeparator!5272 (rule!7730 separatorToken!241)))))

(declare-fun b!3232590 () Bool)

(declare-datatypes ((Unit!50986 0))(
  ( (Unit!50987) )
))
(declare-fun e!2015996 () Unit!50986)

(declare-fun Unit!50988 () Unit!50986)

(assert (=> b!3232590 (= e!2015996 Unit!50988)))

(declare-fun lt!1096916 () List!36511)

(declare-fun lt!1096920 () Unit!50986)

(declare-fun lt!1096923 () C!20248)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!420 (Regex!10031 List!36511 C!20248) Unit!50986)

(assert (=> b!3232590 (= lt!1096920 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!420 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916 lt!1096923))))

(declare-fun res!1316228 () Bool)

(declare-fun matchR!4653 (Regex!10031 List!36511) Bool)

(assert (=> b!3232590 (= res!1316228 (not (matchR!4653 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916)))))

(declare-fun e!2015991 () Bool)

(assert (=> b!3232590 (=> (not res!1316228) (not e!2015991))))

(assert (=> b!3232590 e!2015991))

(declare-fun e!2015998 () Bool)

(assert (=> b!3232591 (= e!2015998 (and tp!1018802 tp!1018796))))

(declare-fun b!3232592 () Bool)

(declare-fun res!1316222 () Bool)

(declare-fun e!2015973 () Bool)

(assert (=> b!3232592 (=> (not res!1316222) (not e!2015973))))

(declare-datatypes ((LexerInterface!4861 0))(
  ( (LexerInterfaceExt!4858 (__x!23222 Int)) (Lexer!4859) )
))
(declare-fun thiss!18206 () LexerInterface!4861)

(declare-datatypes ((List!36512 0))(
  ( (Nil!36388) (Cons!36388 (h!41808 Rule!10344) (t!241881 List!36512)) )
))
(declare-fun rules!2135 () List!36512)

(declare-fun rulesInvariant!4258 (LexerInterface!4861 List!36512) Bool)

(assert (=> b!3232592 (= res!1316222 (rulesInvariant!4258 thiss!18206 rules!2135))))

(declare-fun b!3232593 () Bool)

(assert (=> b!3232593 (= e!2015973 e!2015975)))

(declare-fun res!1316221 () Bool)

(assert (=> b!3232593 (=> (not res!1316221) (not e!2015975))))

(declare-datatypes ((List!36513 0))(
  ( (Nil!36389) (Cons!36389 (h!41809 Token!9910) (t!241882 List!36513)) )
))
(declare-datatypes ((IArray!21845 0))(
  ( (IArray!21846 (innerList!10980 List!36513)) )
))
(declare-datatypes ((Conc!10920 0))(
  ( (Node!10920 (left!28334 Conc!10920) (right!28664 Conc!10920) (csize!22070 Int) (cheight!11131 Int)) (Leaf!17167 (xs!14042 IArray!21845) (csize!22071 Int)) (Empty!10920) )
))
(declare-datatypes ((BalanceConc!21454 0))(
  ( (BalanceConc!21455 (c!543286 Conc!10920)) )
))
(declare-fun lt!1096919 () BalanceConc!21454)

(declare-fun rulesProduceEachTokenIndividually!1312 (LexerInterface!4861 List!36512 BalanceConc!21454) Bool)

(assert (=> b!3232593 (= res!1316221 (rulesProduceEachTokenIndividually!1312 thiss!18206 rules!2135 lt!1096919))))

(declare-fun tokens!494 () List!36513)

(declare-fun seqFromList!3607 (List!36513) BalanceConc!21454)

(assert (=> b!3232593 (= lt!1096919 (seqFromList!3607 tokens!494))))

(declare-fun b!3232594 () Bool)

(declare-fun res!1316216 () Bool)

(assert (=> b!3232594 (=> (not res!1316216) (not e!2015975))))

(declare-fun sepAndNonSepRulesDisjointChars!1466 (List!36512 List!36512) Bool)

(assert (=> b!3232594 (= res!1316216 (sepAndNonSepRulesDisjointChars!1466 rules!2135 rules!2135))))

(declare-fun b!3232595 () Bool)

(declare-fun e!2015983 () Bool)

(declare-fun e!2015984 () Bool)

(assert (=> b!3232595 (= e!2015983 e!2015984)))

(declare-fun res!1316226 () Bool)

(assert (=> b!3232595 (=> res!1316226 e!2015984)))

(declare-datatypes ((tuple2!35818 0))(
  ( (tuple2!35819 (_1!21043 Token!9910) (_2!21043 List!36511)) )
))
(declare-datatypes ((Option!7227 0))(
  ( (None!7226) (Some!7226 (v!35846 tuple2!35818)) )
))
(declare-fun lt!1096931 () Option!7227)

(get-info :version)

(assert (=> b!3232595 (= res!1316226 (not ((_ is Some!7226) lt!1096931)))))

(declare-fun lt!1096917 () List!36511)

(declare-fun maxPrefix!2489 (LexerInterface!4861 List!36512 List!36511) Option!7227)

(assert (=> b!3232595 (= lt!1096931 (maxPrefix!2489 thiss!18206 rules!2135 lt!1096917))))

(declare-fun lt!1096922 () List!36511)

(assert (=> b!3232595 (= (maxPrefix!2489 thiss!18206 rules!2135 lt!1096922) (Some!7226 (tuple2!35819 (h!41809 tokens!494) lt!1096916)))))

(declare-fun lt!1096927 () Unit!50986)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!178 (LexerInterface!4861 List!36512 Token!9910 Rule!10344 List!36511 Rule!10344) Unit!50986)

(assert (=> b!3232595 (= lt!1096927 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!178 thiss!18206 rules!2135 (h!41809 tokens!494) (rule!7730 (h!41809 tokens!494)) lt!1096916 (rule!7730 separatorToken!241)))))

(declare-fun contains!6535 (List!36511 C!20248) Bool)

(declare-fun usedCharacters!574 (Regex!10031) List!36511)

(assert (=> b!3232595 (not (contains!6535 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494)))) lt!1096923))))

(declare-fun lt!1096934 () Unit!50986)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!178 (LexerInterface!4861 List!36512 List!36512 Rule!10344 Rule!10344 C!20248) Unit!50986)

(assert (=> b!3232595 (= lt!1096934 (lemmaNonSepRuleNotContainsCharContainedInASepRule!178 thiss!18206 rules!2135 rules!2135 (rule!7730 (h!41809 tokens!494)) (rule!7730 separatorToken!241) lt!1096923))))

(declare-fun b!3232596 () Bool)

(declare-fun tp!1018798 () Bool)

(declare-fun e!2015989 () Bool)

(declare-fun e!2015978 () Bool)

(declare-fun inv!21 (TokenValue!5502) Bool)

(assert (=> b!3232596 (= e!2015978 (and (inv!21 (value!170712 separatorToken!241)) e!2015989 tp!1018798))))

(declare-fun e!2015997 () Bool)

(assert (=> b!3232597 (= e!2015997 (and tp!1018794 tp!1018801))))

(declare-fun b!3232598 () Bool)

(declare-fun e!2015977 () Bool)

(declare-fun e!2015987 () Bool)

(assert (=> b!3232598 (= e!2015977 e!2015987)))

(declare-fun res!1316210 () Bool)

(assert (=> b!3232598 (=> res!1316210 e!2015987)))

(assert (=> b!3232598 (= res!1316210 (isSeparator!5272 (rule!7730 (h!41809 tokens!494))))))

(declare-fun lt!1096909 () Unit!50986)

(declare-fun lambda!118305 () Int)

(declare-fun forallContained!1233 (List!36513 Int Token!9910) Unit!50986)

(assert (=> b!3232598 (= lt!1096909 (forallContained!1233 tokens!494 lambda!118305 (h!41809 tokens!494)))))

(declare-fun b!3232600 () Bool)

(declare-fun e!2015988 () Bool)

(assert (=> b!3232600 (= e!2015987 e!2015988)))

(declare-fun res!1316218 () Bool)

(assert (=> b!3232600 (=> res!1316218 e!2015988)))

(assert (=> b!3232600 (= res!1316218 (not (= lt!1096917 lt!1096922)))))

(declare-fun lt!1096911 () List!36511)

(declare-fun ++!8768 (List!36511 List!36511) List!36511)

(assert (=> b!3232600 (= lt!1096922 (++!8768 lt!1096911 lt!1096916))))

(declare-fun lt!1096930 () BalanceConc!21452)

(declare-fun list!12991 (BalanceConc!21452) List!36511)

(assert (=> b!3232600 (= lt!1096917 (list!12991 lt!1096930))))

(declare-fun charsOf!3288 (Token!9910) BalanceConc!21452)

(assert (=> b!3232600 (= lt!1096916 (list!12991 (charsOf!3288 separatorToken!241)))))

(declare-fun printWithSeparatorToken!78 (LexerInterface!4861 BalanceConc!21454 Token!9910) BalanceConc!21452)

(assert (=> b!3232600 (= lt!1096930 (printWithSeparatorToken!78 thiss!18206 lt!1096919 separatorToken!241))))

(declare-fun b!3232601 () Bool)

(declare-fun e!2015986 () Bool)

(declare-fun e!2015980 () Bool)

(assert (=> b!3232601 (= e!2015986 e!2015980)))

(declare-fun res!1316214 () Bool)

(assert (=> b!3232601 (=> res!1316214 e!2015980)))

(declare-fun lt!1096914 () List!36511)

(declare-fun lt!1096936 () List!36511)

(assert (=> b!3232601 (= res!1316214 (or (not (= lt!1096914 lt!1096911)) (not (= lt!1096936 lt!1096911))))))

(assert (=> b!3232601 (= lt!1096911 (list!12991 (charsOf!3288 (h!41809 tokens!494))))))

(declare-fun e!2015982 () Bool)

(assert (=> b!3232602 (= e!2015982 (and tp!1018792 tp!1018800))))

(declare-fun b!3232603 () Bool)

(assert (=> b!3232603 (= e!2015988 e!2015983)))

(declare-fun res!1316209 () Bool)

(assert (=> b!3232603 (=> res!1316209 e!2015983)))

(declare-fun lt!1096912 () Bool)

(assert (=> b!3232603 (= res!1316209 lt!1096912)))

(declare-fun lt!1096928 () Unit!50986)

(assert (=> b!3232603 (= lt!1096928 e!2015996)))

(declare-fun c!543283 () Bool)

(assert (=> b!3232603 (= c!543283 lt!1096912)))

(assert (=> b!3232603 (= lt!1096912 (not (contains!6535 (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241))) lt!1096923)))))

(declare-fun head!7093 (List!36511) C!20248)

(assert (=> b!3232603 (= lt!1096923 (head!7093 lt!1096916))))

(declare-fun lt!1096932 () BalanceConc!21452)

(declare-fun maxPrefixOneRule!1626 (LexerInterface!4861 Rule!10344 List!36511) Option!7227)

(declare-fun apply!8312 (TokenValueInjection!10432 BalanceConc!21452) TokenValue!5502)

(declare-fun size!27447 (List!36511) Int)

(assert (=> b!3232603 (= (maxPrefixOneRule!1626 thiss!18206 (rule!7730 (h!41809 tokens!494)) lt!1096911) (Some!7226 (tuple2!35819 (Token!9911 (apply!8312 (transformation!5272 (rule!7730 (h!41809 tokens!494))) lt!1096932) (rule!7730 (h!41809 tokens!494)) (size!27447 lt!1096911) lt!1096911) Nil!36387)))))

(declare-fun lt!1096924 () Unit!50986)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!737 (LexerInterface!4861 List!36512 List!36511 List!36511 List!36511 Rule!10344) Unit!50986)

(assert (=> b!3232603 (= lt!1096924 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!737 thiss!18206 rules!2135 lt!1096911 lt!1096911 Nil!36387 (rule!7730 (h!41809 tokens!494))))))

(declare-fun e!2016002 () Bool)

(assert (=> b!3232603 e!2016002))

(declare-fun res!1316227 () Bool)

(assert (=> b!3232603 (=> (not res!1316227) (not e!2016002))))

(declare-datatypes ((Option!7228 0))(
  ( (None!7227) (Some!7227 (v!35847 Rule!10344)) )
))
(declare-fun lt!1096925 () Option!7228)

(declare-fun isDefined!5600 (Option!7228) Bool)

(assert (=> b!3232603 (= res!1316227 (isDefined!5600 lt!1096925))))

(declare-fun getRuleFromTag!963 (LexerInterface!4861 List!36512 String!40844) Option!7228)

(assert (=> b!3232603 (= lt!1096925 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 separatorToken!241))))))

(declare-fun lt!1096921 () Unit!50986)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!963 (LexerInterface!4861 List!36512 List!36511 Token!9910) Unit!50986)

(assert (=> b!3232603 (= lt!1096921 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!963 thiss!18206 rules!2135 lt!1096916 separatorToken!241))))

(declare-fun e!2015974 () Bool)

(assert (=> b!3232603 e!2015974))

(declare-fun res!1316223 () Bool)

(assert (=> b!3232603 (=> (not res!1316223) (not e!2015974))))

(declare-fun lt!1096929 () Option!7228)

(assert (=> b!3232603 (= res!1316223 (isDefined!5600 lt!1096929))))

(assert (=> b!3232603 (= lt!1096929 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 (h!41809 tokens!494)))))))

(declare-fun lt!1096910 () Unit!50986)

(assert (=> b!3232603 (= lt!1096910 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!963 thiss!18206 rules!2135 lt!1096911 (h!41809 tokens!494)))))

(declare-fun lt!1096933 () Unit!50986)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!886 (LexerInterface!4861 List!36512 List!36513 Token!9910) Unit!50986)

(assert (=> b!3232603 (= lt!1096933 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!886 thiss!18206 rules!2135 tokens!494 (h!41809 tokens!494)))))

(declare-fun isEmpty!20475 (List!36511) Bool)

(declare-fun getSuffix!1396 (List!36511 List!36511) List!36511)

(assert (=> b!3232603 (isEmpty!20475 (getSuffix!1396 lt!1096911 lt!1096911))))

(declare-fun lt!1096913 () Unit!50986)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!60 (List!36511) Unit!50986)

(assert (=> b!3232603 (= lt!1096913 (lemmaGetSuffixOnListWithItSelfIsEmpty!60 lt!1096911))))

(declare-fun b!3232604 () Bool)

(declare-fun res!1316211 () Bool)

(assert (=> b!3232604 (=> (not res!1316211) (not e!2015973))))

(declare-fun isEmpty!20476 (List!36512) Bool)

(assert (=> b!3232604 (= res!1316211 (not (isEmpty!20476 rules!2135)))))

(declare-fun b!3232605 () Bool)

(declare-fun res!1316215 () Bool)

(assert (=> b!3232605 (=> (not res!1316215) (not e!2015975))))

(declare-fun forall!7486 (List!36513 Int) Bool)

(assert (=> b!3232605 (= res!1316215 (forall!7486 tokens!494 lambda!118305))))

(declare-fun e!2015990 () Bool)

(declare-fun e!2015994 () Bool)

(declare-fun tp!1018795 () Bool)

(declare-fun b!3232606 () Bool)

(declare-fun inv!49284 (Token!9910) Bool)

(assert (=> b!3232606 (= e!2015990 (and (inv!49284 (h!41809 tokens!494)) e!2015994 tp!1018795))))

(declare-fun b!3232607 () Bool)

(declare-fun get!11590 (Option!7227) tuple2!35818)

(assert (=> b!3232607 (= e!2015984 (= (_2!21043 (v!35846 lt!1096931)) (_2!21043 (get!11590 lt!1096931))))))

(declare-fun b!3232608 () Bool)

(declare-fun e!2015999 () Bool)

(assert (=> b!3232608 (= e!2016002 e!2015999)))

(declare-fun res!1316213 () Bool)

(assert (=> b!3232608 (=> (not res!1316213) (not e!2015999))))

(declare-fun lt!1096918 () Rule!10344)

(assert (=> b!3232608 (= res!1316213 (matchR!4653 (regex!5272 lt!1096918) lt!1096916))))

(declare-fun get!11591 (Option!7228) Rule!10344)

(assert (=> b!3232608 (= lt!1096918 (get!11591 lt!1096925))))

(declare-fun b!3232609 () Bool)

(declare-fun res!1316224 () Bool)

(assert (=> b!3232609 (=> (not res!1316224) (not e!2015975))))

(declare-fun rulesProduceIndividualToken!2353 (LexerInterface!4861 List!36512 Token!9910) Bool)

(assert (=> b!3232609 (= res!1316224 (rulesProduceIndividualToken!2353 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3232610 () Bool)

(declare-fun Unit!50989 () Unit!50986)

(assert (=> b!3232610 (= e!2015996 Unit!50989)))

(declare-fun b!3232611 () Bool)

(assert (=> b!3232611 (= e!2015980 e!2015977)))

(declare-fun res!1316212 () Bool)

(assert (=> b!3232611 (=> res!1316212 e!2015977)))

(declare-fun isEmpty!20477 (BalanceConc!21454) Bool)

(declare-datatypes ((tuple2!35820 0))(
  ( (tuple2!35821 (_1!21044 BalanceConc!21454) (_2!21044 BalanceConc!21452)) )
))
(declare-fun lex!2189 (LexerInterface!4861 List!36512 BalanceConc!21452) tuple2!35820)

(assert (=> b!3232611 (= res!1316212 (isEmpty!20477 (_1!21044 (lex!2189 thiss!18206 rules!2135 lt!1096932))))))

(declare-fun seqFromList!3608 (List!36511) BalanceConc!21452)

(assert (=> b!3232611 (= lt!1096932 (seqFromList!3608 lt!1096911))))

(declare-fun b!3232612 () Bool)

(declare-fun e!2015985 () Bool)

(assert (=> b!3232612 (= e!2015974 e!2015985)))

(declare-fun res!1316220 () Bool)

(assert (=> b!3232612 (=> (not res!1316220) (not e!2015985))))

(declare-fun lt!1096935 () Rule!10344)

(assert (=> b!3232612 (= res!1316220 (matchR!4653 (regex!5272 lt!1096935) lt!1096911))))

(assert (=> b!3232612 (= lt!1096935 (get!11591 lt!1096929))))

(declare-fun e!2015981 () Bool)

(declare-fun b!3232613 () Bool)

(declare-fun tp!1018799 () Bool)

(assert (=> b!3232613 (= e!2015994 (and (inv!21 (value!170712 (h!41809 tokens!494))) e!2015981 tp!1018799))))

(declare-fun b!3232614 () Bool)

(declare-fun e!2015993 () Bool)

(declare-fun e!2016001 () Bool)

(declare-fun tp!1018790 () Bool)

(assert (=> b!3232614 (= e!2015993 (and e!2016001 tp!1018790))))

(declare-fun b!3232615 () Bool)

(declare-fun res!1316225 () Bool)

(assert (=> b!3232615 (=> (not res!1316225) (not e!2015975))))

(assert (=> b!3232615 (= res!1316225 (and (not ((_ is Nil!36389) tokens!494)) ((_ is Nil!36389) (t!241882 tokens!494))))))

(declare-fun b!3232616 () Bool)

(declare-fun res!1316217 () Bool)

(assert (=> b!3232616 (=> res!1316217 e!2015980)))

(assert (=> b!3232616 (= res!1316217 (not (rulesProduceIndividualToken!2353 thiss!18206 rules!2135 (h!41809 tokens!494))))))

(declare-fun b!3232617 () Bool)

(assert (=> b!3232617 (= e!2015985 (= (rule!7730 (h!41809 tokens!494)) lt!1096935))))

(declare-fun b!3232618 () Bool)

(assert (=> b!3232618 (= e!2015991 false)))

(declare-fun tp!1018791 () Bool)

(declare-fun b!3232619 () Bool)

(declare-fun inv!49281 (String!40844) Bool)

(declare-fun inv!49285 (TokenValueInjection!10432) Bool)

(assert (=> b!3232619 (= e!2015981 (and tp!1018791 (inv!49281 (tag!5804 (rule!7730 (h!41809 tokens!494)))) (inv!49285 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) e!2015982))))

(declare-fun b!3232620 () Bool)

(declare-fun tp!1018793 () Bool)

(assert (=> b!3232620 (= e!2016001 (and tp!1018793 (inv!49281 (tag!5804 (h!41808 rules!2135))) (inv!49285 (transformation!5272 (h!41808 rules!2135))) e!2015998))))

(declare-fun b!3232621 () Bool)

(assert (=> b!3232621 (= e!2015999 (= (rule!7730 separatorToken!241) lt!1096918))))

(declare-fun b!3232622 () Bool)

(assert (=> b!3232622 (= e!2015975 (not e!2015986))))

(declare-fun res!1316208 () Bool)

(assert (=> b!3232622 (=> res!1316208 e!2015986)))

(assert (=> b!3232622 (= res!1316208 (not (= lt!1096936 lt!1096914)))))

(declare-fun printList!1411 (LexerInterface!4861 List!36513) List!36511)

(assert (=> b!3232622 (= lt!1096914 (printList!1411 thiss!18206 (Cons!36389 (h!41809 tokens!494) Nil!36389)))))

(declare-fun lt!1096926 () BalanceConc!21452)

(assert (=> b!3232622 (= lt!1096936 (list!12991 lt!1096926))))

(declare-fun lt!1096915 () BalanceConc!21454)

(declare-fun printTailRec!1358 (LexerInterface!4861 BalanceConc!21454 Int BalanceConc!21452) BalanceConc!21452)

(assert (=> b!3232622 (= lt!1096926 (printTailRec!1358 thiss!18206 lt!1096915 0 (BalanceConc!21453 Empty!10919)))))

(declare-fun print!1926 (LexerInterface!4861 BalanceConc!21454) BalanceConc!21452)

(assert (=> b!3232622 (= lt!1096926 (print!1926 thiss!18206 lt!1096915))))

(declare-fun singletonSeq!2368 (Token!9910) BalanceConc!21454)

(assert (=> b!3232622 (= lt!1096915 (singletonSeq!2368 (h!41809 tokens!494)))))

(declare-fun res!1316229 () Bool)

(assert (=> start!303910 (=> (not res!1316229) (not e!2015973))))

(assert (=> start!303910 (= res!1316229 ((_ is Lexer!4859) thiss!18206))))

(assert (=> start!303910 e!2015973))

(assert (=> start!303910 true))

(assert (=> start!303910 e!2015993))

(assert (=> start!303910 (and (inv!49284 separatorToken!241) e!2015978)))

(assert (=> start!303910 e!2015990))

(declare-fun b!3232599 () Bool)

(declare-fun tp!1018797 () Bool)

(assert (=> b!3232599 (= e!2015989 (and tp!1018797 (inv!49281 (tag!5804 (rule!7730 separatorToken!241))) (inv!49285 (transformation!5272 (rule!7730 separatorToken!241))) e!2015997))))

(assert (= (and start!303910 res!1316229) b!3232604))

(assert (= (and b!3232604 res!1316211) b!3232592))

(assert (= (and b!3232592 res!1316222) b!3232593))

(assert (= (and b!3232593 res!1316221) b!3232609))

(assert (= (and b!3232609 res!1316224) b!3232589))

(assert (= (and b!3232589 res!1316219) b!3232605))

(assert (= (and b!3232605 res!1316215) b!3232594))

(assert (= (and b!3232594 res!1316216) b!3232615))

(assert (= (and b!3232615 res!1316225) b!3232622))

(assert (= (and b!3232622 (not res!1316208)) b!3232601))

(assert (= (and b!3232601 (not res!1316214)) b!3232616))

(assert (= (and b!3232616 (not res!1316217)) b!3232611))

(assert (= (and b!3232611 (not res!1316212)) b!3232598))

(assert (= (and b!3232598 (not res!1316210)) b!3232600))

(assert (= (and b!3232600 (not res!1316218)) b!3232603))

(assert (= (and b!3232603 res!1316223) b!3232612))

(assert (= (and b!3232612 res!1316220) b!3232617))

(assert (= (and b!3232603 res!1316227) b!3232608))

(assert (= (and b!3232608 res!1316213) b!3232621))

(assert (= (and b!3232603 c!543283) b!3232590))

(assert (= (and b!3232603 (not c!543283)) b!3232610))

(assert (= (and b!3232590 res!1316228) b!3232618))

(assert (= (and b!3232603 (not res!1316209)) b!3232595))

(assert (= (and b!3232595 (not res!1316226)) b!3232607))

(assert (= b!3232620 b!3232591))

(assert (= b!3232614 b!3232620))

(assert (= (and start!303910 ((_ is Cons!36388) rules!2135)) b!3232614))

(assert (= b!3232599 b!3232597))

(assert (= b!3232596 b!3232599))

(assert (= start!303910 b!3232596))

(assert (= b!3232619 b!3232602))

(assert (= b!3232613 b!3232619))

(assert (= b!3232606 b!3232613))

(assert (= (and start!303910 ((_ is Cons!36389) tokens!494)) b!3232606))

(declare-fun m!3514251 () Bool)

(assert (=> start!303910 m!3514251))

(declare-fun m!3514253 () Bool)

(assert (=> b!3232599 m!3514253))

(declare-fun m!3514255 () Bool)

(assert (=> b!3232599 m!3514255))

(declare-fun m!3514257 () Bool)

(assert (=> b!3232620 m!3514257))

(declare-fun m!3514259 () Bool)

(assert (=> b!3232620 m!3514259))

(declare-fun m!3514261 () Bool)

(assert (=> b!3232604 m!3514261))

(declare-fun m!3514263 () Bool)

(assert (=> b!3232611 m!3514263))

(declare-fun m!3514265 () Bool)

(assert (=> b!3232611 m!3514265))

(declare-fun m!3514267 () Bool)

(assert (=> b!3232611 m!3514267))

(declare-fun m!3514269 () Bool)

(assert (=> b!3232616 m!3514269))

(declare-fun m!3514271 () Bool)

(assert (=> b!3232607 m!3514271))

(declare-fun m!3514273 () Bool)

(assert (=> b!3232613 m!3514273))

(declare-fun m!3514275 () Bool)

(assert (=> b!3232595 m!3514275))

(declare-fun m!3514277 () Bool)

(assert (=> b!3232595 m!3514277))

(declare-fun m!3514279 () Bool)

(assert (=> b!3232595 m!3514279))

(declare-fun m!3514281 () Bool)

(assert (=> b!3232595 m!3514281))

(declare-fun m!3514283 () Bool)

(assert (=> b!3232595 m!3514283))

(assert (=> b!3232595 m!3514283))

(declare-fun m!3514285 () Bool)

(assert (=> b!3232595 m!3514285))

(declare-fun m!3514287 () Bool)

(assert (=> b!3232596 m!3514287))

(declare-fun m!3514289 () Bool)

(assert (=> b!3232594 m!3514289))

(declare-fun m!3514291 () Bool)

(assert (=> b!3232608 m!3514291))

(declare-fun m!3514293 () Bool)

(assert (=> b!3232608 m!3514293))

(declare-fun m!3514295 () Bool)

(assert (=> b!3232603 m!3514295))

(declare-fun m!3514297 () Bool)

(assert (=> b!3232603 m!3514297))

(declare-fun m!3514299 () Bool)

(assert (=> b!3232603 m!3514299))

(declare-fun m!3514301 () Bool)

(assert (=> b!3232603 m!3514301))

(declare-fun m!3514303 () Bool)

(assert (=> b!3232603 m!3514303))

(assert (=> b!3232603 m!3514297))

(declare-fun m!3514305 () Bool)

(assert (=> b!3232603 m!3514305))

(declare-fun m!3514307 () Bool)

(assert (=> b!3232603 m!3514307))

(declare-fun m!3514309 () Bool)

(assert (=> b!3232603 m!3514309))

(declare-fun m!3514311 () Bool)

(assert (=> b!3232603 m!3514311))

(declare-fun m!3514313 () Bool)

(assert (=> b!3232603 m!3514313))

(declare-fun m!3514315 () Bool)

(assert (=> b!3232603 m!3514315))

(declare-fun m!3514317 () Bool)

(assert (=> b!3232603 m!3514317))

(declare-fun m!3514319 () Bool)

(assert (=> b!3232603 m!3514319))

(declare-fun m!3514321 () Bool)

(assert (=> b!3232603 m!3514321))

(declare-fun m!3514323 () Bool)

(assert (=> b!3232603 m!3514323))

(declare-fun m!3514325 () Bool)

(assert (=> b!3232603 m!3514325))

(assert (=> b!3232603 m!3514317))

(declare-fun m!3514327 () Bool)

(assert (=> b!3232603 m!3514327))

(declare-fun m!3514329 () Bool)

(assert (=> b!3232590 m!3514329))

(declare-fun m!3514331 () Bool)

(assert (=> b!3232590 m!3514331))

(declare-fun m!3514333 () Bool)

(assert (=> b!3232605 m!3514333))

(declare-fun m!3514335 () Bool)

(assert (=> b!3232600 m!3514335))

(declare-fun m!3514337 () Bool)

(assert (=> b!3232600 m!3514337))

(declare-fun m!3514339 () Bool)

(assert (=> b!3232600 m!3514339))

(assert (=> b!3232600 m!3514335))

(declare-fun m!3514341 () Bool)

(assert (=> b!3232600 m!3514341))

(declare-fun m!3514343 () Bool)

(assert (=> b!3232600 m!3514343))

(declare-fun m!3514345 () Bool)

(assert (=> b!3232609 m!3514345))

(declare-fun m!3514347 () Bool)

(assert (=> b!3232598 m!3514347))

(declare-fun m!3514349 () Bool)

(assert (=> b!3232622 m!3514349))

(declare-fun m!3514351 () Bool)

(assert (=> b!3232622 m!3514351))

(declare-fun m!3514353 () Bool)

(assert (=> b!3232622 m!3514353))

(declare-fun m!3514355 () Bool)

(assert (=> b!3232622 m!3514355))

(declare-fun m!3514357 () Bool)

(assert (=> b!3232622 m!3514357))

(declare-fun m!3514359 () Bool)

(assert (=> b!3232593 m!3514359))

(declare-fun m!3514361 () Bool)

(assert (=> b!3232593 m!3514361))

(declare-fun m!3514363 () Bool)

(assert (=> b!3232592 m!3514363))

(declare-fun m!3514365 () Bool)

(assert (=> b!3232606 m!3514365))

(declare-fun m!3514367 () Bool)

(assert (=> b!3232612 m!3514367))

(declare-fun m!3514369 () Bool)

(assert (=> b!3232612 m!3514369))

(declare-fun m!3514371 () Bool)

(assert (=> b!3232601 m!3514371))

(assert (=> b!3232601 m!3514371))

(declare-fun m!3514373 () Bool)

(assert (=> b!3232601 m!3514373))

(declare-fun m!3514375 () Bool)

(assert (=> b!3232619 m!3514375))

(declare-fun m!3514377 () Bool)

(assert (=> b!3232619 m!3514377))

(check-sat (not b!3232605) (not b!3232598) (not b!3232596) (not b_next!86955) b_and!216635 (not b!3232595) (not b!3232606) (not b!3232607) (not b_next!86957) (not b!3232594) (not b!3232601) (not start!303910) (not b!3232604) b_and!216633 b_and!216641 (not b!3232614) (not b!3232590) b_and!216631 (not b_next!86961) b_and!216637 (not b!3232608) (not b!3232619) (not b!3232616) (not b!3232613) (not b_next!86959) (not b!3232593) (not b!3232612) (not b!3232611) (not b!3232603) (not b!3232620) (not b_next!86963) (not b!3232622) b_and!216639 (not b_next!86953) (not b!3232600) (not b!3232592) (not b!3232599) (not b!3232609))
(check-sat b_and!216641 b_and!216631 (not b_next!86955) b_and!216635 (not b_next!86957) (not b_next!86959) b_and!216633 (not b_next!86963) (not b_next!86961) b_and!216637 b_and!216639 (not b_next!86953))
(get-model)

(declare-fun d!888357 () Bool)

(declare-fun list!12994 (Conc!10919) List!36511)

(assert (=> d!888357 (= (list!12991 (charsOf!3288 (h!41809 tokens!494))) (list!12994 (c!543285 (charsOf!3288 (h!41809 tokens!494)))))))

(declare-fun bs!543416 () Bool)

(assert (= bs!543416 d!888357))

(declare-fun m!3514409 () Bool)

(assert (=> bs!543416 m!3514409))

(assert (=> b!3232601 d!888357))

(declare-fun d!888359 () Bool)

(declare-fun lt!1096949 () BalanceConc!21452)

(assert (=> d!888359 (= (list!12991 lt!1096949) (originalCharacters!5986 (h!41809 tokens!494)))))

(declare-fun dynLambda!14806 (Int TokenValue!5502) BalanceConc!21452)

(assert (=> d!888359 (= lt!1096949 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (value!170712 (h!41809 tokens!494))))))

(assert (=> d!888359 (= (charsOf!3288 (h!41809 tokens!494)) lt!1096949)))

(declare-fun b_lambda!89055 () Bool)

(assert (=> (not b_lambda!89055) (not d!888359)))

(declare-fun tb!160303 () Bool)

(declare-fun t!241884 () Bool)

(assert (=> (and b!3232597 (= (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241884) tb!160303))

(declare-fun b!3232683 () Bool)

(declare-fun e!2016033 () Bool)

(declare-fun tp!1018805 () Bool)

(declare-fun inv!49288 (Conc!10919) Bool)

(assert (=> b!3232683 (= e!2016033 (and (inv!49288 (c!543285 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (value!170712 (h!41809 tokens!494))))) tp!1018805))))

(declare-fun result!202864 () Bool)

(declare-fun inv!49289 (BalanceConc!21452) Bool)

(assert (=> tb!160303 (= result!202864 (and (inv!49289 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (value!170712 (h!41809 tokens!494)))) e!2016033))))

(assert (= tb!160303 b!3232683))

(declare-fun m!3514411 () Bool)

(assert (=> b!3232683 m!3514411))

(declare-fun m!3514413 () Bool)

(assert (=> tb!160303 m!3514413))

(assert (=> d!888359 t!241884))

(declare-fun b_and!216643 () Bool)

(assert (= b_and!216633 (and (=> t!241884 result!202864) b_and!216643)))

(declare-fun tb!160305 () Bool)

(declare-fun t!241886 () Bool)

(assert (=> (and b!3232591 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241886) tb!160305))

(declare-fun result!202868 () Bool)

(assert (= result!202868 result!202864))

(assert (=> d!888359 t!241886))

(declare-fun b_and!216645 () Bool)

(assert (= b_and!216637 (and (=> t!241886 result!202868) b_and!216645)))

(declare-fun t!241888 () Bool)

(declare-fun tb!160307 () Bool)

(assert (=> (and b!3232602 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241888) tb!160307))

(declare-fun result!202870 () Bool)

(assert (= result!202870 result!202864))

(assert (=> d!888359 t!241888))

(declare-fun b_and!216647 () Bool)

(assert (= b_and!216641 (and (=> t!241888 result!202870) b_and!216647)))

(declare-fun m!3514415 () Bool)

(assert (=> d!888359 m!3514415))

(declare-fun m!3514417 () Bool)

(assert (=> d!888359 m!3514417))

(assert (=> b!3232601 d!888359))

(declare-fun d!888361 () Bool)

(declare-fun lt!1096952 () BalanceConc!21452)

(declare-fun list!12995 (BalanceConc!21454) List!36513)

(assert (=> d!888361 (= (list!12991 lt!1096952) (printList!1411 thiss!18206 (list!12995 lt!1096915)))))

(assert (=> d!888361 (= lt!1096952 (printTailRec!1358 thiss!18206 lt!1096915 0 (BalanceConc!21453 Empty!10919)))))

(assert (=> d!888361 (= (print!1926 thiss!18206 lt!1096915) lt!1096952)))

(declare-fun bs!543417 () Bool)

(assert (= bs!543417 d!888361))

(declare-fun m!3514419 () Bool)

(assert (=> bs!543417 m!3514419))

(declare-fun m!3514421 () Bool)

(assert (=> bs!543417 m!3514421))

(assert (=> bs!543417 m!3514421))

(declare-fun m!3514423 () Bool)

(assert (=> bs!543417 m!3514423))

(assert (=> bs!543417 m!3514357))

(assert (=> b!3232622 d!888361))

(declare-fun d!888363 () Bool)

(assert (=> d!888363 (= (list!12991 lt!1096926) (list!12994 (c!543285 lt!1096926)))))

(declare-fun bs!543418 () Bool)

(assert (= bs!543418 d!888363))

(declare-fun m!3514425 () Bool)

(assert (=> bs!543418 m!3514425))

(assert (=> b!3232622 d!888363))

(declare-fun d!888365 () Bool)

(declare-fun lt!1096973 () BalanceConc!21452)

(declare-fun printListTailRec!579 (LexerInterface!4861 List!36513 List!36511) List!36511)

(declare-fun dropList!1096 (BalanceConc!21454 Int) List!36513)

(assert (=> d!888365 (= (list!12991 lt!1096973) (printListTailRec!579 thiss!18206 (dropList!1096 lt!1096915 0) (list!12991 (BalanceConc!21453 Empty!10919))))))

(declare-fun e!2016072 () BalanceConc!21452)

(assert (=> d!888365 (= lt!1096973 e!2016072)))

(declare-fun c!543311 () Bool)

(declare-fun size!27450 (BalanceConc!21454) Int)

(assert (=> d!888365 (= c!543311 (>= 0 (size!27450 lt!1096915)))))

(declare-fun e!2016071 () Bool)

(assert (=> d!888365 e!2016071))

(declare-fun res!1316301 () Bool)

(assert (=> d!888365 (=> (not res!1316301) (not e!2016071))))

(assert (=> d!888365 (= res!1316301 (>= 0 0))))

(assert (=> d!888365 (= (printTailRec!1358 thiss!18206 lt!1096915 0 (BalanceConc!21453 Empty!10919)) lt!1096973)))

(declare-fun b!3232740 () Bool)

(assert (=> b!3232740 (= e!2016071 (<= 0 (size!27450 lt!1096915)))))

(declare-fun b!3232741 () Bool)

(assert (=> b!3232741 (= e!2016072 (BalanceConc!21453 Empty!10919))))

(declare-fun b!3232742 () Bool)

(declare-fun ++!8770 (BalanceConc!21452 BalanceConc!21452) BalanceConc!21452)

(declare-fun apply!8315 (BalanceConc!21454 Int) Token!9910)

(assert (=> b!3232742 (= e!2016072 (printTailRec!1358 thiss!18206 lt!1096915 (+ 0 1) (++!8770 (BalanceConc!21453 Empty!10919) (charsOf!3288 (apply!8315 lt!1096915 0)))))))

(declare-fun lt!1096972 () List!36513)

(assert (=> b!3232742 (= lt!1096972 (list!12995 lt!1096915))))

(declare-fun lt!1096976 () Unit!50986)

(declare-fun lemmaDropApply!1055 (List!36513 Int) Unit!50986)

(assert (=> b!3232742 (= lt!1096976 (lemmaDropApply!1055 lt!1096972 0))))

(declare-fun head!7095 (List!36513) Token!9910)

(declare-fun drop!1881 (List!36513 Int) List!36513)

(declare-fun apply!8316 (List!36513 Int) Token!9910)

(assert (=> b!3232742 (= (head!7095 (drop!1881 lt!1096972 0)) (apply!8316 lt!1096972 0))))

(declare-fun lt!1096974 () Unit!50986)

(assert (=> b!3232742 (= lt!1096974 lt!1096976)))

(declare-fun lt!1096970 () List!36513)

(assert (=> b!3232742 (= lt!1096970 (list!12995 lt!1096915))))

(declare-fun lt!1096975 () Unit!50986)

(declare-fun lemmaDropTail!939 (List!36513 Int) Unit!50986)

(assert (=> b!3232742 (= lt!1096975 (lemmaDropTail!939 lt!1096970 0))))

(declare-fun tail!5236 (List!36513) List!36513)

(assert (=> b!3232742 (= (tail!5236 (drop!1881 lt!1096970 0)) (drop!1881 lt!1096970 (+ 0 1)))))

(declare-fun lt!1096971 () Unit!50986)

(assert (=> b!3232742 (= lt!1096971 lt!1096975)))

(assert (= (and d!888365 res!1316301) b!3232740))

(assert (= (and d!888365 c!543311) b!3232741))

(assert (= (and d!888365 (not c!543311)) b!3232742))

(declare-fun m!3514473 () Bool)

(assert (=> d!888365 m!3514473))

(declare-fun m!3514475 () Bool)

(assert (=> d!888365 m!3514475))

(declare-fun m!3514477 () Bool)

(assert (=> d!888365 m!3514477))

(declare-fun m!3514479 () Bool)

(assert (=> d!888365 m!3514479))

(declare-fun m!3514481 () Bool)

(assert (=> d!888365 m!3514481))

(assert (=> d!888365 m!3514475))

(assert (=> d!888365 m!3514477))

(assert (=> b!3232740 m!3514481))

(declare-fun m!3514483 () Bool)

(assert (=> b!3232742 m!3514483))

(declare-fun m!3514485 () Bool)

(assert (=> b!3232742 m!3514485))

(declare-fun m!3514487 () Bool)

(assert (=> b!3232742 m!3514487))

(assert (=> b!3232742 m!3514485))

(declare-fun m!3514489 () Bool)

(assert (=> b!3232742 m!3514489))

(declare-fun m!3514491 () Bool)

(assert (=> b!3232742 m!3514491))

(assert (=> b!3232742 m!3514487))

(declare-fun m!3514493 () Bool)

(assert (=> b!3232742 m!3514493))

(assert (=> b!3232742 m!3514421))

(declare-fun m!3514495 () Bool)

(assert (=> b!3232742 m!3514495))

(declare-fun m!3514497 () Bool)

(assert (=> b!3232742 m!3514497))

(assert (=> b!3232742 m!3514497))

(declare-fun m!3514499 () Bool)

(assert (=> b!3232742 m!3514499))

(declare-fun m!3514501 () Bool)

(assert (=> b!3232742 m!3514501))

(assert (=> b!3232742 m!3514483))

(declare-fun m!3514503 () Bool)

(assert (=> b!3232742 m!3514503))

(assert (=> b!3232742 m!3514501))

(declare-fun m!3514505 () Bool)

(assert (=> b!3232742 m!3514505))

(assert (=> b!3232622 d!888365))

(declare-fun d!888381 () Bool)

(declare-fun e!2016075 () Bool)

(assert (=> d!888381 e!2016075))

(declare-fun res!1316304 () Bool)

(assert (=> d!888381 (=> (not res!1316304) (not e!2016075))))

(declare-fun lt!1096979 () BalanceConc!21454)

(assert (=> d!888381 (= res!1316304 (= (list!12995 lt!1096979) (Cons!36389 (h!41809 tokens!494) Nil!36389)))))

(declare-fun singleton!1012 (Token!9910) BalanceConc!21454)

(assert (=> d!888381 (= lt!1096979 (singleton!1012 (h!41809 tokens!494)))))

(assert (=> d!888381 (= (singletonSeq!2368 (h!41809 tokens!494)) lt!1096979)))

(declare-fun b!3232745 () Bool)

(declare-fun isBalanced!3249 (Conc!10920) Bool)

(assert (=> b!3232745 (= e!2016075 (isBalanced!3249 (c!543286 lt!1096979)))))

(assert (= (and d!888381 res!1316304) b!3232745))

(declare-fun m!3514507 () Bool)

(assert (=> d!888381 m!3514507))

(declare-fun m!3514509 () Bool)

(assert (=> d!888381 m!3514509))

(declare-fun m!3514511 () Bool)

(assert (=> b!3232745 m!3514511))

(assert (=> b!3232622 d!888381))

(declare-fun d!888383 () Bool)

(declare-fun c!543314 () Bool)

(assert (=> d!888383 (= c!543314 ((_ is Cons!36389) (Cons!36389 (h!41809 tokens!494) Nil!36389)))))

(declare-fun e!2016078 () List!36511)

(assert (=> d!888383 (= (printList!1411 thiss!18206 (Cons!36389 (h!41809 tokens!494) Nil!36389)) e!2016078)))

(declare-fun b!3232750 () Bool)

(assert (=> b!3232750 (= e!2016078 (++!8768 (list!12991 (charsOf!3288 (h!41809 (Cons!36389 (h!41809 tokens!494) Nil!36389)))) (printList!1411 thiss!18206 (t!241882 (Cons!36389 (h!41809 tokens!494) Nil!36389)))))))

(declare-fun b!3232751 () Bool)

(assert (=> b!3232751 (= e!2016078 Nil!36387)))

(assert (= (and d!888383 c!543314) b!3232750))

(assert (= (and d!888383 (not c!543314)) b!3232751))

(declare-fun m!3514513 () Bool)

(assert (=> b!3232750 m!3514513))

(assert (=> b!3232750 m!3514513))

(declare-fun m!3514515 () Bool)

(assert (=> b!3232750 m!3514515))

(declare-fun m!3514517 () Bool)

(assert (=> b!3232750 m!3514517))

(assert (=> b!3232750 m!3514515))

(assert (=> b!3232750 m!3514517))

(declare-fun m!3514519 () Bool)

(assert (=> b!3232750 m!3514519))

(assert (=> b!3232622 d!888383))

(declare-fun d!888385 () Bool)

(declare-fun lt!1096982 () BalanceConc!21452)

(declare-fun printWithSeparatorTokenList!189 (LexerInterface!4861 List!36513 Token!9910) List!36511)

(assert (=> d!888385 (= (list!12991 lt!1096982) (printWithSeparatorTokenList!189 thiss!18206 (list!12995 lt!1096919) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!17 (LexerInterface!4861 BalanceConc!21454 Token!9910 Int BalanceConc!21452) BalanceConc!21452)

(assert (=> d!888385 (= lt!1096982 (printWithSeparatorTokenTailRec!17 thiss!18206 lt!1096919 separatorToken!241 0 (BalanceConc!21453 Empty!10919)))))

(assert (=> d!888385 (isSeparator!5272 (rule!7730 separatorToken!241))))

(assert (=> d!888385 (= (printWithSeparatorToken!78 thiss!18206 lt!1096919 separatorToken!241) lt!1096982)))

(declare-fun bs!543420 () Bool)

(assert (= bs!543420 d!888385))

(declare-fun m!3514521 () Bool)

(assert (=> bs!543420 m!3514521))

(declare-fun m!3514523 () Bool)

(assert (=> bs!543420 m!3514523))

(assert (=> bs!543420 m!3514523))

(declare-fun m!3514525 () Bool)

(assert (=> bs!543420 m!3514525))

(declare-fun m!3514527 () Bool)

(assert (=> bs!543420 m!3514527))

(assert (=> b!3232600 d!888385))

(declare-fun b!3232768 () Bool)

(declare-fun res!1316315 () Bool)

(declare-fun e!2016087 () Bool)

(assert (=> b!3232768 (=> (not res!1316315) (not e!2016087))))

(declare-fun lt!1096989 () List!36511)

(assert (=> b!3232768 (= res!1316315 (= (size!27447 lt!1096989) (+ (size!27447 lt!1096911) (size!27447 lt!1096916))))))

(declare-fun b!3232766 () Bool)

(declare-fun e!2016088 () List!36511)

(assert (=> b!3232766 (= e!2016088 lt!1096916)))

(declare-fun b!3232767 () Bool)

(assert (=> b!3232767 (= e!2016088 (Cons!36387 (h!41807 lt!1096911) (++!8768 (t!241880 lt!1096911) lt!1096916)))))

(declare-fun d!888387 () Bool)

(assert (=> d!888387 e!2016087))

(declare-fun res!1316316 () Bool)

(assert (=> d!888387 (=> (not res!1316316) (not e!2016087))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4924 (List!36511) (InoxSet C!20248))

(assert (=> d!888387 (= res!1316316 (= (content!4924 lt!1096989) ((_ map or) (content!4924 lt!1096911) (content!4924 lt!1096916))))))

(assert (=> d!888387 (= lt!1096989 e!2016088)))

(declare-fun c!543317 () Bool)

(assert (=> d!888387 (= c!543317 ((_ is Nil!36387) lt!1096911))))

(assert (=> d!888387 (= (++!8768 lt!1096911 lt!1096916) lt!1096989)))

(declare-fun b!3232769 () Bool)

(assert (=> b!3232769 (= e!2016087 (or (not (= lt!1096916 Nil!36387)) (= lt!1096989 lt!1096911)))))

(assert (= (and d!888387 c!543317) b!3232766))

(assert (= (and d!888387 (not c!543317)) b!3232767))

(assert (= (and d!888387 res!1316316) b!3232768))

(assert (= (and b!3232768 res!1316315) b!3232769))

(declare-fun m!3514529 () Bool)

(assert (=> b!3232768 m!3514529))

(assert (=> b!3232768 m!3514307))

(declare-fun m!3514531 () Bool)

(assert (=> b!3232768 m!3514531))

(declare-fun m!3514533 () Bool)

(assert (=> b!3232767 m!3514533))

(declare-fun m!3514535 () Bool)

(assert (=> d!888387 m!3514535))

(declare-fun m!3514537 () Bool)

(assert (=> d!888387 m!3514537))

(declare-fun m!3514539 () Bool)

(assert (=> d!888387 m!3514539))

(assert (=> b!3232600 d!888387))

(declare-fun d!888389 () Bool)

(assert (=> d!888389 (= (list!12991 lt!1096930) (list!12994 (c!543285 lt!1096930)))))

(declare-fun bs!543421 () Bool)

(assert (= bs!543421 d!888389))

(declare-fun m!3514541 () Bool)

(assert (=> bs!543421 m!3514541))

(assert (=> b!3232600 d!888389))

(declare-fun d!888391 () Bool)

(declare-fun lt!1096990 () BalanceConc!21452)

(assert (=> d!888391 (= (list!12991 lt!1096990) (originalCharacters!5986 separatorToken!241))))

(assert (=> d!888391 (= lt!1096990 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (value!170712 separatorToken!241)))))

(assert (=> d!888391 (= (charsOf!3288 separatorToken!241) lt!1096990)))

(declare-fun b_lambda!89061 () Bool)

(assert (=> (not b_lambda!89061) (not d!888391)))

(declare-fun t!241898 () Bool)

(declare-fun tb!160315 () Bool)

(assert (=> (and b!3232597 (= (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241)))) t!241898) tb!160315))

(declare-fun b!3232770 () Bool)

(declare-fun e!2016089 () Bool)

(declare-fun tp!1018809 () Bool)

(assert (=> b!3232770 (= e!2016089 (and (inv!49288 (c!543285 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (value!170712 separatorToken!241)))) tp!1018809))))

(declare-fun result!202880 () Bool)

(assert (=> tb!160315 (= result!202880 (and (inv!49289 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (value!170712 separatorToken!241))) e!2016089))))

(assert (= tb!160315 b!3232770))

(declare-fun m!3514543 () Bool)

(assert (=> b!3232770 m!3514543))

(declare-fun m!3514545 () Bool)

(assert (=> tb!160315 m!3514545))

(assert (=> d!888391 t!241898))

(declare-fun b_and!216655 () Bool)

(assert (= b_and!216643 (and (=> t!241898 result!202880) b_and!216655)))

(declare-fun t!241900 () Bool)

(declare-fun tb!160317 () Bool)

(assert (=> (and b!3232591 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241)))) t!241900) tb!160317))

(declare-fun result!202882 () Bool)

(assert (= result!202882 result!202880))

(assert (=> d!888391 t!241900))

(declare-fun b_and!216657 () Bool)

(assert (= b_and!216645 (and (=> t!241900 result!202882) b_and!216657)))

(declare-fun t!241902 () Bool)

(declare-fun tb!160319 () Bool)

(assert (=> (and b!3232602 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241)))) t!241902) tb!160319))

(declare-fun result!202884 () Bool)

(assert (= result!202884 result!202880))

(assert (=> d!888391 t!241902))

(declare-fun b_and!216659 () Bool)

(assert (= b_and!216647 (and (=> t!241902 result!202884) b_and!216659)))

(declare-fun m!3514547 () Bool)

(assert (=> d!888391 m!3514547))

(declare-fun m!3514549 () Bool)

(assert (=> d!888391 m!3514549))

(assert (=> b!3232600 d!888391))

(declare-fun d!888393 () Bool)

(assert (=> d!888393 (= (list!12991 (charsOf!3288 separatorToken!241)) (list!12994 (c!543285 (charsOf!3288 separatorToken!241))))))

(declare-fun bs!543422 () Bool)

(assert (= bs!543422 d!888393))

(declare-fun m!3514551 () Bool)

(assert (=> bs!543422 m!3514551))

(assert (=> b!3232600 d!888393))

(declare-fun d!888395 () Bool)

(assert (=> d!888395 (= (inv!49281 (tag!5804 (rule!7730 separatorToken!241))) (= (mod (str.len (value!170711 (tag!5804 (rule!7730 separatorToken!241)))) 2) 0))))

(assert (=> b!3232599 d!888395))

(declare-fun d!888399 () Bool)

(declare-fun res!1316322 () Bool)

(declare-fun e!2016094 () Bool)

(assert (=> d!888399 (=> (not res!1316322) (not e!2016094))))

(declare-fun semiInverseModEq!2173 (Int Int) Bool)

(assert (=> d!888399 (= res!1316322 (semiInverseModEq!2173 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toValue!7384 (transformation!5272 (rule!7730 separatorToken!241)))))))

(assert (=> d!888399 (= (inv!49285 (transformation!5272 (rule!7730 separatorToken!241))) e!2016094)))

(declare-fun b!3232776 () Bool)

(declare-fun equivClasses!2072 (Int Int) Bool)

(assert (=> b!3232776 (= e!2016094 (equivClasses!2072 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toValue!7384 (transformation!5272 (rule!7730 separatorToken!241)))))))

(assert (= (and d!888399 res!1316322) b!3232776))

(declare-fun m!3514569 () Bool)

(assert (=> d!888399 m!3514569))

(declare-fun m!3514571 () Bool)

(assert (=> b!3232776 m!3514571))

(assert (=> b!3232599 d!888399))

(declare-fun d!888401 () Bool)

(assert (=> d!888401 (= (inv!49281 (tag!5804 (h!41808 rules!2135))) (= (mod (str.len (value!170711 (tag!5804 (h!41808 rules!2135)))) 2) 0))))

(assert (=> b!3232620 d!888401))

(declare-fun d!888403 () Bool)

(declare-fun res!1316323 () Bool)

(declare-fun e!2016095 () Bool)

(assert (=> d!888403 (=> (not res!1316323) (not e!2016095))))

(assert (=> d!888403 (= res!1316323 (semiInverseModEq!2173 (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toValue!7384 (transformation!5272 (h!41808 rules!2135)))))))

(assert (=> d!888403 (= (inv!49285 (transformation!5272 (h!41808 rules!2135))) e!2016095)))

(declare-fun b!3232777 () Bool)

(assert (=> b!3232777 (= e!2016095 (equivClasses!2072 (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toValue!7384 (transformation!5272 (h!41808 rules!2135)))))))

(assert (= (and d!888403 res!1316323) b!3232777))

(declare-fun m!3514573 () Bool)

(assert (=> d!888403 m!3514573))

(declare-fun m!3514575 () Bool)

(assert (=> b!3232777 m!3514575))

(assert (=> b!3232620 d!888403))

(declare-fun d!888405 () Bool)

(declare-fun dynLambda!14807 (Int Token!9910) Bool)

(assert (=> d!888405 (dynLambda!14807 lambda!118305 (h!41809 tokens!494))))

(declare-fun lt!1096995 () Unit!50986)

(declare-fun choose!18854 (List!36513 Int Token!9910) Unit!50986)

(assert (=> d!888405 (= lt!1096995 (choose!18854 tokens!494 lambda!118305 (h!41809 tokens!494)))))

(declare-fun e!2016098 () Bool)

(assert (=> d!888405 e!2016098))

(declare-fun res!1316326 () Bool)

(assert (=> d!888405 (=> (not res!1316326) (not e!2016098))))

(assert (=> d!888405 (= res!1316326 (forall!7486 tokens!494 lambda!118305))))

(assert (=> d!888405 (= (forallContained!1233 tokens!494 lambda!118305 (h!41809 tokens!494)) lt!1096995)))

(declare-fun b!3232780 () Bool)

(declare-fun contains!6537 (List!36513 Token!9910) Bool)

(assert (=> b!3232780 (= e!2016098 (contains!6537 tokens!494 (h!41809 tokens!494)))))

(assert (= (and d!888405 res!1316326) b!3232780))

(declare-fun b_lambda!89063 () Bool)

(assert (=> (not b_lambda!89063) (not d!888405)))

(declare-fun m!3514577 () Bool)

(assert (=> d!888405 m!3514577))

(declare-fun m!3514579 () Bool)

(assert (=> d!888405 m!3514579))

(assert (=> d!888405 m!3514333))

(declare-fun m!3514581 () Bool)

(assert (=> b!3232780 m!3514581))

(assert (=> b!3232598 d!888405))

(declare-fun d!888407 () Bool)

(assert (=> d!888407 (= (inv!49281 (tag!5804 (rule!7730 (h!41809 tokens!494)))) (= (mod (str.len (value!170711 (tag!5804 (rule!7730 (h!41809 tokens!494))))) 2) 0))))

(assert (=> b!3232619 d!888407))

(declare-fun d!888409 () Bool)

(declare-fun res!1316327 () Bool)

(declare-fun e!2016099 () Bool)

(assert (=> d!888409 (=> (not res!1316327) (not e!2016099))))

(assert (=> d!888409 (= res!1316327 (semiInverseModEq!2173 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))))))

(assert (=> d!888409 (= (inv!49285 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) e!2016099)))

(declare-fun b!3232781 () Bool)

(assert (=> b!3232781 (= e!2016099 (equivClasses!2072 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))))))

(assert (= (and d!888409 res!1316327) b!3232781))

(declare-fun m!3514583 () Bool)

(assert (=> d!888409 m!3514583))

(declare-fun m!3514585 () Bool)

(assert (=> b!3232781 m!3514585))

(assert (=> b!3232619 d!888409))

(declare-fun d!888411 () Bool)

(declare-fun res!1316332 () Bool)

(declare-fun e!2016102 () Bool)

(assert (=> d!888411 (=> (not res!1316332) (not e!2016102))))

(assert (=> d!888411 (= res!1316332 (not (isEmpty!20475 (originalCharacters!5986 separatorToken!241))))))

(assert (=> d!888411 (= (inv!49284 separatorToken!241) e!2016102)))

(declare-fun b!3232786 () Bool)

(declare-fun res!1316333 () Bool)

(assert (=> b!3232786 (=> (not res!1316333) (not e!2016102))))

(assert (=> b!3232786 (= res!1316333 (= (originalCharacters!5986 separatorToken!241) (list!12991 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (value!170712 separatorToken!241)))))))

(declare-fun b!3232787 () Bool)

(assert (=> b!3232787 (= e!2016102 (= (size!27446 separatorToken!241) (size!27447 (originalCharacters!5986 separatorToken!241))))))

(assert (= (and d!888411 res!1316332) b!3232786))

(assert (= (and b!3232786 res!1316333) b!3232787))

(declare-fun b_lambda!89065 () Bool)

(assert (=> (not b_lambda!89065) (not b!3232786)))

(assert (=> b!3232786 t!241898))

(declare-fun b_and!216661 () Bool)

(assert (= b_and!216655 (and (=> t!241898 result!202880) b_and!216661)))

(assert (=> b!3232786 t!241900))

(declare-fun b_and!216663 () Bool)

(assert (= b_and!216657 (and (=> t!241900 result!202882) b_and!216663)))

(assert (=> b!3232786 t!241902))

(declare-fun b_and!216665 () Bool)

(assert (= b_and!216659 (and (=> t!241902 result!202884) b_and!216665)))

(declare-fun m!3514587 () Bool)

(assert (=> d!888411 m!3514587))

(assert (=> b!3232786 m!3514549))

(assert (=> b!3232786 m!3514549))

(declare-fun m!3514589 () Bool)

(assert (=> b!3232786 m!3514589))

(declare-fun m!3514591 () Bool)

(assert (=> b!3232787 m!3514591))

(assert (=> start!303910 d!888411))

(declare-fun d!888413 () Bool)

(assert (=> d!888413 (= (get!11590 lt!1096931) (v!35846 lt!1096931))))

(assert (=> b!3232607 d!888413))

(declare-fun d!888415 () Bool)

(declare-fun res!1316334 () Bool)

(declare-fun e!2016103 () Bool)

(assert (=> d!888415 (=> (not res!1316334) (not e!2016103))))

(assert (=> d!888415 (= res!1316334 (not (isEmpty!20475 (originalCharacters!5986 (h!41809 tokens!494)))))))

(assert (=> d!888415 (= (inv!49284 (h!41809 tokens!494)) e!2016103)))

(declare-fun b!3232788 () Bool)

(declare-fun res!1316335 () Bool)

(assert (=> b!3232788 (=> (not res!1316335) (not e!2016103))))

(assert (=> b!3232788 (= res!1316335 (= (originalCharacters!5986 (h!41809 tokens!494)) (list!12991 (dynLambda!14806 (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (value!170712 (h!41809 tokens!494))))))))

(declare-fun b!3232789 () Bool)

(assert (=> b!3232789 (= e!2016103 (= (size!27446 (h!41809 tokens!494)) (size!27447 (originalCharacters!5986 (h!41809 tokens!494)))))))

(assert (= (and d!888415 res!1316334) b!3232788))

(assert (= (and b!3232788 res!1316335) b!3232789))

(declare-fun b_lambda!89067 () Bool)

(assert (=> (not b_lambda!89067) (not b!3232788)))

(assert (=> b!3232788 t!241884))

(declare-fun b_and!216667 () Bool)

(assert (= b_and!216661 (and (=> t!241884 result!202864) b_and!216667)))

(assert (=> b!3232788 t!241886))

(declare-fun b_and!216669 () Bool)

(assert (= b_and!216663 (and (=> t!241886 result!202868) b_and!216669)))

(assert (=> b!3232788 t!241888))

(declare-fun b_and!216671 () Bool)

(assert (= b_and!216665 (and (=> t!241888 result!202870) b_and!216671)))

(declare-fun m!3514593 () Bool)

(assert (=> d!888415 m!3514593))

(assert (=> b!3232788 m!3514417))

(assert (=> b!3232788 m!3514417))

(declare-fun m!3514595 () Bool)

(assert (=> b!3232788 m!3514595))

(declare-fun m!3514597 () Bool)

(assert (=> b!3232789 m!3514597))

(assert (=> b!3232606 d!888415))

(declare-fun d!888417 () Bool)

(declare-fun res!1316342 () Bool)

(declare-fun e!2016112 () Bool)

(assert (=> d!888417 (=> res!1316342 e!2016112)))

(assert (=> d!888417 (= res!1316342 ((_ is Nil!36389) tokens!494))))

(assert (=> d!888417 (= (forall!7486 tokens!494 lambda!118305) e!2016112)))

(declare-fun b!3232800 () Bool)

(declare-fun e!2016113 () Bool)

(assert (=> b!3232800 (= e!2016112 e!2016113)))

(declare-fun res!1316343 () Bool)

(assert (=> b!3232800 (=> (not res!1316343) (not e!2016113))))

(assert (=> b!3232800 (= res!1316343 (dynLambda!14807 lambda!118305 (h!41809 tokens!494)))))

(declare-fun b!3232801 () Bool)

(assert (=> b!3232801 (= e!2016113 (forall!7486 (t!241882 tokens!494) lambda!118305))))

(assert (= (and d!888417 (not res!1316342)) b!3232800))

(assert (= (and b!3232800 res!1316343) b!3232801))

(declare-fun b_lambda!89069 () Bool)

(assert (=> (not b_lambda!89069) (not b!3232800)))

(assert (=> b!3232800 m!3514577))

(declare-fun m!3514599 () Bool)

(assert (=> b!3232801 m!3514599))

(assert (=> b!3232605 d!888417))

(declare-fun d!888419 () Bool)

(assert (=> d!888419 (= (isEmpty!20476 rules!2135) ((_ is Nil!36388) rules!2135))))

(assert (=> b!3232604 d!888419))

(declare-fun d!888421 () Bool)

(assert (=> d!888421 (rulesProduceIndividualToken!2353 thiss!18206 rules!2135 (h!41809 tokens!494))))

(declare-fun lt!1097051 () Unit!50986)

(declare-fun choose!18855 (LexerInterface!4861 List!36512 List!36513 Token!9910) Unit!50986)

(assert (=> d!888421 (= lt!1097051 (choose!18855 thiss!18206 rules!2135 tokens!494 (h!41809 tokens!494)))))

(assert (=> d!888421 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888421 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!886 thiss!18206 rules!2135 tokens!494 (h!41809 tokens!494)) lt!1097051)))

(declare-fun bs!543426 () Bool)

(assert (= bs!543426 d!888421))

(assert (=> bs!543426 m!3514269))

(declare-fun m!3514737 () Bool)

(assert (=> bs!543426 m!3514737))

(assert (=> bs!543426 m!3514261))

(assert (=> b!3232603 d!888421))

(declare-fun d!888443 () Bool)

(declare-fun lt!1097054 () List!36511)

(assert (=> d!888443 (= (++!8768 lt!1096911 lt!1097054) lt!1096911)))

(declare-fun e!2016154 () List!36511)

(assert (=> d!888443 (= lt!1097054 e!2016154)))

(declare-fun c!543343 () Bool)

(assert (=> d!888443 (= c!543343 ((_ is Cons!36387) lt!1096911))))

(assert (=> d!888443 (>= (size!27447 lt!1096911) (size!27447 lt!1096911))))

(assert (=> d!888443 (= (getSuffix!1396 lt!1096911 lt!1096911) lt!1097054)))

(declare-fun b!3232884 () Bool)

(declare-fun tail!5237 (List!36511) List!36511)

(assert (=> b!3232884 (= e!2016154 (getSuffix!1396 (tail!5237 lt!1096911) (t!241880 lt!1096911)))))

(declare-fun b!3232885 () Bool)

(assert (=> b!3232885 (= e!2016154 lt!1096911)))

(assert (= (and d!888443 c!543343) b!3232884))

(assert (= (and d!888443 (not c!543343)) b!3232885))

(declare-fun m!3514739 () Bool)

(assert (=> d!888443 m!3514739))

(assert (=> d!888443 m!3514307))

(assert (=> d!888443 m!3514307))

(declare-fun m!3514741 () Bool)

(assert (=> b!3232884 m!3514741))

(assert (=> b!3232884 m!3514741))

(declare-fun m!3514743 () Bool)

(assert (=> b!3232884 m!3514743))

(assert (=> b!3232603 d!888443))

(declare-fun d!888445 () Bool)

(declare-fun e!2016157 () Bool)

(assert (=> d!888445 e!2016157))

(declare-fun res!1316386 () Bool)

(assert (=> d!888445 (=> (not res!1316386) (not e!2016157))))

(assert (=> d!888445 (= res!1316386 (isDefined!5600 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 (h!41809 tokens!494))))))))

(declare-fun lt!1097060 () Unit!50986)

(declare-fun choose!18856 (LexerInterface!4861 List!36512 List!36511 Token!9910) Unit!50986)

(assert (=> d!888445 (= lt!1097060 (choose!18856 thiss!18206 rules!2135 lt!1096911 (h!41809 tokens!494)))))

(assert (=> d!888445 (rulesInvariant!4258 thiss!18206 rules!2135)))

(assert (=> d!888445 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!963 thiss!18206 rules!2135 lt!1096911 (h!41809 tokens!494)) lt!1097060)))

(declare-fun b!3232890 () Bool)

(declare-fun res!1316387 () Bool)

(assert (=> b!3232890 (=> (not res!1316387) (not e!2016157))))

(assert (=> b!3232890 (= res!1316387 (matchR!4653 (regex!5272 (get!11591 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 (h!41809 tokens!494)))))) (list!12991 (charsOf!3288 (h!41809 tokens!494)))))))

(declare-fun b!3232891 () Bool)

(assert (=> b!3232891 (= e!2016157 (= (rule!7730 (h!41809 tokens!494)) (get!11591 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 (h!41809 tokens!494)))))))))

(assert (= (and d!888445 res!1316386) b!3232890))

(assert (= (and b!3232890 res!1316387) b!3232891))

(assert (=> d!888445 m!3514311))

(assert (=> d!888445 m!3514311))

(declare-fun m!3514755 () Bool)

(assert (=> d!888445 m!3514755))

(declare-fun m!3514757 () Bool)

(assert (=> d!888445 m!3514757))

(assert (=> d!888445 m!3514363))

(assert (=> b!3232890 m!3514371))

(assert (=> b!3232890 m!3514311))

(assert (=> b!3232890 m!3514373))

(declare-fun m!3514759 () Bool)

(assert (=> b!3232890 m!3514759))

(assert (=> b!3232890 m!3514371))

(assert (=> b!3232890 m!3514373))

(assert (=> b!3232890 m!3514311))

(declare-fun m!3514761 () Bool)

(assert (=> b!3232890 m!3514761))

(assert (=> b!3232891 m!3514311))

(assert (=> b!3232891 m!3514311))

(assert (=> b!3232891 m!3514761))

(assert (=> b!3232603 d!888445))

(declare-fun d!888453 () Bool)

(declare-fun e!2016175 () Bool)

(assert (=> d!888453 e!2016175))

(declare-fun res!1316400 () Bool)

(assert (=> d!888453 (=> res!1316400 e!2016175)))

(declare-fun lt!1097072 () Option!7228)

(declare-fun isEmpty!20482 (Option!7228) Bool)

(assert (=> d!888453 (= res!1316400 (isEmpty!20482 lt!1097072))))

(declare-fun e!2016174 () Option!7228)

(assert (=> d!888453 (= lt!1097072 e!2016174)))

(declare-fun c!543352 () Bool)

(assert (=> d!888453 (= c!543352 (and ((_ is Cons!36388) rules!2135) (= (tag!5804 (h!41808 rules!2135)) (tag!5804 (rule!7730 (h!41809 tokens!494))))))))

(assert (=> d!888453 (rulesInvariant!4258 thiss!18206 rules!2135)))

(assert (=> d!888453 (= (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 (h!41809 tokens!494)))) lt!1097072)))

(declare-fun b!3232917 () Bool)

(declare-fun e!2016173 () Option!7228)

(assert (=> b!3232917 (= e!2016173 None!7227)))

(declare-fun b!3232918 () Bool)

(declare-fun e!2016176 () Bool)

(assert (=> b!3232918 (= e!2016176 (= (tag!5804 (get!11591 lt!1097072)) (tag!5804 (rule!7730 (h!41809 tokens!494)))))))

(declare-fun b!3232919 () Bool)

(declare-fun lt!1097071 () Unit!50986)

(declare-fun lt!1097070 () Unit!50986)

(assert (=> b!3232919 (= lt!1097071 lt!1097070)))

(assert (=> b!3232919 (rulesInvariant!4258 thiss!18206 (t!241881 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!355 (LexerInterface!4861 Rule!10344 List!36512) Unit!50986)

(assert (=> b!3232919 (= lt!1097070 (lemmaInvariantOnRulesThenOnTail!355 thiss!18206 (h!41808 rules!2135) (t!241881 rules!2135)))))

(assert (=> b!3232919 (= e!2016173 (getRuleFromTag!963 thiss!18206 (t!241881 rules!2135) (tag!5804 (rule!7730 (h!41809 tokens!494)))))))

(declare-fun b!3232920 () Bool)

(assert (=> b!3232920 (= e!2016174 e!2016173)))

(declare-fun c!543351 () Bool)

(assert (=> b!3232920 (= c!543351 (and ((_ is Cons!36388) rules!2135) (not (= (tag!5804 (h!41808 rules!2135)) (tag!5804 (rule!7730 (h!41809 tokens!494)))))))))

(declare-fun b!3232921 () Bool)

(assert (=> b!3232921 (= e!2016175 e!2016176)))

(declare-fun res!1316399 () Bool)

(assert (=> b!3232921 (=> (not res!1316399) (not e!2016176))))

(declare-fun contains!6538 (List!36512 Rule!10344) Bool)

(assert (=> b!3232921 (= res!1316399 (contains!6538 rules!2135 (get!11591 lt!1097072)))))

(declare-fun b!3232922 () Bool)

(assert (=> b!3232922 (= e!2016174 (Some!7227 (h!41808 rules!2135)))))

(assert (= (and d!888453 c!543352) b!3232922))

(assert (= (and d!888453 (not c!543352)) b!3232920))

(assert (= (and b!3232920 c!543351) b!3232919))

(assert (= (and b!3232920 (not c!543351)) b!3232917))

(assert (= (and d!888453 (not res!1316400)) b!3232921))

(assert (= (and b!3232921 res!1316399) b!3232918))

(declare-fun m!3514775 () Bool)

(assert (=> d!888453 m!3514775))

(assert (=> d!888453 m!3514363))

(declare-fun m!3514777 () Bool)

(assert (=> b!3232918 m!3514777))

(declare-fun m!3514779 () Bool)

(assert (=> b!3232919 m!3514779))

(declare-fun m!3514781 () Bool)

(assert (=> b!3232919 m!3514781))

(declare-fun m!3514783 () Bool)

(assert (=> b!3232919 m!3514783))

(assert (=> b!3232921 m!3514777))

(assert (=> b!3232921 m!3514777))

(declare-fun m!3514785 () Bool)

(assert (=> b!3232921 m!3514785))

(assert (=> b!3232603 d!888453))

(declare-fun d!888457 () Bool)

(assert (=> d!888457 (= (head!7093 lt!1096916) (h!41807 lt!1096916))))

(assert (=> b!3232603 d!888457))

(declare-fun d!888459 () Bool)

(declare-fun e!2016179 () Bool)

(assert (=> d!888459 e!2016179))

(declare-fun res!1316402 () Bool)

(assert (=> d!888459 (=> res!1316402 e!2016179)))

(declare-fun lt!1097075 () Option!7228)

(assert (=> d!888459 (= res!1316402 (isEmpty!20482 lt!1097075))))

(declare-fun e!2016178 () Option!7228)

(assert (=> d!888459 (= lt!1097075 e!2016178)))

(declare-fun c!543354 () Bool)

(assert (=> d!888459 (= c!543354 (and ((_ is Cons!36388) rules!2135) (= (tag!5804 (h!41808 rules!2135)) (tag!5804 (rule!7730 separatorToken!241)))))))

(assert (=> d!888459 (rulesInvariant!4258 thiss!18206 rules!2135)))

(assert (=> d!888459 (= (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 separatorToken!241))) lt!1097075)))

(declare-fun b!3232923 () Bool)

(declare-fun e!2016177 () Option!7228)

(assert (=> b!3232923 (= e!2016177 None!7227)))

(declare-fun b!3232924 () Bool)

(declare-fun e!2016180 () Bool)

(assert (=> b!3232924 (= e!2016180 (= (tag!5804 (get!11591 lt!1097075)) (tag!5804 (rule!7730 separatorToken!241))))))

(declare-fun b!3232925 () Bool)

(declare-fun lt!1097074 () Unit!50986)

(declare-fun lt!1097073 () Unit!50986)

(assert (=> b!3232925 (= lt!1097074 lt!1097073)))

(assert (=> b!3232925 (rulesInvariant!4258 thiss!18206 (t!241881 rules!2135))))

(assert (=> b!3232925 (= lt!1097073 (lemmaInvariantOnRulesThenOnTail!355 thiss!18206 (h!41808 rules!2135) (t!241881 rules!2135)))))

(assert (=> b!3232925 (= e!2016177 (getRuleFromTag!963 thiss!18206 (t!241881 rules!2135) (tag!5804 (rule!7730 separatorToken!241))))))

(declare-fun b!3232926 () Bool)

(assert (=> b!3232926 (= e!2016178 e!2016177)))

(declare-fun c!543353 () Bool)

(assert (=> b!3232926 (= c!543353 (and ((_ is Cons!36388) rules!2135) (not (= (tag!5804 (h!41808 rules!2135)) (tag!5804 (rule!7730 separatorToken!241))))))))

(declare-fun b!3232927 () Bool)

(assert (=> b!3232927 (= e!2016179 e!2016180)))

(declare-fun res!1316401 () Bool)

(assert (=> b!3232927 (=> (not res!1316401) (not e!2016180))))

(assert (=> b!3232927 (= res!1316401 (contains!6538 rules!2135 (get!11591 lt!1097075)))))

(declare-fun b!3232928 () Bool)

(assert (=> b!3232928 (= e!2016178 (Some!7227 (h!41808 rules!2135)))))

(assert (= (and d!888459 c!543354) b!3232928))

(assert (= (and d!888459 (not c!543354)) b!3232926))

(assert (= (and b!3232926 c!543353) b!3232925))

(assert (= (and b!3232926 (not c!543353)) b!3232923))

(assert (= (and d!888459 (not res!1316402)) b!3232927))

(assert (= (and b!3232927 res!1316401) b!3232924))

(declare-fun m!3514787 () Bool)

(assert (=> d!888459 m!3514787))

(assert (=> d!888459 m!3514363))

(declare-fun m!3514789 () Bool)

(assert (=> b!3232924 m!3514789))

(assert (=> b!3232925 m!3514779))

(assert (=> b!3232925 m!3514781))

(declare-fun m!3514791 () Bool)

(assert (=> b!3232925 m!3514791))

(assert (=> b!3232927 m!3514789))

(assert (=> b!3232927 m!3514789))

(declare-fun m!3514793 () Bool)

(assert (=> b!3232927 m!3514793))

(assert (=> b!3232603 d!888459))

(declare-fun d!888461 () Bool)

(assert (=> d!888461 (= (isEmpty!20475 (getSuffix!1396 lt!1096911 lt!1096911)) ((_ is Nil!36387) (getSuffix!1396 lt!1096911 lt!1096911)))))

(assert (=> b!3232603 d!888461))

(declare-fun d!888463 () Bool)

(assert (=> d!888463 (= (isDefined!5600 lt!1096925) (not (isEmpty!20482 lt!1096925)))))

(declare-fun bs!543428 () Bool)

(assert (= bs!543428 d!888463))

(declare-fun m!3514795 () Bool)

(assert (=> bs!543428 m!3514795))

(assert (=> b!3232603 d!888463))

(declare-fun d!888465 () Bool)

(declare-fun lt!1097081 () Bool)

(assert (=> d!888465 (= lt!1097081 (select (content!4924 (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241)))) lt!1096923))))

(declare-fun e!2016185 () Bool)

(assert (=> d!888465 (= lt!1097081 e!2016185)))

(declare-fun res!1316408 () Bool)

(assert (=> d!888465 (=> (not res!1316408) (not e!2016185))))

(assert (=> d!888465 (= res!1316408 ((_ is Cons!36387) (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241)))))))

(assert (=> d!888465 (= (contains!6535 (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241))) lt!1096923) lt!1097081)))

(declare-fun b!3232933 () Bool)

(declare-fun e!2016186 () Bool)

(assert (=> b!3232933 (= e!2016185 e!2016186)))

(declare-fun res!1316407 () Bool)

(assert (=> b!3232933 (=> res!1316407 e!2016186)))

(assert (=> b!3232933 (= res!1316407 (= (h!41807 (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241)))) lt!1096923))))

(declare-fun b!3232934 () Bool)

(assert (=> b!3232934 (= e!2016186 (contains!6535 (t!241880 (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241)))) lt!1096923))))

(assert (= (and d!888465 res!1316408) b!3232933))

(assert (= (and b!3232933 (not res!1316407)) b!3232934))

(assert (=> d!888465 m!3514297))

(declare-fun m!3514805 () Bool)

(assert (=> d!888465 m!3514805))

(declare-fun m!3514807 () Bool)

(assert (=> d!888465 m!3514807))

(declare-fun m!3514809 () Bool)

(assert (=> b!3232934 m!3514809))

(assert (=> b!3232603 d!888465))

(declare-fun d!888469 () Bool)

(declare-fun dynLambda!14808 (Int BalanceConc!21452) TokenValue!5502)

(assert (=> d!888469 (= (apply!8312 (transformation!5272 (rule!7730 (h!41809 tokens!494))) lt!1096932) (dynLambda!14808 (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) lt!1096932))))

(declare-fun b_lambda!89071 () Bool)

(assert (=> (not b_lambda!89071) (not d!888469)))

(declare-fun t!241906 () Bool)

(declare-fun tb!160321 () Bool)

(assert (=> (and b!3232597 (= (toValue!7384 (transformation!5272 (rule!7730 separatorToken!241))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241906) tb!160321))

(declare-fun result!202886 () Bool)

(assert (=> tb!160321 (= result!202886 (inv!21 (dynLambda!14808 (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) lt!1096932)))))

(declare-fun m!3514811 () Bool)

(assert (=> tb!160321 m!3514811))

(assert (=> d!888469 t!241906))

(declare-fun b_and!216673 () Bool)

(assert (= b_and!216631 (and (=> t!241906 result!202886) b_and!216673)))

(declare-fun tb!160323 () Bool)

(declare-fun t!241908 () Bool)

(assert (=> (and b!3232591 (= (toValue!7384 (transformation!5272 (h!41808 rules!2135))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241908) tb!160323))

(declare-fun result!202890 () Bool)

(assert (= result!202890 result!202886))

(assert (=> d!888469 t!241908))

(declare-fun b_and!216675 () Bool)

(assert (= b_and!216635 (and (=> t!241908 result!202890) b_and!216675)))

(declare-fun t!241910 () Bool)

(declare-fun tb!160325 () Bool)

(assert (=> (and b!3232602 (= (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241910) tb!160325))

(declare-fun result!202892 () Bool)

(assert (= result!202892 result!202886))

(assert (=> d!888469 t!241910))

(declare-fun b_and!216677 () Bool)

(assert (= b_and!216639 (and (=> t!241910 result!202892) b_and!216677)))

(declare-fun m!3514813 () Bool)

(assert (=> d!888469 m!3514813))

(assert (=> b!3232603 d!888469))

(declare-fun b!3232970 () Bool)

(declare-fun res!1316437 () Bool)

(declare-fun e!2016212 () Bool)

(assert (=> b!3232970 (=> (not res!1316437) (not e!2016212))))

(declare-fun lt!1097102 () Option!7227)

(assert (=> b!3232970 (= res!1316437 (= (++!8768 (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097102)))) (_2!21043 (get!11590 lt!1097102))) lt!1096911))))

(declare-fun b!3232971 () Bool)

(declare-fun e!2016211 () Option!7227)

(declare-datatypes ((tuple2!35824 0))(
  ( (tuple2!35825 (_1!21046 List!36511) (_2!21046 List!36511)) )
))
(declare-fun lt!1097100 () tuple2!35824)

(declare-fun size!27451 (BalanceConc!21452) Int)

(assert (=> b!3232971 (= e!2016211 (Some!7226 (tuple2!35819 (Token!9911 (apply!8312 (transformation!5272 (rule!7730 (h!41809 tokens!494))) (seqFromList!3608 (_1!21046 lt!1097100))) (rule!7730 (h!41809 tokens!494)) (size!27451 (seqFromList!3608 (_1!21046 lt!1097100))) (_1!21046 lt!1097100)) (_2!21046 lt!1097100))))))

(declare-fun lt!1097104 () Unit!50986)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!809 (Regex!10031 List!36511) Unit!50986)

(assert (=> b!3232971 (= lt!1097104 (longestMatchIsAcceptedByMatchOrIsEmpty!809 (regex!5272 (rule!7730 (h!41809 tokens!494))) lt!1096911))))

(declare-fun res!1316433 () Bool)

(declare-fun findLongestMatchInner!836 (Regex!10031 List!36511 Int List!36511 List!36511 Int) tuple2!35824)

(assert (=> b!3232971 (= res!1316433 (isEmpty!20475 (_1!21046 (findLongestMatchInner!836 (regex!5272 (rule!7730 (h!41809 tokens!494))) Nil!36387 (size!27447 Nil!36387) lt!1096911 lt!1096911 (size!27447 lt!1096911)))))))

(declare-fun e!2016213 () Bool)

(assert (=> b!3232971 (=> res!1316433 e!2016213)))

(assert (=> b!3232971 e!2016213))

(declare-fun lt!1097103 () Unit!50986)

(assert (=> b!3232971 (= lt!1097103 lt!1097104)))

(declare-fun lt!1097101 () Unit!50986)

(declare-fun lemmaSemiInverse!1182 (TokenValueInjection!10432 BalanceConc!21452) Unit!50986)

(assert (=> b!3232971 (= lt!1097101 (lemmaSemiInverse!1182 (transformation!5272 (rule!7730 (h!41809 tokens!494))) (seqFromList!3608 (_1!21046 lt!1097100))))))

(declare-fun b!3232972 () Bool)

(assert (=> b!3232972 (= e!2016212 (= (size!27446 (_1!21043 (get!11590 lt!1097102))) (size!27447 (originalCharacters!5986 (_1!21043 (get!11590 lt!1097102))))))))

(declare-fun b!3232973 () Bool)

(assert (=> b!3232973 (= e!2016213 (matchR!4653 (regex!5272 (rule!7730 (h!41809 tokens!494))) (_1!21046 (findLongestMatchInner!836 (regex!5272 (rule!7730 (h!41809 tokens!494))) Nil!36387 (size!27447 Nil!36387) lt!1096911 lt!1096911 (size!27447 lt!1096911)))))))

(declare-fun b!3232974 () Bool)

(declare-fun e!2016214 () Bool)

(assert (=> b!3232974 (= e!2016214 e!2016212)))

(declare-fun res!1316435 () Bool)

(assert (=> b!3232974 (=> (not res!1316435) (not e!2016212))))

(assert (=> b!3232974 (= res!1316435 (matchR!4653 (regex!5272 (rule!7730 (h!41809 tokens!494))) (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097102))))))))

(declare-fun b!3232975 () Bool)

(declare-fun res!1316438 () Bool)

(assert (=> b!3232975 (=> (not res!1316438) (not e!2016212))))

(assert (=> b!3232975 (= res!1316438 (= (value!170712 (_1!21043 (get!11590 lt!1097102))) (apply!8312 (transformation!5272 (rule!7730 (_1!21043 (get!11590 lt!1097102)))) (seqFromList!3608 (originalCharacters!5986 (_1!21043 (get!11590 lt!1097102)))))))))

(declare-fun d!888471 () Bool)

(assert (=> d!888471 e!2016214))

(declare-fun res!1316434 () Bool)

(assert (=> d!888471 (=> res!1316434 e!2016214)))

(declare-fun isEmpty!20484 (Option!7227) Bool)

(assert (=> d!888471 (= res!1316434 (isEmpty!20484 lt!1097102))))

(assert (=> d!888471 (= lt!1097102 e!2016211)))

(declare-fun c!543359 () Bool)

(assert (=> d!888471 (= c!543359 (isEmpty!20475 (_1!21046 lt!1097100)))))

(declare-fun findLongestMatch!751 (Regex!10031 List!36511) tuple2!35824)

(assert (=> d!888471 (= lt!1097100 (findLongestMatch!751 (regex!5272 (rule!7730 (h!41809 tokens!494))) lt!1096911))))

(declare-fun ruleValid!1657 (LexerInterface!4861 Rule!10344) Bool)

(assert (=> d!888471 (ruleValid!1657 thiss!18206 (rule!7730 (h!41809 tokens!494)))))

(assert (=> d!888471 (= (maxPrefixOneRule!1626 thiss!18206 (rule!7730 (h!41809 tokens!494)) lt!1096911) lt!1097102)))

(declare-fun b!3232976 () Bool)

(declare-fun res!1316436 () Bool)

(assert (=> b!3232976 (=> (not res!1316436) (not e!2016212))))

(assert (=> b!3232976 (= res!1316436 (= (rule!7730 (_1!21043 (get!11590 lt!1097102))) (rule!7730 (h!41809 tokens!494))))))

(declare-fun b!3232977 () Bool)

(assert (=> b!3232977 (= e!2016211 None!7226)))

(declare-fun b!3232978 () Bool)

(declare-fun res!1316439 () Bool)

(assert (=> b!3232978 (=> (not res!1316439) (not e!2016212))))

(assert (=> b!3232978 (= res!1316439 (< (size!27447 (_2!21043 (get!11590 lt!1097102))) (size!27447 lt!1096911)))))

(assert (= (and d!888471 c!543359) b!3232977))

(assert (= (and d!888471 (not c!543359)) b!3232971))

(assert (= (and b!3232971 (not res!1316433)) b!3232973))

(assert (= (and d!888471 (not res!1316434)) b!3232974))

(assert (= (and b!3232974 res!1316435) b!3232970))

(assert (= (and b!3232970 res!1316437) b!3232978))

(assert (= (and b!3232978 res!1316439) b!3232976))

(assert (= (and b!3232976 res!1316436) b!3232975))

(assert (= (and b!3232975 res!1316438) b!3232972))

(declare-fun m!3514855 () Bool)

(assert (=> b!3232975 m!3514855))

(declare-fun m!3514857 () Bool)

(assert (=> b!3232975 m!3514857))

(assert (=> b!3232975 m!3514857))

(declare-fun m!3514859 () Bool)

(assert (=> b!3232975 m!3514859))

(assert (=> b!3232974 m!3514855))

(declare-fun m!3514861 () Bool)

(assert (=> b!3232974 m!3514861))

(assert (=> b!3232974 m!3514861))

(declare-fun m!3514863 () Bool)

(assert (=> b!3232974 m!3514863))

(assert (=> b!3232974 m!3514863))

(declare-fun m!3514865 () Bool)

(assert (=> b!3232974 m!3514865))

(assert (=> b!3232970 m!3514855))

(assert (=> b!3232970 m!3514861))

(assert (=> b!3232970 m!3514861))

(assert (=> b!3232970 m!3514863))

(assert (=> b!3232970 m!3514863))

(declare-fun m!3514867 () Bool)

(assert (=> b!3232970 m!3514867))

(declare-fun m!3514869 () Bool)

(assert (=> b!3232973 m!3514869))

(assert (=> b!3232973 m!3514307))

(assert (=> b!3232973 m!3514869))

(assert (=> b!3232973 m!3514307))

(declare-fun m!3514871 () Bool)

(assert (=> b!3232973 m!3514871))

(declare-fun m!3514873 () Bool)

(assert (=> b!3232973 m!3514873))

(declare-fun m!3514875 () Bool)

(assert (=> d!888471 m!3514875))

(declare-fun m!3514877 () Bool)

(assert (=> d!888471 m!3514877))

(declare-fun m!3514879 () Bool)

(assert (=> d!888471 m!3514879))

(declare-fun m!3514881 () Bool)

(assert (=> d!888471 m!3514881))

(assert (=> b!3232976 m!3514855))

(declare-fun m!3514883 () Bool)

(assert (=> b!3232971 m!3514883))

(declare-fun m!3514885 () Bool)

(assert (=> b!3232971 m!3514885))

(assert (=> b!3232971 m!3514883))

(declare-fun m!3514887 () Bool)

(assert (=> b!3232971 m!3514887))

(assert (=> b!3232971 m!3514869))

(assert (=> b!3232971 m!3514307))

(assert (=> b!3232971 m!3514871))

(assert (=> b!3232971 m!3514307))

(assert (=> b!3232971 m!3514883))

(declare-fun m!3514889 () Bool)

(assert (=> b!3232971 m!3514889))

(declare-fun m!3514891 () Bool)

(assert (=> b!3232971 m!3514891))

(assert (=> b!3232971 m!3514883))

(declare-fun m!3514893 () Bool)

(assert (=> b!3232971 m!3514893))

(assert (=> b!3232971 m!3514869))

(assert (=> b!3232978 m!3514855))

(declare-fun m!3514895 () Bool)

(assert (=> b!3232978 m!3514895))

(assert (=> b!3232978 m!3514307))

(assert (=> b!3232972 m!3514855))

(declare-fun m!3514897 () Bool)

(assert (=> b!3232972 m!3514897))

(assert (=> b!3232603 d!888471))

(declare-fun d!888495 () Bool)

(assert (=> d!888495 (isEmpty!20475 (getSuffix!1396 lt!1096911 lt!1096911))))

(declare-fun lt!1097107 () Unit!50986)

(declare-fun choose!18861 (List!36511) Unit!50986)

(assert (=> d!888495 (= lt!1097107 (choose!18861 lt!1096911))))

(assert (=> d!888495 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!60 lt!1096911) lt!1097107)))

(declare-fun bs!543434 () Bool)

(assert (= bs!543434 d!888495))

(assert (=> bs!543434 m!3514317))

(assert (=> bs!543434 m!3514317))

(assert (=> bs!543434 m!3514319))

(declare-fun m!3514899 () Bool)

(assert (=> bs!543434 m!3514899))

(assert (=> b!3232603 d!888495))

(declare-fun d!888497 () Bool)

(declare-fun e!2016215 () Bool)

(assert (=> d!888497 e!2016215))

(declare-fun res!1316440 () Bool)

(assert (=> d!888497 (=> (not res!1316440) (not e!2016215))))

(assert (=> d!888497 (= res!1316440 (isDefined!5600 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 separatorToken!241)))))))

(declare-fun lt!1097108 () Unit!50986)

(assert (=> d!888497 (= lt!1097108 (choose!18856 thiss!18206 rules!2135 lt!1096916 separatorToken!241))))

(assert (=> d!888497 (rulesInvariant!4258 thiss!18206 rules!2135)))

(assert (=> d!888497 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!963 thiss!18206 rules!2135 lt!1096916 separatorToken!241) lt!1097108)))

(declare-fun b!3232979 () Bool)

(declare-fun res!1316441 () Bool)

(assert (=> b!3232979 (=> (not res!1316441) (not e!2016215))))

(assert (=> b!3232979 (= res!1316441 (matchR!4653 (regex!5272 (get!11591 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 separatorToken!241))))) (list!12991 (charsOf!3288 separatorToken!241))))))

(declare-fun b!3232980 () Bool)

(assert (=> b!3232980 (= e!2016215 (= (rule!7730 separatorToken!241) (get!11591 (getRuleFromTag!963 thiss!18206 rules!2135 (tag!5804 (rule!7730 separatorToken!241))))))))

(assert (= (and d!888497 res!1316440) b!3232979))

(assert (= (and b!3232979 res!1316441) b!3232980))

(assert (=> d!888497 m!3514321))

(assert (=> d!888497 m!3514321))

(declare-fun m!3514901 () Bool)

(assert (=> d!888497 m!3514901))

(declare-fun m!3514903 () Bool)

(assert (=> d!888497 m!3514903))

(assert (=> d!888497 m!3514363))

(assert (=> b!3232979 m!3514335))

(assert (=> b!3232979 m!3514321))

(assert (=> b!3232979 m!3514341))

(declare-fun m!3514905 () Bool)

(assert (=> b!3232979 m!3514905))

(assert (=> b!3232979 m!3514335))

(assert (=> b!3232979 m!3514341))

(assert (=> b!3232979 m!3514321))

(declare-fun m!3514907 () Bool)

(assert (=> b!3232979 m!3514907))

(assert (=> b!3232980 m!3514321))

(assert (=> b!3232980 m!3514321))

(assert (=> b!3232980 m!3514907))

(assert (=> b!3232603 d!888497))

(declare-fun d!888499 () Bool)

(assert (=> d!888499 (= (maxPrefixOneRule!1626 thiss!18206 (rule!7730 (h!41809 tokens!494)) lt!1096911) (Some!7226 (tuple2!35819 (Token!9911 (apply!8312 (transformation!5272 (rule!7730 (h!41809 tokens!494))) (seqFromList!3608 lt!1096911)) (rule!7730 (h!41809 tokens!494)) (size!27447 lt!1096911) lt!1096911) Nil!36387)))))

(declare-fun lt!1097111 () Unit!50986)

(declare-fun choose!18862 (LexerInterface!4861 List!36512 List!36511 List!36511 List!36511 Rule!10344) Unit!50986)

(assert (=> d!888499 (= lt!1097111 (choose!18862 thiss!18206 rules!2135 lt!1096911 lt!1096911 Nil!36387 (rule!7730 (h!41809 tokens!494))))))

(assert (=> d!888499 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888499 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!737 thiss!18206 rules!2135 lt!1096911 lt!1096911 Nil!36387 (rule!7730 (h!41809 tokens!494))) lt!1097111)))

(declare-fun bs!543435 () Bool)

(assert (= bs!543435 d!888499))

(assert (=> bs!543435 m!3514307))

(assert (=> bs!543435 m!3514267))

(declare-fun m!3514909 () Bool)

(assert (=> bs!543435 m!3514909))

(declare-fun m!3514911 () Bool)

(assert (=> bs!543435 m!3514911))

(assert (=> bs!543435 m!3514261))

(assert (=> bs!543435 m!3514323))

(assert (=> bs!543435 m!3514267))

(assert (=> b!3232603 d!888499))

(declare-fun d!888501 () Bool)

(declare-fun lt!1097114 () Int)

(assert (=> d!888501 (>= lt!1097114 0)))

(declare-fun e!2016218 () Int)

(assert (=> d!888501 (= lt!1097114 e!2016218)))

(declare-fun c!543362 () Bool)

(assert (=> d!888501 (= c!543362 ((_ is Nil!36387) lt!1096911))))

(assert (=> d!888501 (= (size!27447 lt!1096911) lt!1097114)))

(declare-fun b!3232985 () Bool)

(assert (=> b!3232985 (= e!2016218 0)))

(declare-fun b!3232986 () Bool)

(assert (=> b!3232986 (= e!2016218 (+ 1 (size!27447 (t!241880 lt!1096911))))))

(assert (= (and d!888501 c!543362) b!3232985))

(assert (= (and d!888501 (not c!543362)) b!3232986))

(declare-fun m!3514913 () Bool)

(assert (=> b!3232986 m!3514913))

(assert (=> b!3232603 d!888501))

(declare-fun b!3233003 () Bool)

(declare-fun e!2016228 () List!36511)

(declare-fun e!2016227 () List!36511)

(assert (=> b!3233003 (= e!2016228 e!2016227)))

(declare-fun c!543371 () Bool)

(assert (=> b!3233003 (= c!543371 ((_ is ElementMatch!10031) (regex!5272 (rule!7730 separatorToken!241))))))

(declare-fun b!3233004 () Bool)

(assert (=> b!3233004 (= e!2016228 Nil!36387)))

(declare-fun bm!233392 () Bool)

(declare-fun call!233399 () List!36511)

(declare-fun call!233400 () List!36511)

(assert (=> bm!233392 (= call!233399 call!233400)))

(declare-fun call!233398 () List!36511)

(declare-fun call!233397 () List!36511)

(declare-fun c!543372 () Bool)

(declare-fun bm!233393 () Bool)

(assert (=> bm!233393 (= call!233398 (++!8768 (ite c!543372 call!233399 call!233397) (ite c!543372 call!233397 call!233399)))))

(declare-fun d!888503 () Bool)

(declare-fun c!543373 () Bool)

(assert (=> d!888503 (= c!543373 (or ((_ is EmptyExpr!10031) (regex!5272 (rule!7730 separatorToken!241))) ((_ is EmptyLang!10031) (regex!5272 (rule!7730 separatorToken!241)))))))

(assert (=> d!888503 (= (usedCharacters!574 (regex!5272 (rule!7730 separatorToken!241))) e!2016228)))

(declare-fun bm!233394 () Bool)

(declare-fun c!543374 () Bool)

(assert (=> bm!233394 (= call!233400 (usedCharacters!574 (ite c!543374 (reg!10360 (regex!5272 (rule!7730 separatorToken!241))) (ite c!543372 (regOne!20575 (regex!5272 (rule!7730 separatorToken!241))) (regTwo!20574 (regex!5272 (rule!7730 separatorToken!241)))))))))

(declare-fun b!3233005 () Bool)

(declare-fun e!2016230 () List!36511)

(declare-fun e!2016229 () List!36511)

(assert (=> b!3233005 (= e!2016230 e!2016229)))

(assert (=> b!3233005 (= c!543372 ((_ is Union!10031) (regex!5272 (rule!7730 separatorToken!241))))))

(declare-fun b!3233006 () Bool)

(assert (=> b!3233006 (= e!2016229 call!233398)))

(declare-fun b!3233007 () Bool)

(assert (=> b!3233007 (= e!2016230 call!233400)))

(declare-fun b!3233008 () Bool)

(assert (=> b!3233008 (= e!2016229 call!233398)))

(declare-fun b!3233009 () Bool)

(assert (=> b!3233009 (= e!2016227 (Cons!36387 (c!543284 (regex!5272 (rule!7730 separatorToken!241))) Nil!36387))))

(declare-fun bm!233395 () Bool)

(assert (=> bm!233395 (= call!233397 (usedCharacters!574 (ite c!543372 (regTwo!20575 (regex!5272 (rule!7730 separatorToken!241))) (regOne!20574 (regex!5272 (rule!7730 separatorToken!241))))))))

(declare-fun b!3233010 () Bool)

(assert (=> b!3233010 (= c!543374 ((_ is Star!10031) (regex!5272 (rule!7730 separatorToken!241))))))

(assert (=> b!3233010 (= e!2016227 e!2016230)))

(assert (= (and d!888503 c!543373) b!3233004))

(assert (= (and d!888503 (not c!543373)) b!3233003))

(assert (= (and b!3233003 c!543371) b!3233009))

(assert (= (and b!3233003 (not c!543371)) b!3233010))

(assert (= (and b!3233010 c!543374) b!3233007))

(assert (= (and b!3233010 (not c!543374)) b!3233005))

(assert (= (and b!3233005 c!543372) b!3233006))

(assert (= (and b!3233005 (not c!543372)) b!3233008))

(assert (= (or b!3233006 b!3233008) bm!233395))

(assert (= (or b!3233006 b!3233008) bm!233392))

(assert (= (or b!3233006 b!3233008) bm!233393))

(assert (= (or b!3233007 bm!233392) bm!233394))

(declare-fun m!3514915 () Bool)

(assert (=> bm!233393 m!3514915))

(declare-fun m!3514917 () Bool)

(assert (=> bm!233394 m!3514917))

(declare-fun m!3514919 () Bool)

(assert (=> bm!233395 m!3514919))

(assert (=> b!3232603 d!888503))

(declare-fun d!888505 () Bool)

(assert (=> d!888505 (= (isDefined!5600 lt!1096929) (not (isEmpty!20482 lt!1096929)))))

(declare-fun bs!543436 () Bool)

(assert (= bs!543436 d!888505))

(declare-fun m!3514921 () Bool)

(assert (=> bs!543436 m!3514921))

(assert (=> b!3232603 d!888505))

(declare-fun b!3233021 () Bool)

(declare-fun res!1316444 () Bool)

(declare-fun e!2016239 () Bool)

(assert (=> b!3233021 (=> res!1316444 e!2016239)))

(assert (=> b!3233021 (= res!1316444 (not ((_ is IntegerValue!16508) (value!170712 (h!41809 tokens!494)))))))

(declare-fun e!2016237 () Bool)

(assert (=> b!3233021 (= e!2016237 e!2016239)))

(declare-fun b!3233022 () Bool)

(declare-fun inv!15 (TokenValue!5502) Bool)

(assert (=> b!3233022 (= e!2016239 (inv!15 (value!170712 (h!41809 tokens!494))))))

(declare-fun b!3233023 () Bool)

(declare-fun inv!17 (TokenValue!5502) Bool)

(assert (=> b!3233023 (= e!2016237 (inv!17 (value!170712 (h!41809 tokens!494))))))

(declare-fun b!3233024 () Bool)

(declare-fun e!2016238 () Bool)

(declare-fun inv!16 (TokenValue!5502) Bool)

(assert (=> b!3233024 (= e!2016238 (inv!16 (value!170712 (h!41809 tokens!494))))))

(declare-fun b!3233025 () Bool)

(assert (=> b!3233025 (= e!2016238 e!2016237)))

(declare-fun c!543380 () Bool)

(assert (=> b!3233025 (= c!543380 ((_ is IntegerValue!16507) (value!170712 (h!41809 tokens!494))))))

(declare-fun d!888507 () Bool)

(declare-fun c!543379 () Bool)

(assert (=> d!888507 (= c!543379 ((_ is IntegerValue!16506) (value!170712 (h!41809 tokens!494))))))

(assert (=> d!888507 (= (inv!21 (value!170712 (h!41809 tokens!494))) e!2016238)))

(assert (= (and d!888507 c!543379) b!3233024))

(assert (= (and d!888507 (not c!543379)) b!3233025))

(assert (= (and b!3233025 c!543380) b!3233023))

(assert (= (and b!3233025 (not c!543380)) b!3233021))

(assert (= (and b!3233021 (not res!1316444)) b!3233022))

(declare-fun m!3514923 () Bool)

(assert (=> b!3233022 m!3514923))

(declare-fun m!3514925 () Bool)

(assert (=> b!3233023 m!3514925))

(declare-fun m!3514927 () Bool)

(assert (=> b!3233024 m!3514927))

(assert (=> b!3232613 d!888507))

(declare-fun b!3233054 () Bool)

(declare-fun e!2016254 () Bool)

(declare-fun e!2016256 () Bool)

(assert (=> b!3233054 (= e!2016254 e!2016256)))

(declare-fun res!1316466 () Bool)

(assert (=> b!3233054 (=> res!1316466 e!2016256)))

(declare-fun call!233403 () Bool)

(assert (=> b!3233054 (= res!1316466 call!233403)))

(declare-fun b!3233055 () Bool)

(declare-fun e!2016260 () Bool)

(declare-fun lt!1097120 () Bool)

(assert (=> b!3233055 (= e!2016260 (not lt!1097120))))

(declare-fun b!3233056 () Bool)

(declare-fun e!2016259 () Bool)

(declare-fun nullable!3404 (Regex!10031) Bool)

(assert (=> b!3233056 (= e!2016259 (nullable!3404 (regex!5272 lt!1096935)))))

(declare-fun b!3233057 () Bool)

(declare-fun res!1316463 () Bool)

(assert (=> b!3233057 (=> res!1316463 e!2016256)))

(assert (=> b!3233057 (= res!1316463 (not (isEmpty!20475 (tail!5237 lt!1096911))))))

(declare-fun b!3233058 () Bool)

(declare-fun res!1316465 () Bool)

(declare-fun e!2016257 () Bool)

(assert (=> b!3233058 (=> (not res!1316465) (not e!2016257))))

(assert (=> b!3233058 (= res!1316465 (isEmpty!20475 (tail!5237 lt!1096911)))))

(declare-fun b!3233059 () Bool)

(declare-fun derivativeStep!2957 (Regex!10031 C!20248) Regex!10031)

(assert (=> b!3233059 (= e!2016259 (matchR!4653 (derivativeStep!2957 (regex!5272 lt!1096935) (head!7093 lt!1096911)) (tail!5237 lt!1096911)))))

(declare-fun b!3233060 () Bool)

(declare-fun res!1316467 () Bool)

(declare-fun e!2016255 () Bool)

(assert (=> b!3233060 (=> res!1316467 e!2016255)))

(assert (=> b!3233060 (= res!1316467 e!2016257)))

(declare-fun res!1316464 () Bool)

(assert (=> b!3233060 (=> (not res!1316464) (not e!2016257))))

(assert (=> b!3233060 (= res!1316464 lt!1097120)))

(declare-fun b!3233061 () Bool)

(declare-fun res!1316461 () Bool)

(assert (=> b!3233061 (=> (not res!1316461) (not e!2016257))))

(assert (=> b!3233061 (= res!1316461 (not call!233403))))

(declare-fun d!888509 () Bool)

(declare-fun e!2016258 () Bool)

(assert (=> d!888509 e!2016258))

(declare-fun c!543387 () Bool)

(assert (=> d!888509 (= c!543387 ((_ is EmptyExpr!10031) (regex!5272 lt!1096935)))))

(assert (=> d!888509 (= lt!1097120 e!2016259)))

(declare-fun c!543389 () Bool)

(assert (=> d!888509 (= c!543389 (isEmpty!20475 lt!1096911))))

(declare-fun validRegex!4560 (Regex!10031) Bool)

(assert (=> d!888509 (validRegex!4560 (regex!5272 lt!1096935))))

(assert (=> d!888509 (= (matchR!4653 (regex!5272 lt!1096935) lt!1096911) lt!1097120)))

(declare-fun b!3233062 () Bool)

(assert (=> b!3233062 (= e!2016257 (= (head!7093 lt!1096911) (c!543284 (regex!5272 lt!1096935))))))

(declare-fun bm!233398 () Bool)

(assert (=> bm!233398 (= call!233403 (isEmpty!20475 lt!1096911))))

(declare-fun b!3233063 () Bool)

(assert (=> b!3233063 (= e!2016256 (not (= (head!7093 lt!1096911) (c!543284 (regex!5272 lt!1096935)))))))

(declare-fun b!3233064 () Bool)

(assert (=> b!3233064 (= e!2016258 e!2016260)))

(declare-fun c!543388 () Bool)

(assert (=> b!3233064 (= c!543388 ((_ is EmptyLang!10031) (regex!5272 lt!1096935)))))

(declare-fun b!3233065 () Bool)

(declare-fun res!1316462 () Bool)

(assert (=> b!3233065 (=> res!1316462 e!2016255)))

(assert (=> b!3233065 (= res!1316462 (not ((_ is ElementMatch!10031) (regex!5272 lt!1096935))))))

(assert (=> b!3233065 (= e!2016260 e!2016255)))

(declare-fun b!3233066 () Bool)

(assert (=> b!3233066 (= e!2016255 e!2016254)))

(declare-fun res!1316468 () Bool)

(assert (=> b!3233066 (=> (not res!1316468) (not e!2016254))))

(assert (=> b!3233066 (= res!1316468 (not lt!1097120))))

(declare-fun b!3233067 () Bool)

(assert (=> b!3233067 (= e!2016258 (= lt!1097120 call!233403))))

(assert (= (and d!888509 c!543389) b!3233056))

(assert (= (and d!888509 (not c!543389)) b!3233059))

(assert (= (and d!888509 c!543387) b!3233067))

(assert (= (and d!888509 (not c!543387)) b!3233064))

(assert (= (and b!3233064 c!543388) b!3233055))

(assert (= (and b!3233064 (not c!543388)) b!3233065))

(assert (= (and b!3233065 (not res!1316462)) b!3233060))

(assert (= (and b!3233060 res!1316464) b!3233061))

(assert (= (and b!3233061 res!1316461) b!3233058))

(assert (= (and b!3233058 res!1316465) b!3233062))

(assert (= (and b!3233060 (not res!1316467)) b!3233066))

(assert (= (and b!3233066 res!1316468) b!3233054))

(assert (= (and b!3233054 (not res!1316466)) b!3233057))

(assert (= (and b!3233057 (not res!1316463)) b!3233063))

(assert (= (or b!3233067 b!3233054 b!3233061) bm!233398))

(declare-fun m!3514931 () Bool)

(assert (=> b!3233062 m!3514931))

(assert (=> b!3233057 m!3514741))

(assert (=> b!3233057 m!3514741))

(declare-fun m!3514933 () Bool)

(assert (=> b!3233057 m!3514933))

(assert (=> b!3233058 m!3514741))

(assert (=> b!3233058 m!3514741))

(assert (=> b!3233058 m!3514933))

(declare-fun m!3514935 () Bool)

(assert (=> d!888509 m!3514935))

(declare-fun m!3514937 () Bool)

(assert (=> d!888509 m!3514937))

(assert (=> bm!233398 m!3514935))

(assert (=> b!3233059 m!3514931))

(assert (=> b!3233059 m!3514931))

(declare-fun m!3514939 () Bool)

(assert (=> b!3233059 m!3514939))

(assert (=> b!3233059 m!3514741))

(assert (=> b!3233059 m!3514939))

(assert (=> b!3233059 m!3514741))

(declare-fun m!3514941 () Bool)

(assert (=> b!3233059 m!3514941))

(declare-fun m!3514943 () Bool)

(assert (=> b!3233056 m!3514943))

(assert (=> b!3233063 m!3514931))

(assert (=> b!3232612 d!888509))

(declare-fun d!888513 () Bool)

(assert (=> d!888513 (= (get!11591 lt!1096929) (v!35847 lt!1096929))))

(assert (=> b!3232612 d!888513))

(declare-fun d!888515 () Bool)

(assert (=> d!888515 (not (matchR!4653 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916))))

(declare-fun lt!1097126 () Unit!50986)

(declare-fun choose!18863 (Regex!10031 List!36511 C!20248) Unit!50986)

(assert (=> d!888515 (= lt!1097126 (choose!18863 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916 lt!1096923))))

(assert (=> d!888515 (validRegex!4560 (regex!5272 (rule!7730 separatorToken!241)))))

(assert (=> d!888515 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!420 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916 lt!1096923) lt!1097126)))

(declare-fun bs!543438 () Bool)

(assert (= bs!543438 d!888515))

(assert (=> bs!543438 m!3514331))

(declare-fun m!3514945 () Bool)

(assert (=> bs!543438 m!3514945))

(declare-fun m!3514947 () Bool)

(assert (=> bs!543438 m!3514947))

(assert (=> b!3232590 d!888515))

(declare-fun b!3233074 () Bool)

(declare-fun e!2016264 () Bool)

(declare-fun e!2016266 () Bool)

(assert (=> b!3233074 (= e!2016264 e!2016266)))

(declare-fun res!1316480 () Bool)

(assert (=> b!3233074 (=> res!1316480 e!2016266)))

(declare-fun call!233404 () Bool)

(assert (=> b!3233074 (= res!1316480 call!233404)))

(declare-fun b!3233075 () Bool)

(declare-fun e!2016270 () Bool)

(declare-fun lt!1097127 () Bool)

(assert (=> b!3233075 (= e!2016270 (not lt!1097127))))

(declare-fun b!3233076 () Bool)

(declare-fun e!2016269 () Bool)

(assert (=> b!3233076 (= e!2016269 (nullable!3404 (regex!5272 (rule!7730 separatorToken!241))))))

(declare-fun b!3233077 () Bool)

(declare-fun res!1316477 () Bool)

(assert (=> b!3233077 (=> res!1316477 e!2016266)))

(assert (=> b!3233077 (= res!1316477 (not (isEmpty!20475 (tail!5237 lt!1096916))))))

(declare-fun b!3233078 () Bool)

(declare-fun res!1316479 () Bool)

(declare-fun e!2016267 () Bool)

(assert (=> b!3233078 (=> (not res!1316479) (not e!2016267))))

(assert (=> b!3233078 (= res!1316479 (isEmpty!20475 (tail!5237 lt!1096916)))))

(declare-fun b!3233079 () Bool)

(assert (=> b!3233079 (= e!2016269 (matchR!4653 (derivativeStep!2957 (regex!5272 (rule!7730 separatorToken!241)) (head!7093 lt!1096916)) (tail!5237 lt!1096916)))))

(declare-fun b!3233080 () Bool)

(declare-fun res!1316481 () Bool)

(declare-fun e!2016265 () Bool)

(assert (=> b!3233080 (=> res!1316481 e!2016265)))

(assert (=> b!3233080 (= res!1316481 e!2016267)))

(declare-fun res!1316478 () Bool)

(assert (=> b!3233080 (=> (not res!1316478) (not e!2016267))))

(assert (=> b!3233080 (= res!1316478 lt!1097127)))

(declare-fun b!3233081 () Bool)

(declare-fun res!1316475 () Bool)

(assert (=> b!3233081 (=> (not res!1316475) (not e!2016267))))

(assert (=> b!3233081 (= res!1316475 (not call!233404))))

(declare-fun d!888517 () Bool)

(declare-fun e!2016268 () Bool)

(assert (=> d!888517 e!2016268))

(declare-fun c!543391 () Bool)

(assert (=> d!888517 (= c!543391 ((_ is EmptyExpr!10031) (regex!5272 (rule!7730 separatorToken!241))))))

(assert (=> d!888517 (= lt!1097127 e!2016269)))

(declare-fun c!543393 () Bool)

(assert (=> d!888517 (= c!543393 (isEmpty!20475 lt!1096916))))

(assert (=> d!888517 (validRegex!4560 (regex!5272 (rule!7730 separatorToken!241)))))

(assert (=> d!888517 (= (matchR!4653 (regex!5272 (rule!7730 separatorToken!241)) lt!1096916) lt!1097127)))

(declare-fun b!3233082 () Bool)

(assert (=> b!3233082 (= e!2016267 (= (head!7093 lt!1096916) (c!543284 (regex!5272 (rule!7730 separatorToken!241)))))))

(declare-fun bm!233399 () Bool)

(assert (=> bm!233399 (= call!233404 (isEmpty!20475 lt!1096916))))

(declare-fun b!3233083 () Bool)

(assert (=> b!3233083 (= e!2016266 (not (= (head!7093 lt!1096916) (c!543284 (regex!5272 (rule!7730 separatorToken!241))))))))

(declare-fun b!3233084 () Bool)

(assert (=> b!3233084 (= e!2016268 e!2016270)))

(declare-fun c!543392 () Bool)

(assert (=> b!3233084 (= c!543392 ((_ is EmptyLang!10031) (regex!5272 (rule!7730 separatorToken!241))))))

(declare-fun b!3233085 () Bool)

(declare-fun res!1316476 () Bool)

(assert (=> b!3233085 (=> res!1316476 e!2016265)))

(assert (=> b!3233085 (= res!1316476 (not ((_ is ElementMatch!10031) (regex!5272 (rule!7730 separatorToken!241)))))))

(assert (=> b!3233085 (= e!2016270 e!2016265)))

(declare-fun b!3233086 () Bool)

(assert (=> b!3233086 (= e!2016265 e!2016264)))

(declare-fun res!1316482 () Bool)

(assert (=> b!3233086 (=> (not res!1316482) (not e!2016264))))

(assert (=> b!3233086 (= res!1316482 (not lt!1097127))))

(declare-fun b!3233087 () Bool)

(assert (=> b!3233087 (= e!2016268 (= lt!1097127 call!233404))))

(assert (= (and d!888517 c!543393) b!3233076))

(assert (= (and d!888517 (not c!543393)) b!3233079))

(assert (= (and d!888517 c!543391) b!3233087))

(assert (= (and d!888517 (not c!543391)) b!3233084))

(assert (= (and b!3233084 c!543392) b!3233075))

(assert (= (and b!3233084 (not c!543392)) b!3233085))

(assert (= (and b!3233085 (not res!1316476)) b!3233080))

(assert (= (and b!3233080 res!1316478) b!3233081))

(assert (= (and b!3233081 res!1316475) b!3233078))

(assert (= (and b!3233078 res!1316479) b!3233082))

(assert (= (and b!3233080 (not res!1316481)) b!3233086))

(assert (= (and b!3233086 res!1316482) b!3233074))

(assert (= (and b!3233074 (not res!1316480)) b!3233077))

(assert (= (and b!3233077 (not res!1316477)) b!3233083))

(assert (= (or b!3233087 b!3233074 b!3233081) bm!233399))

(assert (=> b!3233082 m!3514325))

(declare-fun m!3514957 () Bool)

(assert (=> b!3233077 m!3514957))

(assert (=> b!3233077 m!3514957))

(declare-fun m!3514959 () Bool)

(assert (=> b!3233077 m!3514959))

(assert (=> b!3233078 m!3514957))

(assert (=> b!3233078 m!3514957))

(assert (=> b!3233078 m!3514959))

(declare-fun m!3514961 () Bool)

(assert (=> d!888517 m!3514961))

(assert (=> d!888517 m!3514947))

(assert (=> bm!233399 m!3514961))

(assert (=> b!3233079 m!3514325))

(assert (=> b!3233079 m!3514325))

(declare-fun m!3514963 () Bool)

(assert (=> b!3233079 m!3514963))

(assert (=> b!3233079 m!3514957))

(assert (=> b!3233079 m!3514963))

(assert (=> b!3233079 m!3514957))

(declare-fun m!3514965 () Bool)

(assert (=> b!3233079 m!3514965))

(declare-fun m!3514967 () Bool)

(assert (=> b!3233076 m!3514967))

(assert (=> b!3233083 m!3514325))

(assert (=> b!3232590 d!888517))

(declare-fun lt!1097130 () Bool)

(declare-fun d!888521 () Bool)

(declare-fun isEmpty!20485 (List!36513) Bool)

(assert (=> d!888521 (= lt!1097130 (isEmpty!20485 (list!12995 (_1!21044 (lex!2189 thiss!18206 rules!2135 lt!1096932)))))))

(declare-fun isEmpty!20486 (Conc!10920) Bool)

(assert (=> d!888521 (= lt!1097130 (isEmpty!20486 (c!543286 (_1!21044 (lex!2189 thiss!18206 rules!2135 lt!1096932)))))))

(assert (=> d!888521 (= (isEmpty!20477 (_1!21044 (lex!2189 thiss!18206 rules!2135 lt!1096932))) lt!1097130)))

(declare-fun bs!543439 () Bool)

(assert (= bs!543439 d!888521))

(declare-fun m!3514969 () Bool)

(assert (=> bs!543439 m!3514969))

(assert (=> bs!543439 m!3514969))

(declare-fun m!3514971 () Bool)

(assert (=> bs!543439 m!3514971))

(declare-fun m!3514973 () Bool)

(assert (=> bs!543439 m!3514973))

(assert (=> b!3232611 d!888521))

(declare-fun d!888523 () Bool)

(declare-fun e!2016307 () Bool)

(assert (=> d!888523 e!2016307))

(declare-fun res!1316511 () Bool)

(assert (=> d!888523 (=> (not res!1316511) (not e!2016307))))

(declare-fun e!2016309 () Bool)

(assert (=> d!888523 (= res!1316511 e!2016309)))

(declare-fun c!543410 () Bool)

(declare-fun lt!1097162 () tuple2!35820)

(assert (=> d!888523 (= c!543410 (> (size!27450 (_1!21044 lt!1097162)) 0))))

(declare-fun lexTailRecV2!949 (LexerInterface!4861 List!36512 BalanceConc!21452 BalanceConc!21452 BalanceConc!21452 BalanceConc!21454) tuple2!35820)

(assert (=> d!888523 (= lt!1097162 (lexTailRecV2!949 thiss!18206 rules!2135 lt!1096932 (BalanceConc!21453 Empty!10919) lt!1096932 (BalanceConc!21455 Empty!10920)))))

(assert (=> d!888523 (= (lex!2189 thiss!18206 rules!2135 lt!1096932) lt!1097162)))

(declare-fun b!3233150 () Bool)

(declare-fun res!1316513 () Bool)

(assert (=> b!3233150 (=> (not res!1316513) (not e!2016307))))

(declare-datatypes ((tuple2!35828 0))(
  ( (tuple2!35829 (_1!21048 List!36513) (_2!21048 List!36511)) )
))
(declare-fun lexList!1337 (LexerInterface!4861 List!36512 List!36511) tuple2!35828)

(assert (=> b!3233150 (= res!1316513 (= (list!12995 (_1!21044 lt!1097162)) (_1!21048 (lexList!1337 thiss!18206 rules!2135 (list!12991 lt!1096932)))))))

(declare-fun b!3233151 () Bool)

(assert (=> b!3233151 (= e!2016309 (= (_2!21044 lt!1097162) lt!1096932))))

(declare-fun b!3233152 () Bool)

(assert (=> b!3233152 (= e!2016307 (= (list!12991 (_2!21044 lt!1097162)) (_2!21048 (lexList!1337 thiss!18206 rules!2135 (list!12991 lt!1096932)))))))

(declare-fun b!3233153 () Bool)

(declare-fun e!2016308 () Bool)

(assert (=> b!3233153 (= e!2016309 e!2016308)))

(declare-fun res!1316512 () Bool)

(assert (=> b!3233153 (= res!1316512 (< (size!27451 (_2!21044 lt!1097162)) (size!27451 lt!1096932)))))

(assert (=> b!3233153 (=> (not res!1316512) (not e!2016308))))

(declare-fun b!3233154 () Bool)

(assert (=> b!3233154 (= e!2016308 (not (isEmpty!20477 (_1!21044 lt!1097162))))))

(assert (= (and d!888523 c!543410) b!3233153))

(assert (= (and d!888523 (not c!543410)) b!3233151))

(assert (= (and b!3233153 res!1316512) b!3233154))

(assert (= (and d!888523 res!1316511) b!3233150))

(assert (= (and b!3233150 res!1316513) b!3233152))

(declare-fun m!3515013 () Bool)

(assert (=> b!3233152 m!3515013))

(declare-fun m!3515015 () Bool)

(assert (=> b!3233152 m!3515015))

(assert (=> b!3233152 m!3515015))

(declare-fun m!3515017 () Bool)

(assert (=> b!3233152 m!3515017))

(declare-fun m!3515019 () Bool)

(assert (=> b!3233154 m!3515019))

(declare-fun m!3515021 () Bool)

(assert (=> b!3233150 m!3515021))

(assert (=> b!3233150 m!3515015))

(assert (=> b!3233150 m!3515015))

(assert (=> b!3233150 m!3515017))

(declare-fun m!3515023 () Bool)

(assert (=> b!3233153 m!3515023))

(declare-fun m!3515025 () Bool)

(assert (=> b!3233153 m!3515025))

(declare-fun m!3515027 () Bool)

(assert (=> d!888523 m!3515027))

(declare-fun m!3515029 () Bool)

(assert (=> d!888523 m!3515029))

(assert (=> b!3232611 d!888523))

(declare-fun d!888543 () Bool)

(declare-fun fromListB!1570 (List!36511) BalanceConc!21452)

(assert (=> d!888543 (= (seqFromList!3608 lt!1096911) (fromListB!1570 lt!1096911))))

(declare-fun bs!543443 () Bool)

(assert (= bs!543443 d!888543))

(declare-fun m!3515031 () Bool)

(assert (=> bs!543443 m!3515031))

(assert (=> b!3232611 d!888543))

(declare-fun d!888545 () Bool)

(declare-fun lt!1097179 () Bool)

(declare-fun e!2016339 () Bool)

(assert (=> d!888545 (= lt!1097179 e!2016339)))

(declare-fun res!1316547 () Bool)

(assert (=> d!888545 (=> (not res!1316547) (not e!2016339))))

(assert (=> d!888545 (= res!1316547 (= (list!12995 (_1!21044 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 separatorToken!241))))) (list!12995 (singletonSeq!2368 separatorToken!241))))))

(declare-fun e!2016340 () Bool)

(assert (=> d!888545 (= lt!1097179 e!2016340)))

(declare-fun res!1316546 () Bool)

(assert (=> d!888545 (=> (not res!1316546) (not e!2016340))))

(declare-fun lt!1097178 () tuple2!35820)

(assert (=> d!888545 (= res!1316546 (= (size!27450 (_1!21044 lt!1097178)) 1))))

(assert (=> d!888545 (= lt!1097178 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 separatorToken!241))))))

(assert (=> d!888545 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888545 (= (rulesProduceIndividualToken!2353 thiss!18206 rules!2135 separatorToken!241) lt!1097179)))

(declare-fun b!3233206 () Bool)

(declare-fun res!1316545 () Bool)

(assert (=> b!3233206 (=> (not res!1316545) (not e!2016340))))

(assert (=> b!3233206 (= res!1316545 (= (apply!8315 (_1!21044 lt!1097178) 0) separatorToken!241))))

(declare-fun b!3233207 () Bool)

(declare-fun isEmpty!20487 (BalanceConc!21452) Bool)

(assert (=> b!3233207 (= e!2016340 (isEmpty!20487 (_2!21044 lt!1097178)))))

(declare-fun b!3233208 () Bool)

(assert (=> b!3233208 (= e!2016339 (isEmpty!20487 (_2!21044 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 separatorToken!241))))))))

(assert (= (and d!888545 res!1316546) b!3233206))

(assert (= (and b!3233206 res!1316545) b!3233207))

(assert (= (and d!888545 res!1316547) b!3233208))

(assert (=> d!888545 m!3514261))

(declare-fun m!3515133 () Bool)

(assert (=> d!888545 m!3515133))

(declare-fun m!3515135 () Bool)

(assert (=> d!888545 m!3515135))

(assert (=> d!888545 m!3515133))

(declare-fun m!3515137 () Bool)

(assert (=> d!888545 m!3515137))

(declare-fun m!3515139 () Bool)

(assert (=> d!888545 m!3515139))

(assert (=> d!888545 m!3515133))

(declare-fun m!3515141 () Bool)

(assert (=> d!888545 m!3515141))

(assert (=> d!888545 m!3515141))

(declare-fun m!3515143 () Bool)

(assert (=> d!888545 m!3515143))

(declare-fun m!3515145 () Bool)

(assert (=> b!3233206 m!3515145))

(declare-fun m!3515147 () Bool)

(assert (=> b!3233207 m!3515147))

(assert (=> b!3233208 m!3515133))

(assert (=> b!3233208 m!3515133))

(assert (=> b!3233208 m!3515141))

(assert (=> b!3233208 m!3515141))

(assert (=> b!3233208 m!3515143))

(declare-fun m!3515149 () Bool)

(assert (=> b!3233208 m!3515149))

(assert (=> b!3232609 d!888545))

(declare-fun b!3233209 () Bool)

(declare-fun e!2016341 () Bool)

(declare-fun e!2016343 () Bool)

(assert (=> b!3233209 (= e!2016341 e!2016343)))

(declare-fun res!1316553 () Bool)

(assert (=> b!3233209 (=> res!1316553 e!2016343)))

(declare-fun call!233410 () Bool)

(assert (=> b!3233209 (= res!1316553 call!233410)))

(declare-fun b!3233210 () Bool)

(declare-fun e!2016347 () Bool)

(declare-fun lt!1097180 () Bool)

(assert (=> b!3233210 (= e!2016347 (not lt!1097180))))

(declare-fun b!3233211 () Bool)

(declare-fun e!2016346 () Bool)

(assert (=> b!3233211 (= e!2016346 (nullable!3404 (regex!5272 lt!1096918)))))

(declare-fun b!3233212 () Bool)

(declare-fun res!1316550 () Bool)

(assert (=> b!3233212 (=> res!1316550 e!2016343)))

(assert (=> b!3233212 (= res!1316550 (not (isEmpty!20475 (tail!5237 lt!1096916))))))

(declare-fun b!3233213 () Bool)

(declare-fun res!1316552 () Bool)

(declare-fun e!2016344 () Bool)

(assert (=> b!3233213 (=> (not res!1316552) (not e!2016344))))

(assert (=> b!3233213 (= res!1316552 (isEmpty!20475 (tail!5237 lt!1096916)))))

(declare-fun b!3233214 () Bool)

(assert (=> b!3233214 (= e!2016346 (matchR!4653 (derivativeStep!2957 (regex!5272 lt!1096918) (head!7093 lt!1096916)) (tail!5237 lt!1096916)))))

(declare-fun b!3233215 () Bool)

(declare-fun res!1316554 () Bool)

(declare-fun e!2016342 () Bool)

(assert (=> b!3233215 (=> res!1316554 e!2016342)))

(assert (=> b!3233215 (= res!1316554 e!2016344)))

(declare-fun res!1316551 () Bool)

(assert (=> b!3233215 (=> (not res!1316551) (not e!2016344))))

(assert (=> b!3233215 (= res!1316551 lt!1097180)))

(declare-fun b!3233216 () Bool)

(declare-fun res!1316548 () Bool)

(assert (=> b!3233216 (=> (not res!1316548) (not e!2016344))))

(assert (=> b!3233216 (= res!1316548 (not call!233410))))

(declare-fun d!888565 () Bool)

(declare-fun e!2016345 () Bool)

(assert (=> d!888565 e!2016345))

(declare-fun c!543421 () Bool)

(assert (=> d!888565 (= c!543421 ((_ is EmptyExpr!10031) (regex!5272 lt!1096918)))))

(assert (=> d!888565 (= lt!1097180 e!2016346)))

(declare-fun c!543423 () Bool)

(assert (=> d!888565 (= c!543423 (isEmpty!20475 lt!1096916))))

(assert (=> d!888565 (validRegex!4560 (regex!5272 lt!1096918))))

(assert (=> d!888565 (= (matchR!4653 (regex!5272 lt!1096918) lt!1096916) lt!1097180)))

(declare-fun b!3233217 () Bool)

(assert (=> b!3233217 (= e!2016344 (= (head!7093 lt!1096916) (c!543284 (regex!5272 lt!1096918))))))

(declare-fun bm!233405 () Bool)

(assert (=> bm!233405 (= call!233410 (isEmpty!20475 lt!1096916))))

(declare-fun b!3233218 () Bool)

(assert (=> b!3233218 (= e!2016343 (not (= (head!7093 lt!1096916) (c!543284 (regex!5272 lt!1096918)))))))

(declare-fun b!3233219 () Bool)

(assert (=> b!3233219 (= e!2016345 e!2016347)))

(declare-fun c!543422 () Bool)

(assert (=> b!3233219 (= c!543422 ((_ is EmptyLang!10031) (regex!5272 lt!1096918)))))

(declare-fun b!3233220 () Bool)

(declare-fun res!1316549 () Bool)

(assert (=> b!3233220 (=> res!1316549 e!2016342)))

(assert (=> b!3233220 (= res!1316549 (not ((_ is ElementMatch!10031) (regex!5272 lt!1096918))))))

(assert (=> b!3233220 (= e!2016347 e!2016342)))

(declare-fun b!3233221 () Bool)

(assert (=> b!3233221 (= e!2016342 e!2016341)))

(declare-fun res!1316555 () Bool)

(assert (=> b!3233221 (=> (not res!1316555) (not e!2016341))))

(assert (=> b!3233221 (= res!1316555 (not lt!1097180))))

(declare-fun b!3233222 () Bool)

(assert (=> b!3233222 (= e!2016345 (= lt!1097180 call!233410))))

(assert (= (and d!888565 c!543423) b!3233211))

(assert (= (and d!888565 (not c!543423)) b!3233214))

(assert (= (and d!888565 c!543421) b!3233222))

(assert (= (and d!888565 (not c!543421)) b!3233219))

(assert (= (and b!3233219 c!543422) b!3233210))

(assert (= (and b!3233219 (not c!543422)) b!3233220))

(assert (= (and b!3233220 (not res!1316549)) b!3233215))

(assert (= (and b!3233215 res!1316551) b!3233216))

(assert (= (and b!3233216 res!1316548) b!3233213))

(assert (= (and b!3233213 res!1316552) b!3233217))

(assert (= (and b!3233215 (not res!1316554)) b!3233221))

(assert (= (and b!3233221 res!1316555) b!3233209))

(assert (= (and b!3233209 (not res!1316553)) b!3233212))

(assert (= (and b!3233212 (not res!1316550)) b!3233218))

(assert (= (or b!3233222 b!3233209 b!3233216) bm!233405))

(assert (=> b!3233217 m!3514325))

(assert (=> b!3233212 m!3514957))

(assert (=> b!3233212 m!3514957))

(assert (=> b!3233212 m!3514959))

(assert (=> b!3233213 m!3514957))

(assert (=> b!3233213 m!3514957))

(assert (=> b!3233213 m!3514959))

(assert (=> d!888565 m!3514961))

(declare-fun m!3515151 () Bool)

(assert (=> d!888565 m!3515151))

(assert (=> bm!233405 m!3514961))

(assert (=> b!3233214 m!3514325))

(assert (=> b!3233214 m!3514325))

(declare-fun m!3515153 () Bool)

(assert (=> b!3233214 m!3515153))

(assert (=> b!3233214 m!3514957))

(assert (=> b!3233214 m!3515153))

(assert (=> b!3233214 m!3514957))

(declare-fun m!3515155 () Bool)

(assert (=> b!3233214 m!3515155))

(declare-fun m!3515157 () Bool)

(assert (=> b!3233211 m!3515157))

(assert (=> b!3233218 m!3514325))

(assert (=> b!3232608 d!888565))

(declare-fun d!888567 () Bool)

(assert (=> d!888567 (= (get!11591 lt!1096925) (v!35847 lt!1096925))))

(assert (=> b!3232608 d!888567))

(declare-fun b!3233223 () Bool)

(declare-fun res!1316556 () Bool)

(declare-fun e!2016350 () Bool)

(assert (=> b!3233223 (=> res!1316556 e!2016350)))

(assert (=> b!3233223 (= res!1316556 (not ((_ is IntegerValue!16508) (value!170712 separatorToken!241))))))

(declare-fun e!2016348 () Bool)

(assert (=> b!3233223 (= e!2016348 e!2016350)))

(declare-fun b!3233224 () Bool)

(assert (=> b!3233224 (= e!2016350 (inv!15 (value!170712 separatorToken!241)))))

(declare-fun b!3233225 () Bool)

(assert (=> b!3233225 (= e!2016348 (inv!17 (value!170712 separatorToken!241)))))

(declare-fun b!3233226 () Bool)

(declare-fun e!2016349 () Bool)

(assert (=> b!3233226 (= e!2016349 (inv!16 (value!170712 separatorToken!241)))))

(declare-fun b!3233227 () Bool)

(assert (=> b!3233227 (= e!2016349 e!2016348)))

(declare-fun c!543425 () Bool)

(assert (=> b!3233227 (= c!543425 ((_ is IntegerValue!16507) (value!170712 separatorToken!241)))))

(declare-fun d!888569 () Bool)

(declare-fun c!543424 () Bool)

(assert (=> d!888569 (= c!543424 ((_ is IntegerValue!16506) (value!170712 separatorToken!241)))))

(assert (=> d!888569 (= (inv!21 (value!170712 separatorToken!241)) e!2016349)))

(assert (= (and d!888569 c!543424) b!3233226))

(assert (= (and d!888569 (not c!543424)) b!3233227))

(assert (= (and b!3233227 c!543425) b!3233225))

(assert (= (and b!3233227 (not c!543425)) b!3233223))

(assert (= (and b!3233223 (not res!1316556)) b!3233224))

(declare-fun m!3515159 () Bool)

(assert (=> b!3233224 m!3515159))

(declare-fun m!3515161 () Bool)

(assert (=> b!3233225 m!3515161))

(declare-fun m!3515163 () Bool)

(assert (=> b!3233226 m!3515163))

(assert (=> b!3232596 d!888569))

(declare-fun b!3233228 () Bool)

(declare-fun e!2016352 () List!36511)

(declare-fun e!2016351 () List!36511)

(assert (=> b!3233228 (= e!2016352 e!2016351)))

(declare-fun c!543426 () Bool)

(assert (=> b!3233228 (= c!543426 ((_ is ElementMatch!10031) (regex!5272 (rule!7730 (h!41809 tokens!494)))))))

(declare-fun b!3233229 () Bool)

(assert (=> b!3233229 (= e!2016352 Nil!36387)))

(declare-fun bm!233406 () Bool)

(declare-fun call!233413 () List!36511)

(declare-fun call!233414 () List!36511)

(assert (=> bm!233406 (= call!233413 call!233414)))

(declare-fun call!233411 () List!36511)

(declare-fun bm!233407 () Bool)

(declare-fun call!233412 () List!36511)

(declare-fun c!543427 () Bool)

(assert (=> bm!233407 (= call!233412 (++!8768 (ite c!543427 call!233413 call!233411) (ite c!543427 call!233411 call!233413)))))

(declare-fun d!888571 () Bool)

(declare-fun c!543428 () Bool)

(assert (=> d!888571 (= c!543428 (or ((_ is EmptyExpr!10031) (regex!5272 (rule!7730 (h!41809 tokens!494)))) ((_ is EmptyLang!10031) (regex!5272 (rule!7730 (h!41809 tokens!494))))))))

(assert (=> d!888571 (= (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494)))) e!2016352)))

(declare-fun bm!233408 () Bool)

(declare-fun c!543429 () Bool)

(assert (=> bm!233408 (= call!233414 (usedCharacters!574 (ite c!543429 (reg!10360 (regex!5272 (rule!7730 (h!41809 tokens!494)))) (ite c!543427 (regOne!20575 (regex!5272 (rule!7730 (h!41809 tokens!494)))) (regTwo!20574 (regex!5272 (rule!7730 (h!41809 tokens!494))))))))))

(declare-fun b!3233230 () Bool)

(declare-fun e!2016354 () List!36511)

(declare-fun e!2016353 () List!36511)

(assert (=> b!3233230 (= e!2016354 e!2016353)))

(assert (=> b!3233230 (= c!543427 ((_ is Union!10031) (regex!5272 (rule!7730 (h!41809 tokens!494)))))))

(declare-fun b!3233231 () Bool)

(assert (=> b!3233231 (= e!2016353 call!233412)))

(declare-fun b!3233232 () Bool)

(assert (=> b!3233232 (= e!2016354 call!233414)))

(declare-fun b!3233233 () Bool)

(assert (=> b!3233233 (= e!2016353 call!233412)))

(declare-fun b!3233234 () Bool)

(assert (=> b!3233234 (= e!2016351 (Cons!36387 (c!543284 (regex!5272 (rule!7730 (h!41809 tokens!494)))) Nil!36387))))

(declare-fun bm!233409 () Bool)

(assert (=> bm!233409 (= call!233411 (usedCharacters!574 (ite c!543427 (regTwo!20575 (regex!5272 (rule!7730 (h!41809 tokens!494)))) (regOne!20574 (regex!5272 (rule!7730 (h!41809 tokens!494)))))))))

(declare-fun b!3233235 () Bool)

(assert (=> b!3233235 (= c!543429 ((_ is Star!10031) (regex!5272 (rule!7730 (h!41809 tokens!494)))))))

(assert (=> b!3233235 (= e!2016351 e!2016354)))

(assert (= (and d!888571 c!543428) b!3233229))

(assert (= (and d!888571 (not c!543428)) b!3233228))

(assert (= (and b!3233228 c!543426) b!3233234))

(assert (= (and b!3233228 (not c!543426)) b!3233235))

(assert (= (and b!3233235 c!543429) b!3233232))

(assert (= (and b!3233235 (not c!543429)) b!3233230))

(assert (= (and b!3233230 c!543427) b!3233231))

(assert (= (and b!3233230 (not c!543427)) b!3233233))

(assert (= (or b!3233231 b!3233233) bm!233409))

(assert (= (or b!3233231 b!3233233) bm!233406))

(assert (= (or b!3233231 b!3233233) bm!233407))

(assert (= (or b!3233232 bm!233406) bm!233408))

(declare-fun m!3515165 () Bool)

(assert (=> bm!233407 m!3515165))

(declare-fun m!3515167 () Bool)

(assert (=> bm!233408 m!3515167))

(declare-fun m!3515169 () Bool)

(assert (=> bm!233409 m!3515169))

(assert (=> b!3232595 d!888571))

(declare-fun d!888573 () Bool)

(assert (=> d!888573 (not (contains!6535 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494)))) lt!1096923))))

(declare-fun lt!1097183 () Unit!50986)

(declare-fun choose!18865 (LexerInterface!4861 List!36512 List!36512 Rule!10344 Rule!10344 C!20248) Unit!50986)

(assert (=> d!888573 (= lt!1097183 (choose!18865 thiss!18206 rules!2135 rules!2135 (rule!7730 (h!41809 tokens!494)) (rule!7730 separatorToken!241) lt!1096923))))

(assert (=> d!888573 (rulesInvariant!4258 thiss!18206 rules!2135)))

(assert (=> d!888573 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!178 thiss!18206 rules!2135 rules!2135 (rule!7730 (h!41809 tokens!494)) (rule!7730 separatorToken!241) lt!1096923) lt!1097183)))

(declare-fun bs!543444 () Bool)

(assert (= bs!543444 d!888573))

(assert (=> bs!543444 m!3514283))

(assert (=> bs!543444 m!3514283))

(assert (=> bs!543444 m!3514285))

(declare-fun m!3515171 () Bool)

(assert (=> bs!543444 m!3515171))

(assert (=> bs!543444 m!3514363))

(assert (=> b!3232595 d!888573))

(declare-fun b!3233254 () Bool)

(declare-fun res!1316575 () Bool)

(declare-fun e!2016362 () Bool)

(assert (=> b!3233254 (=> (not res!1316575) (not e!2016362))))

(declare-fun lt!1097200 () Option!7227)

(assert (=> b!3233254 (= res!1316575 (< (size!27447 (_2!21043 (get!11590 lt!1097200))) (size!27447 lt!1096917)))))

(declare-fun call!233417 () Option!7227)

(declare-fun bm!233412 () Bool)

(assert (=> bm!233412 (= call!233417 (maxPrefixOneRule!1626 thiss!18206 (h!41808 rules!2135) lt!1096917))))

(declare-fun b!3233255 () Bool)

(declare-fun res!1316574 () Bool)

(assert (=> b!3233255 (=> (not res!1316574) (not e!2016362))))

(assert (=> b!3233255 (= res!1316574 (= (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097200)))) (originalCharacters!5986 (_1!21043 (get!11590 lt!1097200)))))))

(declare-fun b!3233256 () Bool)

(declare-fun res!1316577 () Bool)

(assert (=> b!3233256 (=> (not res!1316577) (not e!2016362))))

(assert (=> b!3233256 (= res!1316577 (= (value!170712 (_1!21043 (get!11590 lt!1097200))) (apply!8312 (transformation!5272 (rule!7730 (_1!21043 (get!11590 lt!1097200)))) (seqFromList!3608 (originalCharacters!5986 (_1!21043 (get!11590 lt!1097200)))))))))

(declare-fun b!3233257 () Bool)

(declare-fun e!2016363 () Option!7227)

(assert (=> b!3233257 (= e!2016363 call!233417)))

(declare-fun b!3233258 () Bool)

(declare-fun e!2016361 () Bool)

(assert (=> b!3233258 (= e!2016361 e!2016362)))

(declare-fun res!1316573 () Bool)

(assert (=> b!3233258 (=> (not res!1316573) (not e!2016362))))

(declare-fun isDefined!5602 (Option!7227) Bool)

(assert (=> b!3233258 (= res!1316573 (isDefined!5602 lt!1097200))))

(declare-fun b!3233259 () Bool)

(declare-fun res!1316576 () Bool)

(assert (=> b!3233259 (=> (not res!1316576) (not e!2016362))))

(assert (=> b!3233259 (= res!1316576 (= (++!8768 (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097200)))) (_2!21043 (get!11590 lt!1097200))) lt!1096917))))

(declare-fun d!888575 () Bool)

(assert (=> d!888575 e!2016361))

(declare-fun res!1316572 () Bool)

(assert (=> d!888575 (=> res!1316572 e!2016361)))

(assert (=> d!888575 (= res!1316572 (isEmpty!20484 lt!1097200))))

(assert (=> d!888575 (= lt!1097200 e!2016363)))

(declare-fun c!543433 () Bool)

(assert (=> d!888575 (= c!543433 (and ((_ is Cons!36388) rules!2135) ((_ is Nil!36388) (t!241881 rules!2135))))))

(declare-fun lt!1097198 () Unit!50986)

(declare-fun lt!1097196 () Unit!50986)

(assert (=> d!888575 (= lt!1097198 lt!1097196)))

(declare-fun isPrefix!2792 (List!36511 List!36511) Bool)

(assert (=> d!888575 (isPrefix!2792 lt!1096917 lt!1096917)))

(declare-fun lemmaIsPrefixRefl!1751 (List!36511 List!36511) Unit!50986)

(assert (=> d!888575 (= lt!1097196 (lemmaIsPrefixRefl!1751 lt!1096917 lt!1096917))))

(declare-fun rulesValidInductive!1791 (LexerInterface!4861 List!36512) Bool)

(assert (=> d!888575 (rulesValidInductive!1791 thiss!18206 rules!2135)))

(assert (=> d!888575 (= (maxPrefix!2489 thiss!18206 rules!2135 lt!1096917) lt!1097200)))

(declare-fun b!3233260 () Bool)

(declare-fun res!1316571 () Bool)

(assert (=> b!3233260 (=> (not res!1316571) (not e!2016362))))

(assert (=> b!3233260 (= res!1316571 (matchR!4653 (regex!5272 (rule!7730 (_1!21043 (get!11590 lt!1097200)))) (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097200))))))))

(declare-fun b!3233261 () Bool)

(assert (=> b!3233261 (= e!2016362 (contains!6538 rules!2135 (rule!7730 (_1!21043 (get!11590 lt!1097200)))))))

(declare-fun b!3233262 () Bool)

(declare-fun lt!1097197 () Option!7227)

(declare-fun lt!1097199 () Option!7227)

(assert (=> b!3233262 (= e!2016363 (ite (and ((_ is None!7226) lt!1097197) ((_ is None!7226) lt!1097199)) None!7226 (ite ((_ is None!7226) lt!1097199) lt!1097197 (ite ((_ is None!7226) lt!1097197) lt!1097199 (ite (>= (size!27446 (_1!21043 (v!35846 lt!1097197))) (size!27446 (_1!21043 (v!35846 lt!1097199)))) lt!1097197 lt!1097199)))))))

(assert (=> b!3233262 (= lt!1097197 call!233417)))

(assert (=> b!3233262 (= lt!1097199 (maxPrefix!2489 thiss!18206 (t!241881 rules!2135) lt!1096917))))

(assert (= (and d!888575 c!543433) b!3233257))

(assert (= (and d!888575 (not c!543433)) b!3233262))

(assert (= (or b!3233257 b!3233262) bm!233412))

(assert (= (and d!888575 (not res!1316572)) b!3233258))

(assert (= (and b!3233258 res!1316573) b!3233255))

(assert (= (and b!3233255 res!1316574) b!3233254))

(assert (= (and b!3233254 res!1316575) b!3233259))

(assert (= (and b!3233259 res!1316576) b!3233256))

(assert (= (and b!3233256 res!1316577) b!3233260))

(assert (= (and b!3233260 res!1316571) b!3233261))

(declare-fun m!3515173 () Bool)

(assert (=> b!3233259 m!3515173))

(declare-fun m!3515175 () Bool)

(assert (=> b!3233259 m!3515175))

(assert (=> b!3233259 m!3515175))

(declare-fun m!3515177 () Bool)

(assert (=> b!3233259 m!3515177))

(assert (=> b!3233259 m!3515177))

(declare-fun m!3515179 () Bool)

(assert (=> b!3233259 m!3515179))

(assert (=> b!3233261 m!3515173))

(declare-fun m!3515181 () Bool)

(assert (=> b!3233261 m!3515181))

(declare-fun m!3515183 () Bool)

(assert (=> bm!233412 m!3515183))

(declare-fun m!3515185 () Bool)

(assert (=> b!3233262 m!3515185))

(declare-fun m!3515187 () Bool)

(assert (=> b!3233258 m!3515187))

(assert (=> b!3233254 m!3515173))

(declare-fun m!3515189 () Bool)

(assert (=> b!3233254 m!3515189))

(declare-fun m!3515191 () Bool)

(assert (=> b!3233254 m!3515191))

(declare-fun m!3515193 () Bool)

(assert (=> d!888575 m!3515193))

(declare-fun m!3515195 () Bool)

(assert (=> d!888575 m!3515195))

(declare-fun m!3515197 () Bool)

(assert (=> d!888575 m!3515197))

(declare-fun m!3515199 () Bool)

(assert (=> d!888575 m!3515199))

(assert (=> b!3233260 m!3515173))

(assert (=> b!3233260 m!3515175))

(assert (=> b!3233260 m!3515175))

(assert (=> b!3233260 m!3515177))

(assert (=> b!3233260 m!3515177))

(declare-fun m!3515201 () Bool)

(assert (=> b!3233260 m!3515201))

(assert (=> b!3233256 m!3515173))

(declare-fun m!3515203 () Bool)

(assert (=> b!3233256 m!3515203))

(assert (=> b!3233256 m!3515203))

(declare-fun m!3515205 () Bool)

(assert (=> b!3233256 m!3515205))

(assert (=> b!3233255 m!3515173))

(assert (=> b!3233255 m!3515175))

(assert (=> b!3233255 m!3515175))

(assert (=> b!3233255 m!3515177))

(assert (=> b!3232595 d!888575))

(declare-fun b!3233263 () Bool)

(declare-fun res!1316582 () Bool)

(declare-fun e!2016365 () Bool)

(assert (=> b!3233263 (=> (not res!1316582) (not e!2016365))))

(declare-fun lt!1097205 () Option!7227)

(assert (=> b!3233263 (= res!1316582 (< (size!27447 (_2!21043 (get!11590 lt!1097205))) (size!27447 lt!1096922)))))

(declare-fun call!233418 () Option!7227)

(declare-fun bm!233413 () Bool)

(assert (=> bm!233413 (= call!233418 (maxPrefixOneRule!1626 thiss!18206 (h!41808 rules!2135) lt!1096922))))

(declare-fun b!3233264 () Bool)

(declare-fun res!1316581 () Bool)

(assert (=> b!3233264 (=> (not res!1316581) (not e!2016365))))

(assert (=> b!3233264 (= res!1316581 (= (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097205)))) (originalCharacters!5986 (_1!21043 (get!11590 lt!1097205)))))))

(declare-fun b!3233265 () Bool)

(declare-fun res!1316584 () Bool)

(assert (=> b!3233265 (=> (not res!1316584) (not e!2016365))))

(assert (=> b!3233265 (= res!1316584 (= (value!170712 (_1!21043 (get!11590 lt!1097205))) (apply!8312 (transformation!5272 (rule!7730 (_1!21043 (get!11590 lt!1097205)))) (seqFromList!3608 (originalCharacters!5986 (_1!21043 (get!11590 lt!1097205)))))))))

(declare-fun b!3233266 () Bool)

(declare-fun e!2016366 () Option!7227)

(assert (=> b!3233266 (= e!2016366 call!233418)))

(declare-fun b!3233267 () Bool)

(declare-fun e!2016364 () Bool)

(assert (=> b!3233267 (= e!2016364 e!2016365)))

(declare-fun res!1316580 () Bool)

(assert (=> b!3233267 (=> (not res!1316580) (not e!2016365))))

(assert (=> b!3233267 (= res!1316580 (isDefined!5602 lt!1097205))))

(declare-fun b!3233268 () Bool)

(declare-fun res!1316583 () Bool)

(assert (=> b!3233268 (=> (not res!1316583) (not e!2016365))))

(assert (=> b!3233268 (= res!1316583 (= (++!8768 (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097205)))) (_2!21043 (get!11590 lt!1097205))) lt!1096922))))

(declare-fun d!888577 () Bool)

(assert (=> d!888577 e!2016364))

(declare-fun res!1316579 () Bool)

(assert (=> d!888577 (=> res!1316579 e!2016364)))

(assert (=> d!888577 (= res!1316579 (isEmpty!20484 lt!1097205))))

(assert (=> d!888577 (= lt!1097205 e!2016366)))

(declare-fun c!543434 () Bool)

(assert (=> d!888577 (= c!543434 (and ((_ is Cons!36388) rules!2135) ((_ is Nil!36388) (t!241881 rules!2135))))))

(declare-fun lt!1097203 () Unit!50986)

(declare-fun lt!1097201 () Unit!50986)

(assert (=> d!888577 (= lt!1097203 lt!1097201)))

(assert (=> d!888577 (isPrefix!2792 lt!1096922 lt!1096922)))

(assert (=> d!888577 (= lt!1097201 (lemmaIsPrefixRefl!1751 lt!1096922 lt!1096922))))

(assert (=> d!888577 (rulesValidInductive!1791 thiss!18206 rules!2135)))

(assert (=> d!888577 (= (maxPrefix!2489 thiss!18206 rules!2135 lt!1096922) lt!1097205)))

(declare-fun b!3233269 () Bool)

(declare-fun res!1316578 () Bool)

(assert (=> b!3233269 (=> (not res!1316578) (not e!2016365))))

(assert (=> b!3233269 (= res!1316578 (matchR!4653 (regex!5272 (rule!7730 (_1!21043 (get!11590 lt!1097205)))) (list!12991 (charsOf!3288 (_1!21043 (get!11590 lt!1097205))))))))

(declare-fun b!3233270 () Bool)

(assert (=> b!3233270 (= e!2016365 (contains!6538 rules!2135 (rule!7730 (_1!21043 (get!11590 lt!1097205)))))))

(declare-fun b!3233271 () Bool)

(declare-fun lt!1097202 () Option!7227)

(declare-fun lt!1097204 () Option!7227)

(assert (=> b!3233271 (= e!2016366 (ite (and ((_ is None!7226) lt!1097202) ((_ is None!7226) lt!1097204)) None!7226 (ite ((_ is None!7226) lt!1097204) lt!1097202 (ite ((_ is None!7226) lt!1097202) lt!1097204 (ite (>= (size!27446 (_1!21043 (v!35846 lt!1097202))) (size!27446 (_1!21043 (v!35846 lt!1097204)))) lt!1097202 lt!1097204)))))))

(assert (=> b!3233271 (= lt!1097202 call!233418)))

(assert (=> b!3233271 (= lt!1097204 (maxPrefix!2489 thiss!18206 (t!241881 rules!2135) lt!1096922))))

(assert (= (and d!888577 c!543434) b!3233266))

(assert (= (and d!888577 (not c!543434)) b!3233271))

(assert (= (or b!3233266 b!3233271) bm!233413))

(assert (= (and d!888577 (not res!1316579)) b!3233267))

(assert (= (and b!3233267 res!1316580) b!3233264))

(assert (= (and b!3233264 res!1316581) b!3233263))

(assert (= (and b!3233263 res!1316582) b!3233268))

(assert (= (and b!3233268 res!1316583) b!3233265))

(assert (= (and b!3233265 res!1316584) b!3233269))

(assert (= (and b!3233269 res!1316578) b!3233270))

(declare-fun m!3515207 () Bool)

(assert (=> b!3233268 m!3515207))

(declare-fun m!3515209 () Bool)

(assert (=> b!3233268 m!3515209))

(assert (=> b!3233268 m!3515209))

(declare-fun m!3515211 () Bool)

(assert (=> b!3233268 m!3515211))

(assert (=> b!3233268 m!3515211))

(declare-fun m!3515213 () Bool)

(assert (=> b!3233268 m!3515213))

(assert (=> b!3233270 m!3515207))

(declare-fun m!3515215 () Bool)

(assert (=> b!3233270 m!3515215))

(declare-fun m!3515217 () Bool)

(assert (=> bm!233413 m!3515217))

(declare-fun m!3515219 () Bool)

(assert (=> b!3233271 m!3515219))

(declare-fun m!3515221 () Bool)

(assert (=> b!3233267 m!3515221))

(assert (=> b!3233263 m!3515207))

(declare-fun m!3515223 () Bool)

(assert (=> b!3233263 m!3515223))

(declare-fun m!3515225 () Bool)

(assert (=> b!3233263 m!3515225))

(declare-fun m!3515227 () Bool)

(assert (=> d!888577 m!3515227))

(declare-fun m!3515229 () Bool)

(assert (=> d!888577 m!3515229))

(declare-fun m!3515231 () Bool)

(assert (=> d!888577 m!3515231))

(assert (=> d!888577 m!3515199))

(assert (=> b!3233269 m!3515207))

(assert (=> b!3233269 m!3515209))

(assert (=> b!3233269 m!3515209))

(assert (=> b!3233269 m!3515211))

(assert (=> b!3233269 m!3515211))

(declare-fun m!3515233 () Bool)

(assert (=> b!3233269 m!3515233))

(assert (=> b!3233265 m!3515207))

(declare-fun m!3515235 () Bool)

(assert (=> b!3233265 m!3515235))

(assert (=> b!3233265 m!3515235))

(declare-fun m!3515237 () Bool)

(assert (=> b!3233265 m!3515237))

(assert (=> b!3233264 m!3515207))

(assert (=> b!3233264 m!3515209))

(assert (=> b!3233264 m!3515209))

(assert (=> b!3233264 m!3515211))

(assert (=> b!3232595 d!888577))

(declare-fun d!888579 () Bool)

(declare-fun lt!1097206 () Bool)

(assert (=> d!888579 (= lt!1097206 (select (content!4924 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494))))) lt!1096923))))

(declare-fun e!2016367 () Bool)

(assert (=> d!888579 (= lt!1097206 e!2016367)))

(declare-fun res!1316586 () Bool)

(assert (=> d!888579 (=> (not res!1316586) (not e!2016367))))

(assert (=> d!888579 (= res!1316586 ((_ is Cons!36387) (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494))))))))

(assert (=> d!888579 (= (contains!6535 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494)))) lt!1096923) lt!1097206)))

(declare-fun b!3233272 () Bool)

(declare-fun e!2016368 () Bool)

(assert (=> b!3233272 (= e!2016367 e!2016368)))

(declare-fun res!1316585 () Bool)

(assert (=> b!3233272 (=> res!1316585 e!2016368)))

(assert (=> b!3233272 (= res!1316585 (= (h!41807 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494))))) lt!1096923))))

(declare-fun b!3233273 () Bool)

(assert (=> b!3233273 (= e!2016368 (contains!6535 (t!241880 (usedCharacters!574 (regex!5272 (rule!7730 (h!41809 tokens!494))))) lt!1096923))))

(assert (= (and d!888579 res!1316586) b!3233272))

(assert (= (and b!3233272 (not res!1316585)) b!3233273))

(assert (=> d!888579 m!3514283))

(declare-fun m!3515239 () Bool)

(assert (=> d!888579 m!3515239))

(declare-fun m!3515241 () Bool)

(assert (=> d!888579 m!3515241))

(declare-fun m!3515243 () Bool)

(assert (=> b!3233273 m!3515243))

(assert (=> b!3232595 d!888579))

(declare-fun d!888581 () Bool)

(assert (=> d!888581 (= (maxPrefix!2489 thiss!18206 rules!2135 (++!8768 (list!12991 (charsOf!3288 (h!41809 tokens!494))) lt!1096916)) (Some!7226 (tuple2!35819 (h!41809 tokens!494) lt!1096916)))))

(declare-fun lt!1097209 () Unit!50986)

(declare-fun choose!18866 (LexerInterface!4861 List!36512 Token!9910 Rule!10344 List!36511 Rule!10344) Unit!50986)

(assert (=> d!888581 (= lt!1097209 (choose!18866 thiss!18206 rules!2135 (h!41809 tokens!494) (rule!7730 (h!41809 tokens!494)) lt!1096916 (rule!7730 separatorToken!241)))))

(assert (=> d!888581 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888581 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!178 thiss!18206 rules!2135 (h!41809 tokens!494) (rule!7730 (h!41809 tokens!494)) lt!1096916 (rule!7730 separatorToken!241)) lt!1097209)))

(declare-fun bs!543445 () Bool)

(assert (= bs!543445 d!888581))

(assert (=> bs!543445 m!3514371))

(assert (=> bs!543445 m!3514373))

(declare-fun m!3515245 () Bool)

(assert (=> bs!543445 m!3515245))

(assert (=> bs!543445 m!3514371))

(assert (=> bs!543445 m!3514373))

(assert (=> bs!543445 m!3515245))

(declare-fun m!3515247 () Bool)

(assert (=> bs!543445 m!3515247))

(assert (=> bs!543445 m!3514261))

(declare-fun m!3515249 () Bool)

(assert (=> bs!543445 m!3515249))

(assert (=> b!3232595 d!888581))

(declare-fun d!888583 () Bool)

(declare-fun lt!1097211 () Bool)

(declare-fun e!2016369 () Bool)

(assert (=> d!888583 (= lt!1097211 e!2016369)))

(declare-fun res!1316589 () Bool)

(assert (=> d!888583 (=> (not res!1316589) (not e!2016369))))

(assert (=> d!888583 (= res!1316589 (= (list!12995 (_1!21044 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 (h!41809 tokens!494)))))) (list!12995 (singletonSeq!2368 (h!41809 tokens!494)))))))

(declare-fun e!2016370 () Bool)

(assert (=> d!888583 (= lt!1097211 e!2016370)))

(declare-fun res!1316588 () Bool)

(assert (=> d!888583 (=> (not res!1316588) (not e!2016370))))

(declare-fun lt!1097210 () tuple2!35820)

(assert (=> d!888583 (= res!1316588 (= (size!27450 (_1!21044 lt!1097210)) 1))))

(assert (=> d!888583 (= lt!1097210 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 (h!41809 tokens!494)))))))

(assert (=> d!888583 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888583 (= (rulesProduceIndividualToken!2353 thiss!18206 rules!2135 (h!41809 tokens!494)) lt!1097211)))

(declare-fun b!3233274 () Bool)

(declare-fun res!1316587 () Bool)

(assert (=> b!3233274 (=> (not res!1316587) (not e!2016370))))

(assert (=> b!3233274 (= res!1316587 (= (apply!8315 (_1!21044 lt!1097210) 0) (h!41809 tokens!494)))))

(declare-fun b!3233275 () Bool)

(assert (=> b!3233275 (= e!2016370 (isEmpty!20487 (_2!21044 lt!1097210)))))

(declare-fun b!3233276 () Bool)

(assert (=> b!3233276 (= e!2016369 (isEmpty!20487 (_2!21044 (lex!2189 thiss!18206 rules!2135 (print!1926 thiss!18206 (singletonSeq!2368 (h!41809 tokens!494)))))))))

(assert (= (and d!888583 res!1316588) b!3233274))

(assert (= (and b!3233274 res!1316587) b!3233275))

(assert (= (and d!888583 res!1316589) b!3233276))

(assert (=> d!888583 m!3514261))

(assert (=> d!888583 m!3514353))

(declare-fun m!3515251 () Bool)

(assert (=> d!888583 m!3515251))

(assert (=> d!888583 m!3514353))

(declare-fun m!3515253 () Bool)

(assert (=> d!888583 m!3515253))

(declare-fun m!3515255 () Bool)

(assert (=> d!888583 m!3515255))

(assert (=> d!888583 m!3514353))

(declare-fun m!3515257 () Bool)

(assert (=> d!888583 m!3515257))

(assert (=> d!888583 m!3515257))

(declare-fun m!3515259 () Bool)

(assert (=> d!888583 m!3515259))

(declare-fun m!3515261 () Bool)

(assert (=> b!3233274 m!3515261))

(declare-fun m!3515263 () Bool)

(assert (=> b!3233275 m!3515263))

(assert (=> b!3233276 m!3514353))

(assert (=> b!3233276 m!3514353))

(assert (=> b!3233276 m!3515257))

(assert (=> b!3233276 m!3515257))

(assert (=> b!3233276 m!3515259))

(declare-fun m!3515265 () Bool)

(assert (=> b!3233276 m!3515265))

(assert (=> b!3232616 d!888583))

(declare-fun d!888585 () Bool)

(declare-fun res!1316594 () Bool)

(declare-fun e!2016375 () Bool)

(assert (=> d!888585 (=> res!1316594 e!2016375)))

(assert (=> d!888585 (= res!1316594 (not ((_ is Cons!36388) rules!2135)))))

(assert (=> d!888585 (= (sepAndNonSepRulesDisjointChars!1466 rules!2135 rules!2135) e!2016375)))

(declare-fun b!3233281 () Bool)

(declare-fun e!2016376 () Bool)

(assert (=> b!3233281 (= e!2016375 e!2016376)))

(declare-fun res!1316595 () Bool)

(assert (=> b!3233281 (=> (not res!1316595) (not e!2016376))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!609 (Rule!10344 List!36512) Bool)

(assert (=> b!3233281 (= res!1316595 (ruleDisjointCharsFromAllFromOtherType!609 (h!41808 rules!2135) rules!2135))))

(declare-fun b!3233282 () Bool)

(assert (=> b!3233282 (= e!2016376 (sepAndNonSepRulesDisjointChars!1466 rules!2135 (t!241881 rules!2135)))))

(assert (= (and d!888585 (not res!1316594)) b!3233281))

(assert (= (and b!3233281 res!1316595) b!3233282))

(declare-fun m!3515267 () Bool)

(assert (=> b!3233281 m!3515267))

(declare-fun m!3515269 () Bool)

(assert (=> b!3233282 m!3515269))

(assert (=> b!3232594 d!888585))

(declare-fun bs!543449 () Bool)

(declare-fun d!888587 () Bool)

(assert (= bs!543449 (and d!888587 b!3232605)))

(declare-fun lambda!118315 () Int)

(assert (=> bs!543449 (not (= lambda!118315 lambda!118305))))

(declare-fun b!3233368 () Bool)

(declare-fun e!2016442 () Bool)

(assert (=> b!3233368 (= e!2016442 true)))

(declare-fun b!3233367 () Bool)

(declare-fun e!2016441 () Bool)

(assert (=> b!3233367 (= e!2016441 e!2016442)))

(declare-fun b!3233366 () Bool)

(declare-fun e!2016440 () Bool)

(assert (=> b!3233366 (= e!2016440 e!2016441)))

(assert (=> d!888587 e!2016440))

(assert (= b!3233367 b!3233368))

(assert (= b!3233366 b!3233367))

(assert (= (and d!888587 ((_ is Cons!36388) rules!2135)) b!3233366))

(declare-fun order!18787 () Int)

(declare-fun order!18785 () Int)

(declare-fun dynLambda!14813 (Int Int) Int)

(declare-fun dynLambda!14814 (Int Int) Int)

(assert (=> b!3233368 (< (dynLambda!14813 order!18785 (toValue!7384 (transformation!5272 (h!41808 rules!2135)))) (dynLambda!14814 order!18787 lambda!118315))))

(declare-fun order!18789 () Int)

(declare-fun dynLambda!14815 (Int Int) Int)

(assert (=> b!3233368 (< (dynLambda!14815 order!18789 (toChars!7243 (transformation!5272 (h!41808 rules!2135)))) (dynLambda!14814 order!18787 lambda!118315))))

(assert (=> d!888587 true))

(declare-fun e!2016433 () Bool)

(assert (=> d!888587 e!2016433))

(declare-fun res!1316604 () Bool)

(assert (=> d!888587 (=> (not res!1316604) (not e!2016433))))

(declare-fun lt!1097218 () Bool)

(assert (=> d!888587 (= res!1316604 (= lt!1097218 (forall!7486 (list!12995 lt!1096919) lambda!118315)))))

(declare-fun forall!7488 (BalanceConc!21454 Int) Bool)

(assert (=> d!888587 (= lt!1097218 (forall!7488 lt!1096919 lambda!118315))))

(assert (=> d!888587 (not (isEmpty!20476 rules!2135))))

(assert (=> d!888587 (= (rulesProduceEachTokenIndividually!1312 thiss!18206 rules!2135 lt!1096919) lt!1097218)))

(declare-fun b!3233357 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1745 (LexerInterface!4861 List!36512 List!36513) Bool)

(assert (=> b!3233357 (= e!2016433 (= lt!1097218 (rulesProduceEachTokenIndividuallyList!1745 thiss!18206 rules!2135 (list!12995 lt!1096919))))))

(assert (= (and d!888587 res!1316604) b!3233357))

(assert (=> d!888587 m!3514523))

(assert (=> d!888587 m!3514523))

(declare-fun m!3515295 () Bool)

(assert (=> d!888587 m!3515295))

(declare-fun m!3515297 () Bool)

(assert (=> d!888587 m!3515297))

(assert (=> d!888587 m!3514261))

(assert (=> b!3233357 m!3514523))

(assert (=> b!3233357 m!3514523))

(declare-fun m!3515299 () Bool)

(assert (=> b!3233357 m!3515299))

(assert (=> b!3232593 d!888587))

(declare-fun d!888595 () Bool)

(declare-fun fromListB!1572 (List!36513) BalanceConc!21454)

(assert (=> d!888595 (= (seqFromList!3607 tokens!494) (fromListB!1572 tokens!494))))

(declare-fun bs!543450 () Bool)

(assert (= bs!543450 d!888595))

(declare-fun m!3515301 () Bool)

(assert (=> bs!543450 m!3515301))

(assert (=> b!3232593 d!888595))

(declare-fun d!888597 () Bool)

(declare-fun res!1316607 () Bool)

(declare-fun e!2016445 () Bool)

(assert (=> d!888597 (=> (not res!1316607) (not e!2016445))))

(declare-fun rulesValid!1933 (LexerInterface!4861 List!36512) Bool)

(assert (=> d!888597 (= res!1316607 (rulesValid!1933 thiss!18206 rules!2135))))

(assert (=> d!888597 (= (rulesInvariant!4258 thiss!18206 rules!2135) e!2016445)))

(declare-fun b!3233373 () Bool)

(declare-datatypes ((List!36515 0))(
  ( (Nil!36391) (Cons!36391 (h!41811 String!40844) (t!241958 List!36515)) )
))
(declare-fun noDuplicateTag!1929 (LexerInterface!4861 List!36512 List!36515) Bool)

(assert (=> b!3233373 (= e!2016445 (noDuplicateTag!1929 thiss!18206 rules!2135 Nil!36391))))

(assert (= (and d!888597 res!1316607) b!3233373))

(declare-fun m!3515303 () Bool)

(assert (=> d!888597 m!3515303))

(declare-fun m!3515305 () Bool)

(assert (=> b!3233373 m!3515305))

(assert (=> b!3232592 d!888597))

(declare-fun b!3233378 () Bool)

(declare-fun e!2016448 () Bool)

(declare-fun tp_is_empty!17333 () Bool)

(declare-fun tp!1018869 () Bool)

(assert (=> b!3233378 (= e!2016448 (and tp_is_empty!17333 tp!1018869))))

(assert (=> b!3232613 (= tp!1018799 e!2016448)))

(assert (= (and b!3232613 ((_ is Cons!36387) (originalCharacters!5986 (h!41809 tokens!494)))) b!3233378))

(declare-fun b!3233379 () Bool)

(declare-fun e!2016449 () Bool)

(declare-fun tp!1018870 () Bool)

(assert (=> b!3233379 (= e!2016449 (and tp_is_empty!17333 tp!1018870))))

(assert (=> b!3232596 (= tp!1018798 e!2016449)))

(assert (= (and b!3232596 ((_ is Cons!36387) (originalCharacters!5986 separatorToken!241))) b!3233379))

(declare-fun b!3233393 () Bool)

(declare-fun b_free!86269 () Bool)

(declare-fun b_next!86973 () Bool)

(assert (=> b!3233393 (= b_free!86269 (not b_next!86973))))

(declare-fun t!241946 () Bool)

(declare-fun tb!160351 () Bool)

(assert (=> (and b!3233393 (= (toValue!7384 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241946) tb!160351))

(declare-fun result!202932 () Bool)

(assert (= result!202932 result!202886))

(assert (=> d!888469 t!241946))

(declare-fun b_and!216711 () Bool)

(declare-fun tp!1018883 () Bool)

(assert (=> b!3233393 (= tp!1018883 (and (=> t!241946 result!202932) b_and!216711))))

(declare-fun b_free!86271 () Bool)

(declare-fun b_next!86975 () Bool)

(assert (=> b!3233393 (= b_free!86271 (not b_next!86975))))

(declare-fun t!241948 () Bool)

(declare-fun tb!160353 () Bool)

(assert (=> (and b!3233393 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241948) tb!160353))

(declare-fun result!202934 () Bool)

(assert (= result!202934 result!202864))

(assert (=> d!888359 t!241948))

(declare-fun tb!160355 () Bool)

(declare-fun t!241950 () Bool)

(assert (=> (and b!3233393 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241)))) t!241950) tb!160355))

(declare-fun result!202936 () Bool)

(assert (= result!202936 result!202880))

(assert (=> d!888391 t!241950))

(assert (=> b!3232786 t!241950))

(assert (=> b!3232788 t!241948))

(declare-fun b_and!216713 () Bool)

(declare-fun tp!1018881 () Bool)

(assert (=> b!3233393 (= tp!1018881 (and (=> t!241948 result!202934) (=> t!241950 result!202936) b_and!216713))))

(declare-fun e!2016463 () Bool)

(assert (=> b!3233393 (= e!2016463 (and tp!1018883 tp!1018881))))

(declare-fun tp!1018885 () Bool)

(declare-fun b!3233391 () Bool)

(declare-fun e!2016466 () Bool)

(declare-fun e!2016465 () Bool)

(assert (=> b!3233391 (= e!2016465 (and (inv!21 (value!170712 (h!41809 (t!241882 tokens!494)))) e!2016466 tp!1018885))))

(declare-fun tp!1018882 () Bool)

(declare-fun e!2016464 () Bool)

(declare-fun b!3233390 () Bool)

(assert (=> b!3233390 (= e!2016464 (and (inv!49284 (h!41809 (t!241882 tokens!494))) e!2016465 tp!1018882))))

(assert (=> b!3232606 (= tp!1018795 e!2016464)))

(declare-fun tp!1018884 () Bool)

(declare-fun b!3233392 () Bool)

(assert (=> b!3233392 (= e!2016466 (and tp!1018884 (inv!49281 (tag!5804 (rule!7730 (h!41809 (t!241882 tokens!494))))) (inv!49285 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) e!2016463))))

(assert (= b!3233392 b!3233393))

(assert (= b!3233391 b!3233392))

(assert (= b!3233390 b!3233391))

(assert (= (and b!3232606 ((_ is Cons!36389) (t!241882 tokens!494))) b!3233390))

(declare-fun m!3515307 () Bool)

(assert (=> b!3233391 m!3515307))

(declare-fun m!3515309 () Bool)

(assert (=> b!3233390 m!3515309))

(declare-fun m!3515311 () Bool)

(assert (=> b!3233392 m!3515311))

(declare-fun m!3515313 () Bool)

(assert (=> b!3233392 m!3515313))

(declare-fun e!2016470 () Bool)

(assert (=> b!3232599 (= tp!1018797 e!2016470)))

(declare-fun b!3233405 () Bool)

(declare-fun tp!1018900 () Bool)

(declare-fun tp!1018899 () Bool)

(assert (=> b!3233405 (= e!2016470 (and tp!1018900 tp!1018899))))

(declare-fun b!3233404 () Bool)

(assert (=> b!3233404 (= e!2016470 tp_is_empty!17333)))

(declare-fun b!3233407 () Bool)

(declare-fun tp!1018896 () Bool)

(declare-fun tp!1018898 () Bool)

(assert (=> b!3233407 (= e!2016470 (and tp!1018896 tp!1018898))))

(declare-fun b!3233406 () Bool)

(declare-fun tp!1018897 () Bool)

(assert (=> b!3233406 (= e!2016470 tp!1018897)))

(assert (= (and b!3232599 ((_ is ElementMatch!10031) (regex!5272 (rule!7730 separatorToken!241)))) b!3233404))

(assert (= (and b!3232599 ((_ is Concat!15533) (regex!5272 (rule!7730 separatorToken!241)))) b!3233405))

(assert (= (and b!3232599 ((_ is Star!10031) (regex!5272 (rule!7730 separatorToken!241)))) b!3233406))

(assert (= (and b!3232599 ((_ is Union!10031) (regex!5272 (rule!7730 separatorToken!241)))) b!3233407))

(declare-fun e!2016471 () Bool)

(assert (=> b!3232620 (= tp!1018793 e!2016471)))

(declare-fun b!3233409 () Bool)

(declare-fun tp!1018905 () Bool)

(declare-fun tp!1018904 () Bool)

(assert (=> b!3233409 (= e!2016471 (and tp!1018905 tp!1018904))))

(declare-fun b!3233408 () Bool)

(assert (=> b!3233408 (= e!2016471 tp_is_empty!17333)))

(declare-fun b!3233411 () Bool)

(declare-fun tp!1018901 () Bool)

(declare-fun tp!1018903 () Bool)

(assert (=> b!3233411 (= e!2016471 (and tp!1018901 tp!1018903))))

(declare-fun b!3233410 () Bool)

(declare-fun tp!1018902 () Bool)

(assert (=> b!3233410 (= e!2016471 tp!1018902)))

(assert (= (and b!3232620 ((_ is ElementMatch!10031) (regex!5272 (h!41808 rules!2135)))) b!3233408))

(assert (= (and b!3232620 ((_ is Concat!15533) (regex!5272 (h!41808 rules!2135)))) b!3233409))

(assert (= (and b!3232620 ((_ is Star!10031) (regex!5272 (h!41808 rules!2135)))) b!3233410))

(assert (= (and b!3232620 ((_ is Union!10031) (regex!5272 (h!41808 rules!2135)))) b!3233411))

(declare-fun b!3233422 () Bool)

(declare-fun b_free!86273 () Bool)

(declare-fun b_next!86977 () Bool)

(assert (=> b!3233422 (= b_free!86273 (not b_next!86977))))

(declare-fun t!241952 () Bool)

(declare-fun tb!160357 () Bool)

(assert (=> (and b!3233422 (= (toValue!7384 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241952) tb!160357))

(declare-fun result!202942 () Bool)

(assert (= result!202942 result!202886))

(assert (=> d!888469 t!241952))

(declare-fun b_and!216715 () Bool)

(declare-fun tp!1018915 () Bool)

(assert (=> b!3233422 (= tp!1018915 (and (=> t!241952 result!202942) b_and!216715))))

(declare-fun b_free!86275 () Bool)

(declare-fun b_next!86979 () Bool)

(assert (=> b!3233422 (= b_free!86275 (not b_next!86979))))

(declare-fun t!241954 () Bool)

(declare-fun tb!160359 () Bool)

(assert (=> (and b!3233422 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494))))) t!241954) tb!160359))

(declare-fun result!202944 () Bool)

(assert (= result!202944 result!202864))

(assert (=> d!888359 t!241954))

(declare-fun tb!160361 () Bool)

(declare-fun t!241956 () Bool)

(assert (=> (and b!3233422 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241)))) t!241956) tb!160361))

(declare-fun result!202946 () Bool)

(assert (= result!202946 result!202880))

(assert (=> d!888391 t!241956))

(assert (=> b!3232786 t!241956))

(assert (=> b!3232788 t!241954))

(declare-fun b_and!216717 () Bool)

(declare-fun tp!1018914 () Bool)

(assert (=> b!3233422 (= tp!1018914 (and (=> t!241954 result!202944) (=> t!241956 result!202946) b_and!216717))))

(declare-fun e!2016480 () Bool)

(assert (=> b!3233422 (= e!2016480 (and tp!1018915 tp!1018914))))

(declare-fun b!3233421 () Bool)

(declare-fun tp!1018917 () Bool)

(declare-fun e!2016481 () Bool)

(assert (=> b!3233421 (= e!2016481 (and tp!1018917 (inv!49281 (tag!5804 (h!41808 (t!241881 rules!2135)))) (inv!49285 (transformation!5272 (h!41808 (t!241881 rules!2135)))) e!2016480))))

(declare-fun b!3233420 () Bool)

(declare-fun e!2016483 () Bool)

(declare-fun tp!1018916 () Bool)

(assert (=> b!3233420 (= e!2016483 (and e!2016481 tp!1018916))))

(assert (=> b!3232614 (= tp!1018790 e!2016483)))

(assert (= b!3233421 b!3233422))

(assert (= b!3233420 b!3233421))

(assert (= (and b!3232614 ((_ is Cons!36388) (t!241881 rules!2135))) b!3233420))

(declare-fun m!3515315 () Bool)

(assert (=> b!3233421 m!3515315))

(declare-fun m!3515317 () Bool)

(assert (=> b!3233421 m!3515317))

(declare-fun e!2016484 () Bool)

(assert (=> b!3232619 (= tp!1018791 e!2016484)))

(declare-fun b!3233424 () Bool)

(declare-fun tp!1018922 () Bool)

(declare-fun tp!1018921 () Bool)

(assert (=> b!3233424 (= e!2016484 (and tp!1018922 tp!1018921))))

(declare-fun b!3233423 () Bool)

(assert (=> b!3233423 (= e!2016484 tp_is_empty!17333)))

(declare-fun b!3233426 () Bool)

(declare-fun tp!1018918 () Bool)

(declare-fun tp!1018920 () Bool)

(assert (=> b!3233426 (= e!2016484 (and tp!1018918 tp!1018920))))

(declare-fun b!3233425 () Bool)

(declare-fun tp!1018919 () Bool)

(assert (=> b!3233425 (= e!2016484 tp!1018919)))

(assert (= (and b!3232619 ((_ is ElementMatch!10031) (regex!5272 (rule!7730 (h!41809 tokens!494))))) b!3233423))

(assert (= (and b!3232619 ((_ is Concat!15533) (regex!5272 (rule!7730 (h!41809 tokens!494))))) b!3233424))

(assert (= (and b!3232619 ((_ is Star!10031) (regex!5272 (rule!7730 (h!41809 tokens!494))))) b!3233425))

(assert (= (and b!3232619 ((_ is Union!10031) (regex!5272 (rule!7730 (h!41809 tokens!494))))) b!3233426))

(declare-fun b_lambda!89097 () Bool)

(assert (= b_lambda!89065 (or (and b!3232602 b_free!86259 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3233393 b_free!86271 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3232597 b_free!86251) (and b!3232591 b_free!86255 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3233422 b_free!86275 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) b_lambda!89097)))

(declare-fun b_lambda!89099 () Bool)

(assert (= b_lambda!89063 (or b!3232605 b_lambda!89099)))

(declare-fun bs!543451 () Bool)

(declare-fun d!888599 () Bool)

(assert (= bs!543451 (and d!888599 b!3232605)))

(assert (=> bs!543451 (= (dynLambda!14807 lambda!118305 (h!41809 tokens!494)) (not (isSeparator!5272 (rule!7730 (h!41809 tokens!494)))))))

(assert (=> d!888405 d!888599))

(declare-fun b_lambda!89101 () Bool)

(assert (= b_lambda!89055 (or (and b!3232597 b_free!86251 (= (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3233393 b_free!86271 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3233422 b_free!86275 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232591 b_free!86255 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232602 b_free!86259) b_lambda!89101)))

(declare-fun b_lambda!89103 () Bool)

(assert (= b_lambda!89061 (or (and b!3232602 b_free!86259 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3233393 b_free!86271 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3232597 b_free!86251) (and b!3232591 b_free!86255 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) (and b!3233422 b_free!86275 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))))) b_lambda!89103)))

(declare-fun b_lambda!89105 () Bool)

(assert (= b_lambda!89069 (or b!3232605 b_lambda!89105)))

(assert (=> b!3232800 d!888599))

(declare-fun b_lambda!89107 () Bool)

(assert (= b_lambda!89071 (or (and b!3232602 b_free!86257) (and b!3233393 b_free!86269 (= (toValue!7384 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3233422 b_free!86273 (= (toValue!7384 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232597 b_free!86249 (= (toValue!7384 (transformation!5272 (rule!7730 separatorToken!241))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232591 b_free!86253 (= (toValue!7384 (transformation!5272 (h!41808 rules!2135))) (toValue!7384 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) b_lambda!89107)))

(declare-fun b_lambda!89109 () Bool)

(assert (= b_lambda!89067 (or (and b!3232597 b_free!86251 (= (toChars!7243 (transformation!5272 (rule!7730 separatorToken!241))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3233393 b_free!86271 (= (toChars!7243 (transformation!5272 (rule!7730 (h!41809 (t!241882 tokens!494))))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3233422 b_free!86275 (= (toChars!7243 (transformation!5272 (h!41808 (t!241881 rules!2135)))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232591 b_free!86255 (= (toChars!7243 (transformation!5272 (h!41808 rules!2135))) (toChars!7243 (transformation!5272 (rule!7730 (h!41809 tokens!494)))))) (and b!3232602 b_free!86259) b_lambda!89109)))

(check-sat (not b!3232683) (not b_lambda!89099) (not b!3232742) (not b!3233062) b_and!216717 (not b!3233390) (not bm!233408) (not b!3232927) (not b!3233262) (not tb!160321) (not d!888575) (not b!3233426) (not b!3232801) (not d!888391) (not b!3233392) (not b!3233276) (not b!3233263) (not d!888509) (not d!888595) (not d!888393) (not b!3232768) (not b!3232767) (not b!3233208) (not b!3233366) (not b!3233410) (not b!3233059) (not b!3233207) (not d!888443) (not b!3233421) (not b!3233271) (not b_next!86979) (not b!3233213) (not bm!233409) (not b!3232971) (not d!888421) (not b!3233079) (not b!3233282) (not b_next!86961) b_and!216715 (not d!888573) (not d!888387) (not b!3233420) (not b!3232919) (not b!3233373) (not d!888581) (not b!3233255) (not b!3233265) (not b!3233154) (not b!3233259) (not b!3233274) (not b!3233078) (not b!3233275) (not bm!233413) (not b!3232891) (not b!3233254) (not bm!233395) (not b!3232787) (not b_next!86955) (not b!3232979) (not b!3233214) (not bm!233394) (not b_lambda!89109) (not b!3233268) (not d!888463) (not b!3232980) b_and!216675 b_and!216671 (not b!3233260) (not d!888385) (not b!3233212) (not bm!233405) (not b!3233225) (not d!888357) (not b!3232973) (not b!3232934) (not b!3233406) (not b!3233224) (not d!888521) (not b!3233206) (not b!3233211) (not b!3233258) (not d!888459) (not b!3232884) (not b!3232924) (not b!3233056) (not d!888505) (not d!888565) (not d!888517) (not b_next!86957) tp_is_empty!17333 (not d!888499) (not b!3233076) (not b!3232972) (not b!3233058) b_and!216669 (not b!3232745) (not d!888389) (not d!888545) (not d!888453) (not b!3232970) (not b!3233424) (not b!3232740) (not d!888577) (not b!3232978) (not tb!160315) (not b!3233264) (not b!3232781) (not bm!233393) (not b!3232788) (not b!3233269) (not b!3233022) (not b_lambda!89101) b_and!216677 (not d!888363) b_and!216711 (not b_next!86977) (not b_lambda!89097) (not d!888365) (not d!888465) (not b!3233405) (not d!888515) (not b_next!86959) (not d!888415) (not b_next!86973) (not d!888403) (not d!888587) (not d!888597) (not b!3233261) (not d!888497) b_and!216713 (not b!3232975) (not b!3233270) b_and!216667 (not b!3233057) (not b!3232986) (not b!3232918) (not b!3232750) (not d!888471) (not bm!233399) (not b!3233217) (not b!3233267) (not b!3232925) b_and!216673 (not d!888409) (not d!888405) (not b!3233077) (not b!3232777) (not d!888411) (not b!3233281) (not d!888543) (not bm!233412) (not b!3232974) (not b!3232789) (not bm!233407) (not b!3233082) (not b!3232770) (not d!888361) (not b!3232976) (not b!3233226) (not d!888523) (not b!3233391) (not d!888583) (not b!3233256) (not b!3233273) (not b!3232890) (not b!3233407) (not b!3232780) (not b!3233379) (not b!3233409) (not b!3233425) (not b!3233153) (not bm!233398) (not b_next!86963) (not b!3232921) (not d!888399) (not d!888359) (not d!888579) (not b!3233152) (not b_next!86953) (not tb!160303) (not d!888445) (not b!3232776) (not b!3233150) (not d!888495) (not b!3233083) (not b_lambda!89105) (not b_next!86975) (not b!3233063) (not b!3233024) (not b!3233218) (not b!3233357) (not b!3233378) (not b!3233023) (not d!888381) (not b!3233411) (not b!3232786) (not b_lambda!89103) (not b_lambda!89107))
(check-sat b_and!216717 (not b_next!86979) (not b_next!86955) (not b_next!86957) b_and!216669 b_and!216713 b_and!216667 b_and!216673 (not b_next!86963) (not b_next!86953) (not b_next!86975) (not b_next!86961) b_and!216715 b_and!216675 b_and!216671 b_and!216677 b_and!216711 (not b_next!86977) (not b_next!86959) (not b_next!86973))
