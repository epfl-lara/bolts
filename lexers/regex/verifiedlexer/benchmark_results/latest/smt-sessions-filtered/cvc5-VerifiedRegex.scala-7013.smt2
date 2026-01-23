; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!372458 () Bool)

(assert start!372458)

(declare-fun b!3959947 () Bool)

(declare-fun b_free!109257 () Bool)

(declare-fun b_next!109961 () Bool)

(assert (=> b!3959947 (= b_free!109257 (not b_next!109961))))

(declare-fun tp!1206910 () Bool)

(declare-fun b_and!303991 () Bool)

(assert (=> b!3959947 (= tp!1206910 b_and!303991)))

(declare-fun b_free!109259 () Bool)

(declare-fun b_next!109963 () Bool)

(assert (=> b!3959947 (= b_free!109259 (not b_next!109963))))

(declare-fun tp!1206900 () Bool)

(declare-fun b_and!303993 () Bool)

(assert (=> b!3959947 (= tp!1206900 b_and!303993)))

(declare-fun b!3959943 () Bool)

(declare-fun b_free!109261 () Bool)

(declare-fun b_next!109965 () Bool)

(assert (=> b!3959943 (= b_free!109261 (not b_next!109965))))

(declare-fun tp!1206909 () Bool)

(declare-fun b_and!303995 () Bool)

(assert (=> b!3959943 (= tp!1206909 b_and!303995)))

(declare-fun b_free!109263 () Bool)

(declare-fun b_next!109967 () Bool)

(assert (=> b!3959943 (= b_free!109263 (not b_next!109967))))

(declare-fun tp!1206904 () Bool)

(declare-fun b_and!303997 () Bool)

(assert (=> b!3959943 (= tp!1206904 b_and!303997)))

(declare-fun b!3959954 () Bool)

(declare-fun b_free!109265 () Bool)

(declare-fun b_next!109969 () Bool)

(assert (=> b!3959954 (= b_free!109265 (not b_next!109969))))

(declare-fun tp!1206906 () Bool)

(declare-fun b_and!303999 () Bool)

(assert (=> b!3959954 (= tp!1206906 b_and!303999)))

(declare-fun b_free!109267 () Bool)

(declare-fun b_next!109971 () Bool)

(assert (=> b!3959954 (= b_free!109267 (not b_next!109971))))

(declare-fun tp!1206897 () Bool)

(declare-fun b_and!304001 () Bool)

(assert (=> b!3959954 (= tp!1206897 b_and!304001)))

(declare-fun b!3959937 () Bool)

(declare-fun e!2451953 () Bool)

(declare-fun tp_is_empty!20007 () Bool)

(declare-fun tp!1206898 () Bool)

(assert (=> b!3959937 (= e!2451953 (and tp_is_empty!20007 tp!1206898))))

(declare-fun b!3959938 () Bool)

(declare-fun e!2451969 () Bool)

(declare-fun tp!1206901 () Bool)

(assert (=> b!3959938 (= e!2451969 (and tp_is_empty!20007 tp!1206901))))

(declare-fun b!3959939 () Bool)

(declare-datatypes ((Unit!60668 0))(
  ( (Unit!60669) )
))
(declare-fun e!2451955 () Unit!60668)

(declare-fun Unit!60670 () Unit!60668)

(assert (=> b!3959939 (= e!2451955 Unit!60670)))

(declare-fun lt!1384997 () Int)

(declare-datatypes ((C!23222 0))(
  ( (C!23223 (val!13705 Int)) )
))
(declare-datatypes ((List!42299 0))(
  ( (Nil!42175) (Cons!42175 (h!47595 C!23222) (t!329770 List!42299)) )
))
(declare-fun lt!1385019 () List!42299)

(declare-fun size!31584 (List!42299) Int)

(assert (=> b!3959939 (= lt!1384997 (size!31584 lt!1385019))))

(declare-fun lt!1385005 () List!42299)

(declare-datatypes ((LexerInterface!6202 0))(
  ( (LexerInterfaceExt!6199 (__x!25903 Int)) (Lexer!6200) )
))
(declare-fun thiss!20629 () LexerInterface!6202)

(declare-datatypes ((IArray!25653 0))(
  ( (IArray!25654 (innerList!12884 List!42299)) )
))
(declare-datatypes ((Conc!12824 0))(
  ( (Node!12824 (left!32013 Conc!12824) (right!32343 Conc!12824) (csize!25878 Int) (cheight!13035 Int)) (Leaf!19838 (xs!16130 IArray!25653) (csize!25879 Int)) (Empty!12824) )
))
(declare-datatypes ((BalanceConc!25242 0))(
  ( (BalanceConc!25243 (c!687160 Conc!12824)) )
))
(declare-datatypes ((List!42300 0))(
  ( (Nil!42176) (Cons!42176 (h!47596 (_ BitVec 16)) (t!329771 List!42300)) )
))
(declare-datatypes ((TokenValue!6843 0))(
  ( (FloatLiteralValue!13686 (text!48346 List!42300)) (TokenValueExt!6842 (__x!25904 Int)) (Broken!34215 (value!209080 List!42300)) (Object!6966) (End!6843) (Def!6843) (Underscore!6843) (Match!6843) (Else!6843) (Error!6843) (Case!6843) (If!6843) (Extends!6843) (Abstract!6843) (Class!6843) (Val!6843) (DelimiterValue!13686 (del!6903 List!42300)) (KeywordValue!6849 (value!209081 List!42300)) (CommentValue!13686 (value!209082 List!42300)) (WhitespaceValue!13686 (value!209083 List!42300)) (IndentationValue!6843 (value!209084 List!42300)) (String!47934) (Int32!6843) (Broken!34216 (value!209085 List!42300)) (Boolean!6844) (Unit!60671) (OperatorValue!6846 (op!6903 List!42300)) (IdentifierValue!13686 (value!209086 List!42300)) (IdentifierValue!13687 (value!209087 List!42300)) (WhitespaceValue!13687 (value!209088 List!42300)) (True!13686) (False!13686) (Broken!34217 (value!209089 List!42300)) (Broken!34218 (value!209090 List!42300)) (True!13687) (RightBrace!6843) (RightBracket!6843) (Colon!6843) (Null!6843) (Comma!6843) (LeftBracket!6843) (False!13687) (LeftBrace!6843) (ImaginaryLiteralValue!6843 (text!48347 List!42300)) (StringLiteralValue!20529 (value!209091 List!42300)) (EOFValue!6843 (value!209092 List!42300)) (IdentValue!6843 (value!209093 List!42300)) (DelimiterValue!13687 (value!209094 List!42300)) (DedentValue!6843 (value!209095 List!42300)) (NewLineValue!6843 (value!209096 List!42300)) (IntegerValue!20529 (value!209097 (_ BitVec 32)) (text!48348 List!42300)) (IntegerValue!20530 (value!209098 Int) (text!48349 List!42300)) (Times!6843) (Or!6843) (Equal!6843) (Minus!6843) (Broken!34219 (value!209099 List!42300)) (And!6843) (Div!6843) (LessEqual!6843) (Mod!6843) (Concat!18361) (Not!6843) (Plus!6843) (SpaceValue!6843 (value!209100 List!42300)) (IntegerValue!20531 (value!209101 Int) (text!48350 List!42300)) (StringLiteralValue!20530 (text!48351 List!42300)) (FloatLiteralValue!13687 (text!48352 List!42300)) (BytesLiteralValue!6843 (value!209102 List!42300)) (CommentValue!13687 (value!209103 List!42300)) (StringLiteralValue!20531 (value!209104 List!42300)) (ErrorTokenValue!6843 (msg!6904 List!42300)) )
))
(declare-datatypes ((Regex!11518 0))(
  ( (ElementMatch!11518 (c!687161 C!23222)) (Concat!18362 (regOne!23548 Regex!11518) (regTwo!23548 Regex!11518)) (EmptyExpr!11518) (Star!11518 (reg!11847 Regex!11518)) (EmptyLang!11518) (Union!11518 (regOne!23549 Regex!11518) (regTwo!23549 Regex!11518)) )
))
(declare-datatypes ((String!47935 0))(
  ( (String!47936 (value!209105 String)) )
))
(declare-datatypes ((TokenValueInjection!13114 0))(
  ( (TokenValueInjection!13115 (toValue!9093 Int) (toChars!8952 Int)) )
))
(declare-datatypes ((Rule!13026 0))(
  ( (Rule!13027 (regex!6613 Regex!11518) (tag!7473 String!47935) (isSeparator!6613 Bool) (transformation!6613 TokenValueInjection!13114)) )
))
(declare-datatypes ((List!42301 0))(
  ( (Nil!42177) (Cons!42177 (h!47597 Rule!13026) (t!329772 List!42301)) )
))
(declare-fun rules!2768 () List!42301)

(declare-fun lt!1385018 () Unit!60668)

(declare-datatypes ((Token!12364 0))(
  ( (Token!12365 (value!209106 TokenValue!6843) (rule!9591 Rule!13026) (size!31585 Int) (originalCharacters!7213 List!42299)) )
))
(declare-datatypes ((tuple2!41466 0))(
  ( (tuple2!41467 (_1!23867 Token!12364) (_2!23867 List!42299)) )
))
(declare-datatypes ((Option!9033 0))(
  ( (None!9032) (Some!9032 (v!39378 tuple2!41466)) )
))
(declare-fun lt!1385017 () Option!9033)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1382 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42299 Rule!13026) Unit!60668)

(assert (=> b!3959939 (= lt!1385018 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1382 thiss!20629 rules!2768 lt!1385005 lt!1385019 (_2!23867 (v!39378 lt!1385017)) (rule!9591 (_1!23867 (v!39378 lt!1385017)))))))

(declare-fun lt!1385001 () TokenValue!6843)

(declare-fun lt!1385009 () Int)

(declare-fun maxPrefixOneRule!2556 (LexerInterface!6202 Rule!13026 List!42299) Option!9033)

(assert (=> b!3959939 (= (maxPrefixOneRule!2556 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) lt!1385019) (Some!9032 (tuple2!41467 (Token!12365 lt!1385001 (rule!9591 (_1!23867 (v!39378 lt!1385017))) lt!1385009 lt!1385005) (_2!23867 (v!39378 lt!1385017)))))))

(declare-fun lt!1384999 () tuple2!41466)

(declare-fun get!13910 (Option!9033) tuple2!41466)

(assert (=> b!3959939 (= lt!1384999 (get!13910 lt!1385017))))

(declare-fun c!687158 () Bool)

(declare-fun lt!1384996 () Int)

(assert (=> b!3959939 (= c!687158 (< (size!31584 (_2!23867 lt!1384999)) lt!1384996))))

(declare-fun lt!1384994 () Unit!60668)

(declare-fun e!2451954 () Unit!60668)

(assert (=> b!3959939 (= lt!1384994 e!2451954)))

(assert (=> b!3959939 false))

(declare-fun b!3959940 () Bool)

(declare-fun e!2451951 () Bool)

(declare-fun tp!1206907 () Bool)

(assert (=> b!3959940 (= e!2451951 (and tp_is_empty!20007 tp!1206907))))

(declare-fun b!3959941 () Bool)

(declare-fun tp!1206899 () Bool)

(declare-fun e!2451964 () Bool)

(declare-datatypes ((List!42302 0))(
  ( (Nil!42178) (Cons!42178 (h!47598 Token!12364) (t!329773 List!42302)) )
))
(declare-fun prefixTokens!80 () List!42302)

(declare-fun e!2451971 () Bool)

(declare-fun inv!56407 (Token!12364) Bool)

(assert (=> b!3959941 (= e!2451971 (and (inv!56407 (h!47598 prefixTokens!80)) e!2451964 tp!1206899))))

(declare-fun b!3959942 () Bool)

(declare-fun res!1602662 () Bool)

(declare-fun e!2451977 () Bool)

(assert (=> b!3959942 (=> (not res!1602662) (not e!2451977))))

(declare-fun isEmpty!25219 (List!42302) Bool)

(assert (=> b!3959942 (= res!1602662 (not (isEmpty!25219 prefixTokens!80)))))

(declare-fun e!2451947 () Bool)

(assert (=> b!3959943 (= e!2451947 (and tp!1206909 tp!1206904))))

(declare-fun b!3959944 () Bool)

(declare-fun res!1602656 () Bool)

(assert (=> b!3959944 (=> (not res!1602656) (not e!2451977))))

(declare-fun isEmpty!25220 (List!42301) Bool)

(assert (=> b!3959944 (= res!1602656 (not (isEmpty!25220 rules!2768)))))

(declare-fun b!3959945 () Bool)

(declare-fun e!2451957 () Bool)

(assert (=> b!3959945 (= e!2451977 e!2451957)))

(declare-fun res!1602663 () Bool)

(assert (=> b!3959945 (=> (not res!1602663) (not e!2451957))))

(declare-fun lt!1385013 () List!42302)

(declare-fun suffixResult!91 () List!42299)

(declare-datatypes ((tuple2!41468 0))(
  ( (tuple2!41469 (_1!23868 List!42302) (_2!23868 List!42299)) )
))
(declare-fun lt!1385007 () tuple2!41468)

(assert (=> b!3959945 (= res!1602663 (= lt!1385007 (tuple2!41469 lt!1385013 suffixResult!91)))))

(declare-fun lexList!1970 (LexerInterface!6202 List!42301 List!42299) tuple2!41468)

(assert (=> b!3959945 (= lt!1385007 (lexList!1970 thiss!20629 rules!2768 lt!1385019))))

(declare-fun suffixTokens!72 () List!42302)

(declare-fun ++!10983 (List!42302 List!42302) List!42302)

(assert (=> b!3959945 (= lt!1385013 (++!10983 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42299)

(declare-fun suffix!1176 () List!42299)

(declare-fun ++!10984 (List!42299 List!42299) List!42299)

(assert (=> b!3959945 (= lt!1385019 (++!10984 prefix!426 suffix!1176))))

(declare-fun b!3959946 () Bool)

(declare-fun tp!1206903 () Bool)

(declare-fun e!2451961 () Bool)

(declare-fun inv!21 (TokenValue!6843) Bool)

(assert (=> b!3959946 (= e!2451964 (and (inv!21 (value!209106 (h!47598 prefixTokens!80))) e!2451961 tp!1206903))))

(declare-fun b!3959948 () Bool)

(declare-fun res!1602649 () Bool)

(declare-fun e!2451965 () Bool)

(assert (=> b!3959948 (=> res!1602649 e!2451965)))

(declare-fun lt!1385014 () tuple2!41468)

(assert (=> b!3959948 (= res!1602649 (not (= lt!1385007 (tuple2!41469 (++!10983 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178) (_1!23868 lt!1385014)) (_2!23868 lt!1385014)))))))

(declare-fun tp!1206913 () Bool)

(declare-fun e!2451963 () Bool)

(declare-fun b!3959949 () Bool)

(declare-fun e!2451952 () Bool)

(assert (=> b!3959949 (= e!2451963 (and (inv!56407 (h!47598 suffixTokens!72)) e!2451952 tp!1206913))))

(declare-fun b!3959950 () Bool)

(declare-fun Unit!60672 () Unit!60668)

(assert (=> b!3959950 (= e!2451955 Unit!60672)))

(declare-fun b!3959951 () Bool)

(declare-fun e!2451972 () Unit!60668)

(declare-fun Unit!60673 () Unit!60668)

(assert (=> b!3959951 (= e!2451972 Unit!60673)))

(declare-fun lt!1385006 () List!42302)

(declare-fun lt!1384998 () Unit!60668)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!141 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42302 List!42299 List!42302) Unit!60668)

(assert (=> b!3959951 (= lt!1384998 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!141 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91 lt!1385006))))

(declare-fun res!1602652 () Bool)

(declare-fun call!285391 () tuple2!41468)

(assert (=> b!3959951 (= res!1602652 (not (= call!285391 (tuple2!41469 (++!10983 lt!1385006 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2451978 () Bool)

(assert (=> b!3959951 (=> (not res!1602652) (not e!2451978))))

(assert (=> b!3959951 e!2451978))

(declare-fun e!2451959 () Bool)

(declare-fun tp!1206905 () Bool)

(declare-fun b!3959952 () Bool)

(declare-fun inv!56404 (String!47935) Bool)

(declare-fun inv!56408 (TokenValueInjection!13114) Bool)

(assert (=> b!3959952 (= e!2451961 (and tp!1206905 (inv!56404 (tag!7473 (rule!9591 (h!47598 prefixTokens!80)))) (inv!56408 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) e!2451959))))

(declare-fun bm!285386 () Bool)

(assert (=> bm!285386 (= call!285391 (lexList!1970 thiss!20629 rules!2768 (_2!23867 lt!1384999)))))

(declare-fun b!3959953 () Bool)

(declare-fun Unit!60674 () Unit!60668)

(assert (=> b!3959953 (= e!2451972 Unit!60674)))

(declare-fun lt!1385008 () Unit!60668)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!607 (List!42299 List!42299 List!42299 List!42299) Unit!60668)

(assert (=> b!3959953 (= lt!1385008 (lemmaConcatSameAndSameSizesThenSameLists!607 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 (_2!23867 lt!1384999)))))

(assert (=> b!3959953 (= (_2!23867 (v!39378 lt!1385017)) (_2!23867 lt!1384999))))

(declare-fun lt!1385020 () Unit!60668)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!141 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42302 List!42299) Unit!60668)

(assert (=> b!3959953 (= lt!1385020 (lemmaLexWithSmallerInputCannotProduceSameResults!141 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91))))

(declare-fun res!1602650 () Bool)

(declare-fun lt!1385003 () tuple2!41468)

(assert (=> b!3959953 (= res!1602650 (not (= call!285391 lt!1385003)))))

(declare-fun e!2451975 () Bool)

(assert (=> b!3959953 (=> (not res!1602650) (not e!2451975))))

(assert (=> b!3959953 e!2451975))

(declare-fun e!2451970 () Bool)

(assert (=> b!3959954 (= e!2451970 (and tp!1206906 tp!1206897))))

(declare-fun b!3959955 () Bool)

(assert (=> b!3959955 (= e!2451975 false)))

(declare-fun b!3959956 () Bool)

(declare-fun res!1602661 () Bool)

(assert (=> b!3959956 (=> res!1602661 e!2451965)))

(assert (=> b!3959956 (= res!1602661 (or (not (= lt!1385014 (tuple2!41469 (_1!23868 lt!1385014) (_2!23868 lt!1385014)))) (= (_2!23867 (v!39378 lt!1385017)) suffix!1176)))))

(declare-fun b!3959957 () Bool)

(declare-fun e!2451973 () Bool)

(assert (=> b!3959957 (= e!2451973 (= (size!31585 (_1!23867 (v!39378 lt!1385017))) (size!31584 (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017))))))))

(declare-fun b!3959958 () Bool)

(declare-fun e!2451974 () Bool)

(declare-fun tp!1206902 () Bool)

(assert (=> b!3959958 (= e!2451952 (and (inv!21 (value!209106 (h!47598 suffixTokens!72))) e!2451974 tp!1206902))))

(declare-fun b!3959959 () Bool)

(declare-fun res!1602660 () Bool)

(assert (=> b!3959959 (=> (not res!1602660) (not e!2451977))))

(declare-fun rulesInvariant!5545 (LexerInterface!6202 List!42301) Bool)

(assert (=> b!3959959 (= res!1602660 (rulesInvariant!5545 thiss!20629 rules!2768))))

(declare-fun b!3959960 () Bool)

(declare-fun e!2451960 () Bool)

(declare-fun tp!1206911 () Bool)

(assert (=> b!3959960 (= e!2451960 (and tp!1206911 (inv!56404 (tag!7473 (h!47597 rules!2768))) (inv!56408 (transformation!6613 (h!47597 rules!2768))) e!2451970))))

(declare-fun b!3959961 () Bool)

(declare-fun tp!1206912 () Bool)

(assert (=> b!3959961 (= e!2451974 (and tp!1206912 (inv!56404 (tag!7473 (rule!9591 (h!47598 suffixTokens!72)))) (inv!56408 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) e!2451947))))

(declare-fun b!3959962 () Bool)

(declare-fun e!2451962 () Bool)

(declare-fun e!2451948 () Bool)

(assert (=> b!3959962 (= e!2451962 e!2451948)))

(declare-fun res!1602653 () Bool)

(assert (=> b!3959962 (=> res!1602653 e!2451948)))

(declare-fun isPrefix!3702 (List!42299 List!42299) Bool)

(assert (=> b!3959962 (= res!1602653 (not (isPrefix!3702 lt!1385005 lt!1385019)))))

(assert (=> b!3959962 (isPrefix!3702 prefix!426 lt!1385019)))

(declare-fun lt!1385000 () Unit!60668)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2561 (List!42299 List!42299) Unit!60668)

(assert (=> b!3959962 (= lt!1385000 (lemmaConcatTwoListThenFirstIsPrefix!2561 prefix!426 suffix!1176))))

(declare-fun b!3959963 () Bool)

(assert (=> b!3959963 (= e!2451978 false)))

(declare-fun b!3959964 () Bool)

(declare-fun e!2451950 () Bool)

(declare-fun tp!1206908 () Bool)

(assert (=> b!3959964 (= e!2451950 (and e!2451960 tp!1206908))))

(declare-fun b!3959965 () Bool)

(declare-fun res!1602654 () Bool)

(assert (=> b!3959965 (=> (not res!1602654) (not e!2451977))))

(declare-fun isEmpty!25221 (List!42299) Bool)

(assert (=> b!3959965 (= res!1602654 (not (isEmpty!25221 prefix!426)))))

(declare-fun b!3959966 () Bool)

(declare-fun Unit!60675 () Unit!60668)

(assert (=> b!3959966 (= e!2451954 Unit!60675)))

(declare-fun res!1602658 () Bool)

(assert (=> start!372458 (=> (not res!1602658) (not e!2451977))))

(assert (=> start!372458 (= res!1602658 (is-Lexer!6200 thiss!20629))))

(assert (=> start!372458 e!2451977))

(assert (=> start!372458 e!2451969))

(assert (=> start!372458 true))

(assert (=> start!372458 e!2451951))

(assert (=> start!372458 e!2451950))

(assert (=> start!372458 e!2451971))

(assert (=> start!372458 e!2451963))

(assert (=> start!372458 e!2451953))

(assert (=> b!3959947 (= e!2451959 (and tp!1206910 tp!1206900))))

(declare-fun b!3959967 () Bool)

(declare-fun e!2451958 () Bool)

(declare-fun e!2451976 () Bool)

(assert (=> b!3959967 (= e!2451958 e!2451976)))

(declare-fun res!1602664 () Bool)

(assert (=> b!3959967 (=> (not res!1602664) (not e!2451976))))

(assert (=> b!3959967 (= res!1602664 (is-Some!9032 lt!1385017))))

(declare-fun maxPrefix!3506 (LexerInterface!6202 List!42301 List!42299) Option!9033)

(assert (=> b!3959967 (= lt!1385017 (maxPrefix!3506 thiss!20629 rules!2768 lt!1385019))))

(declare-fun b!3959968 () Bool)

(assert (=> b!3959968 (= e!2451965 e!2451962)))

(declare-fun res!1602659 () Bool)

(assert (=> b!3959968 (=> res!1602659 e!2451962)))

(declare-fun lt!1385012 () Int)

(assert (=> b!3959968 (= res!1602659 (not (= lt!1385012 lt!1384996)))))

(declare-fun lt!1385011 () Unit!60668)

(assert (=> b!3959968 (= lt!1385011 e!2451955)))

(declare-fun c!687159 () Bool)

(assert (=> b!3959968 (= c!687159 (< lt!1385012 lt!1384996))))

(assert (=> b!3959968 (= lt!1384996 (size!31584 suffix!1176))))

(assert (=> b!3959968 (= lt!1385012 (size!31584 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun b!3959969 () Bool)

(assert (=> b!3959969 (= e!2451948 (= lt!1385009 (size!31584 prefix!426)))))

(declare-fun b!3959970 () Bool)

(declare-fun c!687157 () Bool)

(assert (=> b!3959970 (= c!687157 (isEmpty!25219 lt!1385006))))

(declare-fun tail!6150 (List!42302) List!42302)

(assert (=> b!3959970 (= lt!1385006 (tail!6150 prefixTokens!80))))

(assert (=> b!3959970 (= e!2451954 e!2451972)))

(declare-fun b!3959971 () Bool)

(assert (=> b!3959971 (= e!2451976 (not e!2451965))))

(declare-fun res!1602655 () Bool)

(assert (=> b!3959971 (=> res!1602655 e!2451965)))

(declare-fun lt!1385010 () List!42299)

(assert (=> b!3959971 (= res!1602655 (not (= lt!1385010 lt!1385019)))))

(assert (=> b!3959971 (= lt!1385014 (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun lt!1384995 () List!42299)

(assert (=> b!3959971 (and (= (size!31585 (_1!23867 (v!39378 lt!1385017))) lt!1385009) (= (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017))) lt!1385005) (= (v!39378 lt!1385017) (tuple2!41467 (Token!12365 lt!1385001 (rule!9591 (_1!23867 (v!39378 lt!1385017))) lt!1385009 lt!1385005) lt!1384995)))))

(assert (=> b!3959971 (= lt!1385009 (size!31584 lt!1385005))))

(assert (=> b!3959971 e!2451973))

(declare-fun res!1602657 () Bool)

(assert (=> b!3959971 (=> (not res!1602657) (not e!2451973))))

(assert (=> b!3959971 (= res!1602657 (= (value!209106 (_1!23867 (v!39378 lt!1385017))) lt!1385001))))

(declare-fun apply!9844 (TokenValueInjection!13114 BalanceConc!25242) TokenValue!6843)

(declare-fun seqFromList!4872 (List!42299) BalanceConc!25242)

(assert (=> b!3959971 (= lt!1385001 (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (seqFromList!4872 lt!1385005)))))

(assert (=> b!3959971 (= (_2!23867 (v!39378 lt!1385017)) lt!1384995)))

(declare-fun lt!1385016 () Unit!60668)

(declare-fun lemmaSamePrefixThenSameSuffix!1911 (List!42299 List!42299 List!42299 List!42299 List!42299) Unit!60668)

(assert (=> b!3959971 (= lt!1385016 (lemmaSamePrefixThenSameSuffix!1911 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 lt!1384995 lt!1385019))))

(declare-fun getSuffix!2153 (List!42299 List!42299) List!42299)

(assert (=> b!3959971 (= lt!1384995 (getSuffix!2153 lt!1385019 lt!1385005))))

(assert (=> b!3959971 (isPrefix!3702 lt!1385005 lt!1385010)))

(assert (=> b!3959971 (= lt!1385010 (++!10984 lt!1385005 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun lt!1385004 () Unit!60668)

(assert (=> b!3959971 (= lt!1385004 (lemmaConcatTwoListThenFirstIsPrefix!2561 lt!1385005 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun list!15657 (BalanceConc!25242) List!42299)

(declare-fun charsOf!4431 (Token!12364) BalanceConc!25242)

(assert (=> b!3959971 (= lt!1385005 (list!15657 (charsOf!4431 (_1!23867 (v!39378 lt!1385017)))))))

(declare-fun ruleValid!2555 (LexerInterface!6202 Rule!13026) Bool)

(assert (=> b!3959971 (ruleValid!2555 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))))))

(declare-fun lt!1385002 () Unit!60668)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1631 (LexerInterface!6202 Rule!13026 List!42301) Unit!60668)

(assert (=> b!3959971 (= lt!1385002 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1631 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) rules!2768))))

(declare-fun lt!1385015 () Unit!60668)

(declare-fun lemmaCharactersSize!1266 (Token!12364) Unit!60668)

(assert (=> b!3959971 (= lt!1385015 (lemmaCharactersSize!1266 (_1!23867 (v!39378 lt!1385017))))))

(declare-fun b!3959972 () Bool)

(assert (=> b!3959972 (= e!2451957 e!2451958)))

(declare-fun res!1602651 () Bool)

(assert (=> b!3959972 (=> (not res!1602651) (not e!2451958))))

(assert (=> b!3959972 (= res!1602651 (= (lexList!1970 thiss!20629 rules!2768 suffix!1176) lt!1385003))))

(assert (=> b!3959972 (= lt!1385003 (tuple2!41469 suffixTokens!72 suffixResult!91))))

(assert (= (and start!372458 res!1602658) b!3959944))

(assert (= (and b!3959944 res!1602656) b!3959959))

(assert (= (and b!3959959 res!1602660) b!3959942))

(assert (= (and b!3959942 res!1602662) b!3959965))

(assert (= (and b!3959965 res!1602654) b!3959945))

(assert (= (and b!3959945 res!1602663) b!3959972))

(assert (= (and b!3959972 res!1602651) b!3959967))

(assert (= (and b!3959967 res!1602664) b!3959971))

(assert (= (and b!3959971 res!1602657) b!3959957))

(assert (= (and b!3959971 (not res!1602655)) b!3959948))

(assert (= (and b!3959948 (not res!1602649)) b!3959956))

(assert (= (and b!3959956 (not res!1602661)) b!3959968))

(assert (= (and b!3959968 c!687159) b!3959939))

(assert (= (and b!3959968 (not c!687159)) b!3959950))

(assert (= (and b!3959939 c!687158) b!3959970))

(assert (= (and b!3959939 (not c!687158)) b!3959966))

(assert (= (and b!3959970 c!687157) b!3959953))

(assert (= (and b!3959970 (not c!687157)) b!3959951))

(assert (= (and b!3959953 res!1602650) b!3959955))

(assert (= (and b!3959951 res!1602652) b!3959963))

(assert (= (or b!3959953 b!3959951) bm!285386))

(assert (= (and b!3959968 (not res!1602659)) b!3959962))

(assert (= (and b!3959962 (not res!1602653)) b!3959969))

(assert (= (and start!372458 (is-Cons!42175 suffixResult!91)) b!3959938))

(assert (= (and start!372458 (is-Cons!42175 suffix!1176)) b!3959940))

(assert (= b!3959960 b!3959954))

(assert (= b!3959964 b!3959960))

(assert (= (and start!372458 (is-Cons!42177 rules!2768)) b!3959964))

(assert (= b!3959952 b!3959947))

(assert (= b!3959946 b!3959952))

(assert (= b!3959941 b!3959946))

(assert (= (and start!372458 (is-Cons!42178 prefixTokens!80)) b!3959941))

(assert (= b!3959961 b!3959943))

(assert (= b!3959958 b!3959961))

(assert (= b!3959949 b!3959958))

(assert (= (and start!372458 (is-Cons!42178 suffixTokens!72)) b!3959949))

(assert (= (and start!372458 (is-Cons!42175 prefix!426)) b!3959937))

(declare-fun m!4528805 () Bool)

(assert (=> b!3959967 m!4528805))

(declare-fun m!4528807 () Bool)

(assert (=> b!3959952 m!4528807))

(declare-fun m!4528809 () Bool)

(assert (=> b!3959952 m!4528809))

(declare-fun m!4528811 () Bool)

(assert (=> b!3959972 m!4528811))

(declare-fun m!4528813 () Bool)

(assert (=> b!3959946 m!4528813))

(declare-fun m!4528815 () Bool)

(assert (=> b!3959969 m!4528815))

(declare-fun m!4528817 () Bool)

(assert (=> b!3959968 m!4528817))

(declare-fun m!4528819 () Bool)

(assert (=> b!3959968 m!4528819))

(declare-fun m!4528821 () Bool)

(assert (=> b!3959953 m!4528821))

(declare-fun m!4528823 () Bool)

(assert (=> b!3959953 m!4528823))

(declare-fun m!4528825 () Bool)

(assert (=> b!3959961 m!4528825))

(declare-fun m!4528827 () Bool)

(assert (=> b!3959961 m!4528827))

(declare-fun m!4528829 () Bool)

(assert (=> bm!285386 m!4528829))

(declare-fun m!4528831 () Bool)

(assert (=> b!3959941 m!4528831))

(declare-fun m!4528833 () Bool)

(assert (=> b!3959949 m!4528833))

(declare-fun m!4528835 () Bool)

(assert (=> b!3959948 m!4528835))

(declare-fun m!4528837 () Bool)

(assert (=> b!3959957 m!4528837))

(declare-fun m!4528839 () Bool)

(assert (=> b!3959970 m!4528839))

(declare-fun m!4528841 () Bool)

(assert (=> b!3959970 m!4528841))

(declare-fun m!4528843 () Bool)

(assert (=> b!3959958 m!4528843))

(declare-fun m!4528845 () Bool)

(assert (=> b!3959965 m!4528845))

(declare-fun m!4528847 () Bool)

(assert (=> b!3959944 m!4528847))

(declare-fun m!4528849 () Bool)

(assert (=> b!3959939 m!4528849))

(declare-fun m!4528851 () Bool)

(assert (=> b!3959939 m!4528851))

(declare-fun m!4528853 () Bool)

(assert (=> b!3959939 m!4528853))

(declare-fun m!4528855 () Bool)

(assert (=> b!3959939 m!4528855))

(declare-fun m!4528857 () Bool)

(assert (=> b!3959939 m!4528857))

(declare-fun m!4528859 () Bool)

(assert (=> b!3959962 m!4528859))

(declare-fun m!4528861 () Bool)

(assert (=> b!3959962 m!4528861))

(declare-fun m!4528863 () Bool)

(assert (=> b!3959962 m!4528863))

(declare-fun m!4528865 () Bool)

(assert (=> b!3959942 m!4528865))

(declare-fun m!4528867 () Bool)

(assert (=> b!3959971 m!4528867))

(declare-fun m!4528869 () Bool)

(assert (=> b!3959971 m!4528869))

(declare-fun m!4528871 () Bool)

(assert (=> b!3959971 m!4528871))

(declare-fun m!4528873 () Bool)

(assert (=> b!3959971 m!4528873))

(declare-fun m!4528875 () Bool)

(assert (=> b!3959971 m!4528875))

(declare-fun m!4528877 () Bool)

(assert (=> b!3959971 m!4528877))

(declare-fun m!4528879 () Bool)

(assert (=> b!3959971 m!4528879))

(declare-fun m!4528881 () Bool)

(assert (=> b!3959971 m!4528881))

(declare-fun m!4528883 () Bool)

(assert (=> b!3959971 m!4528883))

(declare-fun m!4528885 () Bool)

(assert (=> b!3959971 m!4528885))

(assert (=> b!3959971 m!4528881))

(declare-fun m!4528887 () Bool)

(assert (=> b!3959971 m!4528887))

(declare-fun m!4528889 () Bool)

(assert (=> b!3959971 m!4528889))

(declare-fun m!4528891 () Bool)

(assert (=> b!3959971 m!4528891))

(assert (=> b!3959971 m!4528867))

(declare-fun m!4528893 () Bool)

(assert (=> b!3959971 m!4528893))

(declare-fun m!4528895 () Bool)

(assert (=> b!3959945 m!4528895))

(declare-fun m!4528897 () Bool)

(assert (=> b!3959945 m!4528897))

(declare-fun m!4528899 () Bool)

(assert (=> b!3959945 m!4528899))

(declare-fun m!4528901 () Bool)

(assert (=> b!3959960 m!4528901))

(declare-fun m!4528903 () Bool)

(assert (=> b!3959960 m!4528903))

(declare-fun m!4528905 () Bool)

(assert (=> b!3959959 m!4528905))

(declare-fun m!4528907 () Bool)

(assert (=> b!3959951 m!4528907))

(declare-fun m!4528909 () Bool)

(assert (=> b!3959951 m!4528909))

(push 1)

(assert (not b!3959959))

(assert (not b!3959968))

(assert (not bm!285386))

(assert b_and!303999)

(assert (not b!3959972))

(assert b_and!303995)

(assert (not b_next!109963))

(assert (not b!3959942))

(assert (not b_next!109969))

(assert (not b!3959937))

(assert (not b!3959957))

(assert (not b!3959960))

(assert (not b!3959949))

(assert (not b!3959964))

(assert (not b!3959948))

(assert (not b!3959952))

(assert (not b!3959967))

(assert (not b!3959941))

(assert (not b!3959940))

(assert (not b!3959945))

(assert (not b!3959961))

(assert (not b!3959944))

(assert (not b_next!109965))

(assert (not b!3959946))

(assert (not b!3959958))

(assert (not b!3959953))

(assert (not b_next!109961))

(assert (not b_next!109971))

(assert b_and!303993)

(assert (not b!3959951))

(assert b_and!303991)

(assert (not b_next!109967))

(assert (not b!3959971))

(assert (not b!3959970))

(assert b_and!303997)

(assert tp_is_empty!20007)

(assert (not b!3959938))

(assert b_and!304001)

(assert (not b!3959969))

(assert (not b!3959939))

(assert (not b!3959962))

(assert (not b!3959965))

(check-sat)

(pop 1)

(push 1)

(assert b_and!303999)

(assert b_and!303995)

(assert (not b_next!109965))

(assert (not b_next!109963))

(assert (not b_next!109967))

(assert b_and!303997)

(assert b_and!304001)

(assert (not b_next!109969))

(assert (not b_next!109961))

(assert (not b_next!109971))

(assert b_and!303993)

(assert b_and!303991)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1173518 () Bool)

(assert (=> d!1173518 (and (= lt!1385005 lt!1385005) (= (_2!23867 (v!39378 lt!1385017)) (_2!23867 lt!1384999)))))

(declare-fun lt!1385104 () Unit!60668)

(declare-fun choose!23646 (List!42299 List!42299 List!42299 List!42299) Unit!60668)

(assert (=> d!1173518 (= lt!1385104 (choose!23646 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 (_2!23867 lt!1384999)))))

(assert (=> d!1173518 (= (++!10984 lt!1385005 (_2!23867 (v!39378 lt!1385017))) (++!10984 lt!1385005 (_2!23867 lt!1384999)))))

(assert (=> d!1173518 (= (lemmaConcatSameAndSameSizesThenSameLists!607 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 (_2!23867 lt!1384999)) lt!1385104)))

(declare-fun bs!587243 () Bool)

(assert (= bs!587243 d!1173518))

(declare-fun m!4529017 () Bool)

(assert (=> bs!587243 m!4529017))

(assert (=> bs!587243 m!4528873))

(declare-fun m!4529019 () Bool)

(assert (=> bs!587243 m!4529019))

(assert (=> b!3959953 d!1173518))

(declare-fun d!1173520 () Bool)

(assert (=> d!1173520 (not (= (lexList!1970 thiss!20629 rules!2768 (_2!23867 lt!1384999)) (tuple2!41469 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1385107 () Unit!60668)

(declare-fun choose!23647 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42302 List!42299) Unit!60668)

(assert (=> d!1173520 (= lt!1385107 (choose!23647 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91))))

(assert (=> d!1173520 (not (isEmpty!25220 rules!2768))))

(assert (=> d!1173520 (= (lemmaLexWithSmallerInputCannotProduceSameResults!141 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91) lt!1385107)))

(declare-fun bs!587244 () Bool)

(assert (= bs!587244 d!1173520))

(assert (=> bs!587244 m!4528829))

(declare-fun m!4529021 () Bool)

(assert (=> bs!587244 m!4529021))

(assert (=> bs!587244 m!4528847))

(assert (=> b!3959953 d!1173520))

(declare-fun b!3960094 () Bool)

(declare-fun e!2452086 () tuple2!41468)

(assert (=> b!3960094 (= e!2452086 (tuple2!41469 Nil!42178 (_2!23867 lt!1384999)))))

(declare-fun b!3960095 () Bool)

(declare-fun e!2452085 () Bool)

(declare-fun lt!1385115 () tuple2!41468)

(assert (=> b!3960095 (= e!2452085 (= (_2!23868 lt!1385115) (_2!23867 lt!1384999)))))

(declare-fun b!3960096 () Bool)

(declare-fun e!2452084 () Bool)

(assert (=> b!3960096 (= e!2452085 e!2452084)))

(declare-fun res!1602725 () Bool)

(assert (=> b!3960096 (= res!1602725 (< (size!31584 (_2!23868 lt!1385115)) (size!31584 (_2!23867 lt!1384999))))))

(assert (=> b!3960096 (=> (not res!1602725) (not e!2452084))))

(declare-fun b!3960097 () Bool)

(assert (=> b!3960097 (= e!2452084 (not (isEmpty!25219 (_1!23868 lt!1385115))))))

(declare-fun d!1173522 () Bool)

(assert (=> d!1173522 e!2452085))

(declare-fun c!687178 () Bool)

(declare-fun size!31588 (List!42302) Int)

(assert (=> d!1173522 (= c!687178 (> (size!31588 (_1!23868 lt!1385115)) 0))))

(assert (=> d!1173522 (= lt!1385115 e!2452086)))

(declare-fun c!687179 () Bool)

(declare-fun lt!1385116 () Option!9033)

(assert (=> d!1173522 (= c!687179 (is-Some!9032 lt!1385116))))

(assert (=> d!1173522 (= lt!1385116 (maxPrefix!3506 thiss!20629 rules!2768 (_2!23867 lt!1384999)))))

(assert (=> d!1173522 (= (lexList!1970 thiss!20629 rules!2768 (_2!23867 lt!1384999)) lt!1385115)))

(declare-fun b!3960098 () Bool)

(declare-fun lt!1385114 () tuple2!41468)

(assert (=> b!3960098 (= e!2452086 (tuple2!41469 (Cons!42178 (_1!23867 (v!39378 lt!1385116)) (_1!23868 lt!1385114)) (_2!23868 lt!1385114)))))

(assert (=> b!3960098 (= lt!1385114 (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385116))))))

(assert (= (and d!1173522 c!687179) b!3960098))

(assert (= (and d!1173522 (not c!687179)) b!3960094))

(assert (= (and d!1173522 c!687178) b!3960096))

(assert (= (and d!1173522 (not c!687178)) b!3960095))

(assert (= (and b!3960096 res!1602725) b!3960097))

(declare-fun m!4529027 () Bool)

(assert (=> b!3960096 m!4529027))

(assert (=> b!3960096 m!4528853))

(declare-fun m!4529029 () Bool)

(assert (=> b!3960097 m!4529029))

(declare-fun m!4529031 () Bool)

(assert (=> d!1173522 m!4529031))

(declare-fun m!4529033 () Bool)

(assert (=> d!1173522 m!4529033))

(declare-fun m!4529035 () Bool)

(assert (=> b!3960098 m!4529035))

(assert (=> bm!285386 d!1173522))

(declare-fun d!1173534 () Bool)

(assert (=> d!1173534 (= (inv!56404 (tag!7473 (rule!9591 (h!47598 prefixTokens!80)))) (= (mod (str.len (value!209105 (tag!7473 (rule!9591 (h!47598 prefixTokens!80))))) 2) 0))))

(assert (=> b!3959952 d!1173534))

(declare-fun d!1173536 () Bool)

(declare-fun res!1602728 () Bool)

(declare-fun e!2452089 () Bool)

(assert (=> d!1173536 (=> (not res!1602728) (not e!2452089))))

(declare-fun semiInverseModEq!2850 (Int Int) Bool)

(assert (=> d!1173536 (= res!1602728 (semiInverseModEq!2850 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toValue!9093 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))))))

(assert (=> d!1173536 (= (inv!56408 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) e!2452089)))

(declare-fun b!3960101 () Bool)

(declare-fun equivClasses!2749 (Int Int) Bool)

(assert (=> b!3960101 (= e!2452089 (equivClasses!2749 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toValue!9093 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))))))

(assert (= (and d!1173536 res!1602728) b!3960101))

(declare-fun m!4529037 () Bool)

(assert (=> d!1173536 m!4529037))

(declare-fun m!4529039 () Bool)

(assert (=> b!3960101 m!4529039))

(assert (=> b!3959952 d!1173536))

(declare-fun d!1173538 () Bool)

(declare-fun res!1602733 () Bool)

(declare-fun e!2452092 () Bool)

(assert (=> d!1173538 (=> (not res!1602733) (not e!2452092))))

(assert (=> d!1173538 (= res!1602733 (not (isEmpty!25221 (originalCharacters!7213 (h!47598 suffixTokens!72)))))))

(assert (=> d!1173538 (= (inv!56407 (h!47598 suffixTokens!72)) e!2452092)))

(declare-fun b!3960106 () Bool)

(declare-fun res!1602734 () Bool)

(assert (=> b!3960106 (=> (not res!1602734) (not e!2452092))))

(declare-fun dynLambda!18026 (Int TokenValue!6843) BalanceConc!25242)

(assert (=> b!3960106 (= res!1602734 (= (originalCharacters!7213 (h!47598 suffixTokens!72)) (list!15657 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (value!209106 (h!47598 suffixTokens!72))))))))

(declare-fun b!3960107 () Bool)

(assert (=> b!3960107 (= e!2452092 (= (size!31585 (h!47598 suffixTokens!72)) (size!31584 (originalCharacters!7213 (h!47598 suffixTokens!72)))))))

(assert (= (and d!1173538 res!1602733) b!3960106))

(assert (= (and b!3960106 res!1602734) b!3960107))

(declare-fun b_lambda!115835 () Bool)

(assert (=> (not b_lambda!115835) (not b!3960106)))

(declare-fun tb!238737 () Bool)

(declare-fun t!329779 () Bool)

(assert (=> (and b!3959947 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329779) tb!238737))

(declare-fun b!3960112 () Bool)

(declare-fun e!2452095 () Bool)

(declare-fun tp!1206967 () Bool)

(declare-fun inv!56411 (Conc!12824) Bool)

(assert (=> b!3960112 (= e!2452095 (and (inv!56411 (c!687160 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (value!209106 (h!47598 suffixTokens!72))))) tp!1206967))))

(declare-fun result!289098 () Bool)

(declare-fun inv!56412 (BalanceConc!25242) Bool)

(assert (=> tb!238737 (= result!289098 (and (inv!56412 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (value!209106 (h!47598 suffixTokens!72)))) e!2452095))))

(assert (= tb!238737 b!3960112))

(declare-fun m!4529041 () Bool)

(assert (=> b!3960112 m!4529041))

(declare-fun m!4529043 () Bool)

(assert (=> tb!238737 m!4529043))

(assert (=> b!3960106 t!329779))

(declare-fun b_and!304015 () Bool)

(assert (= b_and!303993 (and (=> t!329779 result!289098) b_and!304015)))

(declare-fun t!329781 () Bool)

(declare-fun tb!238739 () Bool)

(assert (=> (and b!3959943 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329781) tb!238739))

(declare-fun result!289102 () Bool)

(assert (= result!289102 result!289098))

(assert (=> b!3960106 t!329781))

(declare-fun b_and!304017 () Bool)

(assert (= b_and!303997 (and (=> t!329781 result!289102) b_and!304017)))

(declare-fun tb!238741 () Bool)

(declare-fun t!329783 () Bool)

(assert (=> (and b!3959954 (= (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329783) tb!238741))

(declare-fun result!289104 () Bool)

(assert (= result!289104 result!289098))

(assert (=> b!3960106 t!329783))

(declare-fun b_and!304019 () Bool)

(assert (= b_and!304001 (and (=> t!329783 result!289104) b_and!304019)))

(declare-fun m!4529045 () Bool)

(assert (=> d!1173538 m!4529045))

(declare-fun m!4529047 () Bool)

(assert (=> b!3960106 m!4529047))

(assert (=> b!3960106 m!4529047))

(declare-fun m!4529049 () Bool)

(assert (=> b!3960106 m!4529049))

(declare-fun m!4529051 () Bool)

(assert (=> b!3960107 m!4529051))

(assert (=> b!3959949 d!1173538))

(declare-fun d!1173540 () Bool)

(declare-fun lt!1385119 () Int)

(assert (=> d!1173540 (>= lt!1385119 0)))

(declare-fun e!2452098 () Int)

(assert (=> d!1173540 (= lt!1385119 e!2452098)))

(declare-fun c!687182 () Bool)

(assert (=> d!1173540 (= c!687182 (is-Nil!42175 prefix!426))))

(assert (=> d!1173540 (= (size!31584 prefix!426) lt!1385119)))

(declare-fun b!3960117 () Bool)

(assert (=> b!3960117 (= e!2452098 0)))

(declare-fun b!3960118 () Bool)

(assert (=> b!3960118 (= e!2452098 (+ 1 (size!31584 (t!329770 prefix!426))))))

(assert (= (and d!1173540 c!687182) b!3960117))

(assert (= (and d!1173540 (not c!687182)) b!3960118))

(declare-fun m!4529053 () Bool)

(assert (=> b!3960118 m!4529053))

(assert (=> b!3959969 d!1173540))

(declare-fun b!3960129 () Bool)

(declare-fun res!1602740 () Bool)

(declare-fun e!2452103 () Bool)

(assert (=> b!3960129 (=> (not res!1602740) (not e!2452103))))

(declare-fun lt!1385122 () List!42302)

(assert (=> b!3960129 (= res!1602740 (= (size!31588 lt!1385122) (+ (size!31588 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178)) (size!31588 (_1!23868 lt!1385014)))))))

(declare-fun d!1173542 () Bool)

(assert (=> d!1173542 e!2452103))

(declare-fun res!1602739 () Bool)

(assert (=> d!1173542 (=> (not res!1602739) (not e!2452103))))

(declare-fun content!6404 (List!42302) (Set Token!12364))

(assert (=> d!1173542 (= res!1602739 (= (content!6404 lt!1385122) (set.union (content!6404 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178)) (content!6404 (_1!23868 lt!1385014)))))))

(declare-fun e!2452104 () List!42302)

(assert (=> d!1173542 (= lt!1385122 e!2452104)))

(declare-fun c!687185 () Bool)

(assert (=> d!1173542 (= c!687185 (is-Nil!42178 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178)))))

(assert (=> d!1173542 (= (++!10983 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178) (_1!23868 lt!1385014)) lt!1385122)))

(declare-fun b!3960127 () Bool)

(assert (=> b!3960127 (= e!2452104 (_1!23868 lt!1385014))))

(declare-fun b!3960128 () Bool)

(assert (=> b!3960128 (= e!2452104 (Cons!42178 (h!47598 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178)) (++!10983 (t!329773 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178)) (_1!23868 lt!1385014))))))

(declare-fun b!3960130 () Bool)

(assert (=> b!3960130 (= e!2452103 (or (not (= (_1!23868 lt!1385014) Nil!42178)) (= lt!1385122 (Cons!42178 (_1!23867 (v!39378 lt!1385017)) Nil!42178))))))

(assert (= (and d!1173542 c!687185) b!3960127))

(assert (= (and d!1173542 (not c!687185)) b!3960128))

(assert (= (and d!1173542 res!1602739) b!3960129))

(assert (= (and b!3960129 res!1602740) b!3960130))

(declare-fun m!4529055 () Bool)

(assert (=> b!3960129 m!4529055))

(declare-fun m!4529057 () Bool)

(assert (=> b!3960129 m!4529057))

(declare-fun m!4529059 () Bool)

(assert (=> b!3960129 m!4529059))

(declare-fun m!4529061 () Bool)

(assert (=> d!1173542 m!4529061))

(declare-fun m!4529063 () Bool)

(assert (=> d!1173542 m!4529063))

(declare-fun m!4529065 () Bool)

(assert (=> d!1173542 m!4529065))

(declare-fun m!4529067 () Bool)

(assert (=> b!3960128 m!4529067))

(assert (=> b!3959948 d!1173542))

(declare-fun d!1173544 () Bool)

(declare-fun lt!1385123 () Int)

(assert (=> d!1173544 (>= lt!1385123 0)))

(declare-fun e!2452105 () Int)

(assert (=> d!1173544 (= lt!1385123 e!2452105)))

(declare-fun c!687186 () Bool)

(assert (=> d!1173544 (= c!687186 (is-Nil!42175 suffix!1176))))

(assert (=> d!1173544 (= (size!31584 suffix!1176) lt!1385123)))

(declare-fun b!3960131 () Bool)

(assert (=> b!3960131 (= e!2452105 0)))

(declare-fun b!3960132 () Bool)

(assert (=> b!3960132 (= e!2452105 (+ 1 (size!31584 (t!329770 suffix!1176))))))

(assert (= (and d!1173544 c!687186) b!3960131))

(assert (= (and d!1173544 (not c!687186)) b!3960132))

(declare-fun m!4529069 () Bool)

(assert (=> b!3960132 m!4529069))

(assert (=> b!3959968 d!1173544))

(declare-fun d!1173546 () Bool)

(declare-fun lt!1385124 () Int)

(assert (=> d!1173546 (>= lt!1385124 0)))

(declare-fun e!2452106 () Int)

(assert (=> d!1173546 (= lt!1385124 e!2452106)))

(declare-fun c!687187 () Bool)

(assert (=> d!1173546 (= c!687187 (is-Nil!42175 (_2!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173546 (= (size!31584 (_2!23867 (v!39378 lt!1385017))) lt!1385124)))

(declare-fun b!3960133 () Bool)

(assert (=> b!3960133 (= e!2452106 0)))

(declare-fun b!3960134 () Bool)

(assert (=> b!3960134 (= e!2452106 (+ 1 (size!31584 (t!329770 (_2!23867 (v!39378 lt!1385017))))))))

(assert (= (and d!1173546 c!687187) b!3960133))

(assert (= (and d!1173546 (not c!687187)) b!3960134))

(declare-fun m!4529071 () Bool)

(assert (=> b!3960134 m!4529071))

(assert (=> b!3959968 d!1173546))

(declare-fun b!3960168 () Bool)

(declare-fun res!1602758 () Bool)

(declare-fun e!2452124 () Bool)

(assert (=> b!3960168 (=> (not res!1602758) (not e!2452124))))

(declare-fun lt!1385147 () Option!9033)

(assert (=> b!3960168 (= res!1602758 (= (++!10984 (list!15657 (charsOf!4431 (_1!23867 (get!13910 lt!1385147)))) (_2!23867 (get!13910 lt!1385147))) lt!1385019))))

(declare-fun b!3960169 () Bool)

(declare-fun res!1602759 () Bool)

(assert (=> b!3960169 (=> (not res!1602759) (not e!2452124))))

(assert (=> b!3960169 (= res!1602759 (= (value!209106 (_1!23867 (get!13910 lt!1385147))) (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (get!13910 lt!1385147)))) (seqFromList!4872 (originalCharacters!7213 (_1!23867 (get!13910 lt!1385147)))))))))

(declare-fun b!3960170 () Bool)

(declare-fun res!1602760 () Bool)

(assert (=> b!3960170 (=> (not res!1602760) (not e!2452124))))

(declare-fun matchR!5537 (Regex!11518 List!42299) Bool)

(assert (=> b!3960170 (= res!1602760 (matchR!5537 (regex!6613 (rule!9591 (_1!23867 (get!13910 lt!1385147)))) (list!15657 (charsOf!4431 (_1!23867 (get!13910 lt!1385147))))))))

(declare-fun b!3960171 () Bool)

(declare-fun e!2452123 () Bool)

(assert (=> b!3960171 (= e!2452123 e!2452124)))

(declare-fun res!1602761 () Bool)

(assert (=> b!3960171 (=> (not res!1602761) (not e!2452124))))

(declare-fun isDefined!6998 (Option!9033) Bool)

(assert (=> b!3960171 (= res!1602761 (isDefined!6998 lt!1385147))))

(declare-fun b!3960172 () Bool)

(declare-fun res!1602762 () Bool)

(assert (=> b!3960172 (=> (not res!1602762) (not e!2452124))))

(assert (=> b!3960172 (= res!1602762 (< (size!31584 (_2!23867 (get!13910 lt!1385147))) (size!31584 lt!1385019)))))

(declare-fun d!1173548 () Bool)

(assert (=> d!1173548 e!2452123))

(declare-fun res!1602763 () Bool)

(assert (=> d!1173548 (=> res!1602763 e!2452123)))

(declare-fun isEmpty!25225 (Option!9033) Bool)

(assert (=> d!1173548 (= res!1602763 (isEmpty!25225 lt!1385147))))

(declare-fun e!2452122 () Option!9033)

(assert (=> d!1173548 (= lt!1385147 e!2452122)))

(declare-fun c!687196 () Bool)

(assert (=> d!1173548 (= c!687196 (and (is-Cons!42177 rules!2768) (is-Nil!42177 (t!329772 rules!2768))))))

(declare-fun lt!1385145 () Unit!60668)

(declare-fun lt!1385148 () Unit!60668)

(assert (=> d!1173548 (= lt!1385145 lt!1385148)))

(assert (=> d!1173548 (isPrefix!3702 lt!1385019 lt!1385019)))

(declare-fun lemmaIsPrefixRefl!2339 (List!42299 List!42299) Unit!60668)

(assert (=> d!1173548 (= lt!1385148 (lemmaIsPrefixRefl!2339 lt!1385019 lt!1385019))))

(declare-fun rulesValidInductive!2397 (LexerInterface!6202 List!42301) Bool)

(assert (=> d!1173548 (rulesValidInductive!2397 thiss!20629 rules!2768)))

(assert (=> d!1173548 (= (maxPrefix!3506 thiss!20629 rules!2768 lt!1385019) lt!1385147)))

(declare-fun b!3960173 () Bool)

(declare-fun lt!1385146 () Option!9033)

(declare-fun lt!1385144 () Option!9033)

(assert (=> b!3960173 (= e!2452122 (ite (and (is-None!9032 lt!1385146) (is-None!9032 lt!1385144)) None!9032 (ite (is-None!9032 lt!1385144) lt!1385146 (ite (is-None!9032 lt!1385146) lt!1385144 (ite (>= (size!31585 (_1!23867 (v!39378 lt!1385146))) (size!31585 (_1!23867 (v!39378 lt!1385144)))) lt!1385146 lt!1385144)))))))

(declare-fun call!285397 () Option!9033)

(assert (=> b!3960173 (= lt!1385146 call!285397)))

(assert (=> b!3960173 (= lt!1385144 (maxPrefix!3506 thiss!20629 (t!329772 rules!2768) lt!1385019))))

(declare-fun b!3960174 () Bool)

(declare-fun res!1602764 () Bool)

(assert (=> b!3960174 (=> (not res!1602764) (not e!2452124))))

(assert (=> b!3960174 (= res!1602764 (= (list!15657 (charsOf!4431 (_1!23867 (get!13910 lt!1385147)))) (originalCharacters!7213 (_1!23867 (get!13910 lt!1385147)))))))

(declare-fun bm!285392 () Bool)

(assert (=> bm!285392 (= call!285397 (maxPrefixOneRule!2556 thiss!20629 (h!47597 rules!2768) lt!1385019))))

(declare-fun b!3960175 () Bool)

(assert (=> b!3960175 (= e!2452122 call!285397)))

(declare-fun b!3960176 () Bool)

(declare-fun contains!8427 (List!42301 Rule!13026) Bool)

(assert (=> b!3960176 (= e!2452124 (contains!8427 rules!2768 (rule!9591 (_1!23867 (get!13910 lt!1385147)))))))

(assert (= (and d!1173548 c!687196) b!3960175))

(assert (= (and d!1173548 (not c!687196)) b!3960173))

(assert (= (or b!3960175 b!3960173) bm!285392))

(assert (= (and d!1173548 (not res!1602763)) b!3960171))

(assert (= (and b!3960171 res!1602761) b!3960174))

(assert (= (and b!3960174 res!1602764) b!3960172))

(assert (= (and b!3960172 res!1602762) b!3960168))

(assert (= (and b!3960168 res!1602758) b!3960169))

(assert (= (and b!3960169 res!1602759) b!3960170))

(assert (= (and b!3960170 res!1602760) b!3960176))

(declare-fun m!4529083 () Bool)

(assert (=> b!3960172 m!4529083))

(declare-fun m!4529085 () Bool)

(assert (=> b!3960172 m!4529085))

(assert (=> b!3960172 m!4528855))

(assert (=> b!3960176 m!4529083))

(declare-fun m!4529087 () Bool)

(assert (=> b!3960176 m!4529087))

(assert (=> b!3960174 m!4529083))

(declare-fun m!4529089 () Bool)

(assert (=> b!3960174 m!4529089))

(assert (=> b!3960174 m!4529089))

(declare-fun m!4529091 () Bool)

(assert (=> b!3960174 m!4529091))

(declare-fun m!4529093 () Bool)

(assert (=> b!3960171 m!4529093))

(assert (=> b!3960169 m!4529083))

(declare-fun m!4529095 () Bool)

(assert (=> b!3960169 m!4529095))

(assert (=> b!3960169 m!4529095))

(declare-fun m!4529097 () Bool)

(assert (=> b!3960169 m!4529097))

(assert (=> b!3960168 m!4529083))

(assert (=> b!3960168 m!4529089))

(assert (=> b!3960168 m!4529089))

(assert (=> b!3960168 m!4529091))

(assert (=> b!3960168 m!4529091))

(declare-fun m!4529099 () Bool)

(assert (=> b!3960168 m!4529099))

(assert (=> b!3960170 m!4529083))

(assert (=> b!3960170 m!4529089))

(assert (=> b!3960170 m!4529089))

(assert (=> b!3960170 m!4529091))

(assert (=> b!3960170 m!4529091))

(declare-fun m!4529101 () Bool)

(assert (=> b!3960170 m!4529101))

(declare-fun m!4529103 () Bool)

(assert (=> bm!285392 m!4529103))

(declare-fun m!4529105 () Bool)

(assert (=> d!1173548 m!4529105))

(declare-fun m!4529107 () Bool)

(assert (=> d!1173548 m!4529107))

(declare-fun m!4529109 () Bool)

(assert (=> d!1173548 m!4529109))

(declare-fun m!4529111 () Bool)

(assert (=> d!1173548 m!4529111))

(declare-fun m!4529113 () Bool)

(assert (=> b!3960173 m!4529113))

(assert (=> b!3959967 d!1173548))

(declare-fun b!3960177 () Bool)

(declare-fun e!2452127 () tuple2!41468)

(assert (=> b!3960177 (= e!2452127 (tuple2!41469 Nil!42178 suffix!1176))))

(declare-fun b!3960178 () Bool)

(declare-fun e!2452126 () Bool)

(declare-fun lt!1385150 () tuple2!41468)

(assert (=> b!3960178 (= e!2452126 (= (_2!23868 lt!1385150) suffix!1176))))

(declare-fun b!3960179 () Bool)

(declare-fun e!2452125 () Bool)

(assert (=> b!3960179 (= e!2452126 e!2452125)))

(declare-fun res!1602765 () Bool)

(assert (=> b!3960179 (= res!1602765 (< (size!31584 (_2!23868 lt!1385150)) (size!31584 suffix!1176)))))

(assert (=> b!3960179 (=> (not res!1602765) (not e!2452125))))

(declare-fun b!3960180 () Bool)

(assert (=> b!3960180 (= e!2452125 (not (isEmpty!25219 (_1!23868 lt!1385150))))))

(declare-fun d!1173552 () Bool)

(assert (=> d!1173552 e!2452126))

(declare-fun c!687197 () Bool)

(assert (=> d!1173552 (= c!687197 (> (size!31588 (_1!23868 lt!1385150)) 0))))

(assert (=> d!1173552 (= lt!1385150 e!2452127)))

(declare-fun c!687198 () Bool)

(declare-fun lt!1385151 () Option!9033)

(assert (=> d!1173552 (= c!687198 (is-Some!9032 lt!1385151))))

(assert (=> d!1173552 (= lt!1385151 (maxPrefix!3506 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1173552 (= (lexList!1970 thiss!20629 rules!2768 suffix!1176) lt!1385150)))

(declare-fun b!3960181 () Bool)

(declare-fun lt!1385149 () tuple2!41468)

(assert (=> b!3960181 (= e!2452127 (tuple2!41469 (Cons!42178 (_1!23867 (v!39378 lt!1385151)) (_1!23868 lt!1385149)) (_2!23868 lt!1385149)))))

(assert (=> b!3960181 (= lt!1385149 (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385151))))))

(assert (= (and d!1173552 c!687198) b!3960181))

(assert (= (and d!1173552 (not c!687198)) b!3960177))

(assert (= (and d!1173552 c!687197) b!3960179))

(assert (= (and d!1173552 (not c!687197)) b!3960178))

(assert (= (and b!3960179 res!1602765) b!3960180))

(declare-fun m!4529115 () Bool)

(assert (=> b!3960179 m!4529115))

(assert (=> b!3960179 m!4528817))

(declare-fun m!4529117 () Bool)

(assert (=> b!3960180 m!4529117))

(declare-fun m!4529119 () Bool)

(assert (=> d!1173552 m!4529119))

(declare-fun m!4529121 () Bool)

(assert (=> d!1173552 m!4529121))

(declare-fun m!4529123 () Bool)

(assert (=> b!3960181 m!4529123))

(assert (=> b!3959972 d!1173552))

(declare-fun d!1173554 () Bool)

(assert (=> d!1173554 (not (= (lexList!1970 thiss!20629 rules!2768 (_2!23867 lt!1384999)) (tuple2!41469 (++!10983 lt!1385006 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1385154 () Unit!60668)

(declare-fun choose!23648 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42302 List!42299 List!42302) Unit!60668)

(assert (=> d!1173554 (= lt!1385154 (choose!23648 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91 lt!1385006))))

(assert (=> d!1173554 (not (isEmpty!25220 rules!2768))))

(assert (=> d!1173554 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!141 thiss!20629 rules!2768 suffix!1176 (_2!23867 lt!1384999) suffixTokens!72 suffixResult!91 lt!1385006) lt!1385154)))

(declare-fun bs!587245 () Bool)

(assert (= bs!587245 d!1173554))

(assert (=> bs!587245 m!4528829))

(assert (=> bs!587245 m!4528909))

(declare-fun m!4529125 () Bool)

(assert (=> bs!587245 m!4529125))

(assert (=> bs!587245 m!4528847))

(assert (=> b!3959951 d!1173554))

(declare-fun b!3960184 () Bool)

(declare-fun res!1602767 () Bool)

(declare-fun e!2452128 () Bool)

(assert (=> b!3960184 (=> (not res!1602767) (not e!2452128))))

(declare-fun lt!1385155 () List!42302)

(assert (=> b!3960184 (= res!1602767 (= (size!31588 lt!1385155) (+ (size!31588 lt!1385006) (size!31588 suffixTokens!72))))))

(declare-fun d!1173556 () Bool)

(assert (=> d!1173556 e!2452128))

(declare-fun res!1602766 () Bool)

(assert (=> d!1173556 (=> (not res!1602766) (not e!2452128))))

(assert (=> d!1173556 (= res!1602766 (= (content!6404 lt!1385155) (set.union (content!6404 lt!1385006) (content!6404 suffixTokens!72))))))

(declare-fun e!2452129 () List!42302)

(assert (=> d!1173556 (= lt!1385155 e!2452129)))

(declare-fun c!687199 () Bool)

(assert (=> d!1173556 (= c!687199 (is-Nil!42178 lt!1385006))))

(assert (=> d!1173556 (= (++!10983 lt!1385006 suffixTokens!72) lt!1385155)))

(declare-fun b!3960182 () Bool)

(assert (=> b!3960182 (= e!2452129 suffixTokens!72)))

(declare-fun b!3960183 () Bool)

(assert (=> b!3960183 (= e!2452129 (Cons!42178 (h!47598 lt!1385006) (++!10983 (t!329773 lt!1385006) suffixTokens!72)))))

(declare-fun b!3960185 () Bool)

(assert (=> b!3960185 (= e!2452128 (or (not (= suffixTokens!72 Nil!42178)) (= lt!1385155 lt!1385006)))))

(assert (= (and d!1173556 c!687199) b!3960182))

(assert (= (and d!1173556 (not c!687199)) b!3960183))

(assert (= (and d!1173556 res!1602766) b!3960184))

(assert (= (and b!3960184 res!1602767) b!3960185))

(declare-fun m!4529127 () Bool)

(assert (=> b!3960184 m!4529127))

(declare-fun m!4529129 () Bool)

(assert (=> b!3960184 m!4529129))

(declare-fun m!4529131 () Bool)

(assert (=> b!3960184 m!4529131))

(declare-fun m!4529133 () Bool)

(assert (=> d!1173556 m!4529133))

(declare-fun m!4529135 () Bool)

(assert (=> d!1173556 m!4529135))

(declare-fun m!4529137 () Bool)

(assert (=> d!1173556 m!4529137))

(declare-fun m!4529139 () Bool)

(assert (=> b!3960183 m!4529139))

(assert (=> b!3959951 d!1173556))

(declare-fun d!1173558 () Bool)

(assert (=> d!1173558 (= (_2!23867 (v!39378 lt!1385017)) lt!1384995)))

(declare-fun lt!1385158 () Unit!60668)

(declare-fun choose!23649 (List!42299 List!42299 List!42299 List!42299 List!42299) Unit!60668)

(assert (=> d!1173558 (= lt!1385158 (choose!23649 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 lt!1384995 lt!1385019))))

(assert (=> d!1173558 (isPrefix!3702 lt!1385005 lt!1385019)))

(assert (=> d!1173558 (= (lemmaSamePrefixThenSameSuffix!1911 lt!1385005 (_2!23867 (v!39378 lt!1385017)) lt!1385005 lt!1384995 lt!1385019) lt!1385158)))

(declare-fun bs!587246 () Bool)

(assert (= bs!587246 d!1173558))

(declare-fun m!4529141 () Bool)

(assert (=> bs!587246 m!4529141))

(assert (=> bs!587246 m!4528859))

(assert (=> b!3959971 d!1173558))

(declare-fun d!1173560 () Bool)

(assert (=> d!1173560 (isPrefix!3702 lt!1385005 (++!10984 lt!1385005 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun lt!1385161 () Unit!60668)

(declare-fun choose!23650 (List!42299 List!42299) Unit!60668)

(assert (=> d!1173560 (= lt!1385161 (choose!23650 lt!1385005 (_2!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173560 (= (lemmaConcatTwoListThenFirstIsPrefix!2561 lt!1385005 (_2!23867 (v!39378 lt!1385017))) lt!1385161)))

(declare-fun bs!587247 () Bool)

(assert (= bs!587247 d!1173560))

(assert (=> bs!587247 m!4528873))

(assert (=> bs!587247 m!4528873))

(declare-fun m!4529143 () Bool)

(assert (=> bs!587247 m!4529143))

(declare-fun m!4529145 () Bool)

(assert (=> bs!587247 m!4529145))

(assert (=> b!3959971 d!1173560))

(declare-fun d!1173562 () Bool)

(declare-fun lt!1385164 () List!42299)

(assert (=> d!1173562 (= (++!10984 lt!1385005 lt!1385164) lt!1385019)))

(declare-fun e!2452132 () List!42299)

(assert (=> d!1173562 (= lt!1385164 e!2452132)))

(declare-fun c!687202 () Bool)

(assert (=> d!1173562 (= c!687202 (is-Cons!42175 lt!1385005))))

(assert (=> d!1173562 (>= (size!31584 lt!1385019) (size!31584 lt!1385005))))

(assert (=> d!1173562 (= (getSuffix!2153 lt!1385019 lt!1385005) lt!1385164)))

(declare-fun b!3960190 () Bool)

(declare-fun tail!6152 (List!42299) List!42299)

(assert (=> b!3960190 (= e!2452132 (getSuffix!2153 (tail!6152 lt!1385019) (t!329770 lt!1385005)))))

(declare-fun b!3960191 () Bool)

(assert (=> b!3960191 (= e!2452132 lt!1385019)))

(assert (= (and d!1173562 c!687202) b!3960190))

(assert (= (and d!1173562 (not c!687202)) b!3960191))

(declare-fun m!4529147 () Bool)

(assert (=> d!1173562 m!4529147))

(assert (=> d!1173562 m!4528855))

(assert (=> d!1173562 m!4528871))

(declare-fun m!4529149 () Bool)

(assert (=> b!3960190 m!4529149))

(assert (=> b!3960190 m!4529149))

(declare-fun m!4529151 () Bool)

(assert (=> b!3960190 m!4529151))

(assert (=> b!3959971 d!1173562))

(declare-fun d!1173564 () Bool)

(assert (=> d!1173564 (= (size!31585 (_1!23867 (v!39378 lt!1385017))) (size!31584 (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017)))))))

(declare-fun Unit!60684 () Unit!60668)

(assert (=> d!1173564 (= (lemmaCharactersSize!1266 (_1!23867 (v!39378 lt!1385017))) Unit!60684)))

(declare-fun bs!587248 () Bool)

(assert (= bs!587248 d!1173564))

(assert (=> bs!587248 m!4528837))

(assert (=> b!3959971 d!1173564))

(declare-fun b!3960192 () Bool)

(declare-fun e!2452135 () tuple2!41468)

(assert (=> b!3960192 (= e!2452135 (tuple2!41469 Nil!42178 (_2!23867 (v!39378 lt!1385017))))))

(declare-fun b!3960193 () Bool)

(declare-fun e!2452134 () Bool)

(declare-fun lt!1385166 () tuple2!41468)

(assert (=> b!3960193 (= e!2452134 (= (_2!23868 lt!1385166) (_2!23867 (v!39378 lt!1385017))))))

(declare-fun b!3960194 () Bool)

(declare-fun e!2452133 () Bool)

(assert (=> b!3960194 (= e!2452134 e!2452133)))

(declare-fun res!1602768 () Bool)

(assert (=> b!3960194 (= res!1602768 (< (size!31584 (_2!23868 lt!1385166)) (size!31584 (_2!23867 (v!39378 lt!1385017)))))))

(assert (=> b!3960194 (=> (not res!1602768) (not e!2452133))))

(declare-fun b!3960195 () Bool)

(assert (=> b!3960195 (= e!2452133 (not (isEmpty!25219 (_1!23868 lt!1385166))))))

(declare-fun d!1173566 () Bool)

(assert (=> d!1173566 e!2452134))

(declare-fun c!687203 () Bool)

(assert (=> d!1173566 (= c!687203 (> (size!31588 (_1!23868 lt!1385166)) 0))))

(assert (=> d!1173566 (= lt!1385166 e!2452135)))

(declare-fun c!687204 () Bool)

(declare-fun lt!1385167 () Option!9033)

(assert (=> d!1173566 (= c!687204 (is-Some!9032 lt!1385167))))

(assert (=> d!1173566 (= lt!1385167 (maxPrefix!3506 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173566 (= (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385017))) lt!1385166)))

(declare-fun b!3960196 () Bool)

(declare-fun lt!1385165 () tuple2!41468)

(assert (=> b!3960196 (= e!2452135 (tuple2!41469 (Cons!42178 (_1!23867 (v!39378 lt!1385167)) (_1!23868 lt!1385165)) (_2!23868 lt!1385165)))))

(assert (=> b!3960196 (= lt!1385165 (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385167))))))

(assert (= (and d!1173566 c!687204) b!3960196))

(assert (= (and d!1173566 (not c!687204)) b!3960192))

(assert (= (and d!1173566 c!687203) b!3960194))

(assert (= (and d!1173566 (not c!687203)) b!3960193))

(assert (= (and b!3960194 res!1602768) b!3960195))

(declare-fun m!4529153 () Bool)

(assert (=> b!3960194 m!4529153))

(assert (=> b!3960194 m!4528819))

(declare-fun m!4529155 () Bool)

(assert (=> b!3960195 m!4529155))

(declare-fun m!4529157 () Bool)

(assert (=> d!1173566 m!4529157))

(declare-fun m!4529159 () Bool)

(assert (=> d!1173566 m!4529159))

(declare-fun m!4529161 () Bool)

(assert (=> b!3960196 m!4529161))

(assert (=> b!3959971 d!1173566))

(declare-fun d!1173568 () Bool)

(declare-fun lt!1385170 () BalanceConc!25242)

(assert (=> d!1173568 (= (list!15657 lt!1385170) (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173568 (= lt!1385170 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))) (value!209106 (_1!23867 (v!39378 lt!1385017)))))))

(assert (=> d!1173568 (= (charsOf!4431 (_1!23867 (v!39378 lt!1385017))) lt!1385170)))

(declare-fun b_lambda!115837 () Bool)

(assert (=> (not b_lambda!115837) (not d!1173568)))

(declare-fun t!329785 () Bool)

(declare-fun tb!238743 () Bool)

(assert (=> (and b!3959947 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329785) tb!238743))

(declare-fun b!3960197 () Bool)

(declare-fun e!2452136 () Bool)

(declare-fun tp!1206968 () Bool)

(assert (=> b!3960197 (= e!2452136 (and (inv!56411 (c!687160 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))) (value!209106 (_1!23867 (v!39378 lt!1385017)))))) tp!1206968))))

(declare-fun result!289106 () Bool)

(assert (=> tb!238743 (= result!289106 (and (inv!56412 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))) (value!209106 (_1!23867 (v!39378 lt!1385017))))) e!2452136))))

(assert (= tb!238743 b!3960197))

(declare-fun m!4529163 () Bool)

(assert (=> b!3960197 m!4529163))

(declare-fun m!4529165 () Bool)

(assert (=> tb!238743 m!4529165))

(assert (=> d!1173568 t!329785))

(declare-fun b_and!304021 () Bool)

(assert (= b_and!304015 (and (=> t!329785 result!289106) b_and!304021)))

(declare-fun tb!238745 () Bool)

(declare-fun t!329787 () Bool)

(assert (=> (and b!3959943 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329787) tb!238745))

(declare-fun result!289108 () Bool)

(assert (= result!289108 result!289106))

(assert (=> d!1173568 t!329787))

(declare-fun b_and!304023 () Bool)

(assert (= b_and!304017 (and (=> t!329787 result!289108) b_and!304023)))

(declare-fun t!329789 () Bool)

(declare-fun tb!238747 () Bool)

(assert (=> (and b!3959954 (= (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329789) tb!238747))

(declare-fun result!289110 () Bool)

(assert (= result!289110 result!289106))

(assert (=> d!1173568 t!329789))

(declare-fun b_and!304025 () Bool)

(assert (= b_and!304019 (and (=> t!329789 result!289110) b_and!304025)))

(declare-fun m!4529167 () Bool)

(assert (=> d!1173568 m!4529167))

(declare-fun m!4529169 () Bool)

(assert (=> d!1173568 m!4529169))

(assert (=> b!3959971 d!1173568))

(declare-fun d!1173570 () Bool)

(declare-fun lt!1385171 () Int)

(assert (=> d!1173570 (>= lt!1385171 0)))

(declare-fun e!2452137 () Int)

(assert (=> d!1173570 (= lt!1385171 e!2452137)))

(declare-fun c!687205 () Bool)

(assert (=> d!1173570 (= c!687205 (is-Nil!42175 lt!1385005))))

(assert (=> d!1173570 (= (size!31584 lt!1385005) lt!1385171)))

(declare-fun b!3960198 () Bool)

(assert (=> b!3960198 (= e!2452137 0)))

(declare-fun b!3960199 () Bool)

(assert (=> b!3960199 (= e!2452137 (+ 1 (size!31584 (t!329770 lt!1385005))))))

(assert (= (and d!1173570 c!687205) b!3960198))

(assert (= (and d!1173570 (not c!687205)) b!3960199))

(declare-fun m!4529171 () Bool)

(assert (=> b!3960199 m!4529171))

(assert (=> b!3959971 d!1173570))

(declare-fun lt!1385174 () List!42299)

(declare-fun b!3960211 () Bool)

(declare-fun e!2452142 () Bool)

(assert (=> b!3960211 (= e!2452142 (or (not (= (_2!23867 (v!39378 lt!1385017)) Nil!42175)) (= lt!1385174 lt!1385005)))))

(declare-fun b!3960208 () Bool)

(declare-fun e!2452143 () List!42299)

(assert (=> b!3960208 (= e!2452143 (_2!23867 (v!39378 lt!1385017)))))

(declare-fun d!1173572 () Bool)

(assert (=> d!1173572 e!2452142))

(declare-fun res!1602773 () Bool)

(assert (=> d!1173572 (=> (not res!1602773) (not e!2452142))))

(declare-fun content!6405 (List!42299) (Set C!23222))

(assert (=> d!1173572 (= res!1602773 (= (content!6405 lt!1385174) (set.union (content!6405 lt!1385005) (content!6405 (_2!23867 (v!39378 lt!1385017))))))))

(assert (=> d!1173572 (= lt!1385174 e!2452143)))

(declare-fun c!687208 () Bool)

(assert (=> d!1173572 (= c!687208 (is-Nil!42175 lt!1385005))))

(assert (=> d!1173572 (= (++!10984 lt!1385005 (_2!23867 (v!39378 lt!1385017))) lt!1385174)))

(declare-fun b!3960209 () Bool)

(assert (=> b!3960209 (= e!2452143 (Cons!42175 (h!47595 lt!1385005) (++!10984 (t!329770 lt!1385005) (_2!23867 (v!39378 lt!1385017)))))))

(declare-fun b!3960210 () Bool)

(declare-fun res!1602774 () Bool)

(assert (=> b!3960210 (=> (not res!1602774) (not e!2452142))))

(assert (=> b!3960210 (= res!1602774 (= (size!31584 lt!1385174) (+ (size!31584 lt!1385005) (size!31584 (_2!23867 (v!39378 lt!1385017))))))))

(assert (= (and d!1173572 c!687208) b!3960208))

(assert (= (and d!1173572 (not c!687208)) b!3960209))

(assert (= (and d!1173572 res!1602773) b!3960210))

(assert (= (and b!3960210 res!1602774) b!3960211))

(declare-fun m!4529173 () Bool)

(assert (=> d!1173572 m!4529173))

(declare-fun m!4529175 () Bool)

(assert (=> d!1173572 m!4529175))

(declare-fun m!4529177 () Bool)

(assert (=> d!1173572 m!4529177))

(declare-fun m!4529179 () Bool)

(assert (=> b!3960209 m!4529179))

(declare-fun m!4529181 () Bool)

(assert (=> b!3960210 m!4529181))

(assert (=> b!3960210 m!4528871))

(assert (=> b!3960210 m!4528819))

(assert (=> b!3959971 d!1173572))

(declare-fun d!1173574 () Bool)

(assert (=> d!1173574 (ruleValid!2555 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))))))

(declare-fun lt!1385177 () Unit!60668)

(declare-fun choose!23651 (LexerInterface!6202 Rule!13026 List!42301) Unit!60668)

(assert (=> d!1173574 (= lt!1385177 (choose!23651 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) rules!2768))))

(assert (=> d!1173574 (contains!8427 rules!2768 (rule!9591 (_1!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173574 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1631 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) rules!2768) lt!1385177)))

(declare-fun bs!587249 () Bool)

(assert (= bs!587249 d!1173574))

(assert (=> bs!587249 m!4528869))

(declare-fun m!4529183 () Bool)

(assert (=> bs!587249 m!4529183))

(declare-fun m!4529185 () Bool)

(assert (=> bs!587249 m!4529185))

(assert (=> b!3959971 d!1173574))

(declare-fun d!1173576 () Bool)

(declare-fun fromListB!2251 (List!42299) BalanceConc!25242)

(assert (=> d!1173576 (= (seqFromList!4872 lt!1385005) (fromListB!2251 lt!1385005))))

(declare-fun bs!587250 () Bool)

(assert (= bs!587250 d!1173576))

(declare-fun m!4529187 () Bool)

(assert (=> bs!587250 m!4529187))

(assert (=> b!3959971 d!1173576))

(declare-fun d!1173578 () Bool)

(declare-fun res!1602779 () Bool)

(declare-fun e!2452146 () Bool)

(assert (=> d!1173578 (=> (not res!1602779) (not e!2452146))))

(declare-fun validRegex!5245 (Regex!11518) Bool)

(assert (=> d!1173578 (= res!1602779 (validRegex!5245 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))))))

(assert (=> d!1173578 (= (ruleValid!2555 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) e!2452146)))

(declare-fun b!3960216 () Bool)

(declare-fun res!1602780 () Bool)

(assert (=> b!3960216 (=> (not res!1602780) (not e!2452146))))

(declare-fun nullable!4046 (Regex!11518) Bool)

(assert (=> b!3960216 (= res!1602780 (not (nullable!4046 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))))))

(declare-fun b!3960217 () Bool)

(assert (=> b!3960217 (= e!2452146 (not (= (tag!7473 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (String!47936 ""))))))

(assert (= (and d!1173578 res!1602779) b!3960216))

(assert (= (and b!3960216 res!1602780) b!3960217))

(declare-fun m!4529189 () Bool)

(assert (=> d!1173578 m!4529189))

(declare-fun m!4529191 () Bool)

(assert (=> b!3960216 m!4529191))

(assert (=> b!3959971 d!1173578))

(declare-fun d!1173580 () Bool)

(declare-fun dynLambda!18027 (Int BalanceConc!25242) TokenValue!6843)

(assert (=> d!1173580 (= (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (seqFromList!4872 lt!1385005)) (dynLambda!18027 (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))) (seqFromList!4872 lt!1385005)))))

(declare-fun b_lambda!115839 () Bool)

(assert (=> (not b_lambda!115839) (not d!1173580)))

(declare-fun t!329791 () Bool)

(declare-fun tb!238749 () Bool)

(assert (=> (and b!3959947 (= (toValue!9093 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329791) tb!238749))

(declare-fun result!289112 () Bool)

(assert (=> tb!238749 (= result!289112 (inv!21 (dynLambda!18027 (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017))))) (seqFromList!4872 lt!1385005))))))

(declare-fun m!4529193 () Bool)

(assert (=> tb!238749 m!4529193))

(assert (=> d!1173580 t!329791))

(declare-fun b_and!304027 () Bool)

(assert (= b_and!303991 (and (=> t!329791 result!289112) b_and!304027)))

(declare-fun t!329793 () Bool)

(declare-fun tb!238751 () Bool)

(assert (=> (and b!3959943 (= (toValue!9093 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329793) tb!238751))

(declare-fun result!289116 () Bool)

(assert (= result!289116 result!289112))

(assert (=> d!1173580 t!329793))

(declare-fun b_and!304029 () Bool)

(assert (= b_and!303995 (and (=> t!329793 result!289116) b_and!304029)))

(declare-fun t!329795 () Bool)

(declare-fun tb!238753 () Bool)

(assert (=> (and b!3959954 (= (toValue!9093 (transformation!6613 (h!47597 rules!2768))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329795) tb!238753))

(declare-fun result!289118 () Bool)

(assert (= result!289118 result!289112))

(assert (=> d!1173580 t!329795))

(declare-fun b_and!304031 () Bool)

(assert (= b_and!303999 (and (=> t!329795 result!289118) b_and!304031)))

(assert (=> d!1173580 m!4528881))

(declare-fun m!4529195 () Bool)

(assert (=> d!1173580 m!4529195))

(assert (=> b!3959971 d!1173580))

(declare-fun d!1173582 () Bool)

(declare-fun list!15659 (Conc!12824) List!42299)

(assert (=> d!1173582 (= (list!15657 (charsOf!4431 (_1!23867 (v!39378 lt!1385017)))) (list!15659 (c!687160 (charsOf!4431 (_1!23867 (v!39378 lt!1385017))))))))

(declare-fun bs!587251 () Bool)

(assert (= bs!587251 d!1173582))

(declare-fun m!4529197 () Bool)

(assert (=> bs!587251 m!4529197))

(assert (=> b!3959971 d!1173582))

(declare-fun b!3960248 () Bool)

(declare-fun e!2452162 () Bool)

(assert (=> b!3960248 (= e!2452162 (isPrefix!3702 (tail!6152 lt!1385005) (tail!6152 lt!1385010)))))

(declare-fun b!3960247 () Bool)

(declare-fun res!1602806 () Bool)

(assert (=> b!3960247 (=> (not res!1602806) (not e!2452162))))

(declare-fun head!8422 (List!42299) C!23222)

(assert (=> b!3960247 (= res!1602806 (= (head!8422 lt!1385005) (head!8422 lt!1385010)))))

(declare-fun d!1173584 () Bool)

(declare-fun e!2452164 () Bool)

(assert (=> d!1173584 e!2452164))

(declare-fun res!1602805 () Bool)

(assert (=> d!1173584 (=> res!1602805 e!2452164)))

(declare-fun lt!1385190 () Bool)

(assert (=> d!1173584 (= res!1602805 (not lt!1385190))))

(declare-fun e!2452163 () Bool)

(assert (=> d!1173584 (= lt!1385190 e!2452163)))

(declare-fun res!1602803 () Bool)

(assert (=> d!1173584 (=> res!1602803 e!2452163)))

(assert (=> d!1173584 (= res!1602803 (is-Nil!42175 lt!1385005))))

(assert (=> d!1173584 (= (isPrefix!3702 lt!1385005 lt!1385010) lt!1385190)))

(declare-fun b!3960246 () Bool)

(assert (=> b!3960246 (= e!2452163 e!2452162)))

(declare-fun res!1602804 () Bool)

(assert (=> b!3960246 (=> (not res!1602804) (not e!2452162))))

(assert (=> b!3960246 (= res!1602804 (not (is-Nil!42175 lt!1385010)))))

(declare-fun b!3960249 () Bool)

(assert (=> b!3960249 (= e!2452164 (>= (size!31584 lt!1385010) (size!31584 lt!1385005)))))

(assert (= (and d!1173584 (not res!1602803)) b!3960246))

(assert (= (and b!3960246 res!1602804) b!3960247))

(assert (= (and b!3960247 res!1602806) b!3960248))

(assert (= (and d!1173584 (not res!1602805)) b!3960249))

(declare-fun m!4529199 () Bool)

(assert (=> b!3960248 m!4529199))

(declare-fun m!4529201 () Bool)

(assert (=> b!3960248 m!4529201))

(assert (=> b!3960248 m!4529199))

(assert (=> b!3960248 m!4529201))

(declare-fun m!4529203 () Bool)

(assert (=> b!3960248 m!4529203))

(declare-fun m!4529205 () Bool)

(assert (=> b!3960247 m!4529205))

(declare-fun m!4529207 () Bool)

(assert (=> b!3960247 m!4529207))

(declare-fun m!4529209 () Bool)

(assert (=> b!3960249 m!4529209))

(assert (=> b!3960249 m!4528871))

(assert (=> b!3959971 d!1173584))

(declare-fun d!1173586 () Bool)

(assert (=> d!1173586 (= (isEmpty!25219 lt!1385006) (is-Nil!42178 lt!1385006))))

(assert (=> b!3959970 d!1173586))

(declare-fun d!1173588 () Bool)

(assert (=> d!1173588 (= (tail!6150 prefixTokens!80) (t!329773 prefixTokens!80))))

(assert (=> b!3959970 d!1173588))

(declare-fun d!1173590 () Bool)

(assert (=> d!1173590 (= (isEmpty!25219 prefixTokens!80) (is-Nil!42178 prefixTokens!80))))

(assert (=> b!3959942 d!1173590))

(declare-fun b!3960252 () Bool)

(declare-fun e!2452165 () Bool)

(assert (=> b!3960252 (= e!2452165 (isPrefix!3702 (tail!6152 lt!1385005) (tail!6152 lt!1385019)))))

(declare-fun b!3960251 () Bool)

(declare-fun res!1602810 () Bool)

(assert (=> b!3960251 (=> (not res!1602810) (not e!2452165))))

(assert (=> b!3960251 (= res!1602810 (= (head!8422 lt!1385005) (head!8422 lt!1385019)))))

(declare-fun d!1173592 () Bool)

(declare-fun e!2452167 () Bool)

(assert (=> d!1173592 e!2452167))

(declare-fun res!1602809 () Bool)

(assert (=> d!1173592 (=> res!1602809 e!2452167)))

(declare-fun lt!1385191 () Bool)

(assert (=> d!1173592 (= res!1602809 (not lt!1385191))))

(declare-fun e!2452166 () Bool)

(assert (=> d!1173592 (= lt!1385191 e!2452166)))

(declare-fun res!1602807 () Bool)

(assert (=> d!1173592 (=> res!1602807 e!2452166)))

(assert (=> d!1173592 (= res!1602807 (is-Nil!42175 lt!1385005))))

(assert (=> d!1173592 (= (isPrefix!3702 lt!1385005 lt!1385019) lt!1385191)))

(declare-fun b!3960250 () Bool)

(assert (=> b!3960250 (= e!2452166 e!2452165)))

(declare-fun res!1602808 () Bool)

(assert (=> b!3960250 (=> (not res!1602808) (not e!2452165))))

(assert (=> b!3960250 (= res!1602808 (not (is-Nil!42175 lt!1385019)))))

(declare-fun b!3960253 () Bool)

(assert (=> b!3960253 (= e!2452167 (>= (size!31584 lt!1385019) (size!31584 lt!1385005)))))

(assert (= (and d!1173592 (not res!1602807)) b!3960250))

(assert (= (and b!3960250 res!1602808) b!3960251))

(assert (= (and b!3960251 res!1602810) b!3960252))

(assert (= (and d!1173592 (not res!1602809)) b!3960253))

(assert (=> b!3960252 m!4529199))

(assert (=> b!3960252 m!4529149))

(assert (=> b!3960252 m!4529199))

(assert (=> b!3960252 m!4529149))

(declare-fun m!4529211 () Bool)

(assert (=> b!3960252 m!4529211))

(assert (=> b!3960251 m!4529205))

(declare-fun m!4529213 () Bool)

(assert (=> b!3960251 m!4529213))

(assert (=> b!3960253 m!4528855))

(assert (=> b!3960253 m!4528871))

(assert (=> b!3959962 d!1173592))

(declare-fun b!3960256 () Bool)

(declare-fun e!2452168 () Bool)

(assert (=> b!3960256 (= e!2452168 (isPrefix!3702 (tail!6152 prefix!426) (tail!6152 lt!1385019)))))

(declare-fun b!3960255 () Bool)

(declare-fun res!1602814 () Bool)

(assert (=> b!3960255 (=> (not res!1602814) (not e!2452168))))

(assert (=> b!3960255 (= res!1602814 (= (head!8422 prefix!426) (head!8422 lt!1385019)))))

(declare-fun d!1173594 () Bool)

(declare-fun e!2452170 () Bool)

(assert (=> d!1173594 e!2452170))

(declare-fun res!1602813 () Bool)

(assert (=> d!1173594 (=> res!1602813 e!2452170)))

(declare-fun lt!1385192 () Bool)

(assert (=> d!1173594 (= res!1602813 (not lt!1385192))))

(declare-fun e!2452169 () Bool)

(assert (=> d!1173594 (= lt!1385192 e!2452169)))

(declare-fun res!1602811 () Bool)

(assert (=> d!1173594 (=> res!1602811 e!2452169)))

(assert (=> d!1173594 (= res!1602811 (is-Nil!42175 prefix!426))))

(assert (=> d!1173594 (= (isPrefix!3702 prefix!426 lt!1385019) lt!1385192)))

(declare-fun b!3960254 () Bool)

(assert (=> b!3960254 (= e!2452169 e!2452168)))

(declare-fun res!1602812 () Bool)

(assert (=> b!3960254 (=> (not res!1602812) (not e!2452168))))

(assert (=> b!3960254 (= res!1602812 (not (is-Nil!42175 lt!1385019)))))

(declare-fun b!3960257 () Bool)

(assert (=> b!3960257 (= e!2452170 (>= (size!31584 lt!1385019) (size!31584 prefix!426)))))

(assert (= (and d!1173594 (not res!1602811)) b!3960254))

(assert (= (and b!3960254 res!1602812) b!3960255))

(assert (= (and b!3960255 res!1602814) b!3960256))

(assert (= (and d!1173594 (not res!1602813)) b!3960257))

(declare-fun m!4529215 () Bool)

(assert (=> b!3960256 m!4529215))

(assert (=> b!3960256 m!4529149))

(assert (=> b!3960256 m!4529215))

(assert (=> b!3960256 m!4529149))

(declare-fun m!4529217 () Bool)

(assert (=> b!3960256 m!4529217))

(declare-fun m!4529219 () Bool)

(assert (=> b!3960255 m!4529219))

(assert (=> b!3960255 m!4529213))

(assert (=> b!3960257 m!4528855))

(assert (=> b!3960257 m!4528815))

(assert (=> b!3959962 d!1173594))

(declare-fun d!1173596 () Bool)

(assert (=> d!1173596 (isPrefix!3702 prefix!426 (++!10984 prefix!426 suffix!1176))))

(declare-fun lt!1385193 () Unit!60668)

(assert (=> d!1173596 (= lt!1385193 (choose!23650 prefix!426 suffix!1176))))

(assert (=> d!1173596 (= (lemmaConcatTwoListThenFirstIsPrefix!2561 prefix!426 suffix!1176) lt!1385193)))

(declare-fun bs!587252 () Bool)

(assert (= bs!587252 d!1173596))

(assert (=> bs!587252 m!4528899))

(assert (=> bs!587252 m!4528899))

(declare-fun m!4529221 () Bool)

(assert (=> bs!587252 m!4529221))

(declare-fun m!4529223 () Bool)

(assert (=> bs!587252 m!4529223))

(assert (=> b!3959962 d!1173596))

(declare-fun d!1173598 () Bool)

(declare-fun c!687215 () Bool)

(assert (=> d!1173598 (= c!687215 (is-IntegerValue!20529 (value!209106 (h!47598 prefixTokens!80))))))

(declare-fun e!2452179 () Bool)

(assert (=> d!1173598 (= (inv!21 (value!209106 (h!47598 prefixTokens!80))) e!2452179)))

(declare-fun b!3960268 () Bool)

(declare-fun e!2452177 () Bool)

(assert (=> b!3960268 (= e!2452179 e!2452177)))

(declare-fun c!687216 () Bool)

(assert (=> b!3960268 (= c!687216 (is-IntegerValue!20530 (value!209106 (h!47598 prefixTokens!80))))))

(declare-fun b!3960269 () Bool)

(declare-fun res!1602817 () Bool)

(declare-fun e!2452178 () Bool)

(assert (=> b!3960269 (=> res!1602817 e!2452178)))

(assert (=> b!3960269 (= res!1602817 (not (is-IntegerValue!20531 (value!209106 (h!47598 prefixTokens!80)))))))

(assert (=> b!3960269 (= e!2452177 e!2452178)))

(declare-fun b!3960270 () Bool)

(declare-fun inv!17 (TokenValue!6843) Bool)

(assert (=> b!3960270 (= e!2452177 (inv!17 (value!209106 (h!47598 prefixTokens!80))))))

(declare-fun b!3960271 () Bool)

(declare-fun inv!15 (TokenValue!6843) Bool)

(assert (=> b!3960271 (= e!2452178 (inv!15 (value!209106 (h!47598 prefixTokens!80))))))

(declare-fun b!3960272 () Bool)

(declare-fun inv!16 (TokenValue!6843) Bool)

(assert (=> b!3960272 (= e!2452179 (inv!16 (value!209106 (h!47598 prefixTokens!80))))))

(assert (= (and d!1173598 c!687215) b!3960272))

(assert (= (and d!1173598 (not c!687215)) b!3960268))

(assert (= (and b!3960268 c!687216) b!3960270))

(assert (= (and b!3960268 (not c!687216)) b!3960269))

(assert (= (and b!3960269 (not res!1602817)) b!3960271))

(declare-fun m!4529225 () Bool)

(assert (=> b!3960270 m!4529225))

(declare-fun m!4529227 () Bool)

(assert (=> b!3960271 m!4529227))

(declare-fun m!4529229 () Bool)

(assert (=> b!3960272 m!4529229))

(assert (=> b!3959946 d!1173598))

(declare-fun b!3960273 () Bool)

(declare-fun e!2452182 () tuple2!41468)

(assert (=> b!3960273 (= e!2452182 (tuple2!41469 Nil!42178 lt!1385019))))

(declare-fun b!3960274 () Bool)

(declare-fun e!2452181 () Bool)

(declare-fun lt!1385195 () tuple2!41468)

(assert (=> b!3960274 (= e!2452181 (= (_2!23868 lt!1385195) lt!1385019))))

(declare-fun b!3960275 () Bool)

(declare-fun e!2452180 () Bool)

(assert (=> b!3960275 (= e!2452181 e!2452180)))

(declare-fun res!1602818 () Bool)

(assert (=> b!3960275 (= res!1602818 (< (size!31584 (_2!23868 lt!1385195)) (size!31584 lt!1385019)))))

(assert (=> b!3960275 (=> (not res!1602818) (not e!2452180))))

(declare-fun b!3960276 () Bool)

(assert (=> b!3960276 (= e!2452180 (not (isEmpty!25219 (_1!23868 lt!1385195))))))

(declare-fun d!1173600 () Bool)

(assert (=> d!1173600 e!2452181))

(declare-fun c!687217 () Bool)

(assert (=> d!1173600 (= c!687217 (> (size!31588 (_1!23868 lt!1385195)) 0))))

(assert (=> d!1173600 (= lt!1385195 e!2452182)))

(declare-fun c!687218 () Bool)

(declare-fun lt!1385196 () Option!9033)

(assert (=> d!1173600 (= c!687218 (is-Some!9032 lt!1385196))))

(assert (=> d!1173600 (= lt!1385196 (maxPrefix!3506 thiss!20629 rules!2768 lt!1385019))))

(assert (=> d!1173600 (= (lexList!1970 thiss!20629 rules!2768 lt!1385019) lt!1385195)))

(declare-fun b!3960277 () Bool)

(declare-fun lt!1385194 () tuple2!41468)

(assert (=> b!3960277 (= e!2452182 (tuple2!41469 (Cons!42178 (_1!23867 (v!39378 lt!1385196)) (_1!23868 lt!1385194)) (_2!23868 lt!1385194)))))

(assert (=> b!3960277 (= lt!1385194 (lexList!1970 thiss!20629 rules!2768 (_2!23867 (v!39378 lt!1385196))))))

(assert (= (and d!1173600 c!687218) b!3960277))

(assert (= (and d!1173600 (not c!687218)) b!3960273))

(assert (= (and d!1173600 c!687217) b!3960275))

(assert (= (and d!1173600 (not c!687217)) b!3960274))

(assert (= (and b!3960275 res!1602818) b!3960276))

(declare-fun m!4529231 () Bool)

(assert (=> b!3960275 m!4529231))

(assert (=> b!3960275 m!4528855))

(declare-fun m!4529233 () Bool)

(assert (=> b!3960276 m!4529233))

(declare-fun m!4529235 () Bool)

(assert (=> d!1173600 m!4529235))

(assert (=> d!1173600 m!4528805))

(declare-fun m!4529237 () Bool)

(assert (=> b!3960277 m!4529237))

(assert (=> b!3959945 d!1173600))

(declare-fun b!3960280 () Bool)

(declare-fun res!1602820 () Bool)

(declare-fun e!2452183 () Bool)

(assert (=> b!3960280 (=> (not res!1602820) (not e!2452183))))

(declare-fun lt!1385197 () List!42302)

(assert (=> b!3960280 (= res!1602820 (= (size!31588 lt!1385197) (+ (size!31588 prefixTokens!80) (size!31588 suffixTokens!72))))))

(declare-fun d!1173602 () Bool)

(assert (=> d!1173602 e!2452183))

(declare-fun res!1602819 () Bool)

(assert (=> d!1173602 (=> (not res!1602819) (not e!2452183))))

(assert (=> d!1173602 (= res!1602819 (= (content!6404 lt!1385197) (set.union (content!6404 prefixTokens!80) (content!6404 suffixTokens!72))))))

(declare-fun e!2452184 () List!42302)

(assert (=> d!1173602 (= lt!1385197 e!2452184)))

(declare-fun c!687219 () Bool)

(assert (=> d!1173602 (= c!687219 (is-Nil!42178 prefixTokens!80))))

(assert (=> d!1173602 (= (++!10983 prefixTokens!80 suffixTokens!72) lt!1385197)))

(declare-fun b!3960278 () Bool)

(assert (=> b!3960278 (= e!2452184 suffixTokens!72)))

(declare-fun b!3960279 () Bool)

(assert (=> b!3960279 (= e!2452184 (Cons!42178 (h!47598 prefixTokens!80) (++!10983 (t!329773 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3960281 () Bool)

(assert (=> b!3960281 (= e!2452183 (or (not (= suffixTokens!72 Nil!42178)) (= lt!1385197 prefixTokens!80)))))

(assert (= (and d!1173602 c!687219) b!3960278))

(assert (= (and d!1173602 (not c!687219)) b!3960279))

(assert (= (and d!1173602 res!1602819) b!3960280))

(assert (= (and b!3960280 res!1602820) b!3960281))

(declare-fun m!4529239 () Bool)

(assert (=> b!3960280 m!4529239))

(declare-fun m!4529241 () Bool)

(assert (=> b!3960280 m!4529241))

(assert (=> b!3960280 m!4529131))

(declare-fun m!4529243 () Bool)

(assert (=> d!1173602 m!4529243))

(declare-fun m!4529245 () Bool)

(assert (=> d!1173602 m!4529245))

(assert (=> d!1173602 m!4529137))

(declare-fun m!4529247 () Bool)

(assert (=> b!3960279 m!4529247))

(assert (=> b!3959945 d!1173602))

(declare-fun lt!1385198 () List!42299)

(declare-fun e!2452185 () Bool)

(declare-fun b!3960285 () Bool)

(assert (=> b!3960285 (= e!2452185 (or (not (= suffix!1176 Nil!42175)) (= lt!1385198 prefix!426)))))

(declare-fun b!3960282 () Bool)

(declare-fun e!2452186 () List!42299)

(assert (=> b!3960282 (= e!2452186 suffix!1176)))

(declare-fun d!1173604 () Bool)

(assert (=> d!1173604 e!2452185))

(declare-fun res!1602821 () Bool)

(assert (=> d!1173604 (=> (not res!1602821) (not e!2452185))))

(assert (=> d!1173604 (= res!1602821 (= (content!6405 lt!1385198) (set.union (content!6405 prefix!426) (content!6405 suffix!1176))))))

(assert (=> d!1173604 (= lt!1385198 e!2452186)))

(declare-fun c!687220 () Bool)

(assert (=> d!1173604 (= c!687220 (is-Nil!42175 prefix!426))))

(assert (=> d!1173604 (= (++!10984 prefix!426 suffix!1176) lt!1385198)))

(declare-fun b!3960283 () Bool)

(assert (=> b!3960283 (= e!2452186 (Cons!42175 (h!47595 prefix!426) (++!10984 (t!329770 prefix!426) suffix!1176)))))

(declare-fun b!3960284 () Bool)

(declare-fun res!1602822 () Bool)

(assert (=> b!3960284 (=> (not res!1602822) (not e!2452185))))

(assert (=> b!3960284 (= res!1602822 (= (size!31584 lt!1385198) (+ (size!31584 prefix!426) (size!31584 suffix!1176))))))

(assert (= (and d!1173604 c!687220) b!3960282))

(assert (= (and d!1173604 (not c!687220)) b!3960283))

(assert (= (and d!1173604 res!1602821) b!3960284))

(assert (= (and b!3960284 res!1602822) b!3960285))

(declare-fun m!4529249 () Bool)

(assert (=> d!1173604 m!4529249))

(declare-fun m!4529251 () Bool)

(assert (=> d!1173604 m!4529251))

(declare-fun m!4529253 () Bool)

(assert (=> d!1173604 m!4529253))

(declare-fun m!4529255 () Bool)

(assert (=> b!3960283 m!4529255))

(declare-fun m!4529257 () Bool)

(assert (=> b!3960284 m!4529257))

(assert (=> b!3960284 m!4528815))

(assert (=> b!3960284 m!4528817))

(assert (=> b!3959945 d!1173604))

(declare-fun d!1173606 () Bool)

(assert (=> d!1173606 (= (isEmpty!25221 prefix!426) (is-Nil!42175 prefix!426))))

(assert (=> b!3959965 d!1173606))

(declare-fun d!1173608 () Bool)

(assert (=> d!1173608 (= (isEmpty!25220 rules!2768) (is-Nil!42177 rules!2768))))

(assert (=> b!3959944 d!1173608))

(declare-fun d!1173610 () Bool)

(declare-fun c!687222 () Bool)

(assert (=> d!1173610 (= c!687222 (is-IntegerValue!20529 (value!209106 (h!47598 suffixTokens!72))))))

(declare-fun e!2452192 () Bool)

(assert (=> d!1173610 (= (inv!21 (value!209106 (h!47598 suffixTokens!72))) e!2452192)))

(declare-fun b!3960295 () Bool)

(declare-fun e!2452190 () Bool)

(assert (=> b!3960295 (= e!2452192 e!2452190)))

(declare-fun c!687223 () Bool)

(assert (=> b!3960295 (= c!687223 (is-IntegerValue!20530 (value!209106 (h!47598 suffixTokens!72))))))

(declare-fun b!3960296 () Bool)

(declare-fun res!1602830 () Bool)

(declare-fun e!2452191 () Bool)

(assert (=> b!3960296 (=> res!1602830 e!2452191)))

(assert (=> b!3960296 (= res!1602830 (not (is-IntegerValue!20531 (value!209106 (h!47598 suffixTokens!72)))))))

(assert (=> b!3960296 (= e!2452190 e!2452191)))

(declare-fun b!3960297 () Bool)

(assert (=> b!3960297 (= e!2452190 (inv!17 (value!209106 (h!47598 suffixTokens!72))))))

(declare-fun b!3960298 () Bool)

(assert (=> b!3960298 (= e!2452191 (inv!15 (value!209106 (h!47598 suffixTokens!72))))))

(declare-fun b!3960299 () Bool)

(assert (=> b!3960299 (= e!2452192 (inv!16 (value!209106 (h!47598 suffixTokens!72))))))

(assert (= (and d!1173610 c!687222) b!3960299))

(assert (= (and d!1173610 (not c!687222)) b!3960295))

(assert (= (and b!3960295 c!687223) b!3960297))

(assert (= (and b!3960295 (not c!687223)) b!3960296))

(assert (= (and b!3960296 (not res!1602830)) b!3960298))

(declare-fun m!4529259 () Bool)

(assert (=> b!3960297 m!4529259))

(declare-fun m!4529261 () Bool)

(assert (=> b!3960298 m!4529261))

(declare-fun m!4529263 () Bool)

(assert (=> b!3960299 m!4529263))

(assert (=> b!3959958 d!1173610))

(declare-fun d!1173612 () Bool)

(declare-fun lt!1385204 () Int)

(assert (=> d!1173612 (>= lt!1385204 0)))

(declare-fun e!2452193 () Int)

(assert (=> d!1173612 (= lt!1385204 e!2452193)))

(declare-fun c!687224 () Bool)

(assert (=> d!1173612 (= c!687224 (is-Nil!42175 (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017)))))))

(assert (=> d!1173612 (= (size!31584 (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017)))) lt!1385204)))

(declare-fun b!3960300 () Bool)

(assert (=> b!3960300 (= e!2452193 0)))

(declare-fun b!3960301 () Bool)

(assert (=> b!3960301 (= e!2452193 (+ 1 (size!31584 (t!329770 (originalCharacters!7213 (_1!23867 (v!39378 lt!1385017)))))))))

(assert (= (and d!1173612 c!687224) b!3960300))

(assert (= (and d!1173612 (not c!687224)) b!3960301))

(declare-fun m!4529265 () Bool)

(assert (=> b!3960301 m!4529265))

(assert (=> b!3959957 d!1173612))

(declare-fun d!1173614 () Bool)

(declare-fun res!1602831 () Bool)

(declare-fun e!2452194 () Bool)

(assert (=> d!1173614 (=> (not res!1602831) (not e!2452194))))

(assert (=> d!1173614 (= res!1602831 (not (isEmpty!25221 (originalCharacters!7213 (h!47598 prefixTokens!80)))))))

(assert (=> d!1173614 (= (inv!56407 (h!47598 prefixTokens!80)) e!2452194)))

(declare-fun b!3960302 () Bool)

(declare-fun res!1602832 () Bool)

(assert (=> b!3960302 (=> (not res!1602832) (not e!2452194))))

(assert (=> b!3960302 (= res!1602832 (= (originalCharacters!7213 (h!47598 prefixTokens!80)) (list!15657 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (value!209106 (h!47598 prefixTokens!80))))))))

(declare-fun b!3960303 () Bool)

(assert (=> b!3960303 (= e!2452194 (= (size!31585 (h!47598 prefixTokens!80)) (size!31584 (originalCharacters!7213 (h!47598 prefixTokens!80)))))))

(assert (= (and d!1173614 res!1602831) b!3960302))

(assert (= (and b!3960302 res!1602832) b!3960303))

(declare-fun b_lambda!115841 () Bool)

(assert (=> (not b_lambda!115841) (not b!3960302)))

(declare-fun t!329797 () Bool)

(declare-fun tb!238755 () Bool)

(assert (=> (and b!3959947 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329797) tb!238755))

(declare-fun b!3960304 () Bool)

(declare-fun e!2452195 () Bool)

(declare-fun tp!1206969 () Bool)

(assert (=> b!3960304 (= e!2452195 (and (inv!56411 (c!687160 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (value!209106 (h!47598 prefixTokens!80))))) tp!1206969))))

(declare-fun result!289120 () Bool)

(assert (=> tb!238755 (= result!289120 (and (inv!56412 (dynLambda!18026 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (value!209106 (h!47598 prefixTokens!80)))) e!2452195))))

(assert (= tb!238755 b!3960304))

(declare-fun m!4529267 () Bool)

(assert (=> b!3960304 m!4529267))

(declare-fun m!4529269 () Bool)

(assert (=> tb!238755 m!4529269))

(assert (=> b!3960302 t!329797))

(declare-fun b_and!304033 () Bool)

(assert (= b_and!304021 (and (=> t!329797 result!289120) b_and!304033)))

(declare-fun t!329799 () Bool)

(declare-fun tb!238757 () Bool)

(assert (=> (and b!3959943 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329799) tb!238757))

(declare-fun result!289122 () Bool)

(assert (= result!289122 result!289120))

(assert (=> b!3960302 t!329799))

(declare-fun b_and!304035 () Bool)

(assert (= b_and!304023 (and (=> t!329799 result!289122) b_and!304035)))

(declare-fun tb!238759 () Bool)

(declare-fun t!329801 () Bool)

(assert (=> (and b!3959954 (= (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329801) tb!238759))

(declare-fun result!289124 () Bool)

(assert (= result!289124 result!289120))

(assert (=> b!3960302 t!329801))

(declare-fun b_and!304037 () Bool)

(assert (= b_and!304025 (and (=> t!329801 result!289124) b_and!304037)))

(declare-fun m!4529271 () Bool)

(assert (=> d!1173614 m!4529271))

(declare-fun m!4529273 () Bool)

(assert (=> b!3960302 m!4529273))

(assert (=> b!3960302 m!4529273))

(declare-fun m!4529275 () Bool)

(assert (=> b!3960302 m!4529275))

(declare-fun m!4529277 () Bool)

(assert (=> b!3960303 m!4529277))

(assert (=> b!3959941 d!1173614))

(declare-fun d!1173616 () Bool)

(assert (=> d!1173616 (= (inv!56404 (tag!7473 (rule!9591 (h!47598 suffixTokens!72)))) (= (mod (str.len (value!209105 (tag!7473 (rule!9591 (h!47598 suffixTokens!72))))) 2) 0))))

(assert (=> b!3959961 d!1173616))

(declare-fun d!1173618 () Bool)

(declare-fun res!1602833 () Bool)

(declare-fun e!2452196 () Bool)

(assert (=> d!1173618 (=> (not res!1602833) (not e!2452196))))

(assert (=> d!1173618 (= res!1602833 (semiInverseModEq!2850 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toValue!9093 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))))))

(assert (=> d!1173618 (= (inv!56408 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) e!2452196)))

(declare-fun b!3960305 () Bool)

(assert (=> b!3960305 (= e!2452196 (equivClasses!2749 (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toValue!9093 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))))))

(assert (= (and d!1173618 res!1602833) b!3960305))

(declare-fun m!4529279 () Bool)

(assert (=> d!1173618 m!4529279))

(declare-fun m!4529281 () Bool)

(assert (=> b!3960305 m!4529281))

(assert (=> b!3959961 d!1173618))

(declare-fun d!1173620 () Bool)

(assert (=> d!1173620 (= (inv!56404 (tag!7473 (h!47597 rules!2768))) (= (mod (str.len (value!209105 (tag!7473 (h!47597 rules!2768)))) 2) 0))))

(assert (=> b!3959960 d!1173620))

(declare-fun d!1173622 () Bool)

(declare-fun res!1602834 () Bool)

(declare-fun e!2452197 () Bool)

(assert (=> d!1173622 (=> (not res!1602834) (not e!2452197))))

(assert (=> d!1173622 (= res!1602834 (semiInverseModEq!2850 (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toValue!9093 (transformation!6613 (h!47597 rules!2768)))))))

(assert (=> d!1173622 (= (inv!56408 (transformation!6613 (h!47597 rules!2768))) e!2452197)))

(declare-fun b!3960306 () Bool)

(assert (=> b!3960306 (= e!2452197 (equivClasses!2749 (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toValue!9093 (transformation!6613 (h!47597 rules!2768)))))))

(assert (= (and d!1173622 res!1602834) b!3960306))

(declare-fun m!4529287 () Bool)

(assert (=> d!1173622 m!4529287))

(declare-fun m!4529289 () Bool)

(assert (=> b!3960306 m!4529289))

(assert (=> b!3959960 d!1173622))

(declare-fun d!1173624 () Bool)

(declare-fun e!2452249 () Bool)

(assert (=> d!1173624 e!2452249))

(declare-fun res!1602880 () Bool)

(assert (=> d!1173624 (=> res!1602880 e!2452249)))

(declare-fun lt!1385231 () Option!9033)

(assert (=> d!1173624 (= res!1602880 (isEmpty!25225 lt!1385231))))

(declare-fun e!2452250 () Option!9033)

(assert (=> d!1173624 (= lt!1385231 e!2452250)))

(declare-fun c!687247 () Bool)

(declare-datatypes ((tuple2!41474 0))(
  ( (tuple2!41475 (_1!23871 List!42299) (_2!23871 List!42299)) )
))
(declare-fun lt!1385233 () tuple2!41474)

(assert (=> d!1173624 (= c!687247 (isEmpty!25221 (_1!23871 lt!1385233)))))

(declare-fun findLongestMatch!1206 (Regex!11518 List!42299) tuple2!41474)

(assert (=> d!1173624 (= lt!1385233 (findLongestMatch!1206 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) lt!1385019))))

(assert (=> d!1173624 (ruleValid!2555 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))))))

(assert (=> d!1173624 (= (maxPrefixOneRule!2556 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) lt!1385019) lt!1385231)))

(declare-fun b!3960400 () Bool)

(declare-fun e!2452252 () Bool)

(assert (=> b!3960400 (= e!2452249 e!2452252)))

(declare-fun res!1602879 () Bool)

(assert (=> b!3960400 (=> (not res!1602879) (not e!2452252))))

(assert (=> b!3960400 (= res!1602879 (matchR!5537 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (list!15657 (charsOf!4431 (_1!23867 (get!13910 lt!1385231))))))))

(declare-fun b!3960401 () Bool)

(declare-fun e!2452251 () Bool)

(declare-fun findLongestMatchInner!1293 (Regex!11518 List!42299 Int List!42299 List!42299 Int) tuple2!41474)

(assert (=> b!3960401 (= e!2452251 (matchR!5537 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (_1!23871 (findLongestMatchInner!1293 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) Nil!42175 (size!31584 Nil!42175) lt!1385019 lt!1385019 (size!31584 lt!1385019)))))))

(declare-fun b!3960402 () Bool)

(declare-fun res!1602885 () Bool)

(assert (=> b!3960402 (=> (not res!1602885) (not e!2452252))))

(assert (=> b!3960402 (= res!1602885 (= (++!10984 (list!15657 (charsOf!4431 (_1!23867 (get!13910 lt!1385231)))) (_2!23867 (get!13910 lt!1385231))) lt!1385019))))

(declare-fun b!3960403 () Bool)

(declare-fun res!1602881 () Bool)

(assert (=> b!3960403 (=> (not res!1602881) (not e!2452252))))

(assert (=> b!3960403 (= res!1602881 (= (rule!9591 (_1!23867 (get!13910 lt!1385231))) (rule!9591 (_1!23867 (v!39378 lt!1385017)))))))

(declare-fun b!3960404 () Bool)

(declare-fun res!1602884 () Bool)

(assert (=> b!3960404 (=> (not res!1602884) (not e!2452252))))

(assert (=> b!3960404 (= res!1602884 (< (size!31584 (_2!23867 (get!13910 lt!1385231))) (size!31584 lt!1385019)))))

(declare-fun b!3960405 () Bool)

(assert (=> b!3960405 (= e!2452250 None!9032)))

(declare-fun b!3960406 () Bool)

(assert (=> b!3960406 (= e!2452252 (= (size!31585 (_1!23867 (get!13910 lt!1385231))) (size!31584 (originalCharacters!7213 (_1!23867 (get!13910 lt!1385231))))))))

(declare-fun b!3960407 () Bool)

(declare-fun res!1602883 () Bool)

(assert (=> b!3960407 (=> (not res!1602883) (not e!2452252))))

(assert (=> b!3960407 (= res!1602883 (= (value!209106 (_1!23867 (get!13910 lt!1385231))) (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (get!13910 lt!1385231)))) (seqFromList!4872 (originalCharacters!7213 (_1!23867 (get!13910 lt!1385231)))))))))

(declare-fun b!3960408 () Bool)

(declare-fun size!31590 (BalanceConc!25242) Int)

(assert (=> b!3960408 (= e!2452250 (Some!9032 (tuple2!41467 (Token!12365 (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (seqFromList!4872 (_1!23871 lt!1385233))) (rule!9591 (_1!23867 (v!39378 lt!1385017))) (size!31590 (seqFromList!4872 (_1!23871 lt!1385233))) (_1!23871 lt!1385233)) (_2!23871 lt!1385233))))))

(declare-fun lt!1385232 () Unit!60668)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1266 (Regex!11518 List!42299) Unit!60668)

(assert (=> b!3960408 (= lt!1385232 (longestMatchIsAcceptedByMatchOrIsEmpty!1266 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) lt!1385019))))

(declare-fun res!1602882 () Bool)

(assert (=> b!3960408 (= res!1602882 (isEmpty!25221 (_1!23871 (findLongestMatchInner!1293 (regex!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) Nil!42175 (size!31584 Nil!42175) lt!1385019 lt!1385019 (size!31584 lt!1385019)))))))

(assert (=> b!3960408 (=> res!1602882 e!2452251)))

(assert (=> b!3960408 e!2452251))

(declare-fun lt!1385235 () Unit!60668)

(assert (=> b!3960408 (= lt!1385235 lt!1385232)))

(declare-fun lt!1385234 () Unit!60668)

(declare-fun lemmaSemiInverse!1801 (TokenValueInjection!13114 BalanceConc!25242) Unit!60668)

(assert (=> b!3960408 (= lt!1385234 (lemmaSemiInverse!1801 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (seqFromList!4872 (_1!23871 lt!1385233))))))

(assert (= (and d!1173624 c!687247) b!3960405))

(assert (= (and d!1173624 (not c!687247)) b!3960408))

(assert (= (and b!3960408 (not res!1602882)) b!3960401))

(assert (= (and d!1173624 (not res!1602880)) b!3960400))

(assert (= (and b!3960400 res!1602879) b!3960402))

(assert (= (and b!3960402 res!1602885) b!3960404))

(assert (= (and b!3960404 res!1602884) b!3960403))

(assert (= (and b!3960403 res!1602881) b!3960407))

(assert (= (and b!3960407 res!1602883) b!3960406))

(declare-fun m!4529411 () Bool)

(assert (=> b!3960408 m!4529411))

(declare-fun m!4529413 () Bool)

(assert (=> b!3960408 m!4529413))

(declare-fun m!4529415 () Bool)

(assert (=> b!3960408 m!4529415))

(assert (=> b!3960408 m!4528855))

(declare-fun m!4529417 () Bool)

(assert (=> b!3960408 m!4529417))

(assert (=> b!3960408 m!4529415))

(assert (=> b!3960408 m!4529411))

(declare-fun m!4529419 () Bool)

(assert (=> b!3960408 m!4529419))

(assert (=> b!3960408 m!4529411))

(assert (=> b!3960408 m!4528855))

(declare-fun m!4529421 () Bool)

(assert (=> b!3960408 m!4529421))

(assert (=> b!3960408 m!4529411))

(declare-fun m!4529423 () Bool)

(assert (=> b!3960408 m!4529423))

(declare-fun m!4529425 () Bool)

(assert (=> b!3960408 m!4529425))

(declare-fun m!4529427 () Bool)

(assert (=> b!3960403 m!4529427))

(assert (=> b!3960400 m!4529427))

(declare-fun m!4529429 () Bool)

(assert (=> b!3960400 m!4529429))

(assert (=> b!3960400 m!4529429))

(declare-fun m!4529431 () Bool)

(assert (=> b!3960400 m!4529431))

(assert (=> b!3960400 m!4529431))

(declare-fun m!4529433 () Bool)

(assert (=> b!3960400 m!4529433))

(assert (=> b!3960406 m!4529427))

(declare-fun m!4529435 () Bool)

(assert (=> b!3960406 m!4529435))

(assert (=> b!3960401 m!4529415))

(assert (=> b!3960401 m!4528855))

(assert (=> b!3960401 m!4529415))

(assert (=> b!3960401 m!4528855))

(assert (=> b!3960401 m!4529417))

(declare-fun m!4529437 () Bool)

(assert (=> b!3960401 m!4529437))

(assert (=> b!3960407 m!4529427))

(declare-fun m!4529439 () Bool)

(assert (=> b!3960407 m!4529439))

(assert (=> b!3960407 m!4529439))

(declare-fun m!4529441 () Bool)

(assert (=> b!3960407 m!4529441))

(declare-fun m!4529443 () Bool)

(assert (=> d!1173624 m!4529443))

(declare-fun m!4529445 () Bool)

(assert (=> d!1173624 m!4529445))

(declare-fun m!4529447 () Bool)

(assert (=> d!1173624 m!4529447))

(assert (=> d!1173624 m!4528869))

(assert (=> b!3960404 m!4529427))

(declare-fun m!4529449 () Bool)

(assert (=> b!3960404 m!4529449))

(assert (=> b!3960404 m!4528855))

(assert (=> b!3960402 m!4529427))

(assert (=> b!3960402 m!4529429))

(assert (=> b!3960402 m!4529429))

(assert (=> b!3960402 m!4529431))

(assert (=> b!3960402 m!4529431))

(declare-fun m!4529451 () Bool)

(assert (=> b!3960402 m!4529451))

(assert (=> b!3959939 d!1173624))

(declare-fun d!1173660 () Bool)

(assert (=> d!1173660 (= (maxPrefixOneRule!2556 thiss!20629 (rule!9591 (_1!23867 (v!39378 lt!1385017))) lt!1385019) (Some!9032 (tuple2!41467 (Token!12365 (apply!9844 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))) (seqFromList!4872 lt!1385005)) (rule!9591 (_1!23867 (v!39378 lt!1385017))) (size!31584 lt!1385005) lt!1385005) (_2!23867 (v!39378 lt!1385017)))))))

(declare-fun lt!1385252 () Unit!60668)

(declare-fun choose!23652 (LexerInterface!6202 List!42301 List!42299 List!42299 List!42299 Rule!13026) Unit!60668)

(assert (=> d!1173660 (= lt!1385252 (choose!23652 thiss!20629 rules!2768 lt!1385005 lt!1385019 (_2!23867 (v!39378 lt!1385017)) (rule!9591 (_1!23867 (v!39378 lt!1385017)))))))

(assert (=> d!1173660 (not (isEmpty!25220 rules!2768))))

(assert (=> d!1173660 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1382 thiss!20629 rules!2768 lt!1385005 lt!1385019 (_2!23867 (v!39378 lt!1385017)) (rule!9591 (_1!23867 (v!39378 lt!1385017)))) lt!1385252)))

(declare-fun bs!587256 () Bool)

(assert (= bs!587256 d!1173660))

(assert (=> bs!587256 m!4528847))

(assert (=> bs!587256 m!4528857))

(assert (=> bs!587256 m!4528871))

(assert (=> bs!587256 m!4528881))

(declare-fun m!4529497 () Bool)

(assert (=> bs!587256 m!4529497))

(assert (=> bs!587256 m!4528881))

(assert (=> bs!587256 m!4528887))

(assert (=> b!3959939 d!1173660))

(declare-fun d!1173676 () Bool)

(declare-fun lt!1385255 () Int)

(assert (=> d!1173676 (>= lt!1385255 0)))

(declare-fun e!2452272 () Int)

(assert (=> d!1173676 (= lt!1385255 e!2452272)))

(declare-fun c!687253 () Bool)

(assert (=> d!1173676 (= c!687253 (is-Nil!42175 lt!1385019))))

(assert (=> d!1173676 (= (size!31584 lt!1385019) lt!1385255)))

(declare-fun b!3960436 () Bool)

(assert (=> b!3960436 (= e!2452272 0)))

(declare-fun b!3960437 () Bool)

(assert (=> b!3960437 (= e!2452272 (+ 1 (size!31584 (t!329770 lt!1385019))))))

(assert (= (and d!1173676 c!687253) b!3960436))

(assert (= (and d!1173676 (not c!687253)) b!3960437))

(declare-fun m!4529499 () Bool)

(assert (=> b!3960437 m!4529499))

(assert (=> b!3959939 d!1173676))

(declare-fun d!1173678 () Bool)

(declare-fun lt!1385256 () Int)

(assert (=> d!1173678 (>= lt!1385256 0)))

(declare-fun e!2452273 () Int)

(assert (=> d!1173678 (= lt!1385256 e!2452273)))

(declare-fun c!687254 () Bool)

(assert (=> d!1173678 (= c!687254 (is-Nil!42175 (_2!23867 lt!1384999)))))

(assert (=> d!1173678 (= (size!31584 (_2!23867 lt!1384999)) lt!1385256)))

(declare-fun b!3960438 () Bool)

(assert (=> b!3960438 (= e!2452273 0)))

(declare-fun b!3960439 () Bool)

(assert (=> b!3960439 (= e!2452273 (+ 1 (size!31584 (t!329770 (_2!23867 lt!1384999)))))))

(assert (= (and d!1173678 c!687254) b!3960438))

(assert (= (and d!1173678 (not c!687254)) b!3960439))

(declare-fun m!4529501 () Bool)

(assert (=> b!3960439 m!4529501))

(assert (=> b!3959939 d!1173678))

(declare-fun d!1173680 () Bool)

(assert (=> d!1173680 (= (get!13910 lt!1385017) (v!39378 lt!1385017))))

(assert (=> b!3959939 d!1173680))

(declare-fun d!1173684 () Bool)

(declare-fun res!1602908 () Bool)

(declare-fun e!2452279 () Bool)

(assert (=> d!1173684 (=> (not res!1602908) (not e!2452279))))

(declare-fun rulesValid!2584 (LexerInterface!6202 List!42301) Bool)

(assert (=> d!1173684 (= res!1602908 (rulesValid!2584 thiss!20629 rules!2768))))

(assert (=> d!1173684 (= (rulesInvariant!5545 thiss!20629 rules!2768) e!2452279)))

(declare-fun b!3960448 () Bool)

(declare-datatypes ((List!42307 0))(
  ( (Nil!42183) (Cons!42183 (h!47603 String!47935) (t!329874 List!42307)) )
))
(declare-fun noDuplicateTag!2585 (LexerInterface!6202 List!42301 List!42307) Bool)

(assert (=> b!3960448 (= e!2452279 (noDuplicateTag!2585 thiss!20629 rules!2768 Nil!42183))))

(assert (= (and d!1173684 res!1602908) b!3960448))

(declare-fun m!4529511 () Bool)

(assert (=> d!1173684 m!4529511))

(declare-fun m!4529513 () Bool)

(assert (=> b!3960448 m!4529513))

(assert (=> b!3959959 d!1173684))

(declare-fun b!3960459 () Bool)

(declare-fun b_free!109281 () Bool)

(declare-fun b_next!109985 () Bool)

(assert (=> b!3960459 (= b_free!109281 (not b_next!109985))))

(declare-fun tb!238779 () Bool)

(declare-fun t!329821 () Bool)

(assert (=> (and b!3960459 (= (toValue!9093 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329821) tb!238779))

(declare-fun result!289150 () Bool)

(assert (= result!289150 result!289112))

(assert (=> d!1173580 t!329821))

(declare-fun tp!1206983 () Bool)

(declare-fun b_and!304057 () Bool)

(assert (=> b!3960459 (= tp!1206983 (and (=> t!329821 result!289150) b_and!304057))))

(declare-fun b_free!109283 () Bool)

(declare-fun b_next!109987 () Bool)

(assert (=> b!3960459 (= b_free!109283 (not b_next!109987))))

(declare-fun tb!238781 () Bool)

(declare-fun t!329823 () Bool)

(assert (=> (and b!3960459 (= (toChars!8952 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329823) tb!238781))

(declare-fun result!289152 () Bool)

(assert (= result!289152 result!289098))

(assert (=> b!3960106 t!329823))

(declare-fun t!329825 () Bool)

(declare-fun tb!238783 () Bool)

(assert (=> (and b!3960459 (= (toChars!8952 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329825) tb!238783))

(declare-fun result!289154 () Bool)

(assert (= result!289154 result!289106))

(assert (=> d!1173568 t!329825))

(declare-fun t!329827 () Bool)

(declare-fun tb!238785 () Bool)

(assert (=> (and b!3960459 (= (toChars!8952 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329827) tb!238785))

(declare-fun result!289156 () Bool)

(assert (= result!289156 result!289120))

(assert (=> b!3960302 t!329827))

(declare-fun b_and!304059 () Bool)

(declare-fun tp!1206985 () Bool)

(assert (=> b!3960459 (= tp!1206985 (and (=> t!329823 result!289152) (=> t!329825 result!289154) (=> t!329827 result!289156) b_and!304059))))

(declare-fun e!2452290 () Bool)

(assert (=> b!3960459 (= e!2452290 (and tp!1206983 tp!1206985))))

(declare-fun tp!1206982 () Bool)

(declare-fun b!3960458 () Bool)

(declare-fun e!2452291 () Bool)

(assert (=> b!3960458 (= e!2452291 (and tp!1206982 (inv!56404 (tag!7473 (h!47597 (t!329772 rules!2768)))) (inv!56408 (transformation!6613 (h!47597 (t!329772 rules!2768)))) e!2452290))))

(declare-fun b!3960457 () Bool)

(declare-fun e!2452289 () Bool)

(declare-fun tp!1206984 () Bool)

(assert (=> b!3960457 (= e!2452289 (and e!2452291 tp!1206984))))

(assert (=> b!3959964 (= tp!1206908 e!2452289)))

(assert (= b!3960458 b!3960459))

(assert (= b!3960457 b!3960458))

(assert (= (and b!3959964 (is-Cons!42177 (t!329772 rules!2768))) b!3960457))

(declare-fun m!4529515 () Bool)

(assert (=> b!3960458 m!4529515))

(declare-fun m!4529517 () Bool)

(assert (=> b!3960458 m!4529517))

(declare-fun b!3960473 () Bool)

(declare-fun e!2452294 () Bool)

(declare-fun tp!1207000 () Bool)

(declare-fun tp!1206997 () Bool)

(assert (=> b!3960473 (= e!2452294 (and tp!1207000 tp!1206997))))

(declare-fun b!3960471 () Bool)

(declare-fun tp!1206998 () Bool)

(declare-fun tp!1206999 () Bool)

(assert (=> b!3960471 (= e!2452294 (and tp!1206998 tp!1206999))))

(assert (=> b!3959952 (= tp!1206905 e!2452294)))

(declare-fun b!3960470 () Bool)

(assert (=> b!3960470 (= e!2452294 tp_is_empty!20007)))

(declare-fun b!3960472 () Bool)

(declare-fun tp!1206996 () Bool)

(assert (=> b!3960472 (= e!2452294 tp!1206996)))

(assert (= (and b!3959952 (is-ElementMatch!11518 (regex!6613 (rule!9591 (h!47598 prefixTokens!80))))) b!3960470))

(assert (= (and b!3959952 (is-Concat!18362 (regex!6613 (rule!9591 (h!47598 prefixTokens!80))))) b!3960471))

(assert (= (and b!3959952 (is-Star!11518 (regex!6613 (rule!9591 (h!47598 prefixTokens!80))))) b!3960472))

(assert (= (and b!3959952 (is-Union!11518 (regex!6613 (rule!9591 (h!47598 prefixTokens!80))))) b!3960473))

(declare-fun b!3960478 () Bool)

(declare-fun e!2452297 () Bool)

(declare-fun tp!1207003 () Bool)

(assert (=> b!3960478 (= e!2452297 (and tp_is_empty!20007 tp!1207003))))

(assert (=> b!3959946 (= tp!1206903 e!2452297)))

(assert (= (and b!3959946 (is-Cons!42175 (originalCharacters!7213 (h!47598 prefixTokens!80)))) b!3960478))

(declare-fun b!3960492 () Bool)

(declare-fun b_free!109285 () Bool)

(declare-fun b_next!109989 () Bool)

(assert (=> b!3960492 (= b_free!109285 (not b_next!109989))))

(declare-fun tb!238787 () Bool)

(declare-fun t!329829 () Bool)

(assert (=> (and b!3960492 (= (toValue!9093 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329829) tb!238787))

(declare-fun result!289164 () Bool)

(assert (= result!289164 result!289112))

(assert (=> d!1173580 t!329829))

(declare-fun tp!1207017 () Bool)

(declare-fun b_and!304061 () Bool)

(assert (=> b!3960492 (= tp!1207017 (and (=> t!329829 result!289164) b_and!304061))))

(declare-fun b_free!109287 () Bool)

(declare-fun b_next!109991 () Bool)

(assert (=> b!3960492 (= b_free!109287 (not b_next!109991))))

(declare-fun t!329831 () Bool)

(declare-fun tb!238789 () Bool)

(assert (=> (and b!3960492 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329831) tb!238789))

(declare-fun result!289166 () Bool)

(assert (= result!289166 result!289098))

(assert (=> b!3960106 t!329831))

(declare-fun tb!238791 () Bool)

(declare-fun t!329833 () Bool)

(assert (=> (and b!3960492 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329833) tb!238791))

(declare-fun result!289168 () Bool)

(assert (= result!289168 result!289106))

(assert (=> d!1173568 t!329833))

(declare-fun tb!238793 () Bool)

(declare-fun t!329835 () Bool)

(assert (=> (and b!3960492 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329835) tb!238793))

(declare-fun result!289170 () Bool)

(assert (= result!289170 result!289120))

(assert (=> b!3960302 t!329835))

(declare-fun tp!1207018 () Bool)

(declare-fun b_and!304063 () Bool)

(assert (=> b!3960492 (= tp!1207018 (and (=> t!329831 result!289166) (=> t!329833 result!289168) (=> t!329835 result!289170) b_and!304063))))

(declare-fun b!3960489 () Bool)

(declare-fun e!2452310 () Bool)

(declare-fun e!2452314 () Bool)

(declare-fun tp!1207014 () Bool)

(assert (=> b!3960489 (= e!2452310 (and (inv!56407 (h!47598 (t!329773 suffixTokens!72))) e!2452314 tp!1207014))))

(assert (=> b!3959949 (= tp!1206913 e!2452310)))

(declare-fun e!2452315 () Bool)

(assert (=> b!3960492 (= e!2452315 (and tp!1207017 tp!1207018))))

(declare-fun tp!1207015 () Bool)

(declare-fun b!3960491 () Bool)

(declare-fun e!2452312 () Bool)

(assert (=> b!3960491 (= e!2452312 (and tp!1207015 (inv!56404 (tag!7473 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (inv!56408 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) e!2452315))))

(declare-fun tp!1207016 () Bool)

(declare-fun b!3960490 () Bool)

(assert (=> b!3960490 (= e!2452314 (and (inv!21 (value!209106 (h!47598 (t!329773 suffixTokens!72)))) e!2452312 tp!1207016))))

(assert (= b!3960491 b!3960492))

(assert (= b!3960490 b!3960491))

(assert (= b!3960489 b!3960490))

(assert (= (and b!3959949 (is-Cons!42178 (t!329773 suffixTokens!72))) b!3960489))

(declare-fun m!4529523 () Bool)

(assert (=> b!3960489 m!4529523))

(declare-fun m!4529525 () Bool)

(assert (=> b!3960491 m!4529525))

(declare-fun m!4529527 () Bool)

(assert (=> b!3960491 m!4529527))

(declare-fun m!4529529 () Bool)

(assert (=> b!3960490 m!4529529))

(declare-fun b!3960493 () Bool)

(declare-fun e!2452316 () Bool)

(declare-fun tp!1207019 () Bool)

(assert (=> b!3960493 (= e!2452316 (and tp_is_empty!20007 tp!1207019))))

(assert (=> b!3959938 (= tp!1206901 e!2452316)))

(assert (= (and b!3959938 (is-Cons!42175 (t!329770 suffixResult!91))) b!3960493))

(declare-fun b!3960494 () Bool)

(declare-fun e!2452317 () Bool)

(declare-fun tp!1207020 () Bool)

(assert (=> b!3960494 (= e!2452317 (and tp_is_empty!20007 tp!1207020))))

(assert (=> b!3959958 (= tp!1206902 e!2452317)))

(assert (= (and b!3959958 (is-Cons!42175 (originalCharacters!7213 (h!47598 suffixTokens!72)))) b!3960494))

(declare-fun b!3960495 () Bool)

(declare-fun e!2452318 () Bool)

(declare-fun tp!1207021 () Bool)

(assert (=> b!3960495 (= e!2452318 (and tp_is_empty!20007 tp!1207021))))

(assert (=> b!3959937 (= tp!1206898 e!2452318)))

(assert (= (and b!3959937 (is-Cons!42175 (t!329770 prefix!426))) b!3960495))

(declare-fun b!3960499 () Bool)

(declare-fun b_free!109289 () Bool)

(declare-fun b_next!109993 () Bool)

(assert (=> b!3960499 (= b_free!109289 (not b_next!109993))))

(declare-fun tb!238795 () Bool)

(declare-fun t!329837 () Bool)

(assert (=> (and b!3960499 (= (toValue!9093 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toValue!9093 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329837) tb!238795))

(declare-fun result!289172 () Bool)

(assert (= result!289172 result!289112))

(assert (=> d!1173580 t!329837))

(declare-fun tp!1207025 () Bool)

(declare-fun b_and!304065 () Bool)

(assert (=> b!3960499 (= tp!1207025 (and (=> t!329837 result!289172) b_and!304065))))

(declare-fun b_free!109291 () Bool)

(declare-fun b_next!109995 () Bool)

(assert (=> b!3960499 (= b_free!109291 (not b_next!109995))))

(declare-fun tb!238797 () Bool)

(declare-fun t!329839 () Bool)

(assert (=> (and b!3960499 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72))))) t!329839) tb!238797))

(declare-fun result!289174 () Bool)

(assert (= result!289174 result!289098))

(assert (=> b!3960106 t!329839))

(declare-fun tb!238799 () Bool)

(declare-fun t!329841 () Bool)

(assert (=> (and b!3960499 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toChars!8952 (transformation!6613 (rule!9591 (_1!23867 (v!39378 lt!1385017)))))) t!329841) tb!238799))

(declare-fun result!289176 () Bool)

(assert (= result!289176 result!289106))

(assert (=> d!1173568 t!329841))

(declare-fun t!329843 () Bool)

(declare-fun tb!238801 () Bool)

(assert (=> (and b!3960499 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80))))) t!329843) tb!238801))

(declare-fun result!289178 () Bool)

(assert (= result!289178 result!289120))

(assert (=> b!3960302 t!329843))

(declare-fun b_and!304067 () Bool)

(declare-fun tp!1207026 () Bool)

(assert (=> b!3960499 (= tp!1207026 (and (=> t!329839 result!289174) (=> t!329841 result!289176) (=> t!329843 result!289178) b_and!304067))))

(declare-fun e!2452319 () Bool)

(declare-fun tp!1207022 () Bool)

(declare-fun e!2452323 () Bool)

(declare-fun b!3960496 () Bool)

(assert (=> b!3960496 (= e!2452319 (and (inv!56407 (h!47598 (t!329773 prefixTokens!80))) e!2452323 tp!1207022))))

(assert (=> b!3959941 (= tp!1206899 e!2452319)))

(declare-fun e!2452324 () Bool)

(assert (=> b!3960499 (= e!2452324 (and tp!1207025 tp!1207026))))

(declare-fun e!2452321 () Bool)

(declare-fun tp!1207023 () Bool)

(declare-fun b!3960498 () Bool)

(assert (=> b!3960498 (= e!2452321 (and tp!1207023 (inv!56404 (tag!7473 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (inv!56408 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) e!2452324))))

(declare-fun tp!1207024 () Bool)

(declare-fun b!3960497 () Bool)

(assert (=> b!3960497 (= e!2452323 (and (inv!21 (value!209106 (h!47598 (t!329773 prefixTokens!80)))) e!2452321 tp!1207024))))

(assert (= b!3960498 b!3960499))

(assert (= b!3960497 b!3960498))

(assert (= b!3960496 b!3960497))

(assert (= (and b!3959941 (is-Cons!42178 (t!329773 prefixTokens!80))) b!3960496))

(declare-fun m!4529531 () Bool)

(assert (=> b!3960496 m!4529531))

(declare-fun m!4529533 () Bool)

(assert (=> b!3960498 m!4529533))

(declare-fun m!4529535 () Bool)

(assert (=> b!3960498 m!4529535))

(declare-fun m!4529537 () Bool)

(assert (=> b!3960497 m!4529537))

(declare-fun b!3960503 () Bool)

(declare-fun e!2452325 () Bool)

(declare-fun tp!1207031 () Bool)

(declare-fun tp!1207028 () Bool)

(assert (=> b!3960503 (= e!2452325 (and tp!1207031 tp!1207028))))

(declare-fun b!3960501 () Bool)

(declare-fun tp!1207029 () Bool)

(declare-fun tp!1207030 () Bool)

(assert (=> b!3960501 (= e!2452325 (and tp!1207029 tp!1207030))))

(assert (=> b!3959961 (= tp!1206912 e!2452325)))

(declare-fun b!3960500 () Bool)

(assert (=> b!3960500 (= e!2452325 tp_is_empty!20007)))

(declare-fun b!3960502 () Bool)

(declare-fun tp!1207027 () Bool)

(assert (=> b!3960502 (= e!2452325 tp!1207027)))

(assert (= (and b!3959961 (is-ElementMatch!11518 (regex!6613 (rule!9591 (h!47598 suffixTokens!72))))) b!3960500))

(assert (= (and b!3959961 (is-Concat!18362 (regex!6613 (rule!9591 (h!47598 suffixTokens!72))))) b!3960501))

(assert (= (and b!3959961 (is-Star!11518 (regex!6613 (rule!9591 (h!47598 suffixTokens!72))))) b!3960502))

(assert (= (and b!3959961 (is-Union!11518 (regex!6613 (rule!9591 (h!47598 suffixTokens!72))))) b!3960503))

(declare-fun b!3960504 () Bool)

(declare-fun e!2452326 () Bool)

(declare-fun tp!1207032 () Bool)

(assert (=> b!3960504 (= e!2452326 (and tp_is_empty!20007 tp!1207032))))

(assert (=> b!3959940 (= tp!1206907 e!2452326)))

(assert (= (and b!3959940 (is-Cons!42175 (t!329770 suffix!1176))) b!3960504))

(declare-fun b!3960508 () Bool)

(declare-fun e!2452327 () Bool)

(declare-fun tp!1207037 () Bool)

(declare-fun tp!1207034 () Bool)

(assert (=> b!3960508 (= e!2452327 (and tp!1207037 tp!1207034))))

(declare-fun b!3960506 () Bool)

(declare-fun tp!1207035 () Bool)

(declare-fun tp!1207036 () Bool)

(assert (=> b!3960506 (= e!2452327 (and tp!1207035 tp!1207036))))

(assert (=> b!3959960 (= tp!1206911 e!2452327)))

(declare-fun b!3960505 () Bool)

(assert (=> b!3960505 (= e!2452327 tp_is_empty!20007)))

(declare-fun b!3960507 () Bool)

(declare-fun tp!1207033 () Bool)

(assert (=> b!3960507 (= e!2452327 tp!1207033)))

(assert (= (and b!3959960 (is-ElementMatch!11518 (regex!6613 (h!47597 rules!2768)))) b!3960505))

(assert (= (and b!3959960 (is-Concat!18362 (regex!6613 (h!47597 rules!2768)))) b!3960506))

(assert (= (and b!3959960 (is-Star!11518 (regex!6613 (h!47597 rules!2768)))) b!3960507))

(assert (= (and b!3959960 (is-Union!11518 (regex!6613 (h!47597 rules!2768)))) b!3960508))

(declare-fun b_lambda!115849 () Bool)

(assert (= b_lambda!115841 (or (and b!3959943 b_free!109263 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))))) (and b!3960499 b_free!109291 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))))) (and b!3960459 b_free!109283 (= (toChars!8952 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))))) (and b!3959954 b_free!109267 (= (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))))) (and b!3960492 b_free!109287 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))))) (and b!3959947 b_free!109259) b_lambda!115849)))

(declare-fun b_lambda!115851 () Bool)

(assert (= b_lambda!115835 (or (and b!3960492 b_free!109287 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 suffixTokens!72))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))))) (and b!3959954 b_free!109267 (= (toChars!8952 (transformation!6613 (h!47597 rules!2768))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))))) (and b!3960459 b_free!109283 (= (toChars!8952 (transformation!6613 (h!47597 (t!329772 rules!2768)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))))) (and b!3960499 b_free!109291 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 (t!329773 prefixTokens!80))))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))))) (and b!3959943 b_free!109263) (and b!3959947 b_free!109259 (= (toChars!8952 (transformation!6613 (rule!9591 (h!47598 prefixTokens!80)))) (toChars!8952 (transformation!6613 (rule!9591 (h!47598 suffixTokens!72)))))) b_lambda!115851)))

(push 1)

(assert (not b!3960495))

(assert (not b!3960493))

(assert (not b!3960491))

(assert (not d!1173614))

(assert (not b!3960305))

(assert (not d!1173596))

(assert (not b!3960302))

(assert (not d!1173554))

(assert (not b!3960249))

(assert (not d!1173522))

(assert (not d!1173542))

(assert (not b!3960107))

(assert (not b!3960284))

(assert (not d!1173520))

(assert (not b!3960503))

(assert (not d!1173622))

(assert b_and!304037)

(assert (not b!3960180))

(assert (not b_lambda!115839))

(assert (not b!3960132))

(assert (not d!1173552))

(assert (not b!3960304))

(assert (not b!3960457))

(assert (not b!3960172))

(assert (not b!3960496))

(assert (not b!3960298))

(assert (not b!3960271))

(assert (not b!3960190))

(assert (not b!3960448))

(assert (not b!3960097))

(assert (not b!3960197))

(assert (not b!3960478))

(assert (not b_lambda!115849))

(assert (not b!3960299))

(assert (not b!3960458))

(assert (not b!3960112))

(assert (not b!3960301))

(assert (not d!1173684))

(assert (not b!3960183))

(assert (not b!3960174))

(assert (not b!3960257))

(assert b_and!304059)

(assert (not b_next!109995))

(assert (not b!3960171))

(assert (not b!3960437))

(assert (not b!3960096))

(assert (not b!3960472))

(assert (not b!3960209))

(assert (not tb!238737))

(assert (not d!1173556))

(assert (not b!3960502))

(assert (not d!1173574))

(assert (not b!3960196))

(assert (not b!3960129))

(assert (not b!3960179))

(assert (not b!3960170))

(assert (not b!3960504))

(assert (not b!3960279))

(assert b_and!304061)

(assert (not b!3960471))

(assert (not b_lambda!115851))

(assert (not b!3960406))

(assert (not d!1173566))

(assert b_and!304031)

(assert (not tb!238743))

(assert (not d!1173600))

(assert (not d!1173564))

(assert (not b!3960401))

(assert (not d!1173578))

(assert b_and!304027)

(assert (not b_next!109965))

(assert (not b!3960497))

(assert (not b!3960404))

(assert (not b!3960473))

(assert (not d!1173538))

(assert (not b!3960118))

(assert (not b!3960195))

(assert (not b_next!109963))

(assert b_and!304035)

(assert (not b!3960490))

(assert (not b!3960402))

(assert (not b_next!109961))

(assert (not b_next!109971))

(assert (not b_next!109991))

(assert (not b_next!109985))

(assert (not b!3960400))

(assert (not b!3960408))

(assert (not d!1173568))

(assert (not b!3960255))

(assert (not b_lambda!115837))

(assert (not b!3960256))

(assert (not b!3960439))

(assert (not tb!238755))

(assert (not bm!285392))

(assert (not d!1173604))

(assert (not b!3960098))

(assert (not b!3960128))

(assert (not d!1173560))

(assert (not b!3960210))

(assert (not b_next!109989))

(assert (not b_next!109967))

(assert (not b!3960101))

(assert b_and!304057)

(assert b_and!304065)

(assert (not b!3960507))

(assert (not d!1173536))

(assert (not tb!238749))

(assert (not b!3960297))

(assert (not b!3960176))

(assert tp_is_empty!20007)

(assert (not b!3960403))

(assert (not d!1173558))

(assert (not b!3960106))

(assert (not d!1173576))

(assert (not b!3960253))

(assert (not d!1173582))

(assert (not d!1173602))

(assert (not d!1173548))

(assert (not d!1173562))

(assert (not b!3960498))

(assert (not d!1173624))

(assert (not b!3960276))

(assert (not b!3960501))

(assert (not b!3960272))

(assert (not b!3960494))

(assert b_and!304029)

(assert (not b_next!109969))

(assert (not b!3960280))

(assert (not b!3960489))

(assert (not b!3960277))

(assert (not b!3960216))

(assert (not b!3960252))

(assert (not b!3960181))

(assert (not d!1173572))

(assert (not b!3960168))

(assert b_and!304067)

(assert (not d!1173660))

(assert (not b!3960169))

(assert (not b!3960506))

(assert (not b!3960306))

(assert (not b!3960184))

(assert (not b!3960248))

(assert b_and!304063)

(assert (not b!3960275))

(assert (not d!1173518))

(assert (not b!3960251))

(assert (not b!3960247))

(assert (not b!3960270))

(assert (not b!3960407))

(assert (not b_next!109987))

(assert (not b!3960303))

(assert (not b!3960199))

(assert (not b!3960283))

(assert (not b!3960173))

(assert (not b!3960194))

(assert (not d!1173618))

(assert (not b_next!109993))

(assert b_and!304033)

(assert (not b!3960508))

(assert (not b!3960134))

(check-sat)

(pop 1)

(push 1)

(assert b_and!304037)

(assert b_and!304061)

(assert b_and!304031)

(assert b_and!304027)

(assert (not b_next!109965))

(assert (not b_next!109989))

(assert b_and!304067)

(assert b_and!304063)

(assert (not b_next!109987))

(assert b_and!304059)

(assert (not b_next!109995))

(assert (not b_next!109963))

(assert b_and!304035)

(assert (not b_next!109961))

(assert (not b_next!109971))

(assert (not b_next!109991))

(assert (not b_next!109985))

(assert (not b_next!109967))

(assert b_and!304057)

(assert b_and!304065)

(assert b_and!304029)

(assert (not b_next!109969))

(assert (not b_next!109993))

(assert b_and!304033)

(check-sat)

(pop 1)

