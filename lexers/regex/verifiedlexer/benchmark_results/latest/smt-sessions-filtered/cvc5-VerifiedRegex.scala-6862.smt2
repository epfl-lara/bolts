; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!360910 () Bool)

(assert start!360910)

(declare-fun b!3852109 () Bool)

(declare-fun b_free!103297 () Bool)

(declare-fun b_next!104001 () Bool)

(assert (=> b!3852109 (= b_free!103297 (not b_next!104001))))

(declare-fun tp!1167647 () Bool)

(declare-fun b_and!287751 () Bool)

(assert (=> b!3852109 (= tp!1167647 b_and!287751)))

(declare-fun b_free!103299 () Bool)

(declare-fun b_next!104003 () Bool)

(assert (=> b!3852109 (= b_free!103299 (not b_next!104003))))

(declare-fun tp!1167643 () Bool)

(declare-fun b_and!287753 () Bool)

(assert (=> b!3852109 (= tp!1167643 b_and!287753)))

(declare-fun b!3852102 () Bool)

(declare-fun b_free!103301 () Bool)

(declare-fun b_next!104005 () Bool)

(assert (=> b!3852102 (= b_free!103301 (not b_next!104005))))

(declare-fun tp!1167636 () Bool)

(declare-fun b_and!287755 () Bool)

(assert (=> b!3852102 (= tp!1167636 b_and!287755)))

(declare-fun b_free!103303 () Bool)

(declare-fun b_next!104007 () Bool)

(assert (=> b!3852102 (= b_free!103303 (not b_next!104007))))

(declare-fun tp!1167648 () Bool)

(declare-fun b_and!287757 () Bool)

(assert (=> b!3852102 (= tp!1167648 b_and!287757)))

(declare-fun b!3852098 () Bool)

(declare-fun b_free!103305 () Bool)

(declare-fun b_next!104009 () Bool)

(assert (=> b!3852098 (= b_free!103305 (not b_next!104009))))

(declare-fun tp!1167640 () Bool)

(declare-fun b_and!287759 () Bool)

(assert (=> b!3852098 (= tp!1167640 b_and!287759)))

(declare-fun b_free!103307 () Bool)

(declare-fun b_next!104011 () Bool)

(assert (=> b!3852098 (= b_free!103307 (not b_next!104011))))

(declare-fun tp!1167642 () Bool)

(declare-fun b_and!287761 () Bool)

(assert (=> b!3852098 (= tp!1167642 b_and!287761)))

(declare-fun b!3852081 () Bool)

(declare-fun res!1559487 () Bool)

(declare-fun e!2381047 () Bool)

(assert (=> b!3852081 (=> (not res!1559487) (not e!2381047))))

(declare-datatypes ((C!22618 0))(
  ( (C!22619 (val!13403 Int)) )
))
(declare-datatypes ((List!40946 0))(
  ( (Nil!40822) (Cons!40822 (h!46242 C!22618) (t!311993 List!40946)) )
))
(declare-fun suffixResult!91 () List!40946)

(declare-datatypes ((LexerInterface!5900 0))(
  ( (LexerInterfaceExt!5897 (__x!25299 Int)) (Lexer!5898) )
))
(declare-fun thiss!20629 () LexerInterface!5900)

(declare-fun suffix!1176 () List!40946)

(declare-datatypes ((IArray!25049 0))(
  ( (IArray!25050 (innerList!12582 List!40946)) )
))
(declare-datatypes ((Conc!12522 0))(
  ( (Node!12522 (left!31480 Conc!12522) (right!31810 Conc!12522) (csize!25274 Int) (cheight!12733 Int)) (Leaf!19385 (xs!15828 IArray!25049) (csize!25275 Int)) (Empty!12522) )
))
(declare-datatypes ((BalanceConc!24638 0))(
  ( (BalanceConc!24639 (c!670845 Conc!12522)) )
))
(declare-datatypes ((List!40947 0))(
  ( (Nil!40823) (Cons!40823 (h!46243 (_ BitVec 16)) (t!311994 List!40947)) )
))
(declare-datatypes ((TokenValue!6541 0))(
  ( (FloatLiteralValue!13082 (text!46232 List!40947)) (TokenValueExt!6540 (__x!25300 Int)) (Broken!32705 (value!200473 List!40947)) (Object!6664) (End!6541) (Def!6541) (Underscore!6541) (Match!6541) (Else!6541) (Error!6541) (Case!6541) (If!6541) (Extends!6541) (Abstract!6541) (Class!6541) (Val!6541) (DelimiterValue!13082 (del!6601 List!40947)) (KeywordValue!6547 (value!200474 List!40947)) (CommentValue!13082 (value!200475 List!40947)) (WhitespaceValue!13082 (value!200476 List!40947)) (IndentationValue!6541 (value!200477 List!40947)) (String!46424) (Int32!6541) (Broken!32706 (value!200478 List!40947)) (Boolean!6542) (Unit!58492) (OperatorValue!6544 (op!6601 List!40947)) (IdentifierValue!13082 (value!200479 List!40947)) (IdentifierValue!13083 (value!200480 List!40947)) (WhitespaceValue!13083 (value!200481 List!40947)) (True!13082) (False!13082) (Broken!32707 (value!200482 List!40947)) (Broken!32708 (value!200483 List!40947)) (True!13083) (RightBrace!6541) (RightBracket!6541) (Colon!6541) (Null!6541) (Comma!6541) (LeftBracket!6541) (False!13083) (LeftBrace!6541) (ImaginaryLiteralValue!6541 (text!46233 List!40947)) (StringLiteralValue!19623 (value!200484 List!40947)) (EOFValue!6541 (value!200485 List!40947)) (IdentValue!6541 (value!200486 List!40947)) (DelimiterValue!13083 (value!200487 List!40947)) (DedentValue!6541 (value!200488 List!40947)) (NewLineValue!6541 (value!200489 List!40947)) (IntegerValue!19623 (value!200490 (_ BitVec 32)) (text!46234 List!40947)) (IntegerValue!19624 (value!200491 Int) (text!46235 List!40947)) (Times!6541) (Or!6541) (Equal!6541) (Minus!6541) (Broken!32709 (value!200492 List!40947)) (And!6541) (Div!6541) (LessEqual!6541) (Mod!6541) (Concat!17757) (Not!6541) (Plus!6541) (SpaceValue!6541 (value!200493 List!40947)) (IntegerValue!19625 (value!200494 Int) (text!46236 List!40947)) (StringLiteralValue!19624 (text!46237 List!40947)) (FloatLiteralValue!13083 (text!46238 List!40947)) (BytesLiteralValue!6541 (value!200495 List!40947)) (CommentValue!13083 (value!200496 List!40947)) (StringLiteralValue!19625 (value!200497 List!40947)) (ErrorTokenValue!6541 (msg!6602 List!40947)) )
))
(declare-datatypes ((Regex!11216 0))(
  ( (ElementMatch!11216 (c!670846 C!22618)) (Concat!17758 (regOne!22944 Regex!11216) (regTwo!22944 Regex!11216)) (EmptyExpr!11216) (Star!11216 (reg!11545 Regex!11216)) (EmptyLang!11216) (Union!11216 (regOne!22945 Regex!11216) (regTwo!22945 Regex!11216)) )
))
(declare-datatypes ((String!46425 0))(
  ( (String!46426 (value!200498 String)) )
))
(declare-datatypes ((TokenValueInjection!12510 0))(
  ( (TokenValueInjection!12511 (toValue!8731 Int) (toChars!8590 Int)) )
))
(declare-datatypes ((Rule!12422 0))(
  ( (Rule!12423 (regex!6311 Regex!11216) (tag!7171 String!46425) (isSeparator!6311 Bool) (transformation!6311 TokenValueInjection!12510)) )
))
(declare-datatypes ((List!40948 0))(
  ( (Nil!40824) (Cons!40824 (h!46244 Rule!12422) (t!311995 List!40948)) )
))
(declare-fun rules!2768 () List!40948)

(declare-datatypes ((Token!11760 0))(
  ( (Token!11761 (value!200499 TokenValue!6541) (rule!9167 Rule!12422) (size!30707 Int) (originalCharacters!6911 List!40946)) )
))
(declare-datatypes ((List!40949 0))(
  ( (Nil!40825) (Cons!40825 (h!46245 Token!11760) (t!311996 List!40949)) )
))
(declare-fun suffixTokens!72 () List!40949)

(declare-datatypes ((tuple2!40014 0))(
  ( (tuple2!40015 (_1!23141 List!40949) (_2!23141 List!40946)) )
))
(declare-fun lexList!1668 (LexerInterface!5900 List!40948 List!40946) tuple2!40014)

(assert (=> b!3852081 (= res!1559487 (= (lexList!1668 thiss!20629 rules!2768 suffix!1176) (tuple2!40015 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3852082 () Bool)

(declare-fun res!1559482 () Bool)

(declare-fun e!2381035 () Bool)

(assert (=> b!3852082 (=> (not res!1559482) (not e!2381035))))

(declare-fun rulesInvariant!5243 (LexerInterface!5900 List!40948) Bool)

(assert (=> b!3852082 (= res!1559482 (rulesInvariant!5243 thiss!20629 rules!2768))))

(declare-fun e!2381059 () Bool)

(declare-fun e!2381062 () Bool)

(declare-fun b!3852083 () Bool)

(declare-fun tp!1167635 () Bool)

(declare-fun inv!21 (TokenValue!6541) Bool)

(assert (=> b!3852083 (= e!2381059 (and (inv!21 (value!200499 (h!46245 suffixTokens!72))) e!2381062 tp!1167635))))

(declare-fun e!2381056 () Bool)

(declare-fun b!3852084 () Bool)

(declare-fun tp!1167641 () Bool)

(declare-fun inv!54975 (Token!11760) Bool)

(assert (=> b!3852084 (= e!2381056 (and (inv!54975 (h!46245 suffixTokens!72)) e!2381059 tp!1167641))))

(declare-fun b!3852085 () Bool)

(declare-fun res!1559481 () Bool)

(assert (=> b!3852085 (=> (not res!1559481) (not e!2381035))))

(declare-fun prefix!426 () List!40946)

(declare-fun isEmpty!24163 (List!40946) Bool)

(assert (=> b!3852085 (= res!1559481 (not (isEmpty!24163 prefix!426)))))

(declare-fun b!3852086 () Bool)

(declare-fun e!2381057 () Bool)

(declare-fun e!2381058 () Bool)

(assert (=> b!3852086 (= e!2381057 e!2381058)))

(declare-fun res!1559483 () Bool)

(assert (=> b!3852086 (=> res!1559483 e!2381058)))

(declare-datatypes ((tuple2!40016 0))(
  ( (tuple2!40017 (_1!23142 Token!11760) (_2!23142 List!40946)) )
))
(declare-datatypes ((Option!8729 0))(
  ( (None!8728) (Some!8728 (v!39022 tuple2!40016)) )
))
(declare-fun lt!1337950 () Option!8729)

(declare-fun lt!1337934 () List!40946)

(declare-fun matchR!5363 (Regex!11216 List!40946) Bool)

(assert (=> b!3852086 (= res!1559483 (not (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337934)))))

(declare-fun lt!1337942 () Int)

(declare-fun lt!1337935 () List!40946)

(declare-fun lt!1337936 () TokenValue!6541)

(declare-fun maxPrefixOneRule!2286 (LexerInterface!5900 Rule!12422 List!40946) Option!8729)

(assert (=> b!3852086 (= (maxPrefixOneRule!2286 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337935) (Some!8728 (tuple2!40017 (Token!11761 lt!1337936 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337942 lt!1337934) (_2!23142 (v!39022 lt!1337950)))))))

(declare-datatypes ((Unit!58493 0))(
  ( (Unit!58494) )
))
(declare-fun lt!1337940 () Unit!58493)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1184 (LexerInterface!5900 List!40948 List!40946 List!40946 List!40946 Rule!12422) Unit!58493)

(assert (=> b!3852086 (= lt!1337940 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1184 thiss!20629 rules!2768 lt!1337934 lt!1337935 (_2!23142 (v!39022 lt!1337950)) (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(declare-fun e!2381052 () Bool)

(declare-fun b!3852087 () Bool)

(declare-fun tp!1167644 () Bool)

(declare-fun inv!54972 (String!46425) Bool)

(declare-fun inv!54976 (TokenValueInjection!12510) Bool)

(assert (=> b!3852087 (= e!2381062 (and tp!1167644 (inv!54972 (tag!7171 (rule!9167 (h!46245 suffixTokens!72)))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) e!2381052))))

(declare-fun b!3852088 () Bool)

(declare-fun e!2381041 () Bool)

(declare-fun tp_is_empty!19403 () Bool)

(declare-fun tp!1167637 () Bool)

(assert (=> b!3852088 (= e!2381041 (and tp_is_empty!19403 tp!1167637))))

(declare-fun b!3852089 () Bool)

(declare-fun res!1559486 () Bool)

(declare-fun e!2381042 () Bool)

(assert (=> b!3852089 (=> res!1559486 e!2381042)))

(declare-fun lt!1337941 () tuple2!40014)

(assert (=> b!3852089 (= res!1559486 (or (not (= lt!1337941 (tuple2!40015 (_1!23141 lt!1337941) (_2!23141 lt!1337941)))) (= (_2!23142 (v!39022 lt!1337950)) suffix!1176)))))

(declare-fun e!2381045 () Bool)

(declare-fun e!2381044 () Bool)

(declare-fun b!3852090 () Bool)

(declare-fun tp!1167645 () Bool)

(assert (=> b!3852090 (= e!2381044 (and tp!1167645 (inv!54972 (tag!7171 (h!46244 rules!2768))) (inv!54976 (transformation!6311 (h!46244 rules!2768))) e!2381045))))

(declare-fun b!3852091 () Bool)

(declare-fun e!2381043 () Bool)

(assert (=> b!3852091 (= e!2381047 e!2381043)))

(declare-fun res!1559475 () Bool)

(assert (=> b!3852091 (=> (not res!1559475) (not e!2381043))))

(assert (=> b!3852091 (= res!1559475 (is-Some!8728 lt!1337950))))

(declare-fun maxPrefix!3204 (LexerInterface!5900 List!40948 List!40946) Option!8729)

(assert (=> b!3852091 (= lt!1337950 (maxPrefix!3204 thiss!20629 rules!2768 lt!1337935))))

(declare-fun b!3852092 () Bool)

(assert (=> b!3852092 (= e!2381035 e!2381047)))

(declare-fun res!1559489 () Bool)

(assert (=> b!3852092 (=> (not res!1559489) (not e!2381047))))

(declare-fun lt!1337937 () tuple2!40014)

(declare-fun lt!1337952 () List!40949)

(assert (=> b!3852092 (= res!1559489 (= lt!1337937 (tuple2!40015 lt!1337952 suffixResult!91)))))

(assert (=> b!3852092 (= lt!1337937 (lexList!1668 thiss!20629 rules!2768 lt!1337935))))

(declare-fun prefixTokens!80 () List!40949)

(declare-fun ++!10379 (List!40949 List!40949) List!40949)

(assert (=> b!3852092 (= lt!1337952 (++!10379 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10380 (List!40946 List!40946) List!40946)

(assert (=> b!3852092 (= lt!1337935 (++!10380 prefix!426 suffix!1176))))

(declare-fun b!3852093 () Bool)

(declare-fun isDefined!6852 (Option!8729) Bool)

(assert (=> b!3852093 (= e!2381058 (isDefined!6852 lt!1337950))))

(declare-fun b!3852094 () Bool)

(declare-fun res!1559484 () Bool)

(assert (=> b!3852094 (=> (not res!1559484) (not e!2381035))))

(declare-fun isEmpty!24164 (List!40949) Bool)

(assert (=> b!3852094 (= res!1559484 (not (isEmpty!24164 prefixTokens!80)))))

(declare-fun b!3852095 () Bool)

(declare-fun e!2381038 () Bool)

(declare-fun tp!1167633 () Bool)

(assert (=> b!3852095 (= e!2381038 (and e!2381044 tp!1167633))))

(declare-fun b!3852096 () Bool)

(declare-fun e!2381054 () Bool)

(declare-fun tp!1167634 () Bool)

(assert (=> b!3852096 (= e!2381054 (and tp_is_empty!19403 tp!1167634))))

(declare-fun b!3852097 () Bool)

(declare-fun e!2381061 () Bool)

(assert (=> b!3852097 (= e!2381061 e!2381057)))

(declare-fun res!1559477 () Bool)

(assert (=> b!3852097 (=> res!1559477 e!2381057)))

(declare-fun lt!1337945 () Int)

(declare-fun lt!1337948 () Int)

(declare-fun lt!1337944 () Int)

(assert (=> b!3852097 (= res!1559477 (or (not (= (+ lt!1337945 lt!1337944) lt!1337948)) (<= lt!1337942 lt!1337945)))))

(declare-fun size!30708 (List!40946) Int)

(assert (=> b!3852097 (= lt!1337945 (size!30708 prefix!426))))

(assert (=> b!3852098 (= e!2381045 (and tp!1167640 tp!1167642))))

(declare-fun b!3852099 () Bool)

(assert (=> b!3852099 (= e!2381043 (not e!2381042))))

(declare-fun res!1559480 () Bool)

(assert (=> b!3852099 (=> res!1559480 e!2381042)))

(declare-fun lt!1337949 () List!40946)

(assert (=> b!3852099 (= res!1559480 (not (= lt!1337949 lt!1337935)))))

(assert (=> b!3852099 (= lt!1337941 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun lt!1337951 () List!40946)

(assert (=> b!3852099 (and (= (size!30707 (_1!23142 (v!39022 lt!1337950))) lt!1337942) (= (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))) lt!1337934) (= (tuple2!40017 (_1!23142 (v!39022 lt!1337950)) (_2!23142 (v!39022 lt!1337950))) (tuple2!40017 (Token!11761 lt!1337936 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337942 lt!1337934) lt!1337951)))))

(assert (=> b!3852099 (= lt!1337942 (size!30708 lt!1337934))))

(declare-fun e!2381037 () Bool)

(assert (=> b!3852099 e!2381037))

(declare-fun res!1559474 () Bool)

(assert (=> b!3852099 (=> (not res!1559474) (not e!2381037))))

(assert (=> b!3852099 (= res!1559474 (= (value!200499 (_1!23142 (v!39022 lt!1337950))) lt!1337936))))

(declare-fun apply!9554 (TokenValueInjection!12510 BalanceConc!24638) TokenValue!6541)

(declare-fun seqFromList!4582 (List!40946) BalanceConc!24638)

(assert (=> b!3852099 (= lt!1337936 (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 lt!1337934)))))

(assert (=> b!3852099 (= (_2!23142 (v!39022 lt!1337950)) lt!1337951)))

(declare-fun lt!1337938 () Unit!58493)

(declare-fun lemmaSamePrefixThenSameSuffix!1631 (List!40946 List!40946 List!40946 List!40946 List!40946) Unit!58493)

(assert (=> b!3852099 (= lt!1337938 (lemmaSamePrefixThenSameSuffix!1631 lt!1337934 (_2!23142 (v!39022 lt!1337950)) lt!1337934 lt!1337951 lt!1337935))))

(declare-fun getSuffix!1865 (List!40946 List!40946) List!40946)

(assert (=> b!3852099 (= lt!1337951 (getSuffix!1865 lt!1337935 lt!1337934))))

(declare-fun isPrefix!3410 (List!40946 List!40946) Bool)

(assert (=> b!3852099 (isPrefix!3410 lt!1337934 lt!1337949)))

(assert (=> b!3852099 (= lt!1337949 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun lt!1337947 () Unit!58493)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2273 (List!40946 List!40946) Unit!58493)

(assert (=> b!3852099 (= lt!1337947 (lemmaConcatTwoListThenFirstIsPrefix!2273 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun list!15195 (BalanceConc!24638) List!40946)

(declare-fun charsOf!4139 (Token!11760) BalanceConc!24638)

(assert (=> b!3852099 (= lt!1337934 (list!15195 (charsOf!4139 (_1!23142 (v!39022 lt!1337950)))))))

(declare-fun ruleValid!2263 (LexerInterface!5900 Rule!12422) Bool)

(assert (=> b!3852099 (ruleValid!2263 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))

(declare-fun lt!1337946 () Unit!58493)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1343 (LexerInterface!5900 Rule!12422 List!40948) Unit!58493)

(assert (=> b!3852099 (= lt!1337946 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1343 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) rules!2768))))

(declare-fun lt!1337939 () Unit!58493)

(declare-fun lemmaCharactersSize!972 (Token!11760) Unit!58493)

(assert (=> b!3852099 (= lt!1337939 (lemmaCharactersSize!972 (_1!23142 (v!39022 lt!1337950))))))

(declare-fun b!3852100 () Bool)

(declare-fun e!2381060 () Bool)

(declare-fun tp!1167646 () Bool)

(assert (=> b!3852100 (= e!2381060 (and tp_is_empty!19403 tp!1167646))))

(declare-fun b!3852101 () Bool)

(declare-fun res!1559476 () Bool)

(assert (=> b!3852101 (=> res!1559476 e!2381058)))

(declare-fun get!13507 (Option!8729) tuple2!40016)

(declare-fun head!8103 (List!40949) Token!11760)

(assert (=> b!3852101 (= res!1559476 (not (= (_1!23142 (get!13507 lt!1337950)) (head!8103 prefixTokens!80))))))

(assert (=> b!3852102 (= e!2381052 (and tp!1167636 tp!1167648))))

(declare-fun e!2381055 () Bool)

(declare-fun b!3852103 () Bool)

(declare-fun e!2381036 () Bool)

(declare-fun tp!1167639 () Bool)

(assert (=> b!3852103 (= e!2381036 (and (inv!21 (value!200499 (h!46245 prefixTokens!80))) e!2381055 tp!1167639))))

(declare-fun b!3852104 () Bool)

(declare-fun e!2381049 () Bool)

(assert (=> b!3852104 (= e!2381042 e!2381049)))

(declare-fun res!1559490 () Bool)

(assert (=> b!3852104 (=> res!1559490 e!2381049)))

(declare-fun lt!1337943 () Int)

(assert (=> b!3852104 (= res!1559490 (>= lt!1337943 lt!1337944))))

(assert (=> b!3852104 (= lt!1337944 (size!30708 suffix!1176))))

(assert (=> b!3852104 (= lt!1337943 (size!30708 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3852105 () Bool)

(assert (=> b!3852105 (= e!2381049 e!2381061)))

(declare-fun res!1559485 () Bool)

(assert (=> b!3852105 (=> res!1559485 e!2381061)))

(assert (=> b!3852105 (= res!1559485 (not (= (+ lt!1337942 lt!1337943) lt!1337948)))))

(assert (=> b!3852105 (= lt!1337948 (size!30708 lt!1337935))))

(declare-fun tp!1167649 () Bool)

(declare-fun e!2381050 () Bool)

(declare-fun b!3852106 () Bool)

(assert (=> b!3852106 (= e!2381055 (and tp!1167649 (inv!54972 (tag!7171 (rule!9167 (h!46245 prefixTokens!80)))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) e!2381050))))

(declare-fun b!3852107 () Bool)

(assert (=> b!3852107 (= e!2381037 (= (size!30707 (_1!23142 (v!39022 lt!1337950))) (size!30708 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun tp!1167638 () Bool)

(declare-fun b!3852108 () Bool)

(declare-fun e!2381046 () Bool)

(assert (=> b!3852108 (= e!2381046 (and (inv!54975 (h!46245 prefixTokens!80)) e!2381036 tp!1167638))))

(assert (=> b!3852109 (= e!2381050 (and tp!1167647 tp!1167643))))

(declare-fun res!1559479 () Bool)

(assert (=> start!360910 (=> (not res!1559479) (not e!2381035))))

(assert (=> start!360910 (= res!1559479 (is-Lexer!5898 thiss!20629))))

(assert (=> start!360910 e!2381035))

(assert (=> start!360910 e!2381060))

(assert (=> start!360910 true))

(assert (=> start!360910 e!2381054))

(assert (=> start!360910 e!2381038))

(assert (=> start!360910 e!2381046))

(assert (=> start!360910 e!2381056))

(assert (=> start!360910 e!2381041))

(declare-fun b!3852110 () Bool)

(declare-fun res!1559478 () Bool)

(assert (=> b!3852110 (=> res!1559478 e!2381042)))

(assert (=> b!3852110 (= res!1559478 (not (= lt!1337937 (tuple2!40015 (++!10379 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825) (_1!23141 lt!1337941)) (_2!23141 lt!1337941)))))))

(declare-fun b!3852111 () Bool)

(declare-fun res!1559488 () Bool)

(assert (=> b!3852111 (=> (not res!1559488) (not e!2381035))))

(declare-fun isEmpty!24165 (List!40948) Bool)

(assert (=> b!3852111 (= res!1559488 (not (isEmpty!24165 rules!2768)))))

(assert (= (and start!360910 res!1559479) b!3852111))

(assert (= (and b!3852111 res!1559488) b!3852082))

(assert (= (and b!3852082 res!1559482) b!3852094))

(assert (= (and b!3852094 res!1559484) b!3852085))

(assert (= (and b!3852085 res!1559481) b!3852092))

(assert (= (and b!3852092 res!1559489) b!3852081))

(assert (= (and b!3852081 res!1559487) b!3852091))

(assert (= (and b!3852091 res!1559475) b!3852099))

(assert (= (and b!3852099 res!1559474) b!3852107))

(assert (= (and b!3852099 (not res!1559480)) b!3852110))

(assert (= (and b!3852110 (not res!1559478)) b!3852089))

(assert (= (and b!3852089 (not res!1559486)) b!3852104))

(assert (= (and b!3852104 (not res!1559490)) b!3852105))

(assert (= (and b!3852105 (not res!1559485)) b!3852097))

(assert (= (and b!3852097 (not res!1559477)) b!3852086))

(assert (= (and b!3852086 (not res!1559483)) b!3852101))

(assert (= (and b!3852101 (not res!1559476)) b!3852093))

(assert (= (and start!360910 (is-Cons!40822 suffixResult!91)) b!3852100))

(assert (= (and start!360910 (is-Cons!40822 suffix!1176)) b!3852096))

(assert (= b!3852090 b!3852098))

(assert (= b!3852095 b!3852090))

(assert (= (and start!360910 (is-Cons!40824 rules!2768)) b!3852095))

(assert (= b!3852106 b!3852109))

(assert (= b!3852103 b!3852106))

(assert (= b!3852108 b!3852103))

(assert (= (and start!360910 (is-Cons!40825 prefixTokens!80)) b!3852108))

(assert (= b!3852087 b!3852102))

(assert (= b!3852083 b!3852087))

(assert (= b!3852084 b!3852083))

(assert (= (and start!360910 (is-Cons!40825 suffixTokens!72)) b!3852084))

(assert (= (and start!360910 (is-Cons!40822 prefix!426)) b!3852088))

(declare-fun m!4407041 () Bool)

(assert (=> b!3852101 m!4407041))

(declare-fun m!4407043 () Bool)

(assert (=> b!3852101 m!4407043))

(declare-fun m!4407045 () Bool)

(assert (=> b!3852085 m!4407045))

(declare-fun m!4407047 () Bool)

(assert (=> b!3852110 m!4407047))

(declare-fun m!4407049 () Bool)

(assert (=> b!3852086 m!4407049))

(declare-fun m!4407051 () Bool)

(assert (=> b!3852086 m!4407051))

(declare-fun m!4407053 () Bool)

(assert (=> b!3852086 m!4407053))

(declare-fun m!4407055 () Bool)

(assert (=> b!3852081 m!4407055))

(declare-fun m!4407057 () Bool)

(assert (=> b!3852082 m!4407057))

(declare-fun m!4407059 () Bool)

(assert (=> b!3852087 m!4407059))

(declare-fun m!4407061 () Bool)

(assert (=> b!3852087 m!4407061))

(declare-fun m!4407063 () Bool)

(assert (=> b!3852083 m!4407063))

(declare-fun m!4407065 () Bool)

(assert (=> b!3852105 m!4407065))

(declare-fun m!4407067 () Bool)

(assert (=> b!3852094 m!4407067))

(declare-fun m!4407069 () Bool)

(assert (=> b!3852104 m!4407069))

(declare-fun m!4407071 () Bool)

(assert (=> b!3852104 m!4407071))

(declare-fun m!4407073 () Bool)

(assert (=> b!3852111 m!4407073))

(declare-fun m!4407075 () Bool)

(assert (=> b!3852092 m!4407075))

(declare-fun m!4407077 () Bool)

(assert (=> b!3852092 m!4407077))

(declare-fun m!4407079 () Bool)

(assert (=> b!3852092 m!4407079))

(declare-fun m!4407081 () Bool)

(assert (=> b!3852099 m!4407081))

(declare-fun m!4407083 () Bool)

(assert (=> b!3852099 m!4407083))

(declare-fun m!4407085 () Bool)

(assert (=> b!3852099 m!4407085))

(assert (=> b!3852099 m!4407081))

(declare-fun m!4407087 () Bool)

(assert (=> b!3852099 m!4407087))

(declare-fun m!4407089 () Bool)

(assert (=> b!3852099 m!4407089))

(declare-fun m!4407091 () Bool)

(assert (=> b!3852099 m!4407091))

(declare-fun m!4407093 () Bool)

(assert (=> b!3852099 m!4407093))

(declare-fun m!4407095 () Bool)

(assert (=> b!3852099 m!4407095))

(declare-fun m!4407097 () Bool)

(assert (=> b!3852099 m!4407097))

(declare-fun m!4407099 () Bool)

(assert (=> b!3852099 m!4407099))

(declare-fun m!4407101 () Bool)

(assert (=> b!3852099 m!4407101))

(declare-fun m!4407103 () Bool)

(assert (=> b!3852099 m!4407103))

(declare-fun m!4407105 () Bool)

(assert (=> b!3852099 m!4407105))

(assert (=> b!3852099 m!4407089))

(declare-fun m!4407107 () Bool)

(assert (=> b!3852099 m!4407107))

(declare-fun m!4407109 () Bool)

(assert (=> b!3852106 m!4407109))

(declare-fun m!4407111 () Bool)

(assert (=> b!3852106 m!4407111))

(declare-fun m!4407113 () Bool)

(assert (=> b!3852108 m!4407113))

(declare-fun m!4407115 () Bool)

(assert (=> b!3852103 m!4407115))

(declare-fun m!4407117 () Bool)

(assert (=> b!3852091 m!4407117))

(declare-fun m!4407119 () Bool)

(assert (=> b!3852093 m!4407119))

(declare-fun m!4407121 () Bool)

(assert (=> b!3852084 m!4407121))

(declare-fun m!4407123 () Bool)

(assert (=> b!3852090 m!4407123))

(declare-fun m!4407125 () Bool)

(assert (=> b!3852090 m!4407125))

(declare-fun m!4407127 () Bool)

(assert (=> b!3852097 m!4407127))

(declare-fun m!4407129 () Bool)

(assert (=> b!3852107 m!4407129))

(push 1)

(assert (not b!3852091))

(assert (not b!3852101))

(assert (not b!3852084))

(assert (not b!3852111))

(assert (not b!3852095))

(assert (not b!3852081))

(assert (not b!3852107))

(assert tp_is_empty!19403)

(assert (not b!3852087))

(assert (not b!3852104))

(assert (not b!3852088))

(assert (not b!3852110))

(assert (not b_next!104001))

(assert (not b!3852100))

(assert (not b!3852090))

(assert (not b!3852103))

(assert (not b!3852106))

(assert (not b!3852096))

(assert (not b!3852094))

(assert b_and!287755)

(assert b_and!287751)

(assert (not b!3852085))

(assert (not b!3852108))

(assert (not b!3852105))

(assert (not b_next!104007))

(assert b_and!287753)

(assert (not b_next!104011))

(assert b_and!287761)

(assert b_and!287759)

(assert (not b_next!104003))

(assert (not b_next!104005))

(assert (not b!3852093))

(assert (not b!3852092))

(assert (not b!3852083))

(assert (not b_next!104009))

(assert (not b!3852097))

(assert (not b!3852086))

(assert b_and!287757)

(assert (not b!3852082))

(assert (not b!3852099))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!104001))

(assert b_and!287755)

(assert b_and!287751)

(assert (not b_next!104009))

(assert b_and!287757)

(assert (not b_next!104007))

(assert b_and!287753)

(assert (not b_next!104011))

(assert b_and!287761)

(assert b_and!287759)

(assert (not b_next!104003))

(assert (not b_next!104005))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3852216 () Bool)

(declare-fun lt!1338012 () List!40949)

(declare-fun e!2381152 () Bool)

(assert (=> b!3852216 (= e!2381152 (or (not (= (_1!23141 lt!1337941) Nil!40825)) (= lt!1338012 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))))))

(declare-fun b!3852215 () Bool)

(declare-fun res!1559552 () Bool)

(assert (=> b!3852215 (=> (not res!1559552) (not e!2381152))))

(declare-fun size!30711 (List!40949) Int)

(assert (=> b!3852215 (= res!1559552 (= (size!30711 lt!1338012) (+ (size!30711 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (size!30711 (_1!23141 lt!1337941)))))))

(declare-fun d!1141959 () Bool)

(assert (=> d!1141959 e!2381152))

(declare-fun res!1559551 () Bool)

(assert (=> d!1141959 (=> (not res!1559551) (not e!2381152))))

(declare-fun content!6074 (List!40949) (Set Token!11760))

(assert (=> d!1141959 (= res!1559551 (= (content!6074 lt!1338012) (set.union (content!6074 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (content!6074 (_1!23141 lt!1337941)))))))

(declare-fun e!2381151 () List!40949)

(assert (=> d!1141959 (= lt!1338012 e!2381151)))

(declare-fun c!670852 () Bool)

(assert (=> d!1141959 (= c!670852 (is-Nil!40825 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))

(assert (=> d!1141959 (= (++!10379 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825) (_1!23141 lt!1337941)) lt!1338012)))

(declare-fun b!3852214 () Bool)

(assert (=> b!3852214 (= e!2381151 (Cons!40825 (h!46245 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (++!10379 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (_1!23141 lt!1337941))))))

(declare-fun b!3852213 () Bool)

(assert (=> b!3852213 (= e!2381151 (_1!23141 lt!1337941))))

(assert (= (and d!1141959 c!670852) b!3852213))

(assert (= (and d!1141959 (not c!670852)) b!3852214))

(assert (= (and d!1141959 res!1559551) b!3852215))

(assert (= (and b!3852215 res!1559552) b!3852216))

(declare-fun m!4407221 () Bool)

(assert (=> b!3852215 m!4407221))

(declare-fun m!4407223 () Bool)

(assert (=> b!3852215 m!4407223))

(declare-fun m!4407225 () Bool)

(assert (=> b!3852215 m!4407225))

(declare-fun m!4407227 () Bool)

(assert (=> d!1141959 m!4407227))

(declare-fun m!4407229 () Bool)

(assert (=> d!1141959 m!4407229))

(declare-fun m!4407231 () Bool)

(assert (=> d!1141959 m!4407231))

(declare-fun m!4407233 () Bool)

(assert (=> b!3852214 m!4407233))

(assert (=> b!3852110 d!1141959))

(declare-fun d!1141961 () Bool)

(assert (=> d!1141961 (= (isEmpty!24165 rules!2768) (is-Nil!40824 rules!2768))))

(assert (=> b!3852111 d!1141961))

(declare-fun d!1141963 () Bool)

(assert (=> d!1141963 (= (inv!54972 (tag!7171 (h!46244 rules!2768))) (= (mod (str.len (value!200498 (tag!7171 (h!46244 rules!2768)))) 2) 0))))

(assert (=> b!3852090 d!1141963))

(declare-fun d!1141965 () Bool)

(declare-fun res!1559555 () Bool)

(declare-fun e!2381155 () Bool)

(assert (=> d!1141965 (=> (not res!1559555) (not e!2381155))))

(declare-fun semiInverseModEq!2704 (Int Int) Bool)

(assert (=> d!1141965 (= res!1559555 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (h!46244 rules!2768)))))))

(assert (=> d!1141965 (= (inv!54976 (transformation!6311 (h!46244 rules!2768))) e!2381155)))

(declare-fun b!3852219 () Bool)

(declare-fun equivClasses!2603 (Int Int) Bool)

(assert (=> b!3852219 (= e!2381155 (equivClasses!2603 (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (h!46244 rules!2768)))))))

(assert (= (and d!1141965 res!1559555) b!3852219))

(declare-fun m!4407235 () Bool)

(assert (=> d!1141965 m!4407235))

(declare-fun m!4407237 () Bool)

(assert (=> b!3852219 m!4407237))

(assert (=> b!3852090 d!1141965))

(declare-fun d!1141967 () Bool)

(assert (=> d!1141967 (= (get!13507 lt!1337950) (v!39022 lt!1337950))))

(assert (=> b!3852101 d!1141967))

(declare-fun d!1141969 () Bool)

(assert (=> d!1141969 (= (head!8103 prefixTokens!80) (h!46245 prefixTokens!80))))

(assert (=> b!3852101 d!1141969))

(declare-fun b!3852266 () Bool)

(declare-fun e!2381176 () Option!8729)

(declare-fun lt!1338029 () Option!8729)

(declare-fun lt!1338028 () Option!8729)

(assert (=> b!3852266 (= e!2381176 (ite (and (is-None!8728 lt!1338029) (is-None!8728 lt!1338028)) None!8728 (ite (is-None!8728 lt!1338028) lt!1338029 (ite (is-None!8728 lt!1338029) lt!1338028 (ite (>= (size!30707 (_1!23142 (v!39022 lt!1338029))) (size!30707 (_1!23142 (v!39022 lt!1338028)))) lt!1338029 lt!1338028)))))))

(declare-fun call!282253 () Option!8729)

(assert (=> b!3852266 (= lt!1338029 call!282253)))

(assert (=> b!3852266 (= lt!1338028 (maxPrefix!3204 thiss!20629 (t!311995 rules!2768) lt!1337935))))

(declare-fun b!3852267 () Bool)

(declare-fun res!1559587 () Bool)

(declare-fun e!2381177 () Bool)

(assert (=> b!3852267 (=> (not res!1559587) (not e!2381177))))

(declare-fun lt!1338027 () Option!8729)

(assert (=> b!3852267 (= res!1559587 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))) (_2!23142 (get!13507 lt!1338027))) lt!1337935))))

(declare-fun b!3852268 () Bool)

(declare-fun res!1559590 () Bool)

(assert (=> b!3852268 (=> (not res!1559590) (not e!2381177))))

(assert (=> b!3852268 (= res!1559590 (< (size!30708 (_2!23142 (get!13507 lt!1338027))) (size!30708 lt!1337935)))))

(declare-fun d!1141971 () Bool)

(declare-fun e!2381178 () Bool)

(assert (=> d!1141971 e!2381178))

(declare-fun res!1559586 () Bool)

(assert (=> d!1141971 (=> res!1559586 e!2381178)))

(declare-fun isEmpty!24169 (Option!8729) Bool)

(assert (=> d!1141971 (= res!1559586 (isEmpty!24169 lt!1338027))))

(assert (=> d!1141971 (= lt!1338027 e!2381176)))

(declare-fun c!670861 () Bool)

(assert (=> d!1141971 (= c!670861 (and (is-Cons!40824 rules!2768) (is-Nil!40824 (t!311995 rules!2768))))))

(declare-fun lt!1338026 () Unit!58493)

(declare-fun lt!1338025 () Unit!58493)

(assert (=> d!1141971 (= lt!1338026 lt!1338025)))

(assert (=> d!1141971 (isPrefix!3410 lt!1337935 lt!1337935)))

(declare-fun lemmaIsPrefixRefl!2175 (List!40946 List!40946) Unit!58493)

(assert (=> d!1141971 (= lt!1338025 (lemmaIsPrefixRefl!2175 lt!1337935 lt!1337935))))

(declare-fun rulesValidInductive!2245 (LexerInterface!5900 List!40948) Bool)

(assert (=> d!1141971 (rulesValidInductive!2245 thiss!20629 rules!2768)))

(assert (=> d!1141971 (= (maxPrefix!3204 thiss!20629 rules!2768 lt!1337935) lt!1338027)))

(declare-fun b!3852269 () Bool)

(declare-fun res!1559589 () Bool)

(assert (=> b!3852269 (=> (not res!1559589) (not e!2381177))))

(assert (=> b!3852269 (= res!1559589 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027)))))))

(declare-fun b!3852270 () Bool)

(declare-fun res!1559592 () Bool)

(assert (=> b!3852270 (=> (not res!1559592) (not e!2381177))))

(assert (=> b!3852270 (= res!1559592 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun b!3852271 () Bool)

(declare-fun res!1559591 () Bool)

(assert (=> b!3852271 (=> (not res!1559591) (not e!2381177))))

(assert (=> b!3852271 (= res!1559591 (= (value!200499 (_1!23142 (get!13507 lt!1338027))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun bm!282248 () Bool)

(assert (=> bm!282248 (= call!282253 (maxPrefixOneRule!2286 thiss!20629 (h!46244 rules!2768) lt!1337935))))

(declare-fun b!3852272 () Bool)

(assert (=> b!3852272 (= e!2381176 call!282253)))

(declare-fun b!3852273 () Bool)

(assert (=> b!3852273 (= e!2381178 e!2381177)))

(declare-fun res!1559588 () Bool)

(assert (=> b!3852273 (=> (not res!1559588) (not e!2381177))))

(assert (=> b!3852273 (= res!1559588 (isDefined!6852 lt!1338027))))

(declare-fun b!3852274 () Bool)

(declare-fun contains!8253 (List!40948 Rule!12422) Bool)

(assert (=> b!3852274 (= e!2381177 (contains!8253 rules!2768 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))

(assert (= (and d!1141971 c!670861) b!3852272))

(assert (= (and d!1141971 (not c!670861)) b!3852266))

(assert (= (or b!3852272 b!3852266) bm!282248))

(assert (= (and d!1141971 (not res!1559586)) b!3852273))

(assert (= (and b!3852273 res!1559588) b!3852269))

(assert (= (and b!3852269 res!1559589) b!3852268))

(assert (= (and b!3852268 res!1559590) b!3852267))

(assert (= (and b!3852267 res!1559587) b!3852271))

(assert (= (and b!3852271 res!1559591) b!3852270))

(assert (= (and b!3852270 res!1559592) b!3852274))

(declare-fun m!4407239 () Bool)

(assert (=> bm!282248 m!4407239))

(declare-fun m!4407241 () Bool)

(assert (=> b!3852269 m!4407241))

(declare-fun m!4407243 () Bool)

(assert (=> b!3852269 m!4407243))

(assert (=> b!3852269 m!4407243))

(declare-fun m!4407245 () Bool)

(assert (=> b!3852269 m!4407245))

(declare-fun m!4407247 () Bool)

(assert (=> b!3852273 m!4407247))

(declare-fun m!4407249 () Bool)

(assert (=> b!3852266 m!4407249))

(assert (=> b!3852270 m!4407241))

(assert (=> b!3852270 m!4407243))

(assert (=> b!3852270 m!4407243))

(assert (=> b!3852270 m!4407245))

(assert (=> b!3852270 m!4407245))

(declare-fun m!4407251 () Bool)

(assert (=> b!3852270 m!4407251))

(assert (=> b!3852271 m!4407241))

(declare-fun m!4407253 () Bool)

(assert (=> b!3852271 m!4407253))

(assert (=> b!3852271 m!4407253))

(declare-fun m!4407255 () Bool)

(assert (=> b!3852271 m!4407255))

(declare-fun m!4407257 () Bool)

(assert (=> d!1141971 m!4407257))

(declare-fun m!4407259 () Bool)

(assert (=> d!1141971 m!4407259))

(declare-fun m!4407261 () Bool)

(assert (=> d!1141971 m!4407261))

(declare-fun m!4407263 () Bool)

(assert (=> d!1141971 m!4407263))

(assert (=> b!3852267 m!4407241))

(assert (=> b!3852267 m!4407243))

(assert (=> b!3852267 m!4407243))

(assert (=> b!3852267 m!4407245))

(assert (=> b!3852267 m!4407245))

(declare-fun m!4407265 () Bool)

(assert (=> b!3852267 m!4407265))

(assert (=> b!3852274 m!4407241))

(declare-fun m!4407267 () Bool)

(assert (=> b!3852274 m!4407267))

(assert (=> b!3852268 m!4407241))

(declare-fun m!4407269 () Bool)

(assert (=> b!3852268 m!4407269))

(assert (=> b!3852268 m!4407065))

(assert (=> b!3852091 d!1141971))

(declare-fun b!3852299 () Bool)

(declare-fun e!2381192 () Bool)

(declare-fun lt!1338037 () tuple2!40014)

(assert (=> b!3852299 (= e!2381192 (= (_2!23141 lt!1338037) suffix!1176))))

(declare-fun b!3852300 () Bool)

(declare-fun e!2381194 () Bool)

(assert (=> b!3852300 (= e!2381192 e!2381194)))

(declare-fun res!1559603 () Bool)

(assert (=> b!3852300 (= res!1559603 (< (size!30708 (_2!23141 lt!1338037)) (size!30708 suffix!1176)))))

(assert (=> b!3852300 (=> (not res!1559603) (not e!2381194))))

(declare-fun b!3852301 () Bool)

(declare-fun e!2381193 () tuple2!40014)

(declare-fun lt!1338038 () Option!8729)

(declare-fun lt!1338039 () tuple2!40014)

(assert (=> b!3852301 (= e!2381193 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338038)) (_1!23141 lt!1338039)) (_2!23141 lt!1338039)))))

(assert (=> b!3852301 (= lt!1338039 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338038))))))

(declare-fun d!1141975 () Bool)

(assert (=> d!1141975 e!2381192))

(declare-fun c!670869 () Bool)

(assert (=> d!1141975 (= c!670869 (> (size!30711 (_1!23141 lt!1338037)) 0))))

(assert (=> d!1141975 (= lt!1338037 e!2381193)))

(declare-fun c!670870 () Bool)

(assert (=> d!1141975 (= c!670870 (is-Some!8728 lt!1338038))))

(assert (=> d!1141975 (= lt!1338038 (maxPrefix!3204 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1141975 (= (lexList!1668 thiss!20629 rules!2768 suffix!1176) lt!1338037)))

(declare-fun b!3852302 () Bool)

(assert (=> b!3852302 (= e!2381193 (tuple2!40015 Nil!40825 suffix!1176))))

(declare-fun b!3852303 () Bool)

(assert (=> b!3852303 (= e!2381194 (not (isEmpty!24164 (_1!23141 lt!1338037))))))

(assert (= (and d!1141975 c!670870) b!3852301))

(assert (= (and d!1141975 (not c!670870)) b!3852302))

(assert (= (and d!1141975 c!670869) b!3852300))

(assert (= (and d!1141975 (not c!670869)) b!3852299))

(assert (= (and b!3852300 res!1559603) b!3852303))

(declare-fun m!4407287 () Bool)

(assert (=> b!3852300 m!4407287))

(assert (=> b!3852300 m!4407069))

(declare-fun m!4407289 () Bool)

(assert (=> b!3852301 m!4407289))

(declare-fun m!4407291 () Bool)

(assert (=> d!1141975 m!4407291))

(declare-fun m!4407293 () Bool)

(assert (=> d!1141975 m!4407293))

(declare-fun m!4407295 () Bool)

(assert (=> b!3852303 m!4407295))

(assert (=> b!3852081 d!1141975))

(declare-fun b!3852304 () Bool)

(declare-fun e!2381195 () Bool)

(declare-fun lt!1338040 () tuple2!40014)

(assert (=> b!3852304 (= e!2381195 (= (_2!23141 lt!1338040) lt!1337935))))

(declare-fun b!3852305 () Bool)

(declare-fun e!2381197 () Bool)

(assert (=> b!3852305 (= e!2381195 e!2381197)))

(declare-fun res!1559604 () Bool)

(assert (=> b!3852305 (= res!1559604 (< (size!30708 (_2!23141 lt!1338040)) (size!30708 lt!1337935)))))

(assert (=> b!3852305 (=> (not res!1559604) (not e!2381197))))

(declare-fun b!3852306 () Bool)

(declare-fun e!2381196 () tuple2!40014)

(declare-fun lt!1338041 () Option!8729)

(declare-fun lt!1338042 () tuple2!40014)

(assert (=> b!3852306 (= e!2381196 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338041)) (_1!23141 lt!1338042)) (_2!23141 lt!1338042)))))

(assert (=> b!3852306 (= lt!1338042 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338041))))))

(declare-fun d!1141979 () Bool)

(assert (=> d!1141979 e!2381195))

(declare-fun c!670871 () Bool)

(assert (=> d!1141979 (= c!670871 (> (size!30711 (_1!23141 lt!1338040)) 0))))

(assert (=> d!1141979 (= lt!1338040 e!2381196)))

(declare-fun c!670872 () Bool)

(assert (=> d!1141979 (= c!670872 (is-Some!8728 lt!1338041))))

(assert (=> d!1141979 (= lt!1338041 (maxPrefix!3204 thiss!20629 rules!2768 lt!1337935))))

(assert (=> d!1141979 (= (lexList!1668 thiss!20629 rules!2768 lt!1337935) lt!1338040)))

(declare-fun b!3852307 () Bool)

(assert (=> b!3852307 (= e!2381196 (tuple2!40015 Nil!40825 lt!1337935))))

(declare-fun b!3852308 () Bool)

(assert (=> b!3852308 (= e!2381197 (not (isEmpty!24164 (_1!23141 lt!1338040))))))

(assert (= (and d!1141979 c!670872) b!3852306))

(assert (= (and d!1141979 (not c!670872)) b!3852307))

(assert (= (and d!1141979 c!670871) b!3852305))

(assert (= (and d!1141979 (not c!670871)) b!3852304))

(assert (= (and b!3852305 res!1559604) b!3852308))

(declare-fun m!4407297 () Bool)

(assert (=> b!3852305 m!4407297))

(assert (=> b!3852305 m!4407065))

(declare-fun m!4407299 () Bool)

(assert (=> b!3852306 m!4407299))

(declare-fun m!4407301 () Bool)

(assert (=> d!1141979 m!4407301))

(assert (=> d!1141979 m!4407117))

(declare-fun m!4407303 () Bool)

(assert (=> b!3852308 m!4407303))

(assert (=> b!3852092 d!1141979))

(declare-fun e!2381199 () Bool)

(declare-fun lt!1338043 () List!40949)

(declare-fun b!3852312 () Bool)

(assert (=> b!3852312 (= e!2381199 (or (not (= suffixTokens!72 Nil!40825)) (= lt!1338043 prefixTokens!80)))))

(declare-fun b!3852311 () Bool)

(declare-fun res!1559606 () Bool)

(assert (=> b!3852311 (=> (not res!1559606) (not e!2381199))))

(assert (=> b!3852311 (= res!1559606 (= (size!30711 lt!1338043) (+ (size!30711 prefixTokens!80) (size!30711 suffixTokens!72))))))

(declare-fun d!1141981 () Bool)

(assert (=> d!1141981 e!2381199))

(declare-fun res!1559605 () Bool)

(assert (=> d!1141981 (=> (not res!1559605) (not e!2381199))))

(assert (=> d!1141981 (= res!1559605 (= (content!6074 lt!1338043) (set.union (content!6074 prefixTokens!80) (content!6074 suffixTokens!72))))))

(declare-fun e!2381198 () List!40949)

(assert (=> d!1141981 (= lt!1338043 e!2381198)))

(declare-fun c!670873 () Bool)

(assert (=> d!1141981 (= c!670873 (is-Nil!40825 prefixTokens!80))))

(assert (=> d!1141981 (= (++!10379 prefixTokens!80 suffixTokens!72) lt!1338043)))

(declare-fun b!3852310 () Bool)

(assert (=> b!3852310 (= e!2381198 (Cons!40825 (h!46245 prefixTokens!80) (++!10379 (t!311996 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3852309 () Bool)

(assert (=> b!3852309 (= e!2381198 suffixTokens!72)))

(assert (= (and d!1141981 c!670873) b!3852309))

(assert (= (and d!1141981 (not c!670873)) b!3852310))

(assert (= (and d!1141981 res!1559605) b!3852311))

(assert (= (and b!3852311 res!1559606) b!3852312))

(declare-fun m!4407305 () Bool)

(assert (=> b!3852311 m!4407305))

(declare-fun m!4407307 () Bool)

(assert (=> b!3852311 m!4407307))

(declare-fun m!4407309 () Bool)

(assert (=> b!3852311 m!4407309))

(declare-fun m!4407311 () Bool)

(assert (=> d!1141981 m!4407311))

(declare-fun m!4407313 () Bool)

(assert (=> d!1141981 m!4407313))

(declare-fun m!4407315 () Bool)

(assert (=> d!1141981 m!4407315))

(declare-fun m!4407317 () Bool)

(assert (=> b!3852310 m!4407317))

(assert (=> b!3852092 d!1141981))

(declare-fun b!3852323 () Bool)

(declare-fun res!1559612 () Bool)

(declare-fun e!2381205 () Bool)

(assert (=> b!3852323 (=> (not res!1559612) (not e!2381205))))

(declare-fun lt!1338046 () List!40946)

(assert (=> b!3852323 (= res!1559612 (= (size!30708 lt!1338046) (+ (size!30708 prefix!426) (size!30708 suffix!1176))))))

(declare-fun b!3852321 () Bool)

(declare-fun e!2381204 () List!40946)

(assert (=> b!3852321 (= e!2381204 suffix!1176)))

(declare-fun b!3852324 () Bool)

(assert (=> b!3852324 (= e!2381205 (or (not (= suffix!1176 Nil!40822)) (= lt!1338046 prefix!426)))))

(declare-fun d!1141983 () Bool)

(assert (=> d!1141983 e!2381205))

(declare-fun res!1559611 () Bool)

(assert (=> d!1141983 (=> (not res!1559611) (not e!2381205))))

(declare-fun content!6075 (List!40946) (Set C!22618))

(assert (=> d!1141983 (= res!1559611 (= (content!6075 lt!1338046) (set.union (content!6075 prefix!426) (content!6075 suffix!1176))))))

(assert (=> d!1141983 (= lt!1338046 e!2381204)))

(declare-fun c!670876 () Bool)

(assert (=> d!1141983 (= c!670876 (is-Nil!40822 prefix!426))))

(assert (=> d!1141983 (= (++!10380 prefix!426 suffix!1176) lt!1338046)))

(declare-fun b!3852322 () Bool)

(assert (=> b!3852322 (= e!2381204 (Cons!40822 (h!46242 prefix!426) (++!10380 (t!311993 prefix!426) suffix!1176)))))

(assert (= (and d!1141983 c!670876) b!3852321))

(assert (= (and d!1141983 (not c!670876)) b!3852322))

(assert (= (and d!1141983 res!1559611) b!3852323))

(assert (= (and b!3852323 res!1559612) b!3852324))

(declare-fun m!4407319 () Bool)

(assert (=> b!3852323 m!4407319))

(assert (=> b!3852323 m!4407127))

(assert (=> b!3852323 m!4407069))

(declare-fun m!4407321 () Bool)

(assert (=> d!1141983 m!4407321))

(declare-fun m!4407323 () Bool)

(assert (=> d!1141983 m!4407323))

(declare-fun m!4407325 () Bool)

(assert (=> d!1141983 m!4407325))

(declare-fun m!4407327 () Bool)

(assert (=> b!3852322 m!4407327))

(assert (=> b!3852092 d!1141983))

(declare-fun b!3852335 () Bool)

(declare-fun e!2381214 () Bool)

(declare-fun inv!15 (TokenValue!6541) Bool)

(assert (=> b!3852335 (= e!2381214 (inv!15 (value!200499 (h!46245 prefixTokens!80))))))

(declare-fun d!1141985 () Bool)

(declare-fun c!670882 () Bool)

(assert (=> d!1141985 (= c!670882 (is-IntegerValue!19623 (value!200499 (h!46245 prefixTokens!80))))))

(declare-fun e!2381212 () Bool)

(assert (=> d!1141985 (= (inv!21 (value!200499 (h!46245 prefixTokens!80))) e!2381212)))

(declare-fun b!3852336 () Bool)

(declare-fun res!1559615 () Bool)

(assert (=> b!3852336 (=> res!1559615 e!2381214)))

(assert (=> b!3852336 (= res!1559615 (not (is-IntegerValue!19625 (value!200499 (h!46245 prefixTokens!80)))))))

(declare-fun e!2381213 () Bool)

(assert (=> b!3852336 (= e!2381213 e!2381214)))

(declare-fun b!3852337 () Bool)

(declare-fun inv!17 (TokenValue!6541) Bool)

(assert (=> b!3852337 (= e!2381213 (inv!17 (value!200499 (h!46245 prefixTokens!80))))))

(declare-fun b!3852338 () Bool)

(assert (=> b!3852338 (= e!2381212 e!2381213)))

(declare-fun c!670881 () Bool)

(assert (=> b!3852338 (= c!670881 (is-IntegerValue!19624 (value!200499 (h!46245 prefixTokens!80))))))

(declare-fun b!3852339 () Bool)

(declare-fun inv!16 (TokenValue!6541) Bool)

(assert (=> b!3852339 (= e!2381212 (inv!16 (value!200499 (h!46245 prefixTokens!80))))))

(assert (= (and d!1141985 c!670882) b!3852339))

(assert (= (and d!1141985 (not c!670882)) b!3852338))

(assert (= (and b!3852338 c!670881) b!3852337))

(assert (= (and b!3852338 (not c!670881)) b!3852336))

(assert (= (and b!3852336 (not res!1559615)) b!3852335))

(declare-fun m!4407329 () Bool)

(assert (=> b!3852335 m!4407329))

(declare-fun m!4407331 () Bool)

(assert (=> b!3852337 m!4407331))

(declare-fun m!4407333 () Bool)

(assert (=> b!3852339 m!4407333))

(assert (=> b!3852103 d!1141985))

(declare-fun d!1141987 () Bool)

(declare-fun res!1559618 () Bool)

(declare-fun e!2381217 () Bool)

(assert (=> d!1141987 (=> (not res!1559618) (not e!2381217))))

(declare-fun rulesValid!2439 (LexerInterface!5900 List!40948) Bool)

(assert (=> d!1141987 (= res!1559618 (rulesValid!2439 thiss!20629 rules!2768))))

(assert (=> d!1141987 (= (rulesInvariant!5243 thiss!20629 rules!2768) e!2381217)))

(declare-fun b!3852342 () Bool)

(declare-datatypes ((List!40954 0))(
  ( (Nil!40830) (Cons!40830 (h!46250 String!46425) (t!312067 List!40954)) )
))
(declare-fun noDuplicateTag!2440 (LexerInterface!5900 List!40948 List!40954) Bool)

(assert (=> b!3852342 (= e!2381217 (noDuplicateTag!2440 thiss!20629 rules!2768 Nil!40830))))

(assert (= (and d!1141987 res!1559618) b!3852342))

(declare-fun m!4407335 () Bool)

(assert (=> d!1141987 m!4407335))

(declare-fun m!4407337 () Bool)

(assert (=> b!3852342 m!4407337))

(assert (=> b!3852082 d!1141987))

(declare-fun d!1141989 () Bool)

(assert (=> d!1141989 (= (isDefined!6852 lt!1337950) (not (isEmpty!24169 lt!1337950)))))

(declare-fun bs!582891 () Bool)

(assert (= bs!582891 d!1141989))

(declare-fun m!4407339 () Bool)

(assert (=> bs!582891 m!4407339))

(assert (=> b!3852093 d!1141989))

(declare-fun d!1141991 () Bool)

(declare-fun lt!1338049 () Int)

(assert (=> d!1141991 (>= lt!1338049 0)))

(declare-fun e!2381220 () Int)

(assert (=> d!1141991 (= lt!1338049 e!2381220)))

(declare-fun c!670885 () Bool)

(assert (=> d!1141991 (= c!670885 (is-Nil!40822 suffix!1176))))

(assert (=> d!1141991 (= (size!30708 suffix!1176) lt!1338049)))

(declare-fun b!3852347 () Bool)

(assert (=> b!3852347 (= e!2381220 0)))

(declare-fun b!3852348 () Bool)

(assert (=> b!3852348 (= e!2381220 (+ 1 (size!30708 (t!311993 suffix!1176))))))

(assert (= (and d!1141991 c!670885) b!3852347))

(assert (= (and d!1141991 (not c!670885)) b!3852348))

(declare-fun m!4407341 () Bool)

(assert (=> b!3852348 m!4407341))

(assert (=> b!3852104 d!1141991))

(declare-fun d!1141993 () Bool)

(declare-fun lt!1338050 () Int)

(assert (=> d!1141993 (>= lt!1338050 0)))

(declare-fun e!2381221 () Int)

(assert (=> d!1141993 (= lt!1338050 e!2381221)))

(declare-fun c!670886 () Bool)

(assert (=> d!1141993 (= c!670886 (is-Nil!40822 (_2!23142 (v!39022 lt!1337950))))))

(assert (=> d!1141993 (= (size!30708 (_2!23142 (v!39022 lt!1337950))) lt!1338050)))

(declare-fun b!3852349 () Bool)

(assert (=> b!3852349 (= e!2381221 0)))

(declare-fun b!3852350 () Bool)

(assert (=> b!3852350 (= e!2381221 (+ 1 (size!30708 (t!311993 (_2!23142 (v!39022 lt!1337950))))))))

(assert (= (and d!1141993 c!670886) b!3852349))

(assert (= (and d!1141993 (not c!670886)) b!3852350))

(declare-fun m!4407343 () Bool)

(assert (=> b!3852350 m!4407343))

(assert (=> b!3852104 d!1141993))

(declare-fun b!3852351 () Bool)

(declare-fun e!2381224 () Bool)

(assert (=> b!3852351 (= e!2381224 (inv!15 (value!200499 (h!46245 suffixTokens!72))))))

(declare-fun d!1141995 () Bool)

(declare-fun c!670888 () Bool)

(assert (=> d!1141995 (= c!670888 (is-IntegerValue!19623 (value!200499 (h!46245 suffixTokens!72))))))

(declare-fun e!2381222 () Bool)

(assert (=> d!1141995 (= (inv!21 (value!200499 (h!46245 suffixTokens!72))) e!2381222)))

(declare-fun b!3852352 () Bool)

(declare-fun res!1559619 () Bool)

(assert (=> b!3852352 (=> res!1559619 e!2381224)))

(assert (=> b!3852352 (= res!1559619 (not (is-IntegerValue!19625 (value!200499 (h!46245 suffixTokens!72)))))))

(declare-fun e!2381223 () Bool)

(assert (=> b!3852352 (= e!2381223 e!2381224)))

(declare-fun b!3852353 () Bool)

(assert (=> b!3852353 (= e!2381223 (inv!17 (value!200499 (h!46245 suffixTokens!72))))))

(declare-fun b!3852354 () Bool)

(assert (=> b!3852354 (= e!2381222 e!2381223)))

(declare-fun c!670887 () Bool)

(assert (=> b!3852354 (= c!670887 (is-IntegerValue!19624 (value!200499 (h!46245 suffixTokens!72))))))

(declare-fun b!3852355 () Bool)

(assert (=> b!3852355 (= e!2381222 (inv!16 (value!200499 (h!46245 suffixTokens!72))))))

(assert (= (and d!1141995 c!670888) b!3852355))

(assert (= (and d!1141995 (not c!670888)) b!3852354))

(assert (= (and b!3852354 c!670887) b!3852353))

(assert (= (and b!3852354 (not c!670887)) b!3852352))

(assert (= (and b!3852352 (not res!1559619)) b!3852351))

(declare-fun m!4407345 () Bool)

(assert (=> b!3852351 m!4407345))

(declare-fun m!4407347 () Bool)

(assert (=> b!3852353 m!4407347))

(declare-fun m!4407349 () Bool)

(assert (=> b!3852355 m!4407349))

(assert (=> b!3852083 d!1141995))

(declare-fun d!1141997 () Bool)

(assert (=> d!1141997 (= (isEmpty!24164 prefixTokens!80) (is-Nil!40825 prefixTokens!80))))

(assert (=> b!3852094 d!1141997))

(declare-fun d!1141999 () Bool)

(declare-fun lt!1338051 () Int)

(assert (=> d!1141999 (>= lt!1338051 0)))

(declare-fun e!2381225 () Int)

(assert (=> d!1141999 (= lt!1338051 e!2381225)))

(declare-fun c!670889 () Bool)

(assert (=> d!1141999 (= c!670889 (is-Nil!40822 lt!1337935))))

(assert (=> d!1141999 (= (size!30708 lt!1337935) lt!1338051)))

(declare-fun b!3852356 () Bool)

(assert (=> b!3852356 (= e!2381225 0)))

(declare-fun b!3852357 () Bool)

(assert (=> b!3852357 (= e!2381225 (+ 1 (size!30708 (t!311993 lt!1337935))))))

(assert (= (and d!1141999 c!670889) b!3852356))

(assert (= (and d!1141999 (not c!670889)) b!3852357))

(declare-fun m!4407351 () Bool)

(assert (=> b!3852357 m!4407351))

(assert (=> b!3852105 d!1141999))

(declare-fun d!1142001 () Bool)

(declare-fun res!1559624 () Bool)

(declare-fun e!2381228 () Bool)

(assert (=> d!1142001 (=> (not res!1559624) (not e!2381228))))

(assert (=> d!1142001 (= res!1559624 (not (isEmpty!24163 (originalCharacters!6911 (h!46245 suffixTokens!72)))))))

(assert (=> d!1142001 (= (inv!54975 (h!46245 suffixTokens!72)) e!2381228)))

(declare-fun b!3852362 () Bool)

(declare-fun res!1559625 () Bool)

(assert (=> b!3852362 (=> (not res!1559625) (not e!2381228))))

(declare-fun dynLambda!17615 (Int TokenValue!6541) BalanceConc!24638)

(assert (=> b!3852362 (= res!1559625 (= (originalCharacters!6911 (h!46245 suffixTokens!72)) (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(declare-fun b!3852363 () Bool)

(assert (=> b!3852363 (= e!2381228 (= (size!30707 (h!46245 suffixTokens!72)) (size!30708 (originalCharacters!6911 (h!46245 suffixTokens!72)))))))

(assert (= (and d!1142001 res!1559624) b!3852362))

(assert (= (and b!3852362 res!1559625) b!3852363))

(declare-fun b_lambda!112591 () Bool)

(assert (=> (not b_lambda!112591) (not b!3852362)))

(declare-fun t!312002 () Bool)

(declare-fun tb!222353 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312002) tb!222353))

(declare-fun b!3852368 () Bool)

(declare-fun e!2381231 () Bool)

(declare-fun tp!1167703 () Bool)

(declare-fun inv!54979 (Conc!12522) Bool)

(assert (=> b!3852368 (= e!2381231 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))) tp!1167703))))

(declare-fun result!270914 () Bool)

(declare-fun inv!54980 (BalanceConc!24638) Bool)

(assert (=> tb!222353 (= result!270914 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))) e!2381231))))

(assert (= tb!222353 b!3852368))

(declare-fun m!4407353 () Bool)

(assert (=> b!3852368 m!4407353))

(declare-fun m!4407355 () Bool)

(assert (=> tb!222353 m!4407355))

(assert (=> b!3852362 t!312002))

(declare-fun b_and!287775 () Bool)

(assert (= b_and!287753 (and (=> t!312002 result!270914) b_and!287775)))

(declare-fun t!312004 () Bool)

(declare-fun tb!222355 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312004) tb!222355))

(declare-fun result!270918 () Bool)

(assert (= result!270918 result!270914))

(assert (=> b!3852362 t!312004))

(declare-fun b_and!287777 () Bool)

(assert (= b_and!287757 (and (=> t!312004 result!270918) b_and!287777)))

(declare-fun t!312006 () Bool)

(declare-fun tb!222357 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312006) tb!222357))

(declare-fun result!270920 () Bool)

(assert (= result!270920 result!270914))

(assert (=> b!3852362 t!312006))

(declare-fun b_and!287779 () Bool)

(assert (= b_and!287761 (and (=> t!312006 result!270920) b_and!287779)))

(declare-fun m!4407357 () Bool)

(assert (=> d!1142001 m!4407357))

(declare-fun m!4407359 () Bool)

(assert (=> b!3852362 m!4407359))

(assert (=> b!3852362 m!4407359))

(declare-fun m!4407361 () Bool)

(assert (=> b!3852362 m!4407361))

(declare-fun m!4407363 () Bool)

(assert (=> b!3852363 m!4407363))

(assert (=> b!3852084 d!1142001))

(declare-fun d!1142003 () Bool)

(assert (=> d!1142003 (= (inv!54972 (tag!7171 (rule!9167 (h!46245 prefixTokens!80)))) (= (mod (str.len (value!200498 (tag!7171 (rule!9167 (h!46245 prefixTokens!80))))) 2) 0))))

(assert (=> b!3852106 d!1142003))

(declare-fun d!1142005 () Bool)

(declare-fun res!1559626 () Bool)

(declare-fun e!2381232 () Bool)

(assert (=> d!1142005 (=> (not res!1559626) (not e!2381232))))

(assert (=> d!1142005 (= res!1559626 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))))))

(assert (=> d!1142005 (= (inv!54976 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) e!2381232)))

(declare-fun b!3852369 () Bool)

(assert (=> b!3852369 (= e!2381232 (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))))))

(assert (= (and d!1142005 res!1559626) b!3852369))

(declare-fun m!4407365 () Bool)

(assert (=> d!1142005 m!4407365))

(declare-fun m!4407367 () Bool)

(assert (=> b!3852369 m!4407367))

(assert (=> b!3852106 d!1142005))

(declare-fun d!1142007 () Bool)

(assert (=> d!1142007 (= (isEmpty!24163 prefix!426) (is-Nil!40822 prefix!426))))

(assert (=> b!3852085 d!1142007))

(declare-fun d!1142009 () Bool)

(declare-fun lt!1338052 () Int)

(assert (=> d!1142009 (>= lt!1338052 0)))

(declare-fun e!2381233 () Int)

(assert (=> d!1142009 (= lt!1338052 e!2381233)))

(declare-fun c!670890 () Bool)

(assert (=> d!1142009 (= c!670890 (is-Nil!40822 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142009 (= (size!30708 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950)))) lt!1338052)))

(declare-fun b!3852370 () Bool)

(assert (=> b!3852370 (= e!2381233 0)))

(declare-fun b!3852371 () Bool)

(assert (=> b!3852371 (= e!2381233 (+ 1 (size!30708 (t!311993 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950)))))))))

(assert (= (and d!1142009 c!670890) b!3852370))

(assert (= (and d!1142009 (not c!670890)) b!3852371))

(declare-fun m!4407369 () Bool)

(assert (=> b!3852371 m!4407369))

(assert (=> b!3852107 d!1142009))

(declare-fun b!3852401 () Bool)

(declare-fun res!1559645 () Bool)

(declare-fun e!2381251 () Bool)

(assert (=> b!3852401 (=> res!1559645 e!2381251)))

(assert (=> b!3852401 (= res!1559645 (not (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun e!2381252 () Bool)

(assert (=> b!3852401 (= e!2381252 e!2381251)))

(declare-fun b!3852402 () Bool)

(declare-fun res!1559648 () Bool)

(declare-fun e!2381250 () Bool)

(assert (=> b!3852402 (=> res!1559648 e!2381250)))

(declare-fun tail!5826 (List!40946) List!40946)

(assert (=> b!3852402 (= res!1559648 (not (isEmpty!24163 (tail!5826 lt!1337934))))))

(declare-fun b!3852403 () Bool)

(declare-fun res!1559644 () Bool)

(declare-fun e!2381254 () Bool)

(assert (=> b!3852403 (=> (not res!1559644) (not e!2381254))))

(declare-fun call!282257 () Bool)

(assert (=> b!3852403 (= res!1559644 (not call!282257))))

(declare-fun b!3852404 () Bool)

(declare-fun e!2381249 () Bool)

(declare-fun derivativeStep!3403 (Regex!11216 C!22618) Regex!11216)

(declare-fun head!8105 (List!40946) C!22618)

(assert (=> b!3852404 (= e!2381249 (matchR!5363 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)) (tail!5826 lt!1337934)))))

(declare-fun b!3852405 () Bool)

(declare-fun e!2381248 () Bool)

(assert (=> b!3852405 (= e!2381251 e!2381248)))

(declare-fun res!1559650 () Bool)

(assert (=> b!3852405 (=> (not res!1559650) (not e!2381248))))

(declare-fun lt!1338055 () Bool)

(assert (=> b!3852405 (= res!1559650 (not lt!1338055))))

(declare-fun b!3852406 () Bool)

(assert (=> b!3852406 (= e!2381248 e!2381250)))

(declare-fun res!1559646 () Bool)

(assert (=> b!3852406 (=> res!1559646 e!2381250)))

(assert (=> b!3852406 (= res!1559646 call!282257)))

(declare-fun b!3852407 () Bool)

(declare-fun e!2381253 () Bool)

(assert (=> b!3852407 (= e!2381253 (= lt!1338055 call!282257))))

(declare-fun b!3852408 () Bool)

(declare-fun nullable!3904 (Regex!11216) Bool)

(assert (=> b!3852408 (= e!2381249 (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun d!1142011 () Bool)

(assert (=> d!1142011 e!2381253))

(declare-fun c!670899 () Bool)

(assert (=> d!1142011 (= c!670899 (is-EmptyExpr!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142011 (= lt!1338055 e!2381249)))

(declare-fun c!670897 () Bool)

(assert (=> d!1142011 (= c!670897 (isEmpty!24163 lt!1337934))))

(declare-fun validRegex!5103 (Regex!11216) Bool)

(assert (=> d!1142011 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142011 (= (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337934) lt!1338055)))

(declare-fun b!3852400 () Bool)

(declare-fun res!1559643 () Bool)

(assert (=> b!3852400 (=> (not res!1559643) (not e!2381254))))

(assert (=> b!3852400 (= res!1559643 (isEmpty!24163 (tail!5826 lt!1337934)))))

(declare-fun b!3852409 () Bool)

(assert (=> b!3852409 (= e!2381253 e!2381252)))

(declare-fun c!670898 () Bool)

(assert (=> b!3852409 (= c!670898 (is-EmptyLang!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3852410 () Bool)

(assert (=> b!3852410 (= e!2381250 (not (= (head!8105 lt!1337934) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))))

(declare-fun bm!282252 () Bool)

(assert (=> bm!282252 (= call!282257 (isEmpty!24163 lt!1337934))))

(declare-fun b!3852411 () Bool)

(assert (=> b!3852411 (= e!2381254 (= (head!8105 lt!1337934) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun b!3852412 () Bool)

(declare-fun res!1559649 () Bool)

(assert (=> b!3852412 (=> res!1559649 e!2381251)))

(assert (=> b!3852412 (= res!1559649 e!2381254)))

(declare-fun res!1559647 () Bool)

(assert (=> b!3852412 (=> (not res!1559647) (not e!2381254))))

(assert (=> b!3852412 (= res!1559647 lt!1338055)))

(declare-fun b!3852413 () Bool)

(assert (=> b!3852413 (= e!2381252 (not lt!1338055))))

(assert (= (and d!1142011 c!670897) b!3852408))

(assert (= (and d!1142011 (not c!670897)) b!3852404))

(assert (= (and d!1142011 c!670899) b!3852407))

(assert (= (and d!1142011 (not c!670899)) b!3852409))

(assert (= (and b!3852409 c!670898) b!3852413))

(assert (= (and b!3852409 (not c!670898)) b!3852401))

(assert (= (and b!3852401 (not res!1559645)) b!3852412))

(assert (= (and b!3852412 res!1559647) b!3852403))

(assert (= (and b!3852403 res!1559644) b!3852400))

(assert (= (and b!3852400 res!1559643) b!3852411))

(assert (= (and b!3852412 (not res!1559649)) b!3852405))

(assert (= (and b!3852405 res!1559650) b!3852406))

(assert (= (and b!3852406 (not res!1559646)) b!3852402))

(assert (= (and b!3852402 (not res!1559648)) b!3852410))

(assert (= (or b!3852407 b!3852403 b!3852406) bm!282252))

(declare-fun m!4407371 () Bool)

(assert (=> d!1142011 m!4407371))

(declare-fun m!4407373 () Bool)

(assert (=> d!1142011 m!4407373))

(assert (=> bm!282252 m!4407371))

(declare-fun m!4407375 () Bool)

(assert (=> b!3852400 m!4407375))

(assert (=> b!3852400 m!4407375))

(declare-fun m!4407377 () Bool)

(assert (=> b!3852400 m!4407377))

(declare-fun m!4407379 () Bool)

(assert (=> b!3852411 m!4407379))

(assert (=> b!3852410 m!4407379))

(assert (=> b!3852402 m!4407375))

(assert (=> b!3852402 m!4407375))

(assert (=> b!3852402 m!4407377))

(declare-fun m!4407381 () Bool)

(assert (=> b!3852408 m!4407381))

(assert (=> b!3852404 m!4407379))

(assert (=> b!3852404 m!4407379))

(declare-fun m!4407383 () Bool)

(assert (=> b!3852404 m!4407383))

(assert (=> b!3852404 m!4407375))

(assert (=> b!3852404 m!4407383))

(assert (=> b!3852404 m!4407375))

(declare-fun m!4407385 () Bool)

(assert (=> b!3852404 m!4407385))

(assert (=> b!3852086 d!1142011))

(declare-fun b!3852434 () Bool)

(declare-fun e!2381266 () Option!8729)

(assert (=> b!3852434 (= e!2381266 None!8728)))

(declare-fun b!3852435 () Bool)

(declare-fun e!2381264 () Bool)

(declare-fun e!2381263 () Bool)

(assert (=> b!3852435 (= e!2381264 e!2381263)))

(declare-fun res!1559670 () Bool)

(assert (=> b!3852435 (=> (not res!1559670) (not e!2381263))))

(declare-fun lt!1338072 () Option!8729)

(assert (=> b!3852435 (= res!1559670 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))

(declare-fun b!3852436 () Bool)

(declare-datatypes ((tuple2!40022 0))(
  ( (tuple2!40023 (_1!23145 List!40946) (_2!23145 List!40946)) )
))
(declare-fun lt!1338071 () tuple2!40022)

(declare-fun size!30712 (BalanceConc!24638) Int)

(assert (=> b!3852436 (= e!2381266 (Some!8728 (tuple2!40017 (Token!11761 (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 (_1!23145 lt!1338071))) (rule!9167 (_1!23142 (v!39022 lt!1337950))) (size!30712 (seqFromList!4582 (_1!23145 lt!1338071))) (_1!23145 lt!1338071)) (_2!23145 lt!1338071))))))

(declare-fun lt!1338073 () Unit!58493)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1144 (Regex!11216 List!40946) Unit!58493)

(assert (=> b!3852436 (= lt!1338073 (longestMatchIsAcceptedByMatchOrIsEmpty!1144 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337935))))

(declare-fun res!1559669 () Bool)

(declare-fun findLongestMatchInner!1171 (Regex!11216 List!40946 Int List!40946 List!40946 Int) tuple2!40022)

(assert (=> b!3852436 (= res!1559669 (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(declare-fun e!2381265 () Bool)

(assert (=> b!3852436 (=> res!1559669 e!2381265)))

(assert (=> b!3852436 e!2381265))

(declare-fun lt!1338074 () Unit!58493)

(assert (=> b!3852436 (= lt!1338074 lt!1338073)))

(declare-fun lt!1338070 () Unit!58493)

(declare-fun lemmaSemiInverse!1677 (TokenValueInjection!12510 BalanceConc!24638) Unit!58493)

(assert (=> b!3852436 (= lt!1338070 (lemmaSemiInverse!1677 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 (_1!23145 lt!1338071))))))

(declare-fun b!3852437 () Bool)

(declare-fun res!1559666 () Bool)

(assert (=> b!3852437 (=> (not res!1559666) (not e!2381263))))

(assert (=> b!3852437 (= res!1559666 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))) (_2!23142 (get!13507 lt!1338072))) lt!1337935))))

(declare-fun b!3852438 () Bool)

(declare-fun res!1559671 () Bool)

(assert (=> b!3852438 (=> (not res!1559671) (not e!2381263))))

(assert (=> b!3852438 (= res!1559671 (= (rule!9167 (_1!23142 (get!13507 lt!1338072))) (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(declare-fun b!3852439 () Bool)

(declare-fun res!1559668 () Bool)

(assert (=> b!3852439 (=> (not res!1559668) (not e!2381263))))

(assert (=> b!3852439 (= res!1559668 (< (size!30708 (_2!23142 (get!13507 lt!1338072))) (size!30708 lt!1337935)))))

(declare-fun b!3852441 () Bool)

(declare-fun res!1559667 () Bool)

(assert (=> b!3852441 (=> (not res!1559667) (not e!2381263))))

(assert (=> b!3852441 (= res!1559667 (= (value!200499 (_1!23142 (get!13507 lt!1338072))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))))))))

(declare-fun b!3852442 () Bool)

(assert (=> b!3852442 (= e!2381263 (= (size!30707 (_1!23142 (get!13507 lt!1338072))) (size!30708 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072))))))))

(declare-fun d!1142013 () Bool)

(assert (=> d!1142013 e!2381264))

(declare-fun res!1559665 () Bool)

(assert (=> d!1142013 (=> res!1559665 e!2381264)))

(assert (=> d!1142013 (= res!1559665 (isEmpty!24169 lt!1338072))))

(assert (=> d!1142013 (= lt!1338072 e!2381266)))

(declare-fun c!670902 () Bool)

(assert (=> d!1142013 (= c!670902 (isEmpty!24163 (_1!23145 lt!1338071)))))

(declare-fun findLongestMatch!1084 (Regex!11216 List!40946) tuple2!40022)

(assert (=> d!1142013 (= lt!1338071 (findLongestMatch!1084 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337935))))

(assert (=> d!1142013 (ruleValid!2263 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142013 (= (maxPrefixOneRule!2286 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337935) lt!1338072)))

(declare-fun b!3852440 () Bool)

(assert (=> b!3852440 (= e!2381265 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(assert (= (and d!1142013 c!670902) b!3852434))

(assert (= (and d!1142013 (not c!670902)) b!3852436))

(assert (= (and b!3852436 (not res!1559669)) b!3852440))

(assert (= (and d!1142013 (not res!1559665)) b!3852435))

(assert (= (and b!3852435 res!1559670) b!3852437))

(assert (= (and b!3852437 res!1559666) b!3852439))

(assert (= (and b!3852439 res!1559668) b!3852438))

(assert (= (and b!3852438 res!1559671) b!3852441))

(assert (= (and b!3852441 res!1559667) b!3852442))

(declare-fun m!4407387 () Bool)

(assert (=> b!3852436 m!4407387))

(assert (=> b!3852436 m!4407065))

(declare-fun m!4407389 () Bool)

(assert (=> b!3852436 m!4407389))

(declare-fun m!4407391 () Bool)

(assert (=> b!3852436 m!4407391))

(declare-fun m!4407393 () Bool)

(assert (=> b!3852436 m!4407393))

(declare-fun m!4407395 () Bool)

(assert (=> b!3852436 m!4407395))

(assert (=> b!3852436 m!4407391))

(assert (=> b!3852436 m!4407391))

(declare-fun m!4407397 () Bool)

(assert (=> b!3852436 m!4407397))

(declare-fun m!4407399 () Bool)

(assert (=> b!3852436 m!4407399))

(assert (=> b!3852436 m!4407065))

(assert (=> b!3852436 m!4407387))

(assert (=> b!3852436 m!4407391))

(declare-fun m!4407401 () Bool)

(assert (=> b!3852436 m!4407401))

(declare-fun m!4407403 () Bool)

(assert (=> d!1142013 m!4407403))

(declare-fun m!4407405 () Bool)

(assert (=> d!1142013 m!4407405))

(declare-fun m!4407407 () Bool)

(assert (=> d!1142013 m!4407407))

(assert (=> d!1142013 m!4407101))

(declare-fun m!4407409 () Bool)

(assert (=> b!3852442 m!4407409))

(declare-fun m!4407411 () Bool)

(assert (=> b!3852442 m!4407411))

(assert (=> b!3852438 m!4407409))

(assert (=> b!3852437 m!4407409))

(declare-fun m!4407413 () Bool)

(assert (=> b!3852437 m!4407413))

(assert (=> b!3852437 m!4407413))

(declare-fun m!4407415 () Bool)

(assert (=> b!3852437 m!4407415))

(assert (=> b!3852437 m!4407415))

(declare-fun m!4407417 () Bool)

(assert (=> b!3852437 m!4407417))

(assert (=> b!3852439 m!4407409))

(declare-fun m!4407419 () Bool)

(assert (=> b!3852439 m!4407419))

(assert (=> b!3852439 m!4407065))

(assert (=> b!3852440 m!4407387))

(assert (=> b!3852440 m!4407065))

(assert (=> b!3852440 m!4407387))

(assert (=> b!3852440 m!4407065))

(assert (=> b!3852440 m!4407389))

(declare-fun m!4407421 () Bool)

(assert (=> b!3852440 m!4407421))

(assert (=> b!3852435 m!4407409))

(assert (=> b!3852435 m!4407413))

(assert (=> b!3852435 m!4407413))

(assert (=> b!3852435 m!4407415))

(assert (=> b!3852435 m!4407415))

(declare-fun m!4407423 () Bool)

(assert (=> b!3852435 m!4407423))

(assert (=> b!3852441 m!4407409))

(declare-fun m!4407425 () Bool)

(assert (=> b!3852441 m!4407425))

(assert (=> b!3852441 m!4407425))

(declare-fun m!4407427 () Bool)

(assert (=> b!3852441 m!4407427))

(assert (=> b!3852086 d!1142013))

(declare-fun d!1142015 () Bool)

(assert (=> d!1142015 (= (maxPrefixOneRule!2286 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337935) (Some!8728 (tuple2!40017 (Token!11761 (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 lt!1337934)) (rule!9167 (_1!23142 (v!39022 lt!1337950))) (size!30708 lt!1337934) lt!1337934) (_2!23142 (v!39022 lt!1337950)))))))

(declare-fun lt!1338088 () Unit!58493)

(declare-fun choose!22673 (LexerInterface!5900 List!40948 List!40946 List!40946 List!40946 Rule!12422) Unit!58493)

(assert (=> d!1142015 (= lt!1338088 (choose!22673 thiss!20629 rules!2768 lt!1337934 lt!1337935 (_2!23142 (v!39022 lt!1337950)) (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142015 (not (isEmpty!24165 rules!2768))))

(assert (=> d!1142015 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1184 thiss!20629 rules!2768 lt!1337934 lt!1337935 (_2!23142 (v!39022 lt!1337950)) (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1338088)))

(declare-fun bs!582892 () Bool)

(assert (= bs!582892 d!1142015))

(assert (=> bs!582892 m!4407089))

(assert (=> bs!582892 m!4407091))

(assert (=> bs!582892 m!4407105))

(assert (=> bs!582892 m!4407089))

(assert (=> bs!582892 m!4407073))

(declare-fun m!4407429 () Bool)

(assert (=> bs!582892 m!4407429))

(assert (=> bs!582892 m!4407051))

(assert (=> b!3852086 d!1142015))

(declare-fun d!1142017 () Bool)

(declare-fun lt!1338089 () Int)

(assert (=> d!1142017 (>= lt!1338089 0)))

(declare-fun e!2381279 () Int)

(assert (=> d!1142017 (= lt!1338089 e!2381279)))

(declare-fun c!670906 () Bool)

(assert (=> d!1142017 (= c!670906 (is-Nil!40822 prefix!426))))

(assert (=> d!1142017 (= (size!30708 prefix!426) lt!1338089)))

(declare-fun b!3852468 () Bool)

(assert (=> b!3852468 (= e!2381279 0)))

(declare-fun b!3852469 () Bool)

(assert (=> b!3852469 (= e!2381279 (+ 1 (size!30708 (t!311993 prefix!426))))))

(assert (= (and d!1142017 c!670906) b!3852468))

(assert (= (and d!1142017 (not c!670906)) b!3852469))

(declare-fun m!4407431 () Bool)

(assert (=> b!3852469 m!4407431))

(assert (=> b!3852097 d!1142017))

(declare-fun d!1142019 () Bool)

(declare-fun res!1559693 () Bool)

(declare-fun e!2381280 () Bool)

(assert (=> d!1142019 (=> (not res!1559693) (not e!2381280))))

(assert (=> d!1142019 (= res!1559693 (not (isEmpty!24163 (originalCharacters!6911 (h!46245 prefixTokens!80)))))))

(assert (=> d!1142019 (= (inv!54975 (h!46245 prefixTokens!80)) e!2381280)))

(declare-fun b!3852470 () Bool)

(declare-fun res!1559694 () Bool)

(assert (=> b!3852470 (=> (not res!1559694) (not e!2381280))))

(assert (=> b!3852470 (= res!1559694 (= (originalCharacters!6911 (h!46245 prefixTokens!80)) (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(declare-fun b!3852471 () Bool)

(assert (=> b!3852471 (= e!2381280 (= (size!30707 (h!46245 prefixTokens!80)) (size!30708 (originalCharacters!6911 (h!46245 prefixTokens!80)))))))

(assert (= (and d!1142019 res!1559693) b!3852470))

(assert (= (and b!3852470 res!1559694) b!3852471))

(declare-fun b_lambda!112593 () Bool)

(assert (=> (not b_lambda!112593) (not b!3852470)))

(declare-fun t!312008 () Bool)

(declare-fun tb!222359 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312008) tb!222359))

(declare-fun b!3852472 () Bool)

(declare-fun e!2381281 () Bool)

(declare-fun tp!1167704 () Bool)

(assert (=> b!3852472 (= e!2381281 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))) tp!1167704))))

(declare-fun result!270922 () Bool)

(assert (=> tb!222359 (= result!270922 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))) e!2381281))))

(assert (= tb!222359 b!3852472))

(declare-fun m!4407433 () Bool)

(assert (=> b!3852472 m!4407433))

(declare-fun m!4407435 () Bool)

(assert (=> tb!222359 m!4407435))

(assert (=> b!3852470 t!312008))

(declare-fun b_and!287781 () Bool)

(assert (= b_and!287775 (and (=> t!312008 result!270922) b_and!287781)))

(declare-fun t!312010 () Bool)

(declare-fun tb!222361 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312010) tb!222361))

(declare-fun result!270924 () Bool)

(assert (= result!270924 result!270922))

(assert (=> b!3852470 t!312010))

(declare-fun b_and!287783 () Bool)

(assert (= b_and!287777 (and (=> t!312010 result!270924) b_and!287783)))

(declare-fun tb!222363 () Bool)

(declare-fun t!312012 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312012) tb!222363))

(declare-fun result!270926 () Bool)

(assert (= result!270926 result!270922))

(assert (=> b!3852470 t!312012))

(declare-fun b_and!287785 () Bool)

(assert (= b_and!287779 (and (=> t!312012 result!270926) b_and!287785)))

(declare-fun m!4407437 () Bool)

(assert (=> d!1142019 m!4407437))

(declare-fun m!4407439 () Bool)

(assert (=> b!3852470 m!4407439))

(assert (=> b!3852470 m!4407439))

(declare-fun m!4407441 () Bool)

(assert (=> b!3852470 m!4407441))

(declare-fun m!4407443 () Bool)

(assert (=> b!3852471 m!4407443))

(assert (=> b!3852108 d!1142019))

(declare-fun d!1142021 () Bool)

(assert (=> d!1142021 (= (inv!54972 (tag!7171 (rule!9167 (h!46245 suffixTokens!72)))) (= (mod (str.len (value!200498 (tag!7171 (rule!9167 (h!46245 suffixTokens!72))))) 2) 0))))

(assert (=> b!3852087 d!1142021))

(declare-fun d!1142023 () Bool)

(declare-fun res!1559695 () Bool)

(declare-fun e!2381282 () Bool)

(assert (=> d!1142023 (=> (not res!1559695) (not e!2381282))))

(assert (=> d!1142023 (= res!1559695 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))))))

(assert (=> d!1142023 (= (inv!54976 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) e!2381282)))

(declare-fun b!3852473 () Bool)

(assert (=> b!3852473 (= e!2381282 (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))))))

(assert (= (and d!1142023 res!1559695) b!3852473))

(declare-fun m!4407445 () Bool)

(assert (=> d!1142023 m!4407445))

(declare-fun m!4407449 () Bool)

(assert (=> b!3852473 m!4407449))

(assert (=> b!3852087 d!1142023))

(declare-fun b!3852476 () Bool)

(declare-fun res!1559697 () Bool)

(declare-fun e!2381284 () Bool)

(assert (=> b!3852476 (=> (not res!1559697) (not e!2381284))))

(declare-fun lt!1338090 () List!40946)

(assert (=> b!3852476 (= res!1559697 (= (size!30708 lt!1338090) (+ (size!30708 lt!1337934) (size!30708 (_2!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3852474 () Bool)

(declare-fun e!2381283 () List!40946)

(assert (=> b!3852474 (= e!2381283 (_2!23142 (v!39022 lt!1337950)))))

(declare-fun b!3852477 () Bool)

(assert (=> b!3852477 (= e!2381284 (or (not (= (_2!23142 (v!39022 lt!1337950)) Nil!40822)) (= lt!1338090 lt!1337934)))))

(declare-fun d!1142025 () Bool)

(assert (=> d!1142025 e!2381284))

(declare-fun res!1559696 () Bool)

(assert (=> d!1142025 (=> (not res!1559696) (not e!2381284))))

(assert (=> d!1142025 (= res!1559696 (= (content!6075 lt!1338090) (set.union (content!6075 lt!1337934) (content!6075 (_2!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142025 (= lt!1338090 e!2381283)))

(declare-fun c!670907 () Bool)

(assert (=> d!1142025 (= c!670907 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142025 (= (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))) lt!1338090)))

(declare-fun b!3852475 () Bool)

(assert (=> b!3852475 (= e!2381283 (Cons!40822 (h!46242 lt!1337934) (++!10380 (t!311993 lt!1337934) (_2!23142 (v!39022 lt!1337950)))))))

(assert (= (and d!1142025 c!670907) b!3852474))

(assert (= (and d!1142025 (not c!670907)) b!3852475))

(assert (= (and d!1142025 res!1559696) b!3852476))

(assert (= (and b!3852476 res!1559697) b!3852477))

(declare-fun m!4407459 () Bool)

(assert (=> b!3852476 m!4407459))

(assert (=> b!3852476 m!4407105))

(assert (=> b!3852476 m!4407071))

(declare-fun m!4407463 () Bool)

(assert (=> d!1142025 m!4407463))

(declare-fun m!4407467 () Bool)

(assert (=> d!1142025 m!4407467))

(declare-fun m!4407469 () Bool)

(assert (=> d!1142025 m!4407469))

(declare-fun m!4407471 () Bool)

(assert (=> b!3852475 m!4407471))

(assert (=> b!3852099 d!1142025))

(declare-fun d!1142027 () Bool)

(assert (=> d!1142027 (ruleValid!2263 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))

(declare-fun lt!1338093 () Unit!58493)

(declare-fun choose!22675 (LexerInterface!5900 Rule!12422 List!40948) Unit!58493)

(assert (=> d!1142027 (= lt!1338093 (choose!22675 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) rules!2768))))

(assert (=> d!1142027 (contains!8253 rules!2768 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142027 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1343 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) rules!2768) lt!1338093)))

(declare-fun bs!582893 () Bool)

(assert (= bs!582893 d!1142027))

(assert (=> bs!582893 m!4407101))

(declare-fun m!4407501 () Bool)

(assert (=> bs!582893 m!4407501))

(declare-fun m!4407503 () Bool)

(assert (=> bs!582893 m!4407503))

(assert (=> b!3852099 d!1142027))

(declare-fun b!3852478 () Bool)

(declare-fun e!2381285 () Bool)

(declare-fun lt!1338094 () tuple2!40014)

(assert (=> b!3852478 (= e!2381285 (= (_2!23141 lt!1338094) (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3852479 () Bool)

(declare-fun e!2381287 () Bool)

(assert (=> b!3852479 (= e!2381285 e!2381287)))

(declare-fun res!1559698 () Bool)

(assert (=> b!3852479 (= res!1559698 (< (size!30708 (_2!23141 lt!1338094)) (size!30708 (_2!23142 (v!39022 lt!1337950)))))))

(assert (=> b!3852479 (=> (not res!1559698) (not e!2381287))))

(declare-fun b!3852480 () Bool)

(declare-fun e!2381286 () tuple2!40014)

(declare-fun lt!1338095 () Option!8729)

(declare-fun lt!1338096 () tuple2!40014)

(assert (=> b!3852480 (= e!2381286 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338095)) (_1!23141 lt!1338096)) (_2!23141 lt!1338096)))))

(assert (=> b!3852480 (= lt!1338096 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338095))))))

(declare-fun d!1142031 () Bool)

(assert (=> d!1142031 e!2381285))

(declare-fun c!670908 () Bool)

(assert (=> d!1142031 (= c!670908 (> (size!30711 (_1!23141 lt!1338094)) 0))))

(assert (=> d!1142031 (= lt!1338094 e!2381286)))

(declare-fun c!670909 () Bool)

(assert (=> d!1142031 (= c!670909 (is-Some!8728 lt!1338095))))

(assert (=> d!1142031 (= lt!1338095 (maxPrefix!3204 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142031 (= (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1337950))) lt!1338094)))

(declare-fun b!3852481 () Bool)

(assert (=> b!3852481 (= e!2381286 (tuple2!40015 Nil!40825 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3852482 () Bool)

(assert (=> b!3852482 (= e!2381287 (not (isEmpty!24164 (_1!23141 lt!1338094))))))

(assert (= (and d!1142031 c!670909) b!3852480))

(assert (= (and d!1142031 (not c!670909)) b!3852481))

(assert (= (and d!1142031 c!670908) b!3852479))

(assert (= (and d!1142031 (not c!670908)) b!3852478))

(assert (= (and b!3852479 res!1559698) b!3852482))

(declare-fun m!4407505 () Bool)

(assert (=> b!3852479 m!4407505))

(assert (=> b!3852479 m!4407071))

(declare-fun m!4407507 () Bool)

(assert (=> b!3852480 m!4407507))

(declare-fun m!4407509 () Bool)

(assert (=> d!1142031 m!4407509))

(declare-fun m!4407511 () Bool)

(assert (=> d!1142031 m!4407511))

(declare-fun m!4407513 () Bool)

(assert (=> b!3852482 m!4407513))

(assert (=> b!3852099 d!1142031))

(declare-fun d!1142033 () Bool)

(assert (=> d!1142033 (= (size!30707 (_1!23142 (v!39022 lt!1337950))) (size!30708 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950)))))))

(declare-fun Unit!58498 () Unit!58493)

(assert (=> d!1142033 (= (lemmaCharactersSize!972 (_1!23142 (v!39022 lt!1337950))) Unit!58498)))

(declare-fun bs!582894 () Bool)

(assert (= bs!582894 d!1142033))

(assert (=> bs!582894 m!4407129))

(assert (=> b!3852099 d!1142033))

(declare-fun d!1142035 () Bool)

(declare-fun list!15197 (Conc!12522) List!40946)

(assert (=> d!1142035 (= (list!15195 (charsOf!4139 (_1!23142 (v!39022 lt!1337950)))) (list!15197 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun bs!582895 () Bool)

(assert (= bs!582895 d!1142035))

(declare-fun m!4407515 () Bool)

(assert (=> bs!582895 m!4407515))

(assert (=> b!3852099 d!1142035))

(declare-fun d!1142037 () Bool)

(declare-fun dynLambda!17617 (Int BalanceConc!24638) TokenValue!6541)

(assert (=> d!1142037 (= (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 lt!1337934)) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934)))))

(declare-fun b_lambda!112595 () Bool)

(assert (=> (not b_lambda!112595) (not d!1142037)))

(declare-fun t!312014 () Bool)

(declare-fun tb!222365 () Bool)

(assert (=> (and b!3852109 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312014) tb!222365))

(declare-fun result!270928 () Bool)

(assert (=> tb!222365 (= result!270928 (inv!21 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(declare-fun m!4407517 () Bool)

(assert (=> tb!222365 m!4407517))

(assert (=> d!1142037 t!312014))

(declare-fun b_and!287787 () Bool)

(assert (= b_and!287751 (and (=> t!312014 result!270928) b_and!287787)))

(declare-fun tb!222367 () Bool)

(declare-fun t!312016 () Bool)

(assert (=> (and b!3852102 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312016) tb!222367))

(declare-fun result!270932 () Bool)

(assert (= result!270932 result!270928))

(assert (=> d!1142037 t!312016))

(declare-fun b_and!287789 () Bool)

(assert (= b_and!287755 (and (=> t!312016 result!270932) b_and!287789)))

(declare-fun tb!222369 () Bool)

(declare-fun t!312018 () Bool)

(assert (=> (and b!3852098 (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312018) tb!222369))

(declare-fun result!270934 () Bool)

(assert (= result!270934 result!270928))

(assert (=> d!1142037 t!312018))

(declare-fun b_and!287791 () Bool)

(assert (= b_and!287759 (and (=> t!312018 result!270934) b_and!287791)))

(assert (=> d!1142037 m!4407089))

(declare-fun m!4407519 () Bool)

(assert (=> d!1142037 m!4407519))

(assert (=> b!3852099 d!1142037))

(declare-fun d!1142039 () Bool)

(declare-fun lt!1338099 () List!40946)

(assert (=> d!1142039 (= (++!10380 lt!1337934 lt!1338099) lt!1337935)))

(declare-fun e!2381293 () List!40946)

(assert (=> d!1142039 (= lt!1338099 e!2381293)))

(declare-fun c!670912 () Bool)

(assert (=> d!1142039 (= c!670912 (is-Cons!40822 lt!1337934))))

(assert (=> d!1142039 (>= (size!30708 lt!1337935) (size!30708 lt!1337934))))

(assert (=> d!1142039 (= (getSuffix!1865 lt!1337935 lt!1337934) lt!1338099)))

(declare-fun b!3852489 () Bool)

(assert (=> b!3852489 (= e!2381293 (getSuffix!1865 (tail!5826 lt!1337935) (t!311993 lt!1337934)))))

(declare-fun b!3852490 () Bool)

(assert (=> b!3852490 (= e!2381293 lt!1337935)))

(assert (= (and d!1142039 c!670912) b!3852489))

(assert (= (and d!1142039 (not c!670912)) b!3852490))

(declare-fun m!4407521 () Bool)

(assert (=> d!1142039 m!4407521))

(assert (=> d!1142039 m!4407065))

(assert (=> d!1142039 m!4407105))

(declare-fun m!4407523 () Bool)

(assert (=> b!3852489 m!4407523))

(assert (=> b!3852489 m!4407523))

(declare-fun m!4407525 () Bool)

(assert (=> b!3852489 m!4407525))

(assert (=> b!3852099 d!1142039))

(declare-fun d!1142041 () Bool)

(assert (=> d!1142041 (= (_2!23142 (v!39022 lt!1337950)) lt!1337951)))

(declare-fun lt!1338102 () Unit!58493)

(declare-fun choose!22676 (List!40946 List!40946 List!40946 List!40946 List!40946) Unit!58493)

(assert (=> d!1142041 (= lt!1338102 (choose!22676 lt!1337934 (_2!23142 (v!39022 lt!1337950)) lt!1337934 lt!1337951 lt!1337935))))

(assert (=> d!1142041 (isPrefix!3410 lt!1337934 lt!1337935)))

(assert (=> d!1142041 (= (lemmaSamePrefixThenSameSuffix!1631 lt!1337934 (_2!23142 (v!39022 lt!1337950)) lt!1337934 lt!1337951 lt!1337935) lt!1338102)))

(declare-fun bs!582896 () Bool)

(assert (= bs!582896 d!1142041))

(declare-fun m!4407527 () Bool)

(assert (=> bs!582896 m!4407527))

(declare-fun m!4407529 () Bool)

(assert (=> bs!582896 m!4407529))

(assert (=> b!3852099 d!1142041))

(declare-fun d!1142043 () Bool)

(declare-fun lt!1338103 () Int)

(assert (=> d!1142043 (>= lt!1338103 0)))

(declare-fun e!2381294 () Int)

(assert (=> d!1142043 (= lt!1338103 e!2381294)))

(declare-fun c!670913 () Bool)

(assert (=> d!1142043 (= c!670913 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142043 (= (size!30708 lt!1337934) lt!1338103)))

(declare-fun b!3852491 () Bool)

(assert (=> b!3852491 (= e!2381294 0)))

(declare-fun b!3852492 () Bool)

(assert (=> b!3852492 (= e!2381294 (+ 1 (size!30708 (t!311993 lt!1337934))))))

(assert (= (and d!1142043 c!670913) b!3852491))

(assert (= (and d!1142043 (not c!670913)) b!3852492))

(declare-fun m!4407531 () Bool)

(assert (=> b!3852492 m!4407531))

(assert (=> b!3852099 d!1142043))

(declare-fun d!1142045 () Bool)

(assert (=> d!1142045 (isPrefix!3410 lt!1337934 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun lt!1338106 () Unit!58493)

(declare-fun choose!22677 (List!40946 List!40946) Unit!58493)

(assert (=> d!1142045 (= lt!1338106 (choose!22677 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142045 (= (lemmaConcatTwoListThenFirstIsPrefix!2273 lt!1337934 (_2!23142 (v!39022 lt!1337950))) lt!1338106)))

(declare-fun bs!582897 () Bool)

(assert (= bs!582897 d!1142045))

(assert (=> bs!582897 m!4407083))

(assert (=> bs!582897 m!4407083))

(declare-fun m!4407533 () Bool)

(assert (=> bs!582897 m!4407533))

(declare-fun m!4407535 () Bool)

(assert (=> bs!582897 m!4407535))

(assert (=> b!3852099 d!1142045))

(declare-fun d!1142047 () Bool)

(declare-fun res!1559703 () Bool)

(declare-fun e!2381297 () Bool)

(assert (=> d!1142047 (=> (not res!1559703) (not e!2381297))))

(assert (=> d!1142047 (= res!1559703 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142047 (= (ruleValid!2263 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) e!2381297)))

(declare-fun b!3852497 () Bool)

(declare-fun res!1559704 () Bool)

(assert (=> b!3852497 (=> (not res!1559704) (not e!2381297))))

(assert (=> b!3852497 (= res!1559704 (not (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun b!3852498 () Bool)

(assert (=> b!3852498 (= e!2381297 (not (= (tag!7171 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (String!46426 ""))))))

(assert (= (and d!1142047 res!1559703) b!3852497))

(assert (= (and b!3852497 res!1559704) b!3852498))

(assert (=> d!1142047 m!4407373))

(assert (=> b!3852497 m!4407381))

(assert (=> b!3852099 d!1142047))

(declare-fun d!1142049 () Bool)

(declare-fun lt!1338109 () BalanceConc!24638)

(assert (=> d!1142049 (= (list!15195 lt!1338109) (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142049 (= lt!1338109 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142049 (= (charsOf!4139 (_1!23142 (v!39022 lt!1337950))) lt!1338109)))

(declare-fun b_lambda!112597 () Bool)

(assert (=> (not b_lambda!112597) (not d!1142049)))

(declare-fun t!312020 () Bool)

(declare-fun tb!222371 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312020) tb!222371))

(declare-fun b!3852499 () Bool)

(declare-fun e!2381298 () Bool)

(declare-fun tp!1167705 () Bool)

(assert (=> b!3852499 (= e!2381298 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))) tp!1167705))))

(declare-fun result!270936 () Bool)

(assert (=> tb!222371 (= result!270936 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))) e!2381298))))

(assert (= tb!222371 b!3852499))

(declare-fun m!4407537 () Bool)

(assert (=> b!3852499 m!4407537))

(declare-fun m!4407539 () Bool)

(assert (=> tb!222371 m!4407539))

(assert (=> d!1142049 t!312020))

(declare-fun b_and!287793 () Bool)

(assert (= b_and!287781 (and (=> t!312020 result!270936) b_and!287793)))

(declare-fun t!312022 () Bool)

(declare-fun tb!222373 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312022) tb!222373))

(declare-fun result!270938 () Bool)

(assert (= result!270938 result!270936))

(assert (=> d!1142049 t!312022))

(declare-fun b_and!287795 () Bool)

(assert (= b_and!287783 (and (=> t!312022 result!270938) b_and!287795)))

(declare-fun tb!222375 () Bool)

(declare-fun t!312024 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312024) tb!222375))

(declare-fun result!270940 () Bool)

(assert (= result!270940 result!270936))

(assert (=> d!1142049 t!312024))

(declare-fun b_and!287797 () Bool)

(assert (= b_and!287785 (and (=> t!312024 result!270940) b_and!287797)))

(declare-fun m!4407541 () Bool)

(assert (=> d!1142049 m!4407541))

(declare-fun m!4407543 () Bool)

(assert (=> d!1142049 m!4407543))

(assert (=> b!3852099 d!1142049))

(declare-fun b!3852511 () Bool)

(declare-fun e!2381306 () Bool)

(assert (=> b!3852511 (= e!2381306 (>= (size!30708 lt!1337949) (size!30708 lt!1337934)))))

(declare-fun d!1142051 () Bool)

(assert (=> d!1142051 e!2381306))

(declare-fun res!1559715 () Bool)

(assert (=> d!1142051 (=> res!1559715 e!2381306)))

(declare-fun lt!1338114 () Bool)

(assert (=> d!1142051 (= res!1559715 (not lt!1338114))))

(declare-fun e!2381307 () Bool)

(assert (=> d!1142051 (= lt!1338114 e!2381307)))

(declare-fun res!1559714 () Bool)

(assert (=> d!1142051 (=> res!1559714 e!2381307)))

(assert (=> d!1142051 (= res!1559714 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142051 (= (isPrefix!3410 lt!1337934 lt!1337949) lt!1338114)))

(declare-fun b!3852510 () Bool)

(declare-fun e!2381305 () Bool)

(assert (=> b!3852510 (= e!2381305 (isPrefix!3410 (tail!5826 lt!1337934) (tail!5826 lt!1337949)))))

(declare-fun b!3852508 () Bool)

(assert (=> b!3852508 (= e!2381307 e!2381305)))

(declare-fun res!1559713 () Bool)

(assert (=> b!3852508 (=> (not res!1559713) (not e!2381305))))

(assert (=> b!3852508 (= res!1559713 (not (is-Nil!40822 lt!1337949)))))

(declare-fun b!3852509 () Bool)

(declare-fun res!1559716 () Bool)

(assert (=> b!3852509 (=> (not res!1559716) (not e!2381305))))

(assert (=> b!3852509 (= res!1559716 (= (head!8105 lt!1337934) (head!8105 lt!1337949)))))

(assert (= (and d!1142051 (not res!1559714)) b!3852508))

(assert (= (and b!3852508 res!1559713) b!3852509))

(assert (= (and b!3852509 res!1559716) b!3852510))

(assert (= (and d!1142051 (not res!1559715)) b!3852511))

(declare-fun m!4407545 () Bool)

(assert (=> b!3852511 m!4407545))

(assert (=> b!3852511 m!4407105))

(assert (=> b!3852510 m!4407375))

(declare-fun m!4407547 () Bool)

(assert (=> b!3852510 m!4407547))

(assert (=> b!3852510 m!4407375))

(assert (=> b!3852510 m!4407547))

(declare-fun m!4407549 () Bool)

(assert (=> b!3852510 m!4407549))

(assert (=> b!3852509 m!4407379))

(declare-fun m!4407551 () Bool)

(assert (=> b!3852509 m!4407551))

(assert (=> b!3852099 d!1142051))

(declare-fun d!1142053 () Bool)

(declare-fun fromListB!2115 (List!40946) BalanceConc!24638)

(assert (=> d!1142053 (= (seqFromList!4582 lt!1337934) (fromListB!2115 lt!1337934))))

(declare-fun bs!582898 () Bool)

(assert (= bs!582898 d!1142053))

(declare-fun m!4407553 () Bool)

(assert (=> bs!582898 m!4407553))

(assert (=> b!3852099 d!1142053))

(declare-fun b!3852516 () Bool)

(declare-fun e!2381310 () Bool)

(declare-fun tp!1167708 () Bool)

(assert (=> b!3852516 (= e!2381310 (and tp_is_empty!19403 tp!1167708))))

(assert (=> b!3852100 (= tp!1167646 e!2381310)))

(assert (= (and b!3852100 (is-Cons!40822 (t!311993 suffixResult!91))) b!3852516))

(declare-fun b!3852530 () Bool)

(declare-fun e!2381313 () Bool)

(declare-fun tp!1167723 () Bool)

(declare-fun tp!1167721 () Bool)

(assert (=> b!3852530 (= e!2381313 (and tp!1167723 tp!1167721))))

(declare-fun b!3852527 () Bool)

(assert (=> b!3852527 (= e!2381313 tp_is_empty!19403)))

(assert (=> b!3852090 (= tp!1167645 e!2381313)))

(declare-fun b!3852529 () Bool)

(declare-fun tp!1167722 () Bool)

(assert (=> b!3852529 (= e!2381313 tp!1167722)))

(declare-fun b!3852528 () Bool)

(declare-fun tp!1167719 () Bool)

(declare-fun tp!1167720 () Bool)

(assert (=> b!3852528 (= e!2381313 (and tp!1167719 tp!1167720))))

(assert (= (and b!3852090 (is-ElementMatch!11216 (regex!6311 (h!46244 rules!2768)))) b!3852527))

(assert (= (and b!3852090 (is-Concat!17758 (regex!6311 (h!46244 rules!2768)))) b!3852528))

(assert (= (and b!3852090 (is-Star!11216 (regex!6311 (h!46244 rules!2768)))) b!3852529))

(assert (= (and b!3852090 (is-Union!11216 (regex!6311 (h!46244 rules!2768)))) b!3852530))

(declare-fun b!3852531 () Bool)

(declare-fun e!2381314 () Bool)

(declare-fun tp!1167724 () Bool)

(assert (=> b!3852531 (= e!2381314 (and tp_is_empty!19403 tp!1167724))))

(assert (=> b!3852103 (= tp!1167639 e!2381314)))

(assert (= (and b!3852103 (is-Cons!40822 (originalCharacters!6911 (h!46245 prefixTokens!80)))) b!3852531))

(declare-fun b!3852532 () Bool)

(declare-fun e!2381315 () Bool)

(declare-fun tp!1167725 () Bool)

(assert (=> b!3852532 (= e!2381315 (and tp_is_empty!19403 tp!1167725))))

(assert (=> b!3852083 (= tp!1167635 e!2381315)))

(assert (= (and b!3852083 (is-Cons!40822 (originalCharacters!6911 (h!46245 suffixTokens!72)))) b!3852532))

(declare-fun b!3852552 () Bool)

(declare-fun b_free!103321 () Bool)

(declare-fun b_next!104025 () Bool)

(assert (=> b!3852552 (= b_free!103321 (not b_next!104025))))

(declare-fun t!312026 () Bool)

(declare-fun tb!222377 () Bool)

(assert (=> (and b!3852552 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312026) tb!222377))

(declare-fun result!270948 () Bool)

(assert (= result!270948 result!270928))

(assert (=> d!1142037 t!312026))

(declare-fun tp!1167738 () Bool)

(declare-fun b_and!287799 () Bool)

(assert (=> b!3852552 (= tp!1167738 (and (=> t!312026 result!270948) b_and!287799))))

(declare-fun b_free!103323 () Bool)

(declare-fun b_next!104027 () Bool)

(assert (=> b!3852552 (= b_free!103323 (not b_next!104027))))

(declare-fun t!312028 () Bool)

(declare-fun tb!222379 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312028) tb!222379))

(declare-fun result!270950 () Bool)

(assert (= result!270950 result!270914))

(assert (=> b!3852362 t!312028))

(declare-fun tb!222381 () Bool)

(declare-fun t!312030 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312030) tb!222381))

(declare-fun result!270952 () Bool)

(assert (= result!270952 result!270922))

(assert (=> b!3852470 t!312030))

(declare-fun tb!222383 () Bool)

(declare-fun t!312032 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312032) tb!222383))

(declare-fun result!270954 () Bool)

(assert (= result!270954 result!270936))

(assert (=> d!1142049 t!312032))

(declare-fun b_and!287801 () Bool)

(declare-fun tp!1167739 () Bool)

(assert (=> b!3852552 (= tp!1167739 (and (=> t!312028 result!270950) (=> t!312030 result!270952) (=> t!312032 result!270954) b_and!287801))))

(declare-fun tp!1167736 () Bool)

(declare-fun e!2381332 () Bool)

(declare-fun e!2381335 () Bool)

(declare-fun b!3852551 () Bool)

(assert (=> b!3852551 (= e!2381332 (and tp!1167736 (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) e!2381335))))

(declare-fun tp!1167737 () Bool)

(declare-fun b!3852550 () Bool)

(declare-fun e!2381331 () Bool)

(assert (=> b!3852550 (= e!2381331 (and (inv!21 (value!200499 (h!46245 (t!311996 suffixTokens!72)))) e!2381332 tp!1167737))))

(assert (=> b!3852552 (= e!2381335 (and tp!1167738 tp!1167739))))

(declare-fun e!2381334 () Bool)

(declare-fun tp!1167740 () Bool)

(declare-fun b!3852549 () Bool)

(assert (=> b!3852549 (= e!2381334 (and (inv!54975 (h!46245 (t!311996 suffixTokens!72))) e!2381331 tp!1167740))))

(assert (=> b!3852084 (= tp!1167641 e!2381334)))

(assert (= b!3852551 b!3852552))

(assert (= b!3852550 b!3852551))

(assert (= b!3852549 b!3852550))

(assert (= (and b!3852084 (is-Cons!40825 (t!311996 suffixTokens!72))) b!3852549))

(declare-fun m!4407559 () Bool)

(assert (=> b!3852551 m!4407559))

(declare-fun m!4407561 () Bool)

(assert (=> b!3852551 m!4407561))

(declare-fun m!4407563 () Bool)

(assert (=> b!3852550 m!4407563))

(declare-fun m!4407565 () Bool)

(assert (=> b!3852549 m!4407565))

(declare-fun b!3852563 () Bool)

(declare-fun b_free!103325 () Bool)

(declare-fun b_next!104029 () Bool)

(assert (=> b!3852563 (= b_free!103325 (not b_next!104029))))

(declare-fun t!312034 () Bool)

(declare-fun tb!222385 () Bool)

(assert (=> (and b!3852563 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312034) tb!222385))

(declare-fun result!270958 () Bool)

(assert (= result!270958 result!270928))

(assert (=> d!1142037 t!312034))

(declare-fun b_and!287803 () Bool)

(declare-fun tp!1167749 () Bool)

(assert (=> b!3852563 (= tp!1167749 (and (=> t!312034 result!270958) b_and!287803))))

(declare-fun b_free!103327 () Bool)

(declare-fun b_next!104031 () Bool)

(assert (=> b!3852563 (= b_free!103327 (not b_next!104031))))

(declare-fun t!312036 () Bool)

(declare-fun tb!222387 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312036) tb!222387))

(declare-fun result!270960 () Bool)

(assert (= result!270960 result!270914))

(assert (=> b!3852362 t!312036))

(declare-fun tb!222389 () Bool)

(declare-fun t!312038 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312038) tb!222389))

(declare-fun result!270962 () Bool)

(assert (= result!270962 result!270922))

(assert (=> b!3852470 t!312038))

(declare-fun t!312040 () Bool)

(declare-fun tb!222391 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312040) tb!222391))

(declare-fun result!270964 () Bool)

(assert (= result!270964 result!270936))

(assert (=> d!1142049 t!312040))

(declare-fun b_and!287805 () Bool)

(declare-fun tp!1167750 () Bool)

(assert (=> b!3852563 (= tp!1167750 (and (=> t!312036 result!270960) (=> t!312038 result!270962) (=> t!312040 result!270964) b_and!287805))))

(declare-fun e!2381345 () Bool)

(assert (=> b!3852563 (= e!2381345 (and tp!1167749 tp!1167750))))

(declare-fun b!3852562 () Bool)

(declare-fun tp!1167752 () Bool)

(declare-fun e!2381346 () Bool)

(assert (=> b!3852562 (= e!2381346 (and tp!1167752 (inv!54972 (tag!7171 (h!46244 (t!311995 rules!2768)))) (inv!54976 (transformation!6311 (h!46244 (t!311995 rules!2768)))) e!2381345))))

(declare-fun b!3852561 () Bool)

(declare-fun e!2381348 () Bool)

(declare-fun tp!1167751 () Bool)

(assert (=> b!3852561 (= e!2381348 (and e!2381346 tp!1167751))))

(assert (=> b!3852095 (= tp!1167633 e!2381348)))

(assert (= b!3852562 b!3852563))

(assert (= b!3852561 b!3852562))

(assert (= (and b!3852095 (is-Cons!40824 (t!311995 rules!2768))) b!3852561))

(declare-fun m!4407567 () Bool)

(assert (=> b!3852562 m!4407567))

(declare-fun m!4407569 () Bool)

(assert (=> b!3852562 m!4407569))

(declare-fun b!3852571 () Bool)

(declare-fun e!2381351 () Bool)

(declare-fun tp!1167757 () Bool)

(declare-fun tp!1167755 () Bool)

(assert (=> b!3852571 (= e!2381351 (and tp!1167757 tp!1167755))))

(declare-fun b!3852568 () Bool)

(assert (=> b!3852568 (= e!2381351 tp_is_empty!19403)))

(assert (=> b!3852106 (= tp!1167649 e!2381351)))

(declare-fun b!3852570 () Bool)

(declare-fun tp!1167756 () Bool)

(assert (=> b!3852570 (= e!2381351 tp!1167756)))

(declare-fun b!3852569 () Bool)

(declare-fun tp!1167753 () Bool)

(declare-fun tp!1167754 () Bool)

(assert (=> b!3852569 (= e!2381351 (and tp!1167753 tp!1167754))))

(assert (= (and b!3852106 (is-ElementMatch!11216 (regex!6311 (rule!9167 (h!46245 prefixTokens!80))))) b!3852568))

(assert (= (and b!3852106 (is-Concat!17758 (regex!6311 (rule!9167 (h!46245 prefixTokens!80))))) b!3852569))

(assert (= (and b!3852106 (is-Star!11216 (regex!6311 (rule!9167 (h!46245 prefixTokens!80))))) b!3852570))

(assert (= (and b!3852106 (is-Union!11216 (regex!6311 (rule!9167 (h!46245 prefixTokens!80))))) b!3852571))

(declare-fun b!3852574 () Bool)

(declare-fun e!2381354 () Bool)

(declare-fun tp!1167758 () Bool)

(assert (=> b!3852574 (= e!2381354 (and tp_is_empty!19403 tp!1167758))))

(assert (=> b!3852096 (= tp!1167634 e!2381354)))

(assert (= (and b!3852096 (is-Cons!40822 (t!311993 suffix!1176))) b!3852574))

(declare-fun b!3852580 () Bool)

(declare-fun b_free!103329 () Bool)

(declare-fun b_next!104033 () Bool)

(assert (=> b!3852580 (= b_free!103329 (not b_next!104033))))

(declare-fun t!312042 () Bool)

(declare-fun tb!222393 () Bool)

(assert (=> (and b!3852580 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312042) tb!222393))

(declare-fun result!270966 () Bool)

(assert (= result!270966 result!270928))

(assert (=> d!1142037 t!312042))

(declare-fun tp!1167761 () Bool)

(declare-fun b_and!287807 () Bool)

(assert (=> b!3852580 (= tp!1167761 (and (=> t!312042 result!270966) b_and!287807))))

(declare-fun b_free!103331 () Bool)

(declare-fun b_next!104035 () Bool)

(assert (=> b!3852580 (= b_free!103331 (not b_next!104035))))

(declare-fun t!312044 () Bool)

(declare-fun tb!222395 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312044) tb!222395))

(declare-fun result!270968 () Bool)

(assert (= result!270968 result!270914))

(assert (=> b!3852362 t!312044))

(declare-fun t!312046 () Bool)

(declare-fun tb!222397 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312046) tb!222397))

(declare-fun result!270970 () Bool)

(assert (= result!270970 result!270922))

(assert (=> b!3852470 t!312046))

(declare-fun t!312048 () Bool)

(declare-fun tb!222399 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312048) tb!222399))

(declare-fun result!270972 () Bool)

(assert (= result!270972 result!270936))

(assert (=> d!1142049 t!312048))

(declare-fun tp!1167762 () Bool)

(declare-fun b_and!287809 () Bool)

(assert (=> b!3852580 (= tp!1167762 (and (=> t!312044 result!270968) (=> t!312046 result!270970) (=> t!312048 result!270972) b_and!287809))))

(declare-fun tp!1167759 () Bool)

(declare-fun e!2381359 () Bool)

(declare-fun e!2381356 () Bool)

(declare-fun b!3852579 () Bool)

(assert (=> b!3852579 (= e!2381356 (and tp!1167759 (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) e!2381359))))

(declare-fun e!2381355 () Bool)

(declare-fun b!3852578 () Bool)

(declare-fun tp!1167760 () Bool)

(assert (=> b!3852578 (= e!2381355 (and (inv!21 (value!200499 (h!46245 (t!311996 prefixTokens!80)))) e!2381356 tp!1167760))))

(assert (=> b!3852580 (= e!2381359 (and tp!1167761 tp!1167762))))

(declare-fun b!3852577 () Bool)

(declare-fun e!2381358 () Bool)

(declare-fun tp!1167763 () Bool)

(assert (=> b!3852577 (= e!2381358 (and (inv!54975 (h!46245 (t!311996 prefixTokens!80))) e!2381355 tp!1167763))))

(assert (=> b!3852108 (= tp!1167638 e!2381358)))

(assert (= b!3852579 b!3852580))

(assert (= b!3852578 b!3852579))

(assert (= b!3852577 b!3852578))

(assert (= (and b!3852108 (is-Cons!40825 (t!311996 prefixTokens!80))) b!3852577))

(declare-fun m!4407571 () Bool)

(assert (=> b!3852579 m!4407571))

(declare-fun m!4407573 () Bool)

(assert (=> b!3852579 m!4407573))

(declare-fun m!4407575 () Bool)

(assert (=> b!3852578 m!4407575))

(declare-fun m!4407577 () Bool)

(assert (=> b!3852577 m!4407577))

(declare-fun b!3852584 () Bool)

(declare-fun e!2381361 () Bool)

(declare-fun tp!1167768 () Bool)

(declare-fun tp!1167766 () Bool)

(assert (=> b!3852584 (= e!2381361 (and tp!1167768 tp!1167766))))

(declare-fun b!3852581 () Bool)

(assert (=> b!3852581 (= e!2381361 tp_is_empty!19403)))

(assert (=> b!3852087 (= tp!1167644 e!2381361)))

(declare-fun b!3852583 () Bool)

(declare-fun tp!1167767 () Bool)

(assert (=> b!3852583 (= e!2381361 tp!1167767)))

(declare-fun b!3852582 () Bool)

(declare-fun tp!1167764 () Bool)

(declare-fun tp!1167765 () Bool)

(assert (=> b!3852582 (= e!2381361 (and tp!1167764 tp!1167765))))

(assert (= (and b!3852087 (is-ElementMatch!11216 (regex!6311 (rule!9167 (h!46245 suffixTokens!72))))) b!3852581))

(assert (= (and b!3852087 (is-Concat!17758 (regex!6311 (rule!9167 (h!46245 suffixTokens!72))))) b!3852582))

(assert (= (and b!3852087 (is-Star!11216 (regex!6311 (rule!9167 (h!46245 suffixTokens!72))))) b!3852583))

(assert (= (and b!3852087 (is-Union!11216 (regex!6311 (rule!9167 (h!46245 suffixTokens!72))))) b!3852584))

(declare-fun b!3852585 () Bool)

(declare-fun e!2381362 () Bool)

(declare-fun tp!1167769 () Bool)

(assert (=> b!3852585 (= e!2381362 (and tp_is_empty!19403 tp!1167769))))

(assert (=> b!3852088 (= tp!1167637 e!2381362)))

(assert (= (and b!3852088 (is-Cons!40822 (t!311993 prefix!426))) b!3852585))

(declare-fun b_lambda!112599 () Bool)

(assert (= b_lambda!112591 (or (and b!3852580 b_free!103331 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))))) (and b!3852109 b_free!103299 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))))) (and b!3852563 b_free!103327 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))))) (and b!3852552 b_free!103323 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))))) (and b!3852098 b_free!103307 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))))) (and b!3852102 b_free!103303) b_lambda!112599)))

(declare-fun b_lambda!112601 () Bool)

(assert (= b_lambda!112593 (or (and b!3852580 b_free!103331 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) (and b!3852098 b_free!103307 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) (and b!3852109 b_free!103299) (and b!3852552 b_free!103323 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) (and b!3852563 b_free!103327 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) (and b!3852102 b_free!103303 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b_lambda!112601)))

(push 1)

(assert (not b!3852369))

(assert (not d!1141987))

(assert (not b!3852442))

(assert (not b_next!104001))

(assert (not b!3852585))

(assert (not b!3852363))

(assert (not b_lambda!112597))

(assert (not b!3852322))

(assert (not bm!282252))

(assert (not b!3852469))

(assert (not d!1142035))

(assert (not b!3852473))

(assert (not b!3852268))

(assert (not b!3852306))

(assert (not b_next!104031))

(assert (not b!3852350))

(assert b_and!287789)

(assert b_and!287787)

(assert (not b!3852516))

(assert (not b!3852532))

(assert (not b!3852305))

(assert (not b!3852323))

(assert b_and!287803)

(assert (not d!1142001))

(assert (not b!3852308))

(assert (not d!1142045))

(assert (not b!3852215))

(assert (not b!3852266))

(assert (not b!3852549))

(assert (not b!3852353))

(assert (not b!3852273))

(assert (not b!3852300))

(assert (not b!3852339))

(assert (not b!3852357))

(assert (not b!3852470))

(assert (not b!3852476))

(assert (not b!3852411))

(assert (not b!3852342))

(assert (not b!3852579))

(assert (not b!3852479))

(assert (not b!3852368))

(assert b_and!287801)

(assert b_and!287793)

(assert (not b!3852267))

(assert (not b!3852528))

(assert (not b!3852303))

(assert (not bm!282248))

(assert (not b!3852355))

(assert (not b!3852441))

(assert (not b!3852274))

(assert (not d!1142053))

(assert (not b!3852472))

(assert (not b!3852337))

(assert (not b!3852311))

(assert (not d!1142011))

(assert (not b!3852471))

(assert (not b_lambda!112599))

(assert (not b!3852440))

(assert (not b!3852569))

(assert (not b!3852271))

(assert (not tb!222371))

(assert (not b!3852497))

(assert (not d!1142031))

(assert (not b!3852550))

(assert b_and!287809)

(assert (not b!3852335))

(assert (not b_lambda!112595))

(assert (not d!1142023))

(assert (not d!1141975))

(assert (not d!1142025))

(assert (not d!1142027))

(assert (not b!3852404))

(assert tp_is_empty!19403)

(assert (not tb!222359))

(assert (not b!3852437))

(assert (not d!1142049))

(assert (not d!1141989))

(assert (not b!3852562))

(assert (not b!3852408))

(assert (not b!3852577))

(assert (not b!3852438))

(assert (not b!3852371))

(assert (not d!1142013))

(assert (not b!3852530))

(assert (not b!3852435))

(assert (not b!3852301))

(assert (not b!3852570))

(assert (not b!3852362))

(assert (not b!3852510))

(assert (not b!3852480))

(assert (not b_next!104007))

(assert (not b_next!104011))

(assert (not b!3852489))

(assert (not b_next!104035))

(assert (not b_next!104025))

(assert (not b!3852509))

(assert (not b!3852584))

(assert (not b!3852482))

(assert (not d!1141965))

(assert (not b!3852439))

(assert (not b!3852578))

(assert (not b!3852574))

(assert (not b!3852270))

(assert (not b!3852529))

(assert b_and!287805)

(assert (not b_next!104003))

(assert (not b_next!104005))

(assert (not b!3852582))

(assert (not b!3852436))

(assert (not d!1141981))

(assert b_and!287797)

(assert (not d!1142019))

(assert (not tb!222365))

(assert (not b!3852583))

(assert b_and!287807)

(assert (not b!3852269))

(assert (not b!3852219))

(assert (not b!3852400))

(assert (not b_next!104033))

(assert (not b!3852475))

(assert (not b_next!104029))

(assert (not b!3852402))

(assert (not d!1142005))

(assert (not b_next!104009))

(assert (not d!1141959))

(assert (not b_next!104027))

(assert (not d!1141971))

(assert (not b!3852571))

(assert (not b!3852492))

(assert (not b!3852351))

(assert b_and!287799)

(assert (not d!1142033))

(assert (not b!3852531))

(assert (not d!1141983))

(assert (not b!3852310))

(assert b_and!287795)

(assert (not d!1142041))

(assert (not b!3852551))

(assert (not b!3852511))

(assert (not b!3852561))

(assert (not d!1142047))

(assert (not b!3852499))

(assert (not tb!222353))

(assert (not b!3852410))

(assert (not d!1142039))

(assert (not b!3852348))

(assert (not b!3852214))

(assert (not b_lambda!112601))

(assert (not d!1142015))

(assert (not d!1141979))

(assert b_and!287791)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!104001))

(assert b_and!287803)

(assert b_and!287801)

(assert b_and!287793)

(assert b_and!287809)

(assert (not b_next!104027))

(assert b_and!287799)

(assert b_and!287795)

(assert b_and!287791)

(assert (not b_next!104031))

(assert b_and!287789)

(assert b_and!287787)

(assert (not b_next!104007))

(assert (not b_next!104011))

(assert (not b_next!104035))

(assert (not b_next!104025))

(assert b_and!287805)

(assert (not b_next!104003))

(assert b_and!287797)

(assert (not b_next!104005))

(assert b_and!287807)

(assert (not b_next!104033))

(assert (not b_next!104029))

(assert (not b_next!104009))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1142139 () Bool)

(declare-fun lt!1338180 () Int)

(assert (=> d!1142139 (>= lt!1338180 0)))

(declare-fun e!2381499 () Int)

(assert (=> d!1142139 (= lt!1338180 e!2381499)))

(declare-fun c!670954 () Bool)

(assert (=> d!1142139 (= c!670954 (is-Nil!40822 lt!1338046))))

(assert (=> d!1142139 (= (size!30708 lt!1338046) lt!1338180)))

(declare-fun b!3852801 () Bool)

(assert (=> b!3852801 (= e!2381499 0)))

(declare-fun b!3852802 () Bool)

(assert (=> b!3852802 (= e!2381499 (+ 1 (size!30708 (t!311993 lt!1338046))))))

(assert (= (and d!1142139 c!670954) b!3852801))

(assert (= (and d!1142139 (not c!670954)) b!3852802))

(declare-fun m!4407813 () Bool)

(assert (=> b!3852802 m!4407813))

(assert (=> b!3852323 d!1142139))

(assert (=> b!3852323 d!1142017))

(assert (=> b!3852323 d!1141991))

(declare-fun d!1142141 () Bool)

(assert (=> d!1142141 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))) (list!15197 (c!670845 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun bs!582907 () Bool)

(assert (= bs!582907 d!1142141))

(declare-fun m!4407815 () Bool)

(assert (=> bs!582907 m!4407815))

(assert (=> b!3852269 d!1142141))

(declare-fun d!1142143 () Bool)

(declare-fun lt!1338181 () BalanceConc!24638)

(assert (=> d!1142143 (= (list!15195 lt!1338181) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027))))))

(assert (=> d!1142143 (= lt!1338181 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))) (value!200499 (_1!23142 (get!13507 lt!1338027)))))))

(assert (=> d!1142143 (= (charsOf!4139 (_1!23142 (get!13507 lt!1338027))) lt!1338181)))

(declare-fun b_lambda!112615 () Bool)

(assert (=> (not b_lambda!112615) (not d!1142143)))

(declare-fun tb!222449 () Bool)

(declare-fun t!312100 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312100) tb!222449))

(declare-fun b!3852803 () Bool)

(declare-fun e!2381500 () Bool)

(declare-fun tp!1167839 () Bool)

(assert (=> b!3852803 (= e!2381500 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))) (value!200499 (_1!23142 (get!13507 lt!1338027)))))) tp!1167839))))

(declare-fun result!271034 () Bool)

(assert (=> tb!222449 (= result!271034 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))) (value!200499 (_1!23142 (get!13507 lt!1338027))))) e!2381500))))

(assert (= tb!222449 b!3852803))

(declare-fun m!4407817 () Bool)

(assert (=> b!3852803 m!4407817))

(declare-fun m!4407819 () Bool)

(assert (=> tb!222449 m!4407819))

(assert (=> d!1142143 t!312100))

(declare-fun b_and!287847 () Bool)

(assert (= b_and!287797 (and (=> t!312100 result!271034) b_and!287847)))

(declare-fun tb!222451 () Bool)

(declare-fun t!312102 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312102) tb!222451))

(declare-fun result!271036 () Bool)

(assert (= result!271036 result!271034))

(assert (=> d!1142143 t!312102))

(declare-fun b_and!287849 () Bool)

(assert (= b_and!287795 (and (=> t!312102 result!271036) b_and!287849)))

(declare-fun tb!222453 () Bool)

(declare-fun t!312104 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312104) tb!222453))

(declare-fun result!271038 () Bool)

(assert (= result!271038 result!271034))

(assert (=> d!1142143 t!312104))

(declare-fun b_and!287851 () Bool)

(assert (= b_and!287793 (and (=> t!312104 result!271038) b_and!287851)))

(declare-fun tb!222455 () Bool)

(declare-fun t!312106 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312106) tb!222455))

(declare-fun result!271040 () Bool)

(assert (= result!271040 result!271034))

(assert (=> d!1142143 t!312106))

(declare-fun b_and!287853 () Bool)

(assert (= b_and!287801 (and (=> t!312106 result!271040) b_and!287853)))

(declare-fun t!312108 () Bool)

(declare-fun tb!222457 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312108) tb!222457))

(declare-fun result!271042 () Bool)

(assert (= result!271042 result!271034))

(assert (=> d!1142143 t!312108))

(declare-fun b_and!287855 () Bool)

(assert (= b_and!287805 (and (=> t!312108 result!271042) b_and!287855)))

(declare-fun t!312110 () Bool)

(declare-fun tb!222459 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312110) tb!222459))

(declare-fun result!271044 () Bool)

(assert (= result!271044 result!271034))

(assert (=> d!1142143 t!312110))

(declare-fun b_and!287857 () Bool)

(assert (= b_and!287809 (and (=> t!312110 result!271044) b_and!287857)))

(declare-fun m!4407821 () Bool)

(assert (=> d!1142143 m!4407821))

(declare-fun m!4407823 () Bool)

(assert (=> d!1142143 m!4407823))

(assert (=> b!3852269 d!1142143))

(declare-fun d!1142145 () Bool)

(assert (=> d!1142145 (= (get!13507 lt!1338027) (v!39022 lt!1338027))))

(assert (=> b!3852269 d!1142145))

(declare-fun d!1142147 () Bool)

(declare-fun charsToInt!0 (List!40947) (_ BitVec 32))

(assert (=> d!1142147 (= (inv!16 (value!200499 (h!46245 suffixTokens!72))) (= (charsToInt!0 (text!46234 (value!200499 (h!46245 suffixTokens!72)))) (value!200490 (value!200499 (h!46245 suffixTokens!72)))))))

(declare-fun bs!582908 () Bool)

(assert (= bs!582908 d!1142147))

(declare-fun m!4407825 () Bool)

(assert (=> bs!582908 m!4407825))

(assert (=> b!3852355 d!1142147))

(declare-fun d!1142149 () Bool)

(declare-fun c!670957 () Bool)

(assert (=> d!1142149 (= c!670957 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(declare-fun e!2381505 () Bool)

(assert (=> d!1142149 (= (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))) e!2381505)))

(declare-fun b!3852810 () Bool)

(declare-fun inv!54983 (Conc!12522) Bool)

(assert (=> b!3852810 (= e!2381505 (inv!54983 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(declare-fun b!3852811 () Bool)

(declare-fun e!2381506 () Bool)

(assert (=> b!3852811 (= e!2381505 e!2381506)))

(declare-fun res!1559799 () Bool)

(assert (=> b!3852811 (= res!1559799 (not (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))))))

(assert (=> b!3852811 (=> res!1559799 e!2381506)))

(declare-fun b!3852812 () Bool)

(declare-fun inv!54984 (Conc!12522) Bool)

(assert (=> b!3852812 (= e!2381506 (inv!54984 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(assert (= (and d!1142149 c!670957) b!3852810))

(assert (= (and d!1142149 (not c!670957)) b!3852811))

(assert (= (and b!3852811 (not res!1559799)) b!3852812))

(declare-fun m!4407827 () Bool)

(assert (=> b!3852810 m!4407827))

(declare-fun m!4407829 () Bool)

(assert (=> b!3852812 m!4407829))

(assert (=> b!3852368 d!1142149))

(declare-fun d!1142151 () Bool)

(declare-fun lt!1338182 () Int)

(assert (=> d!1142151 (>= lt!1338182 0)))

(declare-fun e!2381507 () Int)

(assert (=> d!1142151 (= lt!1338182 e!2381507)))

(declare-fun c!670958 () Bool)

(assert (=> d!1142151 (= c!670958 (is-Nil!40822 lt!1338090))))

(assert (=> d!1142151 (= (size!30708 lt!1338090) lt!1338182)))

(declare-fun b!3852813 () Bool)

(assert (=> b!3852813 (= e!2381507 0)))

(declare-fun b!3852814 () Bool)

(assert (=> b!3852814 (= e!2381507 (+ 1 (size!30708 (t!311993 lt!1338090))))))

(assert (= (and d!1142151 c!670958) b!3852813))

(assert (= (and d!1142151 (not c!670958)) b!3852814))

(declare-fun m!4407831 () Bool)

(assert (=> b!3852814 m!4407831))

(assert (=> b!3852476 d!1142151))

(assert (=> b!3852476 d!1142043))

(assert (=> b!3852476 d!1141993))

(declare-fun d!1142153 () Bool)

(assert (=> d!1142153 (= (inv!54972 (tag!7171 (h!46244 (t!311995 rules!2768)))) (= (mod (str.len (value!200498 (tag!7171 (h!46244 (t!311995 rules!2768))))) 2) 0))))

(assert (=> b!3852562 d!1142153))

(declare-fun d!1142155 () Bool)

(declare-fun res!1559800 () Bool)

(declare-fun e!2381508 () Bool)

(assert (=> d!1142155 (=> (not res!1559800) (not e!2381508))))

(assert (=> d!1142155 (= res!1559800 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768))))))))

(assert (=> d!1142155 (= (inv!54976 (transformation!6311 (h!46244 (t!311995 rules!2768)))) e!2381508)))

(declare-fun b!3852815 () Bool)

(assert (=> b!3852815 (= e!2381508 (equivClasses!2603 (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768))))))))

(assert (= (and d!1142155 res!1559800) b!3852815))

(declare-fun m!4407833 () Bool)

(assert (=> d!1142155 m!4407833))

(declare-fun m!4407835 () Bool)

(assert (=> b!3852815 m!4407835))

(assert (=> b!3852562 d!1142155))

(declare-fun d!1142157 () Bool)

(assert (=> d!1142157 (= (get!13507 lt!1338072) (v!39022 lt!1338072))))

(assert (=> b!3852441 d!1142157))

(declare-fun d!1142159 () Bool)

(assert (=> d!1142159 (= (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072))))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072))))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072))))))))

(declare-fun b_lambda!112617 () Bool)

(assert (=> (not b_lambda!112617) (not d!1142159)))

(declare-fun tb!222461 () Bool)

(declare-fun t!312112 () Bool)

(assert (=> (and b!3852098 (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312112) tb!222461))

(declare-fun result!271046 () Bool)

(assert (=> tb!222461 (= result!271046 (inv!21 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072))))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))))))))

(declare-fun m!4407837 () Bool)

(assert (=> tb!222461 m!4407837))

(assert (=> d!1142159 t!312112))

(declare-fun b_and!287859 () Bool)

(assert (= b_and!287791 (and (=> t!312112 result!271046) b_and!287859)))

(declare-fun t!312114 () Bool)

(declare-fun tb!222463 () Bool)

(assert (=> (and b!3852563 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312114) tb!222463))

(declare-fun result!271048 () Bool)

(assert (= result!271048 result!271046))

(assert (=> d!1142159 t!312114))

(declare-fun b_and!287861 () Bool)

(assert (= b_and!287803 (and (=> t!312114 result!271048) b_and!287861)))

(declare-fun tb!222465 () Bool)

(declare-fun t!312116 () Bool)

(assert (=> (and b!3852580 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312116) tb!222465))

(declare-fun result!271050 () Bool)

(assert (= result!271050 result!271046))

(assert (=> d!1142159 t!312116))

(declare-fun b_and!287863 () Bool)

(assert (= b_and!287807 (and (=> t!312116 result!271050) b_and!287863)))

(declare-fun t!312118 () Bool)

(declare-fun tb!222467 () Bool)

(assert (=> (and b!3852109 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312118) tb!222467))

(declare-fun result!271052 () Bool)

(assert (= result!271052 result!271046))

(assert (=> d!1142159 t!312118))

(declare-fun b_and!287865 () Bool)

(assert (= b_and!287787 (and (=> t!312118 result!271052) b_and!287865)))

(declare-fun t!312120 () Bool)

(declare-fun tb!222469 () Bool)

(assert (=> (and b!3852102 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312120) tb!222469))

(declare-fun result!271054 () Bool)

(assert (= result!271054 result!271046))

(assert (=> d!1142159 t!312120))

(declare-fun b_and!287867 () Bool)

(assert (= b_and!287789 (and (=> t!312120 result!271054) b_and!287867)))

(declare-fun tb!222471 () Bool)

(declare-fun t!312122 () Bool)

(assert (=> (and b!3852552 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312122) tb!222471))

(declare-fun result!271056 () Bool)

(assert (= result!271056 result!271046))

(assert (=> d!1142159 t!312122))

(declare-fun b_and!287869 () Bool)

(assert (= b_and!287799 (and (=> t!312122 result!271056) b_and!287869)))

(assert (=> d!1142159 m!4407425))

(declare-fun m!4407839 () Bool)

(assert (=> d!1142159 m!4407839))

(assert (=> b!3852441 d!1142159))

(declare-fun d!1142161 () Bool)

(assert (=> d!1142161 (= (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))) (fromListB!2115 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))))))

(declare-fun bs!582909 () Bool)

(assert (= bs!582909 d!1142161))

(declare-fun m!4407841 () Bool)

(assert (=> bs!582909 m!4407841))

(assert (=> b!3852441 d!1142161))

(declare-fun d!1142163 () Bool)

(declare-fun c!670961 () Bool)

(assert (=> d!1142163 (= c!670961 (is-Nil!40825 lt!1338043))))

(declare-fun e!2381512 () (Set Token!11760))

(assert (=> d!1142163 (= (content!6074 lt!1338043) e!2381512)))

(declare-fun b!3852820 () Bool)

(assert (=> b!3852820 (= e!2381512 (as set.empty (Set Token!11760)))))

(declare-fun b!3852821 () Bool)

(assert (=> b!3852821 (= e!2381512 (set.union (set.insert (h!46245 lt!1338043) (as set.empty (Set Token!11760))) (content!6074 (t!311996 lt!1338043))))))

(assert (= (and d!1142163 c!670961) b!3852820))

(assert (= (and d!1142163 (not c!670961)) b!3852821))

(declare-fun m!4407843 () Bool)

(assert (=> b!3852821 m!4407843))

(declare-fun m!4407845 () Bool)

(assert (=> b!3852821 m!4407845))

(assert (=> d!1141981 d!1142163))

(declare-fun d!1142165 () Bool)

(declare-fun c!670962 () Bool)

(assert (=> d!1142165 (= c!670962 (is-Nil!40825 prefixTokens!80))))

(declare-fun e!2381513 () (Set Token!11760))

(assert (=> d!1142165 (= (content!6074 prefixTokens!80) e!2381513)))

(declare-fun b!3852822 () Bool)

(assert (=> b!3852822 (= e!2381513 (as set.empty (Set Token!11760)))))

(declare-fun b!3852823 () Bool)

(assert (=> b!3852823 (= e!2381513 (set.union (set.insert (h!46245 prefixTokens!80) (as set.empty (Set Token!11760))) (content!6074 (t!311996 prefixTokens!80))))))

(assert (= (and d!1142165 c!670962) b!3852822))

(assert (= (and d!1142165 (not c!670962)) b!3852823))

(declare-fun m!4407847 () Bool)

(assert (=> b!3852823 m!4407847))

(declare-fun m!4407849 () Bool)

(assert (=> b!3852823 m!4407849))

(assert (=> d!1141981 d!1142165))

(declare-fun d!1142167 () Bool)

(declare-fun c!670963 () Bool)

(assert (=> d!1142167 (= c!670963 (is-Nil!40825 suffixTokens!72))))

(declare-fun e!2381514 () (Set Token!11760))

(assert (=> d!1142167 (= (content!6074 suffixTokens!72) e!2381514)))

(declare-fun b!3852824 () Bool)

(assert (=> b!3852824 (= e!2381514 (as set.empty (Set Token!11760)))))

(declare-fun b!3852825 () Bool)

(assert (=> b!3852825 (= e!2381514 (set.union (set.insert (h!46245 suffixTokens!72) (as set.empty (Set Token!11760))) (content!6074 (t!311996 suffixTokens!72))))))

(assert (= (and d!1142167 c!670963) b!3852824))

(assert (= (and d!1142167 (not c!670963)) b!3852825))

(declare-fun m!4407851 () Bool)

(assert (=> b!3852825 m!4407851))

(declare-fun m!4407853 () Bool)

(assert (=> b!3852825 m!4407853))

(assert (=> d!1141981 d!1142167))

(declare-fun d!1142169 () Bool)

(assert (=> d!1142169 (= (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (= (mod (str.len (value!200498 (tag!7171 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3852579 d!1142169))

(declare-fun d!1142171 () Bool)

(declare-fun res!1559801 () Bool)

(declare-fun e!2381515 () Bool)

(assert (=> d!1142171 (=> (not res!1559801) (not e!2381515))))

(assert (=> d!1142171 (= res!1559801 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))))))

(assert (=> d!1142171 (= (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) e!2381515)))

(declare-fun b!3852826 () Bool)

(assert (=> b!3852826 (= e!2381515 (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))))))

(assert (= (and d!1142171 res!1559801) b!3852826))

(declare-fun m!4407855 () Bool)

(assert (=> d!1142171 m!4407855))

(declare-fun m!4407857 () Bool)

(assert (=> b!3852826 m!4407857))

(assert (=> b!3852579 d!1142171))

(declare-fun d!1142173 () Bool)

(declare-fun isBalanced!3623 (Conc!12522) Bool)

(assert (=> d!1142173 (= (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))) (isBalanced!3623 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(declare-fun bs!582910 () Bool)

(assert (= bs!582910 d!1142173))

(declare-fun m!4407859 () Bool)

(assert (=> bs!582910 m!4407859))

(assert (=> tb!222353 d!1142173))

(declare-fun d!1142175 () Bool)

(assert (=> d!1142175 (= (isEmpty!24169 lt!1338072) (not (is-Some!8728 lt!1338072)))))

(assert (=> d!1142013 d!1142175))

(declare-fun d!1142177 () Bool)

(assert (=> d!1142177 (= (isEmpty!24163 (_1!23145 lt!1338071)) (is-Nil!40822 (_1!23145 lt!1338071)))))

(assert (=> d!1142013 d!1142177))

(declare-fun d!1142179 () Bool)

(declare-fun lt!1338206 () tuple2!40022)

(assert (=> d!1142179 (= (++!10380 (_1!23145 lt!1338206) (_2!23145 lt!1338206)) lt!1337935)))

(declare-fun sizeTr!236 (List!40946 Int) Int)

(assert (=> d!1142179 (= lt!1338206 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 0 lt!1337935 lt!1337935 (sizeTr!236 lt!1337935 0)))))

(declare-fun lt!1338203 () Unit!58493)

(declare-fun lt!1338199 () Unit!58493)

(assert (=> d!1142179 (= lt!1338203 lt!1338199)))

(declare-fun lt!1338202 () List!40946)

(declare-fun lt!1338204 () Int)

(assert (=> d!1142179 (= (sizeTr!236 lt!1338202 lt!1338204) (+ (size!30708 lt!1338202) lt!1338204))))

(declare-fun lemmaSizeTrEqualsSize!235 (List!40946 Int) Unit!58493)

(assert (=> d!1142179 (= lt!1338199 (lemmaSizeTrEqualsSize!235 lt!1338202 lt!1338204))))

(assert (=> d!1142179 (= lt!1338204 0)))

(assert (=> d!1142179 (= lt!1338202 Nil!40822)))

(declare-fun lt!1338201 () Unit!58493)

(declare-fun lt!1338200 () Unit!58493)

(assert (=> d!1142179 (= lt!1338201 lt!1338200)))

(declare-fun lt!1338205 () Int)

(assert (=> d!1142179 (= (sizeTr!236 lt!1337935 lt!1338205) (+ (size!30708 lt!1337935) lt!1338205))))

(assert (=> d!1142179 (= lt!1338200 (lemmaSizeTrEqualsSize!235 lt!1337935 lt!1338205))))

(assert (=> d!1142179 (= lt!1338205 0)))

(assert (=> d!1142179 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142179 (= (findLongestMatch!1084 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337935) lt!1338206)))

(declare-fun bs!582911 () Bool)

(assert (= bs!582911 d!1142179))

(declare-fun m!4407861 () Bool)

(assert (=> bs!582911 m!4407861))

(declare-fun m!4407863 () Bool)

(assert (=> bs!582911 m!4407863))

(declare-fun m!4407865 () Bool)

(assert (=> bs!582911 m!4407865))

(declare-fun m!4407867 () Bool)

(assert (=> bs!582911 m!4407867))

(declare-fun m!4407869 () Bool)

(assert (=> bs!582911 m!4407869))

(assert (=> bs!582911 m!4407863))

(declare-fun m!4407871 () Bool)

(assert (=> bs!582911 m!4407871))

(assert (=> bs!582911 m!4407373))

(declare-fun m!4407873 () Bool)

(assert (=> bs!582911 m!4407873))

(declare-fun m!4407875 () Bool)

(assert (=> bs!582911 m!4407875))

(assert (=> bs!582911 m!4407065))

(assert (=> d!1142013 d!1142179))

(assert (=> d!1142013 d!1142047))

(declare-fun d!1142181 () Bool)

(assert (=> d!1142181 (= (isEmpty!24163 (originalCharacters!6911 (h!46245 prefixTokens!80))) (is-Nil!40822 (originalCharacters!6911 (h!46245 prefixTokens!80))))))

(assert (=> d!1142019 d!1142181))

(declare-fun d!1142183 () Bool)

(assert (=> d!1142183 (= (isEmpty!24163 lt!1337934) (is-Nil!40822 lt!1337934))))

(assert (=> bm!282252 d!1142183))

(declare-fun d!1142185 () Bool)

(declare-fun c!670966 () Bool)

(assert (=> d!1142185 (= c!670966 (is-Nil!40822 lt!1338090))))

(declare-fun e!2381518 () (Set C!22618))

(assert (=> d!1142185 (= (content!6075 lt!1338090) e!2381518)))

(declare-fun b!3852831 () Bool)

(assert (=> b!3852831 (= e!2381518 (as set.empty (Set C!22618)))))

(declare-fun b!3852832 () Bool)

(assert (=> b!3852832 (= e!2381518 (set.union (set.insert (h!46242 lt!1338090) (as set.empty (Set C!22618))) (content!6075 (t!311993 lt!1338090))))))

(assert (= (and d!1142185 c!670966) b!3852831))

(assert (= (and d!1142185 (not c!670966)) b!3852832))

(declare-fun m!4407877 () Bool)

(assert (=> b!3852832 m!4407877))

(declare-fun m!4407879 () Bool)

(assert (=> b!3852832 m!4407879))

(assert (=> d!1142025 d!1142185))

(declare-fun d!1142187 () Bool)

(declare-fun c!670967 () Bool)

(assert (=> d!1142187 (= c!670967 (is-Nil!40822 lt!1337934))))

(declare-fun e!2381519 () (Set C!22618))

(assert (=> d!1142187 (= (content!6075 lt!1337934) e!2381519)))

(declare-fun b!3852833 () Bool)

(assert (=> b!3852833 (= e!2381519 (as set.empty (Set C!22618)))))

(declare-fun b!3852834 () Bool)

(assert (=> b!3852834 (= e!2381519 (set.union (set.insert (h!46242 lt!1337934) (as set.empty (Set C!22618))) (content!6075 (t!311993 lt!1337934))))))

(assert (= (and d!1142187 c!670967) b!3852833))

(assert (= (and d!1142187 (not c!670967)) b!3852834))

(declare-fun m!4407881 () Bool)

(assert (=> b!3852834 m!4407881))

(declare-fun m!4407883 () Bool)

(assert (=> b!3852834 m!4407883))

(assert (=> d!1142025 d!1142187))

(declare-fun d!1142189 () Bool)

(declare-fun c!670968 () Bool)

(assert (=> d!1142189 (= c!670968 (is-Nil!40822 (_2!23142 (v!39022 lt!1337950))))))

(declare-fun e!2381520 () (Set C!22618))

(assert (=> d!1142189 (= (content!6075 (_2!23142 (v!39022 lt!1337950))) e!2381520)))

(declare-fun b!3852835 () Bool)

(assert (=> b!3852835 (= e!2381520 (as set.empty (Set C!22618)))))

(declare-fun b!3852836 () Bool)

(assert (=> b!3852836 (= e!2381520 (set.union (set.insert (h!46242 (_2!23142 (v!39022 lt!1337950))) (as set.empty (Set C!22618))) (content!6075 (t!311993 (_2!23142 (v!39022 lt!1337950))))))))

(assert (= (and d!1142189 c!670968) b!3852835))

(assert (= (and d!1142189 (not c!670968)) b!3852836))

(declare-fun m!4407885 () Bool)

(assert (=> b!3852836 m!4407885))

(declare-fun m!4407887 () Bool)

(assert (=> b!3852836 m!4407887))

(assert (=> d!1142025 d!1142189))

(declare-fun b!3852837 () Bool)

(declare-fun e!2381521 () Bool)

(declare-fun lt!1338207 () tuple2!40014)

(assert (=> b!3852837 (= e!2381521 (= (_2!23141 lt!1338207) (_2!23142 (v!39022 lt!1338038))))))

(declare-fun b!3852838 () Bool)

(declare-fun e!2381523 () Bool)

(assert (=> b!3852838 (= e!2381521 e!2381523)))

(declare-fun res!1559802 () Bool)

(assert (=> b!3852838 (= res!1559802 (< (size!30708 (_2!23141 lt!1338207)) (size!30708 (_2!23142 (v!39022 lt!1338038)))))))

(assert (=> b!3852838 (=> (not res!1559802) (not e!2381523))))

(declare-fun b!3852839 () Bool)

(declare-fun e!2381522 () tuple2!40014)

(declare-fun lt!1338208 () Option!8729)

(declare-fun lt!1338209 () tuple2!40014)

(assert (=> b!3852839 (= e!2381522 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338208)) (_1!23141 lt!1338209)) (_2!23141 lt!1338209)))))

(assert (=> b!3852839 (= lt!1338209 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338208))))))

(declare-fun d!1142191 () Bool)

(assert (=> d!1142191 e!2381521))

(declare-fun c!670969 () Bool)

(assert (=> d!1142191 (= c!670969 (> (size!30711 (_1!23141 lt!1338207)) 0))))

(assert (=> d!1142191 (= lt!1338207 e!2381522)))

(declare-fun c!670970 () Bool)

(assert (=> d!1142191 (= c!670970 (is-Some!8728 lt!1338208))))

(assert (=> d!1142191 (= lt!1338208 (maxPrefix!3204 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338038))))))

(assert (=> d!1142191 (= (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338038))) lt!1338207)))

(declare-fun b!3852840 () Bool)

(assert (=> b!3852840 (= e!2381522 (tuple2!40015 Nil!40825 (_2!23142 (v!39022 lt!1338038))))))

(declare-fun b!3852841 () Bool)

(assert (=> b!3852841 (= e!2381523 (not (isEmpty!24164 (_1!23141 lt!1338207))))))

(assert (= (and d!1142191 c!670970) b!3852839))

(assert (= (and d!1142191 (not c!670970)) b!3852840))

(assert (= (and d!1142191 c!670969) b!3852838))

(assert (= (and d!1142191 (not c!670969)) b!3852837))

(assert (= (and b!3852838 res!1559802) b!3852841))

(declare-fun m!4407889 () Bool)

(assert (=> b!3852838 m!4407889))

(declare-fun m!4407891 () Bool)

(assert (=> b!3852838 m!4407891))

(declare-fun m!4407893 () Bool)

(assert (=> b!3852839 m!4407893))

(declare-fun m!4407895 () Bool)

(assert (=> d!1142191 m!4407895))

(declare-fun m!4407897 () Bool)

(assert (=> d!1142191 m!4407897))

(declare-fun m!4407899 () Bool)

(assert (=> b!3852841 m!4407899))

(assert (=> b!3852301 d!1142191))

(declare-fun d!1142193 () Bool)

(assert (=> d!1142193 (= (isEmpty!24169 lt!1338027) (not (is-Some!8728 lt!1338027)))))

(assert (=> d!1141971 d!1142193))

(declare-fun b!3852845 () Bool)

(declare-fun e!2381525 () Bool)

(assert (=> b!3852845 (= e!2381525 (>= (size!30708 lt!1337935) (size!30708 lt!1337935)))))

(declare-fun d!1142195 () Bool)

(assert (=> d!1142195 e!2381525))

(declare-fun res!1559805 () Bool)

(assert (=> d!1142195 (=> res!1559805 e!2381525)))

(declare-fun lt!1338210 () Bool)

(assert (=> d!1142195 (= res!1559805 (not lt!1338210))))

(declare-fun e!2381526 () Bool)

(assert (=> d!1142195 (= lt!1338210 e!2381526)))

(declare-fun res!1559804 () Bool)

(assert (=> d!1142195 (=> res!1559804 e!2381526)))

(assert (=> d!1142195 (= res!1559804 (is-Nil!40822 lt!1337935))))

(assert (=> d!1142195 (= (isPrefix!3410 lt!1337935 lt!1337935) lt!1338210)))

(declare-fun b!3852844 () Bool)

(declare-fun e!2381524 () Bool)

(assert (=> b!3852844 (= e!2381524 (isPrefix!3410 (tail!5826 lt!1337935) (tail!5826 lt!1337935)))))

(declare-fun b!3852842 () Bool)

(assert (=> b!3852842 (= e!2381526 e!2381524)))

(declare-fun res!1559803 () Bool)

(assert (=> b!3852842 (=> (not res!1559803) (not e!2381524))))

(assert (=> b!3852842 (= res!1559803 (not (is-Nil!40822 lt!1337935)))))

(declare-fun b!3852843 () Bool)

(declare-fun res!1559806 () Bool)

(assert (=> b!3852843 (=> (not res!1559806) (not e!2381524))))

(assert (=> b!3852843 (= res!1559806 (= (head!8105 lt!1337935) (head!8105 lt!1337935)))))

(assert (= (and d!1142195 (not res!1559804)) b!3852842))

(assert (= (and b!3852842 res!1559803) b!3852843))

(assert (= (and b!3852843 res!1559806) b!3852844))

(assert (= (and d!1142195 (not res!1559805)) b!3852845))

(assert (=> b!3852845 m!4407065))

(assert (=> b!3852845 m!4407065))

(assert (=> b!3852844 m!4407523))

(assert (=> b!3852844 m!4407523))

(assert (=> b!3852844 m!4407523))

(assert (=> b!3852844 m!4407523))

(declare-fun m!4407901 () Bool)

(assert (=> b!3852844 m!4407901))

(declare-fun m!4407903 () Bool)

(assert (=> b!3852843 m!4407903))

(assert (=> b!3852843 m!4407903))

(assert (=> d!1141971 d!1142195))

(declare-fun d!1142197 () Bool)

(assert (=> d!1142197 (isPrefix!3410 lt!1337935 lt!1337935)))

(declare-fun lt!1338213 () Unit!58493)

(declare-fun choose!22681 (List!40946 List!40946) Unit!58493)

(assert (=> d!1142197 (= lt!1338213 (choose!22681 lt!1337935 lt!1337935))))

(assert (=> d!1142197 (= (lemmaIsPrefixRefl!2175 lt!1337935 lt!1337935) lt!1338213)))

(declare-fun bs!582912 () Bool)

(assert (= bs!582912 d!1142197))

(assert (=> bs!582912 m!4407259))

(declare-fun m!4407905 () Bool)

(assert (=> bs!582912 m!4407905))

(assert (=> d!1141971 d!1142197))

(declare-fun d!1142199 () Bool)

(assert (=> d!1142199 true))

(declare-fun lt!1338216 () Bool)

(declare-fun lambda!126160 () Int)

(declare-fun forall!8289 (List!40948 Int) Bool)

(assert (=> d!1142199 (= lt!1338216 (forall!8289 rules!2768 lambda!126160))))

(declare-fun e!2381532 () Bool)

(assert (=> d!1142199 (= lt!1338216 e!2381532)))

(declare-fun res!1559812 () Bool)

(assert (=> d!1142199 (=> res!1559812 e!2381532)))

(assert (=> d!1142199 (= res!1559812 (not (is-Cons!40824 rules!2768)))))

(assert (=> d!1142199 (= (rulesValidInductive!2245 thiss!20629 rules!2768) lt!1338216)))

(declare-fun b!3852850 () Bool)

(declare-fun e!2381531 () Bool)

(assert (=> b!3852850 (= e!2381532 e!2381531)))

(declare-fun res!1559811 () Bool)

(assert (=> b!3852850 (=> (not res!1559811) (not e!2381531))))

(assert (=> b!3852850 (= res!1559811 (ruleValid!2263 thiss!20629 (h!46244 rules!2768)))))

(declare-fun b!3852851 () Bool)

(assert (=> b!3852851 (= e!2381531 (rulesValidInductive!2245 thiss!20629 (t!311995 rules!2768)))))

(assert (= (and d!1142199 (not res!1559812)) b!3852850))

(assert (= (and b!3852850 res!1559811) b!3852851))

(declare-fun m!4407907 () Bool)

(assert (=> d!1142199 m!4407907))

(declare-fun m!4407909 () Bool)

(assert (=> b!3852850 m!4407909))

(declare-fun m!4407911 () Bool)

(assert (=> b!3852851 m!4407911))

(assert (=> d!1141971 d!1142199))

(declare-fun d!1142201 () Bool)

(declare-fun lt!1338217 () Int)

(assert (=> d!1142201 (>= lt!1338217 0)))

(declare-fun e!2381533 () Int)

(assert (=> d!1142201 (= lt!1338217 e!2381533)))

(declare-fun c!670971 () Bool)

(assert (=> d!1142201 (= c!670971 (is-Nil!40822 (t!311993 prefix!426)))))

(assert (=> d!1142201 (= (size!30708 (t!311993 prefix!426)) lt!1338217)))

(declare-fun b!3852854 () Bool)

(assert (=> b!3852854 (= e!2381533 0)))

(declare-fun b!3852855 () Bool)

(assert (=> b!3852855 (= e!2381533 (+ 1 (size!30708 (t!311993 (t!311993 prefix!426)))))))

(assert (= (and d!1142201 c!670971) b!3852854))

(assert (= (and d!1142201 (not c!670971)) b!3852855))

(declare-fun m!4407913 () Bool)

(assert (=> b!3852855 m!4407913))

(assert (=> b!3852469 d!1142201))

(declare-fun d!1142203 () Bool)

(assert (=> d!1142203 (= (_2!23142 (v!39022 lt!1337950)) lt!1337951)))

(assert (=> d!1142203 true))

(declare-fun _$63!936 () Unit!58493)

(assert (=> d!1142203 (= (choose!22676 lt!1337934 (_2!23142 (v!39022 lt!1337950)) lt!1337934 lt!1337951 lt!1337935) _$63!936)))

(assert (=> d!1142041 d!1142203))

(declare-fun b!3852859 () Bool)

(declare-fun e!2381535 () Bool)

(assert (=> b!3852859 (= e!2381535 (>= (size!30708 lt!1337935) (size!30708 lt!1337934)))))

(declare-fun d!1142205 () Bool)

(assert (=> d!1142205 e!2381535))

(declare-fun res!1559815 () Bool)

(assert (=> d!1142205 (=> res!1559815 e!2381535)))

(declare-fun lt!1338218 () Bool)

(assert (=> d!1142205 (= res!1559815 (not lt!1338218))))

(declare-fun e!2381536 () Bool)

(assert (=> d!1142205 (= lt!1338218 e!2381536)))

(declare-fun res!1559814 () Bool)

(assert (=> d!1142205 (=> res!1559814 e!2381536)))

(assert (=> d!1142205 (= res!1559814 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142205 (= (isPrefix!3410 lt!1337934 lt!1337935) lt!1338218)))

(declare-fun b!3852858 () Bool)

(declare-fun e!2381534 () Bool)

(assert (=> b!3852858 (= e!2381534 (isPrefix!3410 (tail!5826 lt!1337934) (tail!5826 lt!1337935)))))

(declare-fun b!3852856 () Bool)

(assert (=> b!3852856 (= e!2381536 e!2381534)))

(declare-fun res!1559813 () Bool)

(assert (=> b!3852856 (=> (not res!1559813) (not e!2381534))))

(assert (=> b!3852856 (= res!1559813 (not (is-Nil!40822 lt!1337935)))))

(declare-fun b!3852857 () Bool)

(declare-fun res!1559816 () Bool)

(assert (=> b!3852857 (=> (not res!1559816) (not e!2381534))))

(assert (=> b!3852857 (= res!1559816 (= (head!8105 lt!1337934) (head!8105 lt!1337935)))))

(assert (= (and d!1142205 (not res!1559814)) b!3852856))

(assert (= (and b!3852856 res!1559813) b!3852857))

(assert (= (and b!3852857 res!1559816) b!3852858))

(assert (= (and d!1142205 (not res!1559815)) b!3852859))

(assert (=> b!3852859 m!4407065))

(assert (=> b!3852859 m!4407105))

(assert (=> b!3852858 m!4407375))

(assert (=> b!3852858 m!4407523))

(assert (=> b!3852858 m!4407375))

(assert (=> b!3852858 m!4407523))

(declare-fun m!4407915 () Bool)

(assert (=> b!3852858 m!4407915))

(assert (=> b!3852857 m!4407379))

(assert (=> b!3852857 m!4407903))

(assert (=> d!1142041 d!1142205))

(declare-fun d!1142207 () Bool)

(declare-fun lt!1338221 () Int)

(assert (=> d!1142207 (>= lt!1338221 0)))

(declare-fun e!2381539 () Int)

(assert (=> d!1142207 (= lt!1338221 e!2381539)))

(declare-fun c!670974 () Bool)

(assert (=> d!1142207 (= c!670974 (is-Nil!40825 lt!1338012))))

(assert (=> d!1142207 (= (size!30711 lt!1338012) lt!1338221)))

(declare-fun b!3852864 () Bool)

(assert (=> b!3852864 (= e!2381539 0)))

(declare-fun b!3852865 () Bool)

(assert (=> b!3852865 (= e!2381539 (+ 1 (size!30711 (t!311996 lt!1338012))))))

(assert (= (and d!1142207 c!670974) b!3852864))

(assert (= (and d!1142207 (not c!670974)) b!3852865))

(declare-fun m!4407917 () Bool)

(assert (=> b!3852865 m!4407917))

(assert (=> b!3852215 d!1142207))

(declare-fun d!1142209 () Bool)

(declare-fun lt!1338222 () Int)

(assert (=> d!1142209 (>= lt!1338222 0)))

(declare-fun e!2381540 () Int)

(assert (=> d!1142209 (= lt!1338222 e!2381540)))

(declare-fun c!670975 () Bool)

(assert (=> d!1142209 (= c!670975 (is-Nil!40825 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))

(assert (=> d!1142209 (= (size!30711 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) lt!1338222)))

(declare-fun b!3852866 () Bool)

(assert (=> b!3852866 (= e!2381540 0)))

(declare-fun b!3852867 () Bool)

(assert (=> b!3852867 (= e!2381540 (+ 1 (size!30711 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))))

(assert (= (and d!1142209 c!670975) b!3852866))

(assert (= (and d!1142209 (not c!670975)) b!3852867))

(declare-fun m!4407919 () Bool)

(assert (=> b!3852867 m!4407919))

(assert (=> b!3852215 d!1142209))

(declare-fun d!1142211 () Bool)

(declare-fun lt!1338223 () Int)

(assert (=> d!1142211 (>= lt!1338223 0)))

(declare-fun e!2381541 () Int)

(assert (=> d!1142211 (= lt!1338223 e!2381541)))

(declare-fun c!670976 () Bool)

(assert (=> d!1142211 (= c!670976 (is-Nil!40825 (_1!23141 lt!1337941)))))

(assert (=> d!1142211 (= (size!30711 (_1!23141 lt!1337941)) lt!1338223)))

(declare-fun b!3852868 () Bool)

(assert (=> b!3852868 (= e!2381541 0)))

(declare-fun b!3852869 () Bool)

(assert (=> b!3852869 (= e!2381541 (+ 1 (size!30711 (t!311996 (_1!23141 lt!1337941)))))))

(assert (= (and d!1142211 c!670976) b!3852868))

(assert (= (and d!1142211 (not c!670976)) b!3852869))

(declare-fun m!4407921 () Bool)

(assert (=> b!3852869 m!4407921))

(assert (=> b!3852215 d!1142211))

(declare-fun d!1142213 () Bool)

(assert (=> d!1142213 (= (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))) (list!15197 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(declare-fun bs!582913 () Bool)

(assert (= bs!582913 d!1142213))

(declare-fun m!4407923 () Bool)

(assert (=> bs!582913 m!4407923))

(assert (=> b!3852470 d!1142213))

(declare-fun b!3852870 () Bool)

(declare-fun e!2381544 () Bool)

(assert (=> b!3852870 (= e!2381544 (inv!15 (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))

(declare-fun d!1142215 () Bool)

(declare-fun c!670978 () Bool)

(assert (=> d!1142215 (= c!670978 (is-IntegerValue!19623 (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))

(declare-fun e!2381542 () Bool)

(assert (=> d!1142215 (= (inv!21 (value!200499 (h!46245 (t!311996 suffixTokens!72)))) e!2381542)))

(declare-fun b!3852871 () Bool)

(declare-fun res!1559817 () Bool)

(assert (=> b!3852871 (=> res!1559817 e!2381544)))

(assert (=> b!3852871 (= res!1559817 (not (is-IntegerValue!19625 (value!200499 (h!46245 (t!311996 suffixTokens!72))))))))

(declare-fun e!2381543 () Bool)

(assert (=> b!3852871 (= e!2381543 e!2381544)))

(declare-fun b!3852872 () Bool)

(assert (=> b!3852872 (= e!2381543 (inv!17 (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))

(declare-fun b!3852873 () Bool)

(assert (=> b!3852873 (= e!2381542 e!2381543)))

(declare-fun c!670977 () Bool)

(assert (=> b!3852873 (= c!670977 (is-IntegerValue!19624 (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))

(declare-fun b!3852874 () Bool)

(assert (=> b!3852874 (= e!2381542 (inv!16 (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))

(assert (= (and d!1142215 c!670978) b!3852874))

(assert (= (and d!1142215 (not c!670978)) b!3852873))

(assert (= (and b!3852873 c!670977) b!3852872))

(assert (= (and b!3852873 (not c!670977)) b!3852871))

(assert (= (and b!3852871 (not res!1559817)) b!3852870))

(declare-fun m!4407925 () Bool)

(assert (=> b!3852870 m!4407925))

(declare-fun m!4407927 () Bool)

(assert (=> b!3852872 m!4407927))

(declare-fun m!4407929 () Bool)

(assert (=> b!3852874 m!4407929))

(assert (=> b!3852550 d!1142215))

(declare-fun d!1142217 () Bool)

(declare-fun lt!1338224 () Int)

(assert (=> d!1142217 (>= lt!1338224 0)))

(declare-fun e!2381545 () Int)

(assert (=> d!1142217 (= lt!1338224 e!2381545)))

(declare-fun c!670979 () Bool)

(assert (=> d!1142217 (= c!670979 (is-Nil!40822 (_2!23141 lt!1338040)))))

(assert (=> d!1142217 (= (size!30708 (_2!23141 lt!1338040)) lt!1338224)))

(declare-fun b!3852875 () Bool)

(assert (=> b!3852875 (= e!2381545 0)))

(declare-fun b!3852876 () Bool)

(assert (=> b!3852876 (= e!2381545 (+ 1 (size!30708 (t!311993 (_2!23141 lt!1338040)))))))

(assert (= (and d!1142217 c!670979) b!3852875))

(assert (= (and d!1142217 (not c!670979)) b!3852876))

(declare-fun m!4407931 () Bool)

(assert (=> b!3852876 m!4407931))

(assert (=> b!3852305 d!1142217))

(assert (=> b!3852305 d!1141999))

(assert (=> b!3852436 d!1141999))

(declare-fun d!1142219 () Bool)

(declare-fun lt!1338225 () Int)

(assert (=> d!1142219 (>= lt!1338225 0)))

(declare-fun e!2381546 () Int)

(assert (=> d!1142219 (= lt!1338225 e!2381546)))

(declare-fun c!670980 () Bool)

(assert (=> d!1142219 (= c!670980 (is-Nil!40822 Nil!40822))))

(assert (=> d!1142219 (= (size!30708 Nil!40822) lt!1338225)))

(declare-fun b!3852877 () Bool)

(assert (=> b!3852877 (= e!2381546 0)))

(declare-fun b!3852878 () Bool)

(assert (=> b!3852878 (= e!2381546 (+ 1 (size!30708 (t!311993 Nil!40822))))))

(assert (= (and d!1142219 c!670980) b!3852877))

(assert (= (and d!1142219 (not c!670980)) b!3852878))

(declare-fun m!4407933 () Bool)

(assert (=> b!3852878 m!4407933))

(assert (=> b!3852436 d!1142219))

(declare-fun d!1142221 () Bool)

(assert (=> d!1142221 (= (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 (_1!23145 lt!1338071))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 (_1!23145 lt!1338071))))))

(declare-fun b_lambda!112619 () Bool)

(assert (=> (not b_lambda!112619) (not d!1142221)))

(declare-fun tb!222473 () Bool)

(declare-fun t!312124 () Bool)

(assert (=> (and b!3852109 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312124) tb!222473))

(declare-fun result!271058 () Bool)

(assert (=> tb!222473 (= result!271058 (inv!21 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 (_1!23145 lt!1338071)))))))

(declare-fun m!4407935 () Bool)

(assert (=> tb!222473 m!4407935))

(assert (=> d!1142221 t!312124))

(declare-fun b_and!287871 () Bool)

(assert (= b_and!287865 (and (=> t!312124 result!271058) b_and!287871)))

(declare-fun t!312126 () Bool)

(declare-fun tb!222475 () Bool)

(assert (=> (and b!3852580 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312126) tb!222475))

(declare-fun result!271060 () Bool)

(assert (= result!271060 result!271058))

(assert (=> d!1142221 t!312126))

(declare-fun b_and!287873 () Bool)

(assert (= b_and!287863 (and (=> t!312126 result!271060) b_and!287873)))

(declare-fun t!312128 () Bool)

(declare-fun tb!222477 () Bool)

(assert (=> (and b!3852552 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312128) tb!222477))

(declare-fun result!271062 () Bool)

(assert (= result!271062 result!271058))

(assert (=> d!1142221 t!312128))

(declare-fun b_and!287875 () Bool)

(assert (= b_and!287869 (and (=> t!312128 result!271062) b_and!287875)))

(declare-fun tb!222479 () Bool)

(declare-fun t!312130 () Bool)

(assert (=> (and b!3852098 (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312130) tb!222479))

(declare-fun result!271064 () Bool)

(assert (= result!271064 result!271058))

(assert (=> d!1142221 t!312130))

(declare-fun b_and!287877 () Bool)

(assert (= b_and!287859 (and (=> t!312130 result!271064) b_and!287877)))

(declare-fun tb!222481 () Bool)

(declare-fun t!312132 () Bool)

(assert (=> (and b!3852102 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312132) tb!222481))

(declare-fun result!271066 () Bool)

(assert (= result!271066 result!271058))

(assert (=> d!1142221 t!312132))

(declare-fun b_and!287879 () Bool)

(assert (= b_and!287867 (and (=> t!312132 result!271066) b_and!287879)))

(declare-fun tb!222483 () Bool)

(declare-fun t!312134 () Bool)

(assert (=> (and b!3852563 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312134) tb!222483))

(declare-fun result!271068 () Bool)

(assert (= result!271068 result!271058))

(assert (=> d!1142221 t!312134))

(declare-fun b_and!287881 () Bool)

(assert (= b_and!287861 (and (=> t!312134 result!271068) b_and!287881)))

(assert (=> d!1142221 m!4407391))

(declare-fun m!4407937 () Bool)

(assert (=> d!1142221 m!4407937))

(assert (=> b!3852436 d!1142221))

(declare-fun d!1142223 () Bool)

(assert (=> d!1142223 (= (seqFromList!4582 (_1!23145 lt!1338071)) (fromListB!2115 (_1!23145 lt!1338071)))))

(declare-fun bs!582914 () Bool)

(assert (= bs!582914 d!1142223))

(declare-fun m!4407939 () Bool)

(assert (=> bs!582914 m!4407939))

(assert (=> b!3852436 d!1142223))

(declare-fun d!1142225 () Bool)

(declare-fun lt!1338228 () Int)

(assert (=> d!1142225 (= lt!1338228 (size!30708 (list!15195 (seqFromList!4582 (_1!23145 lt!1338071)))))))

(declare-fun size!30715 (Conc!12522) Int)

(assert (=> d!1142225 (= lt!1338228 (size!30715 (c!670845 (seqFromList!4582 (_1!23145 lt!1338071)))))))

(assert (=> d!1142225 (= (size!30712 (seqFromList!4582 (_1!23145 lt!1338071))) lt!1338228)))

(declare-fun bs!582915 () Bool)

(assert (= bs!582915 d!1142225))

(assert (=> bs!582915 m!4407391))

(declare-fun m!4407941 () Bool)

(assert (=> bs!582915 m!4407941))

(assert (=> bs!582915 m!4407941))

(declare-fun m!4407943 () Bool)

(assert (=> bs!582915 m!4407943))

(declare-fun m!4407945 () Bool)

(assert (=> bs!582915 m!4407945))

(assert (=> b!3852436 d!1142225))

(declare-fun d!1142227 () Bool)

(assert (=> d!1142227 (= (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))) (is-Nil!40822 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(assert (=> b!3852436 d!1142227))

(declare-fun b!3852907 () Bool)

(declare-fun e!2381564 () tuple2!40022)

(declare-fun e!2381565 () tuple2!40022)

(assert (=> b!3852907 (= e!2381564 e!2381565)))

(declare-fun lt!1338309 () tuple2!40022)

(declare-fun call!282278 () tuple2!40022)

(assert (=> b!3852907 (= lt!1338309 call!282278)))

(declare-fun c!670995 () Bool)

(assert (=> b!3852907 (= c!670995 (isEmpty!24163 (_1!23145 lt!1338309)))))

(declare-fun b!3852908 () Bool)

(declare-fun e!2381569 () tuple2!40022)

(declare-fun e!2381568 () tuple2!40022)

(assert (=> b!3852908 (= e!2381569 e!2381568)))

(declare-fun c!670997 () Bool)

(assert (=> b!3852908 (= c!670997 (= (size!30708 Nil!40822) (size!30708 lt!1337935)))))

(declare-fun bm!282272 () Bool)

(declare-fun call!282279 () Unit!58493)

(declare-fun lemmaIsPrefixSameLengthThenSameList!700 (List!40946 List!40946 List!40946) Unit!58493)

(assert (=> bm!282272 (= call!282279 (lemmaIsPrefixSameLengthThenSameList!700 lt!1337935 Nil!40822 lt!1337935))))

(declare-fun bm!282273 () Bool)

(declare-fun call!282284 () Bool)

(assert (=> bm!282273 (= call!282284 (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun bm!282274 () Bool)

(declare-fun call!282282 () Bool)

(assert (=> bm!282274 (= call!282282 (isPrefix!3410 lt!1337935 lt!1337935))))

(declare-fun b!3852909 () Bool)

(declare-fun c!670998 () Bool)

(assert (=> b!3852909 (= c!670998 call!282284)))

(declare-fun lt!1338296 () Unit!58493)

(declare-fun lt!1338288 () Unit!58493)

(assert (=> b!3852909 (= lt!1338296 lt!1338288)))

(assert (=> b!3852909 (= lt!1337935 Nil!40822)))

(assert (=> b!3852909 (= lt!1338288 call!282279)))

(declare-fun lt!1338295 () Unit!58493)

(declare-fun lt!1338304 () Unit!58493)

(assert (=> b!3852909 (= lt!1338295 lt!1338304)))

(assert (=> b!3852909 call!282282))

(declare-fun call!282277 () Unit!58493)

(assert (=> b!3852909 (= lt!1338304 call!282277)))

(declare-fun e!2381570 () tuple2!40022)

(assert (=> b!3852909 (= e!2381568 e!2381570)))

(declare-fun b!3852910 () Bool)

(assert (=> b!3852910 (= e!2381569 (tuple2!40023 Nil!40822 lt!1337935))))

(declare-fun b!3852911 () Bool)

(declare-fun e!2381571 () Unit!58493)

(declare-fun Unit!58500 () Unit!58493)

(assert (=> b!3852911 (= e!2381571 Unit!58500)))

(declare-fun lt!1338307 () Unit!58493)

(assert (=> b!3852911 (= lt!1338307 call!282277)))

(assert (=> b!3852911 call!282282))

(declare-fun lt!1338311 () Unit!58493)

(assert (=> b!3852911 (= lt!1338311 lt!1338307)))

(declare-fun lt!1338293 () Unit!58493)

(assert (=> b!3852911 (= lt!1338293 call!282279)))

(assert (=> b!3852911 (= lt!1337935 Nil!40822)))

(declare-fun lt!1338291 () Unit!58493)

(assert (=> b!3852911 (= lt!1338291 lt!1338293)))

(assert (=> b!3852911 false))

(declare-fun b!3852912 () Bool)

(assert (=> b!3852912 (= e!2381565 lt!1338309)))

(declare-fun b!3852913 () Bool)

(declare-fun c!670996 () Bool)

(assert (=> b!3852913 (= c!670996 call!282284)))

(declare-fun lt!1338306 () Unit!58493)

(declare-fun lt!1338308 () Unit!58493)

(assert (=> b!3852913 (= lt!1338306 lt!1338308)))

(declare-fun lt!1338286 () C!22618)

(declare-fun lt!1338287 () List!40946)

(assert (=> b!3852913 (= (++!10380 (++!10380 Nil!40822 (Cons!40822 lt!1338286 Nil!40822)) lt!1338287) lt!1337935)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1217 (List!40946 C!22618 List!40946 List!40946) Unit!58493)

(assert (=> b!3852913 (= lt!1338308 (lemmaMoveElementToOtherListKeepsConcatEq!1217 Nil!40822 lt!1338286 lt!1338287 lt!1337935))))

(assert (=> b!3852913 (= lt!1338287 (tail!5826 lt!1337935))))

(assert (=> b!3852913 (= lt!1338286 (head!8105 lt!1337935))))

(declare-fun lt!1338312 () Unit!58493)

(declare-fun lt!1338297 () Unit!58493)

(assert (=> b!3852913 (= lt!1338312 lt!1338297)))

(assert (=> b!3852913 (isPrefix!3410 (++!10380 Nil!40822 (Cons!40822 (head!8105 (getSuffix!1865 lt!1337935 Nil!40822)) Nil!40822)) lt!1337935)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!599 (List!40946 List!40946) Unit!58493)

(assert (=> b!3852913 (= lt!1338297 (lemmaAddHeadSuffixToPrefixStillPrefix!599 Nil!40822 lt!1337935))))

(declare-fun lt!1338303 () Unit!58493)

(declare-fun lt!1338290 () Unit!58493)

(assert (=> b!3852913 (= lt!1338303 lt!1338290)))

(assert (=> b!3852913 (= lt!1338290 (lemmaAddHeadSuffixToPrefixStillPrefix!599 Nil!40822 lt!1337935))))

(declare-fun lt!1338285 () List!40946)

(assert (=> b!3852913 (= lt!1338285 (++!10380 Nil!40822 (Cons!40822 (head!8105 lt!1337935) Nil!40822)))))

(declare-fun lt!1338301 () Unit!58493)

(assert (=> b!3852913 (= lt!1338301 e!2381571)))

(declare-fun c!670994 () Bool)

(assert (=> b!3852913 (= c!670994 (= (size!30708 Nil!40822) (size!30708 lt!1337935)))))

(declare-fun lt!1338299 () Unit!58493)

(declare-fun lt!1338310 () Unit!58493)

(assert (=> b!3852913 (= lt!1338299 lt!1338310)))

(assert (=> b!3852913 (<= (size!30708 Nil!40822) (size!30708 lt!1337935))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!407 (List!40946 List!40946) Unit!58493)

(assert (=> b!3852913 (= lt!1338310 (lemmaIsPrefixThenSmallerEqSize!407 Nil!40822 lt!1337935))))

(assert (=> b!3852913 (= e!2381568 e!2381564)))

(declare-fun b!3852914 () Bool)

(declare-fun e!2381566 () Bool)

(declare-fun e!2381567 () Bool)

(assert (=> b!3852914 (= e!2381566 e!2381567)))

(declare-fun res!1559822 () Bool)

(assert (=> b!3852914 (=> res!1559822 e!2381567)))

(declare-fun lt!1338300 () tuple2!40022)

(assert (=> b!3852914 (= res!1559822 (isEmpty!24163 (_1!23145 lt!1338300)))))

(declare-fun b!3852915 () Bool)

(assert (=> b!3852915 (= e!2381564 call!282278)))

(declare-fun b!3852916 () Bool)

(assert (=> b!3852916 (= e!2381567 (>= (size!30708 (_1!23145 lt!1338300)) (size!30708 Nil!40822)))))

(declare-fun b!3852917 () Bool)

(assert (=> b!3852917 (= e!2381570 (tuple2!40023 Nil!40822 Nil!40822))))

(declare-fun d!1142229 () Bool)

(assert (=> d!1142229 e!2381566))

(declare-fun res!1559823 () Bool)

(assert (=> d!1142229 (=> (not res!1559823) (not e!2381566))))

(assert (=> d!1142229 (= res!1559823 (= (++!10380 (_1!23145 lt!1338300) (_2!23145 lt!1338300)) lt!1337935))))

(assert (=> d!1142229 (= lt!1338300 e!2381569)))

(declare-fun c!670993 () Bool)

(declare-fun lostCause!973 (Regex!11216) Bool)

(assert (=> d!1142229 (= c!670993 (lostCause!973 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun lt!1338292 () Unit!58493)

(declare-fun Unit!58501 () Unit!58493)

(assert (=> d!1142229 (= lt!1338292 Unit!58501)))

(assert (=> d!1142229 (= (getSuffix!1865 lt!1337935 Nil!40822) lt!1337935)))

(declare-fun lt!1338302 () Unit!58493)

(declare-fun lt!1338294 () Unit!58493)

(assert (=> d!1142229 (= lt!1338302 lt!1338294)))

(declare-fun lt!1338305 () List!40946)

(assert (=> d!1142229 (= lt!1337935 lt!1338305)))

(assert (=> d!1142229 (= lt!1338294 (lemmaSamePrefixThenSameSuffix!1631 Nil!40822 lt!1337935 Nil!40822 lt!1338305 lt!1337935))))

(assert (=> d!1142229 (= lt!1338305 (getSuffix!1865 lt!1337935 Nil!40822))))

(declare-fun lt!1338298 () Unit!58493)

(declare-fun lt!1338289 () Unit!58493)

(assert (=> d!1142229 (= lt!1338298 lt!1338289)))

(assert (=> d!1142229 (isPrefix!3410 Nil!40822 (++!10380 Nil!40822 lt!1337935))))

(assert (=> d!1142229 (= lt!1338289 (lemmaConcatTwoListThenFirstIsPrefix!2273 Nil!40822 lt!1337935))))

(assert (=> d!1142229 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142229 (= (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)) lt!1338300)))

(declare-fun b!3852918 () Bool)

(declare-fun Unit!58502 () Unit!58493)

(assert (=> b!3852918 (= e!2381571 Unit!58502)))

(declare-fun bm!282275 () Bool)

(declare-fun call!282280 () Regex!11216)

(declare-fun call!282283 () C!22618)

(assert (=> bm!282275 (= call!282280 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) call!282283))))

(declare-fun b!3852919 () Bool)

(assert (=> b!3852919 (= e!2381570 (tuple2!40023 Nil!40822 lt!1337935))))

(declare-fun bm!282276 () Bool)

(assert (=> bm!282276 (= call!282283 (head!8105 lt!1337935))))

(declare-fun bm!282277 () Bool)

(assert (=> bm!282277 (= call!282277 (lemmaIsPrefixRefl!2175 lt!1337935 lt!1337935))))

(declare-fun bm!282278 () Bool)

(declare-fun call!282281 () List!40946)

(assert (=> bm!282278 (= call!282278 (findLongestMatchInner!1171 call!282280 lt!1338285 (+ (size!30708 Nil!40822) 1) call!282281 lt!1337935 (size!30708 lt!1337935)))))

(declare-fun bm!282279 () Bool)

(assert (=> bm!282279 (= call!282281 (tail!5826 lt!1337935))))

(declare-fun b!3852920 () Bool)

(assert (=> b!3852920 (= e!2381565 (tuple2!40023 Nil!40822 lt!1337935))))

(assert (= (and d!1142229 c!670993) b!3852910))

(assert (= (and d!1142229 (not c!670993)) b!3852908))

(assert (= (and b!3852908 c!670997) b!3852909))

(assert (= (and b!3852908 (not c!670997)) b!3852913))

(assert (= (and b!3852909 c!670998) b!3852917))

(assert (= (and b!3852909 (not c!670998)) b!3852919))

(assert (= (and b!3852913 c!670994) b!3852911))

(assert (= (and b!3852913 (not c!670994)) b!3852918))

(assert (= (and b!3852913 c!670996) b!3852907))

(assert (= (and b!3852913 (not c!670996)) b!3852915))

(assert (= (and b!3852907 c!670995) b!3852920))

(assert (= (and b!3852907 (not c!670995)) b!3852912))

(assert (= (or b!3852907 b!3852915) bm!282276))

(assert (= (or b!3852907 b!3852915) bm!282279))

(assert (= (or b!3852907 b!3852915) bm!282275))

(assert (= (or b!3852907 b!3852915) bm!282278))

(assert (= (or b!3852909 b!3852911) bm!282272))

(assert (= (or b!3852909 b!3852913) bm!282273))

(assert (= (or b!3852909 b!3852911) bm!282274))

(assert (= (or b!3852909 b!3852911) bm!282277))

(assert (= (and d!1142229 res!1559823) b!3852914))

(assert (= (and b!3852914 (not res!1559822)) b!3852916))

(assert (=> bm!282279 m!4407523))

(declare-fun m!4407947 () Bool)

(assert (=> bm!282272 m!4407947))

(declare-fun m!4407949 () Bool)

(assert (=> b!3852907 m!4407949))

(declare-fun m!4407951 () Bool)

(assert (=> b!3852913 m!4407951))

(assert (=> b!3852913 m!4407065))

(declare-fun m!4407953 () Bool)

(assert (=> b!3852913 m!4407953))

(declare-fun m!4407955 () Bool)

(assert (=> b!3852913 m!4407955))

(declare-fun m!4407957 () Bool)

(assert (=> b!3852913 m!4407957))

(declare-fun m!4407959 () Bool)

(assert (=> b!3852913 m!4407959))

(assert (=> b!3852913 m!4407387))

(assert (=> b!3852913 m!4407951))

(declare-fun m!4407961 () Bool)

(assert (=> b!3852913 m!4407961))

(assert (=> b!3852913 m!4407523))

(assert (=> b!3852913 m!4407953))

(declare-fun m!4407963 () Bool)

(assert (=> b!3852913 m!4407963))

(assert (=> b!3852913 m!4407903))

(declare-fun m!4407965 () Bool)

(assert (=> b!3852913 m!4407965))

(declare-fun m!4407967 () Bool)

(assert (=> b!3852913 m!4407967))

(assert (=> b!3852913 m!4407959))

(declare-fun m!4407969 () Bool)

(assert (=> b!3852913 m!4407969))

(assert (=> bm!282273 m!4407381))

(assert (=> bm!282274 m!4407259))

(assert (=> bm!282277 m!4407261))

(declare-fun m!4407971 () Bool)

(assert (=> b!3852916 m!4407971))

(assert (=> b!3852916 m!4407387))

(declare-fun m!4407973 () Bool)

(assert (=> b!3852914 m!4407973))

(declare-fun m!4407975 () Bool)

(assert (=> bm!282275 m!4407975))

(declare-fun m!4407977 () Bool)

(assert (=> d!1142229 m!4407977))

(declare-fun m!4407979 () Bool)

(assert (=> d!1142229 m!4407979))

(declare-fun m!4407981 () Bool)

(assert (=> d!1142229 m!4407981))

(assert (=> d!1142229 m!4407373))

(declare-fun m!4407983 () Bool)

(assert (=> d!1142229 m!4407983))

(declare-fun m!4407985 () Bool)

(assert (=> d!1142229 m!4407985))

(declare-fun m!4407987 () Bool)

(assert (=> d!1142229 m!4407987))

(assert (=> d!1142229 m!4407953))

(assert (=> d!1142229 m!4407977))

(assert (=> bm!282278 m!4407065))

(declare-fun m!4407989 () Bool)

(assert (=> bm!282278 m!4407989))

(assert (=> bm!282276 m!4407903))

(assert (=> b!3852436 d!1142229))

(declare-fun d!1142231 () Bool)

(declare-fun e!2381574 () Bool)

(assert (=> d!1142231 e!2381574))

(declare-fun res!1559826 () Bool)

(assert (=> d!1142231 (=> res!1559826 e!2381574)))

(assert (=> d!1142231 (= res!1559826 (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(declare-fun lt!1338315 () Unit!58493)

(declare-fun choose!22682 (Regex!11216 List!40946) Unit!58493)

(assert (=> d!1142231 (= lt!1338315 (choose!22682 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337935))))

(assert (=> d!1142231 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142231 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1144 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1337935) lt!1338315)))

(declare-fun b!3852923 () Bool)

(assert (=> b!3852923 (= e!2381574 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(assert (= (and d!1142231 (not res!1559826)) b!3852923))

(assert (=> d!1142231 m!4407387))

(declare-fun m!4407991 () Bool)

(assert (=> d!1142231 m!4407991))

(assert (=> d!1142231 m!4407373))

(assert (=> d!1142231 m!4407387))

(assert (=> d!1142231 m!4407065))

(assert (=> d!1142231 m!4407389))

(assert (=> d!1142231 m!4407395))

(assert (=> d!1142231 m!4407065))

(assert (=> b!3852923 m!4407387))

(assert (=> b!3852923 m!4407065))

(assert (=> b!3852923 m!4407387))

(assert (=> b!3852923 m!4407065))

(assert (=> b!3852923 m!4407389))

(assert (=> b!3852923 m!4407421))

(assert (=> b!3852436 d!1142231))

(declare-fun b!3852928 () Bool)

(declare-fun e!2381577 () Bool)

(assert (=> b!3852928 (= e!2381577 true)))

(declare-fun d!1142233 () Bool)

(assert (=> d!1142233 e!2381577))

(assert (= d!1142233 b!3852928))

(declare-fun order!22161 () Int)

(declare-fun lambda!126163 () Int)

(declare-fun order!22159 () Int)

(declare-fun dynLambda!17619 (Int Int) Int)

(declare-fun dynLambda!17620 (Int Int) Int)

(assert (=> b!3852928 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (dynLambda!17620 order!22161 lambda!126163))))

(declare-fun order!22163 () Int)

(declare-fun dynLambda!17621 (Int Int) Int)

(assert (=> b!3852928 (< (dynLambda!17621 order!22163 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (dynLambda!17620 order!22161 lambda!126163))))

(assert (=> d!1142233 (= (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 (_1!23145 lt!1338071))))) (list!15195 (seqFromList!4582 (_1!23145 lt!1338071))))))

(declare-fun lt!1338318 () Unit!58493)

(declare-fun ForallOf!781 (Int BalanceConc!24638) Unit!58493)

(assert (=> d!1142233 (= lt!1338318 (ForallOf!781 lambda!126163 (seqFromList!4582 (_1!23145 lt!1338071))))))

(assert (=> d!1142233 (= (lemmaSemiInverse!1677 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 (_1!23145 lt!1338071))) lt!1338318)))

(declare-fun b_lambda!112621 () Bool)

(assert (=> (not b_lambda!112621) (not d!1142233)))

(declare-fun t!312136 () Bool)

(declare-fun tb!222485 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312136) tb!222485))

(declare-fun b!3852929 () Bool)

(declare-fun tp!1167840 () Bool)

(declare-fun e!2381578 () Bool)

(assert (=> b!3852929 (= e!2381578 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 (_1!23145 lt!1338071)))))) tp!1167840))))

(declare-fun result!271070 () Bool)

(assert (=> tb!222485 (= result!271070 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 (_1!23145 lt!1338071))))) e!2381578))))

(assert (= tb!222485 b!3852929))

(declare-fun m!4407993 () Bool)

(assert (=> b!3852929 m!4407993))

(declare-fun m!4407995 () Bool)

(assert (=> tb!222485 m!4407995))

(assert (=> d!1142233 t!312136))

(declare-fun b_and!287883 () Bool)

(assert (= b_and!287855 (and (=> t!312136 result!271070) b_and!287883)))

(declare-fun tb!222487 () Bool)

(declare-fun t!312138 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312138) tb!222487))

(declare-fun result!271072 () Bool)

(assert (= result!271072 result!271070))

(assert (=> d!1142233 t!312138))

(declare-fun b_and!287885 () Bool)

(assert (= b_and!287849 (and (=> t!312138 result!271072) b_and!287885)))

(declare-fun tb!222489 () Bool)

(declare-fun t!312140 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312140) tb!222489))

(declare-fun result!271074 () Bool)

(assert (= result!271074 result!271070))

(assert (=> d!1142233 t!312140))

(declare-fun b_and!287887 () Bool)

(assert (= b_and!287851 (and (=> t!312140 result!271074) b_and!287887)))

(declare-fun t!312142 () Bool)

(declare-fun tb!222491 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312142) tb!222491))

(declare-fun result!271076 () Bool)

(assert (= result!271076 result!271070))

(assert (=> d!1142233 t!312142))

(declare-fun b_and!287889 () Bool)

(assert (= b_and!287847 (and (=> t!312142 result!271076) b_and!287889)))

(declare-fun t!312144 () Bool)

(declare-fun tb!222493 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312144) tb!222493))

(declare-fun result!271078 () Bool)

(assert (= result!271078 result!271070))

(assert (=> d!1142233 t!312144))

(declare-fun b_and!287891 () Bool)

(assert (= b_and!287853 (and (=> t!312144 result!271078) b_and!287891)))

(declare-fun tb!222495 () Bool)

(declare-fun t!312146 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312146) tb!222495))

(declare-fun result!271080 () Bool)

(assert (= result!271080 result!271070))

(assert (=> d!1142233 t!312146))

(declare-fun b_and!287893 () Bool)

(assert (= b_and!287857 (and (=> t!312146 result!271080) b_and!287893)))

(declare-fun b_lambda!112623 () Bool)

(assert (=> (not b_lambda!112623) (not d!1142233)))

(assert (=> d!1142233 t!312130))

(declare-fun b_and!287895 () Bool)

(assert (= b_and!287877 (and (=> t!312130 result!271064) b_and!287895)))

(assert (=> d!1142233 t!312126))

(declare-fun b_and!287897 () Bool)

(assert (= b_and!287873 (and (=> t!312126 result!271060) b_and!287897)))

(assert (=> d!1142233 t!312124))

(declare-fun b_and!287899 () Bool)

(assert (= b_and!287871 (and (=> t!312124 result!271058) b_and!287899)))

(assert (=> d!1142233 t!312132))

(declare-fun b_and!287901 () Bool)

(assert (= b_and!287879 (and (=> t!312132 result!271066) b_and!287901)))

(assert (=> d!1142233 t!312128))

(declare-fun b_and!287903 () Bool)

(assert (= b_and!287875 (and (=> t!312128 result!271062) b_and!287903)))

(assert (=> d!1142233 t!312134))

(declare-fun b_and!287905 () Bool)

(assert (= b_and!287881 (and (=> t!312134 result!271068) b_and!287905)))

(declare-fun m!4407997 () Bool)

(assert (=> d!1142233 m!4407997))

(declare-fun m!4407999 () Bool)

(assert (=> d!1142233 m!4407999))

(assert (=> d!1142233 m!4407391))

(declare-fun m!4408001 () Bool)

(assert (=> d!1142233 m!4408001))

(assert (=> d!1142233 m!4407937))

(assert (=> d!1142233 m!4407997))

(assert (=> d!1142233 m!4407391))

(assert (=> d!1142233 m!4407937))

(assert (=> d!1142233 m!4407391))

(assert (=> d!1142233 m!4407941))

(assert (=> b!3852436 d!1142233))

(declare-fun b!3852933 () Bool)

(declare-fun e!2381580 () Bool)

(declare-fun lt!1338319 () List!40949)

(assert (=> b!3852933 (= e!2381580 (or (not (= suffixTokens!72 Nil!40825)) (= lt!1338319 (t!311996 prefixTokens!80))))))

(declare-fun b!3852932 () Bool)

(declare-fun res!1559828 () Bool)

(assert (=> b!3852932 (=> (not res!1559828) (not e!2381580))))

(assert (=> b!3852932 (= res!1559828 (= (size!30711 lt!1338319) (+ (size!30711 (t!311996 prefixTokens!80)) (size!30711 suffixTokens!72))))))

(declare-fun d!1142235 () Bool)

(assert (=> d!1142235 e!2381580))

(declare-fun res!1559827 () Bool)

(assert (=> d!1142235 (=> (not res!1559827) (not e!2381580))))

(assert (=> d!1142235 (= res!1559827 (= (content!6074 lt!1338319) (set.union (content!6074 (t!311996 prefixTokens!80)) (content!6074 suffixTokens!72))))))

(declare-fun e!2381579 () List!40949)

(assert (=> d!1142235 (= lt!1338319 e!2381579)))

(declare-fun c!671000 () Bool)

(assert (=> d!1142235 (= c!671000 (is-Nil!40825 (t!311996 prefixTokens!80)))))

(assert (=> d!1142235 (= (++!10379 (t!311996 prefixTokens!80) suffixTokens!72) lt!1338319)))

(declare-fun b!3852931 () Bool)

(assert (=> b!3852931 (= e!2381579 (Cons!40825 (h!46245 (t!311996 prefixTokens!80)) (++!10379 (t!311996 (t!311996 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3852930 () Bool)

(assert (=> b!3852930 (= e!2381579 suffixTokens!72)))

(assert (= (and d!1142235 c!671000) b!3852930))

(assert (= (and d!1142235 (not c!671000)) b!3852931))

(assert (= (and d!1142235 res!1559827) b!3852932))

(assert (= (and b!3852932 res!1559828) b!3852933))

(declare-fun m!4408003 () Bool)

(assert (=> b!3852932 m!4408003))

(declare-fun m!4408005 () Bool)

(assert (=> b!3852932 m!4408005))

(assert (=> b!3852932 m!4407309))

(declare-fun m!4408007 () Bool)

(assert (=> d!1142235 m!4408007))

(assert (=> d!1142235 m!4407849))

(assert (=> d!1142235 m!4407315))

(declare-fun m!4408009 () Bool)

(assert (=> b!3852931 m!4408009))

(assert (=> b!3852310 d!1142235))

(declare-fun d!1142237 () Bool)

(assert (=> d!1142237 true))

(declare-fun order!22165 () Int)

(declare-fun lambda!126166 () Int)

(declare-fun dynLambda!17622 (Int Int) Int)

(assert (=> d!1142237 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (dynLambda!17622 order!22165 lambda!126166))))

(declare-fun Forall2!1031 (Int) Bool)

(assert (=> d!1142237 (= (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (Forall2!1031 lambda!126166))))

(declare-fun bs!582916 () Bool)

(assert (= bs!582916 d!1142237))

(declare-fun m!4408011 () Bool)

(assert (=> bs!582916 m!4408011))

(assert (=> b!3852369 d!1142237))

(declare-fun d!1142239 () Bool)

(declare-fun lt!1338320 () Int)

(assert (=> d!1142239 (>= lt!1338320 0)))

(declare-fun e!2381583 () Int)

(assert (=> d!1142239 (= lt!1338320 e!2381583)))

(declare-fun c!671001 () Bool)

(assert (=> d!1142239 (= c!671001 (is-Nil!40822 (_2!23141 lt!1338094)))))

(assert (=> d!1142239 (= (size!30708 (_2!23141 lt!1338094)) lt!1338320)))

(declare-fun b!3852938 () Bool)

(assert (=> b!3852938 (= e!2381583 0)))

(declare-fun b!3852939 () Bool)

(assert (=> b!3852939 (= e!2381583 (+ 1 (size!30708 (t!311993 (_2!23141 lt!1338094)))))))

(assert (= (and d!1142239 c!671001) b!3852938))

(assert (= (and d!1142239 (not c!671001)) b!3852939))

(declare-fun m!4408013 () Bool)

(assert (=> b!3852939 m!4408013))

(assert (=> b!3852479 d!1142239))

(assert (=> b!3852479 d!1141993))

(declare-fun b!3852943 () Bool)

(declare-fun e!2381585 () Bool)

(assert (=> b!3852943 (= e!2381585 (>= (size!30708 (tail!5826 lt!1337949)) (size!30708 (tail!5826 lt!1337934))))))

(declare-fun d!1142241 () Bool)

(assert (=> d!1142241 e!2381585))

(declare-fun res!1559833 () Bool)

(assert (=> d!1142241 (=> res!1559833 e!2381585)))

(declare-fun lt!1338321 () Bool)

(assert (=> d!1142241 (= res!1559833 (not lt!1338321))))

(declare-fun e!2381586 () Bool)

(assert (=> d!1142241 (= lt!1338321 e!2381586)))

(declare-fun res!1559832 () Bool)

(assert (=> d!1142241 (=> res!1559832 e!2381586)))

(assert (=> d!1142241 (= res!1559832 (is-Nil!40822 (tail!5826 lt!1337934)))))

(assert (=> d!1142241 (= (isPrefix!3410 (tail!5826 lt!1337934) (tail!5826 lt!1337949)) lt!1338321)))

(declare-fun b!3852942 () Bool)

(declare-fun e!2381584 () Bool)

(assert (=> b!3852942 (= e!2381584 (isPrefix!3410 (tail!5826 (tail!5826 lt!1337934)) (tail!5826 (tail!5826 lt!1337949))))))

(declare-fun b!3852940 () Bool)

(assert (=> b!3852940 (= e!2381586 e!2381584)))

(declare-fun res!1559831 () Bool)

(assert (=> b!3852940 (=> (not res!1559831) (not e!2381584))))

(assert (=> b!3852940 (= res!1559831 (not (is-Nil!40822 (tail!5826 lt!1337949))))))

(declare-fun b!3852941 () Bool)

(declare-fun res!1559834 () Bool)

(assert (=> b!3852941 (=> (not res!1559834) (not e!2381584))))

(assert (=> b!3852941 (= res!1559834 (= (head!8105 (tail!5826 lt!1337934)) (head!8105 (tail!5826 lt!1337949))))))

(assert (= (and d!1142241 (not res!1559832)) b!3852940))

(assert (= (and b!3852940 res!1559831) b!3852941))

(assert (= (and b!3852941 res!1559834) b!3852942))

(assert (= (and d!1142241 (not res!1559833)) b!3852943))

(assert (=> b!3852943 m!4407547))

(declare-fun m!4408015 () Bool)

(assert (=> b!3852943 m!4408015))

(assert (=> b!3852943 m!4407375))

(declare-fun m!4408017 () Bool)

(assert (=> b!3852943 m!4408017))

(assert (=> b!3852942 m!4407375))

(declare-fun m!4408019 () Bool)

(assert (=> b!3852942 m!4408019))

(assert (=> b!3852942 m!4407547))

(declare-fun m!4408021 () Bool)

(assert (=> b!3852942 m!4408021))

(assert (=> b!3852942 m!4408019))

(assert (=> b!3852942 m!4408021))

(declare-fun m!4408023 () Bool)

(assert (=> b!3852942 m!4408023))

(assert (=> b!3852941 m!4407375))

(declare-fun m!4408025 () Bool)

(assert (=> b!3852941 m!4408025))

(assert (=> b!3852941 m!4407547))

(declare-fun m!4408027 () Bool)

(assert (=> b!3852941 m!4408027))

(assert (=> b!3852510 d!1142241))

(declare-fun d!1142243 () Bool)

(assert (=> d!1142243 (= (tail!5826 lt!1337934) (t!311993 lt!1337934))))

(assert (=> b!3852510 d!1142243))

(declare-fun d!1142245 () Bool)

(assert (=> d!1142245 (= (tail!5826 lt!1337949) (t!311993 lt!1337949))))

(assert (=> b!3852510 d!1142245))

(declare-fun b!3852952 () Bool)

(declare-fun e!2381591 () List!40946)

(assert (=> b!3852952 (= e!2381591 Nil!40822)))

(declare-fun b!3852954 () Bool)

(declare-fun e!2381592 () List!40946)

(declare-fun list!15199 (IArray!25049) List!40946)

(assert (=> b!3852954 (= e!2381592 (list!15199 (xs!15828 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun d!1142247 () Bool)

(declare-fun c!671006 () Bool)

(assert (=> d!1142247 (= c!671006 (is-Empty!12522 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142247 (= (list!15197 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950))))) e!2381591)))

(declare-fun b!3852955 () Bool)

(assert (=> b!3852955 (= e!2381592 (++!10380 (list!15197 (left!31480 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950)))))) (list!15197 (right!31810 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950))))))))))

(declare-fun b!3852953 () Bool)

(assert (=> b!3852953 (= e!2381591 e!2381592)))

(declare-fun c!671007 () Bool)

(assert (=> b!3852953 (= c!671007 (is-Leaf!19385 (c!670845 (charsOf!4139 (_1!23142 (v!39022 lt!1337950))))))))

(assert (= (and d!1142247 c!671006) b!3852952))

(assert (= (and d!1142247 (not c!671006)) b!3852953))

(assert (= (and b!3852953 c!671007) b!3852954))

(assert (= (and b!3852953 (not c!671007)) b!3852955))

(declare-fun m!4408029 () Bool)

(assert (=> b!3852954 m!4408029))

(declare-fun m!4408031 () Bool)

(assert (=> b!3852955 m!4408031))

(declare-fun m!4408033 () Bool)

(assert (=> b!3852955 m!4408033))

(assert (=> b!3852955 m!4408031))

(assert (=> b!3852955 m!4408033))

(declare-fun m!4408035 () Bool)

(assert (=> b!3852955 m!4408035))

(assert (=> d!1142035 d!1142247))

(declare-fun b!3852957 () Bool)

(declare-fun res!1559837 () Bool)

(declare-fun e!2381596 () Bool)

(assert (=> b!3852957 (=> res!1559837 e!2381596)))

(assert (=> b!3852957 (= res!1559837 (not (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun e!2381597 () Bool)

(assert (=> b!3852957 (= e!2381597 e!2381596)))

(declare-fun b!3852958 () Bool)

(declare-fun res!1559840 () Bool)

(declare-fun e!2381595 () Bool)

(assert (=> b!3852958 (=> res!1559840 e!2381595)))

(assert (=> b!3852958 (= res!1559840 (not (isEmpty!24163 (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))))

(declare-fun b!3852959 () Bool)

(declare-fun res!1559836 () Bool)

(declare-fun e!2381599 () Bool)

(assert (=> b!3852959 (=> (not res!1559836) (not e!2381599))))

(declare-fun call!282285 () Bool)

(assert (=> b!3852959 (= res!1559836 (not call!282285))))

(declare-fun b!3852960 () Bool)

(declare-fun e!2381594 () Bool)

(assert (=> b!3852960 (= e!2381594 (matchR!5363 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))))) (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun b!3852961 () Bool)

(declare-fun e!2381593 () Bool)

(assert (=> b!3852961 (= e!2381596 e!2381593)))

(declare-fun res!1559842 () Bool)

(assert (=> b!3852961 (=> (not res!1559842) (not e!2381593))))

(declare-fun lt!1338322 () Bool)

(assert (=> b!3852961 (= res!1559842 (not lt!1338322))))

(declare-fun b!3852962 () Bool)

(assert (=> b!3852962 (= e!2381593 e!2381595)))

(declare-fun res!1559838 () Bool)

(assert (=> b!3852962 (=> res!1559838 e!2381595)))

(assert (=> b!3852962 (= res!1559838 call!282285)))

(declare-fun b!3852963 () Bool)

(declare-fun e!2381598 () Bool)

(assert (=> b!3852963 (= e!2381598 (= lt!1338322 call!282285))))

(declare-fun b!3852964 () Bool)

(assert (=> b!3852964 (= e!2381594 (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun d!1142249 () Bool)

(assert (=> d!1142249 e!2381598))

(declare-fun c!671010 () Bool)

(assert (=> d!1142249 (= c!671010 (is-EmptyExpr!11216 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))))))

(assert (=> d!1142249 (= lt!1338322 e!2381594)))

(declare-fun c!671008 () Bool)

(assert (=> d!1142249 (= c!671008 (isEmpty!24163 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))

(assert (=> d!1142249 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))

(assert (=> d!1142249 (= (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) lt!1338322)))

(declare-fun b!3852956 () Bool)

(declare-fun res!1559835 () Bool)

(assert (=> b!3852956 (=> (not res!1559835) (not e!2381599))))

(assert (=> b!3852956 (= res!1559835 (isEmpty!24163 (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun b!3852965 () Bool)

(assert (=> b!3852965 (= e!2381598 e!2381597)))

(declare-fun c!671009 () Bool)

(assert (=> b!3852965 (= c!671009 (is-EmptyLang!11216 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun b!3852966 () Bool)

(assert (=> b!3852966 (= e!2381595 (not (= (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))))))))

(declare-fun bm!282280 () Bool)

(assert (=> bm!282280 (= call!282285 (isEmpty!24163 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun b!3852967 () Bool)

(assert (=> b!3852967 (= e!2381599 (= (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun b!3852968 () Bool)

(declare-fun res!1559841 () Bool)

(assert (=> b!3852968 (=> res!1559841 e!2381596)))

(assert (=> b!3852968 (= res!1559841 e!2381599)))

(declare-fun res!1559839 () Bool)

(assert (=> b!3852968 (=> (not res!1559839) (not e!2381599))))

(assert (=> b!3852968 (= res!1559839 lt!1338322)))

(declare-fun b!3852969 () Bool)

(assert (=> b!3852969 (= e!2381597 (not lt!1338322))))

(assert (= (and d!1142249 c!671008) b!3852964))

(assert (= (and d!1142249 (not c!671008)) b!3852960))

(assert (= (and d!1142249 c!671010) b!3852963))

(assert (= (and d!1142249 (not c!671010)) b!3852965))

(assert (= (and b!3852965 c!671009) b!3852969))

(assert (= (and b!3852965 (not c!671009)) b!3852957))

(assert (= (and b!3852957 (not res!1559837)) b!3852968))

(assert (= (and b!3852968 res!1559839) b!3852959))

(assert (= (and b!3852959 res!1559836) b!3852956))

(assert (= (and b!3852956 res!1559835) b!3852967))

(assert (= (and b!3852968 (not res!1559841)) b!3852961))

(assert (= (and b!3852961 res!1559842) b!3852962))

(assert (= (and b!3852962 (not res!1559838)) b!3852958))

(assert (= (and b!3852958 (not res!1559840)) b!3852966))

(assert (= (or b!3852963 b!3852959 b!3852962) bm!282280))

(assert (=> d!1142249 m!4407245))

(declare-fun m!4408037 () Bool)

(assert (=> d!1142249 m!4408037))

(declare-fun m!4408039 () Bool)

(assert (=> d!1142249 m!4408039))

(assert (=> bm!282280 m!4407245))

(assert (=> bm!282280 m!4408037))

(assert (=> b!3852956 m!4407245))

(declare-fun m!4408041 () Bool)

(assert (=> b!3852956 m!4408041))

(assert (=> b!3852956 m!4408041))

(declare-fun m!4408043 () Bool)

(assert (=> b!3852956 m!4408043))

(assert (=> b!3852967 m!4407245))

(declare-fun m!4408045 () Bool)

(assert (=> b!3852967 m!4408045))

(assert (=> b!3852966 m!4407245))

(assert (=> b!3852966 m!4408045))

(assert (=> b!3852958 m!4407245))

(assert (=> b!3852958 m!4408041))

(assert (=> b!3852958 m!4408041))

(assert (=> b!3852958 m!4408043))

(declare-fun m!4408047 () Bool)

(assert (=> b!3852964 m!4408047))

(assert (=> b!3852960 m!4407245))

(assert (=> b!3852960 m!4408045))

(assert (=> b!3852960 m!4408045))

(declare-fun m!4408049 () Bool)

(assert (=> b!3852960 m!4408049))

(assert (=> b!3852960 m!4407245))

(assert (=> b!3852960 m!4408041))

(assert (=> b!3852960 m!4408049))

(assert (=> b!3852960 m!4408041))

(declare-fun m!4408051 () Bool)

(assert (=> b!3852960 m!4408051))

(assert (=> b!3852270 d!1142249))

(assert (=> b!3852270 d!1142145))

(assert (=> b!3852270 d!1142141))

(assert (=> b!3852270 d!1142143))

(declare-fun d!1142251 () Bool)

(assert (=> d!1142251 (= (isEmpty!24163 (tail!5826 lt!1337934)) (is-Nil!40822 (tail!5826 lt!1337934)))))

(assert (=> b!3852400 d!1142251))

(assert (=> b!3852400 d!1142243))

(declare-fun bs!582917 () Bool)

(declare-fun d!1142253 () Bool)

(assert (= bs!582917 (and d!1142253 d!1142233)))

(declare-fun lambda!126169 () Int)

(assert (=> bs!582917 (= (and (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (= lambda!126169 lambda!126163))))

(assert (=> d!1142253 true))

(assert (=> d!1142253 (< (dynLambda!17621 order!22163 (toChars!8590 (transformation!6311 (h!46244 rules!2768)))) (dynLambda!17620 order!22161 lambda!126169))))

(assert (=> d!1142253 true))

(assert (=> d!1142253 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (h!46244 rules!2768)))) (dynLambda!17620 order!22161 lambda!126169))))

(declare-fun Forall!1433 (Int) Bool)

(assert (=> d!1142253 (= (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (h!46244 rules!2768)))) (Forall!1433 lambda!126169))))

(declare-fun bs!582918 () Bool)

(assert (= bs!582918 d!1142253))

(declare-fun m!4408053 () Bool)

(assert (=> bs!582918 m!4408053))

(assert (=> d!1141965 d!1142253))

(declare-fun d!1142255 () Bool)

(assert (=> d!1142255 (= (isEmpty!24163 (originalCharacters!6911 (h!46245 suffixTokens!72))) (is-Nil!40822 (originalCharacters!6911 (h!46245 suffixTokens!72))))))

(assert (=> d!1142001 d!1142255))

(assert (=> b!3852442 d!1142157))

(declare-fun d!1142257 () Bool)

(declare-fun lt!1338323 () Int)

(assert (=> d!1142257 (>= lt!1338323 0)))

(declare-fun e!2381600 () Int)

(assert (=> d!1142257 (= lt!1338323 e!2381600)))

(declare-fun c!671011 () Bool)

(assert (=> d!1142257 (= c!671011 (is-Nil!40822 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))))))

(assert (=> d!1142257 (= (size!30708 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))) lt!1338323)))

(declare-fun b!3852974 () Bool)

(assert (=> b!3852974 (= e!2381600 0)))

(declare-fun b!3852975 () Bool)

(assert (=> b!3852975 (= e!2381600 (+ 1 (size!30708 (t!311993 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072)))))))))

(assert (= (and d!1142257 c!671011) b!3852974))

(assert (= (and d!1142257 (not c!671011)) b!3852975))

(declare-fun m!4408055 () Bool)

(assert (=> b!3852975 m!4408055))

(assert (=> b!3852442 d!1142257))

(declare-fun b!3852976 () Bool)

(declare-fun e!2381601 () Option!8729)

(declare-fun lt!1338328 () Option!8729)

(declare-fun lt!1338327 () Option!8729)

(assert (=> b!3852976 (= e!2381601 (ite (and (is-None!8728 lt!1338328) (is-None!8728 lt!1338327)) None!8728 (ite (is-None!8728 lt!1338327) lt!1338328 (ite (is-None!8728 lt!1338328) lt!1338327 (ite (>= (size!30707 (_1!23142 (v!39022 lt!1338328))) (size!30707 (_1!23142 (v!39022 lt!1338327)))) lt!1338328 lt!1338327)))))))

(declare-fun call!282286 () Option!8729)

(assert (=> b!3852976 (= lt!1338328 call!282286)))

(assert (=> b!3852976 (= lt!1338327 (maxPrefix!3204 thiss!20629 (t!311995 (t!311995 rules!2768)) lt!1337935))))

(declare-fun b!3852977 () Bool)

(declare-fun res!1559844 () Bool)

(declare-fun e!2381602 () Bool)

(assert (=> b!3852977 (=> (not res!1559844) (not e!2381602))))

(declare-fun lt!1338326 () Option!8729)

(assert (=> b!3852977 (= res!1559844 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338326)))) (_2!23142 (get!13507 lt!1338326))) lt!1337935))))

(declare-fun b!3852978 () Bool)

(declare-fun res!1559847 () Bool)

(assert (=> b!3852978 (=> (not res!1559847) (not e!2381602))))

(assert (=> b!3852978 (= res!1559847 (< (size!30708 (_2!23142 (get!13507 lt!1338326))) (size!30708 lt!1337935)))))

(declare-fun d!1142259 () Bool)

(declare-fun e!2381603 () Bool)

(assert (=> d!1142259 e!2381603))

(declare-fun res!1559843 () Bool)

(assert (=> d!1142259 (=> res!1559843 e!2381603)))

(assert (=> d!1142259 (= res!1559843 (isEmpty!24169 lt!1338326))))

(assert (=> d!1142259 (= lt!1338326 e!2381601)))

(declare-fun c!671012 () Bool)

(assert (=> d!1142259 (= c!671012 (and (is-Cons!40824 (t!311995 rules!2768)) (is-Nil!40824 (t!311995 (t!311995 rules!2768)))))))

(declare-fun lt!1338325 () Unit!58493)

(declare-fun lt!1338324 () Unit!58493)

(assert (=> d!1142259 (= lt!1338325 lt!1338324)))

(assert (=> d!1142259 (isPrefix!3410 lt!1337935 lt!1337935)))

(assert (=> d!1142259 (= lt!1338324 (lemmaIsPrefixRefl!2175 lt!1337935 lt!1337935))))

(assert (=> d!1142259 (rulesValidInductive!2245 thiss!20629 (t!311995 rules!2768))))

(assert (=> d!1142259 (= (maxPrefix!3204 thiss!20629 (t!311995 rules!2768) lt!1337935) lt!1338326)))

(declare-fun b!3852979 () Bool)

(declare-fun res!1559846 () Bool)

(assert (=> b!3852979 (=> (not res!1559846) (not e!2381602))))

(assert (=> b!3852979 (= res!1559846 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338326)))) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338326)))))))

(declare-fun b!3852980 () Bool)

(declare-fun res!1559849 () Bool)

(assert (=> b!3852980 (=> (not res!1559849) (not e!2381602))))

(assert (=> b!3852980 (= res!1559849 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338326)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338326))))))))

(declare-fun b!3852981 () Bool)

(declare-fun res!1559848 () Bool)

(assert (=> b!3852981 (=> (not res!1559848) (not e!2381602))))

(assert (=> b!3852981 (= res!1559848 (= (value!200499 (_1!23142 (get!13507 lt!1338326))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338326)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338326)))))))))

(declare-fun bm!282281 () Bool)

(assert (=> bm!282281 (= call!282286 (maxPrefixOneRule!2286 thiss!20629 (h!46244 (t!311995 rules!2768)) lt!1337935))))

(declare-fun b!3852982 () Bool)

(assert (=> b!3852982 (= e!2381601 call!282286)))

(declare-fun b!3852983 () Bool)

(assert (=> b!3852983 (= e!2381603 e!2381602)))

(declare-fun res!1559845 () Bool)

(assert (=> b!3852983 (=> (not res!1559845) (not e!2381602))))

(assert (=> b!3852983 (= res!1559845 (isDefined!6852 lt!1338326))))

(declare-fun b!3852984 () Bool)

(assert (=> b!3852984 (= e!2381602 (contains!8253 (t!311995 rules!2768) (rule!9167 (_1!23142 (get!13507 lt!1338326)))))))

(assert (= (and d!1142259 c!671012) b!3852982))

(assert (= (and d!1142259 (not c!671012)) b!3852976))

(assert (= (or b!3852982 b!3852976) bm!282281))

(assert (= (and d!1142259 (not res!1559843)) b!3852983))

(assert (= (and b!3852983 res!1559845) b!3852979))

(assert (= (and b!3852979 res!1559846) b!3852978))

(assert (= (and b!3852978 res!1559847) b!3852977))

(assert (= (and b!3852977 res!1559844) b!3852981))

(assert (= (and b!3852981 res!1559848) b!3852980))

(assert (= (and b!3852980 res!1559849) b!3852984))

(declare-fun m!4408057 () Bool)

(assert (=> bm!282281 m!4408057))

(declare-fun m!4408059 () Bool)

(assert (=> b!3852979 m!4408059))

(declare-fun m!4408061 () Bool)

(assert (=> b!3852979 m!4408061))

(assert (=> b!3852979 m!4408061))

(declare-fun m!4408063 () Bool)

(assert (=> b!3852979 m!4408063))

(declare-fun m!4408065 () Bool)

(assert (=> b!3852983 m!4408065))

(declare-fun m!4408067 () Bool)

(assert (=> b!3852976 m!4408067))

(assert (=> b!3852980 m!4408059))

(assert (=> b!3852980 m!4408061))

(assert (=> b!3852980 m!4408061))

(assert (=> b!3852980 m!4408063))

(assert (=> b!3852980 m!4408063))

(declare-fun m!4408069 () Bool)

(assert (=> b!3852980 m!4408069))

(assert (=> b!3852981 m!4408059))

(declare-fun m!4408071 () Bool)

(assert (=> b!3852981 m!4408071))

(assert (=> b!3852981 m!4408071))

(declare-fun m!4408073 () Bool)

(assert (=> b!3852981 m!4408073))

(declare-fun m!4408075 () Bool)

(assert (=> d!1142259 m!4408075))

(assert (=> d!1142259 m!4407259))

(assert (=> d!1142259 m!4407261))

(assert (=> d!1142259 m!4407911))

(assert (=> b!3852977 m!4408059))

(assert (=> b!3852977 m!4408061))

(assert (=> b!3852977 m!4408061))

(assert (=> b!3852977 m!4408063))

(assert (=> b!3852977 m!4408063))

(declare-fun m!4408077 () Bool)

(assert (=> b!3852977 m!4408077))

(assert (=> b!3852984 m!4408059))

(declare-fun m!4408079 () Bool)

(assert (=> b!3852984 m!4408079))

(assert (=> b!3852978 m!4408059))

(declare-fun m!4408081 () Bool)

(assert (=> b!3852978 m!4408081))

(assert (=> b!3852978 m!4407065))

(assert (=> b!3852266 d!1142259))

(declare-fun d!1142261 () Bool)

(assert (=> d!1142261 (= (isDefined!6852 lt!1338027) (not (isEmpty!24169 lt!1338027)))))

(declare-fun bs!582919 () Bool)

(assert (= bs!582919 d!1142261))

(assert (=> bs!582919 m!4407257))

(assert (=> b!3852273 d!1142261))

(declare-fun d!1142263 () Bool)

(declare-fun charsToBigInt!1 (List!40947) Int)

(assert (=> d!1142263 (= (inv!17 (value!200499 (h!46245 prefixTokens!80))) (= (charsToBigInt!1 (text!46235 (value!200499 (h!46245 prefixTokens!80)))) (value!200491 (value!200499 (h!46245 prefixTokens!80)))))))

(declare-fun bs!582920 () Bool)

(assert (= bs!582920 d!1142263))

(declare-fun m!4408083 () Bool)

(assert (=> bs!582920 m!4408083))

(assert (=> b!3852337 d!1142263))

(declare-fun b!3852986 () Bool)

(declare-fun res!1559852 () Bool)

(declare-fun e!2381607 () Bool)

(assert (=> b!3852986 (=> res!1559852 e!2381607)))

(assert (=> b!3852986 (= res!1559852 (not (is-ElementMatch!11216 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)))))))

(declare-fun e!2381608 () Bool)

(assert (=> b!3852986 (= e!2381608 e!2381607)))

(declare-fun b!3852987 () Bool)

(declare-fun res!1559855 () Bool)

(declare-fun e!2381606 () Bool)

(assert (=> b!3852987 (=> res!1559855 e!2381606)))

(assert (=> b!3852987 (= res!1559855 (not (isEmpty!24163 (tail!5826 (tail!5826 lt!1337934)))))))

(declare-fun b!3852988 () Bool)

(declare-fun res!1559851 () Bool)

(declare-fun e!2381610 () Bool)

(assert (=> b!3852988 (=> (not res!1559851) (not e!2381610))))

(declare-fun call!282287 () Bool)

(assert (=> b!3852988 (= res!1559851 (not call!282287))))

(declare-fun b!3852989 () Bool)

(declare-fun e!2381605 () Bool)

(assert (=> b!3852989 (= e!2381605 (matchR!5363 (derivativeStep!3403 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)) (head!8105 (tail!5826 lt!1337934))) (tail!5826 (tail!5826 lt!1337934))))))

(declare-fun b!3852990 () Bool)

(declare-fun e!2381604 () Bool)

(assert (=> b!3852990 (= e!2381607 e!2381604)))

(declare-fun res!1559857 () Bool)

(assert (=> b!3852990 (=> (not res!1559857) (not e!2381604))))

(declare-fun lt!1338329 () Bool)

(assert (=> b!3852990 (= res!1559857 (not lt!1338329))))

(declare-fun b!3852991 () Bool)

(assert (=> b!3852991 (= e!2381604 e!2381606)))

(declare-fun res!1559853 () Bool)

(assert (=> b!3852991 (=> res!1559853 e!2381606)))

(assert (=> b!3852991 (= res!1559853 call!282287)))

(declare-fun b!3852992 () Bool)

(declare-fun e!2381609 () Bool)

(assert (=> b!3852992 (= e!2381609 (= lt!1338329 call!282287))))

(declare-fun b!3852993 () Bool)

(assert (=> b!3852993 (= e!2381605 (nullable!3904 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934))))))

(declare-fun d!1142265 () Bool)

(assert (=> d!1142265 e!2381609))

(declare-fun c!671015 () Bool)

(assert (=> d!1142265 (= c!671015 (is-EmptyExpr!11216 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934))))))

(assert (=> d!1142265 (= lt!1338329 e!2381605)))

(declare-fun c!671013 () Bool)

(assert (=> d!1142265 (= c!671013 (isEmpty!24163 (tail!5826 lt!1337934)))))

(assert (=> d!1142265 (validRegex!5103 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)))))

(assert (=> d!1142265 (= (matchR!5363 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)) (tail!5826 lt!1337934)) lt!1338329)))

(declare-fun b!3852985 () Bool)

(declare-fun res!1559850 () Bool)

(assert (=> b!3852985 (=> (not res!1559850) (not e!2381610))))

(assert (=> b!3852985 (= res!1559850 (isEmpty!24163 (tail!5826 (tail!5826 lt!1337934))))))

(declare-fun b!3852994 () Bool)

(assert (=> b!3852994 (= e!2381609 e!2381608)))

(declare-fun c!671014 () Bool)

(assert (=> b!3852994 (= c!671014 (is-EmptyLang!11216 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934))))))

(declare-fun b!3852995 () Bool)

(assert (=> b!3852995 (= e!2381606 (not (= (head!8105 (tail!5826 lt!1337934)) (c!670846 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934))))))))

(declare-fun bm!282282 () Bool)

(assert (=> bm!282282 (= call!282287 (isEmpty!24163 (tail!5826 lt!1337934)))))

(declare-fun b!3852996 () Bool)

(assert (=> b!3852996 (= e!2381610 (= (head!8105 (tail!5826 lt!1337934)) (c!670846 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)))))))

(declare-fun b!3852997 () Bool)

(declare-fun res!1559856 () Bool)

(assert (=> b!3852997 (=> res!1559856 e!2381607)))

(assert (=> b!3852997 (= res!1559856 e!2381610)))

(declare-fun res!1559854 () Bool)

(assert (=> b!3852997 (=> (not res!1559854) (not e!2381610))))

(assert (=> b!3852997 (= res!1559854 lt!1338329)))

(declare-fun b!3852998 () Bool)

(assert (=> b!3852998 (= e!2381608 (not lt!1338329))))

(assert (= (and d!1142265 c!671013) b!3852993))

(assert (= (and d!1142265 (not c!671013)) b!3852989))

(assert (= (and d!1142265 c!671015) b!3852992))

(assert (= (and d!1142265 (not c!671015)) b!3852994))

(assert (= (and b!3852994 c!671014) b!3852998))

(assert (= (and b!3852994 (not c!671014)) b!3852986))

(assert (= (and b!3852986 (not res!1559852)) b!3852997))

(assert (= (and b!3852997 res!1559854) b!3852988))

(assert (= (and b!3852988 res!1559851) b!3852985))

(assert (= (and b!3852985 res!1559850) b!3852996))

(assert (= (and b!3852997 (not res!1559856)) b!3852990))

(assert (= (and b!3852990 res!1559857) b!3852991))

(assert (= (and b!3852991 (not res!1559853)) b!3852987))

(assert (= (and b!3852987 (not res!1559855)) b!3852995))

(assert (= (or b!3852992 b!3852988 b!3852991) bm!282282))

(assert (=> d!1142265 m!4407375))

(assert (=> d!1142265 m!4407377))

(assert (=> d!1142265 m!4407383))

(declare-fun m!4408085 () Bool)

(assert (=> d!1142265 m!4408085))

(assert (=> bm!282282 m!4407375))

(assert (=> bm!282282 m!4407377))

(assert (=> b!3852985 m!4407375))

(assert (=> b!3852985 m!4408019))

(assert (=> b!3852985 m!4408019))

(declare-fun m!4408087 () Bool)

(assert (=> b!3852985 m!4408087))

(assert (=> b!3852996 m!4407375))

(assert (=> b!3852996 m!4408025))

(assert (=> b!3852995 m!4407375))

(assert (=> b!3852995 m!4408025))

(assert (=> b!3852987 m!4407375))

(assert (=> b!3852987 m!4408019))

(assert (=> b!3852987 m!4408019))

(assert (=> b!3852987 m!4408087))

(assert (=> b!3852993 m!4407383))

(declare-fun m!4408089 () Bool)

(assert (=> b!3852993 m!4408089))

(assert (=> b!3852989 m!4407375))

(assert (=> b!3852989 m!4408025))

(assert (=> b!3852989 m!4407383))

(assert (=> b!3852989 m!4408025))

(declare-fun m!4408091 () Bool)

(assert (=> b!3852989 m!4408091))

(assert (=> b!3852989 m!4407375))

(assert (=> b!3852989 m!4408019))

(assert (=> b!3852989 m!4408091))

(assert (=> b!3852989 m!4408019))

(declare-fun m!4408093 () Bool)

(assert (=> b!3852989 m!4408093))

(assert (=> b!3852404 d!1142265))

(declare-fun b!3853019 () Bool)

(declare-fun e!2381622 () Regex!11216)

(declare-fun call!282297 () Regex!11216)

(assert (=> b!3853019 (= e!2381622 (Concat!17758 call!282297 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853020 () Bool)

(declare-fun c!671030 () Bool)

(assert (=> b!3853020 (= c!671030 (nullable!3904 (regOne!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun e!2381623 () Regex!11216)

(assert (=> b!3853020 (= e!2381622 e!2381623)))

(declare-fun d!1142267 () Bool)

(declare-fun lt!1338332 () Regex!11216)

(assert (=> d!1142267 (validRegex!5103 lt!1338332)))

(declare-fun e!2381621 () Regex!11216)

(assert (=> d!1142267 (= lt!1338332 e!2381621)))

(declare-fun c!671027 () Bool)

(assert (=> d!1142267 (= c!671027 (or (is-EmptyExpr!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (is-EmptyLang!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(assert (=> d!1142267 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142267 (= (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 lt!1337934)) lt!1338332)))

(declare-fun b!3853021 () Bool)

(declare-fun c!671028 () Bool)

(assert (=> b!3853021 (= c!671028 (is-Union!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun e!2381624 () Regex!11216)

(declare-fun e!2381625 () Regex!11216)

(assert (=> b!3853021 (= e!2381624 e!2381625)))

(declare-fun bm!282291 () Bool)

(declare-fun call!282299 () Regex!11216)

(assert (=> bm!282291 (= call!282299 call!282297)))

(declare-fun c!671026 () Bool)

(declare-fun call!282296 () Regex!11216)

(declare-fun bm!282292 () Bool)

(assert (=> bm!282292 (= call!282296 (derivativeStep!3403 (ite c!671028 (regTwo!22945 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (ite c!671026 (reg!11545 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (regOne!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (head!8105 lt!1337934)))))

(declare-fun b!3853022 () Bool)

(assert (=> b!3853022 (= e!2381624 (ite (= (head!8105 lt!1337934) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) EmptyExpr!11216 EmptyLang!11216))))

(declare-fun b!3853023 () Bool)

(declare-fun call!282298 () Regex!11216)

(assert (=> b!3853023 (= e!2381625 (Union!11216 call!282298 call!282296))))

(declare-fun b!3853024 () Bool)

(assert (=> b!3853024 (= e!2381625 e!2381622)))

(assert (=> b!3853024 (= c!671026 (is-Star!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853025 () Bool)

(assert (=> b!3853025 (= e!2381621 EmptyLang!11216)))

(declare-fun bm!282293 () Bool)

(assert (=> bm!282293 (= call!282298 (derivativeStep!3403 (ite c!671028 (regOne!22945 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (regTwo!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (head!8105 lt!1337934)))))

(declare-fun b!3853026 () Bool)

(assert (=> b!3853026 (= e!2381621 e!2381624)))

(declare-fun c!671029 () Bool)

(assert (=> b!3853026 (= c!671029 (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853027 () Bool)

(assert (=> b!3853027 (= e!2381623 (Union!11216 (Concat!17758 call!282299 (regTwo!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) EmptyLang!11216))))

(declare-fun bm!282294 () Bool)

(assert (=> bm!282294 (= call!282297 call!282296)))

(declare-fun b!3853028 () Bool)

(assert (=> b!3853028 (= e!2381623 (Union!11216 (Concat!17758 call!282299 (regTwo!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) call!282298))))

(assert (= (and d!1142267 c!671027) b!3853025))

(assert (= (and d!1142267 (not c!671027)) b!3853026))

(assert (= (and b!3853026 c!671029) b!3853022))

(assert (= (and b!3853026 (not c!671029)) b!3853021))

(assert (= (and b!3853021 c!671028) b!3853023))

(assert (= (and b!3853021 (not c!671028)) b!3853024))

(assert (= (and b!3853024 c!671026) b!3853019))

(assert (= (and b!3853024 (not c!671026)) b!3853020))

(assert (= (and b!3853020 c!671030) b!3853028))

(assert (= (and b!3853020 (not c!671030)) b!3853027))

(assert (= (or b!3853028 b!3853027) bm!282291))

(assert (= (or b!3853019 bm!282291) bm!282294))

(assert (= (or b!3853023 bm!282294) bm!282292))

(assert (= (or b!3853023 b!3853028) bm!282293))

(declare-fun m!4408095 () Bool)

(assert (=> b!3853020 m!4408095))

(declare-fun m!4408097 () Bool)

(assert (=> d!1142267 m!4408097))

(assert (=> d!1142267 m!4407373))

(assert (=> bm!282292 m!4407379))

(declare-fun m!4408099 () Bool)

(assert (=> bm!282292 m!4408099))

(assert (=> bm!282293 m!4407379))

(declare-fun m!4408101 () Bool)

(assert (=> bm!282293 m!4408101))

(assert (=> b!3852404 d!1142267))

(declare-fun d!1142269 () Bool)

(assert (=> d!1142269 (= (head!8105 lt!1337934) (h!46242 lt!1337934))))

(assert (=> b!3852404 d!1142269))

(assert (=> b!3852404 d!1142243))

(declare-fun d!1142271 () Bool)

(declare-fun lt!1338333 () Int)

(assert (=> d!1142271 (>= lt!1338333 0)))

(declare-fun e!2381626 () Int)

(assert (=> d!1142271 (= lt!1338333 e!2381626)))

(declare-fun c!671031 () Bool)

(assert (=> d!1142271 (= c!671031 (is-Nil!40825 (_1!23141 lt!1338040)))))

(assert (=> d!1142271 (= (size!30711 (_1!23141 lt!1338040)) lt!1338333)))

(declare-fun b!3853029 () Bool)

(assert (=> b!3853029 (= e!2381626 0)))

(declare-fun b!3853030 () Bool)

(assert (=> b!3853030 (= e!2381626 (+ 1 (size!30711 (t!311996 (_1!23141 lt!1338040)))))))

(assert (= (and d!1142271 c!671031) b!3853029))

(assert (= (and d!1142271 (not c!671031)) b!3853030))

(declare-fun m!4408103 () Bool)

(assert (=> b!3853030 m!4408103))

(assert (=> d!1141979 d!1142271))

(assert (=> d!1141979 d!1141971))

(declare-fun d!1142273 () Bool)

(declare-fun lt!1338334 () Int)

(assert (=> d!1142273 (>= lt!1338334 0)))

(declare-fun e!2381627 () Int)

(assert (=> d!1142273 (= lt!1338334 e!2381627)))

(declare-fun c!671032 () Bool)

(assert (=> d!1142273 (= c!671032 (is-Nil!40825 (_1!23141 lt!1338094)))))

(assert (=> d!1142273 (= (size!30711 (_1!23141 lt!1338094)) lt!1338334)))

(declare-fun b!3853031 () Bool)

(assert (=> b!3853031 (= e!2381627 0)))

(declare-fun b!3853032 () Bool)

(assert (=> b!3853032 (= e!2381627 (+ 1 (size!30711 (t!311996 (_1!23141 lt!1338094)))))))

(assert (= (and d!1142273 c!671032) b!3853031))

(assert (= (and d!1142273 (not c!671032)) b!3853032))

(declare-fun m!4408105 () Bool)

(assert (=> b!3853032 m!4408105))

(assert (=> d!1142031 d!1142273))

(declare-fun b!3853033 () Bool)

(declare-fun e!2381628 () Option!8729)

(declare-fun lt!1338339 () Option!8729)

(declare-fun lt!1338338 () Option!8729)

(assert (=> b!3853033 (= e!2381628 (ite (and (is-None!8728 lt!1338339) (is-None!8728 lt!1338338)) None!8728 (ite (is-None!8728 lt!1338338) lt!1338339 (ite (is-None!8728 lt!1338339) lt!1338338 (ite (>= (size!30707 (_1!23142 (v!39022 lt!1338339))) (size!30707 (_1!23142 (v!39022 lt!1338338)))) lt!1338339 lt!1338338)))))))

(declare-fun call!282300 () Option!8729)

(assert (=> b!3853033 (= lt!1338339 call!282300)))

(assert (=> b!3853033 (= lt!1338338 (maxPrefix!3204 thiss!20629 (t!311995 rules!2768) (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3853034 () Bool)

(declare-fun res!1559859 () Bool)

(declare-fun e!2381629 () Bool)

(assert (=> b!3853034 (=> (not res!1559859) (not e!2381629))))

(declare-fun lt!1338337 () Option!8729)

(assert (=> b!3853034 (= res!1559859 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338337)))) (_2!23142 (get!13507 lt!1338337))) (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3853035 () Bool)

(declare-fun res!1559862 () Bool)

(assert (=> b!3853035 (=> (not res!1559862) (not e!2381629))))

(assert (=> b!3853035 (= res!1559862 (< (size!30708 (_2!23142 (get!13507 lt!1338337))) (size!30708 (_2!23142 (v!39022 lt!1337950)))))))

(declare-fun d!1142275 () Bool)

(declare-fun e!2381630 () Bool)

(assert (=> d!1142275 e!2381630))

(declare-fun res!1559858 () Bool)

(assert (=> d!1142275 (=> res!1559858 e!2381630)))

(assert (=> d!1142275 (= res!1559858 (isEmpty!24169 lt!1338337))))

(assert (=> d!1142275 (= lt!1338337 e!2381628)))

(declare-fun c!671033 () Bool)

(assert (=> d!1142275 (= c!671033 (and (is-Cons!40824 rules!2768) (is-Nil!40824 (t!311995 rules!2768))))))

(declare-fun lt!1338336 () Unit!58493)

(declare-fun lt!1338335 () Unit!58493)

(assert (=> d!1142275 (= lt!1338336 lt!1338335)))

(assert (=> d!1142275 (isPrefix!3410 (_2!23142 (v!39022 lt!1337950)) (_2!23142 (v!39022 lt!1337950)))))

(assert (=> d!1142275 (= lt!1338335 (lemmaIsPrefixRefl!2175 (_2!23142 (v!39022 lt!1337950)) (_2!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142275 (rulesValidInductive!2245 thiss!20629 rules!2768)))

(assert (=> d!1142275 (= (maxPrefix!3204 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1337950))) lt!1338337)))

(declare-fun b!3853036 () Bool)

(declare-fun res!1559861 () Bool)

(assert (=> b!3853036 (=> (not res!1559861) (not e!2381629))))

(assert (=> b!3853036 (= res!1559861 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338337)))) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338337)))))))

(declare-fun b!3853037 () Bool)

(declare-fun res!1559864 () Bool)

(assert (=> b!3853037 (=> (not res!1559864) (not e!2381629))))

(assert (=> b!3853037 (= res!1559864 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338337)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338337))))))))

(declare-fun b!3853038 () Bool)

(declare-fun res!1559863 () Bool)

(assert (=> b!3853038 (=> (not res!1559863) (not e!2381629))))

(assert (=> b!3853038 (= res!1559863 (= (value!200499 (_1!23142 (get!13507 lt!1338337))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338337)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338337)))))))))

(declare-fun bm!282295 () Bool)

(assert (=> bm!282295 (= call!282300 (maxPrefixOneRule!2286 thiss!20629 (h!46244 rules!2768) (_2!23142 (v!39022 lt!1337950))))))

(declare-fun b!3853039 () Bool)

(assert (=> b!3853039 (= e!2381628 call!282300)))

(declare-fun b!3853040 () Bool)

(assert (=> b!3853040 (= e!2381630 e!2381629)))

(declare-fun res!1559860 () Bool)

(assert (=> b!3853040 (=> (not res!1559860) (not e!2381629))))

(assert (=> b!3853040 (= res!1559860 (isDefined!6852 lt!1338337))))

(declare-fun b!3853041 () Bool)

(assert (=> b!3853041 (= e!2381629 (contains!8253 rules!2768 (rule!9167 (_1!23142 (get!13507 lt!1338337)))))))

(assert (= (and d!1142275 c!671033) b!3853039))

(assert (= (and d!1142275 (not c!671033)) b!3853033))

(assert (= (or b!3853039 b!3853033) bm!282295))

(assert (= (and d!1142275 (not res!1559858)) b!3853040))

(assert (= (and b!3853040 res!1559860) b!3853036))

(assert (= (and b!3853036 res!1559861) b!3853035))

(assert (= (and b!3853035 res!1559862) b!3853034))

(assert (= (and b!3853034 res!1559859) b!3853038))

(assert (= (and b!3853038 res!1559863) b!3853037))

(assert (= (and b!3853037 res!1559864) b!3853041))

(declare-fun m!4408107 () Bool)

(assert (=> bm!282295 m!4408107))

(declare-fun m!4408109 () Bool)

(assert (=> b!3853036 m!4408109))

(declare-fun m!4408111 () Bool)

(assert (=> b!3853036 m!4408111))

(assert (=> b!3853036 m!4408111))

(declare-fun m!4408113 () Bool)

(assert (=> b!3853036 m!4408113))

(declare-fun m!4408115 () Bool)

(assert (=> b!3853040 m!4408115))

(declare-fun m!4408117 () Bool)

(assert (=> b!3853033 m!4408117))

(assert (=> b!3853037 m!4408109))

(assert (=> b!3853037 m!4408111))

(assert (=> b!3853037 m!4408111))

(assert (=> b!3853037 m!4408113))

(assert (=> b!3853037 m!4408113))

(declare-fun m!4408119 () Bool)

(assert (=> b!3853037 m!4408119))

(assert (=> b!3853038 m!4408109))

(declare-fun m!4408121 () Bool)

(assert (=> b!3853038 m!4408121))

(assert (=> b!3853038 m!4408121))

(declare-fun m!4408123 () Bool)

(assert (=> b!3853038 m!4408123))

(declare-fun m!4408125 () Bool)

(assert (=> d!1142275 m!4408125))

(declare-fun m!4408127 () Bool)

(assert (=> d!1142275 m!4408127))

(declare-fun m!4408129 () Bool)

(assert (=> d!1142275 m!4408129))

(assert (=> d!1142275 m!4407263))

(assert (=> b!3853034 m!4408109))

(assert (=> b!3853034 m!4408111))

(assert (=> b!3853034 m!4408111))

(assert (=> b!3853034 m!4408113))

(assert (=> b!3853034 m!4408113))

(declare-fun m!4408131 () Bool)

(assert (=> b!3853034 m!4408131))

(assert (=> b!3853041 m!4408109))

(declare-fun m!4408133 () Bool)

(assert (=> b!3853041 m!4408133))

(assert (=> b!3853035 m!4408109))

(declare-fun m!4408135 () Bool)

(assert (=> b!3853035 m!4408135))

(assert (=> b!3853035 m!4407071))

(assert (=> d!1142031 d!1142275))

(declare-fun b!3853045 () Bool)

(declare-fun e!2381632 () Bool)

(assert (=> b!3853045 (= e!2381632 (>= (size!30708 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950)))) (size!30708 lt!1337934)))))

(declare-fun d!1142277 () Bool)

(assert (=> d!1142277 e!2381632))

(declare-fun res!1559867 () Bool)

(assert (=> d!1142277 (=> res!1559867 e!2381632)))

(declare-fun lt!1338340 () Bool)

(assert (=> d!1142277 (= res!1559867 (not lt!1338340))))

(declare-fun e!2381633 () Bool)

(assert (=> d!1142277 (= lt!1338340 e!2381633)))

(declare-fun res!1559866 () Bool)

(assert (=> d!1142277 (=> res!1559866 e!2381633)))

(assert (=> d!1142277 (= res!1559866 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142277 (= (isPrefix!3410 lt!1337934 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950)))) lt!1338340)))

(declare-fun b!3853044 () Bool)

(declare-fun e!2381631 () Bool)

(assert (=> b!3853044 (= e!2381631 (isPrefix!3410 (tail!5826 lt!1337934) (tail!5826 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853042 () Bool)

(assert (=> b!3853042 (= e!2381633 e!2381631)))

(declare-fun res!1559865 () Bool)

(assert (=> b!3853042 (=> (not res!1559865) (not e!2381631))))

(assert (=> b!3853042 (= res!1559865 (not (is-Nil!40822 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853043 () Bool)

(declare-fun res!1559868 () Bool)

(assert (=> b!3853043 (=> (not res!1559868) (not e!2381631))))

(assert (=> b!3853043 (= res!1559868 (= (head!8105 lt!1337934) (head!8105 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))))

(assert (= (and d!1142277 (not res!1559866)) b!3853042))

(assert (= (and b!3853042 res!1559865) b!3853043))

(assert (= (and b!3853043 res!1559868) b!3853044))

(assert (= (and d!1142277 (not res!1559867)) b!3853045))

(assert (=> b!3853045 m!4407083))

(declare-fun m!4408137 () Bool)

(assert (=> b!3853045 m!4408137))

(assert (=> b!3853045 m!4407105))

(assert (=> b!3853044 m!4407375))

(assert (=> b!3853044 m!4407083))

(declare-fun m!4408139 () Bool)

(assert (=> b!3853044 m!4408139))

(assert (=> b!3853044 m!4407375))

(assert (=> b!3853044 m!4408139))

(declare-fun m!4408141 () Bool)

(assert (=> b!3853044 m!4408141))

(assert (=> b!3853043 m!4407379))

(assert (=> b!3853043 m!4407083))

(declare-fun m!4408143 () Bool)

(assert (=> b!3853043 m!4408143))

(assert (=> d!1142045 d!1142277))

(assert (=> d!1142045 d!1142025))

(declare-fun d!1142279 () Bool)

(assert (=> d!1142279 (isPrefix!3410 lt!1337934 (++!10380 lt!1337934 (_2!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142279 true))

(declare-fun _$46!1514 () Unit!58493)

(assert (=> d!1142279 (= (choose!22677 lt!1337934 (_2!23142 (v!39022 lt!1337950))) _$46!1514)))

(declare-fun bs!582921 () Bool)

(assert (= bs!582921 d!1142279))

(assert (=> bs!582921 m!4407083))

(assert (=> bs!582921 m!4407083))

(assert (=> bs!582921 m!4407533))

(assert (=> d!1142045 d!1142279))

(declare-fun bs!582922 () Bool)

(declare-fun d!1142281 () Bool)

(assert (= bs!582922 (and d!1142281 d!1142233)))

(declare-fun lambda!126170 () Int)

(assert (=> bs!582922 (= (and (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (= lambda!126170 lambda!126163))))

(declare-fun bs!582923 () Bool)

(assert (= bs!582923 (and d!1142281 d!1142253)))

(assert (=> bs!582923 (= (and (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (h!46244 rules!2768)))) (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (h!46244 rules!2768))))) (= lambda!126170 lambda!126169))))

(assert (=> d!1142281 true))

(assert (=> d!1142281 (< (dynLambda!17621 order!22163 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (dynLambda!17620 order!22161 lambda!126170))))

(assert (=> d!1142281 true))

(assert (=> d!1142281 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (dynLambda!17620 order!22161 lambda!126170))))

(assert (=> d!1142281 (= (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (Forall!1433 lambda!126170))))

(declare-fun bs!582924 () Bool)

(assert (= bs!582924 d!1142281))

(declare-fun m!4408145 () Bool)

(assert (=> bs!582924 m!4408145))

(assert (=> d!1142005 d!1142281))

(declare-fun d!1142283 () Bool)

(declare-fun c!671034 () Bool)

(assert (=> d!1142283 (= c!671034 (is-Nil!40822 lt!1338046))))

(declare-fun e!2381634 () (Set C!22618))

(assert (=> d!1142283 (= (content!6075 lt!1338046) e!2381634)))

(declare-fun b!3853046 () Bool)

(assert (=> b!3853046 (= e!2381634 (as set.empty (Set C!22618)))))

(declare-fun b!3853047 () Bool)

(assert (=> b!3853047 (= e!2381634 (set.union (set.insert (h!46242 lt!1338046) (as set.empty (Set C!22618))) (content!6075 (t!311993 lt!1338046))))))

(assert (= (and d!1142283 c!671034) b!3853046))

(assert (= (and d!1142283 (not c!671034)) b!3853047))

(declare-fun m!4408147 () Bool)

(assert (=> b!3853047 m!4408147))

(declare-fun m!4408149 () Bool)

(assert (=> b!3853047 m!4408149))

(assert (=> d!1141983 d!1142283))

(declare-fun d!1142285 () Bool)

(declare-fun c!671035 () Bool)

(assert (=> d!1142285 (= c!671035 (is-Nil!40822 prefix!426))))

(declare-fun e!2381635 () (Set C!22618))

(assert (=> d!1142285 (= (content!6075 prefix!426) e!2381635)))

(declare-fun b!3853048 () Bool)

(assert (=> b!3853048 (= e!2381635 (as set.empty (Set C!22618)))))

(declare-fun b!3853049 () Bool)

(assert (=> b!3853049 (= e!2381635 (set.union (set.insert (h!46242 prefix!426) (as set.empty (Set C!22618))) (content!6075 (t!311993 prefix!426))))))

(assert (= (and d!1142285 c!671035) b!3853048))

(assert (= (and d!1142285 (not c!671035)) b!3853049))

(declare-fun m!4408151 () Bool)

(assert (=> b!3853049 m!4408151))

(declare-fun m!4408153 () Bool)

(assert (=> b!3853049 m!4408153))

(assert (=> d!1141983 d!1142285))

(declare-fun d!1142287 () Bool)

(declare-fun c!671036 () Bool)

(assert (=> d!1142287 (= c!671036 (is-Nil!40822 suffix!1176))))

(declare-fun e!2381636 () (Set C!22618))

(assert (=> d!1142287 (= (content!6075 suffix!1176) e!2381636)))

(declare-fun b!3853050 () Bool)

(assert (=> b!3853050 (= e!2381636 (as set.empty (Set C!22618)))))

(declare-fun b!3853051 () Bool)

(assert (=> b!3853051 (= e!2381636 (set.union (set.insert (h!46242 suffix!1176) (as set.empty (Set C!22618))) (content!6075 (t!311993 suffix!1176))))))

(assert (= (and d!1142287 c!671036) b!3853050))

(assert (= (and d!1142287 (not c!671036)) b!3853051))

(declare-fun m!4408155 () Bool)

(assert (=> b!3853051 m!4408155))

(declare-fun m!4408157 () Bool)

(assert (=> b!3853051 m!4408157))

(assert (=> d!1141983 d!1142287))

(declare-fun b!3853052 () Bool)

(declare-fun e!2381639 () Bool)

(assert (=> b!3853052 (= e!2381639 (inv!15 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(declare-fun d!1142289 () Bool)

(declare-fun c!671038 () Bool)

(assert (=> d!1142289 (= c!671038 (is-IntegerValue!19623 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(declare-fun e!2381637 () Bool)

(assert (=> d!1142289 (= (inv!21 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))) e!2381637)))

(declare-fun b!3853053 () Bool)

(declare-fun res!1559869 () Bool)

(assert (=> b!3853053 (=> res!1559869 e!2381639)))

(assert (=> b!3853053 (= res!1559869 (not (is-IntegerValue!19625 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934)))))))

(declare-fun e!2381638 () Bool)

(assert (=> b!3853053 (= e!2381638 e!2381639)))

(declare-fun b!3853054 () Bool)

(assert (=> b!3853054 (= e!2381638 (inv!17 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(declare-fun b!3853055 () Bool)

(assert (=> b!3853055 (= e!2381637 e!2381638)))

(declare-fun c!671037 () Bool)

(assert (=> b!3853055 (= c!671037 (is-IntegerValue!19624 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(declare-fun b!3853056 () Bool)

(assert (=> b!3853056 (= e!2381637 (inv!16 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (seqFromList!4582 lt!1337934))))))

(assert (= (and d!1142289 c!671038) b!3853056))

(assert (= (and d!1142289 (not c!671038)) b!3853055))

(assert (= (and b!3853055 c!671037) b!3853054))

(assert (= (and b!3853055 (not c!671037)) b!3853053))

(assert (= (and b!3853053 (not res!1559869)) b!3853052))

(declare-fun m!4408159 () Bool)

(assert (=> b!3853052 m!4408159))

(declare-fun m!4408161 () Bool)

(assert (=> b!3853054 m!4408161))

(declare-fun m!4408163 () Bool)

(assert (=> b!3853056 m!4408163))

(assert (=> tb!222365 d!1142289))

(declare-fun d!1142291 () Bool)

(declare-fun nullableFct!1113 (Regex!11216) Bool)

(assert (=> d!1142291 (= (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (nullableFct!1113 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun bs!582925 () Bool)

(assert (= bs!582925 d!1142291))

(declare-fun m!4408165 () Bool)

(assert (=> bs!582925 m!4408165))

(assert (=> b!3852408 d!1142291))

(declare-fun d!1142293 () Bool)

(declare-fun lt!1338341 () Int)

(assert (=> d!1142293 (>= lt!1338341 0)))

(declare-fun e!2381640 () Int)

(assert (=> d!1142293 (= lt!1338341 e!2381640)))

(declare-fun c!671039 () Bool)

(assert (=> d!1142293 (= c!671039 (is-Nil!40822 (t!311993 lt!1337934)))))

(assert (=> d!1142293 (= (size!30708 (t!311993 lt!1337934)) lt!1338341)))

(declare-fun b!3853057 () Bool)

(assert (=> b!3853057 (= e!2381640 0)))

(declare-fun b!3853058 () Bool)

(assert (=> b!3853058 (= e!2381640 (+ 1 (size!30708 (t!311993 (t!311993 lt!1337934)))))))

(assert (= (and d!1142293 c!671039) b!3853057))

(assert (= (and d!1142293 (not c!671039)) b!3853058))

(declare-fun m!4408167 () Bool)

(assert (=> b!3853058 m!4408167))

(assert (=> b!3852492 d!1142293))

(declare-fun d!1142295 () Bool)

(declare-fun lt!1338342 () Int)

(assert (=> d!1142295 (>= lt!1338342 0)))

(declare-fun e!2381641 () Int)

(assert (=> d!1142295 (= lt!1338342 e!2381641)))

(declare-fun c!671040 () Bool)

(assert (=> d!1142295 (= c!671040 (is-Nil!40822 (originalCharacters!6911 (h!46245 prefixTokens!80))))))

(assert (=> d!1142295 (= (size!30708 (originalCharacters!6911 (h!46245 prefixTokens!80))) lt!1338342)))

(declare-fun b!3853059 () Bool)

(assert (=> b!3853059 (= e!2381641 0)))

(declare-fun b!3853060 () Bool)

(assert (=> b!3853060 (= e!2381641 (+ 1 (size!30708 (t!311993 (originalCharacters!6911 (h!46245 prefixTokens!80))))))))

(assert (= (and d!1142295 c!671040) b!3853059))

(assert (= (and d!1142295 (not c!671040)) b!3853060))

(declare-fun m!4408169 () Bool)

(assert (=> b!3853060 m!4408169))

(assert (=> b!3852471 d!1142295))

(declare-fun d!1142297 () Bool)

(declare-fun charsToBigInt!0 (List!40947 Int) Int)

(assert (=> d!1142297 (= (inv!15 (value!200499 (h!46245 suffixTokens!72))) (= (charsToBigInt!0 (text!46236 (value!200499 (h!46245 suffixTokens!72))) 0) (value!200494 (value!200499 (h!46245 suffixTokens!72)))))))

(declare-fun bs!582926 () Bool)

(assert (= bs!582926 d!1142297))

(declare-fun m!4408171 () Bool)

(assert (=> bs!582926 m!4408171))

(assert (=> b!3852351 d!1142297))

(declare-fun d!1142299 () Bool)

(assert (=> d!1142299 (= (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (= (mod (str.len (value!200498 (tag!7171 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3852551 d!1142299))

(declare-fun d!1142301 () Bool)

(declare-fun res!1559870 () Bool)

(declare-fun e!2381642 () Bool)

(assert (=> d!1142301 (=> (not res!1559870) (not e!2381642))))

(assert (=> d!1142301 (= res!1559870 (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))))))

(assert (=> d!1142301 (= (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) e!2381642)))

(declare-fun b!3853061 () Bool)

(assert (=> b!3853061 (= e!2381642 (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))))))

(assert (= (and d!1142301 res!1559870) b!3853061))

(declare-fun m!4408173 () Bool)

(assert (=> d!1142301 m!4408173))

(declare-fun m!4408175 () Bool)

(assert (=> b!3853061 m!4408175))

(assert (=> b!3852551 d!1142301))

(declare-fun b!3853062 () Bool)

(declare-fun e!2381643 () Bool)

(declare-fun lt!1338343 () tuple2!40014)

(assert (=> b!3853062 (= e!2381643 (= (_2!23141 lt!1338343) (_2!23142 (v!39022 lt!1338041))))))

(declare-fun b!3853063 () Bool)

(declare-fun e!2381645 () Bool)

(assert (=> b!3853063 (= e!2381643 e!2381645)))

(declare-fun res!1559871 () Bool)

(assert (=> b!3853063 (= res!1559871 (< (size!30708 (_2!23141 lt!1338343)) (size!30708 (_2!23142 (v!39022 lt!1338041)))))))

(assert (=> b!3853063 (=> (not res!1559871) (not e!2381645))))

(declare-fun b!3853064 () Bool)

(declare-fun e!2381644 () tuple2!40014)

(declare-fun lt!1338344 () Option!8729)

(declare-fun lt!1338345 () tuple2!40014)

(assert (=> b!3853064 (= e!2381644 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338344)) (_1!23141 lt!1338345)) (_2!23141 lt!1338345)))))

(assert (=> b!3853064 (= lt!1338345 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338344))))))

(declare-fun d!1142303 () Bool)

(assert (=> d!1142303 e!2381643))

(declare-fun c!671041 () Bool)

(assert (=> d!1142303 (= c!671041 (> (size!30711 (_1!23141 lt!1338343)) 0))))

(assert (=> d!1142303 (= lt!1338343 e!2381644)))

(declare-fun c!671042 () Bool)

(assert (=> d!1142303 (= c!671042 (is-Some!8728 lt!1338344))))

(assert (=> d!1142303 (= lt!1338344 (maxPrefix!3204 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338041))))))

(assert (=> d!1142303 (= (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338041))) lt!1338343)))

(declare-fun b!3853065 () Bool)

(assert (=> b!3853065 (= e!2381644 (tuple2!40015 Nil!40825 (_2!23142 (v!39022 lt!1338041))))))

(declare-fun b!3853066 () Bool)

(assert (=> b!3853066 (= e!2381645 (not (isEmpty!24164 (_1!23141 lt!1338343))))))

(assert (= (and d!1142303 c!671042) b!3853064))

(assert (= (and d!1142303 (not c!671042)) b!3853065))

(assert (= (and d!1142303 c!671041) b!3853063))

(assert (= (and d!1142303 (not c!671041)) b!3853062))

(assert (= (and b!3853063 res!1559871) b!3853066))

(declare-fun m!4408177 () Bool)

(assert (=> b!3853063 m!4408177))

(declare-fun m!4408179 () Bool)

(assert (=> b!3853063 m!4408179))

(declare-fun m!4408181 () Bool)

(assert (=> b!3853064 m!4408181))

(declare-fun m!4408183 () Bool)

(assert (=> d!1142303 m!4408183))

(declare-fun m!4408185 () Bool)

(assert (=> d!1142303 m!4408185))

(declare-fun m!4408187 () Bool)

(assert (=> b!3853066 m!4408187))

(assert (=> b!3852306 d!1142303))

(declare-fun d!1142305 () Bool)

(declare-fun lt!1338346 () Int)

(assert (=> d!1142305 (>= lt!1338346 0)))

(declare-fun e!2381646 () Int)

(assert (=> d!1142305 (= lt!1338346 e!2381646)))

(declare-fun c!671043 () Bool)

(assert (=> d!1142305 (= c!671043 (is-Nil!40825 lt!1338043))))

(assert (=> d!1142305 (= (size!30711 lt!1338043) lt!1338346)))

(declare-fun b!3853067 () Bool)

(assert (=> b!3853067 (= e!2381646 0)))

(declare-fun b!3853068 () Bool)

(assert (=> b!3853068 (= e!2381646 (+ 1 (size!30711 (t!311996 lt!1338043))))))

(assert (= (and d!1142305 c!671043) b!3853067))

(assert (= (and d!1142305 (not c!671043)) b!3853068))

(declare-fun m!4408189 () Bool)

(assert (=> b!3853068 m!4408189))

(assert (=> b!3852311 d!1142305))

(declare-fun d!1142307 () Bool)

(declare-fun lt!1338347 () Int)

(assert (=> d!1142307 (>= lt!1338347 0)))

(declare-fun e!2381647 () Int)

(assert (=> d!1142307 (= lt!1338347 e!2381647)))

(declare-fun c!671044 () Bool)

(assert (=> d!1142307 (= c!671044 (is-Nil!40825 prefixTokens!80))))

(assert (=> d!1142307 (= (size!30711 prefixTokens!80) lt!1338347)))

(declare-fun b!3853069 () Bool)

(assert (=> b!3853069 (= e!2381647 0)))

(declare-fun b!3853070 () Bool)

(assert (=> b!3853070 (= e!2381647 (+ 1 (size!30711 (t!311996 prefixTokens!80))))))

(assert (= (and d!1142307 c!671044) b!3853069))

(assert (= (and d!1142307 (not c!671044)) b!3853070))

(assert (=> b!3853070 m!4408005))

(assert (=> b!3852311 d!1142307))

(declare-fun d!1142309 () Bool)

(declare-fun lt!1338348 () Int)

(assert (=> d!1142309 (>= lt!1338348 0)))

(declare-fun e!2381648 () Int)

(assert (=> d!1142309 (= lt!1338348 e!2381648)))

(declare-fun c!671045 () Bool)

(assert (=> d!1142309 (= c!671045 (is-Nil!40825 suffixTokens!72))))

(assert (=> d!1142309 (= (size!30711 suffixTokens!72) lt!1338348)))

(declare-fun b!3853071 () Bool)

(assert (=> b!3853071 (= e!2381648 0)))

(declare-fun b!3853072 () Bool)

(assert (=> b!3853072 (= e!2381648 (+ 1 (size!30711 (t!311996 suffixTokens!72))))))

(assert (= (and d!1142309 c!671045) b!3853071))

(assert (= (and d!1142309 (not c!671045)) b!3853072))

(declare-fun m!4408191 () Bool)

(assert (=> b!3853072 m!4408191))

(assert (=> b!3852311 d!1142309))

(declare-fun b!3853075 () Bool)

(declare-fun res!1559873 () Bool)

(declare-fun e!2381650 () Bool)

(assert (=> b!3853075 (=> (not res!1559873) (not e!2381650))))

(declare-fun lt!1338349 () List!40946)

(assert (=> b!3853075 (= res!1559873 (= (size!30708 lt!1338349) (+ (size!30708 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (size!30708 (_2!23142 (get!13507 lt!1338072))))))))

(declare-fun b!3853073 () Bool)

(declare-fun e!2381649 () List!40946)

(assert (=> b!3853073 (= e!2381649 (_2!23142 (get!13507 lt!1338072)))))

(declare-fun b!3853076 () Bool)

(assert (=> b!3853076 (= e!2381650 (or (not (= (_2!23142 (get!13507 lt!1338072)) Nil!40822)) (= lt!1338349 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))))))))

(declare-fun d!1142311 () Bool)

(assert (=> d!1142311 e!2381650))

(declare-fun res!1559872 () Bool)

(assert (=> d!1142311 (=> (not res!1559872) (not e!2381650))))

(assert (=> d!1142311 (= res!1559872 (= (content!6075 lt!1338349) (set.union (content!6075 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (content!6075 (_2!23142 (get!13507 lt!1338072))))))))

(assert (=> d!1142311 (= lt!1338349 e!2381649)))

(declare-fun c!671046 () Bool)

(assert (=> d!1142311 (= c!671046 (is-Nil!40822 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))

(assert (=> d!1142311 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))) (_2!23142 (get!13507 lt!1338072))) lt!1338349)))

(declare-fun b!3853074 () Bool)

(assert (=> b!3853074 (= e!2381649 (Cons!40822 (h!46242 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (++!10380 (t!311993 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (_2!23142 (get!13507 lt!1338072)))))))

(assert (= (and d!1142311 c!671046) b!3853073))

(assert (= (and d!1142311 (not c!671046)) b!3853074))

(assert (= (and d!1142311 res!1559872) b!3853075))

(assert (= (and b!3853075 res!1559873) b!3853076))

(declare-fun m!4408193 () Bool)

(assert (=> b!3853075 m!4408193))

(assert (=> b!3853075 m!4407415))

(declare-fun m!4408195 () Bool)

(assert (=> b!3853075 m!4408195))

(assert (=> b!3853075 m!4407419))

(declare-fun m!4408197 () Bool)

(assert (=> d!1142311 m!4408197))

(assert (=> d!1142311 m!4407415))

(declare-fun m!4408199 () Bool)

(assert (=> d!1142311 m!4408199))

(declare-fun m!4408201 () Bool)

(assert (=> d!1142311 m!4408201))

(declare-fun m!4408203 () Bool)

(assert (=> b!3853074 m!4408203))

(assert (=> b!3852437 d!1142311))

(declare-fun d!1142313 () Bool)

(assert (=> d!1142313 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))) (list!15197 (c!670845 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))

(declare-fun bs!582927 () Bool)

(assert (= bs!582927 d!1142313))

(declare-fun m!4408205 () Bool)

(assert (=> bs!582927 m!4408205))

(assert (=> b!3852437 d!1142313))

(declare-fun d!1142315 () Bool)

(declare-fun lt!1338350 () BalanceConc!24638)

(assert (=> d!1142315 (= (list!15195 lt!1338350) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338072))))))

(assert (=> d!1142315 (= lt!1338350 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072))))) (value!200499 (_1!23142 (get!13507 lt!1338072)))))))

(assert (=> d!1142315 (= (charsOf!4139 (_1!23142 (get!13507 lt!1338072))) lt!1338350)))

(declare-fun b_lambda!112625 () Bool)

(assert (=> (not b_lambda!112625) (not d!1142315)))

(declare-fun t!312149 () Bool)

(declare-fun tb!222497 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312149) tb!222497))

(declare-fun b!3853077 () Bool)

(declare-fun e!2381651 () Bool)

(declare-fun tp!1167841 () Bool)

(assert (=> b!3853077 (= e!2381651 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072))))) (value!200499 (_1!23142 (get!13507 lt!1338072)))))) tp!1167841))))

(declare-fun result!271082 () Bool)

(assert (=> tb!222497 (= result!271082 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072))))) (value!200499 (_1!23142 (get!13507 lt!1338072))))) e!2381651))))

(assert (= tb!222497 b!3853077))

(declare-fun m!4408207 () Bool)

(assert (=> b!3853077 m!4408207))

(declare-fun m!4408209 () Bool)

(assert (=> tb!222497 m!4408209))

(assert (=> d!1142315 t!312149))

(declare-fun b_and!287907 () Bool)

(assert (= b_and!287893 (and (=> t!312149 result!271082) b_and!287907)))

(declare-fun t!312151 () Bool)

(declare-fun tb!222499 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312151) tb!222499))

(declare-fun result!271084 () Bool)

(assert (= result!271084 result!271082))

(assert (=> d!1142315 t!312151))

(declare-fun b_and!287909 () Bool)

(assert (= b_and!287889 (and (=> t!312151 result!271084) b_and!287909)))

(declare-fun t!312153 () Bool)

(declare-fun tb!222501 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312153) tb!222501))

(declare-fun result!271086 () Bool)

(assert (= result!271086 result!271082))

(assert (=> d!1142315 t!312153))

(declare-fun b_and!287911 () Bool)

(assert (= b_and!287883 (and (=> t!312153 result!271086) b_and!287911)))

(declare-fun tb!222503 () Bool)

(declare-fun t!312155 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312155) tb!222503))

(declare-fun result!271088 () Bool)

(assert (= result!271088 result!271082))

(assert (=> d!1142315 t!312155))

(declare-fun b_and!287913 () Bool)

(assert (= b_and!287891 (and (=> t!312155 result!271088) b_and!287913)))

(declare-fun t!312157 () Bool)

(declare-fun tb!222505 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312157) tb!222505))

(declare-fun result!271090 () Bool)

(assert (= result!271090 result!271082))

(assert (=> d!1142315 t!312157))

(declare-fun b_and!287915 () Bool)

(assert (= b_and!287885 (and (=> t!312157 result!271090) b_and!287915)))

(declare-fun tb!222507 () Bool)

(declare-fun t!312159 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312159) tb!222507))

(declare-fun result!271092 () Bool)

(assert (= result!271092 result!271082))

(assert (=> d!1142315 t!312159))

(declare-fun b_and!287917 () Bool)

(assert (= b_and!287887 (and (=> t!312159 result!271092) b_and!287917)))

(declare-fun m!4408211 () Bool)

(assert (=> d!1142315 m!4408211))

(declare-fun m!4408213 () Bool)

(assert (=> d!1142315 m!4408213))

(assert (=> b!3852437 d!1142315))

(assert (=> b!3852437 d!1142157))

(declare-fun b!3853078 () Bool)

(declare-fun e!2381652 () Bool)

(declare-fun lt!1338351 () tuple2!40014)

(assert (=> b!3853078 (= e!2381652 (= (_2!23141 lt!1338351) (_2!23142 (v!39022 lt!1338095))))))

(declare-fun b!3853079 () Bool)

(declare-fun e!2381654 () Bool)

(assert (=> b!3853079 (= e!2381652 e!2381654)))

(declare-fun res!1559874 () Bool)

(assert (=> b!3853079 (= res!1559874 (< (size!30708 (_2!23141 lt!1338351)) (size!30708 (_2!23142 (v!39022 lt!1338095)))))))

(assert (=> b!3853079 (=> (not res!1559874) (not e!2381654))))

(declare-fun b!3853080 () Bool)

(declare-fun e!2381653 () tuple2!40014)

(declare-fun lt!1338352 () Option!8729)

(declare-fun lt!1338353 () tuple2!40014)

(assert (=> b!3853080 (= e!2381653 (tuple2!40015 (Cons!40825 (_1!23142 (v!39022 lt!1338352)) (_1!23141 lt!1338353)) (_2!23141 lt!1338353)))))

(assert (=> b!3853080 (= lt!1338353 (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338352))))))

(declare-fun d!1142317 () Bool)

(assert (=> d!1142317 e!2381652))

(declare-fun c!671047 () Bool)

(assert (=> d!1142317 (= c!671047 (> (size!30711 (_1!23141 lt!1338351)) 0))))

(assert (=> d!1142317 (= lt!1338351 e!2381653)))

(declare-fun c!671048 () Bool)

(assert (=> d!1142317 (= c!671048 (is-Some!8728 lt!1338352))))

(assert (=> d!1142317 (= lt!1338352 (maxPrefix!3204 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338095))))))

(assert (=> d!1142317 (= (lexList!1668 thiss!20629 rules!2768 (_2!23142 (v!39022 lt!1338095))) lt!1338351)))

(declare-fun b!3853081 () Bool)

(assert (=> b!3853081 (= e!2381653 (tuple2!40015 Nil!40825 (_2!23142 (v!39022 lt!1338095))))))

(declare-fun b!3853082 () Bool)

(assert (=> b!3853082 (= e!2381654 (not (isEmpty!24164 (_1!23141 lt!1338351))))))

(assert (= (and d!1142317 c!671048) b!3853080))

(assert (= (and d!1142317 (not c!671048)) b!3853081))

(assert (= (and d!1142317 c!671047) b!3853079))

(assert (= (and d!1142317 (not c!671047)) b!3853078))

(assert (= (and b!3853079 res!1559874) b!3853082))

(declare-fun m!4408215 () Bool)

(assert (=> b!3853079 m!4408215))

(declare-fun m!4408217 () Bool)

(assert (=> b!3853079 m!4408217))

(declare-fun m!4408219 () Bool)

(assert (=> b!3853080 m!4408219))

(declare-fun m!4408221 () Bool)

(assert (=> d!1142317 m!4408221))

(declare-fun m!4408223 () Bool)

(assert (=> d!1142317 m!4408223))

(declare-fun m!4408225 () Bool)

(assert (=> b!3853082 m!4408225))

(assert (=> b!3852480 d!1142317))

(declare-fun d!1142319 () Bool)

(declare-fun lt!1338354 () Int)

(assert (=> d!1142319 (>= lt!1338354 0)))

(declare-fun e!2381655 () Int)

(assert (=> d!1142319 (= lt!1338354 e!2381655)))

(declare-fun c!671049 () Bool)

(assert (=> d!1142319 (= c!671049 (is-Nil!40822 lt!1337949))))

(assert (=> d!1142319 (= (size!30708 lt!1337949) lt!1338354)))

(declare-fun b!3853083 () Bool)

(assert (=> b!3853083 (= e!2381655 0)))

(declare-fun b!3853084 () Bool)

(assert (=> b!3853084 (= e!2381655 (+ 1 (size!30708 (t!311993 lt!1337949))))))

(assert (= (and d!1142319 c!671049) b!3853083))

(assert (= (and d!1142319 (not c!671049)) b!3853084))

(declare-fun m!4408227 () Bool)

(assert (=> b!3853084 m!4408227))

(assert (=> b!3852511 d!1142319))

(assert (=> b!3852511 d!1142043))

(declare-fun d!1142321 () Bool)

(assert (=> d!1142321 (= (isEmpty!24169 lt!1337950) (not (is-Some!8728 lt!1337950)))))

(assert (=> d!1141989 d!1142321))

(assert (=> b!3852411 d!1142269))

(declare-fun bs!582928 () Bool)

(declare-fun d!1142323 () Bool)

(assert (= bs!582928 (and d!1142323 d!1142237)))

(declare-fun lambda!126171 () Int)

(assert (=> bs!582928 (= (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (= lambda!126171 lambda!126166))))

(assert (=> d!1142323 true))

(assert (=> d!1142323 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (h!46244 rules!2768)))) (dynLambda!17622 order!22165 lambda!126171))))

(assert (=> d!1142323 (= (equivClasses!2603 (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (h!46244 rules!2768)))) (Forall2!1031 lambda!126171))))

(declare-fun bs!582929 () Bool)

(assert (= bs!582929 d!1142323))

(declare-fun m!4408229 () Bool)

(assert (=> bs!582929 m!4408229))

(assert (=> b!3852219 d!1142323))

(declare-fun d!1142325 () Bool)

(assert (=> d!1142325 (= (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))) (isBalanced!3623 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(declare-fun bs!582930 () Bool)

(assert (= bs!582930 d!1142325))

(declare-fun m!4408231 () Bool)

(assert (=> bs!582930 m!4408231))

(assert (=> tb!222359 d!1142325))

(declare-fun bs!582931 () Bool)

(declare-fun d!1142327 () Bool)

(assert (= bs!582931 (and d!1142327 d!1142237)))

(declare-fun lambda!126172 () Int)

(assert (=> bs!582931 (= (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (= lambda!126172 lambda!126166))))

(declare-fun bs!582932 () Bool)

(assert (= bs!582932 (and d!1142327 d!1142323)))

(assert (=> bs!582932 (= (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (h!46244 rules!2768)))) (= lambda!126172 lambda!126171))))

(assert (=> d!1142327 true))

(assert (=> d!1142327 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) (dynLambda!17622 order!22165 lambda!126172))))

(assert (=> d!1142327 (= (equivClasses!2603 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) (Forall2!1031 lambda!126172))))

(declare-fun bs!582933 () Bool)

(assert (= bs!582933 d!1142327))

(declare-fun m!4408233 () Bool)

(assert (=> bs!582933 m!4408233))

(assert (=> b!3852473 d!1142327))

(assert (=> d!1142027 d!1142047))

(declare-fun d!1142329 () Bool)

(assert (=> d!1142329 (ruleValid!2263 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))

(assert (=> d!1142329 true))

(declare-fun _$65!1323 () Unit!58493)

(assert (=> d!1142329 (= (choose!22675 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) rules!2768) _$65!1323)))

(declare-fun bs!582934 () Bool)

(assert (= bs!582934 d!1142329))

(assert (=> bs!582934 m!4407101))

(assert (=> d!1142027 d!1142329))

(declare-fun d!1142331 () Bool)

(declare-fun lt!1338357 () Bool)

(declare-fun content!6078 (List!40948) (Set Rule!12422))

(assert (=> d!1142331 (= lt!1338357 (set.member (rule!9167 (_1!23142 (v!39022 lt!1337950))) (content!6078 rules!2768)))))

(declare-fun e!2381661 () Bool)

(assert (=> d!1142331 (= lt!1338357 e!2381661)))

(declare-fun res!1559879 () Bool)

(assert (=> d!1142331 (=> (not res!1559879) (not e!2381661))))

(assert (=> d!1142331 (= res!1559879 (is-Cons!40824 rules!2768))))

(assert (=> d!1142331 (= (contains!8253 rules!2768 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) lt!1338357)))

(declare-fun b!3853089 () Bool)

(declare-fun e!2381660 () Bool)

(assert (=> b!3853089 (= e!2381661 e!2381660)))

(declare-fun res!1559880 () Bool)

(assert (=> b!3853089 (=> res!1559880 e!2381660)))

(assert (=> b!3853089 (= res!1559880 (= (h!46244 rules!2768) (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(declare-fun b!3853090 () Bool)

(assert (=> b!3853090 (= e!2381660 (contains!8253 (t!311995 rules!2768) (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (= (and d!1142331 res!1559879) b!3853089))

(assert (= (and b!3853089 (not res!1559880)) b!3853090))

(declare-fun m!4408235 () Bool)

(assert (=> d!1142331 m!4408235))

(declare-fun m!4408237 () Bool)

(assert (=> d!1142331 m!4408237))

(declare-fun m!4408239 () Bool)

(assert (=> b!3853090 m!4408239))

(assert (=> d!1142027 d!1142331))

(declare-fun d!1142333 () Bool)

(declare-fun c!671050 () Bool)

(assert (=> d!1142333 (= c!671050 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun e!2381662 () Bool)

(assert (=> d!1142333 (= (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))) e!2381662)))

(declare-fun b!3853091 () Bool)

(assert (=> b!3853091 (= e!2381662 (inv!54983 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun b!3853092 () Bool)

(declare-fun e!2381663 () Bool)

(assert (=> b!3853092 (= e!2381662 e!2381663)))

(declare-fun res!1559881 () Bool)

(assert (=> b!3853092 (= res!1559881 (not (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))))))

(assert (=> b!3853092 (=> res!1559881 e!2381663)))

(declare-fun b!3853093 () Bool)

(assert (=> b!3853093 (= e!2381663 (inv!54984 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))))))

(assert (= (and d!1142333 c!671050) b!3853091))

(assert (= (and d!1142333 (not c!671050)) b!3853092))

(assert (= (and b!3853092 (not res!1559881)) b!3853093))

(declare-fun m!4408241 () Bool)

(assert (=> b!3853091 m!4408241))

(declare-fun m!4408243 () Bool)

(assert (=> b!3853093 m!4408243))

(assert (=> b!3852499 d!1142333))

(declare-fun b!3853096 () Bool)

(declare-fun res!1559883 () Bool)

(declare-fun e!2381665 () Bool)

(assert (=> b!3853096 (=> (not res!1559883) (not e!2381665))))

(declare-fun lt!1338358 () List!40946)

(assert (=> b!3853096 (= res!1559883 (= (size!30708 lt!1338358) (+ (size!30708 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (size!30708 (_2!23142 (get!13507 lt!1338027))))))))

(declare-fun b!3853094 () Bool)

(declare-fun e!2381664 () List!40946)

(assert (=> b!3853094 (= e!2381664 (_2!23142 (get!13507 lt!1338027)))))

(declare-fun b!3853097 () Bool)

(assert (=> b!3853097 (= e!2381665 (or (not (= (_2!23142 (get!13507 lt!1338027)) Nil!40822)) (= lt!1338358 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun d!1142335 () Bool)

(assert (=> d!1142335 e!2381665))

(declare-fun res!1559882 () Bool)

(assert (=> d!1142335 (=> (not res!1559882) (not e!2381665))))

(assert (=> d!1142335 (= res!1559882 (= (content!6075 lt!1338358) (set.union (content!6075 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (content!6075 (_2!23142 (get!13507 lt!1338027))))))))

(assert (=> d!1142335 (= lt!1338358 e!2381664)))

(declare-fun c!671051 () Bool)

(assert (=> d!1142335 (= c!671051 (is-Nil!40822 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))))))

(assert (=> d!1142335 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027)))) (_2!23142 (get!13507 lt!1338027))) lt!1338358)))

(declare-fun b!3853095 () Bool)

(assert (=> b!3853095 (= e!2381664 (Cons!40822 (h!46242 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (++!10380 (t!311993 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338027))))) (_2!23142 (get!13507 lt!1338027)))))))

(assert (= (and d!1142335 c!671051) b!3853094))

(assert (= (and d!1142335 (not c!671051)) b!3853095))

(assert (= (and d!1142335 res!1559882) b!3853096))

(assert (= (and b!3853096 res!1559883) b!3853097))

(declare-fun m!4408245 () Bool)

(assert (=> b!3853096 m!4408245))

(assert (=> b!3853096 m!4407245))

(declare-fun m!4408247 () Bool)

(assert (=> b!3853096 m!4408247))

(assert (=> b!3853096 m!4407269))

(declare-fun m!4408249 () Bool)

(assert (=> d!1142335 m!4408249))

(assert (=> d!1142335 m!4407245))

(declare-fun m!4408251 () Bool)

(assert (=> d!1142335 m!4408251))

(declare-fun m!4408253 () Bool)

(assert (=> d!1142335 m!4408253))

(declare-fun m!4408255 () Bool)

(assert (=> b!3853095 m!4408255))

(assert (=> b!3852267 d!1142335))

(assert (=> b!3852267 d!1142141))

(assert (=> b!3852267 d!1142143))

(assert (=> b!3852267 d!1142145))

(declare-fun d!1142337 () Bool)

(declare-fun lt!1338359 () Int)

(assert (=> d!1142337 (>= lt!1338359 0)))

(declare-fun e!2381666 () Int)

(assert (=> d!1142337 (= lt!1338359 e!2381666)))

(declare-fun c!671052 () Bool)

(assert (=> d!1142337 (= c!671052 (is-Nil!40825 (_1!23141 lt!1338037)))))

(assert (=> d!1142337 (= (size!30711 (_1!23141 lt!1338037)) lt!1338359)))

(declare-fun b!3853098 () Bool)

(assert (=> b!3853098 (= e!2381666 0)))

(declare-fun b!3853099 () Bool)

(assert (=> b!3853099 (= e!2381666 (+ 1 (size!30711 (t!311996 (_1!23141 lt!1338037)))))))

(assert (= (and d!1142337 c!671052) b!3853098))

(assert (= (and d!1142337 (not c!671052)) b!3853099))

(declare-fun m!4408257 () Bool)

(assert (=> b!3853099 m!4408257))

(assert (=> d!1141975 d!1142337))

(declare-fun b!3853100 () Bool)

(declare-fun e!2381667 () Option!8729)

(declare-fun lt!1338364 () Option!8729)

(declare-fun lt!1338363 () Option!8729)

(assert (=> b!3853100 (= e!2381667 (ite (and (is-None!8728 lt!1338364) (is-None!8728 lt!1338363)) None!8728 (ite (is-None!8728 lt!1338363) lt!1338364 (ite (is-None!8728 lt!1338364) lt!1338363 (ite (>= (size!30707 (_1!23142 (v!39022 lt!1338364))) (size!30707 (_1!23142 (v!39022 lt!1338363)))) lt!1338364 lt!1338363)))))))

(declare-fun call!282301 () Option!8729)

(assert (=> b!3853100 (= lt!1338364 call!282301)))

(assert (=> b!3853100 (= lt!1338363 (maxPrefix!3204 thiss!20629 (t!311995 rules!2768) suffix!1176))))

(declare-fun b!3853101 () Bool)

(declare-fun res!1559885 () Bool)

(declare-fun e!2381668 () Bool)

(assert (=> b!3853101 (=> (not res!1559885) (not e!2381668))))

(declare-fun lt!1338362 () Option!8729)

(assert (=> b!3853101 (= res!1559885 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338362)))) (_2!23142 (get!13507 lt!1338362))) suffix!1176))))

(declare-fun b!3853102 () Bool)

(declare-fun res!1559888 () Bool)

(assert (=> b!3853102 (=> (not res!1559888) (not e!2381668))))

(assert (=> b!3853102 (= res!1559888 (< (size!30708 (_2!23142 (get!13507 lt!1338362))) (size!30708 suffix!1176)))))

(declare-fun d!1142339 () Bool)

(declare-fun e!2381669 () Bool)

(assert (=> d!1142339 e!2381669))

(declare-fun res!1559884 () Bool)

(assert (=> d!1142339 (=> res!1559884 e!2381669)))

(assert (=> d!1142339 (= res!1559884 (isEmpty!24169 lt!1338362))))

(assert (=> d!1142339 (= lt!1338362 e!2381667)))

(declare-fun c!671053 () Bool)

(assert (=> d!1142339 (= c!671053 (and (is-Cons!40824 rules!2768) (is-Nil!40824 (t!311995 rules!2768))))))

(declare-fun lt!1338361 () Unit!58493)

(declare-fun lt!1338360 () Unit!58493)

(assert (=> d!1142339 (= lt!1338361 lt!1338360)))

(assert (=> d!1142339 (isPrefix!3410 suffix!1176 suffix!1176)))

(assert (=> d!1142339 (= lt!1338360 (lemmaIsPrefixRefl!2175 suffix!1176 suffix!1176))))

(assert (=> d!1142339 (rulesValidInductive!2245 thiss!20629 rules!2768)))

(assert (=> d!1142339 (= (maxPrefix!3204 thiss!20629 rules!2768 suffix!1176) lt!1338362)))

(declare-fun b!3853103 () Bool)

(declare-fun res!1559887 () Bool)

(assert (=> b!3853103 (=> (not res!1559887) (not e!2381668))))

(assert (=> b!3853103 (= res!1559887 (= (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338362)))) (originalCharacters!6911 (_1!23142 (get!13507 lt!1338362)))))))

(declare-fun b!3853104 () Bool)

(declare-fun res!1559890 () Bool)

(assert (=> b!3853104 (=> (not res!1559890) (not e!2381668))))

(assert (=> b!3853104 (= res!1559890 (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (get!13507 lt!1338362)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338362))))))))

(declare-fun b!3853105 () Bool)

(declare-fun res!1559889 () Bool)

(assert (=> b!3853105 (=> (not res!1559889) (not e!2381668))))

(assert (=> b!3853105 (= res!1559889 (= (value!200499 (_1!23142 (get!13507 lt!1338362))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338362)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338362)))))))))

(declare-fun bm!282296 () Bool)

(assert (=> bm!282296 (= call!282301 (maxPrefixOneRule!2286 thiss!20629 (h!46244 rules!2768) suffix!1176))))

(declare-fun b!3853106 () Bool)

(assert (=> b!3853106 (= e!2381667 call!282301)))

(declare-fun b!3853107 () Bool)

(assert (=> b!3853107 (= e!2381669 e!2381668)))

(declare-fun res!1559886 () Bool)

(assert (=> b!3853107 (=> (not res!1559886) (not e!2381668))))

(assert (=> b!3853107 (= res!1559886 (isDefined!6852 lt!1338362))))

(declare-fun b!3853108 () Bool)

(assert (=> b!3853108 (= e!2381668 (contains!8253 rules!2768 (rule!9167 (_1!23142 (get!13507 lt!1338362)))))))

(assert (= (and d!1142339 c!671053) b!3853106))

(assert (= (and d!1142339 (not c!671053)) b!3853100))

(assert (= (or b!3853106 b!3853100) bm!282296))

(assert (= (and d!1142339 (not res!1559884)) b!3853107))

(assert (= (and b!3853107 res!1559886) b!3853103))

(assert (= (and b!3853103 res!1559887) b!3853102))

(assert (= (and b!3853102 res!1559888) b!3853101))

(assert (= (and b!3853101 res!1559885) b!3853105))

(assert (= (and b!3853105 res!1559889) b!3853104))

(assert (= (and b!3853104 res!1559890) b!3853108))

(declare-fun m!4408259 () Bool)

(assert (=> bm!282296 m!4408259))

(declare-fun m!4408261 () Bool)

(assert (=> b!3853103 m!4408261))

(declare-fun m!4408263 () Bool)

(assert (=> b!3853103 m!4408263))

(assert (=> b!3853103 m!4408263))

(declare-fun m!4408265 () Bool)

(assert (=> b!3853103 m!4408265))

(declare-fun m!4408267 () Bool)

(assert (=> b!3853107 m!4408267))

(declare-fun m!4408269 () Bool)

(assert (=> b!3853100 m!4408269))

(assert (=> b!3853104 m!4408261))

(assert (=> b!3853104 m!4408263))

(assert (=> b!3853104 m!4408263))

(assert (=> b!3853104 m!4408265))

(assert (=> b!3853104 m!4408265))

(declare-fun m!4408271 () Bool)

(assert (=> b!3853104 m!4408271))

(assert (=> b!3853105 m!4408261))

(declare-fun m!4408273 () Bool)

(assert (=> b!3853105 m!4408273))

(assert (=> b!3853105 m!4408273))

(declare-fun m!4408275 () Bool)

(assert (=> b!3853105 m!4408275))

(declare-fun m!4408277 () Bool)

(assert (=> d!1142339 m!4408277))

(declare-fun m!4408279 () Bool)

(assert (=> d!1142339 m!4408279))

(declare-fun m!4408281 () Bool)

(assert (=> d!1142339 m!4408281))

(assert (=> d!1142339 m!4407263))

(assert (=> b!3853101 m!4408261))

(assert (=> b!3853101 m!4408263))

(assert (=> b!3853101 m!4408263))

(assert (=> b!3853101 m!4408265))

(assert (=> b!3853101 m!4408265))

(declare-fun m!4408283 () Bool)

(assert (=> b!3853101 m!4408283))

(assert (=> b!3853108 m!4408261))

(declare-fun m!4408285 () Bool)

(assert (=> b!3853108 m!4408285))

(assert (=> b!3853102 m!4408261))

(declare-fun m!4408287 () Bool)

(assert (=> b!3853102 m!4408287))

(assert (=> b!3853102 m!4407069))

(assert (=> d!1141975 d!1142339))

(declare-fun d!1142341 () Bool)

(assert (=> d!1142341 (= (inv!17 (value!200499 (h!46245 suffixTokens!72))) (= (charsToBigInt!1 (text!46235 (value!200499 (h!46245 suffixTokens!72)))) (value!200491 (value!200499 (h!46245 suffixTokens!72)))))))

(declare-fun bs!582935 () Bool)

(assert (= bs!582935 d!1142341))

(declare-fun m!4408289 () Bool)

(assert (=> bs!582935 m!4408289))

(assert (=> b!3852353 d!1142341))

(declare-fun d!1142343 () Bool)

(declare-fun lt!1338365 () Bool)

(assert (=> d!1142343 (= lt!1338365 (set.member (rule!9167 (_1!23142 (get!13507 lt!1338027))) (content!6078 rules!2768)))))

(declare-fun e!2381671 () Bool)

(assert (=> d!1142343 (= lt!1338365 e!2381671)))

(declare-fun res!1559891 () Bool)

(assert (=> d!1142343 (=> (not res!1559891) (not e!2381671))))

(assert (=> d!1142343 (= res!1559891 (is-Cons!40824 rules!2768))))

(assert (=> d!1142343 (= (contains!8253 rules!2768 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) lt!1338365)))

(declare-fun b!3853109 () Bool)

(declare-fun e!2381670 () Bool)

(assert (=> b!3853109 (= e!2381671 e!2381670)))

(declare-fun res!1559892 () Bool)

(assert (=> b!3853109 (=> res!1559892 e!2381670)))

(assert (=> b!3853109 (= res!1559892 (= (h!46244 rules!2768) (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))

(declare-fun b!3853110 () Bool)

(assert (=> b!3853110 (= e!2381670 (contains!8253 (t!311995 rules!2768) (rule!9167 (_1!23142 (get!13507 lt!1338027)))))))

(assert (= (and d!1142343 res!1559891) b!3853109))

(assert (= (and b!3853109 (not res!1559892)) b!3853110))

(assert (=> d!1142343 m!4408235))

(declare-fun m!4408291 () Bool)

(assert (=> d!1142343 m!4408291))

(declare-fun m!4408293 () Bool)

(assert (=> b!3853110 m!4408293))

(assert (=> b!3852274 d!1142343))

(assert (=> b!3852274 d!1142145))

(assert (=> d!1142033 d!1142009))

(declare-fun d!1142345 () Bool)

(declare-fun lt!1338366 () Int)

(assert (=> d!1142345 (>= lt!1338366 0)))

(declare-fun e!2381672 () Int)

(assert (=> d!1142345 (= lt!1338366 e!2381672)))

(declare-fun c!671054 () Bool)

(assert (=> d!1142345 (= c!671054 (is-Nil!40822 (t!311993 (_2!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142345 (= (size!30708 (t!311993 (_2!23142 (v!39022 lt!1337950)))) lt!1338366)))

(declare-fun b!3853111 () Bool)

(assert (=> b!3853111 (= e!2381672 0)))

(declare-fun b!3853112 () Bool)

(assert (=> b!3853112 (= e!2381672 (+ 1 (size!30708 (t!311993 (t!311993 (_2!23142 (v!39022 lt!1337950)))))))))

(assert (= (and d!1142345 c!671054) b!3853111))

(assert (= (and d!1142345 (not c!671054)) b!3853112))

(declare-fun m!4408295 () Bool)

(assert (=> b!3853112 m!4408295))

(assert (=> b!3852350 d!1142345))

(declare-fun d!1142347 () Bool)

(assert (=> d!1142347 (= (list!15195 lt!1338109) (list!15197 (c!670845 lt!1338109)))))

(declare-fun bs!582936 () Bool)

(assert (= bs!582936 d!1142347))

(declare-fun m!4408297 () Bool)

(assert (=> bs!582936 m!4408297))

(assert (=> d!1142049 d!1142347))

(declare-fun b!3853131 () Bool)

(declare-fun res!1559903 () Bool)

(declare-fun e!2381687 () Bool)

(assert (=> b!3853131 (=> (not res!1559903) (not e!2381687))))

(declare-fun call!282309 () Bool)

(assert (=> b!3853131 (= res!1559903 call!282309)))

(declare-fun e!2381689 () Bool)

(assert (=> b!3853131 (= e!2381689 e!2381687)))

(declare-fun b!3853132 () Bool)

(declare-fun e!2381690 () Bool)

(declare-fun e!2381692 () Bool)

(assert (=> b!3853132 (= e!2381690 e!2381692)))

(declare-fun res!1559904 () Bool)

(assert (=> b!3853132 (= res!1559904 (not (nullable!3904 (reg!11545 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))))

(assert (=> b!3853132 (=> (not res!1559904) (not e!2381692))))

(declare-fun b!3853133 () Bool)

(assert (=> b!3853133 (= e!2381690 e!2381689)))

(declare-fun c!671059 () Bool)

(assert (=> b!3853133 (= c!671059 (is-Union!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853134 () Bool)

(declare-fun res!1559907 () Bool)

(declare-fun e!2381693 () Bool)

(assert (=> b!3853134 (=> res!1559907 e!2381693)))

(assert (=> b!3853134 (= res!1559907 (not (is-Concat!17758 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(assert (=> b!3853134 (= e!2381689 e!2381693)))

(declare-fun b!3853135 () Bool)

(declare-fun e!2381688 () Bool)

(assert (=> b!3853135 (= e!2381688 call!282309)))

(declare-fun b!3853136 () Bool)

(declare-fun e!2381691 () Bool)

(assert (=> b!3853136 (= e!2381691 e!2381690)))

(declare-fun c!671060 () Bool)

(assert (=> b!3853136 (= c!671060 (is-Star!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun d!1142349 () Bool)

(declare-fun res!1559906 () Bool)

(assert (=> d!1142349 (=> res!1559906 e!2381691)))

(assert (=> d!1142349 (= res!1559906 (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142349 (= (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) e!2381691)))

(declare-fun b!3853137 () Bool)

(declare-fun call!282310 () Bool)

(assert (=> b!3853137 (= e!2381692 call!282310)))

(declare-fun b!3853138 () Bool)

(declare-fun call!282308 () Bool)

(assert (=> b!3853138 (= e!2381687 call!282308)))

(declare-fun bm!282303 () Bool)

(assert (=> bm!282303 (= call!282310 (validRegex!5103 (ite c!671060 (reg!11545 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (ite c!671059 (regTwo!22945 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (regOne!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))))

(declare-fun bm!282304 () Bool)

(assert (=> bm!282304 (= call!282308 call!282310)))

(declare-fun b!3853139 () Bool)

(assert (=> b!3853139 (= e!2381693 e!2381688)))

(declare-fun res!1559905 () Bool)

(assert (=> b!3853139 (=> (not res!1559905) (not e!2381688))))

(assert (=> b!3853139 (= res!1559905 call!282308)))

(declare-fun bm!282305 () Bool)

(assert (=> bm!282305 (= call!282309 (validRegex!5103 (ite c!671059 (regOne!22945 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (regTwo!22944 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))))

(assert (= (and d!1142349 (not res!1559906)) b!3853136))

(assert (= (and b!3853136 c!671060) b!3853132))

(assert (= (and b!3853136 (not c!671060)) b!3853133))

(assert (= (and b!3853132 res!1559904) b!3853137))

(assert (= (and b!3853133 c!671059) b!3853131))

(assert (= (and b!3853133 (not c!671059)) b!3853134))

(assert (= (and b!3853131 res!1559903) b!3853138))

(assert (= (and b!3853134 (not res!1559907)) b!3853139))

(assert (= (and b!3853139 res!1559905) b!3853135))

(assert (= (or b!3853138 b!3853139) bm!282304))

(assert (= (or b!3853131 b!3853135) bm!282305))

(assert (= (or b!3853137 bm!282304) bm!282303))

(declare-fun m!4408299 () Bool)

(assert (=> b!3853132 m!4408299))

(declare-fun m!4408301 () Bool)

(assert (=> bm!282303 m!4408301))

(declare-fun m!4408303 () Bool)

(assert (=> bm!282305 m!4408303))

(assert (=> d!1142047 d!1142349))

(assert (=> b!3852271 d!1142145))

(declare-fun d!1142351 () Bool)

(assert (=> d!1142351 (= (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027))))) (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027))))))))

(declare-fun b_lambda!112627 () Bool)

(assert (=> (not b_lambda!112627) (not d!1142351)))

(declare-fun tb!222509 () Bool)

(declare-fun t!312161 () Bool)

(assert (=> (and b!3852102 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312161) tb!222509))

(declare-fun result!271094 () Bool)

(assert (=> tb!222509 (= result!271094 (inv!21 (dynLambda!17617 (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027))))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027)))))))))

(declare-fun m!4408305 () Bool)

(assert (=> tb!222509 m!4408305))

(assert (=> d!1142351 t!312161))

(declare-fun b_and!287919 () Bool)

(assert (= b_and!287901 (and (=> t!312161 result!271094) b_and!287919)))

(declare-fun t!312163 () Bool)

(declare-fun tb!222511 () Bool)

(assert (=> (and b!3852580 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312163) tb!222511))

(declare-fun result!271096 () Bool)

(assert (= result!271096 result!271094))

(assert (=> d!1142351 t!312163))

(declare-fun b_and!287921 () Bool)

(assert (= b_and!287897 (and (=> t!312163 result!271096) b_and!287921)))

(declare-fun t!312165 () Bool)

(declare-fun tb!222513 () Bool)

(assert (=> (and b!3852109 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312165) tb!222513))

(declare-fun result!271098 () Bool)

(assert (= result!271098 result!271094))

(assert (=> d!1142351 t!312165))

(declare-fun b_and!287923 () Bool)

(assert (= b_and!287899 (and (=> t!312165 result!271098) b_and!287923)))

(declare-fun t!312167 () Bool)

(declare-fun tb!222515 () Bool)

(assert (=> (and b!3852563 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312167) tb!222515))

(declare-fun result!271100 () Bool)

(assert (= result!271100 result!271094))

(assert (=> d!1142351 t!312167))

(declare-fun b_and!287925 () Bool)

(assert (= b_and!287905 (and (=> t!312167 result!271100) b_and!287925)))

(declare-fun t!312169 () Bool)

(declare-fun tb!222517 () Bool)

(assert (=> (and b!3852098 (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312169) tb!222517))

(declare-fun result!271102 () Bool)

(assert (= result!271102 result!271094))

(assert (=> d!1142351 t!312169))

(declare-fun b_and!287927 () Bool)

(assert (= b_and!287895 (and (=> t!312169 result!271102) b_and!287927)))

(declare-fun tb!222519 () Bool)

(declare-fun t!312171 () Bool)

(assert (=> (and b!3852552 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312171) tb!222519))

(declare-fun result!271104 () Bool)

(assert (= result!271104 result!271094))

(assert (=> d!1142351 t!312171))

(declare-fun b_and!287929 () Bool)

(assert (= b_and!287903 (and (=> t!312171 result!271104) b_and!287929)))

(assert (=> d!1142351 m!4407253))

(declare-fun m!4408307 () Bool)

(assert (=> d!1142351 m!4408307))

(assert (=> b!3852271 d!1142351))

(declare-fun d!1142353 () Bool)

(assert (=> d!1142353 (= (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027)))) (fromListB!2115 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338027)))))))

(declare-fun bs!582937 () Bool)

(assert (= bs!582937 d!1142353))

(declare-fun m!4408309 () Bool)

(assert (=> bs!582937 m!4408309))

(assert (=> b!3852271 d!1142353))

(declare-fun d!1142355 () Bool)

(declare-fun e!2381697 () Bool)

(assert (=> d!1142355 e!2381697))

(declare-fun res!1559910 () Bool)

(assert (=> d!1142355 (=> (not res!1559910) (not e!2381697))))

(declare-fun lt!1338369 () BalanceConc!24638)

(assert (=> d!1142355 (= res!1559910 (= (list!15195 lt!1338369) lt!1337934))))

(declare-fun fromList!813 (List!40946) Conc!12522)

(assert (=> d!1142355 (= lt!1338369 (BalanceConc!24639 (fromList!813 lt!1337934)))))

(assert (=> d!1142355 (= (fromListB!2115 lt!1337934) lt!1338369)))

(declare-fun b!3853142 () Bool)

(assert (=> b!3853142 (= e!2381697 (isBalanced!3623 (fromList!813 lt!1337934)))))

(assert (= (and d!1142355 res!1559910) b!3853142))

(declare-fun m!4408311 () Bool)

(assert (=> d!1142355 m!4408311))

(declare-fun m!4408313 () Bool)

(assert (=> d!1142355 m!4408313))

(assert (=> b!3853142 m!4408313))

(assert (=> b!3853142 m!4408313))

(declare-fun m!4408315 () Bool)

(assert (=> b!3853142 m!4408315))

(assert (=> d!1142053 d!1142355))

(declare-fun b!3853145 () Bool)

(declare-fun res!1559912 () Bool)

(declare-fun e!2381699 () Bool)

(assert (=> b!3853145 (=> (not res!1559912) (not e!2381699))))

(declare-fun lt!1338370 () List!40946)

(assert (=> b!3853145 (= res!1559912 (= (size!30708 lt!1338370) (+ (size!30708 lt!1337934) (size!30708 lt!1338099))))))

(declare-fun b!3853143 () Bool)

(declare-fun e!2381698 () List!40946)

(assert (=> b!3853143 (= e!2381698 lt!1338099)))

(declare-fun b!3853146 () Bool)

(assert (=> b!3853146 (= e!2381699 (or (not (= lt!1338099 Nil!40822)) (= lt!1338370 lt!1337934)))))

(declare-fun d!1142357 () Bool)

(assert (=> d!1142357 e!2381699))

(declare-fun res!1559911 () Bool)

(assert (=> d!1142357 (=> (not res!1559911) (not e!2381699))))

(assert (=> d!1142357 (= res!1559911 (= (content!6075 lt!1338370) (set.union (content!6075 lt!1337934) (content!6075 lt!1338099))))))

(assert (=> d!1142357 (= lt!1338370 e!2381698)))

(declare-fun c!671062 () Bool)

(assert (=> d!1142357 (= c!671062 (is-Nil!40822 lt!1337934))))

(assert (=> d!1142357 (= (++!10380 lt!1337934 lt!1338099) lt!1338370)))

(declare-fun b!3853144 () Bool)

(assert (=> b!3853144 (= e!2381698 (Cons!40822 (h!46242 lt!1337934) (++!10380 (t!311993 lt!1337934) lt!1338099)))))

(assert (= (and d!1142357 c!671062) b!3853143))

(assert (= (and d!1142357 (not c!671062)) b!3853144))

(assert (= (and d!1142357 res!1559911) b!3853145))

(assert (= (and b!3853145 res!1559912) b!3853146))

(declare-fun m!4408317 () Bool)

(assert (=> b!3853145 m!4408317))

(assert (=> b!3853145 m!4407105))

(declare-fun m!4408319 () Bool)

(assert (=> b!3853145 m!4408319))

(declare-fun m!4408321 () Bool)

(assert (=> d!1142357 m!4408321))

(assert (=> d!1142357 m!4407467))

(declare-fun m!4408323 () Bool)

(assert (=> d!1142357 m!4408323))

(declare-fun m!4408325 () Bool)

(assert (=> b!3853144 m!4408325))

(assert (=> d!1142039 d!1142357))

(assert (=> d!1142039 d!1141999))

(assert (=> d!1142039 d!1142043))

(declare-fun d!1142359 () Bool)

(declare-fun res!1559913 () Bool)

(declare-fun e!2381700 () Bool)

(assert (=> d!1142359 (=> (not res!1559913) (not e!2381700))))

(assert (=> d!1142359 (= res!1559913 (not (isEmpty!24163 (originalCharacters!6911 (h!46245 (t!311996 prefixTokens!80))))))))

(assert (=> d!1142359 (= (inv!54975 (h!46245 (t!311996 prefixTokens!80))) e!2381700)))

(declare-fun b!3853147 () Bool)

(declare-fun res!1559914 () Bool)

(assert (=> b!3853147 (=> (not res!1559914) (not e!2381700))))

(assert (=> b!3853147 (= res!1559914 (= (originalCharacters!6911 (h!46245 (t!311996 prefixTokens!80))) (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))))

(declare-fun b!3853148 () Bool)

(assert (=> b!3853148 (= e!2381700 (= (size!30707 (h!46245 (t!311996 prefixTokens!80))) (size!30708 (originalCharacters!6911 (h!46245 (t!311996 prefixTokens!80))))))))

(assert (= (and d!1142359 res!1559913) b!3853147))

(assert (= (and b!3853147 res!1559914) b!3853148))

(declare-fun b_lambda!112629 () Bool)

(assert (=> (not b_lambda!112629) (not b!3853147)))

(declare-fun t!312173 () Bool)

(declare-fun tb!222521 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312173) tb!222521))

(declare-fun b!3853149 () Bool)

(declare-fun e!2381701 () Bool)

(declare-fun tp!1167842 () Bool)

(assert (=> b!3853149 (= e!2381701 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (value!200499 (h!46245 (t!311996 prefixTokens!80)))))) tp!1167842))))

(declare-fun result!271106 () Bool)

(assert (=> tb!222521 (= result!271106 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (value!200499 (h!46245 (t!311996 prefixTokens!80))))) e!2381701))))

(assert (= tb!222521 b!3853149))

(declare-fun m!4408327 () Bool)

(assert (=> b!3853149 m!4408327))

(declare-fun m!4408329 () Bool)

(assert (=> tb!222521 m!4408329))

(assert (=> b!3853147 t!312173))

(declare-fun b_and!287931 () Bool)

(assert (= b_and!287909 (and (=> t!312173 result!271106) b_and!287931)))

(declare-fun tb!222523 () Bool)

(declare-fun t!312175 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312175) tb!222523))

(declare-fun result!271108 () Bool)

(assert (= result!271108 result!271106))

(assert (=> b!3853147 t!312175))

(declare-fun b_and!287933 () Bool)

(assert (= b_and!287913 (and (=> t!312175 result!271108) b_and!287933)))

(declare-fun t!312177 () Bool)

(declare-fun tb!222525 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312177) tb!222525))

(declare-fun result!271110 () Bool)

(assert (= result!271110 result!271106))

(assert (=> b!3853147 t!312177))

(declare-fun b_and!287935 () Bool)

(assert (= b_and!287915 (and (=> t!312177 result!271110) b_and!287935)))

(declare-fun t!312179 () Bool)

(declare-fun tb!222527 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312179) tb!222527))

(declare-fun result!271112 () Bool)

(assert (= result!271112 result!271106))

(assert (=> b!3853147 t!312179))

(declare-fun b_and!287937 () Bool)

(assert (= b_and!287917 (and (=> t!312179 result!271112) b_and!287937)))

(declare-fun tb!222529 () Bool)

(declare-fun t!312181 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312181) tb!222529))

(declare-fun result!271114 () Bool)

(assert (= result!271114 result!271106))

(assert (=> b!3853147 t!312181))

(declare-fun b_and!287939 () Bool)

(assert (= b_and!287911 (and (=> t!312181 result!271114) b_and!287939)))

(declare-fun t!312183 () Bool)

(declare-fun tb!222531 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312183) tb!222531))

(declare-fun result!271116 () Bool)

(assert (= result!271116 result!271106))

(assert (=> b!3853147 t!312183))

(declare-fun b_and!287941 () Bool)

(assert (= b_and!287907 (and (=> t!312183 result!271116) b_and!287941)))

(declare-fun m!4408331 () Bool)

(assert (=> d!1142359 m!4408331))

(declare-fun m!4408333 () Bool)

(assert (=> b!3853147 m!4408333))

(assert (=> b!3853147 m!4408333))

(declare-fun m!4408335 () Bool)

(assert (=> b!3853147 m!4408335))

(declare-fun m!4408337 () Bool)

(assert (=> b!3853148 m!4408337))

(assert (=> b!3852577 d!1142359))

(declare-fun d!1142361 () Bool)

(declare-fun lt!1338371 () Int)

(assert (=> d!1142361 (>= lt!1338371 0)))

(declare-fun e!2381702 () Int)

(assert (=> d!1142361 (= lt!1338371 e!2381702)))

(declare-fun c!671063 () Bool)

(assert (=> d!1142361 (= c!671063 (is-Nil!40822 (t!311993 suffix!1176)))))

(assert (=> d!1142361 (= (size!30708 (t!311993 suffix!1176)) lt!1338371)))

(declare-fun b!3853150 () Bool)

(assert (=> b!3853150 (= e!2381702 0)))

(declare-fun b!3853151 () Bool)

(assert (=> b!3853151 (= e!2381702 (+ 1 (size!30708 (t!311993 (t!311993 suffix!1176)))))))

(assert (= (and d!1142361 c!671063) b!3853150))

(assert (= (and d!1142361 (not c!671063)) b!3853151))

(declare-fun m!4408339 () Bool)

(assert (=> b!3853151 m!4408339))

(assert (=> b!3852348 d!1142361))

(declare-fun d!1142363 () Bool)

(declare-fun lt!1338372 () Int)

(assert (=> d!1142363 (>= lt!1338372 0)))

(declare-fun e!2381703 () Int)

(assert (=> d!1142363 (= lt!1338372 e!2381703)))

(declare-fun c!671064 () Bool)

(assert (=> d!1142363 (= c!671064 (is-Nil!40822 (t!311993 lt!1337935)))))

(assert (=> d!1142363 (= (size!30708 (t!311993 lt!1337935)) lt!1338372)))

(declare-fun b!3853152 () Bool)

(assert (=> b!3853152 (= e!2381703 0)))

(declare-fun b!3853153 () Bool)

(assert (=> b!3853153 (= e!2381703 (+ 1 (size!30708 (t!311993 (t!311993 lt!1337935)))))))

(assert (= (and d!1142363 c!671064) b!3853152))

(assert (= (and d!1142363 (not c!671064)) b!3853153))

(declare-fun m!4408341 () Bool)

(assert (=> b!3853153 m!4408341))

(assert (=> b!3852357 d!1142363))

(declare-fun d!1142365 () Bool)

(assert (=> d!1142365 (= (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))) (isBalanced!3623 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun bs!582938 () Bool)

(assert (= bs!582938 d!1142365))

(declare-fun m!4408343 () Bool)

(assert (=> bs!582938 m!4408343))

(assert (=> tb!222371 d!1142365))

(declare-fun d!1142367 () Bool)

(assert (=> d!1142367 (= (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))) (list!15197 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))))))

(declare-fun bs!582939 () Bool)

(assert (= bs!582939 d!1142367))

(declare-fun m!4408345 () Bool)

(assert (=> bs!582939 m!4408345))

(assert (=> b!3852362 d!1142367))

(assert (=> b!3852438 d!1142157))

(declare-fun d!1142369 () Bool)

(assert (=> d!1142369 (= (isEmpty!24164 (_1!23141 lt!1338037)) (is-Nil!40825 (_1!23141 lt!1338037)))))

(assert (=> b!3852303 d!1142369))

(assert (=> b!3852497 d!1142291))

(declare-fun b!3853156 () Bool)

(declare-fun res!1559916 () Bool)

(declare-fun e!2381705 () Bool)

(assert (=> b!3853156 (=> (not res!1559916) (not e!2381705))))

(declare-fun lt!1338373 () List!40946)

(assert (=> b!3853156 (= res!1559916 (= (size!30708 lt!1338373) (+ (size!30708 (t!311993 prefix!426)) (size!30708 suffix!1176))))))

(declare-fun b!3853154 () Bool)

(declare-fun e!2381704 () List!40946)

(assert (=> b!3853154 (= e!2381704 suffix!1176)))

(declare-fun b!3853157 () Bool)

(assert (=> b!3853157 (= e!2381705 (or (not (= suffix!1176 Nil!40822)) (= lt!1338373 (t!311993 prefix!426))))))

(declare-fun d!1142371 () Bool)

(assert (=> d!1142371 e!2381705))

(declare-fun res!1559915 () Bool)

(assert (=> d!1142371 (=> (not res!1559915) (not e!2381705))))

(assert (=> d!1142371 (= res!1559915 (= (content!6075 lt!1338373) (set.union (content!6075 (t!311993 prefix!426)) (content!6075 suffix!1176))))))

(assert (=> d!1142371 (= lt!1338373 e!2381704)))

(declare-fun c!671065 () Bool)

(assert (=> d!1142371 (= c!671065 (is-Nil!40822 (t!311993 prefix!426)))))

(assert (=> d!1142371 (= (++!10380 (t!311993 prefix!426) suffix!1176) lt!1338373)))

(declare-fun b!3853155 () Bool)

(assert (=> b!3853155 (= e!2381704 (Cons!40822 (h!46242 (t!311993 prefix!426)) (++!10380 (t!311993 (t!311993 prefix!426)) suffix!1176)))))

(assert (= (and d!1142371 c!671065) b!3853154))

(assert (= (and d!1142371 (not c!671065)) b!3853155))

(assert (= (and d!1142371 res!1559915) b!3853156))

(assert (= (and b!3853156 res!1559916) b!3853157))

(declare-fun m!4408347 () Bool)

(assert (=> b!3853156 m!4408347))

(assert (=> b!3853156 m!4407431))

(assert (=> b!3853156 m!4407069))

(declare-fun m!4408349 () Bool)

(assert (=> d!1142371 m!4408349))

(assert (=> d!1142371 m!4408153))

(assert (=> d!1142371 m!4407325))

(declare-fun m!4408351 () Bool)

(assert (=> b!3853155 m!4408351))

(assert (=> b!3852322 d!1142371))

(declare-fun d!1142373 () Bool)

(declare-fun c!671066 () Bool)

(assert (=> d!1142373 (= c!671066 (is-Nil!40825 lt!1338012))))

(declare-fun e!2381706 () (Set Token!11760))

(assert (=> d!1142373 (= (content!6074 lt!1338012) e!2381706)))

(declare-fun b!3853158 () Bool)

(assert (=> b!3853158 (= e!2381706 (as set.empty (Set Token!11760)))))

(declare-fun b!3853159 () Bool)

(assert (=> b!3853159 (= e!2381706 (set.union (set.insert (h!46245 lt!1338012) (as set.empty (Set Token!11760))) (content!6074 (t!311996 lt!1338012))))))

(assert (= (and d!1142373 c!671066) b!3853158))

(assert (= (and d!1142373 (not c!671066)) b!3853159))

(declare-fun m!4408353 () Bool)

(assert (=> b!3853159 m!4408353))

(declare-fun m!4408355 () Bool)

(assert (=> b!3853159 m!4408355))

(assert (=> d!1141959 d!1142373))

(declare-fun d!1142375 () Bool)

(declare-fun c!671067 () Bool)

(assert (=> d!1142375 (= c!671067 (is-Nil!40825 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))

(declare-fun e!2381707 () (Set Token!11760))

(assert (=> d!1142375 (= (content!6074 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) e!2381707)))

(declare-fun b!3853160 () Bool)

(assert (=> b!3853160 (= e!2381707 (as set.empty (Set Token!11760)))))

(declare-fun b!3853161 () Bool)

(assert (=> b!3853161 (= e!2381707 (set.union (set.insert (h!46245 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (as set.empty (Set Token!11760))) (content!6074 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))))

(assert (= (and d!1142375 c!671067) b!3853160))

(assert (= (and d!1142375 (not c!671067)) b!3853161))

(declare-fun m!4408357 () Bool)

(assert (=> b!3853161 m!4408357))

(declare-fun m!4408359 () Bool)

(assert (=> b!3853161 m!4408359))

(assert (=> d!1141959 d!1142375))

(declare-fun d!1142377 () Bool)

(declare-fun c!671068 () Bool)

(assert (=> d!1142377 (= c!671068 (is-Nil!40825 (_1!23141 lt!1337941)))))

(declare-fun e!2381708 () (Set Token!11760))

(assert (=> d!1142377 (= (content!6074 (_1!23141 lt!1337941)) e!2381708)))

(declare-fun b!3853162 () Bool)

(assert (=> b!3853162 (= e!2381708 (as set.empty (Set Token!11760)))))

(declare-fun b!3853163 () Bool)

(assert (=> b!3853163 (= e!2381708 (set.union (set.insert (h!46245 (_1!23141 lt!1337941)) (as set.empty (Set Token!11760))) (content!6074 (t!311996 (_1!23141 lt!1337941)))))))

(assert (= (and d!1142377 c!671068) b!3853162))

(assert (= (and d!1142377 (not c!671068)) b!3853163))

(declare-fun m!4408361 () Bool)

(assert (=> b!3853163 m!4408361))

(declare-fun m!4408363 () Bool)

(assert (=> b!3853163 m!4408363))

(assert (=> d!1141959 d!1142377))

(declare-fun d!1142379 () Bool)

(declare-fun lt!1338374 () Int)

(assert (=> d!1142379 (>= lt!1338374 0)))

(declare-fun e!2381709 () Int)

(assert (=> d!1142379 (= lt!1338374 e!2381709)))

(declare-fun c!671069 () Bool)

(assert (=> d!1142379 (= c!671069 (is-Nil!40822 (_2!23142 (get!13507 lt!1338027))))))

(assert (=> d!1142379 (= (size!30708 (_2!23142 (get!13507 lt!1338027))) lt!1338374)))

(declare-fun b!3853164 () Bool)

(assert (=> b!3853164 (= e!2381709 0)))

(declare-fun b!3853165 () Bool)

(assert (=> b!3853165 (= e!2381709 (+ 1 (size!30708 (t!311993 (_2!23142 (get!13507 lt!1338027))))))))

(assert (= (and d!1142379 c!671069) b!3853164))

(assert (= (and d!1142379 (not c!671069)) b!3853165))

(declare-fun m!4408365 () Bool)

(assert (=> b!3853165 m!4408365))

(assert (=> b!3852268 d!1142379))

(assert (=> b!3852268 d!1142145))

(assert (=> b!3852268 d!1141999))

(declare-fun d!1142381 () Bool)

(declare-fun lt!1338375 () List!40946)

(assert (=> d!1142381 (= (++!10380 (t!311993 lt!1337934) lt!1338375) (tail!5826 lt!1337935))))

(declare-fun e!2381710 () List!40946)

(assert (=> d!1142381 (= lt!1338375 e!2381710)))

(declare-fun c!671070 () Bool)

(assert (=> d!1142381 (= c!671070 (is-Cons!40822 (t!311993 lt!1337934)))))

(assert (=> d!1142381 (>= (size!30708 (tail!5826 lt!1337935)) (size!30708 (t!311993 lt!1337934)))))

(assert (=> d!1142381 (= (getSuffix!1865 (tail!5826 lt!1337935) (t!311993 lt!1337934)) lt!1338375)))

(declare-fun b!3853166 () Bool)

(assert (=> b!3853166 (= e!2381710 (getSuffix!1865 (tail!5826 (tail!5826 lt!1337935)) (t!311993 (t!311993 lt!1337934))))))

(declare-fun b!3853167 () Bool)

(assert (=> b!3853167 (= e!2381710 (tail!5826 lt!1337935))))

(assert (= (and d!1142381 c!671070) b!3853166))

(assert (= (and d!1142381 (not c!671070)) b!3853167))

(declare-fun m!4408367 () Bool)

(assert (=> d!1142381 m!4408367))

(assert (=> d!1142381 m!4407523))

(declare-fun m!4408369 () Bool)

(assert (=> d!1142381 m!4408369))

(assert (=> d!1142381 m!4407531))

(assert (=> b!3853166 m!4407523))

(declare-fun m!4408371 () Bool)

(assert (=> b!3853166 m!4408371))

(assert (=> b!3853166 m!4408371))

(declare-fun m!4408373 () Bool)

(assert (=> b!3853166 m!4408373))

(assert (=> b!3852489 d!1142381))

(declare-fun d!1142383 () Bool)

(assert (=> d!1142383 (= (tail!5826 lt!1337935) (t!311993 lt!1337935))))

(assert (=> b!3852489 d!1142383))

(declare-fun b!3853170 () Bool)

(declare-fun res!1559918 () Bool)

(declare-fun e!2381712 () Bool)

(assert (=> b!3853170 (=> (not res!1559918) (not e!2381712))))

(declare-fun lt!1338376 () List!40946)

(assert (=> b!3853170 (= res!1559918 (= (size!30708 lt!1338376) (+ (size!30708 (t!311993 lt!1337934)) (size!30708 (_2!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853168 () Bool)

(declare-fun e!2381711 () List!40946)

(assert (=> b!3853168 (= e!2381711 (_2!23142 (v!39022 lt!1337950)))))

(declare-fun b!3853171 () Bool)

(assert (=> b!3853171 (= e!2381712 (or (not (= (_2!23142 (v!39022 lt!1337950)) Nil!40822)) (= lt!1338376 (t!311993 lt!1337934))))))

(declare-fun d!1142385 () Bool)

(assert (=> d!1142385 e!2381712))

(declare-fun res!1559917 () Bool)

(assert (=> d!1142385 (=> (not res!1559917) (not e!2381712))))

(assert (=> d!1142385 (= res!1559917 (= (content!6075 lt!1338376) (set.union (content!6075 (t!311993 lt!1337934)) (content!6075 (_2!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142385 (= lt!1338376 e!2381711)))

(declare-fun c!671071 () Bool)

(assert (=> d!1142385 (= c!671071 (is-Nil!40822 (t!311993 lt!1337934)))))

(assert (=> d!1142385 (= (++!10380 (t!311993 lt!1337934) (_2!23142 (v!39022 lt!1337950))) lt!1338376)))

(declare-fun b!3853169 () Bool)

(assert (=> b!3853169 (= e!2381711 (Cons!40822 (h!46242 (t!311993 lt!1337934)) (++!10380 (t!311993 (t!311993 lt!1337934)) (_2!23142 (v!39022 lt!1337950)))))))

(assert (= (and d!1142385 c!671071) b!3853168))

(assert (= (and d!1142385 (not c!671071)) b!3853169))

(assert (= (and d!1142385 res!1559917) b!3853170))

(assert (= (and b!3853170 res!1559918) b!3853171))

(declare-fun m!4408375 () Bool)

(assert (=> b!3853170 m!4408375))

(assert (=> b!3853170 m!4407531))

(assert (=> b!3853170 m!4407071))

(declare-fun m!4408377 () Bool)

(assert (=> d!1142385 m!4408377))

(assert (=> d!1142385 m!4407883))

(assert (=> d!1142385 m!4407469))

(declare-fun m!4408379 () Bool)

(assert (=> b!3853169 m!4408379))

(assert (=> b!3852475 d!1142385))

(declare-fun bs!582940 () Bool)

(declare-fun d!1142387 () Bool)

(assert (= bs!582940 (and d!1142387 d!1142233)))

(declare-fun lambda!126173 () Int)

(assert (=> bs!582940 (= (and (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (= lambda!126173 lambda!126163))))

(declare-fun bs!582941 () Bool)

(assert (= bs!582941 (and d!1142387 d!1142253)))

(assert (=> bs!582941 (= (and (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (h!46244 rules!2768)))) (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (h!46244 rules!2768))))) (= lambda!126173 lambda!126169))))

(declare-fun bs!582942 () Bool)

(assert (= bs!582942 (and d!1142387 d!1142281)))

(assert (=> bs!582942 (= (and (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))))) (= lambda!126173 lambda!126170))))

(assert (=> d!1142387 true))

(assert (=> d!1142387 (< (dynLambda!17621 order!22163 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) (dynLambda!17620 order!22161 lambda!126173))))

(assert (=> d!1142387 true))

(assert (=> d!1142387 (< (dynLambda!17619 order!22159 (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) (dynLambda!17620 order!22161 lambda!126173))))

(assert (=> d!1142387 (= (semiInverseModEq!2704 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) (Forall!1433 lambda!126173))))

(declare-fun bs!582943 () Bool)

(assert (= bs!582943 d!1142387))

(declare-fun m!4408381 () Bool)

(assert (=> bs!582943 m!4408381))

(assert (=> d!1142023 d!1142387))

(declare-fun b!3853173 () Bool)

(declare-fun res!1559921 () Bool)

(declare-fun e!2381716 () Bool)

(assert (=> b!3853173 (=> res!1559921 e!2381716)))

(assert (=> b!3853173 (= res!1559921 (not (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun e!2381717 () Bool)

(assert (=> b!3853173 (= e!2381717 e!2381716)))

(declare-fun b!3853174 () Bool)

(declare-fun res!1559924 () Bool)

(declare-fun e!2381715 () Bool)

(assert (=> b!3853174 (=> res!1559924 e!2381715)))

(assert (=> b!3853174 (= res!1559924 (not (isEmpty!24163 (tail!5826 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))))

(declare-fun b!3853175 () Bool)

(declare-fun res!1559920 () Bool)

(declare-fun e!2381719 () Bool)

(assert (=> b!3853175 (=> (not res!1559920) (not e!2381719))))

(declare-fun call!282311 () Bool)

(assert (=> b!3853175 (= res!1559920 (not call!282311))))

(declare-fun b!3853176 () Bool)

(declare-fun e!2381714 () Bool)

(assert (=> b!3853176 (= e!2381714 (matchR!5363 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935))))) (tail!5826 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935))))))))

(declare-fun b!3853177 () Bool)

(declare-fun e!2381713 () Bool)

(assert (=> b!3853177 (= e!2381716 e!2381713)))

(declare-fun res!1559926 () Bool)

(assert (=> b!3853177 (=> (not res!1559926) (not e!2381713))))

(declare-fun lt!1338377 () Bool)

(assert (=> b!3853177 (= res!1559926 (not lt!1338377))))

(declare-fun b!3853178 () Bool)

(assert (=> b!3853178 (= e!2381713 e!2381715)))

(declare-fun res!1559922 () Bool)

(assert (=> b!3853178 (=> res!1559922 e!2381715)))

(assert (=> b!3853178 (= res!1559922 call!282311)))

(declare-fun b!3853179 () Bool)

(declare-fun e!2381718 () Bool)

(assert (=> b!3853179 (= e!2381718 (= lt!1338377 call!282311))))

(declare-fun b!3853180 () Bool)

(assert (=> b!3853180 (= e!2381714 (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun d!1142389 () Bool)

(assert (=> d!1142389 e!2381718))

(declare-fun c!671074 () Bool)

(assert (=> d!1142389 (= c!671074 (is-EmptyExpr!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142389 (= lt!1338377 e!2381714)))

(declare-fun c!671072 () Bool)

(assert (=> d!1142389 (= c!671072 (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(assert (=> d!1142389 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142389 (= (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))) lt!1338377)))

(declare-fun b!3853172 () Bool)

(declare-fun res!1559919 () Bool)

(assert (=> b!3853172 (=> (not res!1559919) (not e!2381719))))

(assert (=> b!3853172 (= res!1559919 (isEmpty!24163 (tail!5826 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935))))))))

(declare-fun b!3853181 () Bool)

(assert (=> b!3853181 (= e!2381718 e!2381717)))

(declare-fun c!671073 () Bool)

(assert (=> b!3853181 (= c!671073 (is-EmptyLang!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853182 () Bool)

(assert (=> b!3853182 (= e!2381715 (not (= (head!8105 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))))

(declare-fun bm!282306 () Bool)

(assert (=> bm!282306 (= call!282311 (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(declare-fun b!3853183 () Bool)

(assert (=> b!3853183 (= e!2381719 (= (head!8105 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun b!3853184 () Bool)

(declare-fun res!1559925 () Bool)

(assert (=> b!3853184 (=> res!1559925 e!2381716)))

(assert (=> b!3853184 (= res!1559925 e!2381719)))

(declare-fun res!1559923 () Bool)

(assert (=> b!3853184 (=> (not res!1559923) (not e!2381719))))

(assert (=> b!3853184 (= res!1559923 lt!1338377)))

(declare-fun b!3853185 () Bool)

(assert (=> b!3853185 (= e!2381717 (not lt!1338377))))

(assert (= (and d!1142389 c!671072) b!3853180))

(assert (= (and d!1142389 (not c!671072)) b!3853176))

(assert (= (and d!1142389 c!671074) b!3853179))

(assert (= (and d!1142389 (not c!671074)) b!3853181))

(assert (= (and b!3853181 c!671073) b!3853185))

(assert (= (and b!3853181 (not c!671073)) b!3853173))

(assert (= (and b!3853173 (not res!1559921)) b!3853184))

(assert (= (and b!3853184 res!1559923) b!3853175))

(assert (= (and b!3853175 res!1559920) b!3853172))

(assert (= (and b!3853172 res!1559919) b!3853183))

(assert (= (and b!3853184 (not res!1559925)) b!3853177))

(assert (= (and b!3853177 res!1559926) b!3853178))

(assert (= (and b!3853178 (not res!1559922)) b!3853174))

(assert (= (and b!3853174 (not res!1559924)) b!3853182))

(assert (= (or b!3853179 b!3853175 b!3853178) bm!282306))

(assert (=> d!1142389 m!4407395))

(assert (=> d!1142389 m!4407373))

(assert (=> bm!282306 m!4407395))

(declare-fun m!4408383 () Bool)

(assert (=> b!3853172 m!4408383))

(assert (=> b!3853172 m!4408383))

(declare-fun m!4408385 () Bool)

(assert (=> b!3853172 m!4408385))

(declare-fun m!4408387 () Bool)

(assert (=> b!3853183 m!4408387))

(assert (=> b!3853182 m!4408387))

(assert (=> b!3853174 m!4408383))

(assert (=> b!3853174 m!4408383))

(assert (=> b!3853174 m!4408385))

(assert (=> b!3853180 m!4407381))

(assert (=> b!3853176 m!4408387))

(assert (=> b!3853176 m!4408387))

(declare-fun m!4408389 () Bool)

(assert (=> b!3853176 m!4408389))

(assert (=> b!3853176 m!4408383))

(assert (=> b!3853176 m!4408389))

(assert (=> b!3853176 m!4408383))

(declare-fun m!4408391 () Bool)

(assert (=> b!3853176 m!4408391))

(assert (=> b!3852440 d!1142389))

(assert (=> b!3852440 d!1142229))

(assert (=> b!3852440 d!1142219))

(assert (=> b!3852440 d!1141999))

(declare-fun d!1142391 () Bool)

(declare-fun res!1559931 () Bool)

(declare-fun e!2381724 () Bool)

(assert (=> d!1142391 (=> res!1559931 e!2381724)))

(assert (=> d!1142391 (= res!1559931 (is-Nil!40824 rules!2768))))

(assert (=> d!1142391 (= (noDuplicateTag!2440 thiss!20629 rules!2768 Nil!40830) e!2381724)))

(declare-fun b!3853190 () Bool)

(declare-fun e!2381725 () Bool)

(assert (=> b!3853190 (= e!2381724 e!2381725)))

(declare-fun res!1559932 () Bool)

(assert (=> b!3853190 (=> (not res!1559932) (not e!2381725))))

(declare-fun contains!8255 (List!40954 String!46425) Bool)

(assert (=> b!3853190 (= res!1559932 (not (contains!8255 Nil!40830 (tag!7171 (h!46244 rules!2768)))))))

(declare-fun b!3853191 () Bool)

(assert (=> b!3853191 (= e!2381725 (noDuplicateTag!2440 thiss!20629 (t!311995 rules!2768) (Cons!40830 (tag!7171 (h!46244 rules!2768)) Nil!40830)))))

(assert (= (and d!1142391 (not res!1559931)) b!3853190))

(assert (= (and b!3853190 res!1559932) b!3853191))

(declare-fun m!4408393 () Bool)

(assert (=> b!3853190 m!4408393))

(declare-fun m!4408395 () Bool)

(assert (=> b!3853191 m!4408395))

(assert (=> b!3852342 d!1142391))

(declare-fun d!1142393 () Bool)

(declare-fun c!671075 () Bool)

(assert (=> d!1142393 (= c!671075 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(declare-fun e!2381726 () Bool)

(assert (=> d!1142393 (= (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))) e!2381726)))

(declare-fun b!3853192 () Bool)

(assert (=> b!3853192 (= e!2381726 (inv!54983 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(declare-fun b!3853193 () Bool)

(declare-fun e!2381727 () Bool)

(assert (=> b!3853193 (= e!2381726 e!2381727)))

(declare-fun res!1559933 () Bool)

(assert (=> b!3853193 (= res!1559933 (not (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))))))

(assert (=> b!3853193 (=> res!1559933 e!2381727)))

(declare-fun b!3853194 () Bool)

(assert (=> b!3853194 (= e!2381727 (inv!54984 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))))))

(assert (= (and d!1142393 c!671075) b!3853192))

(assert (= (and d!1142393 (not c!671075)) b!3853193))

(assert (= (and b!3853193 (not res!1559933)) b!3853194))

(declare-fun m!4408397 () Bool)

(assert (=> b!3853192 m!4408397))

(declare-fun m!4408399 () Bool)

(assert (=> b!3853194 m!4408399))

(assert (=> b!3852472 d!1142393))

(declare-fun b!3853195 () Bool)

(declare-fun e!2381731 () Option!8729)

(assert (=> b!3853195 (= e!2381731 None!8728)))

(declare-fun b!3853196 () Bool)

(declare-fun e!2381729 () Bool)

(declare-fun e!2381728 () Bool)

(assert (=> b!3853196 (= e!2381729 e!2381728)))

(declare-fun res!1559939 () Bool)

(assert (=> b!3853196 (=> (not res!1559939) (not e!2381728))))

(declare-fun lt!1338380 () Option!8729)

(assert (=> b!3853196 (= res!1559939 (matchR!5363 (regex!6311 (h!46244 rules!2768)) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338380))))))))

(declare-fun b!3853197 () Bool)

(declare-fun lt!1338379 () tuple2!40022)

(assert (=> b!3853197 (= e!2381731 (Some!8728 (tuple2!40017 (Token!11761 (apply!9554 (transformation!6311 (h!46244 rules!2768)) (seqFromList!4582 (_1!23145 lt!1338379))) (h!46244 rules!2768) (size!30712 (seqFromList!4582 (_1!23145 lt!1338379))) (_1!23145 lt!1338379)) (_2!23145 lt!1338379))))))

(declare-fun lt!1338381 () Unit!58493)

(assert (=> b!3853197 (= lt!1338381 (longestMatchIsAcceptedByMatchOrIsEmpty!1144 (regex!6311 (h!46244 rules!2768)) lt!1337935))))

(declare-fun res!1559938 () Bool)

(assert (=> b!3853197 (= res!1559938 (isEmpty!24163 (_1!23145 (findLongestMatchInner!1171 (regex!6311 (h!46244 rules!2768)) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(declare-fun e!2381730 () Bool)

(assert (=> b!3853197 (=> res!1559938 e!2381730)))

(assert (=> b!3853197 e!2381730))

(declare-fun lt!1338382 () Unit!58493)

(assert (=> b!3853197 (= lt!1338382 lt!1338381)))

(declare-fun lt!1338378 () Unit!58493)

(assert (=> b!3853197 (= lt!1338378 (lemmaSemiInverse!1677 (transformation!6311 (h!46244 rules!2768)) (seqFromList!4582 (_1!23145 lt!1338379))))))

(declare-fun b!3853198 () Bool)

(declare-fun res!1559935 () Bool)

(assert (=> b!3853198 (=> (not res!1559935) (not e!2381728))))

(assert (=> b!3853198 (= res!1559935 (= (++!10380 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338380)))) (_2!23142 (get!13507 lt!1338380))) lt!1337935))))

(declare-fun b!3853199 () Bool)

(declare-fun res!1559940 () Bool)

(assert (=> b!3853199 (=> (not res!1559940) (not e!2381728))))

(assert (=> b!3853199 (= res!1559940 (= (rule!9167 (_1!23142 (get!13507 lt!1338380))) (h!46244 rules!2768)))))

(declare-fun b!3853200 () Bool)

(declare-fun res!1559937 () Bool)

(assert (=> b!3853200 (=> (not res!1559937) (not e!2381728))))

(assert (=> b!3853200 (= res!1559937 (< (size!30708 (_2!23142 (get!13507 lt!1338380))) (size!30708 lt!1337935)))))

(declare-fun b!3853202 () Bool)

(declare-fun res!1559936 () Bool)

(assert (=> b!3853202 (=> (not res!1559936) (not e!2381728))))

(assert (=> b!3853202 (= res!1559936 (= (value!200499 (_1!23142 (get!13507 lt!1338380))) (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338380)))) (seqFromList!4582 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338380)))))))))

(declare-fun b!3853203 () Bool)

(assert (=> b!3853203 (= e!2381728 (= (size!30707 (_1!23142 (get!13507 lt!1338380))) (size!30708 (originalCharacters!6911 (_1!23142 (get!13507 lt!1338380))))))))

(declare-fun d!1142395 () Bool)

(assert (=> d!1142395 e!2381729))

(declare-fun res!1559934 () Bool)

(assert (=> d!1142395 (=> res!1559934 e!2381729)))

(assert (=> d!1142395 (= res!1559934 (isEmpty!24169 lt!1338380))))

(assert (=> d!1142395 (= lt!1338380 e!2381731)))

(declare-fun c!671076 () Bool)

(assert (=> d!1142395 (= c!671076 (isEmpty!24163 (_1!23145 lt!1338379)))))

(assert (=> d!1142395 (= lt!1338379 (findLongestMatch!1084 (regex!6311 (h!46244 rules!2768)) lt!1337935))))

(assert (=> d!1142395 (ruleValid!2263 thiss!20629 (h!46244 rules!2768))))

(assert (=> d!1142395 (= (maxPrefixOneRule!2286 thiss!20629 (h!46244 rules!2768) lt!1337935) lt!1338380)))

(declare-fun b!3853201 () Bool)

(assert (=> b!3853201 (= e!2381730 (matchR!5363 (regex!6311 (h!46244 rules!2768)) (_1!23145 (findLongestMatchInner!1171 (regex!6311 (h!46244 rules!2768)) Nil!40822 (size!30708 Nil!40822) lt!1337935 lt!1337935 (size!30708 lt!1337935)))))))

(assert (= (and d!1142395 c!671076) b!3853195))

(assert (= (and d!1142395 (not c!671076)) b!3853197))

(assert (= (and b!3853197 (not res!1559938)) b!3853201))

(assert (= (and d!1142395 (not res!1559934)) b!3853196))

(assert (= (and b!3853196 res!1559939) b!3853198))

(assert (= (and b!3853198 res!1559935) b!3853200))

(assert (= (and b!3853200 res!1559937) b!3853199))

(assert (= (and b!3853199 res!1559940) b!3853202))

(assert (= (and b!3853202 res!1559936) b!3853203))

(assert (=> b!3853197 m!4407387))

(assert (=> b!3853197 m!4407065))

(declare-fun m!4408401 () Bool)

(assert (=> b!3853197 m!4408401))

(declare-fun m!4408403 () Bool)

(assert (=> b!3853197 m!4408403))

(declare-fun m!4408405 () Bool)

(assert (=> b!3853197 m!4408405))

(declare-fun m!4408407 () Bool)

(assert (=> b!3853197 m!4408407))

(assert (=> b!3853197 m!4408403))

(assert (=> b!3853197 m!4408403))

(declare-fun m!4408409 () Bool)

(assert (=> b!3853197 m!4408409))

(declare-fun m!4408411 () Bool)

(assert (=> b!3853197 m!4408411))

(assert (=> b!3853197 m!4407065))

(assert (=> b!3853197 m!4407387))

(assert (=> b!3853197 m!4408403))

(declare-fun m!4408413 () Bool)

(assert (=> b!3853197 m!4408413))

(declare-fun m!4408415 () Bool)

(assert (=> d!1142395 m!4408415))

(declare-fun m!4408417 () Bool)

(assert (=> d!1142395 m!4408417))

(declare-fun m!4408419 () Bool)

(assert (=> d!1142395 m!4408419))

(assert (=> d!1142395 m!4407909))

(declare-fun m!4408421 () Bool)

(assert (=> b!3853203 m!4408421))

(declare-fun m!4408423 () Bool)

(assert (=> b!3853203 m!4408423))

(assert (=> b!3853199 m!4408421))

(assert (=> b!3853198 m!4408421))

(declare-fun m!4408425 () Bool)

(assert (=> b!3853198 m!4408425))

(assert (=> b!3853198 m!4408425))

(declare-fun m!4408427 () Bool)

(assert (=> b!3853198 m!4408427))

(assert (=> b!3853198 m!4408427))

(declare-fun m!4408429 () Bool)

(assert (=> b!3853198 m!4408429))

(assert (=> b!3853200 m!4408421))

(declare-fun m!4408431 () Bool)

(assert (=> b!3853200 m!4408431))

(assert (=> b!3853200 m!4407065))

(assert (=> b!3853201 m!4407387))

(assert (=> b!3853201 m!4407065))

(assert (=> b!3853201 m!4407387))

(assert (=> b!3853201 m!4407065))

(assert (=> b!3853201 m!4408401))

(declare-fun m!4408433 () Bool)

(assert (=> b!3853201 m!4408433))

(assert (=> b!3853196 m!4408421))

(assert (=> b!3853196 m!4408425))

(assert (=> b!3853196 m!4408425))

(assert (=> b!3853196 m!4408427))

(assert (=> b!3853196 m!4408427))

(declare-fun m!4408435 () Bool)

(assert (=> b!3853196 m!4408435))

(assert (=> b!3853202 m!4408421))

(declare-fun m!4408437 () Bool)

(assert (=> b!3853202 m!4408437))

(assert (=> b!3853202 m!4408437))

(declare-fun m!4408439 () Bool)

(assert (=> b!3853202 m!4408439))

(assert (=> bm!282248 d!1142395))

(assert (=> d!1142015 d!1141961))

(assert (=> d!1142015 d!1142013))

(declare-fun d!1142397 () Bool)

(assert (=> d!1142397 (= (maxPrefixOneRule!2286 thiss!20629 (rule!9167 (_1!23142 (v!39022 lt!1337950))) lt!1337935) (Some!8728 (tuple2!40017 (Token!11761 (apply!9554 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (seqFromList!4582 lt!1337934)) (rule!9167 (_1!23142 (v!39022 lt!1337950))) (size!30708 lt!1337934) lt!1337934) (_2!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142397 true))

(declare-fun _$59!590 () Unit!58493)

(assert (=> d!1142397 (= (choose!22673 thiss!20629 rules!2768 lt!1337934 lt!1337935 (_2!23142 (v!39022 lt!1337950)) (rule!9167 (_1!23142 (v!39022 lt!1337950)))) _$59!590)))

(declare-fun bs!582944 () Bool)

(assert (= bs!582944 d!1142397))

(assert (=> bs!582944 m!4407051))

(assert (=> bs!582944 m!4407089))

(assert (=> bs!582944 m!4407089))

(assert (=> bs!582944 m!4407091))

(assert (=> bs!582944 m!4407105))

(assert (=> d!1142015 d!1142397))

(assert (=> d!1142015 d!1142053))

(assert (=> d!1142015 d!1142037))

(assert (=> d!1142015 d!1142043))

(declare-fun d!1142399 () Bool)

(assert (=> d!1142399 (= (inv!15 (value!200499 (h!46245 prefixTokens!80))) (= (charsToBigInt!0 (text!46236 (value!200499 (h!46245 prefixTokens!80))) 0) (value!200494 (value!200499 (h!46245 prefixTokens!80)))))))

(declare-fun bs!582945 () Bool)

(assert (= bs!582945 d!1142399))

(declare-fun m!4408441 () Bool)

(assert (=> bs!582945 m!4408441))

(assert (=> b!3852335 d!1142399))

(assert (=> b!3852402 d!1142251))

(assert (=> b!3852402 d!1142243))

(declare-fun b!3853204 () Bool)

(declare-fun e!2381734 () Bool)

(assert (=> b!3853204 (= e!2381734 (inv!15 (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))

(declare-fun d!1142401 () Bool)

(declare-fun c!671078 () Bool)

(assert (=> d!1142401 (= c!671078 (is-IntegerValue!19623 (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))

(declare-fun e!2381732 () Bool)

(assert (=> d!1142401 (= (inv!21 (value!200499 (h!46245 (t!311996 prefixTokens!80)))) e!2381732)))

(declare-fun b!3853205 () Bool)

(declare-fun res!1559941 () Bool)

(assert (=> b!3853205 (=> res!1559941 e!2381734)))

(assert (=> b!3853205 (= res!1559941 (not (is-IntegerValue!19625 (value!200499 (h!46245 (t!311996 prefixTokens!80))))))))

(declare-fun e!2381733 () Bool)

(assert (=> b!3853205 (= e!2381733 e!2381734)))

(declare-fun b!3853206 () Bool)

(assert (=> b!3853206 (= e!2381733 (inv!17 (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))

(declare-fun b!3853207 () Bool)

(assert (=> b!3853207 (= e!2381732 e!2381733)))

(declare-fun c!671077 () Bool)

(assert (=> b!3853207 (= c!671077 (is-IntegerValue!19624 (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))

(declare-fun b!3853208 () Bool)

(assert (=> b!3853208 (= e!2381732 (inv!16 (value!200499 (h!46245 (t!311996 prefixTokens!80)))))))

(assert (= (and d!1142401 c!671078) b!3853208))

(assert (= (and d!1142401 (not c!671078)) b!3853207))

(assert (= (and b!3853207 c!671077) b!3853206))

(assert (= (and b!3853207 (not c!671077)) b!3853205))

(assert (= (and b!3853205 (not res!1559941)) b!3853204))

(declare-fun m!4408443 () Bool)

(assert (=> b!3853204 m!4408443))

(declare-fun m!4408445 () Bool)

(assert (=> b!3853206 m!4408445))

(declare-fun m!4408447 () Bool)

(assert (=> b!3853208 m!4408447))

(assert (=> b!3852578 d!1142401))

(assert (=> d!1142011 d!1142183))

(assert (=> d!1142011 d!1142349))

(assert (=> b!3852509 d!1142269))

(declare-fun d!1142403 () Bool)

(assert (=> d!1142403 (= (head!8105 lt!1337949) (h!46242 lt!1337949))))

(assert (=> b!3852509 d!1142403))

(assert (=> b!3852410 d!1142269))

(declare-fun d!1142405 () Bool)

(declare-fun lt!1338383 () Int)

(assert (=> d!1142405 (>= lt!1338383 0)))

(declare-fun e!2381735 () Int)

(assert (=> d!1142405 (= lt!1338383 e!2381735)))

(declare-fun c!671079 () Bool)

(assert (=> d!1142405 (= c!671079 (is-Nil!40822 (_2!23141 lt!1338037)))))

(assert (=> d!1142405 (= (size!30708 (_2!23141 lt!1338037)) lt!1338383)))

(declare-fun b!3853209 () Bool)

(assert (=> b!3853209 (= e!2381735 0)))

(declare-fun b!3853210 () Bool)

(assert (=> b!3853210 (= e!2381735 (+ 1 (size!30708 (t!311993 (_2!23141 lt!1338037)))))))

(assert (= (and d!1142405 c!671079) b!3853209))

(assert (= (and d!1142405 (not c!671079)) b!3853210))

(declare-fun m!4408449 () Bool)

(assert (=> b!3853210 m!4408449))

(assert (=> b!3852300 d!1142405))

(assert (=> b!3852300 d!1141991))

(declare-fun d!1142407 () Bool)

(declare-fun lt!1338384 () Int)

(assert (=> d!1142407 (>= lt!1338384 0)))

(declare-fun e!2381736 () Int)

(assert (=> d!1142407 (= lt!1338384 e!2381736)))

(declare-fun c!671080 () Bool)

(assert (=> d!1142407 (= c!671080 (is-Nil!40822 (t!311993 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142407 (= (size!30708 (t!311993 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))))) lt!1338384)))

(declare-fun b!3853211 () Bool)

(assert (=> b!3853211 (= e!2381736 0)))

(declare-fun b!3853212 () Bool)

(assert (=> b!3853212 (= e!2381736 (+ 1 (size!30708 (t!311993 (t!311993 (originalCharacters!6911 (_1!23142 (v!39022 lt!1337950))))))))))

(assert (= (and d!1142407 c!671080) b!3853211))

(assert (= (and d!1142407 (not c!671080)) b!3853212))

(declare-fun m!4408451 () Bool)

(assert (=> b!3853212 m!4408451))

(assert (=> b!3852371 d!1142407))

(declare-fun d!1142409 () Bool)

(assert (=> d!1142409 (= (inv!16 (value!200499 (h!46245 prefixTokens!80))) (= (charsToInt!0 (text!46234 (value!200499 (h!46245 prefixTokens!80)))) (value!200490 (value!200499 (h!46245 prefixTokens!80)))))))

(declare-fun bs!582946 () Bool)

(assert (= bs!582946 d!1142409))

(declare-fun m!4408453 () Bool)

(assert (=> bs!582946 m!4408453))

(assert (=> b!3852339 d!1142409))

(declare-fun d!1142411 () Bool)

(declare-fun lt!1338385 () Int)

(assert (=> d!1142411 (>= lt!1338385 0)))

(declare-fun e!2381737 () Int)

(assert (=> d!1142411 (= lt!1338385 e!2381737)))

(declare-fun c!671081 () Bool)

(assert (=> d!1142411 (= c!671081 (is-Nil!40822 (originalCharacters!6911 (h!46245 suffixTokens!72))))))

(assert (=> d!1142411 (= (size!30708 (originalCharacters!6911 (h!46245 suffixTokens!72))) lt!1338385)))

(declare-fun b!3853213 () Bool)

(assert (=> b!3853213 (= e!2381737 0)))

(declare-fun b!3853214 () Bool)

(assert (=> b!3853214 (= e!2381737 (+ 1 (size!30708 (t!311993 (originalCharacters!6911 (h!46245 suffixTokens!72))))))))

(assert (= (and d!1142411 c!671081) b!3853213))

(assert (= (and d!1142411 (not c!671081)) b!3853214))

(declare-fun m!4408455 () Bool)

(assert (=> b!3853214 m!4408455))

(assert (=> b!3852363 d!1142411))

(declare-fun d!1142413 () Bool)

(assert (=> d!1142413 (= (isEmpty!24164 (_1!23141 lt!1338040)) (is-Nil!40825 (_1!23141 lt!1338040)))))

(assert (=> b!3852308 d!1142413))

(declare-fun d!1142415 () Bool)

(declare-fun lt!1338386 () Int)

(assert (=> d!1142415 (>= lt!1338386 0)))

(declare-fun e!2381738 () Int)

(assert (=> d!1142415 (= lt!1338386 e!2381738)))

(declare-fun c!671082 () Bool)

(assert (=> d!1142415 (= c!671082 (is-Nil!40822 (_2!23142 (get!13507 lt!1338072))))))

(assert (=> d!1142415 (= (size!30708 (_2!23142 (get!13507 lt!1338072))) lt!1338386)))

(declare-fun b!3853215 () Bool)

(assert (=> b!3853215 (= e!2381738 0)))

(declare-fun b!3853216 () Bool)

(assert (=> b!3853216 (= e!2381738 (+ 1 (size!30708 (t!311993 (_2!23142 (get!13507 lt!1338072))))))))

(assert (= (and d!1142415 c!671082) b!3853215))

(assert (= (and d!1142415 (not c!671082)) b!3853216))

(declare-fun m!4408457 () Bool)

(assert (=> b!3853216 m!4408457))

(assert (=> b!3852439 d!1142415))

(assert (=> b!3852439 d!1142157))

(assert (=> b!3852439 d!1141999))

(declare-fun d!1142417 () Bool)

(assert (=> d!1142417 (= (isEmpty!24164 (_1!23141 lt!1338094)) (is-Nil!40825 (_1!23141 lt!1338094)))))

(assert (=> b!3852482 d!1142417))

(declare-fun lt!1338387 () List!40949)

(declare-fun e!2381740 () Bool)

(declare-fun b!3853220 () Bool)

(assert (=> b!3853220 (= e!2381740 (or (not (= (_1!23141 lt!1337941) Nil!40825)) (= lt!1338387 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)))))))

(declare-fun b!3853219 () Bool)

(declare-fun res!1559943 () Bool)

(assert (=> b!3853219 (=> (not res!1559943) (not e!2381740))))

(assert (=> b!3853219 (= res!1559943 (= (size!30711 lt!1338387) (+ (size!30711 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))) (size!30711 (_1!23141 lt!1337941)))))))

(declare-fun d!1142419 () Bool)

(assert (=> d!1142419 e!2381740))

(declare-fun res!1559942 () Bool)

(assert (=> d!1142419 (=> (not res!1559942) (not e!2381740))))

(assert (=> d!1142419 (= res!1559942 (= (content!6074 lt!1338387) (set.union (content!6074 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))) (content!6074 (_1!23141 lt!1337941)))))))

(declare-fun e!2381739 () List!40949)

(assert (=> d!1142419 (= lt!1338387 e!2381739)))

(declare-fun c!671083 () Bool)

(assert (=> d!1142419 (= c!671083 (is-Nil!40825 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))))))

(assert (=> d!1142419 (= (++!10379 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825)) (_1!23141 lt!1337941)) lt!1338387)))

(declare-fun b!3853218 () Bool)

(assert (=> b!3853218 (= e!2381739 (Cons!40825 (h!46245 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))) (++!10379 (t!311996 (t!311996 (Cons!40825 (_1!23142 (v!39022 lt!1337950)) Nil!40825))) (_1!23141 lt!1337941))))))

(declare-fun b!3853217 () Bool)

(assert (=> b!3853217 (= e!2381739 (_1!23141 lt!1337941))))

(assert (= (and d!1142419 c!671083) b!3853217))

(assert (= (and d!1142419 (not c!671083)) b!3853218))

(assert (= (and d!1142419 res!1559942) b!3853219))

(assert (= (and b!3853219 res!1559943) b!3853220))

(declare-fun m!4408459 () Bool)

(assert (=> b!3853219 m!4408459))

(assert (=> b!3853219 m!4407919))

(assert (=> b!3853219 m!4407225))

(declare-fun m!4408461 () Bool)

(assert (=> d!1142419 m!4408461))

(assert (=> d!1142419 m!4408359))

(assert (=> d!1142419 m!4407231))

(declare-fun m!4408463 () Bool)

(assert (=> b!3853218 m!4408463))

(assert (=> b!3852214 d!1142419))

(declare-fun bs!582947 () Bool)

(declare-fun d!1142421 () Bool)

(assert (= bs!582947 (and d!1142421 d!1142199)))

(declare-fun lambda!126176 () Int)

(assert (=> bs!582947 (= lambda!126176 lambda!126160)))

(assert (=> d!1142421 true))

(declare-fun lt!1338390 () Bool)

(assert (=> d!1142421 (= lt!1338390 (rulesValidInductive!2245 thiss!20629 rules!2768))))

(assert (=> d!1142421 (= lt!1338390 (forall!8289 rules!2768 lambda!126176))))

(assert (=> d!1142421 (= (rulesValid!2439 thiss!20629 rules!2768) lt!1338390)))

(declare-fun bs!582948 () Bool)

(assert (= bs!582948 d!1142421))

(assert (=> bs!582948 m!4407263))

(declare-fun m!4408465 () Bool)

(assert (=> bs!582948 m!4408465))

(assert (=> d!1141987 d!1142421))

(declare-fun d!1142423 () Bool)

(declare-fun res!1559944 () Bool)

(declare-fun e!2381741 () Bool)

(assert (=> d!1142423 (=> (not res!1559944) (not e!2381741))))

(assert (=> d!1142423 (= res!1559944 (not (isEmpty!24163 (originalCharacters!6911 (h!46245 (t!311996 suffixTokens!72))))))))

(assert (=> d!1142423 (= (inv!54975 (h!46245 (t!311996 suffixTokens!72))) e!2381741)))

(declare-fun b!3853221 () Bool)

(declare-fun res!1559945 () Bool)

(assert (=> b!3853221 (=> (not res!1559945) (not e!2381741))))

(assert (=> b!3853221 (= res!1559945 (= (originalCharacters!6911 (h!46245 (t!311996 suffixTokens!72))) (list!15195 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (value!200499 (h!46245 (t!311996 suffixTokens!72)))))))))

(declare-fun b!3853222 () Bool)

(assert (=> b!3853222 (= e!2381741 (= (size!30707 (h!46245 (t!311996 suffixTokens!72))) (size!30708 (originalCharacters!6911 (h!46245 (t!311996 suffixTokens!72))))))))

(assert (= (and d!1142423 res!1559944) b!3853221))

(assert (= (and b!3853221 res!1559945) b!3853222))

(declare-fun b_lambda!112631 () Bool)

(assert (=> (not b_lambda!112631) (not b!3853221)))

(declare-fun t!312185 () Bool)

(declare-fun tb!222533 () Bool)

(assert (=> (and b!3852102 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312185) tb!222533))

(declare-fun b!3853223 () Bool)

(declare-fun e!2381742 () Bool)

(declare-fun tp!1167843 () Bool)

(assert (=> b!3853223 (= e!2381742 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (value!200499 (h!46245 (t!311996 suffixTokens!72)))))) tp!1167843))))

(declare-fun result!271118 () Bool)

(assert (=> tb!222533 (= result!271118 (and (inv!54980 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (value!200499 (h!46245 (t!311996 suffixTokens!72))))) e!2381742))))

(assert (= tb!222533 b!3853223))

(declare-fun m!4408467 () Bool)

(assert (=> b!3853223 m!4408467))

(declare-fun m!4408469 () Bool)

(assert (=> tb!222533 m!4408469))

(assert (=> b!3853221 t!312185))

(declare-fun b_and!287943 () Bool)

(assert (= b_and!287935 (and (=> t!312185 result!271118) b_and!287943)))

(declare-fun tb!222535 () Bool)

(declare-fun t!312187 () Bool)

(assert (=> (and b!3852563 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312187) tb!222535))

(declare-fun result!271120 () Bool)

(assert (= result!271120 result!271118))

(assert (=> b!3853221 t!312187))

(declare-fun b_and!287945 () Bool)

(assert (= b_and!287939 (and (=> t!312187 result!271120) b_and!287945)))

(declare-fun t!312189 () Bool)

(declare-fun tb!222537 () Bool)

(assert (=> (and b!3852580 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312189) tb!222537))

(declare-fun result!271122 () Bool)

(assert (= result!271122 result!271118))

(assert (=> b!3853221 t!312189))

(declare-fun b_and!287947 () Bool)

(assert (= b_and!287941 (and (=> t!312189 result!271122) b_and!287947)))

(declare-fun t!312191 () Bool)

(declare-fun tb!222539 () Bool)

(assert (=> (and b!3852552 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312191) tb!222539))

(declare-fun result!271124 () Bool)

(assert (= result!271124 result!271118))

(assert (=> b!3853221 t!312191))

(declare-fun b_and!287949 () Bool)

(assert (= b_and!287933 (and (=> t!312191 result!271124) b_and!287949)))

(declare-fun t!312193 () Bool)

(declare-fun tb!222541 () Bool)

(assert (=> (and b!3852109 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312193) tb!222541))

(declare-fun result!271126 () Bool)

(assert (= result!271126 result!271118))

(assert (=> b!3853221 t!312193))

(declare-fun b_and!287951 () Bool)

(assert (= b_and!287937 (and (=> t!312193 result!271126) b_and!287951)))

(declare-fun t!312195 () Bool)

(declare-fun tb!222543 () Bool)

(assert (=> (and b!3852098 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312195) tb!222543))

(declare-fun result!271128 () Bool)

(assert (= result!271128 result!271118))

(assert (=> b!3853221 t!312195))

(declare-fun b_and!287953 () Bool)

(assert (= b_and!287931 (and (=> t!312195 result!271128) b_and!287953)))

(declare-fun m!4408471 () Bool)

(assert (=> d!1142423 m!4408471))

(declare-fun m!4408473 () Bool)

(assert (=> b!3853221 m!4408473))

(assert (=> b!3853221 m!4408473))

(declare-fun m!4408475 () Bool)

(assert (=> b!3853221 m!4408475))

(declare-fun m!4408477 () Bool)

(assert (=> b!3853222 m!4408477))

(assert (=> b!3852549 d!1142423))

(declare-fun b!3853225 () Bool)

(declare-fun res!1559948 () Bool)

(declare-fun e!2381746 () Bool)

(assert (=> b!3853225 (=> res!1559948 e!2381746)))

(assert (=> b!3853225 (= res!1559948 (not (is-ElementMatch!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun e!2381747 () Bool)

(assert (=> b!3853225 (= e!2381747 e!2381746)))

(declare-fun b!3853226 () Bool)

(declare-fun res!1559951 () Bool)

(declare-fun e!2381745 () Bool)

(assert (=> b!3853226 (=> res!1559951 e!2381745)))

(assert (=> b!3853226 (= res!1559951 (not (isEmpty!24163 (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))))

(declare-fun b!3853227 () Bool)

(declare-fun res!1559947 () Bool)

(declare-fun e!2381749 () Bool)

(assert (=> b!3853227 (=> (not res!1559947) (not e!2381749))))

(declare-fun call!282312 () Bool)

(assert (=> b!3853227 (= res!1559947 (not call!282312))))

(declare-fun b!3853228 () Bool)

(declare-fun e!2381744 () Bool)

(assert (=> b!3853228 (= e!2381744 (matchR!5363 (derivativeStep!3403 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))))) (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))))))))

(declare-fun b!3853229 () Bool)

(declare-fun e!2381743 () Bool)

(assert (=> b!3853229 (= e!2381746 e!2381743)))

(declare-fun res!1559953 () Bool)

(assert (=> b!3853229 (=> (not res!1559953) (not e!2381743))))

(declare-fun lt!1338391 () Bool)

(assert (=> b!3853229 (= res!1559953 (not lt!1338391))))

(declare-fun b!3853230 () Bool)

(assert (=> b!3853230 (= e!2381743 e!2381745)))

(declare-fun res!1559949 () Bool)

(assert (=> b!3853230 (=> res!1559949 e!2381745)))

(assert (=> b!3853230 (= res!1559949 call!282312)))

(declare-fun b!3853231 () Bool)

(declare-fun e!2381748 () Bool)

(assert (=> b!3853231 (= e!2381748 (= lt!1338391 call!282312))))

(declare-fun b!3853232 () Bool)

(assert (=> b!3853232 (= e!2381744 (nullable!3904 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun d!1142425 () Bool)

(assert (=> d!1142425 e!2381748))

(declare-fun c!671086 () Bool)

(assert (=> d!1142425 (= c!671086 (is-EmptyExpr!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(assert (=> d!1142425 (= lt!1338391 e!2381744)))

(declare-fun c!671084 () Bool)

(assert (=> d!1142425 (= c!671084 (isEmpty!24163 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))

(assert (=> d!1142425 (validRegex!5103 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))

(assert (=> d!1142425 (= (matchR!5363 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))) (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) lt!1338391)))

(declare-fun b!3853224 () Bool)

(declare-fun res!1559946 () Bool)

(assert (=> b!3853224 (=> (not res!1559946) (not e!2381749))))

(assert (=> b!3853224 (= res!1559946 (isEmpty!24163 (tail!5826 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072)))))))))

(declare-fun b!3853233 () Bool)

(assert (=> b!3853233 (= e!2381748 e!2381747)))

(declare-fun c!671085 () Bool)

(assert (=> b!3853233 (= c!671085 (is-EmptyLang!11216 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))

(declare-fun b!3853234 () Bool)

(assert (=> b!3853234 (= e!2381745 (not (= (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))))))

(declare-fun bm!282307 () Bool)

(assert (=> bm!282307 (= call!282312 (isEmpty!24163 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))))))

(declare-fun b!3853235 () Bool)

(assert (=> b!3853235 (= e!2381749 (= (head!8105 (list!15195 (charsOf!4139 (_1!23142 (get!13507 lt!1338072))))) (c!670846 (regex!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))))))

(declare-fun b!3853236 () Bool)

(declare-fun res!1559952 () Bool)

(assert (=> b!3853236 (=> res!1559952 e!2381746)))

(assert (=> b!3853236 (= res!1559952 e!2381749)))

(declare-fun res!1559950 () Bool)

(assert (=> b!3853236 (=> (not res!1559950) (not e!2381749))))

(assert (=> b!3853236 (= res!1559950 lt!1338391)))

(declare-fun b!3853237 () Bool)

(assert (=> b!3853237 (= e!2381747 (not lt!1338391))))

(assert (= (and d!1142425 c!671084) b!3853232))

(assert (= (and d!1142425 (not c!671084)) b!3853228))

(assert (= (and d!1142425 c!671086) b!3853231))

(assert (= (and d!1142425 (not c!671086)) b!3853233))

(assert (= (and b!3853233 c!671085) b!3853237))

(assert (= (and b!3853233 (not c!671085)) b!3853225))

(assert (= (and b!3853225 (not res!1559948)) b!3853236))

(assert (= (and b!3853236 res!1559950) b!3853227))

(assert (= (and b!3853227 res!1559947) b!3853224))

(assert (= (and b!3853224 res!1559946) b!3853235))

(assert (= (and b!3853236 (not res!1559952)) b!3853229))

(assert (= (and b!3853229 res!1559953) b!3853230))

(assert (= (and b!3853230 (not res!1559949)) b!3853226))

(assert (= (and b!3853226 (not res!1559951)) b!3853234))

(assert (= (or b!3853231 b!3853227 b!3853230) bm!282307))

(assert (=> d!1142425 m!4407415))

(declare-fun m!4408479 () Bool)

(assert (=> d!1142425 m!4408479))

(assert (=> d!1142425 m!4407373))

(assert (=> bm!282307 m!4407415))

(assert (=> bm!282307 m!4408479))

(assert (=> b!3853224 m!4407415))

(declare-fun m!4408481 () Bool)

(assert (=> b!3853224 m!4408481))

(assert (=> b!3853224 m!4408481))

(declare-fun m!4408483 () Bool)

(assert (=> b!3853224 m!4408483))

(assert (=> b!3853235 m!4407415))

(declare-fun m!4408485 () Bool)

(assert (=> b!3853235 m!4408485))

(assert (=> b!3853234 m!4407415))

(assert (=> b!3853234 m!4408485))

(assert (=> b!3853226 m!4407415))

(assert (=> b!3853226 m!4408481))

(assert (=> b!3853226 m!4408481))

(assert (=> b!3853226 m!4408483))

(assert (=> b!3853232 m!4407381))

(assert (=> b!3853228 m!4407415))

(assert (=> b!3853228 m!4408485))

(assert (=> b!3853228 m!4408485))

(declare-fun m!4408487 () Bool)

(assert (=> b!3853228 m!4408487))

(assert (=> b!3853228 m!4407415))

(assert (=> b!3853228 m!4408481))

(assert (=> b!3853228 m!4408487))

(assert (=> b!3853228 m!4408481))

(declare-fun m!4408489 () Bool)

(assert (=> b!3853228 m!4408489))

(assert (=> b!3852435 d!1142425))

(assert (=> b!3852435 d!1142313))

(assert (=> b!3852435 d!1142315))

(assert (=> b!3852435 d!1142157))

(declare-fun b!3853241 () Bool)

(declare-fun e!2381750 () Bool)

(declare-fun tp!1167848 () Bool)

(declare-fun tp!1167846 () Bool)

(assert (=> b!3853241 (= e!2381750 (and tp!1167848 tp!1167846))))

(declare-fun b!3853238 () Bool)

(assert (=> b!3853238 (= e!2381750 tp_is_empty!19403)))

(assert (=> b!3852529 (= tp!1167722 e!2381750)))

(declare-fun b!3853240 () Bool)

(declare-fun tp!1167847 () Bool)

(assert (=> b!3853240 (= e!2381750 tp!1167847)))

(declare-fun b!3853239 () Bool)

(declare-fun tp!1167844 () Bool)

(declare-fun tp!1167845 () Bool)

(assert (=> b!3853239 (= e!2381750 (and tp!1167844 tp!1167845))))

(assert (= (and b!3852529 (is-ElementMatch!11216 (reg!11545 (regex!6311 (h!46244 rules!2768))))) b!3853238))

(assert (= (and b!3852529 (is-Concat!17758 (reg!11545 (regex!6311 (h!46244 rules!2768))))) b!3853239))

(assert (= (and b!3852529 (is-Star!11216 (reg!11545 (regex!6311 (h!46244 rules!2768))))) b!3853240))

(assert (= (and b!3852529 (is-Union!11216 (reg!11545 (regex!6311 (h!46244 rules!2768))))) b!3853241))

(declare-fun b!3853245 () Bool)

(declare-fun e!2381751 () Bool)

(declare-fun tp!1167853 () Bool)

(declare-fun tp!1167851 () Bool)

(assert (=> b!3853245 (= e!2381751 (and tp!1167853 tp!1167851))))

(declare-fun b!3853242 () Bool)

(assert (=> b!3853242 (= e!2381751 tp_is_empty!19403)))

(assert (=> b!3852528 (= tp!1167719 e!2381751)))

(declare-fun b!3853244 () Bool)

(declare-fun tp!1167852 () Bool)

(assert (=> b!3853244 (= e!2381751 tp!1167852)))

(declare-fun b!3853243 () Bool)

(declare-fun tp!1167849 () Bool)

(declare-fun tp!1167850 () Bool)

(assert (=> b!3853243 (= e!2381751 (and tp!1167849 tp!1167850))))

(assert (= (and b!3852528 (is-ElementMatch!11216 (regOne!22944 (regex!6311 (h!46244 rules!2768))))) b!3853242))

(assert (= (and b!3852528 (is-Concat!17758 (regOne!22944 (regex!6311 (h!46244 rules!2768))))) b!3853243))

(assert (= (and b!3852528 (is-Star!11216 (regOne!22944 (regex!6311 (h!46244 rules!2768))))) b!3853244))

(assert (= (and b!3852528 (is-Union!11216 (regOne!22944 (regex!6311 (h!46244 rules!2768))))) b!3853245))

(declare-fun b!3853249 () Bool)

(declare-fun e!2381752 () Bool)

(declare-fun tp!1167858 () Bool)

(declare-fun tp!1167856 () Bool)

(assert (=> b!3853249 (= e!2381752 (and tp!1167858 tp!1167856))))

(declare-fun b!3853246 () Bool)

(assert (=> b!3853246 (= e!2381752 tp_is_empty!19403)))

(assert (=> b!3852528 (= tp!1167720 e!2381752)))

(declare-fun b!3853248 () Bool)

(declare-fun tp!1167857 () Bool)

(assert (=> b!3853248 (= e!2381752 tp!1167857)))

(declare-fun b!3853247 () Bool)

(declare-fun tp!1167854 () Bool)

(declare-fun tp!1167855 () Bool)

(assert (=> b!3853247 (= e!2381752 (and tp!1167854 tp!1167855))))

(assert (= (and b!3852528 (is-ElementMatch!11216 (regTwo!22944 (regex!6311 (h!46244 rules!2768))))) b!3853246))

(assert (= (and b!3852528 (is-Concat!17758 (regTwo!22944 (regex!6311 (h!46244 rules!2768))))) b!3853247))

(assert (= (and b!3852528 (is-Star!11216 (regTwo!22944 (regex!6311 (h!46244 rules!2768))))) b!3853248))

(assert (= (and b!3852528 (is-Union!11216 (regTwo!22944 (regex!6311 (h!46244 rules!2768))))) b!3853249))

(declare-fun tp!1167867 () Bool)

(declare-fun b!3853258 () Bool)

(declare-fun e!2381758 () Bool)

(declare-fun tp!1167866 () Bool)

(assert (=> b!3853258 (= e!2381758 (and (inv!54979 (left!31480 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))) tp!1167866 (inv!54979 (right!31810 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))) tp!1167867))))

(declare-fun b!3853260 () Bool)

(declare-fun e!2381757 () Bool)

(declare-fun tp!1167865 () Bool)

(assert (=> b!3853260 (= e!2381757 tp!1167865)))

(declare-fun b!3853259 () Bool)

(declare-fun inv!54985 (IArray!25049) Bool)

(assert (=> b!3853259 (= e!2381758 (and (inv!54985 (xs!15828 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))) e!2381757))))

(assert (=> b!3852499 (= tp!1167705 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950)))))) e!2381758))))

(assert (= (and b!3852499 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))) b!3853258))

(assert (= b!3853259 b!3853260))

(assert (= (and b!3852499 (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))) (value!200499 (_1!23142 (v!39022 lt!1337950))))))) b!3853259))

(declare-fun m!4408491 () Bool)

(assert (=> b!3853258 m!4408491))

(declare-fun m!4408493 () Bool)

(assert (=> b!3853258 m!4408493))

(declare-fun m!4408495 () Bool)

(assert (=> b!3853259 m!4408495))

(assert (=> b!3852499 m!4407537))

(declare-fun b!3853261 () Bool)

(declare-fun e!2381759 () Bool)

(declare-fun tp!1167868 () Bool)

(assert (=> b!3853261 (= e!2381759 (and tp_is_empty!19403 tp!1167868))))

(assert (=> b!3852585 (= tp!1167769 e!2381759)))

(assert (= (and b!3852585 (is-Cons!40822 (t!311993 (t!311993 prefix!426)))) b!3853261))

(declare-fun tp!1167870 () Bool)

(declare-fun b!3853262 () Bool)

(declare-fun e!2381761 () Bool)

(declare-fun tp!1167871 () Bool)

(assert (=> b!3853262 (= e!2381761 (and (inv!54979 (left!31480 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))) tp!1167870 (inv!54979 (right!31810 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))) tp!1167871))))

(declare-fun b!3853264 () Bool)

(declare-fun e!2381760 () Bool)

(declare-fun tp!1167869 () Bool)

(assert (=> b!3853264 (= e!2381760 tp!1167869)))

(declare-fun b!3853263 () Bool)

(assert (=> b!3853263 (= e!2381761 (and (inv!54985 (xs!15828 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))) e!2381760))))

(assert (=> b!3852368 (= tp!1167703 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72))))) e!2381761))))

(assert (= (and b!3852368 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))) b!3853262))

(assert (= b!3853263 b!3853264))

(assert (= (and b!3852368 (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (value!200499 (h!46245 suffixTokens!72)))))) b!3853263))

(declare-fun m!4408497 () Bool)

(assert (=> b!3853262 m!4408497))

(declare-fun m!4408499 () Bool)

(assert (=> b!3853262 m!4408499))

(declare-fun m!4408501 () Bool)

(assert (=> b!3853263 m!4408501))

(assert (=> b!3852368 m!4407353))

(declare-fun b!3853268 () Bool)

(declare-fun e!2381762 () Bool)

(declare-fun tp!1167876 () Bool)

(declare-fun tp!1167874 () Bool)

(assert (=> b!3853268 (= e!2381762 (and tp!1167876 tp!1167874))))

(declare-fun b!3853265 () Bool)

(assert (=> b!3853265 (= e!2381762 tp_is_empty!19403)))

(assert (=> b!3852571 (= tp!1167757 e!2381762)))

(declare-fun b!3853267 () Bool)

(declare-fun tp!1167875 () Bool)

(assert (=> b!3853267 (= e!2381762 tp!1167875)))

(declare-fun b!3853266 () Bool)

(declare-fun tp!1167872 () Bool)

(declare-fun tp!1167873 () Bool)

(assert (=> b!3853266 (= e!2381762 (and tp!1167872 tp!1167873))))

(assert (= (and b!3852571 (is-ElementMatch!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853265))

(assert (= (and b!3852571 (is-Concat!17758 (regOne!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853266))

(assert (= (and b!3852571 (is-Star!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853267))

(assert (= (and b!3852571 (is-Union!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853268))

(declare-fun b!3853272 () Bool)

(declare-fun e!2381763 () Bool)

(declare-fun tp!1167881 () Bool)

(declare-fun tp!1167879 () Bool)

(assert (=> b!3853272 (= e!2381763 (and tp!1167881 tp!1167879))))

(declare-fun b!3853269 () Bool)

(assert (=> b!3853269 (= e!2381763 tp_is_empty!19403)))

(assert (=> b!3852571 (= tp!1167755 e!2381763)))

(declare-fun b!3853271 () Bool)

(declare-fun tp!1167880 () Bool)

(assert (=> b!3853271 (= e!2381763 tp!1167880)))

(declare-fun b!3853270 () Bool)

(declare-fun tp!1167877 () Bool)

(declare-fun tp!1167878 () Bool)

(assert (=> b!3853270 (= e!2381763 (and tp!1167877 tp!1167878))))

(assert (= (and b!3852571 (is-ElementMatch!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853269))

(assert (= (and b!3852571 (is-Concat!17758 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853270))

(assert (= (and b!3852571 (is-Star!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853271))

(assert (= (and b!3852571 (is-Union!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853272))

(declare-fun b!3853276 () Bool)

(declare-fun e!2381764 () Bool)

(declare-fun tp!1167886 () Bool)

(declare-fun tp!1167884 () Bool)

(assert (=> b!3853276 (= e!2381764 (and tp!1167886 tp!1167884))))

(declare-fun b!3853273 () Bool)

(assert (=> b!3853273 (= e!2381764 tp_is_empty!19403)))

(assert (=> b!3852562 (= tp!1167752 e!2381764)))

(declare-fun b!3853275 () Bool)

(declare-fun tp!1167885 () Bool)

(assert (=> b!3853275 (= e!2381764 tp!1167885)))

(declare-fun b!3853274 () Bool)

(declare-fun tp!1167882 () Bool)

(declare-fun tp!1167883 () Bool)

(assert (=> b!3853274 (= e!2381764 (and tp!1167882 tp!1167883))))

(assert (= (and b!3852562 (is-ElementMatch!11216 (regex!6311 (h!46244 (t!311995 rules!2768))))) b!3853273))

(assert (= (and b!3852562 (is-Concat!17758 (regex!6311 (h!46244 (t!311995 rules!2768))))) b!3853274))

(assert (= (and b!3852562 (is-Star!11216 (regex!6311 (h!46244 (t!311995 rules!2768))))) b!3853275))

(assert (= (and b!3852562 (is-Union!11216 (regex!6311 (h!46244 (t!311995 rules!2768))))) b!3853276))

(declare-fun b!3853280 () Bool)

(declare-fun e!2381765 () Bool)

(declare-fun tp!1167891 () Bool)

(declare-fun tp!1167889 () Bool)

(assert (=> b!3853280 (= e!2381765 (and tp!1167891 tp!1167889))))

(declare-fun b!3853277 () Bool)

(assert (=> b!3853277 (= e!2381765 tp_is_empty!19403)))

(assert (=> b!3852570 (= tp!1167756 e!2381765)))

(declare-fun b!3853279 () Bool)

(declare-fun tp!1167890 () Bool)

(assert (=> b!3853279 (= e!2381765 tp!1167890)))

(declare-fun b!3853278 () Bool)

(declare-fun tp!1167887 () Bool)

(declare-fun tp!1167888 () Bool)

(assert (=> b!3853278 (= e!2381765 (and tp!1167887 tp!1167888))))

(assert (= (and b!3852570 (is-ElementMatch!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853277))

(assert (= (and b!3852570 (is-Concat!17758 (reg!11545 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853278))

(assert (= (and b!3852570 (is-Star!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853279))

(assert (= (and b!3852570 (is-Union!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853280))

(declare-fun b!3853281 () Bool)

(declare-fun e!2381766 () Bool)

(declare-fun tp!1167892 () Bool)

(assert (=> b!3853281 (= e!2381766 (and tp_is_empty!19403 tp!1167892))))

(assert (=> b!3852516 (= tp!1167708 e!2381766)))

(assert (= (and b!3852516 (is-Cons!40822 (t!311993 (t!311993 suffixResult!91)))) b!3853281))

(declare-fun tp!1167895 () Bool)

(declare-fun tp!1167894 () Bool)

(declare-fun b!3853282 () Bool)

(declare-fun e!2381768 () Bool)

(assert (=> b!3853282 (= e!2381768 (and (inv!54979 (left!31480 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))) tp!1167894 (inv!54979 (right!31810 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))) tp!1167895))))

(declare-fun b!3853284 () Bool)

(declare-fun e!2381767 () Bool)

(declare-fun tp!1167893 () Bool)

(assert (=> b!3853284 (= e!2381767 tp!1167893)))

(declare-fun b!3853283 () Bool)

(assert (=> b!3853283 (= e!2381768 (and (inv!54985 (xs!15828 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))) e!2381767))))

(assert (=> b!3852472 (= tp!1167704 (and (inv!54979 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80))))) e!2381768))))

(assert (= (and b!3852472 (is-Node!12522 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))) b!3853282))

(assert (= b!3853283 b!3853284))

(assert (= (and b!3852472 (is-Leaf!19385 (c!670845 (dynLambda!17615 (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (value!200499 (h!46245 prefixTokens!80)))))) b!3853283))

(declare-fun m!4408503 () Bool)

(assert (=> b!3853282 m!4408503))

(declare-fun m!4408505 () Bool)

(assert (=> b!3853282 m!4408505))

(declare-fun m!4408507 () Bool)

(assert (=> b!3853283 m!4408507))

(assert (=> b!3852472 m!4407433))

(declare-fun b!3853285 () Bool)

(declare-fun e!2381769 () Bool)

(declare-fun tp!1167896 () Bool)

(assert (=> b!3853285 (= e!2381769 (and tp_is_empty!19403 tp!1167896))))

(assert (=> b!3852531 (= tp!1167724 e!2381769)))

(assert (= (and b!3852531 (is-Cons!40822 (t!311993 (originalCharacters!6911 (h!46245 prefixTokens!80))))) b!3853285))

(declare-fun b!3853289 () Bool)

(declare-fun e!2381770 () Bool)

(declare-fun tp!1167901 () Bool)

(declare-fun tp!1167899 () Bool)

(assert (=> b!3853289 (= e!2381770 (and tp!1167901 tp!1167899))))

(declare-fun b!3853286 () Bool)

(assert (=> b!3853286 (= e!2381770 tp_is_empty!19403)))

(assert (=> b!3852579 (= tp!1167759 e!2381770)))

(declare-fun b!3853288 () Bool)

(declare-fun tp!1167900 () Bool)

(assert (=> b!3853288 (= e!2381770 tp!1167900)))

(declare-fun b!3853287 () Bool)

(declare-fun tp!1167897 () Bool)

(declare-fun tp!1167898 () Bool)

(assert (=> b!3853287 (= e!2381770 (and tp!1167897 tp!1167898))))

(assert (= (and b!3852579 (is-ElementMatch!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) b!3853286))

(assert (= (and b!3852579 (is-Concat!17758 (regex!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) b!3853287))

(assert (= (and b!3852579 (is-Star!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) b!3853288))

(assert (= (and b!3852579 (is-Union!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) b!3853289))

(declare-fun b!3853290 () Bool)

(declare-fun e!2381771 () Bool)

(declare-fun tp!1167902 () Bool)

(assert (=> b!3853290 (= e!2381771 (and tp_is_empty!19403 tp!1167902))))

(assert (=> b!3852578 (= tp!1167760 e!2381771)))

(assert (= (and b!3852578 (is-Cons!40822 (originalCharacters!6911 (h!46245 (t!311996 prefixTokens!80))))) b!3853290))

(declare-fun b!3853294 () Bool)

(declare-fun b_free!103345 () Bool)

(declare-fun b_next!104049 () Bool)

(assert (=> b!3853294 (= b_free!103345 (not b_next!104049))))

(declare-fun tb!222545 () Bool)

(declare-fun t!312197 () Bool)

(assert (=> (and b!3853294 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312197) tb!222545))

(declare-fun result!271132 () Bool)

(assert (= result!271132 result!271058))

(assert (=> d!1142221 t!312197))

(declare-fun tb!222547 () Bool)

(declare-fun t!312199 () Bool)

(assert (=> (and b!3853294 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312199) tb!222547))

(declare-fun result!271134 () Bool)

(assert (= result!271134 result!271094))

(assert (=> d!1142351 t!312199))

(assert (=> d!1142233 t!312197))

(declare-fun tb!222549 () Bool)

(declare-fun t!312201 () Bool)

(assert (=> (and b!3853294 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312201) tb!222549))

(declare-fun result!271136 () Bool)

(assert (= result!271136 result!271046))

(assert (=> d!1142159 t!312201))

(declare-fun tb!222551 () Bool)

(declare-fun t!312203 () Bool)

(assert (=> (and b!3853294 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312203) tb!222551))

(declare-fun result!271138 () Bool)

(assert (= result!271138 result!270928))

(assert (=> d!1142037 t!312203))

(declare-fun tp!1167905 () Bool)

(declare-fun b_and!287955 () Bool)

(assert (=> b!3853294 (= tp!1167905 (and (=> t!312203 result!271138) (=> t!312197 result!271132) (=> t!312199 result!271134) (=> t!312201 result!271136) b_and!287955))))

(declare-fun b_free!103347 () Bool)

(declare-fun b_next!104051 () Bool)

(assert (=> b!3853294 (= b_free!103347 (not b_next!104051))))

(declare-fun tb!222553 () Bool)

(declare-fun t!312205 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312205) tb!222553))

(declare-fun result!271140 () Bool)

(assert (= result!271140 result!271070))

(assert (=> d!1142233 t!312205))

(declare-fun t!312207 () Bool)

(declare-fun tb!222555 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312207) tb!222555))

(declare-fun result!271142 () Bool)

(assert (= result!271142 result!270922))

(assert (=> b!3852470 t!312207))

(declare-fun t!312209 () Bool)

(declare-fun tb!222557 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312209) tb!222557))

(declare-fun result!271144 () Bool)

(assert (= result!271144 result!271082))

(assert (=> d!1142315 t!312209))

(declare-fun t!312211 () Bool)

(declare-fun tb!222559 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312211) tb!222559))

(declare-fun result!271146 () Bool)

(assert (= result!271146 result!271034))

(assert (=> d!1142143 t!312211))

(declare-fun t!312213 () Bool)

(declare-fun tb!222561 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312213) tb!222561))

(declare-fun result!271148 () Bool)

(assert (= result!271148 result!271106))

(assert (=> b!3853147 t!312213))

(declare-fun tb!222563 () Bool)

(declare-fun t!312215 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312215) tb!222563))

(declare-fun result!271150 () Bool)

(assert (= result!271150 result!270936))

(assert (=> d!1142049 t!312215))

(declare-fun t!312217 () Bool)

(declare-fun tb!222565 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312217) tb!222565))

(declare-fun result!271152 () Bool)

(assert (= result!271152 result!271118))

(assert (=> b!3853221 t!312217))

(declare-fun t!312219 () Bool)

(declare-fun tb!222567 () Bool)

(assert (=> (and b!3853294 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312219) tb!222567))

(declare-fun result!271154 () Bool)

(assert (= result!271154 result!270914))

(assert (=> b!3852362 t!312219))

(declare-fun b_and!287957 () Bool)

(declare-fun tp!1167906 () Bool)

(assert (=> b!3853294 (= tp!1167906 (and (=> t!312213 result!271148) (=> t!312219 result!271154) (=> t!312211 result!271146) (=> t!312205 result!271140) (=> t!312207 result!271142) (=> t!312217 result!271152) (=> t!312209 result!271144) (=> t!312215 result!271150) b_and!287957))))

(declare-fun e!2381773 () Bool)

(declare-fun b!3853293 () Bool)

(declare-fun tp!1167903 () Bool)

(declare-fun e!2381776 () Bool)

(assert (=> b!3853293 (= e!2381773 (and tp!1167903 (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) e!2381776))))

(declare-fun b!3853292 () Bool)

(declare-fun e!2381772 () Bool)

(declare-fun tp!1167904 () Bool)

(assert (=> b!3853292 (= e!2381772 (and (inv!21 (value!200499 (h!46245 (t!311996 (t!311996 prefixTokens!80))))) e!2381773 tp!1167904))))

(assert (=> b!3853294 (= e!2381776 (and tp!1167905 tp!1167906))))

(declare-fun tp!1167907 () Bool)

(declare-fun b!3853291 () Bool)

(declare-fun e!2381775 () Bool)

(assert (=> b!3853291 (= e!2381775 (and (inv!54975 (h!46245 (t!311996 (t!311996 prefixTokens!80)))) e!2381772 tp!1167907))))

(assert (=> b!3852577 (= tp!1167763 e!2381775)))

(assert (= b!3853293 b!3853294))

(assert (= b!3853292 b!3853293))

(assert (= b!3853291 b!3853292))

(assert (= (and b!3852577 (is-Cons!40825 (t!311996 (t!311996 prefixTokens!80)))) b!3853291))

(declare-fun m!4408509 () Bool)

(assert (=> b!3853293 m!4408509))

(declare-fun m!4408511 () Bool)

(assert (=> b!3853293 m!4408511))

(declare-fun m!4408513 () Bool)

(assert (=> b!3853292 m!4408513))

(declare-fun m!4408515 () Bool)

(assert (=> b!3853291 m!4408515))

(declare-fun b!3853298 () Bool)

(declare-fun e!2381778 () Bool)

(declare-fun tp!1167912 () Bool)

(declare-fun tp!1167910 () Bool)

(assert (=> b!3853298 (= e!2381778 (and tp!1167912 tp!1167910))))

(declare-fun b!3853295 () Bool)

(assert (=> b!3853295 (= e!2381778 tp_is_empty!19403)))

(assert (=> b!3852530 (= tp!1167723 e!2381778)))

(declare-fun b!3853297 () Bool)

(declare-fun tp!1167911 () Bool)

(assert (=> b!3853297 (= e!2381778 tp!1167911)))

(declare-fun b!3853296 () Bool)

(declare-fun tp!1167908 () Bool)

(declare-fun tp!1167909 () Bool)

(assert (=> b!3853296 (= e!2381778 (and tp!1167908 tp!1167909))))

(assert (= (and b!3852530 (is-ElementMatch!11216 (regOne!22945 (regex!6311 (h!46244 rules!2768))))) b!3853295))

(assert (= (and b!3852530 (is-Concat!17758 (regOne!22945 (regex!6311 (h!46244 rules!2768))))) b!3853296))

(assert (= (and b!3852530 (is-Star!11216 (regOne!22945 (regex!6311 (h!46244 rules!2768))))) b!3853297))

(assert (= (and b!3852530 (is-Union!11216 (regOne!22945 (regex!6311 (h!46244 rules!2768))))) b!3853298))

(declare-fun b!3853302 () Bool)

(declare-fun e!2381779 () Bool)

(declare-fun tp!1167917 () Bool)

(declare-fun tp!1167915 () Bool)

(assert (=> b!3853302 (= e!2381779 (and tp!1167917 tp!1167915))))

(declare-fun b!3853299 () Bool)

(assert (=> b!3853299 (= e!2381779 tp_is_empty!19403)))

(assert (=> b!3852530 (= tp!1167721 e!2381779)))

(declare-fun b!3853301 () Bool)

(declare-fun tp!1167916 () Bool)

(assert (=> b!3853301 (= e!2381779 tp!1167916)))

(declare-fun b!3853300 () Bool)

(declare-fun tp!1167913 () Bool)

(declare-fun tp!1167914 () Bool)

(assert (=> b!3853300 (= e!2381779 (and tp!1167913 tp!1167914))))

(assert (= (and b!3852530 (is-ElementMatch!11216 (regTwo!22945 (regex!6311 (h!46244 rules!2768))))) b!3853299))

(assert (= (and b!3852530 (is-Concat!17758 (regTwo!22945 (regex!6311 (h!46244 rules!2768))))) b!3853300))

(assert (= (and b!3852530 (is-Star!11216 (regTwo!22945 (regex!6311 (h!46244 rules!2768))))) b!3853301))

(assert (= (and b!3852530 (is-Union!11216 (regTwo!22945 (regex!6311 (h!46244 rules!2768))))) b!3853302))

(declare-fun b!3853303 () Bool)

(declare-fun e!2381780 () Bool)

(declare-fun tp!1167918 () Bool)

(assert (=> b!3853303 (= e!2381780 (and tp_is_empty!19403 tp!1167918))))

(assert (=> b!3852532 (= tp!1167725 e!2381780)))

(assert (= (and b!3852532 (is-Cons!40822 (t!311993 (originalCharacters!6911 (h!46245 suffixTokens!72))))) b!3853303))

(declare-fun b!3853304 () Bool)

(declare-fun e!2381781 () Bool)

(declare-fun tp!1167919 () Bool)

(assert (=> b!3853304 (= e!2381781 (and tp_is_empty!19403 tp!1167919))))

(assert (=> b!3852574 (= tp!1167758 e!2381781)))

(assert (= (and b!3852574 (is-Cons!40822 (t!311993 (t!311993 suffix!1176)))) b!3853304))

(declare-fun b!3853307 () Bool)

(declare-fun b_free!103349 () Bool)

(declare-fun b_next!104053 () Bool)

(assert (=> b!3853307 (= b_free!103349 (not b_next!104053))))

(declare-fun tb!222569 () Bool)

(declare-fun t!312221 () Bool)

(assert (=> (and b!3853307 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312221) tb!222569))

(declare-fun result!271156 () Bool)

(assert (= result!271156 result!271058))

(assert (=> d!1142221 t!312221))

(declare-fun tb!222571 () Bool)

(declare-fun t!312223 () Bool)

(assert (=> (and b!3853307 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312223) tb!222571))

(declare-fun result!271158 () Bool)

(assert (= result!271158 result!271094))

(assert (=> d!1142351 t!312223))

(assert (=> d!1142233 t!312221))

(declare-fun t!312225 () Bool)

(declare-fun tb!222573 () Bool)

(assert (=> (and b!3853307 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312225) tb!222573))

(declare-fun result!271160 () Bool)

(assert (= result!271160 result!271046))

(assert (=> d!1142159 t!312225))

(declare-fun tb!222575 () Bool)

(declare-fun t!312227 () Bool)

(assert (=> (and b!3853307 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312227) tb!222575))

(declare-fun result!271162 () Bool)

(assert (= result!271162 result!270928))

(assert (=> d!1142037 t!312227))

(declare-fun b_and!287959 () Bool)

(declare-fun tp!1167920 () Bool)

(assert (=> b!3853307 (= tp!1167920 (and (=> t!312227 result!271162) (=> t!312225 result!271160) (=> t!312221 result!271156) (=> t!312223 result!271158) b_and!287959))))

(declare-fun b_free!103351 () Bool)

(declare-fun b_next!104055 () Bool)

(assert (=> b!3853307 (= b_free!103351 (not b_next!104055))))

(declare-fun t!312229 () Bool)

(declare-fun tb!222577 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312229) tb!222577))

(declare-fun result!271164 () Bool)

(assert (= result!271164 result!271070))

(assert (=> d!1142233 t!312229))

(declare-fun tb!222579 () Bool)

(declare-fun t!312231 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312231) tb!222579))

(declare-fun result!271166 () Bool)

(assert (= result!271166 result!270922))

(assert (=> b!3852470 t!312231))

(declare-fun t!312233 () Bool)

(declare-fun tb!222581 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312233) tb!222581))

(declare-fun result!271168 () Bool)

(assert (= result!271168 result!271082))

(assert (=> d!1142315 t!312233))

(declare-fun t!312235 () Bool)

(declare-fun tb!222583 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312235) tb!222583))

(declare-fun result!271170 () Bool)

(assert (= result!271170 result!271034))

(assert (=> d!1142143 t!312235))

(declare-fun t!312237 () Bool)

(declare-fun tb!222585 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312237) tb!222585))

(declare-fun result!271172 () Bool)

(assert (= result!271172 result!271106))

(assert (=> b!3853147 t!312237))

(declare-fun t!312239 () Bool)

(declare-fun tb!222587 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312239) tb!222587))

(declare-fun result!271174 () Bool)

(assert (= result!271174 result!270936))

(assert (=> d!1142049 t!312239))

(declare-fun t!312241 () Bool)

(declare-fun tb!222589 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312241) tb!222589))

(declare-fun result!271176 () Bool)

(assert (= result!271176 result!271118))

(assert (=> b!3853221 t!312241))

(declare-fun tb!222591 () Bool)

(declare-fun t!312243 () Bool)

(assert (=> (and b!3853307 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312243) tb!222591))

(declare-fun result!271178 () Bool)

(assert (= result!271178 result!270914))

(assert (=> b!3852362 t!312243))

(declare-fun tp!1167921 () Bool)

(declare-fun b_and!287961 () Bool)

(assert (=> b!3853307 (= tp!1167921 (and (=> t!312231 result!271166) (=> t!312235 result!271170) (=> t!312233 result!271168) (=> t!312241 result!271176) (=> t!312229 result!271164) (=> t!312237 result!271172) (=> t!312243 result!271178) (=> t!312239 result!271174) b_and!287961))))

(declare-fun e!2381782 () Bool)

(assert (=> b!3853307 (= e!2381782 (and tp!1167920 tp!1167921))))

(declare-fun e!2381783 () Bool)

(declare-fun tp!1167923 () Bool)

(declare-fun b!3853306 () Bool)

(assert (=> b!3853306 (= e!2381783 (and tp!1167923 (inv!54972 (tag!7171 (h!46244 (t!311995 (t!311995 rules!2768))))) (inv!54976 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) e!2381782))))

(declare-fun b!3853305 () Bool)

(declare-fun e!2381785 () Bool)

(declare-fun tp!1167922 () Bool)

(assert (=> b!3853305 (= e!2381785 (and e!2381783 tp!1167922))))

(assert (=> b!3852561 (= tp!1167751 e!2381785)))

(assert (= b!3853306 b!3853307))

(assert (= b!3853305 b!3853306))

(assert (= (and b!3852561 (is-Cons!40824 (t!311995 (t!311995 rules!2768)))) b!3853305))

(declare-fun m!4408517 () Bool)

(assert (=> b!3853306 m!4408517))

(declare-fun m!4408519 () Bool)

(assert (=> b!3853306 m!4408519))

(declare-fun b!3853311 () Bool)

(declare-fun e!2381786 () Bool)

(declare-fun tp!1167928 () Bool)

(declare-fun tp!1167926 () Bool)

(assert (=> b!3853311 (= e!2381786 (and tp!1167928 tp!1167926))))

(declare-fun b!3853308 () Bool)

(assert (=> b!3853308 (= e!2381786 tp_is_empty!19403)))

(assert (=> b!3852569 (= tp!1167753 e!2381786)))

(declare-fun b!3853310 () Bool)

(declare-fun tp!1167927 () Bool)

(assert (=> b!3853310 (= e!2381786 tp!1167927)))

(declare-fun b!3853309 () Bool)

(declare-fun tp!1167924 () Bool)

(declare-fun tp!1167925 () Bool)

(assert (=> b!3853309 (= e!2381786 (and tp!1167924 tp!1167925))))

(assert (= (and b!3852569 (is-ElementMatch!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853308))

(assert (= (and b!3852569 (is-Concat!17758 (regOne!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853309))

(assert (= (and b!3852569 (is-Star!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853310))

(assert (= (and b!3852569 (is-Union!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853311))

(declare-fun b!3853315 () Bool)

(declare-fun e!2381787 () Bool)

(declare-fun tp!1167933 () Bool)

(declare-fun tp!1167931 () Bool)

(assert (=> b!3853315 (= e!2381787 (and tp!1167933 tp!1167931))))

(declare-fun b!3853312 () Bool)

(assert (=> b!3853312 (= e!2381787 tp_is_empty!19403)))

(assert (=> b!3852569 (= tp!1167754 e!2381787)))

(declare-fun b!3853314 () Bool)

(declare-fun tp!1167932 () Bool)

(assert (=> b!3853314 (= e!2381787 tp!1167932)))

(declare-fun b!3853313 () Bool)

(declare-fun tp!1167929 () Bool)

(declare-fun tp!1167930 () Bool)

(assert (=> b!3853313 (= e!2381787 (and tp!1167929 tp!1167930))))

(assert (= (and b!3852569 (is-ElementMatch!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853312))

(assert (= (and b!3852569 (is-Concat!17758 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853313))

(assert (= (and b!3852569 (is-Star!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853314))

(assert (= (and b!3852569 (is-Union!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 prefixTokens!80)))))) b!3853315))

(declare-fun b!3853319 () Bool)

(declare-fun e!2381788 () Bool)

(declare-fun tp!1167938 () Bool)

(declare-fun tp!1167936 () Bool)

(assert (=> b!3853319 (= e!2381788 (and tp!1167938 tp!1167936))))

(declare-fun b!3853316 () Bool)

(assert (=> b!3853316 (= e!2381788 tp_is_empty!19403)))

(assert (=> b!3852551 (= tp!1167736 e!2381788)))

(declare-fun b!3853318 () Bool)

(declare-fun tp!1167937 () Bool)

(assert (=> b!3853318 (= e!2381788 tp!1167937)))

(declare-fun b!3853317 () Bool)

(declare-fun tp!1167934 () Bool)

(declare-fun tp!1167935 () Bool)

(assert (=> b!3853317 (= e!2381788 (and tp!1167934 tp!1167935))))

(assert (= (and b!3852551 (is-ElementMatch!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) b!3853316))

(assert (= (and b!3852551 (is-Concat!17758 (regex!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) b!3853317))

(assert (= (and b!3852551 (is-Star!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) b!3853318))

(assert (= (and b!3852551 (is-Union!11216 (regex!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) b!3853319))

(declare-fun b!3853323 () Bool)

(declare-fun e!2381789 () Bool)

(declare-fun tp!1167943 () Bool)

(declare-fun tp!1167941 () Bool)

(assert (=> b!3853323 (= e!2381789 (and tp!1167943 tp!1167941))))

(declare-fun b!3853320 () Bool)

(assert (=> b!3853320 (= e!2381789 tp_is_empty!19403)))

(assert (=> b!3852583 (= tp!1167767 e!2381789)))

(declare-fun b!3853322 () Bool)

(declare-fun tp!1167942 () Bool)

(assert (=> b!3853322 (= e!2381789 tp!1167942)))

(declare-fun b!3853321 () Bool)

(declare-fun tp!1167939 () Bool)

(declare-fun tp!1167940 () Bool)

(assert (=> b!3853321 (= e!2381789 (and tp!1167939 tp!1167940))))

(assert (= (and b!3852583 (is-ElementMatch!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853320))

(assert (= (and b!3852583 (is-Concat!17758 (reg!11545 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853321))

(assert (= (and b!3852583 (is-Star!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853322))

(assert (= (and b!3852583 (is-Union!11216 (reg!11545 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853323))

(declare-fun b!3853327 () Bool)

(declare-fun e!2381790 () Bool)

(declare-fun tp!1167948 () Bool)

(declare-fun tp!1167946 () Bool)

(assert (=> b!3853327 (= e!2381790 (and tp!1167948 tp!1167946))))

(declare-fun b!3853324 () Bool)

(assert (=> b!3853324 (= e!2381790 tp_is_empty!19403)))

(assert (=> b!3852584 (= tp!1167768 e!2381790)))

(declare-fun b!3853326 () Bool)

(declare-fun tp!1167947 () Bool)

(assert (=> b!3853326 (= e!2381790 tp!1167947)))

(declare-fun b!3853325 () Bool)

(declare-fun tp!1167944 () Bool)

(declare-fun tp!1167945 () Bool)

(assert (=> b!3853325 (= e!2381790 (and tp!1167944 tp!1167945))))

(assert (= (and b!3852584 (is-ElementMatch!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853324))

(assert (= (and b!3852584 (is-Concat!17758 (regOne!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853325))

(assert (= (and b!3852584 (is-Star!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853326))

(assert (= (and b!3852584 (is-Union!11216 (regOne!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853327))

(declare-fun b!3853331 () Bool)

(declare-fun e!2381791 () Bool)

(declare-fun tp!1167953 () Bool)

(declare-fun tp!1167951 () Bool)

(assert (=> b!3853331 (= e!2381791 (and tp!1167953 tp!1167951))))

(declare-fun b!3853328 () Bool)

(assert (=> b!3853328 (= e!2381791 tp_is_empty!19403)))

(assert (=> b!3852584 (= tp!1167766 e!2381791)))

(declare-fun b!3853330 () Bool)

(declare-fun tp!1167952 () Bool)

(assert (=> b!3853330 (= e!2381791 tp!1167952)))

(declare-fun b!3853329 () Bool)

(declare-fun tp!1167949 () Bool)

(declare-fun tp!1167950 () Bool)

(assert (=> b!3853329 (= e!2381791 (and tp!1167949 tp!1167950))))

(assert (= (and b!3852584 (is-ElementMatch!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853328))

(assert (= (and b!3852584 (is-Concat!17758 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853329))

(assert (= (and b!3852584 (is-Star!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853330))

(assert (= (and b!3852584 (is-Union!11216 (regTwo!22945 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853331))

(declare-fun b!3853335 () Bool)

(declare-fun e!2381792 () Bool)

(declare-fun tp!1167958 () Bool)

(declare-fun tp!1167956 () Bool)

(assert (=> b!3853335 (= e!2381792 (and tp!1167958 tp!1167956))))

(declare-fun b!3853332 () Bool)

(assert (=> b!3853332 (= e!2381792 tp_is_empty!19403)))

(assert (=> b!3852582 (= tp!1167764 e!2381792)))

(declare-fun b!3853334 () Bool)

(declare-fun tp!1167957 () Bool)

(assert (=> b!3853334 (= e!2381792 tp!1167957)))

(declare-fun b!3853333 () Bool)

(declare-fun tp!1167954 () Bool)

(declare-fun tp!1167955 () Bool)

(assert (=> b!3853333 (= e!2381792 (and tp!1167954 tp!1167955))))

(assert (= (and b!3852582 (is-ElementMatch!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853332))

(assert (= (and b!3852582 (is-Concat!17758 (regOne!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853333))

(assert (= (and b!3852582 (is-Star!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853334))

(assert (= (and b!3852582 (is-Union!11216 (regOne!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853335))

(declare-fun b!3853339 () Bool)

(declare-fun e!2381793 () Bool)

(declare-fun tp!1167963 () Bool)

(declare-fun tp!1167961 () Bool)

(assert (=> b!3853339 (= e!2381793 (and tp!1167963 tp!1167961))))

(declare-fun b!3853336 () Bool)

(assert (=> b!3853336 (= e!2381793 tp_is_empty!19403)))

(assert (=> b!3852582 (= tp!1167765 e!2381793)))

(declare-fun b!3853338 () Bool)

(declare-fun tp!1167962 () Bool)

(assert (=> b!3853338 (= e!2381793 tp!1167962)))

(declare-fun b!3853337 () Bool)

(declare-fun tp!1167959 () Bool)

(declare-fun tp!1167960 () Bool)

(assert (=> b!3853337 (= e!2381793 (and tp!1167959 tp!1167960))))

(assert (= (and b!3852582 (is-ElementMatch!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853336))

(assert (= (and b!3852582 (is-Concat!17758 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853337))

(assert (= (and b!3852582 (is-Star!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853338))

(assert (= (and b!3852582 (is-Union!11216 (regTwo!22944 (regex!6311 (rule!9167 (h!46245 suffixTokens!72)))))) b!3853339))

(declare-fun b!3853340 () Bool)

(declare-fun e!2381794 () Bool)

(declare-fun tp!1167964 () Bool)

(assert (=> b!3853340 (= e!2381794 (and tp_is_empty!19403 tp!1167964))))

(assert (=> b!3852550 (= tp!1167737 e!2381794)))

(assert (= (and b!3852550 (is-Cons!40822 (originalCharacters!6911 (h!46245 (t!311996 suffixTokens!72))))) b!3853340))

(declare-fun b!3853344 () Bool)

(declare-fun b_free!103353 () Bool)

(declare-fun b_next!104057 () Bool)

(assert (=> b!3853344 (= b_free!103353 (not b_next!104057))))

(declare-fun tb!222593 () Bool)

(declare-fun t!312245 () Bool)

(assert (=> (and b!3853344 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312245) tb!222593))

(declare-fun result!271180 () Bool)

(assert (= result!271180 result!271058))

(assert (=> d!1142221 t!312245))

(declare-fun tb!222595 () Bool)

(declare-fun t!312247 () Bool)

(assert (=> (and b!3853344 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312247) tb!222595))

(declare-fun result!271182 () Bool)

(assert (= result!271182 result!271094))

(assert (=> d!1142351 t!312247))

(assert (=> d!1142233 t!312245))

(declare-fun t!312249 () Bool)

(declare-fun tb!222597 () Bool)

(assert (=> (and b!3853344 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312249) tb!222597))

(declare-fun result!271184 () Bool)

(assert (= result!271184 result!271046))

(assert (=> d!1142159 t!312249))

(declare-fun tb!222599 () Bool)

(declare-fun t!312251 () Bool)

(assert (=> (and b!3853344 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312251) tb!222599))

(declare-fun result!271186 () Bool)

(assert (= result!271186 result!270928))

(assert (=> d!1142037 t!312251))

(declare-fun tp!1167967 () Bool)

(declare-fun b_and!287963 () Bool)

(assert (=> b!3853344 (= tp!1167967 (and (=> t!312251 result!271186) (=> t!312249 result!271184) (=> t!312247 result!271182) (=> t!312245 result!271180) b_and!287963))))

(declare-fun b_free!103355 () Bool)

(declare-fun b_next!104059 () Bool)

(assert (=> b!3853344 (= b_free!103355 (not b_next!104059))))

(declare-fun t!312253 () Bool)

(declare-fun tb!222601 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312253) tb!222601))

(declare-fun result!271188 () Bool)

(assert (= result!271188 result!271070))

(assert (=> d!1142233 t!312253))

(declare-fun tb!222603 () Bool)

(declare-fun t!312255 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80))))) t!312255) tb!222603))

(declare-fun result!271190 () Bool)

(assert (= result!271190 result!270922))

(assert (=> b!3852470 t!312255))

(declare-fun t!312257 () Bool)

(declare-fun tb!222605 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338072)))))) t!312257) tb!222605))

(declare-fun result!271192 () Bool)

(assert (= result!271192 result!271082))

(assert (=> d!1142315 t!312257))

(declare-fun t!312259 () Bool)

(declare-fun tb!222607 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (get!13507 lt!1338027)))))) t!312259) tb!222607))

(declare-fun result!271194 () Bool)

(assert (= result!271194 result!271034))

(assert (=> d!1142143 t!312259))

(declare-fun t!312261 () Bool)

(declare-fun tb!222609 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80)))))) t!312261) tb!222609))

(declare-fun result!271196 () Bool)

(assert (= result!271196 result!271106))

(assert (=> b!3853147 t!312261))

(declare-fun tb!222611 () Bool)

(declare-fun t!312263 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950)))))) t!312263) tb!222611))

(declare-fun result!271198 () Bool)

(assert (= result!271198 result!270936))

(assert (=> d!1142049 t!312263))

(declare-fun t!312265 () Bool)

(declare-fun tb!222613 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72)))))) t!312265) tb!222613))

(declare-fun result!271200 () Bool)

(assert (= result!271200 result!271118))

(assert (=> b!3853221 t!312265))

(declare-fun t!312267 () Bool)

(declare-fun tb!222615 () Bool)

(assert (=> (and b!3853344 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72))))) t!312267) tb!222615))

(declare-fun result!271202 () Bool)

(assert (= result!271202 result!270914))

(assert (=> b!3852362 t!312267))

(declare-fun b_and!287965 () Bool)

(declare-fun tp!1167968 () Bool)

(assert (=> b!3853344 (= tp!1167968 (and (=> t!312261 result!271196) (=> t!312255 result!271190) (=> t!312267 result!271202) (=> t!312265 result!271200) (=> t!312263 result!271198) (=> t!312259 result!271194) (=> t!312253 result!271188) (=> t!312257 result!271192) b_and!287965))))

(declare-fun e!2381796 () Bool)

(declare-fun b!3853343 () Bool)

(declare-fun e!2381799 () Bool)

(declare-fun tp!1167965 () Bool)

(assert (=> b!3853343 (= e!2381796 (and tp!1167965 (inv!54972 (tag!7171 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (inv!54976 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) e!2381799))))

(declare-fun tp!1167966 () Bool)

(declare-fun b!3853342 () Bool)

(declare-fun e!2381795 () Bool)

(assert (=> b!3853342 (= e!2381795 (and (inv!21 (value!200499 (h!46245 (t!311996 (t!311996 suffixTokens!72))))) e!2381796 tp!1167966))))

(assert (=> b!3853344 (= e!2381799 (and tp!1167967 tp!1167968))))

(declare-fun b!3853341 () Bool)

(declare-fun e!2381798 () Bool)

(declare-fun tp!1167969 () Bool)

(assert (=> b!3853341 (= e!2381798 (and (inv!54975 (h!46245 (t!311996 (t!311996 suffixTokens!72)))) e!2381795 tp!1167969))))

(assert (=> b!3852549 (= tp!1167740 e!2381798)))

(assert (= b!3853343 b!3853344))

(assert (= b!3853342 b!3853343))

(assert (= b!3853341 b!3853342))

(assert (= (and b!3852549 (is-Cons!40825 (t!311996 (t!311996 suffixTokens!72)))) b!3853341))

(declare-fun m!4408521 () Bool)

(assert (=> b!3853343 m!4408521))

(declare-fun m!4408523 () Bool)

(assert (=> b!3853343 m!4408523))

(declare-fun m!4408525 () Bool)

(assert (=> b!3853342 m!4408525))

(declare-fun m!4408527 () Bool)

(assert (=> b!3853341 m!4408527))

(declare-fun b_lambda!112633 () Bool)

(assert (= b_lambda!112631 (or (and b!3852580 b_free!103331 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3852109 b_free!103299 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3852552 b_free!103323) (and b!3852102 b_free!103303 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3852098 b_free!103307 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3853344 b_free!103355 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3853294 b_free!103347 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3852563 b_free!103327 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) (and b!3853307 b_free!103351 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))))) b_lambda!112633)))

(declare-fun b_lambda!112635 () Bool)

(assert (= b_lambda!112629 (or (and b!3852102 b_free!103303 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3852098 b_free!103307 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3852109 b_free!103299 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3853294 b_free!103347 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3852552 b_free!103323 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3852563 b_free!103327 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3853344 b_free!103355 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3853307 b_free!103351 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))))) (and b!3852580 b_free!103331) b_lambda!112635)))

(declare-fun b_lambda!112637 () Bool)

(assert (= b_lambda!112597 (or (and b!3852098 b_free!103307 (= (toChars!8590 (transformation!6311 (h!46244 rules!2768))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852109 b_free!103299 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853307 b_free!103351 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852102 b_free!103303 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852552 b_free!103323 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852563 b_free!103327 (= (toChars!8590 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853294 b_free!103347 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852580 b_free!103331 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853344 b_free!103355 (= (toChars!8590 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toChars!8590 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) b_lambda!112637)))

(declare-fun b_lambda!112639 () Bool)

(assert (= b_lambda!112595 (or (and b!3852102 b_free!103301 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 suffixTokens!72)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852580 b_free!103329 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 prefixTokens!80))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853344 b_free!103353 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 suffixTokens!72)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852552 b_free!103321 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 suffixTokens!72))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852563 b_free!103325 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 rules!2768)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852109 b_free!103297 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 prefixTokens!80)))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853294 b_free!103345 (= (toValue!8731 (transformation!6311 (rule!9167 (h!46245 (t!311996 (t!311996 prefixTokens!80)))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3853307 b_free!103349 (= (toValue!8731 (transformation!6311 (h!46244 (t!311995 (t!311995 rules!2768))))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) (and b!3852098 b_free!103305 (= (toValue!8731 (transformation!6311 (h!46244 rules!2768))) (toValue!8731 (transformation!6311 (rule!9167 (_1!23142 (v!39022 lt!1337950))))))) b_lambda!112639)))

(push 1)

(assert (not b!3853091))

(assert (not b!3853264))

(assert b_and!287927)

(assert (not tb!222509))

(assert (not b_lambda!112617))

(assert (not b_lambda!112625))

(assert (not tb!222533))

(assert (not b!3853317))

(assert b_and!287953)

(assert (not b!3853197))

(assert (not b!3853285))

(assert (not d!1142311))

(assert (not b!3853172))

(assert (not b!3853038))

(assert (not bm!282276))

(assert (not b!3853182))

(assert (not b!3853166))

(assert (not b_next!104001))

(assert (not b!3853267))

(assert (not b!3853079))

(assert (not b!3852844))

(assert b_and!287959)

(assert (not b!3852834))

(assert (not b!3853077))

(assert (not d!1142303))

(assert (not b!3853155))

(assert (not b!3853282))

(assert (not b!3853070))

(assert (not b!3852858))

(assert (not b!3853102))

(assert (not b!3852810))

(assert (not b!3853334))

(assert (not b!3852958))

(assert (not d!1142385))

(assert (not b!3853245))

(assert (not b!3853300))

(assert (not b!3853248))

(assert (not d!1142275))

(assert (not b!3853304))

(assert (not b!3853306))

(assert (not b!3853313))

(assert (not bm!282306))

(assert (not d!1142339))

(assert (not d!1142367))

(assert (not d!1142387))

(assert (not b!3852874))

(assert (not b!3853043))

(assert (not b!3853159))

(assert (not d!1142173))

(assert (not d!1142223))

(assert (not bm!282277))

(assert (not b!3853310))

(assert (not b!3853287))

(assert (not d!1142343))

(assert (not b!3853183))

(assert (not b!3853289))

(assert (not b!3853165))

(assert (not b!3853206))

(assert (not b!3853199))

(assert (not b!3852814))

(assert (not b_next!104051))

(assert (not b!3853149))

(assert (not b!3853239))

(assert (not b_lambda!112635))

(assert (not b_next!104031))

(assert (not b!3853201))

(assert (not d!1142371))

(assert (not b!3853170))

(assert (not b!3853216))

(assert (not b!3852823))

(assert (not b!3853318))

(assert b_and!287965)

(assert (not d!1142315))

(assert (not b_next!104057))

(assert b_and!287923)

(assert (not bm!282296))

(assert (not tb!222485))

(assert b_and!287947)

(assert (not b!3853281))

(assert (not d!1142381))

(assert (not d!1142259))

(assert (not b!3852850))

(assert (not b!3853322))

(assert (not bm!282295))

(assert (not b!3853032))

(assert (not b!3853291))

(assert b_and!287963)

(assert (not d!1142365))

(assert (not d!1142231))

(assert (not bm!282307))

(assert (not b!3853035))

(assert (not d!1142143))

(assert (not b!3853054))

(assert (not b!3853198))

(assert (not b!3852995))

(assert (not b!3853030))

(assert (not d!1142235))

(assert (not b!3853214))

(assert (not tb!222473))

(assert (not b!3852956))

(assert (not b!3852987))

(assert (not b!3853218))

(assert (not b!3853020))

(assert (not b!3853276))

(assert (not b!3853033))

(assert (not d!1142297))

(assert (not b!3853040))

(assert (not tb!222521))

(assert (not b_lambda!112623))

(assert (not b!3852843))

(assert (not d!1142359))

(assert (not d!1142397))

(assert (not b!3853056))

(assert (not b!3852980))

(assert (not b!3853311))

(assert (not b!3852368))

(assert (not b!3853061))

(assert (not d!1142291))

(assert (not b!3853241))

(assert (not b!3853224))

(assert (not d!1142147))

(assert (not d!1142419))

(assert (not b!3853108))

(assert (not bm!282281))

(assert (not b!3853305))

(assert (not b!3853132))

(assert (not b!3852941))

(assert (not b!3852964))

(assert (not b!3853314))

(assert (not b_lambda!112639))

(assert b_and!287945)

(assert (not b!3853302))

(assert (not b!3852869))

(assert (not b!3853090))

(assert (not d!1142191))

(assert (not b!3853240))

(assert (not b!3853163))

(assert (not b_lambda!112633))

(assert (not b!3852472))

(assert (not b!3853298))

(assert b_and!287929)

(assert (not b!3852867))

(assert (not b!3852989))

(assert (not b_lambda!112627))

(assert (not b!3853266))

(assert (not b!3853072))

(assert (not b_next!104055))

(assert b_and!287921)

(assert (not b!3853203))

(assert (not b_lambda!112599))

(assert (not b!3853100))

(assert (not b!3853280))

(assert (not b!3852985))

(assert (not b!3853064))

(assert (not b!3853290))

(assert (not d!1142199))

(assert (not b!3852826))

(assert (not tb!222497))

(assert (not b!3853068))

(assert (not b!3853223))

(assert (not d!1142329))

(assert (not b!3852932))

(assert (not b!3852825))

(assert (not b!3853292))

(assert (not b!3853101))

(assert (not b!3853037))

(assert (not b!3853331))

(assert (not d!1142253))

(assert (not b!3852955))

(assert (not b!3852943))

(assert (not b!3852815))

(assert (not bm!282292))

(assert (not d!1142197))

(assert (not b_next!104059))

(assert (not d!1142249))

(assert (not b!3852978))

(assert (not b!3853142))

(assert (not b!3852975))

(assert (not b!3853194))

(assert (not b!3852981))

(assert (not d!1142179))

(assert (not b!3853036))

(assert b_and!287943)

(assert (not b!3853161))

(assert (not b!3852983))

(assert (not b!3853258))

(assert (not d!1142301))

(assert (not b!3853063))

(assert (not bm!282293))

(assert (not d!1142399))

(assert (not b!3853325))

(assert (not b!3853284))

(assert (not d!1142229))

(assert (not b_lambda!112621))

(assert (not b!3853075))

(assert (not b!3853301))

(assert (not d!1142357))

(assert (not d!1142237))

(assert (not d!1142265))

(assert (not b!3853192))

(assert tp_is_empty!19403)

(assert (not b!3852966))

(assert (not b!3853249))

(assert (not b_lambda!112637))

(assert (not b!3853219))

(assert (not b!3853327))

(assert (not b!3852859))

(assert (not d!1142263))

(assert (not b!3852942))

(assert (not d!1142409))

(assert (not b!3853315))

(assert (not b!3852914))

(assert (not b!3853235))

(assert (not b!3853212))

(assert (not b!3852967))

(assert (not bm!282272))

(assert (not b!3853342))

(assert (not b!3853044))

(assert (not b!3853268))

(assert (not d!1142323))

(assert (not b!3852979))

(assert (not bm!282275))

(assert (not b!3853221))

(assert (not bm!282279))

(assert (not b!3852851))

(assert (not d!1142317))

(assert (not b!3853260))

(assert (not b!3853297))

(assert (not b!3853147))

(assert (not b!3853156))

(assert (not d!1142353))

(assert (not b!3852845))

(assert (not b!3852878))

(assert (not d!1142261))

(assert (not b!3853153))

(assert (not b!3853104))

(assert b_and!287925)

(assert (not b_lambda!112615))

(assert (not b!3853337))

(assert (not b!3853222))

(assert (not b_next!104007))

(assert (not b!3852872))

(assert (not b!3852841))

(assert (not b!3853096))

(assert (not b_next!104035))

(assert (not b_next!104025))

(assert (not b!3853080))

(assert (not b_next!104011))

(assert (not b!3853196))

(assert (not b!3853190))

(assert (not b!3853103))

(assert (not b_lambda!112619))

(assert (not bm!282305))

(assert (not d!1142233))

(assert (not b!3853319))

(assert (not b!3853058))

(assert (not d!1142161))

(assert (not d!1142347))

(assert b_and!287955)

(assert (not d!1142279))

(assert (not b!3853261))

(assert (not d!1142335))

(assert (not b!3853247))

(assert (not b!3853226))

(assert (not d!1142225))

(assert (not b!3853278))

(assert (not d!1142325))

(assert (not b!3853041))

(assert (not b!3853275))

(assert (not b!3853191))

(assert (not b!3852984))

(assert (not b!3852855))

(assert (not d!1142313))

(assert b_and!287957)

(assert (not b!3852907))

(assert (not b_next!104003))

(assert (not b_next!104005))

(assert (not b!3853145))

(assert (not b!3852812))

(assert (not b!3852916))

(assert (not d!1142355))

(assert (not b!3853263))

(assert (not b!3852977))

(assert (not b!3853343))

(assert (not b!3852954))

(assert (not b!3853228))

(assert (not b!3853341))

(assert b_and!287961)

(assert (not b!3853084))

(assert (not b!3853169))

(assert (not b!3853270))

(assert (not b!3853049))

(assert (not b!3853107))

(assert (not d!1142171))

(assert (not b!3853051))

(assert (not d!1142155))

(assert (not b!3853112))

(assert (not b!3853045))

(assert (not b_next!104033))

(assert (not d!1142331))

(assert b_and!287919)

(assert (not b!3852913))

(assert (not b!3853309))

(assert (not b!3853151))

(assert (not tb!222449))

(assert (not b!3853105))

(assert (not b!3852923))

(assert (not b!3853093))

(assert (not d!1142327))

(assert (not d!1142341))

(assert (not b_next!104009))

(assert (not b!3853082))

(assert (not b!3853052))

(assert (not b!3852929))

(assert (not b!3853283))

(assert (not b_next!104029))

(assert (not b!3853338))

(assert (not b_next!104053))

(assert (not b!3853262))

(assert (not b!3852802))

(assert (not b!3852832))

(assert (not b!3853329))

(assert (not b!3853340))

(assert (not d!1142267))

(assert (not d!1142395))

(assert (not tb!222461))

(assert (not b!3852857))

(assert (not b!3853339))

(assert (not b!3853288))

(assert (not b!3853066))

(assert (not b!3853321))

(assert (not b!3852939))

(assert (not d!1142141))

(assert (not b_next!104027))

(assert (not bm!282278))

(assert (not d!1142213))

(assert (not b!3853234))

(assert (not b!3853330))

(assert (not bm!282303))

(assert (not b!3853293))

(assert (not b!3853034))

(assert (not bm!282273))

(assert (not b!3852838))

(assert b_and!287949)

(assert (not b!3853174))

(assert (not b!3853176))

(assert (not bm!282282))

(assert (not b!3852931))

(assert (not b!3852870))

(assert (not b!3853110))

(assert (not b!3852996))

(assert (not b!3853335))

(assert (not b!3853202))

(assert (not b!3853210))

(assert (not d!1142421))

(assert (not d!1142281))

(assert (not b!3853244))

(assert (not b!3853148))

(assert (not b!3853296))

(assert (not d!1142389))

(assert (not b!3853259))

(assert (not b!3853099))

(assert (not bm!282280))

(assert (not b!3853274))

(assert (not d!1142423))

(assert b_and!287951)

(assert (not b!3853333))

(assert (not b!3853323))

(assert (not b!3852836))

(assert (not b!3853204))

(assert (not b!3853272))

(assert (not b!3852803))

(assert (not b!3853271))

(assert (not d!1142425))

(assert (not b!3852865))

(assert (not b!3852993))

(assert (not b!3853243))

(assert (not b!3853279))

(assert (not b!3853074))

(assert (not b!3853060))

(assert (not b!3853232))

(assert (not b!3853095))

(assert (not b!3853208))

(assert (not b_next!104049))

(assert (not b!3852821))

(assert (not b!3852839))

(assert (not b!3852960))

(assert (not b!3852499))

(assert (not b!3852976))

(assert (not b!3853303))

(assert (not bm!282274))

(assert (not b!3853180))

(assert (not b_lambda!112601))

(assert (not b!3853144))

(assert (not b!3852876))

(assert (not b!3853200))

(assert (not b!3853326))

(assert (not b!3853047))

(check-sat)

(pop 1)

(push 1)

(assert b_and!287945)

(assert (not b_next!104059))

(assert b_and!287943)

(assert b_and!287925)

(assert b_and!287955)

(assert (not b_next!104027))

(assert b_and!287949)

(assert b_and!287951)

(assert (not b_next!104049))

(assert b_and!287953)

(assert b_and!287927)

(assert (not b_next!104001))

(assert b_and!287959)

(assert (not b_next!104031))

(assert (not b_next!104051))

(assert b_and!287965)

(assert (not b_next!104057))

(assert b_and!287923)

(assert b_and!287947)

(assert b_and!287963)

(assert b_and!287929)

(assert (not b_next!104055))

(assert b_and!287921)

(assert (not b_next!104007))

(assert (not b_next!104011))

(assert (not b_next!104035))

(assert (not b_next!104025))

(assert b_and!287957)

(assert (not b_next!104003))

(assert (not b_next!104005))

(assert b_and!287961)

(assert b_and!287919)

(assert (not b_next!104033))

(assert (not b_next!104029))

(assert (not b_next!104053))

(assert (not b_next!104009))

(check-sat)

(pop 1)

