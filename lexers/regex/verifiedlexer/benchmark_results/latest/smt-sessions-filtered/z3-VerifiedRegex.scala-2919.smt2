; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171146 () Bool)

(assert start!171146)

(declare-fun b!1739051 () Bool)

(declare-fun b_free!47755 () Bool)

(declare-fun b_next!48459 () Bool)

(assert (=> b!1739051 (= b_free!47755 (not b_next!48459))))

(declare-fun tp!495339 () Bool)

(declare-fun b_and!129067 () Bool)

(assert (=> b!1739051 (= tp!495339 b_and!129067)))

(declare-fun b_free!47757 () Bool)

(declare-fun b_next!48461 () Bool)

(assert (=> b!1739051 (= b_free!47757 (not b_next!48461))))

(declare-fun tp!495337 () Bool)

(declare-fun b_and!129069 () Bool)

(assert (=> b!1739051 (= tp!495337 b_and!129069)))

(declare-fun b!1739065 () Bool)

(declare-fun b_free!47759 () Bool)

(declare-fun b_next!48463 () Bool)

(assert (=> b!1739065 (= b_free!47759 (not b_next!48463))))

(declare-fun tp!495332 () Bool)

(declare-fun b_and!129071 () Bool)

(assert (=> b!1739065 (= tp!495332 b_and!129071)))

(declare-fun b_free!47761 () Bool)

(declare-fun b_next!48465 () Bool)

(assert (=> b!1739065 (= b_free!47761 (not b_next!48465))))

(declare-fun tp!495338 () Bool)

(declare-fun b_and!129073 () Bool)

(assert (=> b!1739065 (= tp!495338 b_and!129073)))

(declare-fun b!1739042 () Bool)

(declare-fun b_free!47763 () Bool)

(declare-fun b_next!48467 () Bool)

(assert (=> b!1739042 (= b_free!47763 (not b_next!48467))))

(declare-fun tp!495336 () Bool)

(declare-fun b_and!129075 () Bool)

(assert (=> b!1739042 (= tp!495336 b_and!129075)))

(declare-fun b_free!47765 () Bool)

(declare-fun b_next!48469 () Bool)

(assert (=> b!1739042 (= b_free!47765 (not b_next!48469))))

(declare-fun tp!495333 () Bool)

(declare-fun b_and!129077 () Bool)

(assert (=> b!1739042 (= tp!495333 b_and!129077)))

(declare-fun b!1739076 () Bool)

(declare-fun e!1113011 () Bool)

(assert (=> b!1739076 (= e!1113011 true)))

(declare-fun b!1739075 () Bool)

(declare-fun e!1113010 () Bool)

(assert (=> b!1739075 (= e!1113010 e!1113011)))

(declare-fun b!1739074 () Bool)

(declare-fun e!1113009 () Bool)

(assert (=> b!1739074 (= e!1113009 e!1113010)))

(declare-fun b!1739064 () Bool)

(assert (=> b!1739064 e!1113009))

(assert (= b!1739075 b!1739076))

(assert (= b!1739074 b!1739075))

(assert (= b!1739064 b!1739074))

(declare-fun lambda!69554 () Int)

(declare-fun order!11899 () Int)

(declare-fun order!11901 () Int)

(declare-datatypes ((List!19169 0))(
  ( (Nil!19099) (Cons!19099 (h!24500 (_ BitVec 16)) (t!161668 List!19169)) )
))
(declare-datatypes ((TokenValue!3489 0))(
  ( (FloatLiteralValue!6978 (text!24868 List!19169)) (TokenValueExt!3488 (__x!12280 Int)) (Broken!17445 (value!106518 List!19169)) (Object!3558) (End!3489) (Def!3489) (Underscore!3489) (Match!3489) (Else!3489) (Error!3489) (Case!3489) (If!3489) (Extends!3489) (Abstract!3489) (Class!3489) (Val!3489) (DelimiterValue!6978 (del!3549 List!19169)) (KeywordValue!3495 (value!106519 List!19169)) (CommentValue!6978 (value!106520 List!19169)) (WhitespaceValue!6978 (value!106521 List!19169)) (IndentationValue!3489 (value!106522 List!19169)) (String!21776) (Int32!3489) (Broken!17446 (value!106523 List!19169)) (Boolean!3490) (Unit!33086) (OperatorValue!3492 (op!3549 List!19169)) (IdentifierValue!6978 (value!106524 List!19169)) (IdentifierValue!6979 (value!106525 List!19169)) (WhitespaceValue!6979 (value!106526 List!19169)) (True!6978) (False!6978) (Broken!17447 (value!106527 List!19169)) (Broken!17448 (value!106528 List!19169)) (True!6979) (RightBrace!3489) (RightBracket!3489) (Colon!3489) (Null!3489) (Comma!3489) (LeftBracket!3489) (False!6979) (LeftBrace!3489) (ImaginaryLiteralValue!3489 (text!24869 List!19169)) (StringLiteralValue!10467 (value!106529 List!19169)) (EOFValue!3489 (value!106530 List!19169)) (IdentValue!3489 (value!106531 List!19169)) (DelimiterValue!6979 (value!106532 List!19169)) (DedentValue!3489 (value!106533 List!19169)) (NewLineValue!3489 (value!106534 List!19169)) (IntegerValue!10467 (value!106535 (_ BitVec 32)) (text!24870 List!19169)) (IntegerValue!10468 (value!106536 Int) (text!24871 List!19169)) (Times!3489) (Or!3489) (Equal!3489) (Minus!3489) (Broken!17449 (value!106537 List!19169)) (And!3489) (Div!3489) (LessEqual!3489) (Mod!3489) (Concat!8216) (Not!3489) (Plus!3489) (SpaceValue!3489 (value!106538 List!19169)) (IntegerValue!10469 (value!106539 Int) (text!24872 List!19169)) (StringLiteralValue!10468 (text!24873 List!19169)) (FloatLiteralValue!6979 (text!24874 List!19169)) (BytesLiteralValue!3489 (value!106540 List!19169)) (CommentValue!6979 (value!106541 List!19169)) (StringLiteralValue!10469 (value!106542 List!19169)) (ErrorTokenValue!3489 (msg!3550 List!19169)) )
))
(declare-datatypes ((C!9628 0))(
  ( (C!9629 (val!5410 Int)) )
))
(declare-datatypes ((List!19170 0))(
  ( (Nil!19100) (Cons!19100 (h!24501 C!9628) (t!161669 List!19170)) )
))
(declare-datatypes ((Regex!4727 0))(
  ( (ElementMatch!4727 (c!283784 C!9628)) (Concat!8217 (regOne!9966 Regex!4727) (regTwo!9966 Regex!4727)) (EmptyExpr!4727) (Star!4727 (reg!5056 Regex!4727)) (EmptyLang!4727) (Union!4727 (regOne!9967 Regex!4727) (regTwo!9967 Regex!4727)) )
))
(declare-datatypes ((String!21777 0))(
  ( (String!21778 (value!106543 String)) )
))
(declare-datatypes ((IArray!12711 0))(
  ( (IArray!12712 (innerList!6413 List!19170)) )
))
(declare-datatypes ((Conc!6353 0))(
  ( (Node!6353 (left!15274 Conc!6353) (right!15604 Conc!6353) (csize!12936 Int) (cheight!6564 Int)) (Leaf!9273 (xs!9229 IArray!12711) (csize!12937 Int)) (Empty!6353) )
))
(declare-datatypes ((BalanceConc!12650 0))(
  ( (BalanceConc!12651 (c!283785 Conc!6353)) )
))
(declare-datatypes ((TokenValueInjection!6638 0))(
  ( (TokenValueInjection!6639 (toValue!4906 Int) (toChars!4765 Int)) )
))
(declare-datatypes ((Rule!6598 0))(
  ( (Rule!6599 (regex!3399 Regex!4727) (tag!3735 String!21777) (isSeparator!3399 Bool) (transformation!3399 TokenValueInjection!6638)) )
))
(declare-datatypes ((Token!6364 0))(
  ( (Token!6365 (value!106544 TokenValue!3489) (rule!5397 Rule!6598) (size!15180 Int) (originalCharacters!4213 List!19170)) )
))
(declare-datatypes ((tuple2!18758 0))(
  ( (tuple2!18759 (_1!10781 Token!6364) (_2!10781 List!19170)) )
))
(declare-fun lt!669838 () tuple2!18758)

(declare-fun dynLambda!9008 (Int Int) Int)

(declare-fun dynLambda!9009 (Int Int) Int)

(assert (=> b!1739076 (< (dynLambda!9008 order!11899 (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) (dynLambda!9009 order!11901 lambda!69554))))

(declare-fun order!11903 () Int)

(declare-fun dynLambda!9010 (Int Int) Int)

(assert (=> b!1739076 (< (dynLambda!9010 order!11903 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) (dynLambda!9009 order!11901 lambda!69554))))

(declare-fun b!1739022 () Bool)

(declare-fun res!781692 () Bool)

(declare-fun e!1112987 () Bool)

(assert (=> b!1739022 (=> res!781692 e!1112987)))

(declare-fun lt!669859 () List!19170)

(declare-fun matchR!2201 (Regex!4727 List!19170) Bool)

(assert (=> b!1739022 (= res!781692 (not (matchR!2201 (regex!3399 (rule!5397 (_1!10781 lt!669838))) lt!669859)))))

(declare-fun b!1739023 () Bool)

(declare-fun e!1112984 () Bool)

(declare-fun e!1112988 () Bool)

(assert (=> b!1739023 (= e!1112984 e!1112988)))

(declare-fun res!781698 () Bool)

(assert (=> b!1739023 (=> (not res!781698) (not e!1112988))))

(declare-fun lt!669830 () tuple2!18758)

(declare-fun token!523 () Token!6364)

(assert (=> b!1739023 (= res!781698 (= (_1!10781 lt!669830) token!523))))

(declare-datatypes ((Option!3822 0))(
  ( (None!3821) (Some!3821 (v!25250 tuple2!18758)) )
))
(declare-fun lt!669855 () Option!3822)

(declare-fun get!5739 (Option!3822) tuple2!18758)

(assert (=> b!1739023 (= lt!669830 (get!5739 lt!669855))))

(declare-fun b!1739024 () Bool)

(declare-fun e!1112999 () Bool)

(assert (=> b!1739024 (= e!1112999 e!1112987)))

(declare-fun res!781684 () Bool)

(assert (=> b!1739024 (=> res!781684 e!1112987)))

(declare-fun lt!669849 () List!19170)

(declare-fun isPrefix!1640 (List!19170 List!19170) Bool)

(assert (=> b!1739024 (= res!781684 (not (isPrefix!1640 lt!669859 lt!669849)))))

(declare-fun ++!5224 (List!19170 List!19170) List!19170)

(assert (=> b!1739024 (isPrefix!1640 lt!669859 (++!5224 lt!669859 (_2!10781 lt!669838)))))

(declare-datatypes ((Unit!33087 0))(
  ( (Unit!33088) )
))
(declare-fun lt!669871 () Unit!33087)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1150 (List!19170 List!19170) Unit!33087)

(assert (=> b!1739024 (= lt!669871 (lemmaConcatTwoListThenFirstIsPrefix!1150 lt!669859 (_2!10781 lt!669838)))))

(declare-fun lt!669864 () BalanceConc!12650)

(declare-fun list!7724 (BalanceConc!12650) List!19170)

(assert (=> b!1739024 (= lt!669859 (list!7724 lt!669864))))

(declare-fun charsOf!2048 (Token!6364) BalanceConc!12650)

(assert (=> b!1739024 (= lt!669864 (charsOf!2048 (_1!10781 lt!669838)))))

(declare-fun e!1112968 () Bool)

(assert (=> b!1739024 e!1112968))

(declare-fun res!781706 () Bool)

(assert (=> b!1739024 (=> (not res!781706) (not e!1112968))))

(declare-datatypes ((Option!3823 0))(
  ( (None!3822) (Some!3822 (v!25251 Rule!6598)) )
))
(declare-fun lt!669853 () Option!3823)

(declare-fun isDefined!3165 (Option!3823) Bool)

(assert (=> b!1739024 (= res!781706 (isDefined!3165 lt!669853))))

(declare-datatypes ((LexerInterface!3028 0))(
  ( (LexerInterfaceExt!3025 (__x!12281 Int)) (Lexer!3026) )
))
(declare-fun thiss!24550 () LexerInterface!3028)

(declare-datatypes ((List!19171 0))(
  ( (Nil!19101) (Cons!19101 (h!24502 Rule!6598) (t!161670 List!19171)) )
))
(declare-fun rules!3447 () List!19171)

(declare-fun getRuleFromTag!449 (LexerInterface!3028 List!19171 String!21777) Option!3823)

(assert (=> b!1739024 (= lt!669853 (getRuleFromTag!449 thiss!24550 rules!3447 (tag!3735 (rule!5397 (_1!10781 lt!669838)))))))

(declare-fun lt!669840 () Unit!33087)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!449 (LexerInterface!3028 List!19171 List!19170 Token!6364) Unit!33087)

(assert (=> b!1739024 (= lt!669840 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!449 thiss!24550 rules!3447 lt!669849 (_1!10781 lt!669838)))))

(declare-fun lt!669852 () Option!3822)

(assert (=> b!1739024 (= lt!669838 (get!5739 lt!669852))))

(declare-fun suffix!1421 () List!19170)

(declare-fun lt!669872 () List!19170)

(declare-fun lt!669842 () Unit!33087)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!552 (LexerInterface!3028 List!19171 List!19170 List!19170) Unit!33087)

(assert (=> b!1739024 (= lt!669842 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!552 thiss!24550 rules!3447 lt!669872 suffix!1421))))

(declare-fun maxPrefix!1582 (LexerInterface!3028 List!19171 List!19170) Option!3822)

(assert (=> b!1739024 (= lt!669852 (maxPrefix!1582 thiss!24550 rules!3447 lt!669849))))

(assert (=> b!1739024 (isPrefix!1640 lt!669872 lt!669849)))

(declare-fun lt!669862 () Unit!33087)

(assert (=> b!1739024 (= lt!669862 (lemmaConcatTwoListThenFirstIsPrefix!1150 lt!669872 suffix!1421))))

(assert (=> b!1739024 (= lt!669849 (++!5224 lt!669872 suffix!1421))))

(declare-fun b!1739025 () Bool)

(declare-fun res!781686 () Bool)

(assert (=> b!1739025 (=> (not res!781686) (not e!1112988))))

(declare-fun rule!422 () Rule!6598)

(assert (=> b!1739025 (= res!781686 (= (rule!5397 token!523) rule!422))))

(declare-fun b!1739026 () Bool)

(declare-fun e!1112983 () Bool)

(assert (=> b!1739026 (= e!1112988 (not e!1112983))))

(declare-fun res!781690 () Bool)

(assert (=> b!1739026 (=> res!781690 e!1112983)))

(assert (=> b!1739026 (= res!781690 (not (matchR!2201 (regex!3399 rule!422) lt!669872)))))

(declare-fun ruleValid!898 (LexerInterface!3028 Rule!6598) Bool)

(assert (=> b!1739026 (ruleValid!898 thiss!24550 rule!422)))

(declare-fun lt!669835 () Unit!33087)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!422 (LexerInterface!3028 Rule!6598 List!19171) Unit!33087)

(assert (=> b!1739026 (= lt!669835 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!422 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1739027 () Bool)

(declare-fun e!1112977 () Bool)

(declare-fun e!1112975 () Bool)

(declare-fun tp!495329 () Bool)

(assert (=> b!1739027 (= e!1112977 (and e!1112975 tp!495329))))

(declare-fun tp!495334 () Bool)

(declare-fun b!1739028 () Bool)

(declare-fun e!1112971 () Bool)

(declare-fun inv!24740 (String!21777) Bool)

(declare-fun inv!24745 (TokenValueInjection!6638) Bool)

(assert (=> b!1739028 (= e!1112975 (and tp!495334 (inv!24740 (tag!3735 (h!24502 rules!3447))) (inv!24745 (transformation!3399 (h!24502 rules!3447))) e!1112971))))

(declare-fun b!1739030 () Bool)

(declare-fun e!1112973 () Unit!33087)

(declare-fun Unit!33089 () Unit!33087)

(assert (=> b!1739030 (= e!1112973 Unit!33089)))

(declare-fun lt!669827 () Unit!33087)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!148 (LexerInterface!3028 List!19171 List!19170 Token!6364 Rule!6598 List!19170) Unit!33087)

(assert (=> b!1739030 (= lt!669827 (lemmaMaxPrefixThenMatchesRulesRegex!148 thiss!24550 rules!3447 lt!669849 (_1!10781 lt!669838) (rule!5397 (_1!10781 lt!669838)) (_2!10781 lt!669838)))))

(declare-fun lt!669829 () Regex!4727)

(assert (=> b!1739030 (matchR!2201 lt!669829 lt!669859)))

(declare-fun lt!669866 () List!19170)

(declare-fun getSuffix!834 (List!19170 List!19170) List!19170)

(assert (=> b!1739030 (= lt!669866 (getSuffix!834 lt!669849 lt!669872))))

(declare-fun lt!669848 () Unit!33087)

(declare-fun lemmaSamePrefixThenSameSuffix!784 (List!19170 List!19170 List!19170 List!19170 List!19170) Unit!33087)

(assert (=> b!1739030 (= lt!669848 (lemmaSamePrefixThenSameSuffix!784 lt!669872 suffix!1421 lt!669872 lt!669866 lt!669849))))

(assert (=> b!1739030 (= suffix!1421 lt!669866)))

(declare-fun lt!669839 () Unit!33087)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!235 (List!19170 List!19170) Unit!33087)

(assert (=> b!1739030 (= lt!669839 (lemmaAddHeadSuffixToPrefixStillPrefix!235 lt!669872 lt!669849))))

(declare-fun head!3978 (List!19170) C!9628)

(assert (=> b!1739030 (isPrefix!1640 (++!5224 lt!669872 (Cons!19100 (head!3978 lt!669866) Nil!19100)) lt!669849)))

(declare-fun lt!669858 () Unit!33087)

(declare-fun lt!669860 () List!19170)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!115 (List!19170 List!19170 List!19170) Unit!33087)

(assert (=> b!1739030 (= lt!669858 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!115 lt!669859 lt!669860 lt!669849))))

(assert (=> b!1739030 (isPrefix!1640 lt!669860 lt!669859)))

(declare-fun lt!669850 () Unit!33087)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!108 (Regex!4727 List!19170 List!19170) Unit!33087)

(assert (=> b!1739030 (= lt!669850 (lemmaNotPrefixMatchThenCannotMatchLonger!108 lt!669829 lt!669860 lt!669859))))

(assert (=> b!1739030 false))

(declare-fun b!1739031 () Bool)

(declare-fun e!1113001 () Bool)

(assert (=> b!1739031 (= e!1113001 true)))

(declare-fun lt!669822 () Bool)

(declare-fun contains!3421 (List!19171 Rule!6598) Bool)

(assert (=> b!1739031 (= lt!669822 (contains!3421 rules!3447 (rule!5397 token!523)))))

(declare-fun b!1739032 () Bool)

(declare-fun e!1112994 () Bool)

(declare-fun e!1112978 () Bool)

(assert (=> b!1739032 (= e!1112994 e!1112978)))

(declare-fun res!781697 () Bool)

(assert (=> b!1739032 (=> res!781697 e!1112978)))

(declare-fun lt!669841 () TokenValue!3489)

(declare-fun lt!669832 () Int)

(assert (=> b!1739032 (= res!781697 (not (= lt!669852 (Some!3821 (tuple2!18759 (Token!6365 lt!669841 (rule!5397 (_1!10781 lt!669838)) lt!669832 lt!669859) (_2!10781 lt!669838))))))))

(declare-fun size!15181 (BalanceConc!12650) Int)

(assert (=> b!1739032 (= lt!669832 (size!15181 lt!669864))))

(declare-fun apply!5204 (TokenValueInjection!6638 BalanceConc!12650) TokenValue!3489)

(assert (=> b!1739032 (= lt!669841 (apply!5204 (transformation!3399 (rule!5397 (_1!10781 lt!669838))) lt!669864))))

(declare-fun lt!669865 () Unit!33087)

(declare-fun lemmaCharactersSize!471 (Token!6364) Unit!33087)

(assert (=> b!1739032 (= lt!669865 (lemmaCharactersSize!471 (_1!10781 lt!669838)))))

(declare-fun lt!669867 () Unit!33087)

(declare-fun lemmaEqSameImage!324 (TokenValueInjection!6638 BalanceConc!12650 BalanceConc!12650) Unit!33087)

(declare-fun seqFromList!2373 (List!19170) BalanceConc!12650)

(assert (=> b!1739032 (= lt!669867 (lemmaEqSameImage!324 (transformation!3399 (rule!5397 (_1!10781 lt!669838))) lt!669864 (seqFromList!2373 (originalCharacters!4213 (_1!10781 lt!669838)))))))

(declare-fun b!1739033 () Bool)

(declare-fun res!781704 () Bool)

(assert (=> b!1739033 (=> res!781704 e!1112994)))

(declare-fun dynLambda!9011 (Int TokenValue!3489) BalanceConc!12650)

(assert (=> b!1739033 (= res!781704 (not (= lt!669864 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (value!106544 (_1!10781 lt!669838))))))))

(declare-fun b!1739034 () Bool)

(declare-fun e!1112979 () Unit!33087)

(declare-fun Unit!33090 () Unit!33087)

(assert (=> b!1739034 (= e!1112979 Unit!33090)))

(declare-fun b!1739035 () Bool)

(declare-fun e!1112995 () Bool)

(assert (=> b!1739035 (= e!1112995 false)))

(declare-fun b!1739036 () Bool)

(declare-fun res!781708 () Bool)

(declare-fun e!1112989 () Bool)

(assert (=> b!1739036 (=> (not res!781708) (not e!1112989))))

(assert (=> b!1739036 (= res!781708 (contains!3421 rules!3447 rule!422))))

(declare-fun b!1739037 () Bool)

(declare-fun e!1112998 () Unit!33087)

(declare-fun Unit!33091 () Unit!33087)

(assert (=> b!1739037 (= e!1112998 Unit!33091)))

(declare-fun tp!495340 () Bool)

(declare-fun e!1112997 () Bool)

(declare-fun b!1739038 () Bool)

(declare-fun e!1112991 () Bool)

(assert (=> b!1739038 (= e!1112997 (and tp!495340 (inv!24740 (tag!3735 (rule!5397 token!523))) (inv!24745 (transformation!3399 (rule!5397 token!523))) e!1112991))))

(declare-fun b!1739039 () Bool)

(declare-fun e!1112986 () Unit!33087)

(declare-fun Unit!33092 () Unit!33087)

(assert (=> b!1739039 (= e!1112986 Unit!33092)))

(declare-fun lt!669869 () Unit!33087)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!196 (LexerInterface!3028 List!19171 Rule!6598 List!19170 List!19170 List!19170 Rule!6598) Unit!33087)

(assert (=> b!1739039 (= lt!669869 (lemmaMaxPrefixOutputsMaxPrefix!196 thiss!24550 rules!3447 (rule!5397 (_1!10781 lt!669838)) lt!669859 lt!669849 lt!669872 rule!422))))

(assert (=> b!1739039 false))

(declare-fun b!1739040 () Bool)

(declare-fun Unit!33093 () Unit!33087)

(assert (=> b!1739040 (= e!1112973 Unit!33093)))

(declare-fun b!1739041 () Bool)

(declare-fun Unit!33094 () Unit!33087)

(assert (=> b!1739041 (= e!1112998 Unit!33094)))

(declare-fun lt!669856 () Unit!33087)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!136 (LexerInterface!3028 List!19171 Rule!6598 List!19170 List!19170 Rule!6598) Unit!33087)

(assert (=> b!1739041 (= lt!669856 (lemmaMaxPrefNoSmallerRuleMatches!136 thiss!24550 rules!3447 (rule!5397 token!523) lt!669872 lt!669872 (rule!5397 (_1!10781 lt!669838))))))

(declare-fun res!781685 () Bool)

(assert (=> b!1739041 (= res!781685 (not (matchR!2201 (regex!3399 (rule!5397 (_1!10781 lt!669838))) lt!669872)))))

(declare-fun e!1112974 () Bool)

(assert (=> b!1739041 (=> (not res!781685) (not e!1112974))))

(assert (=> b!1739041 e!1112974))

(assert (=> b!1739042 (= e!1112991 (and tp!495336 tp!495333))))

(declare-fun b!1739043 () Bool)

(declare-fun Unit!33095 () Unit!33087)

(assert (=> b!1739043 (= e!1112979 Unit!33095)))

(declare-fun lt!669861 () Unit!33087)

(assert (=> b!1739043 (= lt!669861 (lemmaMaxPrefNoSmallerRuleMatches!136 thiss!24550 rules!3447 (rule!5397 (_1!10781 lt!669838)) lt!669859 lt!669849 (rule!5397 token!523)))))

(declare-fun res!781695 () Bool)

(assert (=> b!1739043 (= res!781695 (not (matchR!2201 (regex!3399 (rule!5397 token!523)) lt!669859)))))

(assert (=> b!1739043 (=> (not res!781695) (not e!1112995))))

(assert (=> b!1739043 e!1112995))

(declare-fun b!1739044 () Bool)

(declare-fun res!781699 () Bool)

(assert (=> b!1739044 (=> (not res!781699) (not e!1112988))))

(declare-fun isEmpty!12021 (List!19170) Bool)

(assert (=> b!1739044 (= res!781699 (isEmpty!12021 (_2!10781 lt!669830)))))

(declare-fun b!1739045 () Bool)

(assert (=> b!1739045 (= e!1112989 e!1112984)))

(declare-fun res!781682 () Bool)

(assert (=> b!1739045 (=> (not res!781682) (not e!1112984))))

(declare-fun isDefined!3166 (Option!3822) Bool)

(assert (=> b!1739045 (= res!781682 (isDefined!3166 lt!669855))))

(assert (=> b!1739045 (= lt!669855 (maxPrefix!1582 thiss!24550 rules!3447 lt!669872))))

(declare-fun lt!669857 () BalanceConc!12650)

(assert (=> b!1739045 (= lt!669872 (list!7724 lt!669857))))

(assert (=> b!1739045 (= lt!669857 (charsOf!2048 token!523))))

(declare-fun b!1739046 () Bool)

(assert (=> b!1739046 (= e!1112974 false)))

(declare-fun b!1739047 () Bool)

(declare-fun tp!495330 () Bool)

(declare-fun e!1113000 () Bool)

(declare-fun inv!21 (TokenValue!3489) Bool)

(assert (=> b!1739047 (= e!1113000 (and (inv!21 (value!106544 token!523)) e!1112997 tp!495330))))

(declare-fun b!1739048 () Bool)

(declare-fun res!781696 () Bool)

(assert (=> b!1739048 (=> (not res!781696) (not e!1112989))))

(declare-fun rulesInvariant!2697 (LexerInterface!3028 List!19171) Bool)

(assert (=> b!1739048 (= res!781696 (rulesInvariant!2697 thiss!24550 rules!3447))))

(declare-fun b!1739049 () Bool)

(declare-fun e!1112990 () Bool)

(declare-fun e!1112993 () Bool)

(assert (=> b!1739049 (= e!1112990 e!1112993)))

(declare-fun res!781689 () Bool)

(assert (=> b!1739049 (=> res!781689 e!1112993)))

(declare-fun lt!669844 () Int)

(assert (=> b!1739049 (= res!781689 (not (= lt!669832 lt!669844)))))

(declare-fun lt!669843 () Unit!33087)

(assert (=> b!1739049 (= lt!669843 e!1112986)))

(declare-fun c!283781 () Bool)

(assert (=> b!1739049 (= c!283781 (< lt!669832 lt!669844))))

(declare-fun b!1739050 () Bool)

(declare-fun Unit!33096 () Unit!33087)

(assert (=> b!1739050 (= e!1112986 Unit!33096)))

(declare-fun e!1112981 () Bool)

(assert (=> b!1739051 (= e!1112981 (and tp!495339 tp!495337))))

(declare-fun b!1739052 () Bool)

(declare-fun res!781683 () Bool)

(assert (=> b!1739052 (=> res!781683 e!1112983)))

(assert (=> b!1739052 (= res!781683 (isEmpty!12021 suffix!1421))))

(declare-fun b!1739053 () Bool)

(declare-fun e!1112985 () Bool)

(assert (=> b!1739053 (= e!1112985 e!1113001)))

(declare-fun res!781703 () Bool)

(assert (=> b!1739053 (=> res!781703 e!1113001)))

(declare-fun lt!669847 () Int)

(declare-fun lt!669846 () Int)

(assert (=> b!1739053 (= res!781703 (not (= lt!669847 lt!669846)))))

(declare-fun lt!669837 () Unit!33087)

(assert (=> b!1739053 (= lt!669837 e!1112998)))

(declare-fun c!283783 () Bool)

(assert (=> b!1739053 (= c!283783 (< lt!669847 lt!669846))))

(declare-fun lt!669845 () Unit!33087)

(assert (=> b!1739053 (= lt!669845 e!1112979)))

(declare-fun c!283782 () Bool)

(assert (=> b!1739053 (= c!283782 (< lt!669846 lt!669847))))

(declare-fun getIndex!166 (List!19171 Rule!6598) Int)

(assert (=> b!1739053 (= lt!669847 (getIndex!166 rules!3447 (rule!5397 (_1!10781 lt!669838))))))

(assert (=> b!1739053 (= lt!669846 (getIndex!166 rules!3447 (rule!5397 token!523)))))

(declare-fun e!1112969 () Bool)

(declare-fun tp!495335 () Bool)

(declare-fun b!1739054 () Bool)

(assert (=> b!1739054 (= e!1112969 (and tp!495335 (inv!24740 (tag!3735 rule!422)) (inv!24745 (transformation!3399 rule!422)) e!1112981))))

(declare-fun b!1739055 () Bool)

(declare-fun e!1112976 () Bool)

(assert (=> b!1739055 (= e!1112978 e!1112976)))

(declare-fun res!781694 () Bool)

(assert (=> b!1739055 (=> res!781694 e!1112976)))

(declare-fun lt!669833 () Option!3822)

(declare-fun lt!669828 () List!19170)

(assert (=> b!1739055 (= res!781694 (or (not (= lt!669828 (_2!10781 lt!669838))) (not (= lt!669833 (Some!3821 (tuple2!18759 (_1!10781 lt!669838) lt!669828))))))))

(assert (=> b!1739055 (= (_2!10781 lt!669838) lt!669828)))

(declare-fun lt!669851 () Unit!33087)

(assert (=> b!1739055 (= lt!669851 (lemmaSamePrefixThenSameSuffix!784 lt!669859 (_2!10781 lt!669838) lt!669859 lt!669828 lt!669849))))

(assert (=> b!1739055 (= lt!669828 (getSuffix!834 lt!669849 lt!669859))))

(declare-fun lt!669824 () Int)

(declare-fun lt!669826 () TokenValue!3489)

(assert (=> b!1739055 (= lt!669833 (Some!3821 (tuple2!18759 (Token!6365 lt!669826 (rule!5397 (_1!10781 lt!669838)) lt!669824 lt!669859) (_2!10781 lt!669838))))))

(declare-fun maxPrefixOneRule!958 (LexerInterface!3028 Rule!6598 List!19170) Option!3822)

(assert (=> b!1739055 (= lt!669833 (maxPrefixOneRule!958 thiss!24550 (rule!5397 (_1!10781 lt!669838)) lt!669849))))

(declare-fun size!15182 (List!19170) Int)

(assert (=> b!1739055 (= lt!669824 (size!15182 lt!669859))))

(assert (=> b!1739055 (= lt!669826 (apply!5204 (transformation!3399 (rule!5397 (_1!10781 lt!669838))) (seqFromList!2373 lt!669859)))))

(declare-fun lt!669825 () Unit!33087)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!357 (LexerInterface!3028 List!19171 List!19170 List!19170 List!19170 Rule!6598) Unit!33087)

(assert (=> b!1739055 (= lt!669825 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!357 thiss!24550 rules!3447 lt!669859 lt!669849 (_2!10781 lt!669838) (rule!5397 (_1!10781 lt!669838))))))

(declare-fun res!781691 () Bool)

(assert (=> start!171146 (=> (not res!781691) (not e!1112989))))

(get-info :version)

(assert (=> start!171146 (= res!781691 ((_ is Lexer!3026) thiss!24550))))

(assert (=> start!171146 e!1112989))

(declare-fun e!1112972 () Bool)

(assert (=> start!171146 e!1112972))

(assert (=> start!171146 e!1112969))

(assert (=> start!171146 true))

(declare-fun inv!24746 (Token!6364) Bool)

(assert (=> start!171146 (and (inv!24746 token!523) e!1113000)))

(assert (=> start!171146 e!1112977))

(declare-fun b!1739029 () Bool)

(assert (=> b!1739029 (= e!1112976 e!1112990)))

(declare-fun res!781702 () Bool)

(assert (=> b!1739029 (=> res!781702 e!1112990)))

(declare-fun lt!669834 () Bool)

(assert (=> b!1739029 (= res!781702 lt!669834)))

(declare-fun lt!669854 () Unit!33087)

(assert (=> b!1739029 (= lt!669854 e!1112973)))

(declare-fun c!283780 () Bool)

(assert (=> b!1739029 (= c!283780 lt!669834)))

(assert (=> b!1739029 (= lt!669834 (> lt!669832 lt!669844))))

(assert (=> b!1739029 (= lt!669844 (size!15181 lt!669857))))

(assert (=> b!1739029 (matchR!2201 lt!669829 lt!669872)))

(declare-fun lt!669870 () Unit!33087)

(assert (=> b!1739029 (= lt!669870 (lemmaMaxPrefixThenMatchesRulesRegex!148 thiss!24550 rules!3447 lt!669872 token!523 rule!422 Nil!19100))))

(declare-fun b!1739056 () Bool)

(declare-fun e!1112992 () Bool)

(assert (=> b!1739056 (= e!1112968 e!1112992)))

(declare-fun res!781693 () Bool)

(assert (=> b!1739056 (=> (not res!781693) (not e!1112992))))

(declare-fun lt!669868 () Rule!6598)

(assert (=> b!1739056 (= res!781693 (matchR!2201 (regex!3399 lt!669868) (list!7724 (charsOf!2048 (_1!10781 lt!669838)))))))

(declare-fun get!5740 (Option!3823) Rule!6598)

(assert (=> b!1739056 (= lt!669868 (get!5740 lt!669853))))

(declare-fun b!1739057 () Bool)

(declare-fun tp_is_empty!7697 () Bool)

(declare-fun tp!495331 () Bool)

(assert (=> b!1739057 (= e!1112972 (and tp_is_empty!7697 tp!495331))))

(declare-fun b!1739058 () Bool)

(assert (=> b!1739058 (= e!1112992 (= (rule!5397 (_1!10781 lt!669838)) lt!669868))))

(declare-fun b!1739059 () Bool)

(declare-fun e!1112970 () Bool)

(assert (=> b!1739059 (= e!1112970 e!1112994)))

(declare-fun res!781707 () Bool)

(assert (=> b!1739059 (=> res!781707 e!1112994)))

(declare-fun dynLambda!9012 (Int BalanceConc!12650) TokenValue!3489)

(assert (=> b!1739059 (= res!781707 (not (= (list!7724 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (dynLambda!9012 (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) lt!669864))) lt!669859)))))

(declare-fun lt!669836 () Unit!33087)

(declare-fun lemmaSemiInverse!545 (TokenValueInjection!6638 BalanceConc!12650) Unit!33087)

(assert (=> b!1739059 (= lt!669836 (lemmaSemiInverse!545 (transformation!3399 (rule!5397 (_1!10781 lt!669838))) lt!669864))))

(declare-fun b!1739060 () Bool)

(declare-fun res!781688 () Bool)

(assert (=> b!1739060 (=> (not res!781688) (not e!1112989))))

(declare-fun isEmpty!12022 (List!19171) Bool)

(assert (=> b!1739060 (= res!781688 (not (isEmpty!12022 rules!3447)))))

(declare-fun b!1739061 () Bool)

(declare-fun res!781701 () Bool)

(assert (=> b!1739061 (=> res!781701 e!1113001)))

(assert (=> b!1739061 (= res!781701 (not (contains!3421 rules!3447 (rule!5397 (_1!10781 lt!669838)))))))

(declare-fun b!1739062 () Bool)

(assert (=> b!1739062 (= e!1112983 e!1112999)))

(declare-fun res!781700 () Bool)

(assert (=> b!1739062 (=> res!781700 e!1112999)))

(declare-fun prefixMatch!612 (Regex!4727 List!19170) Bool)

(assert (=> b!1739062 (= res!781700 (prefixMatch!612 lt!669829 lt!669860))))

(assert (=> b!1739062 (= lt!669860 (++!5224 lt!669872 (Cons!19100 (head!3978 suffix!1421) Nil!19100)))))

(declare-fun rulesRegex!757 (LexerInterface!3028 List!19171) Regex!4727)

(assert (=> b!1739062 (= lt!669829 (rulesRegex!757 thiss!24550 rules!3447))))

(declare-fun b!1739063 () Bool)

(assert (=> b!1739063 (= e!1112993 e!1112985)))

(declare-fun res!781705 () Bool)

(assert (=> b!1739063 (=> res!781705 e!1112985)))

(assert (=> b!1739063 (= res!781705 (= (rule!5397 (_1!10781 lt!669838)) (rule!5397 token!523)))))

(assert (=> b!1739063 (= suffix!1421 (_2!10781 lt!669838))))

(declare-fun lt!669823 () Unit!33087)

(assert (=> b!1739063 (= lt!669823 (lemmaSamePrefixThenSameSuffix!784 lt!669872 suffix!1421 lt!669872 (_2!10781 lt!669838) lt!669849))))

(assert (=> b!1739063 (= lt!669859 lt!669872)))

(declare-fun lt!669831 () Unit!33087)

(declare-fun lemmaIsPrefixSameLengthThenSameList!227 (List!19170 List!19170 List!19170) Unit!33087)

(assert (=> b!1739063 (= lt!669831 (lemmaIsPrefixSameLengthThenSameList!227 lt!669859 lt!669872 lt!669849))))

(assert (=> b!1739064 (= e!1112987 e!1112970)))

(declare-fun res!781687 () Bool)

(assert (=> b!1739064 (=> res!781687 e!1112970)))

(declare-fun Forall!774 (Int) Bool)

(assert (=> b!1739064 (= res!781687 (not (Forall!774 lambda!69554)))))

(declare-fun lt!669863 () Unit!33087)

(declare-fun lemmaInv!606 (TokenValueInjection!6638) Unit!33087)

(assert (=> b!1739064 (= lt!669863 (lemmaInv!606 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))))))

(assert (=> b!1739065 (= e!1112971 (and tp!495332 tp!495338))))

(assert (= (and start!171146 res!781691) b!1739060))

(assert (= (and b!1739060 res!781688) b!1739048))

(assert (= (and b!1739048 res!781696) b!1739036))

(assert (= (and b!1739036 res!781708) b!1739045))

(assert (= (and b!1739045 res!781682) b!1739023))

(assert (= (and b!1739023 res!781698) b!1739044))

(assert (= (and b!1739044 res!781699) b!1739025))

(assert (= (and b!1739025 res!781686) b!1739026))

(assert (= (and b!1739026 (not res!781690)) b!1739052))

(assert (= (and b!1739052 (not res!781683)) b!1739062))

(assert (= (and b!1739062 (not res!781700)) b!1739024))

(assert (= (and b!1739024 res!781706) b!1739056))

(assert (= (and b!1739056 res!781693) b!1739058))

(assert (= (and b!1739024 (not res!781684)) b!1739022))

(assert (= (and b!1739022 (not res!781692)) b!1739064))

(assert (= (and b!1739064 (not res!781687)) b!1739059))

(assert (= (and b!1739059 (not res!781707)) b!1739033))

(assert (= (and b!1739033 (not res!781704)) b!1739032))

(assert (= (and b!1739032 (not res!781697)) b!1739055))

(assert (= (and b!1739055 (not res!781694)) b!1739029))

(assert (= (and b!1739029 c!283780) b!1739030))

(assert (= (and b!1739029 (not c!283780)) b!1739040))

(assert (= (and b!1739029 (not res!781702)) b!1739049))

(assert (= (and b!1739049 c!283781) b!1739039))

(assert (= (and b!1739049 (not c!283781)) b!1739050))

(assert (= (and b!1739049 (not res!781689)) b!1739063))

(assert (= (and b!1739063 (not res!781705)) b!1739053))

(assert (= (and b!1739053 c!283782) b!1739043))

(assert (= (and b!1739053 (not c!283782)) b!1739034))

(assert (= (and b!1739043 res!781695) b!1739035))

(assert (= (and b!1739053 c!283783) b!1739041))

(assert (= (and b!1739053 (not c!283783)) b!1739037))

(assert (= (and b!1739041 res!781685) b!1739046))

(assert (= (and b!1739053 (not res!781703)) b!1739061))

(assert (= (and b!1739061 (not res!781701)) b!1739031))

(assert (= (and start!171146 ((_ is Cons!19100) suffix!1421)) b!1739057))

(assert (= b!1739054 b!1739051))

(assert (= start!171146 b!1739054))

(assert (= b!1739038 b!1739042))

(assert (= b!1739047 b!1739038))

(assert (= start!171146 b!1739047))

(assert (= b!1739028 b!1739065))

(assert (= b!1739027 b!1739028))

(assert (= (and start!171146 ((_ is Cons!19101) rules!3447)) b!1739027))

(declare-fun b_lambda!55679 () Bool)

(assert (=> (not b_lambda!55679) (not b!1739033)))

(declare-fun tb!103917 () Bool)

(declare-fun t!161651 () Bool)

(assert (=> (and b!1739051 (= (toChars!4765 (transformation!3399 rule!422)) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161651) tb!103917))

(declare-fun b!1739081 () Bool)

(declare-fun e!1113014 () Bool)

(declare-fun tp!495343 () Bool)

(declare-fun inv!24747 (Conc!6353) Bool)

(assert (=> b!1739081 (= e!1113014 (and (inv!24747 (c!283785 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (value!106544 (_1!10781 lt!669838))))) tp!495343))))

(declare-fun result!124976 () Bool)

(declare-fun inv!24748 (BalanceConc!12650) Bool)

(assert (=> tb!103917 (= result!124976 (and (inv!24748 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (value!106544 (_1!10781 lt!669838)))) e!1113014))))

(assert (= tb!103917 b!1739081))

(declare-fun m!2149515 () Bool)

(assert (=> b!1739081 m!2149515))

(declare-fun m!2149517 () Bool)

(assert (=> tb!103917 m!2149517))

(assert (=> b!1739033 t!161651))

(declare-fun b_and!129079 () Bool)

(assert (= b_and!129069 (and (=> t!161651 result!124976) b_and!129079)))

(declare-fun t!161653 () Bool)

(declare-fun tb!103919 () Bool)

(assert (=> (and b!1739065 (= (toChars!4765 (transformation!3399 (h!24502 rules!3447))) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161653) tb!103919))

(declare-fun result!124980 () Bool)

(assert (= result!124980 result!124976))

(assert (=> b!1739033 t!161653))

(declare-fun b_and!129081 () Bool)

(assert (= b_and!129073 (and (=> t!161653 result!124980) b_and!129081)))

(declare-fun tb!103921 () Bool)

(declare-fun t!161655 () Bool)

(assert (=> (and b!1739042 (= (toChars!4765 (transformation!3399 (rule!5397 token!523))) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161655) tb!103921))

(declare-fun result!124982 () Bool)

(assert (= result!124982 result!124976))

(assert (=> b!1739033 t!161655))

(declare-fun b_and!129083 () Bool)

(assert (= b_and!129077 (and (=> t!161655 result!124982) b_and!129083)))

(declare-fun b_lambda!55681 () Bool)

(assert (=> (not b_lambda!55681) (not b!1739059)))

(declare-fun t!161657 () Bool)

(declare-fun tb!103923 () Bool)

(assert (=> (and b!1739051 (= (toChars!4765 (transformation!3399 rule!422)) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161657) tb!103923))

(declare-fun b!1739082 () Bool)

(declare-fun tp!495344 () Bool)

(declare-fun e!1113015 () Bool)

(assert (=> b!1739082 (= e!1113015 (and (inv!24747 (c!283785 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (dynLambda!9012 (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) lt!669864)))) tp!495344))))

(declare-fun result!124984 () Bool)

(assert (=> tb!103923 (= result!124984 (and (inv!24748 (dynLambda!9011 (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) (dynLambda!9012 (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) lt!669864))) e!1113015))))

(assert (= tb!103923 b!1739082))

(declare-fun m!2149519 () Bool)

(assert (=> b!1739082 m!2149519))

(declare-fun m!2149521 () Bool)

(assert (=> tb!103923 m!2149521))

(assert (=> b!1739059 t!161657))

(declare-fun b_and!129085 () Bool)

(assert (= b_and!129079 (and (=> t!161657 result!124984) b_and!129085)))

(declare-fun tb!103925 () Bool)

(declare-fun t!161659 () Bool)

(assert (=> (and b!1739065 (= (toChars!4765 (transformation!3399 (h!24502 rules!3447))) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161659) tb!103925))

(declare-fun result!124986 () Bool)

(assert (= result!124986 result!124984))

(assert (=> b!1739059 t!161659))

(declare-fun b_and!129087 () Bool)

(assert (= b_and!129081 (and (=> t!161659 result!124986) b_and!129087)))

(declare-fun t!161661 () Bool)

(declare-fun tb!103927 () Bool)

(assert (=> (and b!1739042 (= (toChars!4765 (transformation!3399 (rule!5397 token!523))) (toChars!4765 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161661) tb!103927))

(declare-fun result!124988 () Bool)

(assert (= result!124988 result!124984))

(assert (=> b!1739059 t!161661))

(declare-fun b_and!129089 () Bool)

(assert (= b_and!129083 (and (=> t!161661 result!124988) b_and!129089)))

(declare-fun b_lambda!55683 () Bool)

(assert (=> (not b_lambda!55683) (not b!1739059)))

(declare-fun t!161663 () Bool)

(declare-fun tb!103929 () Bool)

(assert (=> (and b!1739051 (= (toValue!4906 (transformation!3399 rule!422)) (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161663) tb!103929))

(declare-fun result!124990 () Bool)

(assert (=> tb!103929 (= result!124990 (inv!21 (dynLambda!9012 (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838)))) lt!669864)))))

(declare-fun m!2149523 () Bool)

(assert (=> tb!103929 m!2149523))

(assert (=> b!1739059 t!161663))

(declare-fun b_and!129091 () Bool)

(assert (= b_and!129067 (and (=> t!161663 result!124990) b_and!129091)))

(declare-fun t!161665 () Bool)

(declare-fun tb!103931 () Bool)

(assert (=> (and b!1739065 (= (toValue!4906 (transformation!3399 (h!24502 rules!3447))) (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161665) tb!103931))

(declare-fun result!124994 () Bool)

(assert (= result!124994 result!124990))

(assert (=> b!1739059 t!161665))

(declare-fun b_and!129093 () Bool)

(assert (= b_and!129071 (and (=> t!161665 result!124994) b_and!129093)))

(declare-fun t!161667 () Bool)

(declare-fun tb!103933 () Bool)

(assert (=> (and b!1739042 (= (toValue!4906 (transformation!3399 (rule!5397 token!523))) (toValue!4906 (transformation!3399 (rule!5397 (_1!10781 lt!669838))))) t!161667) tb!103933))

(declare-fun result!124996 () Bool)

(assert (= result!124996 result!124990))

(assert (=> b!1739059 t!161667))

(declare-fun b_and!129095 () Bool)

(assert (= b_and!129075 (and (=> t!161667 result!124996) b_and!129095)))

(declare-fun m!2149525 () Bool)

(assert (=> start!171146 m!2149525))

(declare-fun m!2149527 () Bool)

(assert (=> b!1739047 m!2149527))

(declare-fun m!2149529 () Bool)

(assert (=> b!1739062 m!2149529))

(declare-fun m!2149531 () Bool)

(assert (=> b!1739062 m!2149531))

(declare-fun m!2149533 () Bool)

(assert (=> b!1739062 m!2149533))

(declare-fun m!2149535 () Bool)

(assert (=> b!1739062 m!2149535))

(declare-fun m!2149537 () Bool)

(assert (=> b!1739039 m!2149537))

(declare-fun m!2149539 () Bool)

(assert (=> b!1739029 m!2149539))

(declare-fun m!2149541 () Bool)

(assert (=> b!1739029 m!2149541))

(declare-fun m!2149543 () Bool)

(assert (=> b!1739029 m!2149543))

(declare-fun m!2149545 () Bool)

(assert (=> b!1739028 m!2149545))

(declare-fun m!2149547 () Bool)

(assert (=> b!1739028 m!2149547))

(declare-fun m!2149549 () Bool)

(assert (=> b!1739064 m!2149549))

(declare-fun m!2149551 () Bool)

(assert (=> b!1739064 m!2149551))

(declare-fun m!2149553 () Bool)

(assert (=> b!1739026 m!2149553))

(declare-fun m!2149555 () Bool)

(assert (=> b!1739026 m!2149555))

(declare-fun m!2149557 () Bool)

(assert (=> b!1739026 m!2149557))

(declare-fun m!2149559 () Bool)

(assert (=> b!1739059 m!2149559))

(assert (=> b!1739059 m!2149559))

(declare-fun m!2149561 () Bool)

(assert (=> b!1739059 m!2149561))

(assert (=> b!1739059 m!2149561))

(declare-fun m!2149563 () Bool)

(assert (=> b!1739059 m!2149563))

(declare-fun m!2149565 () Bool)

(assert (=> b!1739059 m!2149565))

(declare-fun m!2149567 () Bool)

(assert (=> b!1739044 m!2149567))

(declare-fun m!2149569 () Bool)

(assert (=> b!1739033 m!2149569))

(declare-fun m!2149571 () Bool)

(assert (=> b!1739041 m!2149571))

(declare-fun m!2149573 () Bool)

(assert (=> b!1739041 m!2149573))

(declare-fun m!2149575 () Bool)

(assert (=> b!1739054 m!2149575))

(declare-fun m!2149577 () Bool)

(assert (=> b!1739054 m!2149577))

(declare-fun m!2149579 () Bool)

(assert (=> b!1739048 m!2149579))

(declare-fun m!2149581 () Bool)

(assert (=> b!1739055 m!2149581))

(declare-fun m!2149583 () Bool)

(assert (=> b!1739055 m!2149583))

(declare-fun m!2149585 () Bool)

(assert (=> b!1739055 m!2149585))

(declare-fun m!2149587 () Bool)

(assert (=> b!1739055 m!2149587))

(assert (=> b!1739055 m!2149587))

(declare-fun m!2149589 () Bool)

(assert (=> b!1739055 m!2149589))

(declare-fun m!2149591 () Bool)

(assert (=> b!1739055 m!2149591))

(declare-fun m!2149593 () Bool)

(assert (=> b!1739055 m!2149593))

(declare-fun m!2149595 () Bool)

(assert (=> b!1739053 m!2149595))

(declare-fun m!2149597 () Bool)

(assert (=> b!1739053 m!2149597))

(declare-fun m!2149599 () Bool)

(assert (=> b!1739063 m!2149599))

(declare-fun m!2149601 () Bool)

(assert (=> b!1739063 m!2149601))

(declare-fun m!2149603 () Bool)

(assert (=> b!1739060 m!2149603))

(declare-fun m!2149605 () Bool)

(assert (=> b!1739056 m!2149605))

(assert (=> b!1739056 m!2149605))

(declare-fun m!2149607 () Bool)

(assert (=> b!1739056 m!2149607))

(assert (=> b!1739056 m!2149607))

(declare-fun m!2149609 () Bool)

(assert (=> b!1739056 m!2149609))

(declare-fun m!2149611 () Bool)

(assert (=> b!1739056 m!2149611))

(declare-fun m!2149613 () Bool)

(assert (=> b!1739032 m!2149613))

(declare-fun m!2149615 () Bool)

(assert (=> b!1739032 m!2149615))

(declare-fun m!2149617 () Bool)

(assert (=> b!1739032 m!2149617))

(declare-fun m!2149619 () Bool)

(assert (=> b!1739032 m!2149619))

(assert (=> b!1739032 m!2149613))

(declare-fun m!2149621 () Bool)

(assert (=> b!1739032 m!2149621))

(declare-fun m!2149623 () Bool)

(assert (=> b!1739043 m!2149623))

(declare-fun m!2149625 () Bool)

(assert (=> b!1739043 m!2149625))

(declare-fun m!2149627 () Bool)

(assert (=> b!1739052 m!2149627))

(declare-fun m!2149629 () Bool)

(assert (=> b!1739061 m!2149629))

(declare-fun m!2149631 () Bool)

(assert (=> b!1739022 m!2149631))

(declare-fun m!2149633 () Bool)

(assert (=> b!1739024 m!2149633))

(declare-fun m!2149635 () Bool)

(assert (=> b!1739024 m!2149635))

(declare-fun m!2149637 () Bool)

(assert (=> b!1739024 m!2149637))

(declare-fun m!2149639 () Bool)

(assert (=> b!1739024 m!2149639))

(declare-fun m!2149641 () Bool)

(assert (=> b!1739024 m!2149641))

(assert (=> b!1739024 m!2149605))

(declare-fun m!2149643 () Bool)

(assert (=> b!1739024 m!2149643))

(declare-fun m!2149645 () Bool)

(assert (=> b!1739024 m!2149645))

(declare-fun m!2149647 () Bool)

(assert (=> b!1739024 m!2149647))

(declare-fun m!2149649 () Bool)

(assert (=> b!1739024 m!2149649))

(declare-fun m!2149651 () Bool)

(assert (=> b!1739024 m!2149651))

(declare-fun m!2149653 () Bool)

(assert (=> b!1739024 m!2149653))

(declare-fun m!2149655 () Bool)

(assert (=> b!1739024 m!2149655))

(declare-fun m!2149657 () Bool)

(assert (=> b!1739024 m!2149657))

(declare-fun m!2149659 () Bool)

(assert (=> b!1739024 m!2149659))

(assert (=> b!1739024 m!2149651))

(declare-fun m!2149661 () Bool)

(assert (=> b!1739031 m!2149661))

(declare-fun m!2149663 () Bool)

(assert (=> b!1739036 m!2149663))

(declare-fun m!2149665 () Bool)

(assert (=> b!1739030 m!2149665))

(declare-fun m!2149667 () Bool)

(assert (=> b!1739030 m!2149667))

(declare-fun m!2149669 () Bool)

(assert (=> b!1739030 m!2149669))

(declare-fun m!2149671 () Bool)

(assert (=> b!1739030 m!2149671))

(declare-fun m!2149673 () Bool)

(assert (=> b!1739030 m!2149673))

(declare-fun m!2149675 () Bool)

(assert (=> b!1739030 m!2149675))

(declare-fun m!2149677 () Bool)

(assert (=> b!1739030 m!2149677))

(declare-fun m!2149679 () Bool)

(assert (=> b!1739030 m!2149679))

(declare-fun m!2149681 () Bool)

(assert (=> b!1739030 m!2149681))

(declare-fun m!2149683 () Bool)

(assert (=> b!1739030 m!2149683))

(assert (=> b!1739030 m!2149665))

(declare-fun m!2149685 () Bool)

(assert (=> b!1739030 m!2149685))

(declare-fun m!2149687 () Bool)

(assert (=> b!1739038 m!2149687))

(declare-fun m!2149689 () Bool)

(assert (=> b!1739038 m!2149689))

(declare-fun m!2149691 () Bool)

(assert (=> b!1739045 m!2149691))

(declare-fun m!2149693 () Bool)

(assert (=> b!1739045 m!2149693))

(declare-fun m!2149695 () Bool)

(assert (=> b!1739045 m!2149695))

(declare-fun m!2149697 () Bool)

(assert (=> b!1739045 m!2149697))

(declare-fun m!2149699 () Bool)

(assert (=> b!1739023 m!2149699))

(check-sat (not b!1739082) (not b!1739053) (not b!1739039) (not b!1739038) (not b_next!48467) b_and!129095 (not b_lambda!55681) b_and!129085 b_and!129093 (not b!1739052) b_and!129087 (not b!1739032) (not b!1739061) (not b_next!48463) (not b!1739060) (not b!1739036) (not b!1739029) (not b!1739028) tp_is_empty!7697 (not b!1739064) (not b!1739048) (not b_next!48465) (not b!1739063) (not b!1739062) (not b_lambda!55683) b_and!129089 (not b!1739043) (not b!1739047) (not start!171146) (not b!1739027) (not b_next!48459) (not b_lambda!55679) (not b!1739045) (not b_next!48461) (not b!1739056) (not b!1739024) (not b_next!48469) (not tb!103929) (not b!1739030) (not b!1739054) (not b!1739041) (not b!1739081) (not tb!103917) (not b!1739026) (not b!1739059) (not b!1739057) b_and!129091 (not b!1739031) (not b!1739023) (not b!1739044) (not b!1739022) (not b!1739055) (not tb!103923))
(check-sat (not b_next!48463) (not b_next!48465) b_and!129089 (not b_next!48467) (not b_next!48459) b_and!129095 (not b_next!48461) (not b_next!48469) b_and!129085 b_and!129093 b_and!129091 b_and!129087)
