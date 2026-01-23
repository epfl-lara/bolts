; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371712 () Bool)

(assert start!371712)

(declare-fun b!3953849 () Bool)

(declare-fun b_free!108861 () Bool)

(declare-fun b_next!109565 () Bool)

(assert (=> b!3953849 (= b_free!108861 (not b_next!109565))))

(declare-fun tp!1204876 () Bool)

(declare-fun b_and!303151 () Bool)

(assert (=> b!3953849 (= tp!1204876 b_and!303151)))

(declare-fun b_free!108863 () Bool)

(declare-fun b_next!109567 () Bool)

(assert (=> b!3953849 (= b_free!108863 (not b_next!109567))))

(declare-fun tp!1204884 () Bool)

(declare-fun b_and!303153 () Bool)

(assert (=> b!3953849 (= tp!1204884 b_and!303153)))

(declare-fun b!3953863 () Bool)

(declare-fun b_free!108865 () Bool)

(declare-fun b_next!109569 () Bool)

(assert (=> b!3953863 (= b_free!108865 (not b_next!109569))))

(declare-fun tp!1204881 () Bool)

(declare-fun b_and!303155 () Bool)

(assert (=> b!3953863 (= tp!1204881 b_and!303155)))

(declare-fun b_free!108867 () Bool)

(declare-fun b_next!109571 () Bool)

(assert (=> b!3953863 (= b_free!108867 (not b_next!109571))))

(declare-fun tp!1204870 () Bool)

(declare-fun b_and!303157 () Bool)

(assert (=> b!3953863 (= tp!1204870 b_and!303157)))

(declare-fun b!3953857 () Bool)

(declare-fun b_free!108869 () Bool)

(declare-fun b_next!109573 () Bool)

(assert (=> b!3953857 (= b_free!108869 (not b_next!109573))))

(declare-fun tp!1204871 () Bool)

(declare-fun b_and!303159 () Bool)

(assert (=> b!3953857 (= tp!1204871 b_and!303159)))

(declare-fun b_free!108871 () Bool)

(declare-fun b_next!109575 () Bool)

(assert (=> b!3953857 (= b_free!108871 (not b_next!109575))))

(declare-fun tp!1204877 () Bool)

(declare-fun b_and!303161 () Bool)

(assert (=> b!3953857 (= tp!1204877 b_and!303161)))

(declare-fun b!3953842 () Bool)

(declare-fun res!1599911 () Bool)

(declare-fun e!2447753 () Bool)

(assert (=> b!3953842 (=> res!1599911 e!2447753)))

(declare-datatypes ((C!23180 0))(
  ( (C!23181 (val!13684 Int)) )
))
(declare-datatypes ((List!42205 0))(
  ( (Nil!42081) (Cons!42081 (h!47501 C!23180) (t!328942 List!42205)) )
))
(declare-fun lt!1382469 () List!42205)

(declare-fun lt!1382468 () List!42205)

(assert (=> b!3953842 (= res!1599911 (not (= lt!1382469 lt!1382468)))))

(declare-fun b!3953843 () Bool)

(declare-fun res!1599909 () Bool)

(declare-fun e!2447754 () Bool)

(assert (=> b!3953843 (=> res!1599909 e!2447754)))

(declare-fun suffix!1176 () List!42205)

(declare-datatypes ((List!42206 0))(
  ( (Nil!42082) (Cons!42082 (h!47502 (_ BitVec 16)) (t!328943 List!42206)) )
))
(declare-datatypes ((TokenValue!6822 0))(
  ( (FloatLiteralValue!13644 (text!48199 List!42206)) (TokenValueExt!6821 (__x!25861 Int)) (Broken!34110 (value!208480 List!42206)) (Object!6945) (End!6822) (Def!6822) (Underscore!6822) (Match!6822) (Else!6822) (Error!6822) (Case!6822) (If!6822) (Extends!6822) (Abstract!6822) (Class!6822) (Val!6822) (DelimiterValue!13644 (del!6882 List!42206)) (KeywordValue!6828 (value!208481 List!42206)) (CommentValue!13644 (value!208482 List!42206)) (WhitespaceValue!13644 (value!208483 List!42206)) (IndentationValue!6822 (value!208484 List!42206)) (String!47827) (Int32!6822) (Broken!34111 (value!208485 List!42206)) (Boolean!6823) (Unit!60579) (OperatorValue!6825 (op!6882 List!42206)) (IdentifierValue!13644 (value!208486 List!42206)) (IdentifierValue!13645 (value!208487 List!42206)) (WhitespaceValue!13645 (value!208488 List!42206)) (True!13644) (False!13644) (Broken!34112 (value!208489 List!42206)) (Broken!34113 (value!208490 List!42206)) (True!13645) (RightBrace!6822) (RightBracket!6822) (Colon!6822) (Null!6822) (Comma!6822) (LeftBracket!6822) (False!13645) (LeftBrace!6822) (ImaginaryLiteralValue!6822 (text!48200 List!42206)) (StringLiteralValue!20466 (value!208491 List!42206)) (EOFValue!6822 (value!208492 List!42206)) (IdentValue!6822 (value!208493 List!42206)) (DelimiterValue!13645 (value!208494 List!42206)) (DedentValue!6822 (value!208495 List!42206)) (NewLineValue!6822 (value!208496 List!42206)) (IntegerValue!20466 (value!208497 (_ BitVec 32)) (text!48201 List!42206)) (IntegerValue!20467 (value!208498 Int) (text!48202 List!42206)) (Times!6822) (Or!6822) (Equal!6822) (Minus!6822) (Broken!34114 (value!208499 List!42206)) (And!6822) (Div!6822) (LessEqual!6822) (Mod!6822) (Concat!18319) (Not!6822) (Plus!6822) (SpaceValue!6822 (value!208500 List!42206)) (IntegerValue!20468 (value!208501 Int) (text!48203 List!42206)) (StringLiteralValue!20467 (text!48204 List!42206)) (FloatLiteralValue!13645 (text!48205 List!42206)) (BytesLiteralValue!6822 (value!208502 List!42206)) (CommentValue!13645 (value!208503 List!42206)) (StringLiteralValue!20468 (value!208504 List!42206)) (ErrorTokenValue!6822 (msg!6883 List!42206)) )
))
(declare-datatypes ((Regex!11497 0))(
  ( (ElementMatch!11497 (c!686320 C!23180)) (Concat!18320 (regOne!23506 Regex!11497) (regTwo!23506 Regex!11497)) (EmptyExpr!11497) (Star!11497 (reg!11826 Regex!11497)) (EmptyLang!11497) (Union!11497 (regOne!23507 Regex!11497) (regTwo!23507 Regex!11497)) )
))
(declare-datatypes ((String!47828 0))(
  ( (String!47829 (value!208505 String)) )
))
(declare-datatypes ((IArray!25611 0))(
  ( (IArray!25612 (innerList!12863 List!42205)) )
))
(declare-datatypes ((Conc!12803 0))(
  ( (Node!12803 (left!31977 Conc!12803) (right!32307 Conc!12803) (csize!25836 Int) (cheight!13014 Int)) (Leaf!19806 (xs!16109 IArray!25611) (csize!25837 Int)) (Empty!12803) )
))
(declare-datatypes ((BalanceConc!25200 0))(
  ( (BalanceConc!25201 (c!686321 Conc!12803)) )
))
(declare-datatypes ((TokenValueInjection!13072 0))(
  ( (TokenValueInjection!13073 (toValue!9068 Int) (toChars!8927 Int)) )
))
(declare-datatypes ((Rule!12984 0))(
  ( (Rule!12985 (regex!6592 Regex!11497) (tag!7452 String!47828) (isSeparator!6592 Bool) (transformation!6592 TokenValueInjection!13072)) )
))
(declare-datatypes ((Token!12322 0))(
  ( (Token!12323 (value!208506 TokenValue!6822) (rule!9562 Rule!12984) (size!31524 Int) (originalCharacters!7192 List!42205)) )
))
(declare-datatypes ((List!42207 0))(
  ( (Nil!42083) (Cons!42083 (h!47503 Token!12322) (t!328944 List!42207)) )
))
(declare-datatypes ((tuple2!41366 0))(
  ( (tuple2!41367 (_1!23817 List!42207) (_2!23817 List!42205)) )
))
(declare-fun lt!1382458 () tuple2!41366)

(declare-datatypes ((tuple2!41368 0))(
  ( (tuple2!41369 (_1!23818 Token!12322) (_2!23818 List!42205)) )
))
(declare-datatypes ((Option!9012 0))(
  ( (None!9011) (Some!9011 (v!39353 tuple2!41368)) )
))
(declare-fun lt!1382459 () Option!9012)

(assert (=> b!3953843 (= res!1599909 (or (not (= lt!1382458 (tuple2!41367 (_1!23817 lt!1382458) (_2!23817 lt!1382458)))) (= (_2!23818 (v!39353 lt!1382459)) suffix!1176)))))

(declare-fun b!3953844 () Bool)

(declare-fun e!2447764 () Bool)

(declare-fun tp_is_empty!19965 () Bool)

(declare-fun tp!1204883 () Bool)

(assert (=> b!3953844 (= e!2447764 (and tp_is_empty!19965 tp!1204883))))

(declare-fun b!3953845 () Bool)

(declare-fun e!2447762 () Bool)

(assert (=> b!3953845 (= e!2447762 (not e!2447754))))

(declare-fun res!1599897 () Bool)

(assert (=> b!3953845 (=> res!1599897 e!2447754)))

(assert (=> b!3953845 (= res!1599897 (not (= lt!1382468 lt!1382469)))))

(declare-datatypes ((LexerInterface!6181 0))(
  ( (LexerInterfaceExt!6178 (__x!25862 Int)) (Lexer!6179) )
))
(declare-fun thiss!20629 () LexerInterface!6181)

(declare-datatypes ((List!42208 0))(
  ( (Nil!42084) (Cons!42084 (h!47504 Rule!12984) (t!328945 List!42208)) )
))
(declare-fun rules!2768 () List!42208)

(declare-fun lexList!1949 (LexerInterface!6181 List!42208 List!42205) tuple2!41366)

(assert (=> b!3953845 (= lt!1382458 (lexList!1949 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382459))))))

(declare-fun lt!1382462 () Int)

(declare-fun lt!1382460 () List!42205)

(declare-fun lt!1382455 () List!42205)

(declare-fun lt!1382457 () TokenValue!6822)

(assert (=> b!3953845 (and (= (size!31524 (_1!23818 (v!39353 lt!1382459))) lt!1382462) (= (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459))) lt!1382455) (= (v!39353 lt!1382459) (tuple2!41369 (Token!12323 lt!1382457 (rule!9562 (_1!23818 (v!39353 lt!1382459))) lt!1382462 lt!1382455) lt!1382460)))))

(declare-fun size!31525 (List!42205) Int)

(assert (=> b!3953845 (= lt!1382462 (size!31525 lt!1382455))))

(declare-fun e!2447767 () Bool)

(assert (=> b!3953845 e!2447767))

(declare-fun res!1599899 () Bool)

(assert (=> b!3953845 (=> (not res!1599899) (not e!2447767))))

(assert (=> b!3953845 (= res!1599899 (= (value!208506 (_1!23818 (v!39353 lt!1382459))) lt!1382457))))

(declare-fun apply!9823 (TokenValueInjection!13072 BalanceConc!25200) TokenValue!6822)

(declare-fun seqFromList!4851 (List!42205) BalanceConc!25200)

(assert (=> b!3953845 (= lt!1382457 (apply!9823 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))) (seqFromList!4851 lt!1382455)))))

(assert (=> b!3953845 (= (_2!23818 (v!39353 lt!1382459)) lt!1382460)))

(declare-datatypes ((Unit!60580 0))(
  ( (Unit!60581) )
))
(declare-fun lt!1382461 () Unit!60580)

(declare-fun lemmaSamePrefixThenSameSuffix!1890 (List!42205 List!42205 List!42205 List!42205 List!42205) Unit!60580)

(assert (=> b!3953845 (= lt!1382461 (lemmaSamePrefixThenSameSuffix!1890 lt!1382455 (_2!23818 (v!39353 lt!1382459)) lt!1382455 lt!1382460 lt!1382469))))

(declare-fun getSuffix!2132 (List!42205 List!42205) List!42205)

(assert (=> b!3953845 (= lt!1382460 (getSuffix!2132 lt!1382469 lt!1382455))))

(declare-fun isPrefix!3681 (List!42205 List!42205) Bool)

(assert (=> b!3953845 (isPrefix!3681 lt!1382455 lt!1382468)))

(declare-fun ++!10941 (List!42205 List!42205) List!42205)

(assert (=> b!3953845 (= lt!1382468 (++!10941 lt!1382455 (_2!23818 (v!39353 lt!1382459))))))

(declare-fun lt!1382470 () Unit!60580)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2540 (List!42205 List!42205) Unit!60580)

(assert (=> b!3953845 (= lt!1382470 (lemmaConcatTwoListThenFirstIsPrefix!2540 lt!1382455 (_2!23818 (v!39353 lt!1382459))))))

(declare-fun list!15624 (BalanceConc!25200) List!42205)

(declare-fun charsOf!4410 (Token!12322) BalanceConc!25200)

(assert (=> b!3953845 (= lt!1382455 (list!15624 (charsOf!4410 (_1!23818 (v!39353 lt!1382459)))))))

(declare-fun ruleValid!2534 (LexerInterface!6181 Rule!12984) Bool)

(assert (=> b!3953845 (ruleValid!2534 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459))))))

(declare-fun lt!1382465 () Unit!60580)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1610 (LexerInterface!6181 Rule!12984 List!42208) Unit!60580)

(assert (=> b!3953845 (= lt!1382465 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1610 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459))) rules!2768))))

(declare-fun lt!1382463 () Unit!60580)

(declare-fun lemmaCharactersSize!1245 (Token!12322) Unit!60580)

(assert (=> b!3953845 (= lt!1382463 (lemmaCharactersSize!1245 (_1!23818 (v!39353 lt!1382459))))))

(declare-fun tp!1204879 () Bool)

(declare-fun b!3953846 () Bool)

(declare-fun prefixTokens!80 () List!42207)

(declare-fun e!2447765 () Bool)

(declare-fun e!2447760 () Bool)

(declare-fun inv!56303 (String!47828) Bool)

(declare-fun inv!56306 (TokenValueInjection!13072) Bool)

(assert (=> b!3953846 (= e!2447765 (and tp!1204879 (inv!56303 (tag!7452 (rule!9562 (h!47503 prefixTokens!80)))) (inv!56306 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) e!2447760))))

(declare-fun b!3953847 () Bool)

(declare-fun res!1599904 () Bool)

(declare-fun e!2447756 () Bool)

(assert (=> b!3953847 (=> (not res!1599904) (not e!2447756))))

(declare-fun suffixResult!91 () List!42205)

(declare-fun suffixTokens!72 () List!42207)

(assert (=> b!3953847 (= res!1599904 (= (lexList!1949 thiss!20629 rules!2768 suffix!1176) (tuple2!41367 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3953848 () Bool)

(declare-fun e!2447750 () Bool)

(declare-fun tp!1204875 () Bool)

(assert (=> b!3953848 (= e!2447750 (and tp_is_empty!19965 tp!1204875))))

(declare-fun res!1599907 () Bool)

(declare-fun e!2447759 () Bool)

(assert (=> start!371712 (=> (not res!1599907) (not e!2447759))))

(get-info :version)

(assert (=> start!371712 (= res!1599907 ((_ is Lexer!6179) thiss!20629))))

(assert (=> start!371712 e!2447759))

(assert (=> start!371712 e!2447750))

(assert (=> start!371712 true))

(declare-fun e!2447755 () Bool)

(assert (=> start!371712 e!2447755))

(declare-fun e!2447758 () Bool)

(assert (=> start!371712 e!2447758))

(declare-fun e!2447763 () Bool)

(assert (=> start!371712 e!2447763))

(declare-fun e!2447771 () Bool)

(assert (=> start!371712 e!2447771))

(assert (=> start!371712 e!2447764))

(declare-fun e!2447746 () Bool)

(assert (=> b!3953849 (= e!2447746 (and tp!1204876 tp!1204884))))

(declare-fun b!3953850 () Bool)

(assert (=> b!3953850 (= e!2447756 e!2447762)))

(declare-fun res!1599901 () Bool)

(assert (=> b!3953850 (=> (not res!1599901) (not e!2447762))))

(assert (=> b!3953850 (= res!1599901 ((_ is Some!9011) lt!1382459))))

(declare-fun maxPrefix!3485 (LexerInterface!6181 List!42208 List!42205) Option!9012)

(assert (=> b!3953850 (= lt!1382459 (maxPrefix!3485 thiss!20629 rules!2768 lt!1382469))))

(declare-fun tp!1204868 () Bool)

(declare-fun b!3953851 () Bool)

(declare-fun e!2447751 () Bool)

(declare-fun inv!56307 (Token!12322) Bool)

(assert (=> b!3953851 (= e!2447771 (and (inv!56307 (h!47503 suffixTokens!72)) e!2447751 tp!1204868))))

(declare-fun b!3953852 () Bool)

(declare-fun e!2447752 () Bool)

(declare-fun e!2447768 () Bool)

(assert (=> b!3953852 (= e!2447752 e!2447768)))

(declare-fun res!1599900 () Bool)

(assert (=> b!3953852 (=> res!1599900 e!2447768)))

(declare-fun lt!1382466 () Int)

(declare-fun lt!1382456 () Int)

(assert (=> b!3953852 (= res!1599900 (not (= (+ lt!1382462 lt!1382456) lt!1382466)))))

(assert (=> b!3953852 (= lt!1382466 (size!31525 lt!1382469))))

(declare-fun b!3953853 () Bool)

(declare-fun tp!1204872 () Bool)

(assert (=> b!3953853 (= e!2447755 (and tp_is_empty!19965 tp!1204872))))

(declare-fun b!3953854 () Bool)

(declare-fun res!1599902 () Bool)

(assert (=> b!3953854 (=> (not res!1599902) (not e!2447759))))

(declare-fun isEmpty!25146 (List!42208) Bool)

(assert (=> b!3953854 (= res!1599902 (not (isEmpty!25146 rules!2768)))))

(declare-fun b!3953855 () Bool)

(declare-fun res!1599895 () Bool)

(assert (=> b!3953855 (=> (not res!1599895) (not e!2447759))))

(declare-fun prefix!426 () List!42205)

(declare-fun isEmpty!25147 (List!42205) Bool)

(assert (=> b!3953855 (= res!1599895 (not (isEmpty!25147 prefix!426)))))

(declare-fun tp!1204882 () Bool)

(declare-fun b!3953856 () Bool)

(declare-fun e!2447772 () Bool)

(assert (=> b!3953856 (= e!2447763 (and (inv!56307 (h!47503 prefixTokens!80)) e!2447772 tp!1204882))))

(assert (=> b!3953857 (= e!2447760 (and tp!1204871 tp!1204877))))

(declare-fun b!3953858 () Bool)

(declare-fun res!1599898 () Bool)

(assert (=> b!3953858 (=> (not res!1599898) (not e!2447759))))

(declare-fun isEmpty!25148 (List!42207) Bool)

(assert (=> b!3953858 (= res!1599898 (not (isEmpty!25148 prefixTokens!80)))))

(declare-fun tp!1204878 () Bool)

(declare-fun e!2447761 () Bool)

(declare-fun b!3953859 () Bool)

(declare-fun inv!21 (TokenValue!6822) Bool)

(assert (=> b!3953859 (= e!2447751 (and (inv!21 (value!208506 (h!47503 suffixTokens!72))) e!2447761 tp!1204878))))

(declare-fun b!3953860 () Bool)

(assert (=> b!3953860 (= e!2447753 (not (isEmpty!25147 lt!1382455)))))

(declare-fun b!3953861 () Bool)

(declare-fun res!1599910 () Bool)

(assert (=> b!3953861 (=> (not res!1599910) (not e!2447759))))

(declare-fun rulesInvariant!5524 (LexerInterface!6181 List!42208) Bool)

(assert (=> b!3953861 (= res!1599910 (rulesInvariant!5524 thiss!20629 rules!2768))))

(declare-fun b!3953862 () Bool)

(declare-fun e!2447747 () Bool)

(declare-fun tp!1204873 () Bool)

(assert (=> b!3953862 (= e!2447758 (and e!2447747 tp!1204873))))

(declare-fun e!2447748 () Bool)

(assert (=> b!3953863 (= e!2447748 (and tp!1204881 tp!1204870))))

(declare-fun b!3953864 () Bool)

(assert (=> b!3953864 (= e!2447768 e!2447753)))

(declare-fun res!1599906 () Bool)

(assert (=> b!3953864 (=> res!1599906 e!2447753)))

(declare-fun lt!1382454 () Int)

(declare-fun lt!1382471 () Int)

(assert (=> b!3953864 (= res!1599906 (or (not (= (+ lt!1382454 lt!1382471) lt!1382466)) (<= lt!1382462 lt!1382454)))))

(assert (=> b!3953864 (= lt!1382454 (size!31525 prefix!426))))

(declare-fun b!3953865 () Bool)

(declare-fun res!1599896 () Bool)

(assert (=> b!3953865 (=> res!1599896 e!2447753)))

(declare-fun contains!8414 (List!42208 Rule!12984) Bool)

(assert (=> b!3953865 (= res!1599896 (not (contains!8414 rules!2768 (rule!9562 (_1!23818 (v!39353 lt!1382459))))))))

(declare-fun b!3953866 () Bool)

(assert (=> b!3953866 (= e!2447767 (= (size!31524 (_1!23818 (v!39353 lt!1382459))) (size!31525 (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459))))))))

(declare-fun tp!1204874 () Bool)

(declare-fun b!3953867 () Bool)

(assert (=> b!3953867 (= e!2447772 (and (inv!21 (value!208506 (h!47503 prefixTokens!80))) e!2447765 tp!1204874))))

(declare-fun b!3953868 () Bool)

(declare-fun res!1599903 () Bool)

(assert (=> b!3953868 (=> res!1599903 e!2447754)))

(declare-fun lt!1382464 () tuple2!41366)

(declare-fun ++!10942 (List!42207 List!42207) List!42207)

(assert (=> b!3953868 (= res!1599903 (not (= lt!1382464 (tuple2!41367 (++!10942 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083) (_1!23817 lt!1382458)) (_2!23817 lt!1382458)))))))

(declare-fun tp!1204869 () Bool)

(declare-fun b!3953869 () Bool)

(assert (=> b!3953869 (= e!2447761 (and tp!1204869 (inv!56303 (tag!7452 (rule!9562 (h!47503 suffixTokens!72)))) (inv!56306 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) e!2447748))))

(declare-fun b!3953870 () Bool)

(assert (=> b!3953870 (= e!2447754 e!2447752)))

(declare-fun res!1599908 () Bool)

(assert (=> b!3953870 (=> res!1599908 e!2447752)))

(assert (=> b!3953870 (= res!1599908 (>= lt!1382456 lt!1382471))))

(assert (=> b!3953870 (= lt!1382471 (size!31525 suffix!1176))))

(assert (=> b!3953870 (= lt!1382456 (size!31525 (_2!23818 (v!39353 lt!1382459))))))

(declare-fun b!3953871 () Bool)

(assert (=> b!3953871 (= e!2447759 e!2447756)))

(declare-fun res!1599905 () Bool)

(assert (=> b!3953871 (=> (not res!1599905) (not e!2447756))))

(declare-fun lt!1382467 () List!42207)

(assert (=> b!3953871 (= res!1599905 (= lt!1382464 (tuple2!41367 lt!1382467 suffixResult!91)))))

(assert (=> b!3953871 (= lt!1382464 (lexList!1949 thiss!20629 rules!2768 lt!1382469))))

(assert (=> b!3953871 (= lt!1382467 (++!10942 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3953871 (= lt!1382469 (++!10941 prefix!426 suffix!1176))))

(declare-fun tp!1204880 () Bool)

(declare-fun b!3953872 () Bool)

(assert (=> b!3953872 (= e!2447747 (and tp!1204880 (inv!56303 (tag!7452 (h!47504 rules!2768))) (inv!56306 (transformation!6592 (h!47504 rules!2768))) e!2447746))))

(assert (= (and start!371712 res!1599907) b!3953854))

(assert (= (and b!3953854 res!1599902) b!3953861))

(assert (= (and b!3953861 res!1599910) b!3953858))

(assert (= (and b!3953858 res!1599898) b!3953855))

(assert (= (and b!3953855 res!1599895) b!3953871))

(assert (= (and b!3953871 res!1599905) b!3953847))

(assert (= (and b!3953847 res!1599904) b!3953850))

(assert (= (and b!3953850 res!1599901) b!3953845))

(assert (= (and b!3953845 res!1599899) b!3953866))

(assert (= (and b!3953845 (not res!1599897)) b!3953868))

(assert (= (and b!3953868 (not res!1599903)) b!3953843))

(assert (= (and b!3953843 (not res!1599909)) b!3953870))

(assert (= (and b!3953870 (not res!1599908)) b!3953852))

(assert (= (and b!3953852 (not res!1599900)) b!3953864))

(assert (= (and b!3953864 (not res!1599906)) b!3953865))

(assert (= (and b!3953865 (not res!1599896)) b!3953842))

(assert (= (and b!3953842 (not res!1599911)) b!3953860))

(assert (= (and start!371712 ((_ is Cons!42081) suffixResult!91)) b!3953848))

(assert (= (and start!371712 ((_ is Cons!42081) suffix!1176)) b!3953853))

(assert (= b!3953872 b!3953849))

(assert (= b!3953862 b!3953872))

(assert (= (and start!371712 ((_ is Cons!42084) rules!2768)) b!3953862))

(assert (= b!3953846 b!3953857))

(assert (= b!3953867 b!3953846))

(assert (= b!3953856 b!3953867))

(assert (= (and start!371712 ((_ is Cons!42083) prefixTokens!80)) b!3953856))

(assert (= b!3953869 b!3953863))

(assert (= b!3953859 b!3953869))

(assert (= b!3953851 b!3953859))

(assert (= (and start!371712 ((_ is Cons!42083) suffixTokens!72)) b!3953851))

(assert (= (and start!371712 ((_ is Cons!42081) prefix!426)) b!3953844))

(declare-fun m!4522583 () Bool)

(assert (=> b!3953869 m!4522583))

(declare-fun m!4522585 () Bool)

(assert (=> b!3953869 m!4522585))

(declare-fun m!4522587 () Bool)

(assert (=> b!3953847 m!4522587))

(declare-fun m!4522589 () Bool)

(assert (=> b!3953851 m!4522589))

(declare-fun m!4522591 () Bool)

(assert (=> b!3953868 m!4522591))

(declare-fun m!4522593 () Bool)

(assert (=> b!3953856 m!4522593))

(declare-fun m!4522595 () Bool)

(assert (=> b!3953850 m!4522595))

(declare-fun m!4522597 () Bool)

(assert (=> b!3953845 m!4522597))

(declare-fun m!4522599 () Bool)

(assert (=> b!3953845 m!4522599))

(declare-fun m!4522601 () Bool)

(assert (=> b!3953845 m!4522601))

(declare-fun m!4522603 () Bool)

(assert (=> b!3953845 m!4522603))

(declare-fun m!4522605 () Bool)

(assert (=> b!3953845 m!4522605))

(declare-fun m!4522607 () Bool)

(assert (=> b!3953845 m!4522607))

(declare-fun m!4522609 () Bool)

(assert (=> b!3953845 m!4522609))

(assert (=> b!3953845 m!4522607))

(declare-fun m!4522611 () Bool)

(assert (=> b!3953845 m!4522611))

(declare-fun m!4522613 () Bool)

(assert (=> b!3953845 m!4522613))

(assert (=> b!3953845 m!4522597))

(declare-fun m!4522615 () Bool)

(assert (=> b!3953845 m!4522615))

(declare-fun m!4522617 () Bool)

(assert (=> b!3953845 m!4522617))

(declare-fun m!4522619 () Bool)

(assert (=> b!3953845 m!4522619))

(declare-fun m!4522621 () Bool)

(assert (=> b!3953845 m!4522621))

(declare-fun m!4522623 () Bool)

(assert (=> b!3953845 m!4522623))

(declare-fun m!4522625 () Bool)

(assert (=> b!3953865 m!4522625))

(declare-fun m!4522627 () Bool)

(assert (=> b!3953867 m!4522627))

(declare-fun m!4522629 () Bool)

(assert (=> b!3953866 m!4522629))

(declare-fun m!4522631 () Bool)

(assert (=> b!3953860 m!4522631))

(declare-fun m!4522633 () Bool)

(assert (=> b!3953872 m!4522633))

(declare-fun m!4522635 () Bool)

(assert (=> b!3953872 m!4522635))

(declare-fun m!4522637 () Bool)

(assert (=> b!3953846 m!4522637))

(declare-fun m!4522639 () Bool)

(assert (=> b!3953846 m!4522639))

(declare-fun m!4522641 () Bool)

(assert (=> b!3953854 m!4522641))

(declare-fun m!4522643 () Bool)

(assert (=> b!3953864 m!4522643))

(declare-fun m!4522645 () Bool)

(assert (=> b!3953861 m!4522645))

(declare-fun m!4522647 () Bool)

(assert (=> b!3953858 m!4522647))

(declare-fun m!4522649 () Bool)

(assert (=> b!3953855 m!4522649))

(declare-fun m!4522651 () Bool)

(assert (=> b!3953859 m!4522651))

(declare-fun m!4522653 () Bool)

(assert (=> b!3953870 m!4522653))

(declare-fun m!4522655 () Bool)

(assert (=> b!3953870 m!4522655))

(declare-fun m!4522657 () Bool)

(assert (=> b!3953852 m!4522657))

(declare-fun m!4522659 () Bool)

(assert (=> b!3953871 m!4522659))

(declare-fun m!4522661 () Bool)

(assert (=> b!3953871 m!4522661))

(declare-fun m!4522663 () Bool)

(assert (=> b!3953871 m!4522663))

(check-sat (not b!3953852) b_and!303161 (not b!3953856) (not b!3953860) (not b!3953846) (not b!3953853) (not b!3953870) (not b!3953854) (not b!3953862) (not b_next!109571) b_and!303157 (not b!3953871) (not b!3953848) (not b!3953855) (not b!3953868) b_and!303155 (not b!3953851) (not b_next!109567) (not b_next!109575) (not b!3953858) (not b!3953866) (not b!3953850) (not b!3953872) b_and!303159 (not b_next!109569) (not b!3953844) (not b!3953847) (not b_next!109565) (not b!3953859) (not b!3953869) b_and!303151 (not b!3953845) b_and!303153 (not b_next!109573) (not b!3953864) tp_is_empty!19965 (not b!3953867) (not b!3953865) (not b!3953861))
(check-sat b_and!303161 b_and!303155 b_and!303159 (not b_next!109569) (not b_next!109565) (not b_next!109571) b_and!303157 b_and!303151 b_and!303153 (not b_next!109573) (not b_next!109567) (not b_next!109575))
(get-model)

(declare-fun b!3953883 () Bool)

(declare-fun e!2447781 () Bool)

(declare-fun e!2447779 () Bool)

(assert (=> b!3953883 (= e!2447781 e!2447779)))

(declare-fun c!686327 () Bool)

(assert (=> b!3953883 (= c!686327 ((_ is IntegerValue!20467) (value!208506 (h!47503 suffixTokens!72))))))

(declare-fun d!1172039 () Bool)

(declare-fun c!686326 () Bool)

(assert (=> d!1172039 (= c!686326 ((_ is IntegerValue!20466) (value!208506 (h!47503 suffixTokens!72))))))

(assert (=> d!1172039 (= (inv!21 (value!208506 (h!47503 suffixTokens!72))) e!2447781)))

(declare-fun b!3953884 () Bool)

(declare-fun res!1599916 () Bool)

(declare-fun e!2447780 () Bool)

(assert (=> b!3953884 (=> res!1599916 e!2447780)))

(assert (=> b!3953884 (= res!1599916 (not ((_ is IntegerValue!20468) (value!208506 (h!47503 suffixTokens!72)))))))

(assert (=> b!3953884 (= e!2447779 e!2447780)))

(declare-fun b!3953885 () Bool)

(declare-fun inv!16 (TokenValue!6822) Bool)

(assert (=> b!3953885 (= e!2447781 (inv!16 (value!208506 (h!47503 suffixTokens!72))))))

(declare-fun b!3953886 () Bool)

(declare-fun inv!15 (TokenValue!6822) Bool)

(assert (=> b!3953886 (= e!2447780 (inv!15 (value!208506 (h!47503 suffixTokens!72))))))

(declare-fun b!3953887 () Bool)

(declare-fun inv!17 (TokenValue!6822) Bool)

(assert (=> b!3953887 (= e!2447779 (inv!17 (value!208506 (h!47503 suffixTokens!72))))))

(assert (= (and d!1172039 c!686326) b!3953885))

(assert (= (and d!1172039 (not c!686326)) b!3953883))

(assert (= (and b!3953883 c!686327) b!3953887))

(assert (= (and b!3953883 (not c!686327)) b!3953884))

(assert (= (and b!3953884 (not res!1599916)) b!3953886))

(declare-fun m!4522665 () Bool)

(assert (=> b!3953885 m!4522665))

(declare-fun m!4522667 () Bool)

(assert (=> b!3953886 m!4522667))

(declare-fun m!4522669 () Bool)

(assert (=> b!3953887 m!4522669))

(assert (=> b!3953859 d!1172039))

(declare-fun d!1172041 () Bool)

(declare-fun lt!1382474 () Int)

(assert (=> d!1172041 (>= lt!1382474 0)))

(declare-fun e!2447784 () Int)

(assert (=> d!1172041 (= lt!1382474 e!2447784)))

(declare-fun c!686330 () Bool)

(assert (=> d!1172041 (= c!686330 ((_ is Nil!42081) suffix!1176))))

(assert (=> d!1172041 (= (size!31525 suffix!1176) lt!1382474)))

(declare-fun b!3953892 () Bool)

(assert (=> b!3953892 (= e!2447784 0)))

(declare-fun b!3953893 () Bool)

(assert (=> b!3953893 (= e!2447784 (+ 1 (size!31525 (t!328942 suffix!1176))))))

(assert (= (and d!1172041 c!686330) b!3953892))

(assert (= (and d!1172041 (not c!686330)) b!3953893))

(declare-fun m!4522671 () Bool)

(assert (=> b!3953893 m!4522671))

(assert (=> b!3953870 d!1172041))

(declare-fun d!1172043 () Bool)

(declare-fun lt!1382475 () Int)

(assert (=> d!1172043 (>= lt!1382475 0)))

(declare-fun e!2447785 () Int)

(assert (=> d!1172043 (= lt!1382475 e!2447785)))

(declare-fun c!686331 () Bool)

(assert (=> d!1172043 (= c!686331 ((_ is Nil!42081) (_2!23818 (v!39353 lt!1382459))))))

(assert (=> d!1172043 (= (size!31525 (_2!23818 (v!39353 lt!1382459))) lt!1382475)))

(declare-fun b!3953894 () Bool)

(assert (=> b!3953894 (= e!2447785 0)))

(declare-fun b!3953895 () Bool)

(assert (=> b!3953895 (= e!2447785 (+ 1 (size!31525 (t!328942 (_2!23818 (v!39353 lt!1382459))))))))

(assert (= (and d!1172043 c!686331) b!3953894))

(assert (= (and d!1172043 (not c!686331)) b!3953895))

(declare-fun m!4522673 () Bool)

(assert (=> b!3953895 m!4522673))

(assert (=> b!3953870 d!1172043))

(declare-fun d!1172045 () Bool)

(assert (=> d!1172045 (= (isEmpty!25147 lt!1382455) ((_ is Nil!42081) lt!1382455))))

(assert (=> b!3953860 d!1172045))

(declare-fun b!3953942 () Bool)

(declare-fun e!2447819 () Bool)

(declare-fun lt!1382486 () tuple2!41366)

(assert (=> b!3953942 (= e!2447819 (not (isEmpty!25148 (_1!23817 lt!1382486))))))

(declare-fun b!3953943 () Bool)

(declare-fun e!2447817 () Bool)

(assert (=> b!3953943 (= e!2447817 (= (_2!23817 lt!1382486) suffix!1176))))

(declare-fun b!3953944 () Bool)

(declare-fun e!2447818 () tuple2!41366)

(declare-fun lt!1382487 () Option!9012)

(declare-fun lt!1382485 () tuple2!41366)

(assert (=> b!3953944 (= e!2447818 (tuple2!41367 (Cons!42083 (_1!23818 (v!39353 lt!1382487)) (_1!23817 lt!1382485)) (_2!23817 lt!1382485)))))

(assert (=> b!3953944 (= lt!1382485 (lexList!1949 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382487))))))

(declare-fun d!1172047 () Bool)

(assert (=> d!1172047 e!2447817))

(declare-fun c!686342 () Bool)

(declare-fun size!31527 (List!42207) Int)

(assert (=> d!1172047 (= c!686342 (> (size!31527 (_1!23817 lt!1382486)) 0))))

(assert (=> d!1172047 (= lt!1382486 e!2447818)))

(declare-fun c!686343 () Bool)

(assert (=> d!1172047 (= c!686343 ((_ is Some!9011) lt!1382487))))

(assert (=> d!1172047 (= lt!1382487 (maxPrefix!3485 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1172047 (= (lexList!1949 thiss!20629 rules!2768 suffix!1176) lt!1382486)))

(declare-fun b!3953945 () Bool)

(assert (=> b!3953945 (= e!2447817 e!2447819)))

(declare-fun res!1599941 () Bool)

(assert (=> b!3953945 (= res!1599941 (< (size!31525 (_2!23817 lt!1382486)) (size!31525 suffix!1176)))))

(assert (=> b!3953945 (=> (not res!1599941) (not e!2447819))))

(declare-fun b!3953946 () Bool)

(assert (=> b!3953946 (= e!2447818 (tuple2!41367 Nil!42083 suffix!1176))))

(assert (= (and d!1172047 c!686343) b!3953944))

(assert (= (and d!1172047 (not c!686343)) b!3953946))

(assert (= (and d!1172047 c!686342) b!3953945))

(assert (= (and d!1172047 (not c!686342)) b!3953943))

(assert (= (and b!3953945 res!1599941) b!3953942))

(declare-fun m!4522707 () Bool)

(assert (=> b!3953942 m!4522707))

(declare-fun m!4522709 () Bool)

(assert (=> b!3953944 m!4522709))

(declare-fun m!4522711 () Bool)

(assert (=> d!1172047 m!4522711))

(declare-fun m!4522713 () Bool)

(assert (=> d!1172047 m!4522713))

(declare-fun m!4522715 () Bool)

(assert (=> b!3953945 m!4522715))

(assert (=> b!3953945 m!4522653))

(assert (=> b!3953847 d!1172047))

(declare-fun d!1172067 () Bool)

(assert (=> d!1172067 (= (isEmpty!25148 prefixTokens!80) ((_ is Nil!42083) prefixTokens!80))))

(assert (=> b!3953858 d!1172067))

(declare-fun d!1172071 () Bool)

(assert (=> d!1172071 (= (inv!56303 (tag!7452 (rule!9562 (h!47503 suffixTokens!72)))) (= (mod (str.len (value!208505 (tag!7452 (rule!9562 (h!47503 suffixTokens!72))))) 2) 0))))

(assert (=> b!3953869 d!1172071))

(declare-fun d!1172073 () Bool)

(declare-fun res!1599944 () Bool)

(declare-fun e!2447822 () Bool)

(assert (=> d!1172073 (=> (not res!1599944) (not e!2447822))))

(declare-fun semiInverseModEq!2841 (Int Int) Bool)

(assert (=> d!1172073 (= res!1599944 (semiInverseModEq!2841 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toValue!9068 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))))))

(assert (=> d!1172073 (= (inv!56306 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) e!2447822)))

(declare-fun b!3953949 () Bool)

(declare-fun equivClasses!2740 (Int Int) Bool)

(assert (=> b!3953949 (= e!2447822 (equivClasses!2740 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toValue!9068 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))))))

(assert (= (and d!1172073 res!1599944) b!3953949))

(declare-fun m!4522717 () Bool)

(assert (=> d!1172073 m!4522717))

(declare-fun m!4522719 () Bool)

(assert (=> b!3953949 m!4522719))

(assert (=> b!3953869 d!1172073))

(declare-fun b!3953950 () Bool)

(declare-fun e!2447825 () Bool)

(declare-fun e!2447823 () Bool)

(assert (=> b!3953950 (= e!2447825 e!2447823)))

(declare-fun c!686345 () Bool)

(assert (=> b!3953950 (= c!686345 ((_ is IntegerValue!20467) (value!208506 (h!47503 prefixTokens!80))))))

(declare-fun d!1172075 () Bool)

(declare-fun c!686344 () Bool)

(assert (=> d!1172075 (= c!686344 ((_ is IntegerValue!20466) (value!208506 (h!47503 prefixTokens!80))))))

(assert (=> d!1172075 (= (inv!21 (value!208506 (h!47503 prefixTokens!80))) e!2447825)))

(declare-fun b!3953951 () Bool)

(declare-fun res!1599945 () Bool)

(declare-fun e!2447824 () Bool)

(assert (=> b!3953951 (=> res!1599945 e!2447824)))

(assert (=> b!3953951 (= res!1599945 (not ((_ is IntegerValue!20468) (value!208506 (h!47503 prefixTokens!80)))))))

(assert (=> b!3953951 (= e!2447823 e!2447824)))

(declare-fun b!3953952 () Bool)

(assert (=> b!3953952 (= e!2447825 (inv!16 (value!208506 (h!47503 prefixTokens!80))))))

(declare-fun b!3953953 () Bool)

(assert (=> b!3953953 (= e!2447824 (inv!15 (value!208506 (h!47503 prefixTokens!80))))))

(declare-fun b!3953954 () Bool)

(assert (=> b!3953954 (= e!2447823 (inv!17 (value!208506 (h!47503 prefixTokens!80))))))

(assert (= (and d!1172075 c!686344) b!3953952))

(assert (= (and d!1172075 (not c!686344)) b!3953950))

(assert (= (and b!3953950 c!686345) b!3953954))

(assert (= (and b!3953950 (not c!686345)) b!3953951))

(assert (= (and b!3953951 (not res!1599945)) b!3953953))

(declare-fun m!4522721 () Bool)

(assert (=> b!3953952 m!4522721))

(declare-fun m!4522723 () Bool)

(assert (=> b!3953953 m!4522723))

(declare-fun m!4522725 () Bool)

(assert (=> b!3953954 m!4522725))

(assert (=> b!3953867 d!1172075))

(declare-fun d!1172077 () Bool)

(assert (=> d!1172077 (= (inv!56303 (tag!7452 (rule!9562 (h!47503 prefixTokens!80)))) (= (mod (str.len (value!208505 (tag!7452 (rule!9562 (h!47503 prefixTokens!80))))) 2) 0))))

(assert (=> b!3953846 d!1172077))

(declare-fun d!1172079 () Bool)

(declare-fun res!1599946 () Bool)

(declare-fun e!2447826 () Bool)

(assert (=> d!1172079 (=> (not res!1599946) (not e!2447826))))

(assert (=> d!1172079 (= res!1599946 (semiInverseModEq!2841 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toValue!9068 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))))))

(assert (=> d!1172079 (= (inv!56306 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) e!2447826)))

(declare-fun b!3953955 () Bool)

(assert (=> b!3953955 (= e!2447826 (equivClasses!2740 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toValue!9068 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))))))

(assert (= (and d!1172079 res!1599946) b!3953955))

(declare-fun m!4522727 () Bool)

(assert (=> d!1172079 m!4522727))

(declare-fun m!4522729 () Bool)

(assert (=> b!3953955 m!4522729))

(assert (=> b!3953846 d!1172079))

(declare-fun b!3953966 () Bool)

(declare-fun res!1599952 () Bool)

(declare-fun e!2447832 () Bool)

(assert (=> b!3953966 (=> (not res!1599952) (not e!2447832))))

(declare-fun lt!1382490 () List!42207)

(assert (=> b!3953966 (= res!1599952 (= (size!31527 lt!1382490) (+ (size!31527 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083)) (size!31527 (_1!23817 lt!1382458)))))))

(declare-fun b!3953965 () Bool)

(declare-fun e!2447831 () List!42207)

(assert (=> b!3953965 (= e!2447831 (Cons!42083 (h!47503 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083)) (++!10942 (t!328944 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083)) (_1!23817 lt!1382458))))))

(declare-fun b!3953964 () Bool)

(assert (=> b!3953964 (= e!2447831 (_1!23817 lt!1382458))))

(declare-fun b!3953967 () Bool)

(assert (=> b!3953967 (= e!2447832 (or (not (= (_1!23817 lt!1382458) Nil!42083)) (= lt!1382490 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083))))))

(declare-fun d!1172081 () Bool)

(assert (=> d!1172081 e!2447832))

(declare-fun res!1599951 () Bool)

(assert (=> d!1172081 (=> (not res!1599951) (not e!2447832))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6383 (List!42207) (InoxSet Token!12322))

(assert (=> d!1172081 (= res!1599951 (= (content!6383 lt!1382490) ((_ map or) (content!6383 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083)) (content!6383 (_1!23817 lt!1382458)))))))

(assert (=> d!1172081 (= lt!1382490 e!2447831)))

(declare-fun c!686348 () Bool)

(assert (=> d!1172081 (= c!686348 ((_ is Nil!42083) (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083)))))

(assert (=> d!1172081 (= (++!10942 (Cons!42083 (_1!23818 (v!39353 lt!1382459)) Nil!42083) (_1!23817 lt!1382458)) lt!1382490)))

(assert (= (and d!1172081 c!686348) b!3953964))

(assert (= (and d!1172081 (not c!686348)) b!3953965))

(assert (= (and d!1172081 res!1599951) b!3953966))

(assert (= (and b!3953966 res!1599952) b!3953967))

(declare-fun m!4522731 () Bool)

(assert (=> b!3953966 m!4522731))

(declare-fun m!4522733 () Bool)

(assert (=> b!3953966 m!4522733))

(declare-fun m!4522735 () Bool)

(assert (=> b!3953966 m!4522735))

(declare-fun m!4522737 () Bool)

(assert (=> b!3953965 m!4522737))

(declare-fun m!4522739 () Bool)

(assert (=> d!1172081 m!4522739))

(declare-fun m!4522741 () Bool)

(assert (=> d!1172081 m!4522741))

(declare-fun m!4522743 () Bool)

(assert (=> d!1172081 m!4522743))

(assert (=> b!3953868 d!1172081))

(declare-fun d!1172083 () Bool)

(assert (=> d!1172083 (= (isEmpty!25147 prefix!426) ((_ is Nil!42081) prefix!426))))

(assert (=> b!3953855 d!1172083))

(declare-fun d!1172085 () Bool)

(declare-fun lt!1382491 () Int)

(assert (=> d!1172085 (>= lt!1382491 0)))

(declare-fun e!2447833 () Int)

(assert (=> d!1172085 (= lt!1382491 e!2447833)))

(declare-fun c!686349 () Bool)

(assert (=> d!1172085 (= c!686349 ((_ is Nil!42081) (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459)))))))

(assert (=> d!1172085 (= (size!31525 (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459)))) lt!1382491)))

(declare-fun b!3953968 () Bool)

(assert (=> b!3953968 (= e!2447833 0)))

(declare-fun b!3953969 () Bool)

(assert (=> b!3953969 (= e!2447833 (+ 1 (size!31525 (t!328942 (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459)))))))))

(assert (= (and d!1172085 c!686349) b!3953968))

(assert (= (and d!1172085 (not c!686349)) b!3953969))

(declare-fun m!4522745 () Bool)

(assert (=> b!3953969 m!4522745))

(assert (=> b!3953866 d!1172085))

(declare-fun b!3953970 () Bool)

(declare-fun e!2447836 () Bool)

(declare-fun lt!1382493 () tuple2!41366)

(assert (=> b!3953970 (= e!2447836 (not (isEmpty!25148 (_1!23817 lt!1382493))))))

(declare-fun b!3953971 () Bool)

(declare-fun e!2447834 () Bool)

(assert (=> b!3953971 (= e!2447834 (= (_2!23817 lt!1382493) (_2!23818 (v!39353 lt!1382459))))))

(declare-fun b!3953972 () Bool)

(declare-fun e!2447835 () tuple2!41366)

(declare-fun lt!1382494 () Option!9012)

(declare-fun lt!1382492 () tuple2!41366)

(assert (=> b!3953972 (= e!2447835 (tuple2!41367 (Cons!42083 (_1!23818 (v!39353 lt!1382494)) (_1!23817 lt!1382492)) (_2!23817 lt!1382492)))))

(assert (=> b!3953972 (= lt!1382492 (lexList!1949 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382494))))))

(declare-fun d!1172087 () Bool)

(assert (=> d!1172087 e!2447834))

(declare-fun c!686350 () Bool)

(assert (=> d!1172087 (= c!686350 (> (size!31527 (_1!23817 lt!1382493)) 0))))

(assert (=> d!1172087 (= lt!1382493 e!2447835)))

(declare-fun c!686351 () Bool)

(assert (=> d!1172087 (= c!686351 ((_ is Some!9011) lt!1382494))))

(assert (=> d!1172087 (= lt!1382494 (maxPrefix!3485 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382459))))))

(assert (=> d!1172087 (= (lexList!1949 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382459))) lt!1382493)))

(declare-fun b!3953973 () Bool)

(assert (=> b!3953973 (= e!2447834 e!2447836)))

(declare-fun res!1599953 () Bool)

(assert (=> b!3953973 (= res!1599953 (< (size!31525 (_2!23817 lt!1382493)) (size!31525 (_2!23818 (v!39353 lt!1382459)))))))

(assert (=> b!3953973 (=> (not res!1599953) (not e!2447836))))

(declare-fun b!3953974 () Bool)

(assert (=> b!3953974 (= e!2447835 (tuple2!41367 Nil!42083 (_2!23818 (v!39353 lt!1382459))))))

(assert (= (and d!1172087 c!686351) b!3953972))

(assert (= (and d!1172087 (not c!686351)) b!3953974))

(assert (= (and d!1172087 c!686350) b!3953973))

(assert (= (and d!1172087 (not c!686350)) b!3953971))

(assert (= (and b!3953973 res!1599953) b!3953970))

(declare-fun m!4522747 () Bool)

(assert (=> b!3953970 m!4522747))

(declare-fun m!4522749 () Bool)

(assert (=> b!3953972 m!4522749))

(declare-fun m!4522751 () Bool)

(assert (=> d!1172087 m!4522751))

(declare-fun m!4522753 () Bool)

(assert (=> d!1172087 m!4522753))

(declare-fun m!4522755 () Bool)

(assert (=> b!3953973 m!4522755))

(assert (=> b!3953973 m!4522655))

(assert (=> b!3953845 d!1172087))

(declare-fun d!1172089 () Bool)

(declare-fun list!15626 (Conc!12803) List!42205)

(assert (=> d!1172089 (= (list!15624 (charsOf!4410 (_1!23818 (v!39353 lt!1382459)))) (list!15626 (c!686321 (charsOf!4410 (_1!23818 (v!39353 lt!1382459))))))))

(declare-fun bs!587063 () Bool)

(assert (= bs!587063 d!1172089))

(declare-fun m!4522757 () Bool)

(assert (=> bs!587063 m!4522757))

(assert (=> b!3953845 d!1172089))

(declare-fun d!1172091 () Bool)

(declare-fun dynLambda!17997 (Int BalanceConc!25200) TokenValue!6822)

(assert (=> d!1172091 (= (apply!9823 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))) (seqFromList!4851 lt!1382455)) (dynLambda!17997 (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))) (seqFromList!4851 lt!1382455)))))

(declare-fun b_lambda!115649 () Bool)

(assert (=> (not b_lambda!115649) (not d!1172091)))

(declare-fun tb!238011 () Bool)

(declare-fun t!328953 () Bool)

(assert (=> (and b!3953849 (= (toValue!9068 (transformation!6592 (h!47504 rules!2768))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328953) tb!238011))

(declare-fun result!288250 () Bool)

(assert (=> tb!238011 (= result!288250 (inv!21 (dynLambda!17997 (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))) (seqFromList!4851 lt!1382455))))))

(declare-fun m!4522759 () Bool)

(assert (=> tb!238011 m!4522759))

(assert (=> d!1172091 t!328953))

(declare-fun b_and!303169 () Bool)

(assert (= b_and!303151 (and (=> t!328953 result!288250) b_and!303169)))

(declare-fun tb!238013 () Bool)

(declare-fun t!328955 () Bool)

(assert (=> (and b!3953863 (= (toValue!9068 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328955) tb!238013))

(declare-fun result!288254 () Bool)

(assert (= result!288254 result!288250))

(assert (=> d!1172091 t!328955))

(declare-fun b_and!303171 () Bool)

(assert (= b_and!303155 (and (=> t!328955 result!288254) b_and!303171)))

(declare-fun tb!238015 () Bool)

(declare-fun t!328957 () Bool)

(assert (=> (and b!3953857 (= (toValue!9068 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328957) tb!238015))

(declare-fun result!288256 () Bool)

(assert (= result!288256 result!288250))

(assert (=> d!1172091 t!328957))

(declare-fun b_and!303173 () Bool)

(assert (= b_and!303159 (and (=> t!328957 result!288256) b_and!303173)))

(assert (=> d!1172091 m!4522607))

(declare-fun m!4522761 () Bool)

(assert (=> d!1172091 m!4522761))

(assert (=> b!3953845 d!1172091))

(declare-fun b!3954027 () Bool)

(declare-fun e!2447863 () Bool)

(declare-fun tail!6124 (List!42205) List!42205)

(assert (=> b!3954027 (= e!2447863 (isPrefix!3681 (tail!6124 lt!1382455) (tail!6124 lt!1382468)))))

(declare-fun b!3954026 () Bool)

(declare-fun res!1599992 () Bool)

(assert (=> b!3954026 (=> (not res!1599992) (not e!2447863))))

(declare-fun head!8398 (List!42205) C!23180)

(assert (=> b!3954026 (= res!1599992 (= (head!8398 lt!1382455) (head!8398 lt!1382468)))))

(declare-fun b!3954028 () Bool)

(declare-fun e!2447864 () Bool)

(assert (=> b!3954028 (= e!2447864 (>= (size!31525 lt!1382468) (size!31525 lt!1382455)))))

(declare-fun b!3954025 () Bool)

(declare-fun e!2447862 () Bool)

(assert (=> b!3954025 (= e!2447862 e!2447863)))

(declare-fun res!1599993 () Bool)

(assert (=> b!3954025 (=> (not res!1599993) (not e!2447863))))

(assert (=> b!3954025 (= res!1599993 (not ((_ is Nil!42081) lt!1382468)))))

(declare-fun d!1172093 () Bool)

(assert (=> d!1172093 e!2447864))

(declare-fun res!1599990 () Bool)

(assert (=> d!1172093 (=> res!1599990 e!2447864)))

(declare-fun lt!1382515 () Bool)

(assert (=> d!1172093 (= res!1599990 (not lt!1382515))))

(assert (=> d!1172093 (= lt!1382515 e!2447862)))

(declare-fun res!1599991 () Bool)

(assert (=> d!1172093 (=> res!1599991 e!2447862)))

(assert (=> d!1172093 (= res!1599991 ((_ is Nil!42081) lt!1382455))))

(assert (=> d!1172093 (= (isPrefix!3681 lt!1382455 lt!1382468) lt!1382515)))

(assert (= (and d!1172093 (not res!1599991)) b!3954025))

(assert (= (and b!3954025 res!1599993) b!3954026))

(assert (= (and b!3954026 res!1599992) b!3954027))

(assert (= (and d!1172093 (not res!1599990)) b!3954028))

(declare-fun m!4522813 () Bool)

(assert (=> b!3954027 m!4522813))

(declare-fun m!4522815 () Bool)

(assert (=> b!3954027 m!4522815))

(assert (=> b!3954027 m!4522813))

(assert (=> b!3954027 m!4522815))

(declare-fun m!4522817 () Bool)

(assert (=> b!3954027 m!4522817))

(declare-fun m!4522819 () Bool)

(assert (=> b!3954026 m!4522819))

(declare-fun m!4522821 () Bool)

(assert (=> b!3954026 m!4522821))

(declare-fun m!4522823 () Bool)

(assert (=> b!3954028 m!4522823))

(assert (=> b!3954028 m!4522621))

(assert (=> b!3953845 d!1172093))

(declare-fun d!1172105 () Bool)

(declare-fun res!1599999 () Bool)

(declare-fun e!2447874 () Bool)

(assert (=> d!1172105 (=> (not res!1599999) (not e!2447874))))

(declare-fun validRegex!5235 (Regex!11497) Bool)

(assert (=> d!1172105 (= res!1599999 (validRegex!5235 (regex!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))))))

(assert (=> d!1172105 (= (ruleValid!2534 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459)))) e!2447874)))

(declare-fun b!3954046 () Bool)

(declare-fun res!1600000 () Bool)

(assert (=> b!3954046 (=> (not res!1600000) (not e!2447874))))

(declare-fun nullable!4036 (Regex!11497) Bool)

(assert (=> b!3954046 (= res!1600000 (not (nullable!4036 (regex!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))))))

(declare-fun b!3954047 () Bool)

(assert (=> b!3954047 (= e!2447874 (not (= (tag!7452 (rule!9562 (_1!23818 (v!39353 lt!1382459)))) (String!47829 ""))))))

(assert (= (and d!1172105 res!1599999) b!3954046))

(assert (= (and b!3954046 res!1600000) b!3954047))

(declare-fun m!4522835 () Bool)

(assert (=> d!1172105 m!4522835))

(declare-fun m!4522837 () Bool)

(assert (=> b!3954046 m!4522837))

(assert (=> b!3953845 d!1172105))

(declare-fun d!1172113 () Bool)

(assert (=> d!1172113 (= (_2!23818 (v!39353 lt!1382459)) lt!1382460)))

(declare-fun lt!1382522 () Unit!60580)

(declare-fun choose!23600 (List!42205 List!42205 List!42205 List!42205 List!42205) Unit!60580)

(assert (=> d!1172113 (= lt!1382522 (choose!23600 lt!1382455 (_2!23818 (v!39353 lt!1382459)) lt!1382455 lt!1382460 lt!1382469))))

(assert (=> d!1172113 (isPrefix!3681 lt!1382455 lt!1382469)))

(assert (=> d!1172113 (= (lemmaSamePrefixThenSameSuffix!1890 lt!1382455 (_2!23818 (v!39353 lt!1382459)) lt!1382455 lt!1382460 lt!1382469) lt!1382522)))

(declare-fun bs!587064 () Bool)

(assert (= bs!587064 d!1172113))

(declare-fun m!4522839 () Bool)

(assert (=> bs!587064 m!4522839))

(declare-fun m!4522841 () Bool)

(assert (=> bs!587064 m!4522841))

(assert (=> b!3953845 d!1172113))

(declare-fun d!1172115 () Bool)

(declare-fun lt!1382531 () List!42205)

(assert (=> d!1172115 (= (++!10941 lt!1382455 lt!1382531) lt!1382469)))

(declare-fun e!2447883 () List!42205)

(assert (=> d!1172115 (= lt!1382531 e!2447883)))

(declare-fun c!686370 () Bool)

(assert (=> d!1172115 (= c!686370 ((_ is Cons!42081) lt!1382455))))

(assert (=> d!1172115 (>= (size!31525 lt!1382469) (size!31525 lt!1382455))))

(assert (=> d!1172115 (= (getSuffix!2132 lt!1382469 lt!1382455) lt!1382531)))

(declare-fun b!3954062 () Bool)

(assert (=> b!3954062 (= e!2447883 (getSuffix!2132 (tail!6124 lt!1382469) (t!328942 lt!1382455)))))

(declare-fun b!3954063 () Bool)

(assert (=> b!3954063 (= e!2447883 lt!1382469)))

(assert (= (and d!1172115 c!686370) b!3954062))

(assert (= (and d!1172115 (not c!686370)) b!3954063))

(declare-fun m!4522843 () Bool)

(assert (=> d!1172115 m!4522843))

(assert (=> d!1172115 m!4522657))

(assert (=> d!1172115 m!4522621))

(declare-fun m!4522845 () Bool)

(assert (=> b!3954062 m!4522845))

(assert (=> b!3954062 m!4522845))

(declare-fun m!4522847 () Bool)

(assert (=> b!3954062 m!4522847))

(assert (=> b!3953845 d!1172115))

(declare-fun d!1172117 () Bool)

(declare-fun lt!1382541 () BalanceConc!25200)

(assert (=> d!1172117 (= (list!15624 lt!1382541) (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459))))))

(declare-fun dynLambda!17999 (Int TokenValue!6822) BalanceConc!25200)

(assert (=> d!1172117 (= lt!1382541 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))) (value!208506 (_1!23818 (v!39353 lt!1382459)))))))

(assert (=> d!1172117 (= (charsOf!4410 (_1!23818 (v!39353 lt!1382459))) lt!1382541)))

(declare-fun b_lambda!115651 () Bool)

(assert (=> (not b_lambda!115651) (not d!1172117)))

(declare-fun t!328959 () Bool)

(declare-fun tb!238017 () Bool)

(assert (=> (and b!3953849 (= (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328959) tb!238017))

(declare-fun b!3954089 () Bool)

(declare-fun e!2447899 () Bool)

(declare-fun tp!1204890 () Bool)

(declare-fun inv!56310 (Conc!12803) Bool)

(assert (=> b!3954089 (= e!2447899 (and (inv!56310 (c!686321 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))) (value!208506 (_1!23818 (v!39353 lt!1382459)))))) tp!1204890))))

(declare-fun result!288258 () Bool)

(declare-fun inv!56311 (BalanceConc!25200) Bool)

(assert (=> tb!238017 (= result!288258 (and (inv!56311 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459))))) (value!208506 (_1!23818 (v!39353 lt!1382459))))) e!2447899))))

(assert (= tb!238017 b!3954089))

(declare-fun m!4522885 () Bool)

(assert (=> b!3954089 m!4522885))

(declare-fun m!4522887 () Bool)

(assert (=> tb!238017 m!4522887))

(assert (=> d!1172117 t!328959))

(declare-fun b_and!303175 () Bool)

(assert (= b_and!303153 (and (=> t!328959 result!288258) b_and!303175)))

(declare-fun t!328961 () Bool)

(declare-fun tb!238019 () Bool)

(assert (=> (and b!3953863 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328961) tb!238019))

(declare-fun result!288262 () Bool)

(assert (= result!288262 result!288258))

(assert (=> d!1172117 t!328961))

(declare-fun b_and!303177 () Bool)

(assert (= b_and!303157 (and (=> t!328961 result!288262) b_and!303177)))

(declare-fun tb!238021 () Bool)

(declare-fun t!328963 () Bool)

(assert (=> (and b!3953857 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!328963) tb!238021))

(declare-fun result!288264 () Bool)

(assert (= result!288264 result!288258))

(assert (=> d!1172117 t!328963))

(declare-fun b_and!303179 () Bool)

(assert (= b_and!303161 (and (=> t!328963 result!288264) b_and!303179)))

(declare-fun m!4522889 () Bool)

(assert (=> d!1172117 m!4522889))

(declare-fun m!4522891 () Bool)

(assert (=> d!1172117 m!4522891))

(assert (=> b!3953845 d!1172117))

(declare-fun d!1172127 () Bool)

(declare-fun e!2447915 () Bool)

(assert (=> d!1172127 e!2447915))

(declare-fun res!1600024 () Bool)

(assert (=> d!1172127 (=> (not res!1600024) (not e!2447915))))

(declare-fun lt!1382556 () List!42205)

(declare-fun content!6384 (List!42205) (InoxSet C!23180))

(assert (=> d!1172127 (= res!1600024 (= (content!6384 lt!1382556) ((_ map or) (content!6384 lt!1382455) (content!6384 (_2!23818 (v!39353 lt!1382459))))))))

(declare-fun e!2447916 () List!42205)

(assert (=> d!1172127 (= lt!1382556 e!2447916)))

(declare-fun c!686386 () Bool)

(assert (=> d!1172127 (= c!686386 ((_ is Nil!42081) lt!1382455))))

(assert (=> d!1172127 (= (++!10941 lt!1382455 (_2!23818 (v!39353 lt!1382459))) lt!1382556)))

(declare-fun b!3954122 () Bool)

(assert (=> b!3954122 (= e!2447915 (or (not (= (_2!23818 (v!39353 lt!1382459)) Nil!42081)) (= lt!1382556 lt!1382455)))))

(declare-fun b!3954120 () Bool)

(assert (=> b!3954120 (= e!2447916 (Cons!42081 (h!47501 lt!1382455) (++!10941 (t!328942 lt!1382455) (_2!23818 (v!39353 lt!1382459)))))))

(declare-fun b!3954119 () Bool)

(assert (=> b!3954119 (= e!2447916 (_2!23818 (v!39353 lt!1382459)))))

(declare-fun b!3954121 () Bool)

(declare-fun res!1600023 () Bool)

(assert (=> b!3954121 (=> (not res!1600023) (not e!2447915))))

(assert (=> b!3954121 (= res!1600023 (= (size!31525 lt!1382556) (+ (size!31525 lt!1382455) (size!31525 (_2!23818 (v!39353 lt!1382459))))))))

(assert (= (and d!1172127 c!686386) b!3954119))

(assert (= (and d!1172127 (not c!686386)) b!3954120))

(assert (= (and d!1172127 res!1600024) b!3954121))

(assert (= (and b!3954121 res!1600023) b!3954122))

(declare-fun m!4522935 () Bool)

(assert (=> d!1172127 m!4522935))

(declare-fun m!4522937 () Bool)

(assert (=> d!1172127 m!4522937))

(declare-fun m!4522939 () Bool)

(assert (=> d!1172127 m!4522939))

(declare-fun m!4522941 () Bool)

(assert (=> b!3954120 m!4522941))

(declare-fun m!4522943 () Bool)

(assert (=> b!3954121 m!4522943))

(assert (=> b!3954121 m!4522621))

(assert (=> b!3954121 m!4522655))

(assert (=> b!3953845 d!1172127))

(declare-fun d!1172147 () Bool)

(assert (=> d!1172147 (ruleValid!2534 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459))))))

(declare-fun lt!1382565 () Unit!60580)

(declare-fun choose!23602 (LexerInterface!6181 Rule!12984 List!42208) Unit!60580)

(assert (=> d!1172147 (= lt!1382565 (choose!23602 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459))) rules!2768))))

(assert (=> d!1172147 (contains!8414 rules!2768 (rule!9562 (_1!23818 (v!39353 lt!1382459))))))

(assert (=> d!1172147 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1610 thiss!20629 (rule!9562 (_1!23818 (v!39353 lt!1382459))) rules!2768) lt!1382565)))

(declare-fun bs!587070 () Bool)

(assert (= bs!587070 d!1172147))

(assert (=> bs!587070 m!4522619))

(declare-fun m!4522953 () Bool)

(assert (=> bs!587070 m!4522953))

(assert (=> bs!587070 m!4522625))

(assert (=> b!3953845 d!1172147))

(declare-fun d!1172153 () Bool)

(assert (=> d!1172153 (= (size!31524 (_1!23818 (v!39353 lt!1382459))) (size!31525 (originalCharacters!7192 (_1!23818 (v!39353 lt!1382459)))))))

(declare-fun Unit!60583 () Unit!60580)

(assert (=> d!1172153 (= (lemmaCharactersSize!1245 (_1!23818 (v!39353 lt!1382459))) Unit!60583)))

(declare-fun bs!587072 () Bool)

(assert (= bs!587072 d!1172153))

(assert (=> bs!587072 m!4522629))

(assert (=> b!3953845 d!1172153))

(declare-fun d!1172157 () Bool)

(assert (=> d!1172157 (isPrefix!3681 lt!1382455 (++!10941 lt!1382455 (_2!23818 (v!39353 lt!1382459))))))

(declare-fun lt!1382571 () Unit!60580)

(declare-fun choose!23603 (List!42205 List!42205) Unit!60580)

(assert (=> d!1172157 (= lt!1382571 (choose!23603 lt!1382455 (_2!23818 (v!39353 lt!1382459))))))

(assert (=> d!1172157 (= (lemmaConcatTwoListThenFirstIsPrefix!2540 lt!1382455 (_2!23818 (v!39353 lt!1382459))) lt!1382571)))

(declare-fun bs!587073 () Bool)

(assert (= bs!587073 d!1172157))

(assert (=> bs!587073 m!4522599))

(assert (=> bs!587073 m!4522599))

(declare-fun m!4522963 () Bool)

(assert (=> bs!587073 m!4522963))

(declare-fun m!4522965 () Bool)

(assert (=> bs!587073 m!4522965))

(assert (=> b!3953845 d!1172157))

(declare-fun d!1172161 () Bool)

(declare-fun lt!1382572 () Int)

(assert (=> d!1172161 (>= lt!1382572 0)))

(declare-fun e!2447923 () Int)

(assert (=> d!1172161 (= lt!1382572 e!2447923)))

(declare-fun c!686390 () Bool)

(assert (=> d!1172161 (= c!686390 ((_ is Nil!42081) lt!1382455))))

(assert (=> d!1172161 (= (size!31525 lt!1382455) lt!1382572)))

(declare-fun b!3954131 () Bool)

(assert (=> b!3954131 (= e!2447923 0)))

(declare-fun b!3954132 () Bool)

(assert (=> b!3954132 (= e!2447923 (+ 1 (size!31525 (t!328942 lt!1382455))))))

(assert (= (and d!1172161 c!686390) b!3954131))

(assert (= (and d!1172161 (not c!686390)) b!3954132))

(declare-fun m!4522967 () Bool)

(assert (=> b!3954132 m!4522967))

(assert (=> b!3953845 d!1172161))

(declare-fun d!1172163 () Bool)

(declare-fun fromListB!2242 (List!42205) BalanceConc!25200)

(assert (=> d!1172163 (= (seqFromList!4851 lt!1382455) (fromListB!2242 lt!1382455))))

(declare-fun bs!587074 () Bool)

(assert (= bs!587074 d!1172163))

(declare-fun m!4522981 () Bool)

(assert (=> bs!587074 m!4522981))

(assert (=> b!3953845 d!1172163))

(declare-fun d!1172167 () Bool)

(declare-fun res!1600049 () Bool)

(declare-fun e!2447942 () Bool)

(assert (=> d!1172167 (=> (not res!1600049) (not e!2447942))))

(assert (=> d!1172167 (= res!1600049 (not (isEmpty!25147 (originalCharacters!7192 (h!47503 prefixTokens!80)))))))

(assert (=> d!1172167 (= (inv!56307 (h!47503 prefixTokens!80)) e!2447942)))

(declare-fun b!3954161 () Bool)

(declare-fun res!1600050 () Bool)

(assert (=> b!3954161 (=> (not res!1600050) (not e!2447942))))

(assert (=> b!3954161 (= res!1600050 (= (originalCharacters!7192 (h!47503 prefixTokens!80)) (list!15624 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (value!208506 (h!47503 prefixTokens!80))))))))

(declare-fun b!3954162 () Bool)

(assert (=> b!3954162 (= e!2447942 (= (size!31524 (h!47503 prefixTokens!80)) (size!31525 (originalCharacters!7192 (h!47503 prefixTokens!80)))))))

(assert (= (and d!1172167 res!1600049) b!3954161))

(assert (= (and b!3954161 res!1600050) b!3954162))

(declare-fun b_lambda!115659 () Bool)

(assert (=> (not b_lambda!115659) (not b!3954161)))

(declare-fun tb!238041 () Bool)

(declare-fun t!328983 () Bool)

(assert (=> (and b!3953849 (= (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!328983) tb!238041))

(declare-fun b!3954169 () Bool)

(declare-fun e!2447946 () Bool)

(declare-fun tp!1204893 () Bool)

(assert (=> b!3954169 (= e!2447946 (and (inv!56310 (c!686321 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (value!208506 (h!47503 prefixTokens!80))))) tp!1204893))))

(declare-fun result!288288 () Bool)

(assert (=> tb!238041 (= result!288288 (and (inv!56311 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (value!208506 (h!47503 prefixTokens!80)))) e!2447946))))

(assert (= tb!238041 b!3954169))

(declare-fun m!4523011 () Bool)

(assert (=> b!3954169 m!4523011))

(declare-fun m!4523013 () Bool)

(assert (=> tb!238041 m!4523013))

(assert (=> b!3954161 t!328983))

(declare-fun b_and!303199 () Bool)

(assert (= b_and!303175 (and (=> t!328983 result!288288) b_and!303199)))

(declare-fun t!328985 () Bool)

(declare-fun tb!238043 () Bool)

(assert (=> (and b!3953863 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!328985) tb!238043))

(declare-fun result!288290 () Bool)

(assert (= result!288290 result!288288))

(assert (=> b!3954161 t!328985))

(declare-fun b_and!303201 () Bool)

(assert (= b_and!303177 (and (=> t!328985 result!288290) b_and!303201)))

(declare-fun t!328987 () Bool)

(declare-fun tb!238045 () Bool)

(assert (=> (and b!3953857 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!328987) tb!238045))

(declare-fun result!288292 () Bool)

(assert (= result!288292 result!288288))

(assert (=> b!3954161 t!328987))

(declare-fun b_and!303203 () Bool)

(assert (= b_and!303179 (and (=> t!328987 result!288292) b_and!303203)))

(declare-fun m!4523015 () Bool)

(assert (=> d!1172167 m!4523015))

(declare-fun m!4523017 () Bool)

(assert (=> b!3954161 m!4523017))

(assert (=> b!3954161 m!4523017))

(declare-fun m!4523019 () Bool)

(assert (=> b!3954161 m!4523019))

(declare-fun m!4523021 () Bool)

(assert (=> b!3954162 m!4523021))

(assert (=> b!3953856 d!1172167))

(declare-fun d!1172179 () Bool)

(assert (=> d!1172179 (= (isEmpty!25146 rules!2768) ((_ is Nil!42084) rules!2768))))

(assert (=> b!3953854 d!1172179))

(declare-fun d!1172181 () Bool)

(declare-fun lt!1382583 () Bool)

(declare-fun content!6385 (List!42208) (InoxSet Rule!12984))

(assert (=> d!1172181 (= lt!1382583 (select (content!6385 rules!2768) (rule!9562 (_1!23818 (v!39353 lt!1382459)))))))

(declare-fun e!2447983 () Bool)

(assert (=> d!1172181 (= lt!1382583 e!2447983)))

(declare-fun res!1600055 () Bool)

(assert (=> d!1172181 (=> (not res!1600055) (not e!2447983))))

(assert (=> d!1172181 (= res!1600055 ((_ is Cons!42084) rules!2768))))

(assert (=> d!1172181 (= (contains!8414 rules!2768 (rule!9562 (_1!23818 (v!39353 lt!1382459)))) lt!1382583)))

(declare-fun b!3954215 () Bool)

(declare-fun e!2447982 () Bool)

(assert (=> b!3954215 (= e!2447983 e!2447982)))

(declare-fun res!1600056 () Bool)

(assert (=> b!3954215 (=> res!1600056 e!2447982)))

(assert (=> b!3954215 (= res!1600056 (= (h!47504 rules!2768) (rule!9562 (_1!23818 (v!39353 lt!1382459)))))))

(declare-fun b!3954216 () Bool)

(assert (=> b!3954216 (= e!2447982 (contains!8414 (t!328945 rules!2768) (rule!9562 (_1!23818 (v!39353 lt!1382459)))))))

(assert (= (and d!1172181 res!1600055) b!3954215))

(assert (= (and b!3954215 (not res!1600056)) b!3954216))

(declare-fun m!4523031 () Bool)

(assert (=> d!1172181 m!4523031))

(declare-fun m!4523033 () Bool)

(assert (=> d!1172181 m!4523033))

(declare-fun m!4523035 () Bool)

(assert (=> b!3954216 m!4523035))

(assert (=> b!3953865 d!1172181))

(declare-fun d!1172183 () Bool)

(declare-fun lt!1382584 () Int)

(assert (=> d!1172183 (>= lt!1382584 0)))

(declare-fun e!2447988 () Int)

(assert (=> d!1172183 (= lt!1382584 e!2447988)))

(declare-fun c!686393 () Bool)

(assert (=> d!1172183 (= c!686393 ((_ is Nil!42081) prefix!426))))

(assert (=> d!1172183 (= (size!31525 prefix!426) lt!1382584)))

(declare-fun b!3954220 () Bool)

(assert (=> b!3954220 (= e!2447988 0)))

(declare-fun b!3954221 () Bool)

(assert (=> b!3954221 (= e!2447988 (+ 1 (size!31525 (t!328942 prefix!426))))))

(assert (= (and d!1172183 c!686393) b!3954220))

(assert (= (and d!1172183 (not c!686393)) b!3954221))

(declare-fun m!4523037 () Bool)

(assert (=> b!3954221 m!4523037))

(assert (=> b!3953864 d!1172183))

(declare-fun d!1172185 () Bool)

(declare-fun res!1600057 () Bool)

(declare-fun e!2447989 () Bool)

(assert (=> d!1172185 (=> (not res!1600057) (not e!2447989))))

(assert (=> d!1172185 (= res!1600057 (not (isEmpty!25147 (originalCharacters!7192 (h!47503 suffixTokens!72)))))))

(assert (=> d!1172185 (= (inv!56307 (h!47503 suffixTokens!72)) e!2447989)))

(declare-fun b!3954222 () Bool)

(declare-fun res!1600058 () Bool)

(assert (=> b!3954222 (=> (not res!1600058) (not e!2447989))))

(assert (=> b!3954222 (= res!1600058 (= (originalCharacters!7192 (h!47503 suffixTokens!72)) (list!15624 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (value!208506 (h!47503 suffixTokens!72))))))))

(declare-fun b!3954223 () Bool)

(assert (=> b!3954223 (= e!2447989 (= (size!31524 (h!47503 suffixTokens!72)) (size!31525 (originalCharacters!7192 (h!47503 suffixTokens!72)))))))

(assert (= (and d!1172185 res!1600057) b!3954222))

(assert (= (and b!3954222 res!1600058) b!3954223))

(declare-fun b_lambda!115661 () Bool)

(assert (=> (not b_lambda!115661) (not b!3954222)))

(declare-fun tb!238063 () Bool)

(declare-fun t!329005 () Bool)

(assert (=> (and b!3953849 (= (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329005) tb!238063))

(declare-fun b!3954236 () Bool)

(declare-fun e!2448001 () Bool)

(declare-fun tp!1204958 () Bool)

(assert (=> b!3954236 (= e!2448001 (and (inv!56310 (c!686321 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (value!208506 (h!47503 suffixTokens!72))))) tp!1204958))))

(declare-fun result!288316 () Bool)

(assert (=> tb!238063 (= result!288316 (and (inv!56311 (dynLambda!17999 (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (value!208506 (h!47503 suffixTokens!72)))) e!2448001))))

(assert (= tb!238063 b!3954236))

(declare-fun m!4523043 () Bool)

(assert (=> b!3954236 m!4523043))

(declare-fun m!4523045 () Bool)

(assert (=> tb!238063 m!4523045))

(assert (=> b!3954222 t!329005))

(declare-fun b_and!303217 () Bool)

(assert (= b_and!303199 (and (=> t!329005 result!288316) b_and!303217)))

(declare-fun t!329015 () Bool)

(declare-fun tb!238073 () Bool)

(assert (=> (and b!3953863 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329015) tb!238073))

(declare-fun result!288326 () Bool)

(assert (= result!288326 result!288316))

(assert (=> b!3954222 t!329015))

(declare-fun b_and!303219 () Bool)

(assert (= b_and!303201 (and (=> t!329015 result!288326) b_and!303219)))

(declare-fun tb!238075 () Bool)

(declare-fun t!329017 () Bool)

(assert (=> (and b!3953857 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329017) tb!238075))

(declare-fun result!288328 () Bool)

(assert (= result!288328 result!288316))

(assert (=> b!3954222 t!329017))

(declare-fun b_and!303221 () Bool)

(assert (= b_and!303203 (and (=> t!329017 result!288328) b_and!303221)))

(declare-fun m!4523051 () Bool)

(assert (=> d!1172185 m!4523051))

(declare-fun m!4523057 () Bool)

(assert (=> b!3954222 m!4523057))

(assert (=> b!3954222 m!4523057))

(declare-fun m!4523059 () Bool)

(assert (=> b!3954222 m!4523059))

(declare-fun m!4523061 () Bool)

(assert (=> b!3954223 m!4523061))

(assert (=> b!3953851 d!1172185))

(declare-fun d!1172187 () Bool)

(declare-fun lt!1382585 () Int)

(assert (=> d!1172187 (>= lt!1382585 0)))

(declare-fun e!2448002 () Int)

(assert (=> d!1172187 (= lt!1382585 e!2448002)))

(declare-fun c!686394 () Bool)

(assert (=> d!1172187 (= c!686394 ((_ is Nil!42081) lt!1382469))))

(assert (=> d!1172187 (= (size!31525 lt!1382469) lt!1382585)))

(declare-fun b!3954237 () Bool)

(assert (=> b!3954237 (= e!2448002 0)))

(declare-fun b!3954238 () Bool)

(assert (=> b!3954238 (= e!2448002 (+ 1 (size!31525 (t!328942 lt!1382469))))))

(assert (= (and d!1172187 c!686394) b!3954237))

(assert (= (and d!1172187 (not c!686394)) b!3954238))

(declare-fun m!4523063 () Bool)

(assert (=> b!3954238 m!4523063))

(assert (=> b!3953852 d!1172187))

(declare-fun b!3954239 () Bool)

(declare-fun e!2448005 () Bool)

(declare-fun lt!1382587 () tuple2!41366)

(assert (=> b!3954239 (= e!2448005 (not (isEmpty!25148 (_1!23817 lt!1382587))))))

(declare-fun b!3954240 () Bool)

(declare-fun e!2448003 () Bool)

(assert (=> b!3954240 (= e!2448003 (= (_2!23817 lt!1382587) lt!1382469))))

(declare-fun b!3954241 () Bool)

(declare-fun e!2448004 () tuple2!41366)

(declare-fun lt!1382588 () Option!9012)

(declare-fun lt!1382586 () tuple2!41366)

(assert (=> b!3954241 (= e!2448004 (tuple2!41367 (Cons!42083 (_1!23818 (v!39353 lt!1382588)) (_1!23817 lt!1382586)) (_2!23817 lt!1382586)))))

(assert (=> b!3954241 (= lt!1382586 (lexList!1949 thiss!20629 rules!2768 (_2!23818 (v!39353 lt!1382588))))))

(declare-fun d!1172189 () Bool)

(assert (=> d!1172189 e!2448003))

(declare-fun c!686395 () Bool)

(assert (=> d!1172189 (= c!686395 (> (size!31527 (_1!23817 lt!1382587)) 0))))

(assert (=> d!1172189 (= lt!1382587 e!2448004)))

(declare-fun c!686396 () Bool)

(assert (=> d!1172189 (= c!686396 ((_ is Some!9011) lt!1382588))))

(assert (=> d!1172189 (= lt!1382588 (maxPrefix!3485 thiss!20629 rules!2768 lt!1382469))))

(assert (=> d!1172189 (= (lexList!1949 thiss!20629 rules!2768 lt!1382469) lt!1382587)))

(declare-fun b!3954242 () Bool)

(assert (=> b!3954242 (= e!2448003 e!2448005)))

(declare-fun res!1600059 () Bool)

(assert (=> b!3954242 (= res!1600059 (< (size!31525 (_2!23817 lt!1382587)) (size!31525 lt!1382469)))))

(assert (=> b!3954242 (=> (not res!1600059) (not e!2448005))))

(declare-fun b!3954243 () Bool)

(assert (=> b!3954243 (= e!2448004 (tuple2!41367 Nil!42083 lt!1382469))))

(assert (= (and d!1172189 c!686396) b!3954241))

(assert (= (and d!1172189 (not c!686396)) b!3954243))

(assert (= (and d!1172189 c!686395) b!3954242))

(assert (= (and d!1172189 (not c!686395)) b!3954240))

(assert (= (and b!3954242 res!1600059) b!3954239))

(declare-fun m!4523065 () Bool)

(assert (=> b!3954239 m!4523065))

(declare-fun m!4523067 () Bool)

(assert (=> b!3954241 m!4523067))

(declare-fun m!4523069 () Bool)

(assert (=> d!1172189 m!4523069))

(assert (=> d!1172189 m!4522595))

(declare-fun m!4523071 () Bool)

(assert (=> b!3954242 m!4523071))

(assert (=> b!3954242 m!4522657))

(assert (=> b!3953871 d!1172189))

(declare-fun b!3954246 () Bool)

(declare-fun res!1600061 () Bool)

(declare-fun e!2448007 () Bool)

(assert (=> b!3954246 (=> (not res!1600061) (not e!2448007))))

(declare-fun lt!1382589 () List!42207)

(assert (=> b!3954246 (= res!1600061 (= (size!31527 lt!1382589) (+ (size!31527 prefixTokens!80) (size!31527 suffixTokens!72))))))

(declare-fun b!3954245 () Bool)

(declare-fun e!2448006 () List!42207)

(assert (=> b!3954245 (= e!2448006 (Cons!42083 (h!47503 prefixTokens!80) (++!10942 (t!328944 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3954244 () Bool)

(assert (=> b!3954244 (= e!2448006 suffixTokens!72)))

(declare-fun b!3954247 () Bool)

(assert (=> b!3954247 (= e!2448007 (or (not (= suffixTokens!72 Nil!42083)) (= lt!1382589 prefixTokens!80)))))

(declare-fun d!1172191 () Bool)

(assert (=> d!1172191 e!2448007))

(declare-fun res!1600060 () Bool)

(assert (=> d!1172191 (=> (not res!1600060) (not e!2448007))))

(assert (=> d!1172191 (= res!1600060 (= (content!6383 lt!1382589) ((_ map or) (content!6383 prefixTokens!80) (content!6383 suffixTokens!72))))))

(assert (=> d!1172191 (= lt!1382589 e!2448006)))

(declare-fun c!686397 () Bool)

(assert (=> d!1172191 (= c!686397 ((_ is Nil!42083) prefixTokens!80))))

(assert (=> d!1172191 (= (++!10942 prefixTokens!80 suffixTokens!72) lt!1382589)))

(assert (= (and d!1172191 c!686397) b!3954244))

(assert (= (and d!1172191 (not c!686397)) b!3954245))

(assert (= (and d!1172191 res!1600060) b!3954246))

(assert (= (and b!3954246 res!1600061) b!3954247))

(declare-fun m!4523073 () Bool)

(assert (=> b!3954246 m!4523073))

(declare-fun m!4523075 () Bool)

(assert (=> b!3954246 m!4523075))

(declare-fun m!4523077 () Bool)

(assert (=> b!3954246 m!4523077))

(declare-fun m!4523079 () Bool)

(assert (=> b!3954245 m!4523079))

(declare-fun m!4523081 () Bool)

(assert (=> d!1172191 m!4523081))

(declare-fun m!4523083 () Bool)

(assert (=> d!1172191 m!4523083))

(declare-fun m!4523085 () Bool)

(assert (=> d!1172191 m!4523085))

(assert (=> b!3953871 d!1172191))

(declare-fun d!1172193 () Bool)

(declare-fun e!2448008 () Bool)

(assert (=> d!1172193 e!2448008))

(declare-fun res!1600063 () Bool)

(assert (=> d!1172193 (=> (not res!1600063) (not e!2448008))))

(declare-fun lt!1382590 () List!42205)

(assert (=> d!1172193 (= res!1600063 (= (content!6384 lt!1382590) ((_ map or) (content!6384 prefix!426) (content!6384 suffix!1176))))))

(declare-fun e!2448009 () List!42205)

(assert (=> d!1172193 (= lt!1382590 e!2448009)))

(declare-fun c!686398 () Bool)

(assert (=> d!1172193 (= c!686398 ((_ is Nil!42081) prefix!426))))

(assert (=> d!1172193 (= (++!10941 prefix!426 suffix!1176) lt!1382590)))

(declare-fun b!3954251 () Bool)

(assert (=> b!3954251 (= e!2448008 (or (not (= suffix!1176 Nil!42081)) (= lt!1382590 prefix!426)))))

(declare-fun b!3954249 () Bool)

(assert (=> b!3954249 (= e!2448009 (Cons!42081 (h!47501 prefix!426) (++!10941 (t!328942 prefix!426) suffix!1176)))))

(declare-fun b!3954248 () Bool)

(assert (=> b!3954248 (= e!2448009 suffix!1176)))

(declare-fun b!3954250 () Bool)

(declare-fun res!1600062 () Bool)

(assert (=> b!3954250 (=> (not res!1600062) (not e!2448008))))

(assert (=> b!3954250 (= res!1600062 (= (size!31525 lt!1382590) (+ (size!31525 prefix!426) (size!31525 suffix!1176))))))

(assert (= (and d!1172193 c!686398) b!3954248))

(assert (= (and d!1172193 (not c!686398)) b!3954249))

(assert (= (and d!1172193 res!1600063) b!3954250))

(assert (= (and b!3954250 res!1600062) b!3954251))

(declare-fun m!4523087 () Bool)

(assert (=> d!1172193 m!4523087))

(declare-fun m!4523089 () Bool)

(assert (=> d!1172193 m!4523089))

(declare-fun m!4523091 () Bool)

(assert (=> d!1172193 m!4523091))

(declare-fun m!4523093 () Bool)

(assert (=> b!3954249 m!4523093))

(declare-fun m!4523095 () Bool)

(assert (=> b!3954250 m!4523095))

(assert (=> b!3954250 m!4522643))

(assert (=> b!3954250 m!4522653))

(assert (=> b!3953871 d!1172193))

(declare-fun b!3954270 () Bool)

(declare-fun e!2448018 () Option!9012)

(declare-fun lt!1382605 () Option!9012)

(declare-fun lt!1382601 () Option!9012)

(assert (=> b!3954270 (= e!2448018 (ite (and ((_ is None!9011) lt!1382605) ((_ is None!9011) lt!1382601)) None!9011 (ite ((_ is None!9011) lt!1382601) lt!1382605 (ite ((_ is None!9011) lt!1382605) lt!1382601 (ite (>= (size!31524 (_1!23818 (v!39353 lt!1382605))) (size!31524 (_1!23818 (v!39353 lt!1382601)))) lt!1382605 lt!1382601)))))))

(declare-fun call!285276 () Option!9012)

(assert (=> b!3954270 (= lt!1382605 call!285276)))

(assert (=> b!3954270 (= lt!1382601 (maxPrefix!3485 thiss!20629 (t!328945 rules!2768) lt!1382469))))

(declare-fun b!3954271 () Bool)

(declare-fun res!1600080 () Bool)

(declare-fun e!2448016 () Bool)

(assert (=> b!3954271 (=> (not res!1600080) (not e!2448016))))

(declare-fun lt!1382602 () Option!9012)

(declare-fun get!13880 (Option!9012) tuple2!41368)

(assert (=> b!3954271 (= res!1600080 (= (++!10941 (list!15624 (charsOf!4410 (_1!23818 (get!13880 lt!1382602)))) (_2!23818 (get!13880 lt!1382602))) lt!1382469))))

(declare-fun b!3954272 () Bool)

(declare-fun res!1600079 () Bool)

(assert (=> b!3954272 (=> (not res!1600079) (not e!2448016))))

(assert (=> b!3954272 (= res!1600079 (< (size!31525 (_2!23818 (get!13880 lt!1382602))) (size!31525 lt!1382469)))))

(declare-fun b!3954273 () Bool)

(assert (=> b!3954273 (= e!2448016 (contains!8414 rules!2768 (rule!9562 (_1!23818 (get!13880 lt!1382602)))))))

(declare-fun b!3954274 () Bool)

(declare-fun e!2448017 () Bool)

(assert (=> b!3954274 (= e!2448017 e!2448016)))

(declare-fun res!1600082 () Bool)

(assert (=> b!3954274 (=> (not res!1600082) (not e!2448016))))

(declare-fun isDefined!6989 (Option!9012) Bool)

(assert (=> b!3954274 (= res!1600082 (isDefined!6989 lt!1382602))))

(declare-fun b!3954275 () Bool)

(assert (=> b!3954275 (= e!2448018 call!285276)))

(declare-fun b!3954276 () Bool)

(declare-fun res!1600083 () Bool)

(assert (=> b!3954276 (=> (not res!1600083) (not e!2448016))))

(declare-fun matchR!5520 (Regex!11497 List!42205) Bool)

(assert (=> b!3954276 (= res!1600083 (matchR!5520 (regex!6592 (rule!9562 (_1!23818 (get!13880 lt!1382602)))) (list!15624 (charsOf!4410 (_1!23818 (get!13880 lt!1382602))))))))

(declare-fun b!3954277 () Bool)

(declare-fun res!1600084 () Bool)

(assert (=> b!3954277 (=> (not res!1600084) (not e!2448016))))

(assert (=> b!3954277 (= res!1600084 (= (list!15624 (charsOf!4410 (_1!23818 (get!13880 lt!1382602)))) (originalCharacters!7192 (_1!23818 (get!13880 lt!1382602)))))))

(declare-fun b!3954278 () Bool)

(declare-fun res!1600078 () Bool)

(assert (=> b!3954278 (=> (not res!1600078) (not e!2448016))))

(assert (=> b!3954278 (= res!1600078 (= (value!208506 (_1!23818 (get!13880 lt!1382602))) (apply!9823 (transformation!6592 (rule!9562 (_1!23818 (get!13880 lt!1382602)))) (seqFromList!4851 (originalCharacters!7192 (_1!23818 (get!13880 lt!1382602)))))))))

(declare-fun d!1172195 () Bool)

(assert (=> d!1172195 e!2448017))

(declare-fun res!1600081 () Bool)

(assert (=> d!1172195 (=> res!1600081 e!2448017)))

(declare-fun isEmpty!25150 (Option!9012) Bool)

(assert (=> d!1172195 (= res!1600081 (isEmpty!25150 lt!1382602))))

(assert (=> d!1172195 (= lt!1382602 e!2448018)))

(declare-fun c!686401 () Bool)

(assert (=> d!1172195 (= c!686401 (and ((_ is Cons!42084) rules!2768) ((_ is Nil!42084) (t!328945 rules!2768))))))

(declare-fun lt!1382603 () Unit!60580)

(declare-fun lt!1382604 () Unit!60580)

(assert (=> d!1172195 (= lt!1382603 lt!1382604)))

(assert (=> d!1172195 (isPrefix!3681 lt!1382469 lt!1382469)))

(declare-fun lemmaIsPrefixRefl!2330 (List!42205 List!42205) Unit!60580)

(assert (=> d!1172195 (= lt!1382604 (lemmaIsPrefixRefl!2330 lt!1382469 lt!1382469))))

(declare-fun rulesValidInductive!2388 (LexerInterface!6181 List!42208) Bool)

(assert (=> d!1172195 (rulesValidInductive!2388 thiss!20629 rules!2768)))

(assert (=> d!1172195 (= (maxPrefix!3485 thiss!20629 rules!2768 lt!1382469) lt!1382602)))

(declare-fun bm!285271 () Bool)

(declare-fun maxPrefixOneRule!2537 (LexerInterface!6181 Rule!12984 List!42205) Option!9012)

(assert (=> bm!285271 (= call!285276 (maxPrefixOneRule!2537 thiss!20629 (h!47504 rules!2768) lt!1382469))))

(assert (= (and d!1172195 c!686401) b!3954275))

(assert (= (and d!1172195 (not c!686401)) b!3954270))

(assert (= (or b!3954275 b!3954270) bm!285271))

(assert (= (and d!1172195 (not res!1600081)) b!3954274))

(assert (= (and b!3954274 res!1600082) b!3954277))

(assert (= (and b!3954277 res!1600084) b!3954272))

(assert (= (and b!3954272 res!1600079) b!3954271))

(assert (= (and b!3954271 res!1600080) b!3954278))

(assert (= (and b!3954278 res!1600078) b!3954276))

(assert (= (and b!3954276 res!1600083) b!3954273))

(declare-fun m!4523097 () Bool)

(assert (=> b!3954274 m!4523097))

(declare-fun m!4523099 () Bool)

(assert (=> b!3954272 m!4523099))

(declare-fun m!4523101 () Bool)

(assert (=> b!3954272 m!4523101))

(assert (=> b!3954272 m!4522657))

(declare-fun m!4523103 () Bool)

(assert (=> d!1172195 m!4523103))

(declare-fun m!4523105 () Bool)

(assert (=> d!1172195 m!4523105))

(declare-fun m!4523107 () Bool)

(assert (=> d!1172195 m!4523107))

(declare-fun m!4523109 () Bool)

(assert (=> d!1172195 m!4523109))

(assert (=> b!3954271 m!4523099))

(declare-fun m!4523111 () Bool)

(assert (=> b!3954271 m!4523111))

(assert (=> b!3954271 m!4523111))

(declare-fun m!4523113 () Bool)

(assert (=> b!3954271 m!4523113))

(assert (=> b!3954271 m!4523113))

(declare-fun m!4523115 () Bool)

(assert (=> b!3954271 m!4523115))

(assert (=> b!3954273 m!4523099))

(declare-fun m!4523117 () Bool)

(assert (=> b!3954273 m!4523117))

(declare-fun m!4523119 () Bool)

(assert (=> b!3954270 m!4523119))

(declare-fun m!4523121 () Bool)

(assert (=> bm!285271 m!4523121))

(assert (=> b!3954276 m!4523099))

(assert (=> b!3954276 m!4523111))

(assert (=> b!3954276 m!4523111))

(assert (=> b!3954276 m!4523113))

(assert (=> b!3954276 m!4523113))

(declare-fun m!4523123 () Bool)

(assert (=> b!3954276 m!4523123))

(assert (=> b!3954277 m!4523099))

(assert (=> b!3954277 m!4523111))

(assert (=> b!3954277 m!4523111))

(assert (=> b!3954277 m!4523113))

(assert (=> b!3954278 m!4523099))

(declare-fun m!4523125 () Bool)

(assert (=> b!3954278 m!4523125))

(assert (=> b!3954278 m!4523125))

(declare-fun m!4523127 () Bool)

(assert (=> b!3954278 m!4523127))

(assert (=> b!3953850 d!1172195))

(declare-fun d!1172197 () Bool)

(declare-fun res!1600087 () Bool)

(declare-fun e!2448021 () Bool)

(assert (=> d!1172197 (=> (not res!1600087) (not e!2448021))))

(declare-fun rulesValid!2575 (LexerInterface!6181 List!42208) Bool)

(assert (=> d!1172197 (= res!1600087 (rulesValid!2575 thiss!20629 rules!2768))))

(assert (=> d!1172197 (= (rulesInvariant!5524 thiss!20629 rules!2768) e!2448021)))

(declare-fun b!3954281 () Bool)

(declare-datatypes ((List!42210 0))(
  ( (Nil!42086) (Cons!42086 (h!47506 String!47828) (t!329043 List!42210)) )
))
(declare-fun noDuplicateTag!2576 (LexerInterface!6181 List!42208 List!42210) Bool)

(assert (=> b!3954281 (= e!2448021 (noDuplicateTag!2576 thiss!20629 rules!2768 Nil!42086))))

(assert (= (and d!1172197 res!1600087) b!3954281))

(declare-fun m!4523129 () Bool)

(assert (=> d!1172197 m!4523129))

(declare-fun m!4523131 () Bool)

(assert (=> b!3954281 m!4523131))

(assert (=> b!3953861 d!1172197))

(declare-fun d!1172199 () Bool)

(assert (=> d!1172199 (= (inv!56303 (tag!7452 (h!47504 rules!2768))) (= (mod (str.len (value!208505 (tag!7452 (h!47504 rules!2768)))) 2) 0))))

(assert (=> b!3953872 d!1172199))

(declare-fun d!1172201 () Bool)

(declare-fun res!1600088 () Bool)

(declare-fun e!2448022 () Bool)

(assert (=> d!1172201 (=> (not res!1600088) (not e!2448022))))

(assert (=> d!1172201 (= res!1600088 (semiInverseModEq!2841 (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toValue!9068 (transformation!6592 (h!47504 rules!2768)))))))

(assert (=> d!1172201 (= (inv!56306 (transformation!6592 (h!47504 rules!2768))) e!2448022)))

(declare-fun b!3954282 () Bool)

(assert (=> b!3954282 (= e!2448022 (equivClasses!2740 (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toValue!9068 (transformation!6592 (h!47504 rules!2768)))))))

(assert (= (and d!1172201 res!1600088) b!3954282))

(declare-fun m!4523133 () Bool)

(assert (=> d!1172201 m!4523133))

(declare-fun m!4523135 () Bool)

(assert (=> b!3954282 m!4523135))

(assert (=> b!3953872 d!1172201))

(declare-fun b!3954287 () Bool)

(declare-fun e!2448025 () Bool)

(declare-fun tp!1204961 () Bool)

(assert (=> b!3954287 (= e!2448025 (and tp_is_empty!19965 tp!1204961))))

(assert (=> b!3953859 (= tp!1204878 e!2448025)))

(assert (= (and b!3953859 ((_ is Cons!42081) (originalCharacters!7192 (h!47503 suffixTokens!72)))) b!3954287))

(declare-fun b!3954298 () Bool)

(declare-fun e!2448028 () Bool)

(assert (=> b!3954298 (= e!2448028 tp_is_empty!19965)))

(declare-fun b!3954300 () Bool)

(declare-fun tp!1204975 () Bool)

(assert (=> b!3954300 (= e!2448028 tp!1204975)))

(declare-fun b!3954301 () Bool)

(declare-fun tp!1204974 () Bool)

(declare-fun tp!1204976 () Bool)

(assert (=> b!3954301 (= e!2448028 (and tp!1204974 tp!1204976))))

(assert (=> b!3953869 (= tp!1204869 e!2448028)))

(declare-fun b!3954299 () Bool)

(declare-fun tp!1204973 () Bool)

(declare-fun tp!1204972 () Bool)

(assert (=> b!3954299 (= e!2448028 (and tp!1204973 tp!1204972))))

(assert (= (and b!3953869 ((_ is ElementMatch!11497) (regex!6592 (rule!9562 (h!47503 suffixTokens!72))))) b!3954298))

(assert (= (and b!3953869 ((_ is Concat!18320) (regex!6592 (rule!9562 (h!47503 suffixTokens!72))))) b!3954299))

(assert (= (and b!3953869 ((_ is Star!11497) (regex!6592 (rule!9562 (h!47503 suffixTokens!72))))) b!3954300))

(assert (= (and b!3953869 ((_ is Union!11497) (regex!6592 (rule!9562 (h!47503 suffixTokens!72))))) b!3954301))

(declare-fun b!3954302 () Bool)

(declare-fun e!2448029 () Bool)

(declare-fun tp!1204977 () Bool)

(assert (=> b!3954302 (= e!2448029 (and tp_is_empty!19965 tp!1204977))))

(assert (=> b!3953848 (= tp!1204875 e!2448029)))

(assert (= (and b!3953848 ((_ is Cons!42081) (t!328942 suffixResult!91))) b!3954302))

(declare-fun b!3954303 () Bool)

(declare-fun e!2448030 () Bool)

(declare-fun tp!1204978 () Bool)

(assert (=> b!3954303 (= e!2448030 (and tp_is_empty!19965 tp!1204978))))

(assert (=> b!3953867 (= tp!1204874 e!2448030)))

(assert (= (and b!3953867 ((_ is Cons!42081) (originalCharacters!7192 (h!47503 prefixTokens!80)))) b!3954303))

(declare-fun b!3954304 () Bool)

(declare-fun e!2448031 () Bool)

(assert (=> b!3954304 (= e!2448031 tp_is_empty!19965)))

(declare-fun b!3954306 () Bool)

(declare-fun tp!1204982 () Bool)

(assert (=> b!3954306 (= e!2448031 tp!1204982)))

(declare-fun b!3954307 () Bool)

(declare-fun tp!1204981 () Bool)

(declare-fun tp!1204983 () Bool)

(assert (=> b!3954307 (= e!2448031 (and tp!1204981 tp!1204983))))

(assert (=> b!3953846 (= tp!1204879 e!2448031)))

(declare-fun b!3954305 () Bool)

(declare-fun tp!1204980 () Bool)

(declare-fun tp!1204979 () Bool)

(assert (=> b!3954305 (= e!2448031 (and tp!1204980 tp!1204979))))

(assert (= (and b!3953846 ((_ is ElementMatch!11497) (regex!6592 (rule!9562 (h!47503 prefixTokens!80))))) b!3954304))

(assert (= (and b!3953846 ((_ is Concat!18320) (regex!6592 (rule!9562 (h!47503 prefixTokens!80))))) b!3954305))

(assert (= (and b!3953846 ((_ is Star!11497) (regex!6592 (rule!9562 (h!47503 prefixTokens!80))))) b!3954306))

(assert (= (and b!3953846 ((_ is Union!11497) (regex!6592 (rule!9562 (h!47503 prefixTokens!80))))) b!3954307))

(declare-fun b!3954321 () Bool)

(declare-fun b_free!108885 () Bool)

(declare-fun b_next!109589 () Bool)

(assert (=> b!3954321 (= b_free!108885 (not b_next!109589))))

(declare-fun t!329019 () Bool)

(declare-fun tb!238077 () Bool)

(assert (=> (and b!3954321 (= (toValue!9068 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329019) tb!238077))

(declare-fun result!288336 () Bool)

(assert (= result!288336 result!288250))

(assert (=> d!1172091 t!329019))

(declare-fun tp!1204994 () Bool)

(declare-fun b_and!303223 () Bool)

(assert (=> b!3954321 (= tp!1204994 (and (=> t!329019 result!288336) b_and!303223))))

(declare-fun b_free!108887 () Bool)

(declare-fun b_next!109591 () Bool)

(assert (=> b!3954321 (= b_free!108887 (not b_next!109591))))

(declare-fun t!329021 () Bool)

(declare-fun tb!238079 () Bool)

(assert (=> (and b!3954321 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329021) tb!238079))

(declare-fun result!288338 () Bool)

(assert (= result!288338 result!288258))

(assert (=> d!1172117 t!329021))

(declare-fun t!329023 () Bool)

(declare-fun tb!238081 () Bool)

(assert (=> (and b!3954321 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!329023) tb!238081))

(declare-fun result!288340 () Bool)

(assert (= result!288340 result!288288))

(assert (=> b!3954161 t!329023))

(declare-fun t!329025 () Bool)

(declare-fun tb!238083 () Bool)

(assert (=> (and b!3954321 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329025) tb!238083))

(declare-fun result!288342 () Bool)

(assert (= result!288342 result!288316))

(assert (=> b!3954222 t!329025))

(declare-fun b_and!303225 () Bool)

(declare-fun tp!1204996 () Bool)

(assert (=> b!3954321 (= tp!1204996 (and (=> t!329021 result!288338) (=> t!329023 result!288340) (=> t!329025 result!288342) b_and!303225))))

(declare-fun e!2448048 () Bool)

(declare-fun tp!1204998 () Bool)

(declare-fun b!3954320 () Bool)

(declare-fun e!2448045 () Bool)

(assert (=> b!3954320 (= e!2448048 (and tp!1204998 (inv!56303 (tag!7452 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (inv!56306 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) e!2448045))))

(declare-fun e!2448047 () Bool)

(declare-fun b!3954318 () Bool)

(declare-fun e!2448046 () Bool)

(declare-fun tp!1204995 () Bool)

(assert (=> b!3954318 (= e!2448047 (and (inv!56307 (h!47503 (t!328944 prefixTokens!80))) e!2448046 tp!1204995))))

(assert (=> b!3953856 (= tp!1204882 e!2448047)))

(assert (=> b!3954321 (= e!2448045 (and tp!1204994 tp!1204996))))

(declare-fun tp!1204997 () Bool)

(declare-fun b!3954319 () Bool)

(assert (=> b!3954319 (= e!2448046 (and (inv!21 (value!208506 (h!47503 (t!328944 prefixTokens!80)))) e!2448048 tp!1204997))))

(assert (= b!3954320 b!3954321))

(assert (= b!3954319 b!3954320))

(assert (= b!3954318 b!3954319))

(assert (= (and b!3953856 ((_ is Cons!42083) (t!328944 prefixTokens!80))) b!3954318))

(declare-fun m!4523137 () Bool)

(assert (=> b!3954320 m!4523137))

(declare-fun m!4523139 () Bool)

(assert (=> b!3954320 m!4523139))

(declare-fun m!4523141 () Bool)

(assert (=> b!3954318 m!4523141))

(declare-fun m!4523143 () Bool)

(assert (=> b!3954319 m!4523143))

(declare-fun b!3954322 () Bool)

(declare-fun e!2448050 () Bool)

(declare-fun tp!1204999 () Bool)

(assert (=> b!3954322 (= e!2448050 (and tp_is_empty!19965 tp!1204999))))

(assert (=> b!3953844 (= tp!1204883 e!2448050)))

(assert (= (and b!3953844 ((_ is Cons!42081) (t!328942 prefix!426))) b!3954322))

(declare-fun b!3954323 () Bool)

(declare-fun e!2448051 () Bool)

(declare-fun tp!1205000 () Bool)

(assert (=> b!3954323 (= e!2448051 (and tp_is_empty!19965 tp!1205000))))

(assert (=> b!3953853 (= tp!1204872 e!2448051)))

(assert (= (and b!3953853 ((_ is Cons!42081) (t!328942 suffix!1176))) b!3954323))

(declare-fun b!3954327 () Bool)

(declare-fun b_free!108889 () Bool)

(declare-fun b_next!109593 () Bool)

(assert (=> b!3954327 (= b_free!108889 (not b_next!109593))))

(declare-fun tb!238085 () Bool)

(declare-fun t!329027 () Bool)

(assert (=> (and b!3954327 (= (toValue!9068 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329027) tb!238085))

(declare-fun result!288344 () Bool)

(assert (= result!288344 result!288250))

(assert (=> d!1172091 t!329027))

(declare-fun tp!1205001 () Bool)

(declare-fun b_and!303227 () Bool)

(assert (=> b!3954327 (= tp!1205001 (and (=> t!329027 result!288344) b_and!303227))))

(declare-fun b_free!108891 () Bool)

(declare-fun b_next!109595 () Bool)

(assert (=> b!3954327 (= b_free!108891 (not b_next!109595))))

(declare-fun t!329029 () Bool)

(declare-fun tb!238087 () Bool)

(assert (=> (and b!3954327 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329029) tb!238087))

(declare-fun result!288346 () Bool)

(assert (= result!288346 result!288258))

(assert (=> d!1172117 t!329029))

(declare-fun tb!238089 () Bool)

(declare-fun t!329031 () Bool)

(assert (=> (and b!3954327 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!329031) tb!238089))

(declare-fun result!288348 () Bool)

(assert (= result!288348 result!288288))

(assert (=> b!3954161 t!329031))

(declare-fun t!329033 () Bool)

(declare-fun tb!238091 () Bool)

(assert (=> (and b!3954327 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329033) tb!238091))

(declare-fun result!288350 () Bool)

(assert (= result!288350 result!288316))

(assert (=> b!3954222 t!329033))

(declare-fun b_and!303229 () Bool)

(declare-fun tp!1205003 () Bool)

(assert (=> b!3954327 (= tp!1205003 (and (=> t!329029 result!288346) (=> t!329031 result!288348) (=> t!329033 result!288350) b_and!303229))))

(declare-fun tp!1205005 () Bool)

(declare-fun b!3954326 () Bool)

(declare-fun e!2448053 () Bool)

(declare-fun e!2448056 () Bool)

(assert (=> b!3954326 (= e!2448056 (and tp!1205005 (inv!56303 (tag!7452 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (inv!56306 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) e!2448053))))

(declare-fun e!2448054 () Bool)

(declare-fun e!2448055 () Bool)

(declare-fun tp!1205002 () Bool)

(declare-fun b!3954324 () Bool)

(assert (=> b!3954324 (= e!2448055 (and (inv!56307 (h!47503 (t!328944 suffixTokens!72))) e!2448054 tp!1205002))))

(assert (=> b!3953851 (= tp!1204868 e!2448055)))

(assert (=> b!3954327 (= e!2448053 (and tp!1205001 tp!1205003))))

(declare-fun tp!1205004 () Bool)

(declare-fun b!3954325 () Bool)

(assert (=> b!3954325 (= e!2448054 (and (inv!21 (value!208506 (h!47503 (t!328944 suffixTokens!72)))) e!2448056 tp!1205004))))

(assert (= b!3954326 b!3954327))

(assert (= b!3954325 b!3954326))

(assert (= b!3954324 b!3954325))

(assert (= (and b!3953851 ((_ is Cons!42083) (t!328944 suffixTokens!72))) b!3954324))

(declare-fun m!4523145 () Bool)

(assert (=> b!3954326 m!4523145))

(declare-fun m!4523147 () Bool)

(assert (=> b!3954326 m!4523147))

(declare-fun m!4523149 () Bool)

(assert (=> b!3954324 m!4523149))

(declare-fun m!4523151 () Bool)

(assert (=> b!3954325 m!4523151))

(declare-fun b!3954338 () Bool)

(declare-fun b_free!108893 () Bool)

(declare-fun b_next!109597 () Bool)

(assert (=> b!3954338 (= b_free!108893 (not b_next!109597))))

(declare-fun tb!238093 () Bool)

(declare-fun t!329035 () Bool)

(assert (=> (and b!3954338 (= (toValue!9068 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toValue!9068 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329035) tb!238093))

(declare-fun result!288354 () Bool)

(assert (= result!288354 result!288250))

(assert (=> d!1172091 t!329035))

(declare-fun tp!1205016 () Bool)

(declare-fun b_and!303231 () Bool)

(assert (=> b!3954338 (= tp!1205016 (and (=> t!329035 result!288354) b_and!303231))))

(declare-fun b_free!108895 () Bool)

(declare-fun b_next!109599 () Bool)

(assert (=> b!3954338 (= b_free!108895 (not b_next!109599))))

(declare-fun tb!238095 () Bool)

(declare-fun t!329037 () Bool)

(assert (=> (and b!3954338 (= (toChars!8927 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toChars!8927 (transformation!6592 (rule!9562 (_1!23818 (v!39353 lt!1382459)))))) t!329037) tb!238095))

(declare-fun result!288356 () Bool)

(assert (= result!288356 result!288258))

(assert (=> d!1172117 t!329037))

(declare-fun tb!238097 () Bool)

(declare-fun t!329039 () Bool)

(assert (=> (and b!3954338 (= (toChars!8927 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80))))) t!329039) tb!238097))

(declare-fun result!288358 () Bool)

(assert (= result!288358 result!288288))

(assert (=> b!3954161 t!329039))

(declare-fun tb!238099 () Bool)

(declare-fun t!329041 () Bool)

(assert (=> (and b!3954338 (= (toChars!8927 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72))))) t!329041) tb!238099))

(declare-fun result!288360 () Bool)

(assert (= result!288360 result!288316))

(assert (=> b!3954222 t!329041))

(declare-fun tp!1205015 () Bool)

(declare-fun b_and!303233 () Bool)

(assert (=> b!3954338 (= tp!1205015 (and (=> t!329037 result!288356) (=> t!329039 result!288358) (=> t!329041 result!288360) b_and!303233))))

(declare-fun e!2448066 () Bool)

(assert (=> b!3954338 (= e!2448066 (and tp!1205016 tp!1205015))))

(declare-fun e!2448068 () Bool)

(declare-fun b!3954337 () Bool)

(declare-fun tp!1205014 () Bool)

(assert (=> b!3954337 (= e!2448068 (and tp!1205014 (inv!56303 (tag!7452 (h!47504 (t!328945 rules!2768)))) (inv!56306 (transformation!6592 (h!47504 (t!328945 rules!2768)))) e!2448066))))

(declare-fun b!3954336 () Bool)

(declare-fun e!2448069 () Bool)

(declare-fun tp!1205017 () Bool)

(assert (=> b!3954336 (= e!2448069 (and e!2448068 tp!1205017))))

(assert (=> b!3953862 (= tp!1204873 e!2448069)))

(assert (= b!3954337 b!3954338))

(assert (= b!3954336 b!3954337))

(assert (= (and b!3953862 ((_ is Cons!42084) (t!328945 rules!2768))) b!3954336))

(declare-fun m!4523153 () Bool)

(assert (=> b!3954337 m!4523153))

(declare-fun m!4523155 () Bool)

(assert (=> b!3954337 m!4523155))

(declare-fun b!3954339 () Bool)

(declare-fun e!2448070 () Bool)

(assert (=> b!3954339 (= e!2448070 tp_is_empty!19965)))

(declare-fun b!3954341 () Bool)

(declare-fun tp!1205021 () Bool)

(assert (=> b!3954341 (= e!2448070 tp!1205021)))

(declare-fun b!3954342 () Bool)

(declare-fun tp!1205020 () Bool)

(declare-fun tp!1205022 () Bool)

(assert (=> b!3954342 (= e!2448070 (and tp!1205020 tp!1205022))))

(assert (=> b!3953872 (= tp!1204880 e!2448070)))

(declare-fun b!3954340 () Bool)

(declare-fun tp!1205019 () Bool)

(declare-fun tp!1205018 () Bool)

(assert (=> b!3954340 (= e!2448070 (and tp!1205019 tp!1205018))))

(assert (= (and b!3953872 ((_ is ElementMatch!11497) (regex!6592 (h!47504 rules!2768)))) b!3954339))

(assert (= (and b!3953872 ((_ is Concat!18320) (regex!6592 (h!47504 rules!2768)))) b!3954340))

(assert (= (and b!3953872 ((_ is Star!11497) (regex!6592 (h!47504 rules!2768)))) b!3954341))

(assert (= (and b!3953872 ((_ is Union!11497) (regex!6592 (h!47504 rules!2768)))) b!3954342))

(declare-fun b_lambda!115667 () Bool)

(assert (= b_lambda!115659 (or (and b!3954321 b_free!108887 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))))) (and b!3954338 b_free!108895 (= (toChars!8927 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))))) (and b!3953849 b_free!108863 (= (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))))) (and b!3953863 b_free!108867 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))))) (and b!3953857 b_free!108871) (and b!3954327 b_free!108891 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))))) b_lambda!115667)))

(declare-fun b_lambda!115669 () Bool)

(assert (= b_lambda!115661 (or (and b!3953857 b_free!108871 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 prefixTokens!80)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))))) (and b!3954321 b_free!108887 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 prefixTokens!80))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))))) (and b!3954327 b_free!108891 (= (toChars!8927 (transformation!6592 (rule!9562 (h!47503 (t!328944 suffixTokens!72))))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))))) (and b!3954338 b_free!108895 (= (toChars!8927 (transformation!6592 (h!47504 (t!328945 rules!2768)))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))))) (and b!3953849 b_free!108863 (= (toChars!8927 (transformation!6592 (h!47504 rules!2768))) (toChars!8927 (transformation!6592 (rule!9562 (h!47503 suffixTokens!72)))))) (and b!3953863 b_free!108867) b_lambda!115669)))

(check-sat (not b!3954278) b_and!303225 (not d!1172127) (not b!3954281) (not d!1172079) (not b_next!109597) (not b!3954271) (not b!3954121) (not d!1172189) (not b!3954302) (not b!3954046) (not b!3954062) b_and!303171 (not b!3954305) (not b!3954322) (not b!3954274) b_and!303219 (not b_lambda!115649) (not d!1172163) (not d!1172185) (not b_next!109599) (not b!3954342) (not b!3954307) (not d!1172087) (not b!3953973) (not d!1172117) (not b!3954221) (not bm!285271) (not b_lambda!115667) (not b!3954241) (not b_lambda!115669) (not b!3954238) b_and!303173 (not b!3954026) (not d!1172115) (not b!3954273) (not b!3954249) (not b!3954250) (not b!3953886) (not d!1172191) (not b!3954337) (not d!1172167) (not b!3954161) (not d!1172073) (not d!1172147) b_and!303169 (not b!3954169) (not d!1172081) (not b!3953885) (not d!1172047) (not b!3954089) (not d!1172201) (not b_next!109567) (not b_next!109575) (not b!3953969) b_and!303221 (not d!1172113) (not b!3954301) (not b!3954324) (not b!3954306) (not b_lambda!115651) (not b!3954236) (not tb!238041) (not b!3953965) (not b!3954319) (not b!3954318) (not b!3954276) (not d!1172197) (not b!3954282) (not d!1172153) (not b!3954323) (not b!3954242) (not b!3954223) (not b!3953952) (not b_next!109569) (not b!3953972) (not b!3953942) (not b!3953955) (not b!3954325) (not b!3954216) (not b_next!109593) b_and!303227 (not b!3953970) (not b_next!109565) b_and!303217 (not b_next!109571) (not tb!238017) (not d!1172089) (not b!3953949) (not d!1172181) (not b!3953893) b_and!303229 (not b!3953944) (not d!1172195) (not b!3954336) (not b!3954027) (not tb!238063) (not b!3954320) b_and!303223 (not b!3954340) (not b!3954162) (not b!3954287) (not b!3954277) (not b!3954341) (not b!3954028) (not d!1172157) (not tb!238011) (not b!3954120) (not b!3954246) (not b_next!109573) (not b!3954303) (not b!3954270) (not b_next!109595) (not b!3953966) tp_is_empty!19965 (not b_next!109591) (not b!3954299) (not b!3953895) (not b!3954132) (not b!3954222) (not d!1172105) (not b!3953953) (not b!3954326) (not b_next!109589) (not d!1172193) b_and!303233 (not b!3953887) (not b!3954272) (not b!3953945) (not b!3953954) b_and!303231 (not b!3954245) (not b!3954300) (not b!3954239))
(check-sat (not b_next!109597) b_and!303171 b_and!303219 (not b_next!109599) b_and!303173 b_and!303169 b_and!303221 (not b_next!109569) b_and!303229 b_and!303223 b_and!303225 (not b_next!109573) b_and!303231 (not b_next!109567) (not b_next!109575) (not b_next!109593) b_and!303227 (not b_next!109565) b_and!303217 (not b_next!109571) (not b_next!109595) (not b_next!109591) (not b_next!109589) b_and!303233)
