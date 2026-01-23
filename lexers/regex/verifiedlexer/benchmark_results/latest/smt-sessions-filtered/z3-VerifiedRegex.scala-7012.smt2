; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372456 () Bool)

(assert start!372456)

(declare-fun b!3959839 () Bool)

(declare-fun b_free!109245 () Bool)

(declare-fun b_next!109949 () Bool)

(assert (=> b!3959839 (= b_free!109245 (not b_next!109949))))

(declare-fun tp!1206859 () Bool)

(declare-fun b_and!303979 () Bool)

(assert (=> b!3959839 (= tp!1206859 b_and!303979)))

(declare-fun b_free!109247 () Bool)

(declare-fun b_next!109951 () Bool)

(assert (=> b!3959839 (= b_free!109247 (not b_next!109951))))

(declare-fun tp!1206858 () Bool)

(declare-fun b_and!303981 () Bool)

(assert (=> b!3959839 (= tp!1206858 b_and!303981)))

(declare-fun b!3959856 () Bool)

(declare-fun b_free!109249 () Bool)

(declare-fun b_next!109953 () Bool)

(assert (=> b!3959856 (= b_free!109249 (not b_next!109953))))

(declare-fun tp!1206850 () Bool)

(declare-fun b_and!303983 () Bool)

(assert (=> b!3959856 (= tp!1206850 b_and!303983)))

(declare-fun b_free!109251 () Bool)

(declare-fun b_next!109955 () Bool)

(assert (=> b!3959856 (= b_free!109251 (not b_next!109955))))

(declare-fun tp!1206853 () Bool)

(declare-fun b_and!303985 () Bool)

(assert (=> b!3959856 (= tp!1206853 b_and!303985)))

(declare-fun b!3959857 () Bool)

(declare-fun b_free!109253 () Bool)

(declare-fun b_next!109957 () Bool)

(assert (=> b!3959857 (= b_free!109253 (not b_next!109957))))

(declare-fun tp!1206852 () Bool)

(declare-fun b_and!303987 () Bool)

(assert (=> b!3959857 (= tp!1206852 b_and!303987)))

(declare-fun b_free!109255 () Bool)

(declare-fun b_next!109959 () Bool)

(assert (=> b!3959857 (= b_free!109255 (not b_next!109959))))

(declare-fun tp!1206854 () Bool)

(declare-fun b_and!303989 () Bool)

(assert (=> b!3959857 (= tp!1206854 b_and!303989)))

(declare-fun e!2451857 () Bool)

(declare-datatypes ((C!23220 0))(
  ( (C!23221 (val!13704 Int)) )
))
(declare-datatypes ((List!42295 0))(
  ( (Nil!42171) (Cons!42171 (h!47591 C!23220) (t!329766 List!42295)) )
))
(declare-datatypes ((IArray!25651 0))(
  ( (IArray!25652 (innerList!12883 List!42295)) )
))
(declare-datatypes ((Conc!12823 0))(
  ( (Node!12823 (left!32011 Conc!12823) (right!32341 Conc!12823) (csize!25876 Int) (cheight!13034 Int)) (Leaf!19836 (xs!16129 IArray!25651) (csize!25877 Int)) (Empty!12823) )
))
(declare-datatypes ((BalanceConc!25240 0))(
  ( (BalanceConc!25241 (c!687148 Conc!12823)) )
))
(declare-datatypes ((List!42296 0))(
  ( (Nil!42172) (Cons!42172 (h!47592 (_ BitVec 16)) (t!329767 List!42296)) )
))
(declare-datatypes ((TokenValue!6842 0))(
  ( (FloatLiteralValue!13684 (text!48339 List!42296)) (TokenValueExt!6841 (__x!25901 Int)) (Broken!34210 (value!209050 List!42296)) (Object!6965) (End!6842) (Def!6842) (Underscore!6842) (Match!6842) (Else!6842) (Error!6842) (Case!6842) (If!6842) (Extends!6842) (Abstract!6842) (Class!6842) (Val!6842) (DelimiterValue!13684 (del!6902 List!42296)) (KeywordValue!6848 (value!209051 List!42296)) (CommentValue!13684 (value!209052 List!42296)) (WhitespaceValue!13684 (value!209053 List!42296)) (IndentationValue!6842 (value!209054 List!42296)) (String!47927) (Int32!6842) (Broken!34211 (value!209055 List!42296)) (Boolean!6843) (Unit!60660) (OperatorValue!6845 (op!6902 List!42296)) (IdentifierValue!13684 (value!209056 List!42296)) (IdentifierValue!13685 (value!209057 List!42296)) (WhitespaceValue!13685 (value!209058 List!42296)) (True!13684) (False!13684) (Broken!34212 (value!209059 List!42296)) (Broken!34213 (value!209060 List!42296)) (True!13685) (RightBrace!6842) (RightBracket!6842) (Colon!6842) (Null!6842) (Comma!6842) (LeftBracket!6842) (False!13685) (LeftBrace!6842) (ImaginaryLiteralValue!6842 (text!48340 List!42296)) (StringLiteralValue!20526 (value!209061 List!42296)) (EOFValue!6842 (value!209062 List!42296)) (IdentValue!6842 (value!209063 List!42296)) (DelimiterValue!13685 (value!209064 List!42296)) (DedentValue!6842 (value!209065 List!42296)) (NewLineValue!6842 (value!209066 List!42296)) (IntegerValue!20526 (value!209067 (_ BitVec 32)) (text!48341 List!42296)) (IntegerValue!20527 (value!209068 Int) (text!48342 List!42296)) (Times!6842) (Or!6842) (Equal!6842) (Minus!6842) (Broken!34214 (value!209069 List!42296)) (And!6842) (Div!6842) (LessEqual!6842) (Mod!6842) (Concat!18359) (Not!6842) (Plus!6842) (SpaceValue!6842 (value!209070 List!42296)) (IntegerValue!20528 (value!209071 Int) (text!48343 List!42296)) (StringLiteralValue!20527 (text!48344 List!42296)) (FloatLiteralValue!13685 (text!48345 List!42296)) (BytesLiteralValue!6842 (value!209072 List!42296)) (CommentValue!13685 (value!209073 List!42296)) (StringLiteralValue!20528 (value!209074 List!42296)) (ErrorTokenValue!6842 (msg!6903 List!42296)) )
))
(declare-datatypes ((Regex!11517 0))(
  ( (ElementMatch!11517 (c!687149 C!23220)) (Concat!18360 (regOne!23546 Regex!11517) (regTwo!23546 Regex!11517)) (EmptyExpr!11517) (Star!11517 (reg!11846 Regex!11517)) (EmptyLang!11517) (Union!11517 (regOne!23547 Regex!11517) (regTwo!23547 Regex!11517)) )
))
(declare-datatypes ((String!47928 0))(
  ( (String!47929 (value!209075 String)) )
))
(declare-datatypes ((TokenValueInjection!13112 0))(
  ( (TokenValueInjection!13113 (toValue!9092 Int) (toChars!8951 Int)) )
))
(declare-datatypes ((Rule!13024 0))(
  ( (Rule!13025 (regex!6612 Regex!11517) (tag!7472 String!47928) (isSeparator!6612 Bool) (transformation!6612 TokenValueInjection!13112)) )
))
(declare-datatypes ((Token!12362 0))(
  ( (Token!12363 (value!209076 TokenValue!6842) (rule!9590 Rule!13024) (size!31582 Int) (originalCharacters!7212 List!42295)) )
))
(declare-datatypes ((List!42297 0))(
  ( (Nil!42173) (Cons!42173 (h!47593 Token!12362) (t!329768 List!42297)) )
))
(declare-fun prefixTokens!80 () List!42297)

(declare-fun e!2451876 () Bool)

(declare-fun b!3959830 () Bool)

(declare-fun tp!1206846 () Bool)

(declare-fun inv!21 (TokenValue!6842) Bool)

(assert (=> b!3959830 (= e!2451857 (and (inv!21 (value!209076 (h!47593 prefixTokens!80))) e!2451876 tp!1206846))))

(declare-fun b!3959831 () Bool)

(declare-fun e!2451865 () Bool)

(declare-fun e!2451864 () Bool)

(assert (=> b!3959831 (= e!2451865 e!2451864)))

(declare-fun res!1602605 () Bool)

(assert (=> b!3959831 (=> (not res!1602605) (not e!2451864))))

(declare-datatypes ((tuple2!41462 0))(
  ( (tuple2!41463 (_1!23865 List!42297) (_2!23865 List!42295)) )
))
(declare-fun lt!1384926 () tuple2!41462)

(declare-fun suffixResult!91 () List!42295)

(declare-fun lt!1384932 () List!42297)

(assert (=> b!3959831 (= res!1602605 (= lt!1384926 (tuple2!41463 lt!1384932 suffixResult!91)))))

(declare-datatypes ((List!42298 0))(
  ( (Nil!42174) (Cons!42174 (h!47594 Rule!13024) (t!329769 List!42298)) )
))
(declare-fun rules!2768 () List!42298)

(declare-fun lt!1384938 () List!42295)

(declare-datatypes ((LexerInterface!6201 0))(
  ( (LexerInterfaceExt!6198 (__x!25902 Int)) (Lexer!6199) )
))
(declare-fun thiss!20629 () LexerInterface!6201)

(declare-fun lexList!1969 (LexerInterface!6201 List!42298 List!42295) tuple2!41462)

(assert (=> b!3959831 (= lt!1384926 (lexList!1969 thiss!20629 rules!2768 lt!1384938))))

(declare-fun suffixTokens!72 () List!42297)

(declare-fun ++!10981 (List!42297 List!42297) List!42297)

(assert (=> b!3959831 (= lt!1384932 (++!10981 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42295)

(declare-fun suffix!1176 () List!42295)

(declare-fun ++!10982 (List!42295 List!42295) List!42295)

(assert (=> b!3959831 (= lt!1384938 (++!10982 prefix!426 suffix!1176))))

(declare-fun b!3959832 () Bool)

(declare-fun res!1602607 () Bool)

(assert (=> b!3959832 (=> (not res!1602607) (not e!2451865))))

(declare-fun rulesInvariant!5544 (LexerInterface!6201 List!42298) Bool)

(assert (=> b!3959832 (= res!1602607 (rulesInvariant!5544 thiss!20629 rules!2768))))

(declare-fun b!3959833 () Bool)

(declare-fun res!1602609 () Bool)

(assert (=> b!3959833 (=> (not res!1602609) (not e!2451865))))

(declare-fun isEmpty!25216 (List!42298) Bool)

(assert (=> b!3959833 (= res!1602609 (not (isEmpty!25216 rules!2768)))))

(declare-fun bm!285383 () Bool)

(declare-datatypes ((tuple2!41464 0))(
  ( (tuple2!41465 (_1!23866 Token!12362) (_2!23866 List!42295)) )
))
(declare-fun lt!1384914 () tuple2!41464)

(declare-fun call!285388 () tuple2!41462)

(assert (=> bm!285383 (= call!285388 (lexList!1969 thiss!20629 rules!2768 (_2!23866 lt!1384914)))))

(declare-fun b!3959834 () Bool)

(declare-fun res!1602610 () Bool)

(assert (=> b!3959834 (=> (not res!1602610) (not e!2451865))))

(declare-fun isEmpty!25217 (List!42295) Bool)

(assert (=> b!3959834 (= res!1602610 (not (isEmpty!25217 prefix!426)))))

(declare-fun b!3959835 () Bool)

(declare-fun e!2451880 () Bool)

(declare-datatypes ((Option!9032 0))(
  ( (None!9031) (Some!9031 (v!39377 tuple2!41464)) )
))
(declare-fun lt!1384922 () Option!9032)

(declare-fun size!31583 (List!42295) Int)

(assert (=> b!3959835 (= e!2451880 (= (size!31582 (_1!23866 (v!39377 lt!1384922))) (size!31583 (originalCharacters!7212 (_1!23866 (v!39377 lt!1384922))))))))

(declare-fun b!3959836 () Bool)

(declare-datatypes ((Unit!60661 0))(
  ( (Unit!60662) )
))
(declare-fun e!2451862 () Unit!60661)

(declare-fun Unit!60663 () Unit!60661)

(assert (=> b!3959836 (= e!2451862 Unit!60663)))

(declare-fun lt!1384920 () Int)

(assert (=> b!3959836 (= lt!1384920 (size!31583 lt!1384938))))

(declare-fun lt!1384918 () List!42295)

(declare-fun lt!1384939 () Unit!60661)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1381 (LexerInterface!6201 List!42298 List!42295 List!42295 List!42295 Rule!13024) Unit!60661)

(assert (=> b!3959836 (= lt!1384939 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1381 thiss!20629 rules!2768 lt!1384918 lt!1384938 (_2!23866 (v!39377 lt!1384922)) (rule!9590 (_1!23866 (v!39377 lt!1384922)))))))

(declare-fun lt!1384935 () TokenValue!6842)

(declare-fun lt!1384917 () Int)

(declare-fun maxPrefixOneRule!2555 (LexerInterface!6201 Rule!13024 List!42295) Option!9032)

(assert (=> b!3959836 (= (maxPrefixOneRule!2555 thiss!20629 (rule!9590 (_1!23866 (v!39377 lt!1384922))) lt!1384938) (Some!9031 (tuple2!41465 (Token!12363 lt!1384935 (rule!9590 (_1!23866 (v!39377 lt!1384922))) lt!1384917 lt!1384918) (_2!23866 (v!39377 lt!1384922)))))))

(declare-fun get!13908 (Option!9032) tuple2!41464)

(assert (=> b!3959836 (= lt!1384914 (get!13908 lt!1384922))))

(declare-fun c!687146 () Bool)

(declare-fun lt!1384915 () Int)

(assert (=> b!3959836 (= c!687146 (< (size!31583 (_2!23866 lt!1384914)) lt!1384915))))

(declare-fun lt!1384921 () Unit!60661)

(declare-fun e!2451854 () Unit!60661)

(assert (=> b!3959836 (= lt!1384921 e!2451854)))

(assert (=> b!3959836 false))

(declare-fun e!2451861 () Bool)

(declare-fun b!3959837 () Bool)

(declare-fun e!2451852 () Bool)

(declare-fun tp!1206856 () Bool)

(assert (=> b!3959837 (= e!2451852 (and (inv!21 (value!209076 (h!47593 suffixTokens!72))) e!2451861 tp!1206856))))

(declare-fun b!3959838 () Bool)

(declare-fun e!2451867 () Unit!60661)

(declare-fun Unit!60664 () Unit!60661)

(assert (=> b!3959838 (= e!2451867 Unit!60664)))

(declare-fun lt!1384924 () Unit!60661)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!606 (List!42295 List!42295 List!42295 List!42295) Unit!60661)

(assert (=> b!3959838 (= lt!1384924 (lemmaConcatSameAndSameSizesThenSameLists!606 lt!1384918 (_2!23866 (v!39377 lt!1384922)) lt!1384918 (_2!23866 lt!1384914)))))

(assert (=> b!3959838 (= (_2!23866 (v!39377 lt!1384922)) (_2!23866 lt!1384914))))

(declare-fun lt!1384934 () Unit!60661)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!140 (LexerInterface!6201 List!42298 List!42295 List!42295 List!42297 List!42295) Unit!60661)

(assert (=> b!3959838 (= lt!1384934 (lemmaLexWithSmallerInputCannotProduceSameResults!140 thiss!20629 rules!2768 suffix!1176 (_2!23866 lt!1384914) suffixTokens!72 suffixResult!91))))

(declare-fun res!1602608 () Bool)

(declare-fun lt!1384931 () tuple2!41462)

(assert (=> b!3959838 (= res!1602608 (not (= call!285388 lt!1384931)))))

(declare-fun e!2451863 () Bool)

(assert (=> b!3959838 (=> (not res!1602608) (not e!2451863))))

(assert (=> b!3959838 e!2451863))

(declare-fun e!2451855 () Bool)

(assert (=> b!3959839 (= e!2451855 (and tp!1206859 tp!1206858))))

(declare-fun b!3959840 () Bool)

(declare-fun e!2451872 () Bool)

(assert (=> b!3959840 (= e!2451872 true)))

(declare-fun lt!1384927 () Bool)

(declare-fun isPrefix!3701 (List!42295 List!42295) Bool)

(assert (=> b!3959840 (= lt!1384927 (isPrefix!3701 lt!1384918 lt!1384938))))

(assert (=> b!3959840 (isPrefix!3701 prefix!426 lt!1384938)))

(declare-fun lt!1384928 () Unit!60661)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2560 (List!42295 List!42295) Unit!60661)

(assert (=> b!3959840 (= lt!1384928 (lemmaConcatTwoListThenFirstIsPrefix!2560 prefix!426 suffix!1176))))

(declare-fun b!3959841 () Bool)

(declare-fun e!2451875 () Bool)

(declare-fun e!2451866 () Bool)

(assert (=> b!3959841 (= e!2451875 e!2451866)))

(declare-fun res!1602602 () Bool)

(assert (=> b!3959841 (=> (not res!1602602) (not e!2451866))))

(get-info :version)

(assert (=> b!3959841 (= res!1602602 ((_ is Some!9031) lt!1384922))))

(declare-fun maxPrefix!3505 (LexerInterface!6201 List!42298 List!42295) Option!9032)

(assert (=> b!3959841 (= lt!1384922 (maxPrefix!3505 thiss!20629 rules!2768 lt!1384938))))

(declare-fun b!3959842 () Bool)

(declare-fun Unit!60665 () Unit!60661)

(assert (=> b!3959842 (= e!2451867 Unit!60665)))

(declare-fun lt!1384916 () List!42297)

(declare-fun lt!1384930 () Unit!60661)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!140 (LexerInterface!6201 List!42298 List!42295 List!42295 List!42297 List!42295 List!42297) Unit!60661)

(assert (=> b!3959842 (= lt!1384930 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!140 thiss!20629 rules!2768 suffix!1176 (_2!23866 lt!1384914) suffixTokens!72 suffixResult!91 lt!1384916))))

(declare-fun res!1602616 () Bool)

(assert (=> b!3959842 (= res!1602616 (not (= call!285388 (tuple2!41463 (++!10981 lt!1384916 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2451879 () Bool)

(assert (=> b!3959842 (=> (not res!1602616) (not e!2451879))))

(assert (=> b!3959842 e!2451879))

(declare-fun b!3959843 () Bool)

(declare-fun Unit!60666 () Unit!60661)

(assert (=> b!3959843 (= e!2451854 Unit!60666)))

(declare-fun b!3959844 () Bool)

(declare-fun e!2451878 () Bool)

(declare-fun tp_is_empty!20005 () Bool)

(declare-fun tp!1206860 () Bool)

(assert (=> b!3959844 (= e!2451878 (and tp_is_empty!20005 tp!1206860))))

(declare-fun tp!1206847 () Bool)

(declare-fun b!3959845 () Bool)

(declare-fun e!2451873 () Bool)

(declare-fun inv!56399 (String!47928) Bool)

(declare-fun inv!56402 (TokenValueInjection!13112) Bool)

(assert (=> b!3959845 (= e!2451876 (and tp!1206847 (inv!56399 (tag!7472 (rule!9590 (h!47593 prefixTokens!80)))) (inv!56402 (transformation!6612 (rule!9590 (h!47593 prefixTokens!80)))) e!2451873))))

(declare-fun b!3959846 () Bool)

(declare-fun e!2451877 () Bool)

(assert (=> b!3959846 (= e!2451866 (not e!2451877))))

(declare-fun res!1602606 () Bool)

(assert (=> b!3959846 (=> res!1602606 e!2451877)))

(declare-fun lt!1384919 () List!42295)

(assert (=> b!3959846 (= res!1602606 (not (= lt!1384919 lt!1384938)))))

(declare-fun lt!1384925 () tuple2!41462)

(assert (=> b!3959846 (= lt!1384925 (lexList!1969 thiss!20629 rules!2768 (_2!23866 (v!39377 lt!1384922))))))

(declare-fun lt!1384937 () List!42295)

(assert (=> b!3959846 (and (= (size!31582 (_1!23866 (v!39377 lt!1384922))) lt!1384917) (= (originalCharacters!7212 (_1!23866 (v!39377 lt!1384922))) lt!1384918) (= (v!39377 lt!1384922) (tuple2!41465 (Token!12363 lt!1384935 (rule!9590 (_1!23866 (v!39377 lt!1384922))) lt!1384917 lt!1384918) lt!1384937)))))

(assert (=> b!3959846 (= lt!1384917 (size!31583 lt!1384918))))

(assert (=> b!3959846 e!2451880))

(declare-fun res!1602612 () Bool)

(assert (=> b!3959846 (=> (not res!1602612) (not e!2451880))))

(assert (=> b!3959846 (= res!1602612 (= (value!209076 (_1!23866 (v!39377 lt!1384922))) lt!1384935))))

(declare-fun apply!9843 (TokenValueInjection!13112 BalanceConc!25240) TokenValue!6842)

(declare-fun seqFromList!4871 (List!42295) BalanceConc!25240)

(assert (=> b!3959846 (= lt!1384935 (apply!9843 (transformation!6612 (rule!9590 (_1!23866 (v!39377 lt!1384922)))) (seqFromList!4871 lt!1384918)))))

(assert (=> b!3959846 (= (_2!23866 (v!39377 lt!1384922)) lt!1384937)))

(declare-fun lt!1384923 () Unit!60661)

(declare-fun lemmaSamePrefixThenSameSuffix!1910 (List!42295 List!42295 List!42295 List!42295 List!42295) Unit!60661)

(assert (=> b!3959846 (= lt!1384923 (lemmaSamePrefixThenSameSuffix!1910 lt!1384918 (_2!23866 (v!39377 lt!1384922)) lt!1384918 lt!1384937 lt!1384938))))

(declare-fun getSuffix!2152 (List!42295 List!42295) List!42295)

(assert (=> b!3959846 (= lt!1384937 (getSuffix!2152 lt!1384938 lt!1384918))))

(assert (=> b!3959846 (isPrefix!3701 lt!1384918 lt!1384919)))

(assert (=> b!3959846 (= lt!1384919 (++!10982 lt!1384918 (_2!23866 (v!39377 lt!1384922))))))

(declare-fun lt!1384933 () Unit!60661)

(assert (=> b!3959846 (= lt!1384933 (lemmaConcatTwoListThenFirstIsPrefix!2560 lt!1384918 (_2!23866 (v!39377 lt!1384922))))))

(declare-fun list!15656 (BalanceConc!25240) List!42295)

(declare-fun charsOf!4430 (Token!12362) BalanceConc!25240)

(assert (=> b!3959846 (= lt!1384918 (list!15656 (charsOf!4430 (_1!23866 (v!39377 lt!1384922)))))))

(declare-fun ruleValid!2554 (LexerInterface!6201 Rule!13024) Bool)

(assert (=> b!3959846 (ruleValid!2554 thiss!20629 (rule!9590 (_1!23866 (v!39377 lt!1384922))))))

(declare-fun lt!1384912 () Unit!60661)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1630 (LexerInterface!6201 Rule!13024 List!42298) Unit!60661)

(assert (=> b!3959846 (= lt!1384912 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1630 thiss!20629 (rule!9590 (_1!23866 (v!39377 lt!1384922))) rules!2768))))

(declare-fun lt!1384913 () Unit!60661)

(declare-fun lemmaCharactersSize!1265 (Token!12362) Unit!60661)

(assert (=> b!3959846 (= lt!1384913 (lemmaCharactersSize!1265 (_1!23866 (v!39377 lt!1384922))))))

(declare-fun b!3959847 () Bool)

(declare-fun e!2451882 () Bool)

(declare-fun tp!1206848 () Bool)

(assert (=> b!3959847 (= e!2451882 (and tp_is_empty!20005 tp!1206848))))

(declare-fun b!3959848 () Bool)

(assert (=> b!3959848 (= e!2451864 e!2451875)))

(declare-fun res!1602613 () Bool)

(assert (=> b!3959848 (=> (not res!1602613) (not e!2451875))))

(assert (=> b!3959848 (= res!1602613 (= (lexList!1969 thiss!20629 rules!2768 suffix!1176) lt!1384931))))

(assert (=> b!3959848 (= lt!1384931 (tuple2!41463 suffixTokens!72 suffixResult!91))))

(declare-fun b!3959849 () Bool)

(assert (=> b!3959849 (= e!2451877 e!2451872)))

(declare-fun res!1602604 () Bool)

(assert (=> b!3959849 (=> res!1602604 e!2451872)))

(declare-fun lt!1384929 () Int)

(assert (=> b!3959849 (= res!1602604 (not (= lt!1384929 lt!1384915)))))

(declare-fun lt!1384936 () Unit!60661)

(assert (=> b!3959849 (= lt!1384936 e!2451862)))

(declare-fun c!687147 () Bool)

(assert (=> b!3959849 (= c!687147 (< lt!1384929 lt!1384915))))

(assert (=> b!3959849 (= lt!1384915 (size!31583 suffix!1176))))

(assert (=> b!3959849 (= lt!1384929 (size!31583 (_2!23866 (v!39377 lt!1384922))))))

(declare-fun b!3959850 () Bool)

(declare-fun tp!1206862 () Bool)

(declare-fun e!2451856 () Bool)

(declare-fun inv!56403 (Token!12362) Bool)

(assert (=> b!3959850 (= e!2451856 (and (inv!56403 (h!47593 suffixTokens!72)) e!2451852 tp!1206862))))

(declare-fun b!3959851 () Bool)

(declare-fun e!2451859 () Bool)

(declare-fun e!2451869 () Bool)

(declare-fun tp!1206855 () Bool)

(assert (=> b!3959851 (= e!2451859 (and e!2451869 tp!1206855))))

(declare-fun b!3959852 () Bool)

(declare-fun res!1602603 () Bool)

(assert (=> b!3959852 (=> res!1602603 e!2451877)))

(assert (=> b!3959852 (= res!1602603 (or (not (= lt!1384925 (tuple2!41463 (_1!23865 lt!1384925) (_2!23865 lt!1384925)))) (= (_2!23866 (v!39377 lt!1384922)) suffix!1176)))))

(declare-fun e!2451881 () Bool)

(declare-fun b!3959853 () Bool)

(declare-fun tp!1206861 () Bool)

(assert (=> b!3959853 (= e!2451861 (and tp!1206861 (inv!56399 (tag!7472 (rule!9590 (h!47593 suffixTokens!72)))) (inv!56402 (transformation!6612 (rule!9590 (h!47593 suffixTokens!72)))) e!2451881))))

(declare-fun b!3959854 () Bool)

(assert (=> b!3959854 (= e!2451863 false)))

(declare-fun res!1602614 () Bool)

(assert (=> start!372456 (=> (not res!1602614) (not e!2451865))))

(assert (=> start!372456 (= res!1602614 ((_ is Lexer!6199) thiss!20629))))

(assert (=> start!372456 e!2451865))

(assert (=> start!372456 e!2451882))

(assert (=> start!372456 true))

(assert (=> start!372456 e!2451878))

(assert (=> start!372456 e!2451859))

(declare-fun e!2451870 () Bool)

(assert (=> start!372456 e!2451870))

(assert (=> start!372456 e!2451856))

(declare-fun e!2451871 () Bool)

(assert (=> start!372456 e!2451871))

(declare-fun b!3959855 () Bool)

(declare-fun tp!1206849 () Bool)

(assert (=> b!3959855 (= e!2451871 (and tp_is_empty!20005 tp!1206849))))

(assert (=> b!3959856 (= e!2451881 (and tp!1206850 tp!1206853))))

(assert (=> b!3959857 (= e!2451873 (and tp!1206852 tp!1206854))))

(declare-fun b!3959858 () Bool)

(declare-fun Unit!60667 () Unit!60661)

(assert (=> b!3959858 (= e!2451862 Unit!60667)))

(declare-fun b!3959859 () Bool)

(declare-fun res!1602615 () Bool)

(assert (=> b!3959859 (=> res!1602615 e!2451877)))

(assert (=> b!3959859 (= res!1602615 (not (= lt!1384926 (tuple2!41463 (++!10981 (Cons!42173 (_1!23866 (v!39377 lt!1384922)) Nil!42173) (_1!23865 lt!1384925)) (_2!23865 lt!1384925)))))))

(declare-fun b!3959860 () Bool)

(assert (=> b!3959860 (= e!2451879 false)))

(declare-fun b!3959861 () Bool)

(declare-fun res!1602611 () Bool)

(assert (=> b!3959861 (=> (not res!1602611) (not e!2451865))))

(declare-fun isEmpty!25218 (List!42297) Bool)

(assert (=> b!3959861 (= res!1602611 (not (isEmpty!25218 prefixTokens!80)))))

(declare-fun b!3959862 () Bool)

(declare-fun c!687145 () Bool)

(assert (=> b!3959862 (= c!687145 (isEmpty!25218 lt!1384916))))

(declare-fun tail!6149 (List!42297) List!42297)

(assert (=> b!3959862 (= lt!1384916 (tail!6149 prefixTokens!80))))

(assert (=> b!3959862 (= e!2451854 e!2451867)))

(declare-fun b!3959863 () Bool)

(declare-fun tp!1206857 () Bool)

(assert (=> b!3959863 (= e!2451870 (and (inv!56403 (h!47593 prefixTokens!80)) e!2451857 tp!1206857))))

(declare-fun b!3959864 () Bool)

(declare-fun tp!1206851 () Bool)

(assert (=> b!3959864 (= e!2451869 (and tp!1206851 (inv!56399 (tag!7472 (h!47594 rules!2768))) (inv!56402 (transformation!6612 (h!47594 rules!2768))) e!2451855))))

(assert (= (and start!372456 res!1602614) b!3959833))

(assert (= (and b!3959833 res!1602609) b!3959832))

(assert (= (and b!3959832 res!1602607) b!3959861))

(assert (= (and b!3959861 res!1602611) b!3959834))

(assert (= (and b!3959834 res!1602610) b!3959831))

(assert (= (and b!3959831 res!1602605) b!3959848))

(assert (= (and b!3959848 res!1602613) b!3959841))

(assert (= (and b!3959841 res!1602602) b!3959846))

(assert (= (and b!3959846 res!1602612) b!3959835))

(assert (= (and b!3959846 (not res!1602606)) b!3959859))

(assert (= (and b!3959859 (not res!1602615)) b!3959852))

(assert (= (and b!3959852 (not res!1602603)) b!3959849))

(assert (= (and b!3959849 c!687147) b!3959836))

(assert (= (and b!3959849 (not c!687147)) b!3959858))

(assert (= (and b!3959836 c!687146) b!3959862))

(assert (= (and b!3959836 (not c!687146)) b!3959843))

(assert (= (and b!3959862 c!687145) b!3959838))

(assert (= (and b!3959862 (not c!687145)) b!3959842))

(assert (= (and b!3959838 res!1602608) b!3959854))

(assert (= (and b!3959842 res!1602616) b!3959860))

(assert (= (or b!3959838 b!3959842) bm!285383))

(assert (= (and b!3959849 (not res!1602604)) b!3959840))

(assert (= (and start!372456 ((_ is Cons!42171) suffixResult!91)) b!3959847))

(assert (= (and start!372456 ((_ is Cons!42171) suffix!1176)) b!3959844))

(assert (= b!3959864 b!3959839))

(assert (= b!3959851 b!3959864))

(assert (= (and start!372456 ((_ is Cons!42174) rules!2768)) b!3959851))

(assert (= b!3959845 b!3959857))

(assert (= b!3959830 b!3959845))

(assert (= b!3959863 b!3959830))

(assert (= (and start!372456 ((_ is Cons!42173) prefixTokens!80)) b!3959863))

(assert (= b!3959853 b!3959856))

(assert (= b!3959837 b!3959853))

(assert (= b!3959850 b!3959837))

(assert (= (and start!372456 ((_ is Cons!42173) suffixTokens!72)) b!3959850))

(assert (= (and start!372456 ((_ is Cons!42171) prefix!426)) b!3959855))

(declare-fun m!4528701 () Bool)

(assert (=> b!3959842 m!4528701))

(declare-fun m!4528703 () Bool)

(assert (=> b!3959842 m!4528703))

(declare-fun m!4528705 () Bool)

(assert (=> b!3959862 m!4528705))

(declare-fun m!4528707 () Bool)

(assert (=> b!3959862 m!4528707))

(declare-fun m!4528709 () Bool)

(assert (=> b!3959846 m!4528709))

(declare-fun m!4528711 () Bool)

(assert (=> b!3959846 m!4528711))

(declare-fun m!4528713 () Bool)

(assert (=> b!3959846 m!4528713))

(declare-fun m!4528715 () Bool)

(assert (=> b!3959846 m!4528715))

(declare-fun m!4528717 () Bool)

(assert (=> b!3959846 m!4528717))

(assert (=> b!3959846 m!4528713))

(declare-fun m!4528719 () Bool)

(assert (=> b!3959846 m!4528719))

(declare-fun m!4528721 () Bool)

(assert (=> b!3959846 m!4528721))

(declare-fun m!4528723 () Bool)

(assert (=> b!3959846 m!4528723))

(assert (=> b!3959846 m!4528709))

(declare-fun m!4528725 () Bool)

(assert (=> b!3959846 m!4528725))

(declare-fun m!4528727 () Bool)

(assert (=> b!3959846 m!4528727))

(declare-fun m!4528729 () Bool)

(assert (=> b!3959846 m!4528729))

(declare-fun m!4528731 () Bool)

(assert (=> b!3959846 m!4528731))

(declare-fun m!4528733 () Bool)

(assert (=> b!3959846 m!4528733))

(declare-fun m!4528735 () Bool)

(assert (=> b!3959846 m!4528735))

(declare-fun m!4528737 () Bool)

(assert (=> b!3959859 m!4528737))

(declare-fun m!4528739 () Bool)

(assert (=> b!3959853 m!4528739))

(declare-fun m!4528741 () Bool)

(assert (=> b!3959853 m!4528741))

(declare-fun m!4528743 () Bool)

(assert (=> b!3959833 m!4528743))

(declare-fun m!4528745 () Bool)

(assert (=> b!3959861 m!4528745))

(declare-fun m!4528747 () Bool)

(assert (=> b!3959840 m!4528747))

(declare-fun m!4528749 () Bool)

(assert (=> b!3959840 m!4528749))

(declare-fun m!4528751 () Bool)

(assert (=> b!3959840 m!4528751))

(declare-fun m!4528753 () Bool)

(assert (=> b!3959832 m!4528753))

(declare-fun m!4528755 () Bool)

(assert (=> b!3959849 m!4528755))

(declare-fun m!4528757 () Bool)

(assert (=> b!3959849 m!4528757))

(declare-fun m!4528759 () Bool)

(assert (=> b!3959845 m!4528759))

(declare-fun m!4528761 () Bool)

(assert (=> b!3959845 m!4528761))

(declare-fun m!4528763 () Bool)

(assert (=> b!3959837 m!4528763))

(declare-fun m!4528765 () Bool)

(assert (=> b!3959864 m!4528765))

(declare-fun m!4528767 () Bool)

(assert (=> b!3959864 m!4528767))

(declare-fun m!4528769 () Bool)

(assert (=> b!3959836 m!4528769))

(declare-fun m!4528771 () Bool)

(assert (=> b!3959836 m!4528771))

(declare-fun m!4528773 () Bool)

(assert (=> b!3959836 m!4528773))

(declare-fun m!4528775 () Bool)

(assert (=> b!3959836 m!4528775))

(declare-fun m!4528777 () Bool)

(assert (=> b!3959836 m!4528777))

(declare-fun m!4528779 () Bool)

(assert (=> bm!285383 m!4528779))

(declare-fun m!4528781 () Bool)

(assert (=> b!3959830 m!4528781))

(declare-fun m!4528783 () Bool)

(assert (=> b!3959834 m!4528783))

(declare-fun m!4528785 () Bool)

(assert (=> b!3959848 m!4528785))

(declare-fun m!4528787 () Bool)

(assert (=> b!3959831 m!4528787))

(declare-fun m!4528789 () Bool)

(assert (=> b!3959831 m!4528789))

(declare-fun m!4528791 () Bool)

(assert (=> b!3959831 m!4528791))

(declare-fun m!4528793 () Bool)

(assert (=> b!3959838 m!4528793))

(declare-fun m!4528795 () Bool)

(assert (=> b!3959838 m!4528795))

(declare-fun m!4528797 () Bool)

(assert (=> b!3959850 m!4528797))

(declare-fun m!4528799 () Bool)

(assert (=> b!3959841 m!4528799))

(declare-fun m!4528801 () Bool)

(assert (=> b!3959863 m!4528801))

(declare-fun m!4528803 () Bool)

(assert (=> b!3959835 m!4528803))

(check-sat (not b!3959853) (not b!3959832) b_and!303981 (not b!3959833) (not b!3959831) (not b!3959841) b_and!303983 (not b!3959844) (not bm!285383) (not b!3959859) (not b!3959863) tp_is_empty!20005 (not b!3959849) (not b!3959840) (not b!3959851) (not b!3959861) (not b!3959850) (not b!3959837) (not b!3959845) (not b!3959864) (not b!3959847) b_and!303979 (not b!3959834) (not b!3959846) (not b!3959838) (not b_next!109957) (not b_next!109953) (not b!3959835) (not b!3959855) (not b_next!109949) (not b!3959836) (not b!3959862) (not b!3959830) (not b_next!109959) (not b!3959842) (not b_next!109951) (not b!3959848) (not b_next!109955) b_and!303987 b_and!303985 b_and!303989)
(check-sat b_and!303981 b_and!303979 b_and!303983 (not b_next!109949) (not b_next!109959) (not b_next!109957) (not b_next!109953) (not b_next!109951) (not b_next!109955) b_and!303987 b_and!303985 b_and!303989)
