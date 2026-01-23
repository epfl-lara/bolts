; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316606 () Bool)

(assert start!316606)

(declare-fun b!3393913 () Bool)

(declare-fun b_free!88721 () Bool)

(declare-fun b_next!89425 () Bool)

(assert (=> b!3393913 (= b_free!88721 (not b_next!89425))))

(declare-fun tp!1059444 () Bool)

(declare-fun b_and!236467 () Bool)

(assert (=> b!3393913 (= tp!1059444 b_and!236467)))

(declare-fun b_free!88723 () Bool)

(declare-fun b_next!89427 () Bool)

(assert (=> b!3393913 (= b_free!88723 (not b_next!89427))))

(declare-fun tp!1059442 () Bool)

(declare-fun b_and!236469 () Bool)

(assert (=> b!3393913 (= tp!1059442 b_and!236469)))

(declare-fun b!3393896 () Bool)

(declare-fun b_free!88725 () Bool)

(declare-fun b_next!89429 () Bool)

(assert (=> b!3393896 (= b_free!88725 (not b_next!89429))))

(declare-fun tp!1059449 () Bool)

(declare-fun b_and!236471 () Bool)

(assert (=> b!3393896 (= tp!1059449 b_and!236471)))

(declare-fun b_free!88727 () Bool)

(declare-fun b_next!89431 () Bool)

(assert (=> b!3393896 (= b_free!88727 (not b_next!89431))))

(declare-fun tp!1059451 () Bool)

(declare-fun b_and!236473 () Bool)

(assert (=> b!3393896 (= tp!1059451 b_and!236473)))

(declare-fun b!3393915 () Bool)

(declare-fun b_free!88729 () Bool)

(declare-fun b_next!89433 () Bool)

(assert (=> b!3393915 (= b_free!88729 (not b_next!89433))))

(declare-fun tp!1059443 () Bool)

(declare-fun b_and!236475 () Bool)

(assert (=> b!3393915 (= tp!1059443 b_and!236475)))

(declare-fun b_free!88731 () Bool)

(declare-fun b_next!89435 () Bool)

(assert (=> b!3393915 (= b_free!88731 (not b_next!89435))))

(declare-fun tp!1059446 () Bool)

(declare-fun b_and!236477 () Bool)

(assert (=> b!3393915 (= tp!1059446 b_and!236477)))

(declare-fun b!3393883 () Bool)

(declare-datatypes ((Unit!52071 0))(
  ( (Unit!52072) )
))
(declare-fun e!2106505 () Unit!52071)

(declare-fun Unit!52073 () Unit!52071)

(assert (=> b!3393883 (= e!2106505 Unit!52073)))

(declare-datatypes ((C!20468 0))(
  ( (C!20469 (val!12282 Int)) )
))
(declare-datatypes ((List!37026 0))(
  ( (Nil!36902) (Cons!36902 (h!42322 C!20468) (t!265053 List!37026)) )
))
(declare-fun lt!1153381 () List!37026)

(declare-fun lt!1153361 () C!20468)

(declare-datatypes ((String!41393 0))(
  ( (String!41394 (value!173821 String)) )
))
(declare-datatypes ((Regex!10141 0))(
  ( (ElementMatch!10141 (c!578596 C!20468)) (Concat!15753 (regOne!20794 Regex!10141) (regTwo!20794 Regex!10141)) (EmptyExpr!10141) (Star!10141 (reg!10470 Regex!10141)) (EmptyLang!10141) (Union!10141 (regOne!20795 Regex!10141) (regTwo!20795 Regex!10141)) )
))
(declare-datatypes ((List!37027 0))(
  ( (Nil!36903) (Cons!36903 (h!42323 (_ BitVec 16)) (t!265054 List!37027)) )
))
(declare-datatypes ((TokenValue!5612 0))(
  ( (FloatLiteralValue!11224 (text!39729 List!37027)) (TokenValueExt!5611 (__x!23441 Int)) (Broken!28060 (value!173822 List!37027)) (Object!5735) (End!5612) (Def!5612) (Underscore!5612) (Match!5612) (Else!5612) (Error!5612) (Case!5612) (If!5612) (Extends!5612) (Abstract!5612) (Class!5612) (Val!5612) (DelimiterValue!11224 (del!5672 List!37027)) (KeywordValue!5618 (value!173823 List!37027)) (CommentValue!11224 (value!173824 List!37027)) (WhitespaceValue!11224 (value!173825 List!37027)) (IndentationValue!5612 (value!173826 List!37027)) (String!41395) (Int32!5612) (Broken!28061 (value!173827 List!37027)) (Boolean!5613) (Unit!52074) (OperatorValue!5615 (op!5672 List!37027)) (IdentifierValue!11224 (value!173828 List!37027)) (IdentifierValue!11225 (value!173829 List!37027)) (WhitespaceValue!11225 (value!173830 List!37027)) (True!11224) (False!11224) (Broken!28062 (value!173831 List!37027)) (Broken!28063 (value!173832 List!37027)) (True!11225) (RightBrace!5612) (RightBracket!5612) (Colon!5612) (Null!5612) (Comma!5612) (LeftBracket!5612) (False!11225) (LeftBrace!5612) (ImaginaryLiteralValue!5612 (text!39730 List!37027)) (StringLiteralValue!16836 (value!173833 List!37027)) (EOFValue!5612 (value!173834 List!37027)) (IdentValue!5612 (value!173835 List!37027)) (DelimiterValue!11225 (value!173836 List!37027)) (DedentValue!5612 (value!173837 List!37027)) (NewLineValue!5612 (value!173838 List!37027)) (IntegerValue!16836 (value!173839 (_ BitVec 32)) (text!39731 List!37027)) (IntegerValue!16837 (value!173840 Int) (text!39732 List!37027)) (Times!5612) (Or!5612) (Equal!5612) (Minus!5612) (Broken!28064 (value!173841 List!37027)) (And!5612) (Div!5612) (LessEqual!5612) (Mod!5612) (Concat!15754) (Not!5612) (Plus!5612) (SpaceValue!5612 (value!173842 List!37027)) (IntegerValue!16838 (value!173843 Int) (text!39733 List!37027)) (StringLiteralValue!16837 (text!39734 List!37027)) (FloatLiteralValue!11225 (text!39735 List!37027)) (BytesLiteralValue!5612 (value!173844 List!37027)) (CommentValue!11225 (value!173845 List!37027)) (StringLiteralValue!16838 (value!173846 List!37027)) (ErrorTokenValue!5612 (msg!5673 List!37027)) )
))
(declare-datatypes ((IArray!22283 0))(
  ( (IArray!22284 (innerList!11199 List!37026)) )
))
(declare-datatypes ((Conc!11139 0))(
  ( (Node!11139 (left!28772 Conc!11139) (right!29102 Conc!11139) (csize!22508 Int) (cheight!11350 Int)) (Leaf!17441 (xs!14297 IArray!22283) (csize!22509 Int)) (Empty!11139) )
))
(declare-datatypes ((BalanceConc!21892 0))(
  ( (BalanceConc!21893 (c!578597 Conc!11139)) )
))
(declare-datatypes ((TokenValueInjection!10652 0))(
  ( (TokenValueInjection!10653 (toValue!7578 Int) (toChars!7437 Int)) )
))
(declare-datatypes ((Rule!10564 0))(
  ( (Rule!10565 (regex!5382 Regex!10141) (tag!5964 String!41393) (isSeparator!5382 Bool) (transformation!5382 TokenValueInjection!10652)) )
))
(declare-datatypes ((Token!10130 0))(
  ( (Token!10131 (value!173847 TokenValue!5612) (rule!7940 Rule!10564) (size!27940 Int) (originalCharacters!6096 List!37026)) )
))
(declare-fun separatorToken!241 () Token!10130)

(declare-fun lt!1153365 () Unit!52071)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!472 (Regex!10141 List!37026 C!20468) Unit!52071)

(assert (=> b!3393883 (= lt!1153365 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!472 (regex!5382 (rule!7940 separatorToken!241)) lt!1153381 lt!1153361))))

(declare-fun res!1372852 () Bool)

(declare-fun matchR!4733 (Regex!10141 List!37026) Bool)

(assert (=> b!3393883 (= res!1372852 (not (matchR!4733 (regex!5382 (rule!7940 separatorToken!241)) lt!1153381)))))

(declare-fun e!2106495 () Bool)

(assert (=> b!3393883 (=> (not res!1372852) (not e!2106495))))

(assert (=> b!3393883 e!2106495))

(declare-fun b!3393884 () Bool)

(assert (=> b!3393884 (= e!2106495 false)))

(declare-fun b!3393885 () Bool)

(declare-fun e!2106512 () Bool)

(declare-fun tp!1059441 () Bool)

(declare-fun e!2106515 () Bool)

(declare-datatypes ((List!37028 0))(
  ( (Nil!36904) (Cons!36904 (h!42324 Rule!10564) (t!265055 List!37028)) )
))
(declare-fun rules!2135 () List!37028)

(declare-fun inv!49994 (String!41393) Bool)

(declare-fun inv!49997 (TokenValueInjection!10652) Bool)

(assert (=> b!3393885 (= e!2106515 (and tp!1059441 (inv!49994 (tag!5964 (h!42324 rules!2135))) (inv!49997 (transformation!5382 (h!42324 rules!2135))) e!2106512))))

(declare-fun b!3393886 () Bool)

(declare-fun e!2106508 () Bool)

(declare-fun e!2106493 () Bool)

(assert (=> b!3393886 (= e!2106508 e!2106493)))

(declare-fun res!1372868 () Bool)

(assert (=> b!3393886 (=> (not res!1372868) (not e!2106493))))

(declare-fun lt!1153362 () Rule!10564)

(assert (=> b!3393886 (= res!1372868 (matchR!4733 (regex!5382 lt!1153362) lt!1153381))))

(declare-datatypes ((Option!7417 0))(
  ( (None!7416) (Some!7416 (v!36558 Rule!10564)) )
))
(declare-fun lt!1153372 () Option!7417)

(declare-fun get!11789 (Option!7417) Rule!10564)

(assert (=> b!3393886 (= lt!1153362 (get!11789 lt!1153372))))

(declare-fun tp!1059447 () Bool)

(declare-fun e!2106509 () Bool)

(declare-fun e!2106520 () Bool)

(declare-fun b!3393887 () Bool)

(assert (=> b!3393887 (= e!2106509 (and tp!1059447 (inv!49994 (tag!5964 (rule!7940 separatorToken!241))) (inv!49997 (transformation!5382 (rule!7940 separatorToken!241))) e!2106520))))

(declare-fun res!1372864 () Bool)

(declare-fun e!2106499 () Bool)

(assert (=> start!316606 (=> (not res!1372864) (not e!2106499))))

(declare-datatypes ((LexerInterface!4971 0))(
  ( (LexerInterfaceExt!4968 (__x!23442 Int)) (Lexer!4969) )
))
(declare-fun thiss!18206 () LexerInterface!4971)

(get-info :version)

(assert (=> start!316606 (= res!1372864 ((_ is Lexer!4969) thiss!18206))))

(assert (=> start!316606 e!2106499))

(assert (=> start!316606 true))

(declare-fun e!2106496 () Bool)

(assert (=> start!316606 e!2106496))

(declare-fun e!2106517 () Bool)

(declare-fun inv!49998 (Token!10130) Bool)

(assert (=> start!316606 (and (inv!49998 separatorToken!241) e!2106517)))

(declare-fun e!2106497 () Bool)

(assert (=> start!316606 e!2106497))

(declare-fun b!3393888 () Bool)

(declare-fun res!1372857 () Bool)

(assert (=> b!3393888 (=> (not res!1372857) (not e!2106499))))

(declare-fun rulesInvariant!4368 (LexerInterface!4971 List!37028) Bool)

(assert (=> b!3393888 (= res!1372857 (rulesInvariant!4368 thiss!18206 rules!2135))))

(declare-fun b!3393889 () Bool)

(declare-fun e!2106503 () Bool)

(declare-fun e!2106524 () Bool)

(assert (=> b!3393889 (= e!2106503 e!2106524)))

(declare-fun res!1372873 () Bool)

(assert (=> b!3393889 (=> res!1372873 e!2106524)))

(declare-fun lt!1153368 () BalanceConc!21892)

(declare-fun lt!1153382 () List!37026)

(declare-fun list!13365 (BalanceConc!21892) List!37026)

(declare-fun ++!9035 (List!37026 List!37026) List!37026)

(assert (=> b!3393889 (= res!1372873 (not (= (list!13365 lt!1153368) (++!9035 lt!1153382 lt!1153381))))))

(declare-fun charsOf!3396 (Token!10130) BalanceConc!21892)

(assert (=> b!3393889 (= lt!1153381 (list!13365 (charsOf!3396 separatorToken!241)))))

(declare-datatypes ((List!37029 0))(
  ( (Nil!36905) (Cons!36905 (h!42325 Token!10130) (t!265056 List!37029)) )
))
(declare-datatypes ((IArray!22285 0))(
  ( (IArray!22286 (innerList!11200 List!37029)) )
))
(declare-datatypes ((Conc!11140 0))(
  ( (Node!11140 (left!28773 Conc!11140) (right!29103 Conc!11140) (csize!22510 Int) (cheight!11351 Int)) (Leaf!17442 (xs!14298 IArray!22285) (csize!22511 Int)) (Empty!11140) )
))
(declare-datatypes ((BalanceConc!21894 0))(
  ( (BalanceConc!21895 (c!578598 Conc!11140)) )
))
(declare-fun lt!1153371 () BalanceConc!21894)

(declare-fun printWithSeparatorToken!162 (LexerInterface!4971 BalanceConc!21894 Token!10130) BalanceConc!21892)

(assert (=> b!3393889 (= lt!1153368 (printWithSeparatorToken!162 thiss!18206 lt!1153371 separatorToken!241))))

(declare-fun b!3393890 () Bool)

(declare-fun e!2106502 () Bool)

(assert (=> b!3393890 (= e!2106524 e!2106502)))

(declare-fun res!1372858 () Bool)

(assert (=> b!3393890 (=> res!1372858 e!2106502)))

(declare-fun lt!1153374 () Bool)

(assert (=> b!3393890 (= res!1372858 lt!1153374)))

(declare-fun lt!1153385 () Unit!52071)

(assert (=> b!3393890 (= lt!1153385 e!2106505)))

(declare-fun c!578595 () Bool)

(assert (=> b!3393890 (= c!578595 lt!1153374)))

(declare-fun contains!6770 (List!37026 C!20468) Bool)

(declare-fun usedCharacters!638 (Regex!10141) List!37026)

(assert (=> b!3393890 (= lt!1153374 (not (contains!6770 (usedCharacters!638 (regex!5382 (rule!7940 separatorToken!241))) lt!1153361)))))

(declare-fun head!7239 (List!37026) C!20468)

(assert (=> b!3393890 (= lt!1153361 (head!7239 lt!1153381))))

(declare-fun tokens!494 () List!37029)

(declare-fun lt!1153383 () BalanceConc!21892)

(declare-datatypes ((tuple2!36520 0))(
  ( (tuple2!36521 (_1!21394 Token!10130) (_2!21394 List!37026)) )
))
(declare-datatypes ((Option!7418 0))(
  ( (None!7417) (Some!7417 (v!36559 tuple2!36520)) )
))
(declare-fun maxPrefixOneRule!1694 (LexerInterface!4971 Rule!10564 List!37026) Option!7418)

(declare-fun apply!8601 (TokenValueInjection!10652 BalanceConc!21892) TokenValue!5612)

(declare-fun size!27941 (List!37026) Int)

(assert (=> b!3393890 (= (maxPrefixOneRule!1694 thiss!18206 (rule!7940 (h!42325 tokens!494)) lt!1153382) (Some!7417 (tuple2!36521 (Token!10131 (apply!8601 (transformation!5382 (rule!7940 (h!42325 tokens!494))) lt!1153383) (rule!7940 (h!42325 tokens!494)) (size!27941 lt!1153382) lt!1153382) Nil!36902)))))

(declare-fun lt!1153375 () Unit!52071)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!793 (LexerInterface!4971 List!37028 List!37026 List!37026 List!37026 Rule!10564) Unit!52071)

(assert (=> b!3393890 (= lt!1153375 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!793 thiss!18206 rules!2135 lt!1153382 lt!1153382 Nil!36902 (rule!7940 (h!42325 tokens!494))))))

(assert (=> b!3393890 e!2106508))

(declare-fun res!1372870 () Bool)

(assert (=> b!3393890 (=> (not res!1372870) (not e!2106508))))

(declare-fun isDefined!5729 (Option!7417) Bool)

(assert (=> b!3393890 (= res!1372870 (isDefined!5729 lt!1153372))))

(declare-fun getRuleFromTag!1037 (LexerInterface!4971 List!37028 String!41393) Option!7417)

(assert (=> b!3393890 (= lt!1153372 (getRuleFromTag!1037 thiss!18206 rules!2135 (tag!5964 (rule!7940 separatorToken!241))))))

(declare-fun lt!1153379 () Unit!52071)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1037 (LexerInterface!4971 List!37028 List!37026 Token!10130) Unit!52071)

(assert (=> b!3393890 (= lt!1153379 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1037 thiss!18206 rules!2135 lt!1153381 separatorToken!241))))

(declare-fun e!2106516 () Bool)

(assert (=> b!3393890 e!2106516))

(declare-fun res!1372866 () Bool)

(assert (=> b!3393890 (=> (not res!1372866) (not e!2106516))))

(declare-fun lt!1153369 () Option!7417)

(assert (=> b!3393890 (= res!1372866 (isDefined!5729 lt!1153369))))

(assert (=> b!3393890 (= lt!1153369 (getRuleFromTag!1037 thiss!18206 rules!2135 (tag!5964 (rule!7940 (h!42325 tokens!494)))))))

(declare-fun lt!1153386 () Unit!52071)

(assert (=> b!3393890 (= lt!1153386 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1037 thiss!18206 rules!2135 lt!1153382 (h!42325 tokens!494)))))

(declare-fun lt!1153380 () Unit!52071)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!966 (LexerInterface!4971 List!37028 List!37029 Token!10130) Unit!52071)

(assert (=> b!3393890 (= lt!1153380 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!966 thiss!18206 rules!2135 tokens!494 (h!42325 tokens!494)))))

(declare-fun isEmpty!21163 (List!37026) Bool)

(declare-fun getSuffix!1476 (List!37026 List!37026) List!37026)

(assert (=> b!3393890 (isEmpty!21163 (getSuffix!1476 lt!1153382 lt!1153382))))

(declare-fun lt!1153377 () Unit!52071)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!134 (List!37026) Unit!52071)

(assert (=> b!3393890 (= lt!1153377 (lemmaGetSuffixOnListWithItSelfIsEmpty!134 lt!1153382))))

(declare-fun tp!1059450 () Bool)

(declare-fun e!2106501 () Bool)

(declare-fun b!3393891 () Bool)

(declare-fun e!2106523 () Bool)

(declare-fun inv!21 (TokenValue!5612) Bool)

(assert (=> b!3393891 (= e!2106523 (and (inv!21 (value!173847 (h!42325 tokens!494))) e!2106501 tp!1059450))))

(declare-fun b!3393892 () Bool)

(declare-fun res!1372875 () Bool)

(declare-fun e!2106518 () Bool)

(assert (=> b!3393892 (=> res!1372875 e!2106518)))

(declare-fun rulesProduceIndividualToken!2463 (LexerInterface!4971 List!37028 Token!10130) Bool)

(assert (=> b!3393892 (= res!1372875 (not (rulesProduceIndividualToken!2463 thiss!18206 rules!2135 (h!42325 tokens!494))))))

(declare-fun b!3393893 () Bool)

(declare-fun e!2106511 () Bool)

(declare-fun e!2106522 () Bool)

(assert (=> b!3393893 (= e!2106511 e!2106522)))

(declare-fun res!1372854 () Bool)

(assert (=> b!3393893 (=> res!1372854 e!2106522)))

(declare-fun lt!1153360 () tuple2!36520)

(assert (=> b!3393893 (= res!1372854 (not (= (_1!21394 lt!1153360) (h!42325 tokens!494))))))

(declare-fun lt!1153370 () Option!7418)

(declare-fun get!11790 (Option!7418) tuple2!36520)

(assert (=> b!3393893 (= lt!1153360 (get!11790 lt!1153370))))

(declare-fun tp!1059440 () Bool)

(declare-fun b!3393894 () Bool)

(declare-fun e!2106504 () Bool)

(assert (=> b!3393894 (= e!2106501 (and tp!1059440 (inv!49994 (tag!5964 (rule!7940 (h!42325 tokens!494)))) (inv!49997 (transformation!5382 (rule!7940 (h!42325 tokens!494)))) e!2106504))))

(declare-fun tp!1059445 () Bool)

(declare-fun b!3393895 () Bool)

(assert (=> b!3393895 (= e!2106497 (and (inv!49998 (h!42325 tokens!494)) e!2106523 tp!1059445))))

(assert (=> b!3393896 (= e!2106504 (and tp!1059449 tp!1059451))))

(declare-fun b!3393897 () Bool)

(declare-fun res!1372871 () Bool)

(declare-fun e!2106513 () Bool)

(assert (=> b!3393897 (=> res!1372871 e!2106513)))

(declare-fun contains!6771 (List!37028 Rule!10564) Bool)

(assert (=> b!3393897 (= res!1372871 (not (contains!6771 rules!2135 (rule!7940 separatorToken!241))))))

(declare-fun b!3393898 () Bool)

(declare-fun res!1372861 () Bool)

(assert (=> b!3393898 (=> (not res!1372861) (not e!2106499))))

(declare-fun isEmpty!21164 (List!37028) Bool)

(assert (=> b!3393898 (= res!1372861 (not (isEmpty!21164 rules!2135)))))

(declare-fun b!3393899 () Bool)

(declare-fun tp!1059448 () Bool)

(assert (=> b!3393899 (= e!2106517 (and (inv!21 (value!173847 separatorToken!241)) e!2106509 tp!1059448))))

(declare-fun b!3393900 () Bool)

(declare-fun e!2106514 () Bool)

(assert (=> b!3393900 (= e!2106499 e!2106514)))

(declare-fun res!1372863 () Bool)

(assert (=> b!3393900 (=> (not res!1372863) (not e!2106514))))

(declare-fun rulesProduceEachTokenIndividually!1422 (LexerInterface!4971 List!37028 BalanceConc!21894) Bool)

(assert (=> b!3393900 (= res!1372863 (rulesProduceEachTokenIndividually!1422 thiss!18206 rules!2135 lt!1153371))))

(declare-fun seqFromList!3817 (List!37029) BalanceConc!21894)

(assert (=> b!3393900 (= lt!1153371 (seqFromList!3817 tokens!494))))

(declare-fun b!3393901 () Bool)

(declare-fun res!1372865 () Bool)

(assert (=> b!3393901 (=> (not res!1372865) (not e!2106514))))

(assert (=> b!3393901 (= res!1372865 (and (not ((_ is Nil!36905) tokens!494)) ((_ is Nil!36905) (t!265056 tokens!494))))))

(declare-fun b!3393902 () Bool)

(declare-fun res!1372867 () Bool)

(assert (=> b!3393902 (=> res!1372867 e!2106522)))

(assert (=> b!3393902 (= res!1372867 (not (isEmpty!21163 (_2!21394 lt!1153360))))))

(declare-fun b!3393903 () Bool)

(declare-fun Unit!52075 () Unit!52071)

(assert (=> b!3393903 (= e!2106505 Unit!52075)))

(declare-fun b!3393904 () Bool)

(declare-fun e!2106521 () Bool)

(assert (=> b!3393904 (= e!2106518 e!2106521)))

(declare-fun res!1372859 () Bool)

(assert (=> b!3393904 (=> res!1372859 e!2106521)))

(declare-fun isEmpty!21165 (BalanceConc!21894) Bool)

(declare-datatypes ((tuple2!36522 0))(
  ( (tuple2!36523 (_1!21395 BalanceConc!21894) (_2!21395 BalanceConc!21892)) )
))
(declare-fun lex!2297 (LexerInterface!4971 List!37028 BalanceConc!21892) tuple2!36522)

(assert (=> b!3393904 (= res!1372859 (isEmpty!21165 (_1!21395 (lex!2297 thiss!18206 rules!2135 lt!1153383))))))

(declare-fun seqFromList!3818 (List!37026) BalanceConc!21892)

(assert (=> b!3393904 (= lt!1153383 (seqFromList!3818 lt!1153382))))

(declare-fun b!3393905 () Bool)

(assert (=> b!3393905 (= e!2106522 (matchR!4733 (regex!5382 (rule!7940 (h!42325 tokens!494))) lt!1153382))))

(declare-fun ruleValid!1710 (LexerInterface!4971 Rule!10564) Bool)

(assert (=> b!3393905 (ruleValid!1710 thiss!18206 (rule!7940 (h!42325 tokens!494)))))

(declare-fun lt!1153363 () Unit!52071)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!938 (LexerInterface!4971 Rule!10564 List!37028) Unit!52071)

(assert (=> b!3393905 (= lt!1153363 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!938 thiss!18206 (rule!7940 (h!42325 tokens!494)) rules!2135))))

(declare-fun b!3393906 () Bool)

(declare-fun e!2106498 () Bool)

(assert (=> b!3393906 (= e!2106498 e!2106518)))

(declare-fun res!1372869 () Bool)

(assert (=> b!3393906 (=> res!1372869 e!2106518)))

(declare-fun lt!1153378 () List!37026)

(declare-fun lt!1153367 () List!37026)

(assert (=> b!3393906 (= res!1372869 (or (not (= lt!1153378 lt!1153382)) (not (= lt!1153367 lt!1153382))))))

(assert (=> b!3393906 (= lt!1153382 (list!13365 (charsOf!3396 (h!42325 tokens!494))))))

(declare-fun b!3393907 () Bool)

(assert (=> b!3393907 (= e!2106502 e!2106513)))

(declare-fun res!1372876 () Bool)

(assert (=> b!3393907 (=> res!1372876 e!2106513)))

(assert (=> b!3393907 (= res!1372876 (not (contains!6771 rules!2135 (rule!7940 (h!42325 tokens!494)))))))

(assert (=> b!3393907 (not (contains!6770 (usedCharacters!638 (regex!5382 (rule!7940 (h!42325 tokens!494)))) lt!1153361))))

(declare-fun lt!1153384 () Unit!52071)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!222 (LexerInterface!4971 List!37028 List!37028 Rule!10564 Rule!10564 C!20468) Unit!52071)

(assert (=> b!3393907 (= lt!1153384 (lemmaNonSepRuleNotContainsCharContainedInASepRule!222 thiss!18206 rules!2135 rules!2135 (rule!7940 (h!42325 tokens!494)) (rule!7940 separatorToken!241) lt!1153361))))

(declare-fun b!3393908 () Bool)

(declare-fun res!1372874 () Bool)

(assert (=> b!3393908 (=> (not res!1372874) (not e!2106514))))

(assert (=> b!3393908 (= res!1372874 (rulesProduceIndividualToken!2463 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3393909 () Bool)

(declare-fun e!2106494 () Bool)

(declare-fun lt!1153364 () Rule!10564)

(assert (=> b!3393909 (= e!2106494 (= (rule!7940 (h!42325 tokens!494)) lt!1153364))))

(declare-fun b!3393910 () Bool)

(assert (=> b!3393910 (= e!2106514 (not e!2106498))))

(declare-fun res!1372856 () Bool)

(assert (=> b!3393910 (=> res!1372856 e!2106498)))

(assert (=> b!3393910 (= res!1372856 (not (= lt!1153367 lt!1153378)))))

(declare-fun printList!1519 (LexerInterface!4971 List!37029) List!37026)

(assert (=> b!3393910 (= lt!1153378 (printList!1519 thiss!18206 (Cons!36905 (h!42325 tokens!494) Nil!36905)))))

(declare-fun lt!1153376 () BalanceConc!21892)

(assert (=> b!3393910 (= lt!1153367 (list!13365 lt!1153376))))

(declare-fun lt!1153373 () BalanceConc!21894)

(declare-fun printTailRec!1466 (LexerInterface!4971 BalanceConc!21894 Int BalanceConc!21892) BalanceConc!21892)

(assert (=> b!3393910 (= lt!1153376 (printTailRec!1466 thiss!18206 lt!1153373 0 (BalanceConc!21893 Empty!11139)))))

(declare-fun print!2036 (LexerInterface!4971 BalanceConc!21894) BalanceConc!21892)

(assert (=> b!3393910 (= lt!1153376 (print!2036 thiss!18206 lt!1153373))))

(declare-fun singletonSeq!2478 (Token!10130) BalanceConc!21894)

(assert (=> b!3393910 (= lt!1153373 (singletonSeq!2478 (h!42325 tokens!494)))))

(declare-fun b!3393911 () Bool)

(assert (=> b!3393911 (= e!2106493 (= (rule!7940 separatorToken!241) lt!1153362))))

(declare-fun b!3393912 () Bool)

(assert (=> b!3393912 (= e!2106516 e!2106494)))

(declare-fun res!1372851 () Bool)

(assert (=> b!3393912 (=> (not res!1372851) (not e!2106494))))

(assert (=> b!3393912 (= res!1372851 (matchR!4733 (regex!5382 lt!1153364) lt!1153382))))

(assert (=> b!3393912 (= lt!1153364 (get!11789 lt!1153369))))

(assert (=> b!3393913 (= e!2106520 (and tp!1059444 tp!1059442))))

(declare-fun b!3393914 () Bool)

(declare-fun res!1372853 () Bool)

(assert (=> b!3393914 (=> (not res!1372853) (not e!2106514))))

(declare-fun lambda!120713 () Int)

(declare-fun forall!7787 (List!37029 Int) Bool)

(assert (=> b!3393914 (= res!1372853 (forall!7787 tokens!494 lambda!120713))))

(assert (=> b!3393915 (= e!2106512 (and tp!1059443 tp!1059446))))

(declare-fun b!3393916 () Bool)

(declare-fun res!1372862 () Bool)

(assert (=> b!3393916 (=> (not res!1372862) (not e!2106514))))

(declare-fun sepAndNonSepRulesDisjointChars!1576 (List!37028 List!37028) Bool)

(assert (=> b!3393916 (= res!1372862 (sepAndNonSepRulesDisjointChars!1576 rules!2135 rules!2135))))

(declare-fun b!3393917 () Bool)

(declare-fun tp!1059452 () Bool)

(assert (=> b!3393917 (= e!2106496 (and e!2106515 tp!1059452))))

(declare-fun b!3393918 () Bool)

(assert (=> b!3393918 (= e!2106513 e!2106511)))

(declare-fun res!1372872 () Bool)

(assert (=> b!3393918 (=> res!1372872 e!2106511)))

(declare-fun isDefined!5730 (Option!7418) Bool)

(assert (=> b!3393918 (= res!1372872 (not (isDefined!5730 lt!1153370)))))

(declare-fun maxPrefix!2543 (LexerInterface!4971 List!37028 List!37026) Option!7418)

(assert (=> b!3393918 (= lt!1153370 (maxPrefix!2543 thiss!18206 rules!2135 lt!1153382))))

(declare-fun b!3393919 () Bool)

(assert (=> b!3393919 (= e!2106521 e!2106503)))

(declare-fun res!1372860 () Bool)

(assert (=> b!3393919 (=> res!1372860 e!2106503)))

(assert (=> b!3393919 (= res!1372860 (isSeparator!5382 (rule!7940 (h!42325 tokens!494))))))

(declare-fun lt!1153366 () Unit!52071)

(declare-fun forallContained!1329 (List!37029 Int Token!10130) Unit!52071)

(assert (=> b!3393919 (= lt!1153366 (forallContained!1329 tokens!494 lambda!120713 (h!42325 tokens!494)))))

(declare-fun b!3393920 () Bool)

(declare-fun res!1372855 () Bool)

(assert (=> b!3393920 (=> (not res!1372855) (not e!2106514))))

(assert (=> b!3393920 (= res!1372855 (isSeparator!5382 (rule!7940 separatorToken!241)))))

(assert (= (and start!316606 res!1372864) b!3393898))

(assert (= (and b!3393898 res!1372861) b!3393888))

(assert (= (and b!3393888 res!1372857) b!3393900))

(assert (= (and b!3393900 res!1372863) b!3393908))

(assert (= (and b!3393908 res!1372874) b!3393920))

(assert (= (and b!3393920 res!1372855) b!3393914))

(assert (= (and b!3393914 res!1372853) b!3393916))

(assert (= (and b!3393916 res!1372862) b!3393901))

(assert (= (and b!3393901 res!1372865) b!3393910))

(assert (= (and b!3393910 (not res!1372856)) b!3393906))

(assert (= (and b!3393906 (not res!1372869)) b!3393892))

(assert (= (and b!3393892 (not res!1372875)) b!3393904))

(assert (= (and b!3393904 (not res!1372859)) b!3393919))

(assert (= (and b!3393919 (not res!1372860)) b!3393889))

(assert (= (and b!3393889 (not res!1372873)) b!3393890))

(assert (= (and b!3393890 res!1372866) b!3393912))

(assert (= (and b!3393912 res!1372851) b!3393909))

(assert (= (and b!3393890 res!1372870) b!3393886))

(assert (= (and b!3393886 res!1372868) b!3393911))

(assert (= (and b!3393890 c!578595) b!3393883))

(assert (= (and b!3393890 (not c!578595)) b!3393903))

(assert (= (and b!3393883 res!1372852) b!3393884))

(assert (= (and b!3393890 (not res!1372858)) b!3393907))

(assert (= (and b!3393907 (not res!1372876)) b!3393897))

(assert (= (and b!3393897 (not res!1372871)) b!3393918))

(assert (= (and b!3393918 (not res!1372872)) b!3393893))

(assert (= (and b!3393893 (not res!1372854)) b!3393902))

(assert (= (and b!3393902 (not res!1372867)) b!3393905))

(assert (= b!3393885 b!3393915))

(assert (= b!3393917 b!3393885))

(assert (= (and start!316606 ((_ is Cons!36904) rules!2135)) b!3393917))

(assert (= b!3393887 b!3393913))

(assert (= b!3393899 b!3393887))

(assert (= start!316606 b!3393899))

(assert (= b!3393894 b!3393896))

(assert (= b!3393891 b!3393894))

(assert (= b!3393895 b!3393891))

(assert (= (and start!316606 ((_ is Cons!36905) tokens!494)) b!3393895))

(declare-fun m!3763519 () Bool)

(assert (=> b!3393907 m!3763519))

(declare-fun m!3763521 () Bool)

(assert (=> b!3393907 m!3763521))

(assert (=> b!3393907 m!3763521))

(declare-fun m!3763523 () Bool)

(assert (=> b!3393907 m!3763523))

(declare-fun m!3763525 () Bool)

(assert (=> b!3393907 m!3763525))

(declare-fun m!3763527 () Bool)

(assert (=> b!3393904 m!3763527))

(declare-fun m!3763529 () Bool)

(assert (=> b!3393904 m!3763529))

(declare-fun m!3763531 () Bool)

(assert (=> b!3393904 m!3763531))

(declare-fun m!3763533 () Bool)

(assert (=> b!3393893 m!3763533))

(declare-fun m!3763535 () Bool)

(assert (=> b!3393888 m!3763535))

(declare-fun m!3763537 () Bool)

(assert (=> b!3393910 m!3763537))

(declare-fun m!3763539 () Bool)

(assert (=> b!3393910 m!3763539))

(declare-fun m!3763541 () Bool)

(assert (=> b!3393910 m!3763541))

(declare-fun m!3763543 () Bool)

(assert (=> b!3393910 m!3763543))

(declare-fun m!3763545 () Bool)

(assert (=> b!3393910 m!3763545))

(declare-fun m!3763547 () Bool)

(assert (=> b!3393886 m!3763547))

(declare-fun m!3763549 () Bool)

(assert (=> b!3393886 m!3763549))

(declare-fun m!3763551 () Bool)

(assert (=> b!3393891 m!3763551))

(declare-fun m!3763553 () Bool)

(assert (=> start!316606 m!3763553))

(declare-fun m!3763555 () Bool)

(assert (=> b!3393895 m!3763555))

(declare-fun m!3763557 () Bool)

(assert (=> b!3393892 m!3763557))

(declare-fun m!3763559 () Bool)

(assert (=> b!3393890 m!3763559))

(declare-fun m!3763561 () Bool)

(assert (=> b!3393890 m!3763561))

(declare-fun m!3763563 () Bool)

(assert (=> b!3393890 m!3763563))

(declare-fun m!3763565 () Bool)

(assert (=> b!3393890 m!3763565))

(declare-fun m!3763567 () Bool)

(assert (=> b!3393890 m!3763567))

(declare-fun m!3763569 () Bool)

(assert (=> b!3393890 m!3763569))

(declare-fun m!3763571 () Bool)

(assert (=> b!3393890 m!3763571))

(declare-fun m!3763573 () Bool)

(assert (=> b!3393890 m!3763573))

(declare-fun m!3763575 () Bool)

(assert (=> b!3393890 m!3763575))

(declare-fun m!3763577 () Bool)

(assert (=> b!3393890 m!3763577))

(assert (=> b!3393890 m!3763559))

(declare-fun m!3763579 () Bool)

(assert (=> b!3393890 m!3763579))

(declare-fun m!3763581 () Bool)

(assert (=> b!3393890 m!3763581))

(assert (=> b!3393890 m!3763567))

(declare-fun m!3763583 () Bool)

(assert (=> b!3393890 m!3763583))

(declare-fun m!3763585 () Bool)

(assert (=> b!3393890 m!3763585))

(declare-fun m!3763587 () Bool)

(assert (=> b!3393890 m!3763587))

(declare-fun m!3763589 () Bool)

(assert (=> b!3393890 m!3763589))

(declare-fun m!3763591 () Bool)

(assert (=> b!3393890 m!3763591))

(declare-fun m!3763593 () Bool)

(assert (=> b!3393914 m!3763593))

(declare-fun m!3763595 () Bool)

(assert (=> b!3393900 m!3763595))

(declare-fun m!3763597 () Bool)

(assert (=> b!3393900 m!3763597))

(declare-fun m!3763599 () Bool)

(assert (=> b!3393918 m!3763599))

(declare-fun m!3763601 () Bool)

(assert (=> b!3393918 m!3763601))

(declare-fun m!3763603 () Bool)

(assert (=> b!3393889 m!3763603))

(assert (=> b!3393889 m!3763603))

(declare-fun m!3763605 () Bool)

(assert (=> b!3393889 m!3763605))

(declare-fun m!3763607 () Bool)

(assert (=> b!3393889 m!3763607))

(declare-fun m!3763609 () Bool)

(assert (=> b!3393889 m!3763609))

(declare-fun m!3763611 () Bool)

(assert (=> b!3393889 m!3763611))

(declare-fun m!3763613 () Bool)

(assert (=> b!3393908 m!3763613))

(declare-fun m!3763615 () Bool)

(assert (=> b!3393905 m!3763615))

(declare-fun m!3763617 () Bool)

(assert (=> b!3393905 m!3763617))

(declare-fun m!3763619 () Bool)

(assert (=> b!3393905 m!3763619))

(declare-fun m!3763621 () Bool)

(assert (=> b!3393916 m!3763621))

(declare-fun m!3763623 () Bool)

(assert (=> b!3393885 m!3763623))

(declare-fun m!3763625 () Bool)

(assert (=> b!3393885 m!3763625))

(declare-fun m!3763627 () Bool)

(assert (=> b!3393894 m!3763627))

(declare-fun m!3763629 () Bool)

(assert (=> b!3393894 m!3763629))

(declare-fun m!3763631 () Bool)

(assert (=> b!3393899 m!3763631))

(declare-fun m!3763633 () Bool)

(assert (=> b!3393898 m!3763633))

(declare-fun m!3763635 () Bool)

(assert (=> b!3393902 m!3763635))

(declare-fun m!3763637 () Bool)

(assert (=> b!3393919 m!3763637))

(declare-fun m!3763639 () Bool)

(assert (=> b!3393887 m!3763639))

(declare-fun m!3763641 () Bool)

(assert (=> b!3393887 m!3763641))

(declare-fun m!3763643 () Bool)

(assert (=> b!3393897 m!3763643))

(declare-fun m!3763645 () Bool)

(assert (=> b!3393906 m!3763645))

(assert (=> b!3393906 m!3763645))

(declare-fun m!3763647 () Bool)

(assert (=> b!3393906 m!3763647))

(declare-fun m!3763649 () Bool)

(assert (=> b!3393883 m!3763649))

(declare-fun m!3763651 () Bool)

(assert (=> b!3393883 m!3763651))

(declare-fun m!3763653 () Bool)

(assert (=> b!3393912 m!3763653))

(declare-fun m!3763655 () Bool)

(assert (=> b!3393912 m!3763655))

(check-sat (not b!3393900) (not b!3393888) (not b_next!89427) (not b!3393919) (not b!3393917) (not b!3393906) (not b_next!89433) (not b!3393893) (not b!3393905) (not b!3393902) b_and!236469 (not b_next!89435) (not b!3393889) (not b!3393908) b_and!236477 (not b_next!89429) (not b!3393914) (not b!3393886) (not b!3393895) b_and!236471 b_and!236467 (not b!3393907) (not b!3393883) (not b_next!89431) (not b!3393910) b_and!236475 (not b!3393894) (not b!3393897) b_and!236473 (not b!3393904) (not b!3393885) (not start!316606) (not b!3393912) (not b_next!89425) (not b!3393916) (not b!3393898) (not b!3393890) (not b!3393891) (not b!3393892) (not b!3393918) (not b!3393887) (not b!3393899))
(check-sat b_and!236471 b_and!236467 (not b_next!89427) (not b_next!89431) b_and!236475 (not b_next!89433) b_and!236473 b_and!236469 (not b_next!89425) (not b_next!89435) b_and!236477 (not b_next!89429))
