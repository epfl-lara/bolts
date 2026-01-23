; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!371254 () Bool)

(assert start!371254)

(declare-fun b!3949261 () Bool)

(declare-fun b_free!108401 () Bool)

(declare-fun b_next!109105 () Bool)

(assert (=> b!3949261 (= b_free!108401 (not b_next!109105))))

(declare-fun tp!1202777 () Bool)

(declare-fun b_and!302423 () Bool)

(assert (=> b!3949261 (= tp!1202777 b_and!302423)))

(declare-fun b_free!108403 () Bool)

(declare-fun b_next!109107 () Bool)

(assert (=> b!3949261 (= b_free!108403 (not b_next!109107))))

(declare-fun tp!1202768 () Bool)

(declare-fun b_and!302425 () Bool)

(assert (=> b!3949261 (= tp!1202768 b_and!302425)))

(declare-fun b!3949268 () Bool)

(declare-fun b_free!108405 () Bool)

(declare-fun b_next!109109 () Bool)

(assert (=> b!3949268 (= b_free!108405 (not b_next!109109))))

(declare-fun tp!1202782 () Bool)

(declare-fun b_and!302427 () Bool)

(assert (=> b!3949268 (= tp!1202782 b_and!302427)))

(declare-fun b_free!108407 () Bool)

(declare-fun b_next!109111 () Bool)

(assert (=> b!3949268 (= b_free!108407 (not b_next!109111))))

(declare-fun tp!1202772 () Bool)

(declare-fun b_and!302429 () Bool)

(assert (=> b!3949268 (= tp!1202772 b_and!302429)))

(declare-fun b!3949273 () Bool)

(declare-fun b_free!108409 () Bool)

(declare-fun b_next!109113 () Bool)

(assert (=> b!3949273 (= b_free!108409 (not b_next!109113))))

(declare-fun tp!1202771 () Bool)

(declare-fun b_and!302431 () Bool)

(assert (=> b!3949273 (= tp!1202771 b_and!302431)))

(declare-fun b_free!108411 () Bool)

(declare-fun b_next!109115 () Bool)

(assert (=> b!3949273 (= b_free!108411 (not b_next!109115))))

(declare-fun tp!1202778 () Bool)

(declare-fun b_and!302433 () Bool)

(assert (=> b!3949273 (= tp!1202778 b_and!302433)))

(declare-fun e!2444086 () Bool)

(declare-fun b!3949255 () Bool)

(declare-fun e!2444099 () Bool)

(declare-fun tp!1202783 () Bool)

(declare-datatypes ((String!47704 0))(
  ( (String!47705 (value!207769 String)) )
))
(declare-datatypes ((C!23130 0))(
  ( (C!23131 (val!13659 Int)) )
))
(declare-datatypes ((List!42097 0))(
  ( (Nil!41973) (Cons!41973 (h!47393 C!23130) (t!328338 List!42097)) )
))
(declare-datatypes ((IArray!25561 0))(
  ( (IArray!25562 (innerList!12838 List!42097)) )
))
(declare-datatypes ((Conc!12778 0))(
  ( (Node!12778 (left!31940 Conc!12778) (right!32270 Conc!12778) (csize!25786 Int) (cheight!12989 Int)) (Leaf!19769 (xs!16084 IArray!25561) (csize!25787 Int)) (Empty!12778) )
))
(declare-datatypes ((BalanceConc!25150 0))(
  ( (BalanceConc!25151 (c!685829 Conc!12778)) )
))
(declare-datatypes ((List!42098 0))(
  ( (Nil!41974) (Cons!41974 (h!47394 (_ BitVec 16)) (t!328339 List!42098)) )
))
(declare-datatypes ((TokenValue!6797 0))(
  ( (FloatLiteralValue!13594 (text!48024 List!42098)) (TokenValueExt!6796 (__x!25811 Int)) (Broken!33985 (value!207770 List!42098)) (Object!6920) (End!6797) (Def!6797) (Underscore!6797) (Match!6797) (Else!6797) (Error!6797) (Case!6797) (If!6797) (Extends!6797) (Abstract!6797) (Class!6797) (Val!6797) (DelimiterValue!13594 (del!6857 List!42098)) (KeywordValue!6803 (value!207771 List!42098)) (CommentValue!13594 (value!207772 List!42098)) (WhitespaceValue!13594 (value!207773 List!42098)) (IndentationValue!6797 (value!207774 List!42098)) (String!47706) (Int32!6797) (Broken!33986 (value!207775 List!42098)) (Boolean!6798) (Unit!60496) (OperatorValue!6800 (op!6857 List!42098)) (IdentifierValue!13594 (value!207776 List!42098)) (IdentifierValue!13595 (value!207777 List!42098)) (WhitespaceValue!13595 (value!207778 List!42098)) (True!13594) (False!13594) (Broken!33987 (value!207779 List!42098)) (Broken!33988 (value!207780 List!42098)) (True!13595) (RightBrace!6797) (RightBracket!6797) (Colon!6797) (Null!6797) (Comma!6797) (LeftBracket!6797) (False!13595) (LeftBrace!6797) (ImaginaryLiteralValue!6797 (text!48025 List!42098)) (StringLiteralValue!20391 (value!207781 List!42098)) (EOFValue!6797 (value!207782 List!42098)) (IdentValue!6797 (value!207783 List!42098)) (DelimiterValue!13595 (value!207784 List!42098)) (DedentValue!6797 (value!207785 List!42098)) (NewLineValue!6797 (value!207786 List!42098)) (IntegerValue!20391 (value!207787 (_ BitVec 32)) (text!48026 List!42098)) (IntegerValue!20392 (value!207788 Int) (text!48027 List!42098)) (Times!6797) (Or!6797) (Equal!6797) (Minus!6797) (Broken!33989 (value!207789 List!42098)) (And!6797) (Div!6797) (LessEqual!6797) (Mod!6797) (Concat!18269) (Not!6797) (Plus!6797) (SpaceValue!6797 (value!207790 List!42098)) (IntegerValue!20393 (value!207791 Int) (text!48028 List!42098)) (StringLiteralValue!20392 (text!48029 List!42098)) (FloatLiteralValue!13595 (text!48030 List!42098)) (BytesLiteralValue!6797 (value!207792 List!42098)) (CommentValue!13595 (value!207793 List!42098)) (StringLiteralValue!20393 (value!207794 List!42098)) (ErrorTokenValue!6797 (msg!6858 List!42098)) )
))
(declare-datatypes ((Regex!11472 0))(
  ( (ElementMatch!11472 (c!685830 C!23130)) (Concat!18270 (regOne!23456 Regex!11472) (regTwo!23456 Regex!11472)) (EmptyExpr!11472) (Star!11472 (reg!11801 Regex!11472)) (EmptyLang!11472) (Union!11472 (regOne!23457 Regex!11472) (regTwo!23457 Regex!11472)) )
))
(declare-datatypes ((TokenValueInjection!13022 0))(
  ( (TokenValueInjection!13023 (toValue!9043 Int) (toChars!8902 Int)) )
))
(declare-datatypes ((Rule!12934 0))(
  ( (Rule!12935 (regex!6567 Regex!11472) (tag!7427 String!47704) (isSeparator!6567 Bool) (transformation!6567 TokenValueInjection!13022)) )
))
(declare-datatypes ((List!42099 0))(
  ( (Nil!41975) (Cons!41975 (h!47395 Rule!12934) (t!328340 List!42099)) )
))
(declare-fun rules!2768 () List!42099)

(declare-fun inv!56201 (String!47704) Bool)

(declare-fun inv!56204 (TokenValueInjection!13022) Bool)

(assert (=> b!3949255 (= e!2444099 (and tp!1202783 (inv!56201 (tag!7427 (h!47395 rules!2768))) (inv!56204 (transformation!6567 (h!47395 rules!2768))) e!2444086))))

(declare-fun tp!1202769 () Bool)

(declare-fun e!2444084 () Bool)

(declare-fun e!2444083 () Bool)

(declare-fun b!3949256 () Bool)

(declare-datatypes ((Token!12272 0))(
  ( (Token!12273 (value!207795 TokenValue!6797) (rule!9533 Rule!12934) (size!31462 Int) (originalCharacters!7167 List!42097)) )
))
(declare-datatypes ((List!42100 0))(
  ( (Nil!41976) (Cons!41976 (h!47396 Token!12272) (t!328341 List!42100)) )
))
(declare-fun suffixTokens!72 () List!42100)

(declare-fun inv!21 (TokenValue!6797) Bool)

(assert (=> b!3949256 (= e!2444084 (and (inv!21 (value!207795 (h!47396 suffixTokens!72))) e!2444083 tp!1202769))))

(declare-fun tp!1202780 () Bool)

(declare-fun e!2444087 () Bool)

(declare-fun prefixTokens!80 () List!42100)

(declare-fun b!3949257 () Bool)

(declare-fun e!2444103 () Bool)

(assert (=> b!3949257 (= e!2444087 (and tp!1202780 (inv!56201 (tag!7427 (rule!9533 (h!47396 prefixTokens!80)))) (inv!56204 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) e!2444103))))

(declare-fun b!3949258 () Bool)

(declare-fun res!1597938 () Bool)

(declare-fun e!2444090 () Bool)

(assert (=> b!3949258 (=> (not res!1597938) (not e!2444090))))

(declare-datatypes ((LexerInterface!6156 0))(
  ( (LexerInterfaceExt!6153 (__x!25812 Int)) (Lexer!6154) )
))
(declare-fun thiss!20629 () LexerInterface!6156)

(declare-fun rulesInvariant!5499 (LexerInterface!6156 List!42099) Bool)

(assert (=> b!3949258 (= res!1597938 (rulesInvariant!5499 thiss!20629 rules!2768))))

(declare-fun b!3949259 () Bool)

(declare-fun e!2444100 () Bool)

(declare-fun tp!1202775 () Bool)

(assert (=> b!3949259 (= e!2444100 (and e!2444099 tp!1202775))))

(declare-fun b!3949260 () Bool)

(declare-fun e!2444085 () Bool)

(declare-fun tp_is_empty!19915 () Bool)

(declare-fun tp!1202767 () Bool)

(assert (=> b!3949260 (= e!2444085 (and tp_is_empty!19915 tp!1202767))))

(assert (=> b!3949261 (= e!2444103 (and tp!1202777 tp!1202768))))

(declare-fun b!3949262 () Bool)

(declare-fun e!2444094 () Bool)

(declare-datatypes ((tuple2!41258 0))(
  ( (tuple2!41259 (_1!23763 Token!12272) (_2!23763 List!42097)) )
))
(declare-datatypes ((Option!8987 0))(
  ( (None!8986) (Some!8986 (v!39326 tuple2!41258)) )
))
(declare-fun lt!1380464 () Option!8987)

(declare-fun size!31463 (List!42097) Int)

(assert (=> b!3949262 (= e!2444094 (= (size!31462 (_1!23763 (v!39326 lt!1380464))) (size!31463 (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464))))))))

(declare-fun e!2444101 () Bool)

(declare-fun lt!1380468 () TokenValue!6797)

(declare-fun b!3949263 () Bool)

(declare-fun lt!1380469 () Int)

(declare-fun lt!1380466 () List!42097)

(declare-fun inv!56205 (Token!12272) Bool)

(assert (=> b!3949263 (= e!2444101 (not (inv!56205 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))))

(assert (=> b!3949263 (and (= (size!31462 (_1!23763 (v!39326 lt!1380464))) lt!1380469) (= (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464))) lt!1380466))))

(assert (=> b!3949263 (= lt!1380469 (size!31463 lt!1380466))))

(assert (=> b!3949263 e!2444094))

(declare-fun res!1597942 () Bool)

(assert (=> b!3949263 (=> (not res!1597942) (not e!2444094))))

(assert (=> b!3949263 (= res!1597942 (= (value!207795 (_1!23763 (v!39326 lt!1380464))) lt!1380468))))

(declare-fun apply!9798 (TokenValueInjection!13022 BalanceConc!25150) TokenValue!6797)

(declare-fun seqFromList!4826 (List!42097) BalanceConc!25150)

(assert (=> b!3949263 (= lt!1380468 (apply!9798 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))) (seqFromList!4826 lt!1380466)))))

(declare-fun lt!1380470 () List!42097)

(assert (=> b!3949263 (= (_2!23763 (v!39326 lt!1380464)) lt!1380470)))

(declare-datatypes ((Unit!60497 0))(
  ( (Unit!60498) )
))
(declare-fun lt!1380471 () Unit!60497)

(declare-fun lt!1380465 () List!42097)

(declare-fun lemmaSamePrefixThenSameSuffix!1865 (List!42097 List!42097 List!42097 List!42097 List!42097) Unit!60497)

(assert (=> b!3949263 (= lt!1380471 (lemmaSamePrefixThenSameSuffix!1865 lt!1380466 (_2!23763 (v!39326 lt!1380464)) lt!1380466 lt!1380470 lt!1380465))))

(declare-fun getSuffix!2107 (List!42097 List!42097) List!42097)

(assert (=> b!3949263 (= lt!1380470 (getSuffix!2107 lt!1380465 lt!1380466))))

(declare-fun isPrefix!3656 (List!42097 List!42097) Bool)

(declare-fun ++!10891 (List!42097 List!42097) List!42097)

(assert (=> b!3949263 (isPrefix!3656 lt!1380466 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))

(declare-fun lt!1380463 () Unit!60497)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2515 (List!42097 List!42097) Unit!60497)

(assert (=> b!3949263 (= lt!1380463 (lemmaConcatTwoListThenFirstIsPrefix!2515 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))

(declare-fun list!15591 (BalanceConc!25150) List!42097)

(declare-fun charsOf!4385 (Token!12272) BalanceConc!25150)

(assert (=> b!3949263 (= lt!1380466 (list!15591 (charsOf!4385 (_1!23763 (v!39326 lt!1380464)))))))

(declare-fun ruleValid!2509 (LexerInterface!6156 Rule!12934) Bool)

(assert (=> b!3949263 (ruleValid!2509 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464))))))

(declare-fun lt!1380467 () Unit!60497)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1585 (LexerInterface!6156 Rule!12934 List!42099) Unit!60497)

(assert (=> b!3949263 (= lt!1380467 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1585 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464))) rules!2768))))

(declare-fun lt!1380462 () Unit!60497)

(declare-fun lemmaCharactersSize!1220 (Token!12272) Unit!60497)

(assert (=> b!3949263 (= lt!1380462 (lemmaCharactersSize!1220 (_1!23763 (v!39326 lt!1380464))))))

(declare-fun tp!1202781 () Bool)

(declare-fun b!3949264 () Bool)

(declare-fun e!2444093 () Bool)

(assert (=> b!3949264 (= e!2444083 (and tp!1202781 (inv!56201 (tag!7427 (rule!9533 (h!47396 suffixTokens!72)))) (inv!56204 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) e!2444093))))

(declare-fun b!3949265 () Bool)

(declare-fun res!1597944 () Bool)

(declare-fun e!2444095 () Bool)

(assert (=> b!3949265 (=> (not res!1597944) (not e!2444095))))

(declare-fun suffixResult!91 () List!42097)

(declare-fun suffix!1176 () List!42097)

(declare-datatypes ((tuple2!41260 0))(
  ( (tuple2!41261 (_1!23764 List!42100) (_2!23764 List!42097)) )
))
(declare-fun lexList!1924 (LexerInterface!6156 List!42099 List!42097) tuple2!41260)

(assert (=> b!3949265 (= res!1597944 (= (lexList!1924 thiss!20629 rules!2768 suffix!1176) (tuple2!41261 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3949267 () Bool)

(declare-fun res!1597943 () Bool)

(assert (=> b!3949267 (=> (not res!1597943) (not e!2444090))))

(declare-fun isEmpty!25063 (List!42099) Bool)

(assert (=> b!3949267 (= res!1597943 (not (isEmpty!25063 rules!2768)))))

(assert (=> b!3949268 (= e!2444093 (and tp!1202782 tp!1202772))))

(declare-fun b!3949269 () Bool)

(declare-fun res!1597937 () Bool)

(assert (=> b!3949269 (=> (not res!1597937) (not e!2444090))))

(declare-fun isEmpty!25064 (List!42100) Bool)

(assert (=> b!3949269 (= res!1597937 (not (isEmpty!25064 prefixTokens!80)))))

(declare-fun b!3949270 () Bool)

(declare-fun e!2444088 () Bool)

(declare-fun tp!1202774 () Bool)

(assert (=> b!3949270 (= e!2444088 (and tp_is_empty!19915 tp!1202774))))

(declare-fun b!3949271 () Bool)

(assert (=> b!3949271 (= e!2444090 e!2444095)))

(declare-fun res!1597939 () Bool)

(assert (=> b!3949271 (=> (not res!1597939) (not e!2444095))))

(declare-fun ++!10892 (List!42100 List!42100) List!42100)

(assert (=> b!3949271 (= res!1597939 (= (lexList!1924 thiss!20629 rules!2768 lt!1380465) (tuple2!41261 (++!10892 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42097)

(assert (=> b!3949271 (= lt!1380465 (++!10891 prefix!426 suffix!1176))))

(declare-fun res!1597941 () Bool)

(assert (=> start!371254 (=> (not res!1597941) (not e!2444090))))

(assert (=> start!371254 (= res!1597941 (is-Lexer!6154 thiss!20629))))

(assert (=> start!371254 e!2444090))

(declare-fun e!2444104 () Bool)

(assert (=> start!371254 e!2444104))

(assert (=> start!371254 true))

(assert (=> start!371254 e!2444088))

(assert (=> start!371254 e!2444100))

(declare-fun e!2444096 () Bool)

(assert (=> start!371254 e!2444096))

(declare-fun e!2444092 () Bool)

(assert (=> start!371254 e!2444092))

(assert (=> start!371254 e!2444085))

(declare-fun b!3949266 () Bool)

(assert (=> b!3949266 (= e!2444095 e!2444101)))

(declare-fun res!1597945 () Bool)

(assert (=> b!3949266 (=> (not res!1597945) (not e!2444101))))

(assert (=> b!3949266 (= res!1597945 (is-Some!8986 lt!1380464))))

(declare-fun maxPrefix!3460 (LexerInterface!6156 List!42099 List!42097) Option!8987)

(assert (=> b!3949266 (= lt!1380464 (maxPrefix!3460 thiss!20629 rules!2768 lt!1380465))))

(declare-fun tp!1202776 () Bool)

(declare-fun b!3949272 () Bool)

(declare-fun e!2444091 () Bool)

(assert (=> b!3949272 (= e!2444091 (and (inv!21 (value!207795 (h!47396 prefixTokens!80))) e!2444087 tp!1202776))))

(assert (=> b!3949273 (= e!2444086 (and tp!1202771 tp!1202778))))

(declare-fun b!3949274 () Bool)

(declare-fun tp!1202773 () Bool)

(assert (=> b!3949274 (= e!2444104 (and tp_is_empty!19915 tp!1202773))))

(declare-fun b!3949275 () Bool)

(declare-fun tp!1202770 () Bool)

(assert (=> b!3949275 (= e!2444092 (and (inv!56205 (h!47396 suffixTokens!72)) e!2444084 tp!1202770))))

(declare-fun tp!1202779 () Bool)

(declare-fun b!3949276 () Bool)

(assert (=> b!3949276 (= e!2444096 (and (inv!56205 (h!47396 prefixTokens!80)) e!2444091 tp!1202779))))

(declare-fun b!3949277 () Bool)

(declare-fun res!1597940 () Bool)

(assert (=> b!3949277 (=> (not res!1597940) (not e!2444090))))

(declare-fun isEmpty!25065 (List!42097) Bool)

(assert (=> b!3949277 (= res!1597940 (not (isEmpty!25065 prefix!426)))))

(assert (= (and start!371254 res!1597941) b!3949267))

(assert (= (and b!3949267 res!1597943) b!3949258))

(assert (= (and b!3949258 res!1597938) b!3949269))

(assert (= (and b!3949269 res!1597937) b!3949277))

(assert (= (and b!3949277 res!1597940) b!3949271))

(assert (= (and b!3949271 res!1597939) b!3949265))

(assert (= (and b!3949265 res!1597944) b!3949266))

(assert (= (and b!3949266 res!1597945) b!3949263))

(assert (= (and b!3949263 res!1597942) b!3949262))

(assert (= (and start!371254 (is-Cons!41973 suffixResult!91)) b!3949274))

(assert (= (and start!371254 (is-Cons!41973 suffix!1176)) b!3949270))

(assert (= b!3949255 b!3949273))

(assert (= b!3949259 b!3949255))

(assert (= (and start!371254 (is-Cons!41975 rules!2768)) b!3949259))

(assert (= b!3949257 b!3949261))

(assert (= b!3949272 b!3949257))

(assert (= b!3949276 b!3949272))

(assert (= (and start!371254 (is-Cons!41976 prefixTokens!80)) b!3949276))

(assert (= b!3949264 b!3949268))

(assert (= b!3949256 b!3949264))

(assert (= b!3949275 b!3949256))

(assert (= (and start!371254 (is-Cons!41976 suffixTokens!72)) b!3949275))

(assert (= (and start!371254 (is-Cons!41973 prefix!426)) b!3949260))

(declare-fun m!4518069 () Bool)

(assert (=> b!3949275 m!4518069))

(declare-fun m!4518071 () Bool)

(assert (=> b!3949267 m!4518071))

(declare-fun m!4518073 () Bool)

(assert (=> b!3949271 m!4518073))

(declare-fun m!4518075 () Bool)

(assert (=> b!3949271 m!4518075))

(declare-fun m!4518077 () Bool)

(assert (=> b!3949271 m!4518077))

(declare-fun m!4518079 () Bool)

(assert (=> b!3949265 m!4518079))

(declare-fun m!4518081 () Bool)

(assert (=> b!3949269 m!4518081))

(declare-fun m!4518083 () Bool)

(assert (=> b!3949258 m!4518083))

(declare-fun m!4518085 () Bool)

(assert (=> b!3949272 m!4518085))

(declare-fun m!4518087 () Bool)

(assert (=> b!3949255 m!4518087))

(declare-fun m!4518089 () Bool)

(assert (=> b!3949255 m!4518089))

(declare-fun m!4518091 () Bool)

(assert (=> b!3949256 m!4518091))

(declare-fun m!4518093 () Bool)

(assert (=> b!3949264 m!4518093))

(declare-fun m!4518095 () Bool)

(assert (=> b!3949264 m!4518095))

(declare-fun m!4518097 () Bool)

(assert (=> b!3949276 m!4518097))

(declare-fun m!4518099 () Bool)

(assert (=> b!3949262 m!4518099))

(declare-fun m!4518101 () Bool)

(assert (=> b!3949263 m!4518101))

(declare-fun m!4518103 () Bool)

(assert (=> b!3949263 m!4518103))

(declare-fun m!4518105 () Bool)

(assert (=> b!3949263 m!4518105))

(assert (=> b!3949263 m!4518101))

(declare-fun m!4518107 () Bool)

(assert (=> b!3949263 m!4518107))

(declare-fun m!4518109 () Bool)

(assert (=> b!3949263 m!4518109))

(declare-fun m!4518111 () Bool)

(assert (=> b!3949263 m!4518111))

(declare-fun m!4518113 () Bool)

(assert (=> b!3949263 m!4518113))

(declare-fun m!4518115 () Bool)

(assert (=> b!3949263 m!4518115))

(declare-fun m!4518117 () Bool)

(assert (=> b!3949263 m!4518117))

(declare-fun m!4518119 () Bool)

(assert (=> b!3949263 m!4518119))

(assert (=> b!3949263 m!4518109))

(assert (=> b!3949263 m!4518113))

(declare-fun m!4518121 () Bool)

(assert (=> b!3949263 m!4518121))

(declare-fun m!4518123 () Bool)

(assert (=> b!3949263 m!4518123))

(declare-fun m!4518125 () Bool)

(assert (=> b!3949263 m!4518125))

(declare-fun m!4518127 () Bool)

(assert (=> b!3949263 m!4518127))

(declare-fun m!4518129 () Bool)

(assert (=> b!3949266 m!4518129))

(declare-fun m!4518131 () Bool)

(assert (=> b!3949277 m!4518131))

(declare-fun m!4518133 () Bool)

(assert (=> b!3949257 m!4518133))

(declare-fun m!4518135 () Bool)

(assert (=> b!3949257 m!4518135))

(push 1)

(assert (not b!3949271))

(assert b_and!302427)

(assert (not b!3949259))

(assert (not b!3949264))

(assert (not b!3949270))

(assert (not b_next!109105))

(assert (not b!3949265))

(assert (not b!3949256))

(assert (not b!3949267))

(assert (not b!3949257))

(assert (not b!3949276))

(assert (not b!3949262))

(assert (not b!3949255))

(assert (not b_next!109115))

(assert b_and!302425)

(assert (not b!3949274))

(assert (not b!3949263))

(assert b_and!302431)

(assert b_and!302433)

(assert (not b!3949269))

(assert (not b_next!109109))

(assert (not b_next!109107))

(assert (not b!3949272))

(assert (not b!3949266))

(assert (not b_next!109113))

(assert (not b!3949275))

(assert b_and!302423)

(assert (not b!3949277))

(assert (not b!3949260))

(assert b_and!302429)

(assert (not b!3949258))

(assert (not b_next!109111))

(assert tp_is_empty!19915)

(check-sat)

(pop 1)

(push 1)

(assert b_and!302427)

(assert (not b_next!109115))

(assert b_and!302425)

(assert b_and!302431)

(assert b_and!302433)

(assert (not b_next!109105))

(assert b_and!302429)

(assert (not b_next!109111))

(assert (not b_next!109109))

(assert (not b_next!109107))

(assert (not b_next!109113))

(assert b_and!302423)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1171367 () Bool)

(declare-fun fromListB!2233 (List!42097) BalanceConc!25150)

(assert (=> d!1171367 (= (seqFromList!4826 lt!1380466) (fromListB!2233 lt!1380466))))

(declare-fun bs!586985 () Bool)

(assert (= bs!586985 d!1171367))

(declare-fun m!4518205 () Bool)

(assert (=> bs!586985 m!4518205))

(assert (=> b!3949263 d!1171367))

(declare-fun d!1171369 () Bool)

(declare-fun lt!1380504 () BalanceConc!25150)

(assert (=> d!1171369 (= (list!15591 lt!1380504) (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464))))))

(declare-fun dynLambda!17980 (Int TokenValue!6797) BalanceConc!25150)

(assert (=> d!1171369 (= lt!1380504 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))) (value!207795 (_1!23763 (v!39326 lt!1380464)))))))

(assert (=> d!1171369 (= (charsOf!4385 (_1!23763 (v!39326 lt!1380464))) lt!1380504)))

(declare-fun b_lambda!115531 () Bool)

(assert (=> (not b_lambda!115531) (not d!1171369)))

(declare-fun t!328347 () Bool)

(declare-fun tb!237509 () Bool)

(assert (=> (and b!3949261 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328347) tb!237509))

(declare-fun b!3949351 () Bool)

(declare-fun e!2444177 () Bool)

(declare-fun tp!1202837 () Bool)

(declare-fun inv!56208 (Conc!12778) Bool)

(assert (=> b!3949351 (= e!2444177 (and (inv!56208 (c!685829 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))) (value!207795 (_1!23763 (v!39326 lt!1380464)))))) tp!1202837))))

(declare-fun result!287650 () Bool)

(declare-fun inv!56209 (BalanceConc!25150) Bool)

(assert (=> tb!237509 (= result!287650 (and (inv!56209 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))) (value!207795 (_1!23763 (v!39326 lt!1380464))))) e!2444177))))

(assert (= tb!237509 b!3949351))

(declare-fun m!4518207 () Bool)

(assert (=> b!3949351 m!4518207))

(declare-fun m!4518209 () Bool)

(assert (=> tb!237509 m!4518209))

(assert (=> d!1171369 t!328347))

(declare-fun b_and!302447 () Bool)

(assert (= b_and!302425 (and (=> t!328347 result!287650) b_and!302447)))

(declare-fun t!328349 () Bool)

(declare-fun tb!237511 () Bool)

(assert (=> (and b!3949268 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328349) tb!237511))

(declare-fun result!287654 () Bool)

(assert (= result!287654 result!287650))

(assert (=> d!1171369 t!328349))

(declare-fun b_and!302449 () Bool)

(assert (= b_and!302429 (and (=> t!328349 result!287654) b_and!302449)))

(declare-fun t!328351 () Bool)

(declare-fun tb!237513 () Bool)

(assert (=> (and b!3949273 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328351) tb!237513))

(declare-fun result!287656 () Bool)

(assert (= result!287656 result!287650))

(assert (=> d!1171369 t!328351))

(declare-fun b_and!302451 () Bool)

(assert (= b_and!302433 (and (=> t!328351 result!287656) b_and!302451)))

(declare-fun m!4518211 () Bool)

(assert (=> d!1171369 m!4518211))

(declare-fun m!4518213 () Bool)

(assert (=> d!1171369 m!4518213))

(assert (=> b!3949263 d!1171369))

(declare-fun lt!1380507 () List!42097)

(declare-fun e!2444188 () Bool)

(declare-fun b!3949373 () Bool)

(assert (=> b!3949373 (= e!2444188 (or (not (= (_2!23763 (v!39326 lt!1380464)) Nil!41973)) (= lt!1380507 lt!1380466)))))

(declare-fun b!3949372 () Bool)

(declare-fun res!1597984 () Bool)

(assert (=> b!3949372 (=> (not res!1597984) (not e!2444188))))

(assert (=> b!3949372 (= res!1597984 (= (size!31463 lt!1380507) (+ (size!31463 lt!1380466) (size!31463 (_2!23763 (v!39326 lt!1380464))))))))

(declare-fun b!3949370 () Bool)

(declare-fun e!2444189 () List!42097)

(assert (=> b!3949370 (= e!2444189 (_2!23763 (v!39326 lt!1380464)))))

(declare-fun d!1171373 () Bool)

(assert (=> d!1171373 e!2444188))

(declare-fun res!1597983 () Bool)

(assert (=> d!1171373 (=> (not res!1597983) (not e!2444188))))

(declare-fun content!6362 (List!42097) (Set C!23130))

(assert (=> d!1171373 (= res!1597983 (= (content!6362 lt!1380507) (set.union (content!6362 lt!1380466) (content!6362 (_2!23763 (v!39326 lt!1380464))))))))

(assert (=> d!1171373 (= lt!1380507 e!2444189)))

(declare-fun c!685840 () Bool)

(assert (=> d!1171373 (= c!685840 (is-Nil!41973 lt!1380466))))

(assert (=> d!1171373 (= (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))) lt!1380507)))

(declare-fun b!3949371 () Bool)

(assert (=> b!3949371 (= e!2444189 (Cons!41973 (h!47393 lt!1380466) (++!10891 (t!328338 lt!1380466) (_2!23763 (v!39326 lt!1380464)))))))

(assert (= (and d!1171373 c!685840) b!3949370))

(assert (= (and d!1171373 (not c!685840)) b!3949371))

(assert (= (and d!1171373 res!1597983) b!3949372))

(assert (= (and b!3949372 res!1597984) b!3949373))

(declare-fun m!4518215 () Bool)

(assert (=> b!3949372 m!4518215))

(assert (=> b!3949372 m!4518117))

(declare-fun m!4518217 () Bool)

(assert (=> b!3949372 m!4518217))

(declare-fun m!4518219 () Bool)

(assert (=> d!1171373 m!4518219))

(declare-fun m!4518221 () Bool)

(assert (=> d!1171373 m!4518221))

(declare-fun m!4518223 () Bool)

(assert (=> d!1171373 m!4518223))

(declare-fun m!4518225 () Bool)

(assert (=> b!3949371 m!4518225))

(assert (=> b!3949263 d!1171373))

(declare-fun d!1171375 () Bool)

(declare-fun lt!1380510 () Int)

(assert (=> d!1171375 (>= lt!1380510 0)))

(declare-fun e!2444195 () Int)

(assert (=> d!1171375 (= lt!1380510 e!2444195)))

(declare-fun c!685845 () Bool)

(assert (=> d!1171375 (= c!685845 (is-Nil!41973 lt!1380466))))

(assert (=> d!1171375 (= (size!31463 lt!1380466) lt!1380510)))

(declare-fun b!3949383 () Bool)

(assert (=> b!3949383 (= e!2444195 0)))

(declare-fun b!3949384 () Bool)

(assert (=> b!3949384 (= e!2444195 (+ 1 (size!31463 (t!328338 lt!1380466))))))

(assert (= (and d!1171375 c!685845) b!3949383))

(assert (= (and d!1171375 (not c!685845)) b!3949384))

(declare-fun m!4518227 () Bool)

(assert (=> b!3949384 m!4518227))

(assert (=> b!3949263 d!1171375))

(declare-fun d!1171377 () Bool)

(assert (=> d!1171377 (isPrefix!3656 lt!1380466 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))

(declare-fun lt!1380513 () Unit!60497)

(declare-fun choose!23568 (List!42097 List!42097) Unit!60497)

(assert (=> d!1171377 (= lt!1380513 (choose!23568 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))

(assert (=> d!1171377 (= (lemmaConcatTwoListThenFirstIsPrefix!2515 lt!1380466 (_2!23763 (v!39326 lt!1380464))) lt!1380513)))

(declare-fun bs!586986 () Bool)

(assert (= bs!586986 d!1171377))

(assert (=> bs!586986 m!4518113))

(assert (=> bs!586986 m!4518113))

(assert (=> bs!586986 m!4518115))

(declare-fun m!4518241 () Bool)

(assert (=> bs!586986 m!4518241))

(assert (=> b!3949263 d!1171377))

(declare-fun d!1171383 () Bool)

(assert (=> d!1171383 (= (size!31462 (_1!23763 (v!39326 lt!1380464))) (size!31463 (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464)))))))

(declare-fun Unit!60502 () Unit!60497)

(assert (=> d!1171383 (= (lemmaCharactersSize!1220 (_1!23763 (v!39326 lt!1380464))) Unit!60502)))

(declare-fun bs!586987 () Bool)

(assert (= bs!586987 d!1171383))

(assert (=> bs!586987 m!4518099))

(assert (=> b!3949263 d!1171383))

(declare-fun d!1171385 () Bool)

(declare-fun res!1597991 () Bool)

(declare-fun e!2444204 () Bool)

(assert (=> d!1171385 (=> (not res!1597991) (not e!2444204))))

(declare-fun validRegex!5227 (Regex!11472) Bool)

(assert (=> d!1171385 (= res!1597991 (validRegex!5227 (regex!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))))))

(assert (=> d!1171385 (= (ruleValid!2509 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464)))) e!2444204)))

(declare-fun b!3949400 () Bool)

(declare-fun res!1597992 () Bool)

(assert (=> b!3949400 (=> (not res!1597992) (not e!2444204))))

(declare-fun nullable!4028 (Regex!11472) Bool)

(assert (=> b!3949400 (= res!1597992 (not (nullable!4028 (regex!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))))))

(declare-fun b!3949401 () Bool)

(assert (=> b!3949401 (= e!2444204 (not (= (tag!7427 (rule!9533 (_1!23763 (v!39326 lt!1380464)))) (String!47705 ""))))))

(assert (= (and d!1171385 res!1597991) b!3949400))

(assert (= (and b!3949400 res!1597992) b!3949401))

(declare-fun m!4518245 () Bool)

(assert (=> d!1171385 m!4518245))

(declare-fun m!4518247 () Bool)

(assert (=> b!3949400 m!4518247))

(assert (=> b!3949263 d!1171385))

(declare-fun d!1171389 () Bool)

(assert (=> d!1171389 (= (_2!23763 (v!39326 lt!1380464)) lt!1380470)))

(declare-fun lt!1380519 () Unit!60497)

(declare-fun choose!23569 (List!42097 List!42097 List!42097 List!42097 List!42097) Unit!60497)

(assert (=> d!1171389 (= lt!1380519 (choose!23569 lt!1380466 (_2!23763 (v!39326 lt!1380464)) lt!1380466 lt!1380470 lt!1380465))))

(assert (=> d!1171389 (isPrefix!3656 lt!1380466 lt!1380465)))

(assert (=> d!1171389 (= (lemmaSamePrefixThenSameSuffix!1865 lt!1380466 (_2!23763 (v!39326 lt!1380464)) lt!1380466 lt!1380470 lt!1380465) lt!1380519)))

(declare-fun bs!586988 () Bool)

(assert (= bs!586988 d!1171389))

(declare-fun m!4518249 () Bool)

(assert (=> bs!586988 m!4518249))

(declare-fun m!4518251 () Bool)

(assert (=> bs!586988 m!4518251))

(assert (=> b!3949263 d!1171389))

(declare-fun d!1171393 () Bool)

(assert (=> d!1171393 (ruleValid!2509 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464))))))

(declare-fun lt!1380522 () Unit!60497)

(declare-fun choose!23570 (LexerInterface!6156 Rule!12934 List!42099) Unit!60497)

(assert (=> d!1171393 (= lt!1380522 (choose!23570 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464))) rules!2768))))

(declare-fun contains!8403 (List!42099 Rule!12934) Bool)

(assert (=> d!1171393 (contains!8403 rules!2768 (rule!9533 (_1!23763 (v!39326 lt!1380464))))))

(assert (=> d!1171393 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1585 thiss!20629 (rule!9533 (_1!23763 (v!39326 lt!1380464))) rules!2768) lt!1380522)))

(declare-fun bs!586989 () Bool)

(assert (= bs!586989 d!1171393))

(assert (=> bs!586989 m!4518105))

(declare-fun m!4518253 () Bool)

(assert (=> bs!586989 m!4518253))

(declare-fun m!4518255 () Bool)

(assert (=> bs!586989 m!4518255))

(assert (=> b!3949263 d!1171393))

(declare-fun d!1171395 () Bool)

(declare-fun res!1598003 () Bool)

(declare-fun e!2444212 () Bool)

(assert (=> d!1171395 (=> (not res!1598003) (not e!2444212))))

(assert (=> d!1171395 (= res!1598003 (not (isEmpty!25065 (originalCharacters!7167 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))))))

(assert (=> d!1171395 (= (inv!56205 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)) e!2444212)))

(declare-fun b!3949416 () Bool)

(declare-fun res!1598004 () Bool)

(assert (=> b!3949416 (=> (not res!1598004) (not e!2444212))))

(assert (=> b!3949416 (= res!1598004 (= (originalCharacters!7167 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)) (list!15591 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))) (value!207795 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))))))

(declare-fun b!3949417 () Bool)

(assert (=> b!3949417 (= e!2444212 (= (size!31462 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)) (size!31463 (originalCharacters!7167 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))))))

(assert (= (and d!1171395 res!1598003) b!3949416))

(assert (= (and b!3949416 res!1598004) b!3949417))

(declare-fun b_lambda!115535 () Bool)

(assert (=> (not b_lambda!115535) (not b!3949416)))

(declare-fun tb!237517 () Bool)

(declare-fun t!328355 () Bool)

(assert (=> (and b!3949261 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328355) tb!237517))

(declare-fun b!3949419 () Bool)

(declare-fun e!2444214 () Bool)

(declare-fun tp!1202841 () Bool)

(assert (=> b!3949419 (= e!2444214 (and (inv!56208 (c!685829 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))) (value!207795 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) tp!1202841))))

(declare-fun result!287662 () Bool)

(assert (=> tb!237517 (= result!287662 (and (inv!56209 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))) (value!207795 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466)))) e!2444214))))

(assert (= tb!237517 b!3949419))

(declare-fun m!4518261 () Bool)

(assert (=> b!3949419 m!4518261))

(declare-fun m!4518263 () Bool)

(assert (=> tb!237517 m!4518263))

(assert (=> b!3949416 t!328355))

(declare-fun b_and!302455 () Bool)

(assert (= b_and!302447 (and (=> t!328355 result!287662) b_and!302455)))

(declare-fun t!328359 () Bool)

(declare-fun tb!237521 () Bool)

(assert (=> (and b!3949268 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328359) tb!237521))

(declare-fun result!287664 () Bool)

(assert (= result!287664 result!287662))

(assert (=> b!3949416 t!328359))

(declare-fun b_and!302457 () Bool)

(assert (= b_and!302449 (and (=> t!328359 result!287664) b_and!302457)))

(declare-fun tb!237523 () Bool)

(declare-fun t!328361 () Bool)

(assert (=> (and b!3949273 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328361) tb!237523))

(declare-fun result!287668 () Bool)

(assert (= result!287668 result!287662))

(assert (=> b!3949416 t!328361))

(declare-fun b_and!302461 () Bool)

(assert (= b_and!302451 (and (=> t!328361 result!287668) b_and!302461)))

(declare-fun m!4518265 () Bool)

(assert (=> d!1171395 m!4518265))

(declare-fun m!4518267 () Bool)

(assert (=> b!3949416 m!4518267))

(assert (=> b!3949416 m!4518267))

(declare-fun m!4518273 () Bool)

(assert (=> b!3949416 m!4518273))

(declare-fun m!4518275 () Bool)

(assert (=> b!3949417 m!4518275))

(assert (=> b!3949263 d!1171395))

(declare-fun b!3949430 () Bool)

(declare-fun e!2444223 () Bool)

(declare-fun tail!6116 (List!42097) List!42097)

(assert (=> b!3949430 (= e!2444223 (isPrefix!3656 (tail!6116 lt!1380466) (tail!6116 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))))

(declare-fun b!3949429 () Bool)

(declare-fun res!1598015 () Bool)

(assert (=> b!3949429 (=> (not res!1598015) (not e!2444223))))

(declare-fun head!8390 (List!42097) C!23130)

(assert (=> b!3949429 (= res!1598015 (= (head!8390 lt!1380466) (head!8390 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))))

(declare-fun d!1171397 () Bool)

(declare-fun e!2444221 () Bool)

(assert (=> d!1171397 e!2444221))

(declare-fun res!1598014 () Bool)

(assert (=> d!1171397 (=> res!1598014 e!2444221)))

(declare-fun lt!1380525 () Bool)

(assert (=> d!1171397 (= res!1598014 (not lt!1380525))))

(declare-fun e!2444222 () Bool)

(assert (=> d!1171397 (= lt!1380525 e!2444222)))

(declare-fun res!1598013 () Bool)

(assert (=> d!1171397 (=> res!1598013 e!2444222)))

(assert (=> d!1171397 (= res!1598013 (is-Nil!41973 lt!1380466))))

(assert (=> d!1171397 (= (isPrefix!3656 lt!1380466 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464)))) lt!1380525)))

(declare-fun b!3949428 () Bool)

(assert (=> b!3949428 (= e!2444222 e!2444223)))

(declare-fun res!1598016 () Bool)

(assert (=> b!3949428 (=> (not res!1598016) (not e!2444223))))

(assert (=> b!3949428 (= res!1598016 (not (is-Nil!41973 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464))))))))

(declare-fun b!3949431 () Bool)

(assert (=> b!3949431 (= e!2444221 (>= (size!31463 (++!10891 lt!1380466 (_2!23763 (v!39326 lt!1380464)))) (size!31463 lt!1380466)))))

(assert (= (and d!1171397 (not res!1598013)) b!3949428))

(assert (= (and b!3949428 res!1598016) b!3949429))

(assert (= (and b!3949429 res!1598015) b!3949430))

(assert (= (and d!1171397 (not res!1598014)) b!3949431))

(declare-fun m!4518281 () Bool)

(assert (=> b!3949430 m!4518281))

(assert (=> b!3949430 m!4518113))

(declare-fun m!4518283 () Bool)

(assert (=> b!3949430 m!4518283))

(assert (=> b!3949430 m!4518281))

(assert (=> b!3949430 m!4518283))

(declare-fun m!4518285 () Bool)

(assert (=> b!3949430 m!4518285))

(declare-fun m!4518287 () Bool)

(assert (=> b!3949429 m!4518287))

(assert (=> b!3949429 m!4518113))

(declare-fun m!4518289 () Bool)

(assert (=> b!3949429 m!4518289))

(assert (=> b!3949431 m!4518113))

(declare-fun m!4518291 () Bool)

(assert (=> b!3949431 m!4518291))

(assert (=> b!3949431 m!4518117))

(assert (=> b!3949263 d!1171397))

(declare-fun d!1171403 () Bool)

(declare-fun lt!1380528 () List!42097)

(assert (=> d!1171403 (= (++!10891 lt!1380466 lt!1380528) lt!1380465)))

(declare-fun e!2444229 () List!42097)

(assert (=> d!1171403 (= lt!1380528 e!2444229)))

(declare-fun c!685853 () Bool)

(assert (=> d!1171403 (= c!685853 (is-Cons!41973 lt!1380466))))

(assert (=> d!1171403 (>= (size!31463 lt!1380465) (size!31463 lt!1380466))))

(assert (=> d!1171403 (= (getSuffix!2107 lt!1380465 lt!1380466) lt!1380528)))

(declare-fun b!3949439 () Bool)

(assert (=> b!3949439 (= e!2444229 (getSuffix!2107 (tail!6116 lt!1380465) (t!328338 lt!1380466)))))

(declare-fun b!3949440 () Bool)

(assert (=> b!3949440 (= e!2444229 lt!1380465)))

(assert (= (and d!1171403 c!685853) b!3949439))

(assert (= (and d!1171403 (not c!685853)) b!3949440))

(declare-fun m!4518297 () Bool)

(assert (=> d!1171403 m!4518297))

(declare-fun m!4518299 () Bool)

(assert (=> d!1171403 m!4518299))

(assert (=> d!1171403 m!4518117))

(declare-fun m!4518301 () Bool)

(assert (=> b!3949439 m!4518301))

(assert (=> b!3949439 m!4518301))

(declare-fun m!4518303 () Bool)

(assert (=> b!3949439 m!4518303))

(assert (=> b!3949263 d!1171403))

(declare-fun d!1171407 () Bool)

(declare-fun dynLambda!17981 (Int BalanceConc!25150) TokenValue!6797)

(assert (=> d!1171407 (= (apply!9798 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))) (seqFromList!4826 lt!1380466)) (dynLambda!17981 (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))) (seqFromList!4826 lt!1380466)))))

(declare-fun b_lambda!115537 () Bool)

(assert (=> (not b_lambda!115537) (not d!1171407)))

(declare-fun tb!237527 () Bool)

(declare-fun t!328365 () Bool)

(assert (=> (and b!3949261 (= (toValue!9043 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328365) tb!237527))

(declare-fun result!287672 () Bool)

(assert (=> tb!237527 (= result!287672 (inv!21 (dynLambda!17981 (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464))))) (seqFromList!4826 lt!1380466))))))

(declare-fun m!4518305 () Bool)

(assert (=> tb!237527 m!4518305))

(assert (=> d!1171407 t!328365))

(declare-fun b_and!302465 () Bool)

(assert (= b_and!302423 (and (=> t!328365 result!287672) b_and!302465)))

(declare-fun t!328367 () Bool)

(declare-fun tb!237529 () Bool)

(assert (=> (and b!3949268 (= (toValue!9043 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328367) tb!237529))

(declare-fun result!287676 () Bool)

(assert (= result!287676 result!287672))

(assert (=> d!1171407 t!328367))

(declare-fun b_and!302467 () Bool)

(assert (= b_and!302427 (and (=> t!328367 result!287676) b_and!302467)))

(declare-fun t!328369 () Bool)

(declare-fun tb!237531 () Bool)

(assert (=> (and b!3949273 (= (toValue!9043 (transformation!6567 (h!47395 rules!2768))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328369) tb!237531))

(declare-fun result!287678 () Bool)

(assert (= result!287678 result!287672))

(assert (=> d!1171407 t!328369))

(declare-fun b_and!302469 () Bool)

(assert (= b_and!302431 (and (=> t!328369 result!287678) b_and!302469)))

(assert (=> d!1171407 m!4518101))

(declare-fun m!4518307 () Bool)

(assert (=> d!1171407 m!4518307))

(assert (=> b!3949263 d!1171407))

(declare-fun d!1171409 () Bool)

(declare-fun list!15593 (Conc!12778) List!42097)

(assert (=> d!1171409 (= (list!15591 (charsOf!4385 (_1!23763 (v!39326 lt!1380464)))) (list!15593 (c!685829 (charsOf!4385 (_1!23763 (v!39326 lt!1380464))))))))

(declare-fun bs!586990 () Bool)

(assert (= bs!586990 d!1171409))

(declare-fun m!4518309 () Bool)

(assert (=> bs!586990 m!4518309))

(assert (=> b!3949263 d!1171409))

(declare-fun d!1171411 () Bool)

(declare-fun e!2444239 () Bool)

(assert (=> d!1171411 e!2444239))

(declare-fun c!685858 () Bool)

(declare-fun lt!1380535 () tuple2!41260)

(declare-fun size!31466 (List!42100) Int)

(assert (=> d!1171411 (= c!685858 (> (size!31466 (_1!23764 lt!1380535)) 0))))

(declare-fun e!2444241 () tuple2!41260)

(assert (=> d!1171411 (= lt!1380535 e!2444241)))

(declare-fun c!685859 () Bool)

(declare-fun lt!1380537 () Option!8987)

(assert (=> d!1171411 (= c!685859 (is-Some!8986 lt!1380537))))

(assert (=> d!1171411 (= lt!1380537 (maxPrefix!3460 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171411 (= (lexList!1924 thiss!20629 rules!2768 suffix!1176) lt!1380535)))

(declare-fun b!3949453 () Bool)

(declare-fun lt!1380536 () tuple2!41260)

(assert (=> b!3949453 (= e!2444241 (tuple2!41261 (Cons!41976 (_1!23763 (v!39326 lt!1380537)) (_1!23764 lt!1380536)) (_2!23764 lt!1380536)))))

(assert (=> b!3949453 (= lt!1380536 (lexList!1924 thiss!20629 rules!2768 (_2!23763 (v!39326 lt!1380537))))))

(declare-fun b!3949454 () Bool)

(declare-fun e!2444240 () Bool)

(assert (=> b!3949454 (= e!2444240 (not (isEmpty!25064 (_1!23764 lt!1380535))))))

(declare-fun b!3949455 () Bool)

(assert (=> b!3949455 (= e!2444239 e!2444240)))

(declare-fun res!1598022 () Bool)

(assert (=> b!3949455 (= res!1598022 (< (size!31463 (_2!23764 lt!1380535)) (size!31463 suffix!1176)))))

(assert (=> b!3949455 (=> (not res!1598022) (not e!2444240))))

(declare-fun b!3949456 () Bool)

(assert (=> b!3949456 (= e!2444241 (tuple2!41261 Nil!41976 suffix!1176))))

(declare-fun b!3949457 () Bool)

(assert (=> b!3949457 (= e!2444239 (= (_2!23764 lt!1380535) suffix!1176))))

(assert (= (and d!1171411 c!685859) b!3949453))

(assert (= (and d!1171411 (not c!685859)) b!3949456))

(assert (= (and d!1171411 c!685858) b!3949455))

(assert (= (and d!1171411 (not c!685858)) b!3949457))

(assert (= (and b!3949455 res!1598022) b!3949454))

(declare-fun m!4518311 () Bool)

(assert (=> d!1171411 m!4518311))

(declare-fun m!4518313 () Bool)

(assert (=> d!1171411 m!4518313))

(declare-fun m!4518315 () Bool)

(assert (=> b!3949453 m!4518315))

(declare-fun m!4518317 () Bool)

(assert (=> b!3949454 m!4518317))

(declare-fun m!4518319 () Bool)

(assert (=> b!3949455 m!4518319))

(declare-fun m!4518321 () Bool)

(assert (=> b!3949455 m!4518321))

(assert (=> b!3949265 d!1171411))

(declare-fun d!1171413 () Bool)

(assert (=> d!1171413 (= (inv!56201 (tag!7427 (rule!9533 (h!47396 suffixTokens!72)))) (= (mod (str.len (value!207769 (tag!7427 (rule!9533 (h!47396 suffixTokens!72))))) 2) 0))))

(assert (=> b!3949264 d!1171413))

(declare-fun d!1171415 () Bool)

(declare-fun res!1598025 () Bool)

(declare-fun e!2444244 () Bool)

(assert (=> d!1171415 (=> (not res!1598025) (not e!2444244))))

(declare-fun semiInverseModEq!2832 (Int Int) Bool)

(assert (=> d!1171415 (= res!1598025 (semiInverseModEq!2832 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toValue!9043 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))))))

(assert (=> d!1171415 (= (inv!56204 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) e!2444244)))

(declare-fun b!3949460 () Bool)

(declare-fun equivClasses!2731 (Int Int) Bool)

(assert (=> b!3949460 (= e!2444244 (equivClasses!2731 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toValue!9043 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))))))

(assert (= (and d!1171415 res!1598025) b!3949460))

(declare-fun m!4518323 () Bool)

(assert (=> d!1171415 m!4518323))

(declare-fun m!4518325 () Bool)

(assert (=> b!3949460 m!4518325))

(assert (=> b!3949264 d!1171415))

(declare-fun d!1171417 () Bool)

(declare-fun res!1598026 () Bool)

(declare-fun e!2444245 () Bool)

(assert (=> d!1171417 (=> (not res!1598026) (not e!2444245))))

(assert (=> d!1171417 (= res!1598026 (not (isEmpty!25065 (originalCharacters!7167 (h!47396 suffixTokens!72)))))))

(assert (=> d!1171417 (= (inv!56205 (h!47396 suffixTokens!72)) e!2444245)))

(declare-fun b!3949461 () Bool)

(declare-fun res!1598027 () Bool)

(assert (=> b!3949461 (=> (not res!1598027) (not e!2444245))))

(assert (=> b!3949461 (= res!1598027 (= (originalCharacters!7167 (h!47396 suffixTokens!72)) (list!15591 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (value!207795 (h!47396 suffixTokens!72))))))))

(declare-fun b!3949462 () Bool)

(assert (=> b!3949462 (= e!2444245 (= (size!31462 (h!47396 suffixTokens!72)) (size!31463 (originalCharacters!7167 (h!47396 suffixTokens!72)))))))

(assert (= (and d!1171417 res!1598026) b!3949461))

(assert (= (and b!3949461 res!1598027) b!3949462))

(declare-fun b_lambda!115539 () Bool)

(assert (=> (not b_lambda!115539) (not b!3949461)))

(declare-fun t!328371 () Bool)

(declare-fun tb!237533 () Bool)

(assert (=> (and b!3949261 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328371) tb!237533))

(declare-fun b!3949463 () Bool)

(declare-fun e!2444246 () Bool)

(declare-fun tp!1202842 () Bool)

(assert (=> b!3949463 (= e!2444246 (and (inv!56208 (c!685829 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (value!207795 (h!47396 suffixTokens!72))))) tp!1202842))))

(declare-fun result!287680 () Bool)

(assert (=> tb!237533 (= result!287680 (and (inv!56209 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (value!207795 (h!47396 suffixTokens!72)))) e!2444246))))

(assert (= tb!237533 b!3949463))

(declare-fun m!4518327 () Bool)

(assert (=> b!3949463 m!4518327))

(declare-fun m!4518329 () Bool)

(assert (=> tb!237533 m!4518329))

(assert (=> b!3949461 t!328371))

(declare-fun b_and!302471 () Bool)

(assert (= b_and!302455 (and (=> t!328371 result!287680) b_and!302471)))

(declare-fun t!328373 () Bool)

(declare-fun tb!237535 () Bool)

(assert (=> (and b!3949268 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328373) tb!237535))

(declare-fun result!287682 () Bool)

(assert (= result!287682 result!287680))

(assert (=> b!3949461 t!328373))

(declare-fun b_and!302473 () Bool)

(assert (= b_and!302457 (and (=> t!328373 result!287682) b_and!302473)))

(declare-fun tb!237537 () Bool)

(declare-fun t!328375 () Bool)

(assert (=> (and b!3949273 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328375) tb!237537))

(declare-fun result!287684 () Bool)

(assert (= result!287684 result!287680))

(assert (=> b!3949461 t!328375))

(declare-fun b_and!302475 () Bool)

(assert (= b_and!302461 (and (=> t!328375 result!287684) b_and!302475)))

(declare-fun m!4518331 () Bool)

(assert (=> d!1171417 m!4518331))

(declare-fun m!4518333 () Bool)

(assert (=> b!3949461 m!4518333))

(assert (=> b!3949461 m!4518333))

(declare-fun m!4518335 () Bool)

(assert (=> b!3949461 m!4518335))

(declare-fun m!4518337 () Bool)

(assert (=> b!3949462 m!4518337))

(assert (=> b!3949275 d!1171417))

(declare-fun d!1171419 () Bool)

(declare-fun e!2444249 () Bool)

(assert (=> d!1171419 e!2444249))

(declare-fun c!685862 () Bool)

(declare-fun lt!1380544 () tuple2!41260)

(assert (=> d!1171419 (= c!685862 (> (size!31466 (_1!23764 lt!1380544)) 0))))

(declare-fun e!2444251 () tuple2!41260)

(assert (=> d!1171419 (= lt!1380544 e!2444251)))

(declare-fun c!685863 () Bool)

(declare-fun lt!1380546 () Option!8987)

(assert (=> d!1171419 (= c!685863 (is-Some!8986 lt!1380546))))

(assert (=> d!1171419 (= lt!1380546 (maxPrefix!3460 thiss!20629 rules!2768 lt!1380465))))

(assert (=> d!1171419 (= (lexList!1924 thiss!20629 rules!2768 lt!1380465) lt!1380544)))

(declare-fun b!3949468 () Bool)

(declare-fun lt!1380545 () tuple2!41260)

(assert (=> b!3949468 (= e!2444251 (tuple2!41261 (Cons!41976 (_1!23763 (v!39326 lt!1380546)) (_1!23764 lt!1380545)) (_2!23764 lt!1380545)))))

(assert (=> b!3949468 (= lt!1380545 (lexList!1924 thiss!20629 rules!2768 (_2!23763 (v!39326 lt!1380546))))))

(declare-fun b!3949469 () Bool)

(declare-fun e!2444250 () Bool)

(assert (=> b!3949469 (= e!2444250 (not (isEmpty!25064 (_1!23764 lt!1380544))))))

(declare-fun b!3949470 () Bool)

(assert (=> b!3949470 (= e!2444249 e!2444250)))

(declare-fun res!1598028 () Bool)

(assert (=> b!3949470 (= res!1598028 (< (size!31463 (_2!23764 lt!1380544)) (size!31463 lt!1380465)))))

(assert (=> b!3949470 (=> (not res!1598028) (not e!2444250))))

(declare-fun b!3949471 () Bool)

(assert (=> b!3949471 (= e!2444251 (tuple2!41261 Nil!41976 lt!1380465))))

(declare-fun b!3949472 () Bool)

(assert (=> b!3949472 (= e!2444249 (= (_2!23764 lt!1380544) lt!1380465))))

(assert (= (and d!1171419 c!685863) b!3949468))

(assert (= (and d!1171419 (not c!685863)) b!3949471))

(assert (= (and d!1171419 c!685862) b!3949470))

(assert (= (and d!1171419 (not c!685862)) b!3949472))

(assert (= (and b!3949470 res!1598028) b!3949469))

(declare-fun m!4518339 () Bool)

(assert (=> d!1171419 m!4518339))

(assert (=> d!1171419 m!4518129))

(declare-fun m!4518341 () Bool)

(assert (=> b!3949468 m!4518341))

(declare-fun m!4518343 () Bool)

(assert (=> b!3949469 m!4518343))

(declare-fun m!4518345 () Bool)

(assert (=> b!3949470 m!4518345))

(assert (=> b!3949470 m!4518299))

(assert (=> b!3949271 d!1171419))

(declare-fun lt!1380552 () List!42100)

(declare-fun b!3949495 () Bool)

(declare-fun e!2444263 () Bool)

(assert (=> b!3949495 (= e!2444263 (or (not (= suffixTokens!72 Nil!41976)) (= lt!1380552 prefixTokens!80)))))

(declare-fun d!1171421 () Bool)

(assert (=> d!1171421 e!2444263))

(declare-fun res!1598036 () Bool)

(assert (=> d!1171421 (=> (not res!1598036) (not e!2444263))))

(declare-fun content!6363 (List!42100) (Set Token!12272))

(assert (=> d!1171421 (= res!1598036 (= (content!6363 lt!1380552) (set.union (content!6363 prefixTokens!80) (content!6363 suffixTokens!72))))))

(declare-fun e!2444264 () List!42100)

(assert (=> d!1171421 (= lt!1380552 e!2444264)))

(declare-fun c!685870 () Bool)

(assert (=> d!1171421 (= c!685870 (is-Nil!41976 prefixTokens!80))))

(assert (=> d!1171421 (= (++!10892 prefixTokens!80 suffixTokens!72) lt!1380552)))

(declare-fun b!3949492 () Bool)

(assert (=> b!3949492 (= e!2444264 suffixTokens!72)))

(declare-fun b!3949493 () Bool)

(assert (=> b!3949493 (= e!2444264 (Cons!41976 (h!47396 prefixTokens!80) (++!10892 (t!328341 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3949494 () Bool)

(declare-fun res!1598037 () Bool)

(assert (=> b!3949494 (=> (not res!1598037) (not e!2444263))))

(assert (=> b!3949494 (= res!1598037 (= (size!31466 lt!1380552) (+ (size!31466 prefixTokens!80) (size!31466 suffixTokens!72))))))

(assert (= (and d!1171421 c!685870) b!3949492))

(assert (= (and d!1171421 (not c!685870)) b!3949493))

(assert (= (and d!1171421 res!1598036) b!3949494))

(assert (= (and b!3949494 res!1598037) b!3949495))

(declare-fun m!4518347 () Bool)

(assert (=> d!1171421 m!4518347))

(declare-fun m!4518349 () Bool)

(assert (=> d!1171421 m!4518349))

(declare-fun m!4518351 () Bool)

(assert (=> d!1171421 m!4518351))

(declare-fun m!4518353 () Bool)

(assert (=> b!3949493 m!4518353))

(declare-fun m!4518355 () Bool)

(assert (=> b!3949494 m!4518355))

(declare-fun m!4518357 () Bool)

(assert (=> b!3949494 m!4518357))

(declare-fun m!4518359 () Bool)

(assert (=> b!3949494 m!4518359))

(assert (=> b!3949271 d!1171421))

(declare-fun lt!1380553 () List!42097)

(declare-fun e!2444265 () Bool)

(declare-fun b!3949499 () Bool)

(assert (=> b!3949499 (= e!2444265 (or (not (= suffix!1176 Nil!41973)) (= lt!1380553 prefix!426)))))

(declare-fun b!3949498 () Bool)

(declare-fun res!1598039 () Bool)

(assert (=> b!3949498 (=> (not res!1598039) (not e!2444265))))

(assert (=> b!3949498 (= res!1598039 (= (size!31463 lt!1380553) (+ (size!31463 prefix!426) (size!31463 suffix!1176))))))

(declare-fun b!3949496 () Bool)

(declare-fun e!2444266 () List!42097)

(assert (=> b!3949496 (= e!2444266 suffix!1176)))

(declare-fun d!1171423 () Bool)

(assert (=> d!1171423 e!2444265))

(declare-fun res!1598038 () Bool)

(assert (=> d!1171423 (=> (not res!1598038) (not e!2444265))))

(assert (=> d!1171423 (= res!1598038 (= (content!6362 lt!1380553) (set.union (content!6362 prefix!426) (content!6362 suffix!1176))))))

(assert (=> d!1171423 (= lt!1380553 e!2444266)))

(declare-fun c!685871 () Bool)

(assert (=> d!1171423 (= c!685871 (is-Nil!41973 prefix!426))))

(assert (=> d!1171423 (= (++!10891 prefix!426 suffix!1176) lt!1380553)))

(declare-fun b!3949497 () Bool)

(assert (=> b!3949497 (= e!2444266 (Cons!41973 (h!47393 prefix!426) (++!10891 (t!328338 prefix!426) suffix!1176)))))

(assert (= (and d!1171423 c!685871) b!3949496))

(assert (= (and d!1171423 (not c!685871)) b!3949497))

(assert (= (and d!1171423 res!1598038) b!3949498))

(assert (= (and b!3949498 res!1598039) b!3949499))

(declare-fun m!4518369 () Bool)

(assert (=> b!3949498 m!4518369))

(declare-fun m!4518371 () Bool)

(assert (=> b!3949498 m!4518371))

(assert (=> b!3949498 m!4518321))

(declare-fun m!4518375 () Bool)

(assert (=> d!1171423 m!4518375))

(declare-fun m!4518377 () Bool)

(assert (=> d!1171423 m!4518377))

(declare-fun m!4518381 () Bool)

(assert (=> d!1171423 m!4518381))

(declare-fun m!4518383 () Bool)

(assert (=> b!3949497 m!4518383))

(assert (=> b!3949271 d!1171423))

(declare-fun d!1171427 () Bool)

(declare-fun lt!1380554 () Int)

(assert (=> d!1171427 (>= lt!1380554 0)))

(declare-fun e!2444267 () Int)

(assert (=> d!1171427 (= lt!1380554 e!2444267)))

(declare-fun c!685872 () Bool)

(assert (=> d!1171427 (= c!685872 (is-Nil!41973 (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464)))))))

(assert (=> d!1171427 (= (size!31463 (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464)))) lt!1380554)))

(declare-fun b!3949500 () Bool)

(assert (=> b!3949500 (= e!2444267 0)))

(declare-fun b!3949501 () Bool)

(assert (=> b!3949501 (= e!2444267 (+ 1 (size!31463 (t!328338 (originalCharacters!7167 (_1!23763 (v!39326 lt!1380464)))))))))

(assert (= (and d!1171427 c!685872) b!3949500))

(assert (= (and d!1171427 (not c!685872)) b!3949501))

(declare-fun m!4518385 () Bool)

(assert (=> b!3949501 m!4518385))

(assert (=> b!3949262 d!1171427))

(declare-fun b!3949521 () Bool)

(declare-fun e!2444281 () Bool)

(declare-fun inv!17 (TokenValue!6797) Bool)

(assert (=> b!3949521 (= e!2444281 (inv!17 (value!207795 (h!47396 prefixTokens!80))))))

(declare-fun b!3949522 () Bool)

(declare-fun e!2444280 () Bool)

(declare-fun inv!15 (TokenValue!6797) Bool)

(assert (=> b!3949522 (= e!2444280 (inv!15 (value!207795 (h!47396 prefixTokens!80))))))

(declare-fun b!3949523 () Bool)

(declare-fun e!2444282 () Bool)

(declare-fun inv!16 (TokenValue!6797) Bool)

(assert (=> b!3949523 (= e!2444282 (inv!16 (value!207795 (h!47396 prefixTokens!80))))))

(declare-fun b!3949524 () Bool)

(declare-fun res!1598046 () Bool)

(assert (=> b!3949524 (=> res!1598046 e!2444280)))

(assert (=> b!3949524 (= res!1598046 (not (is-IntegerValue!20393 (value!207795 (h!47396 prefixTokens!80)))))))

(assert (=> b!3949524 (= e!2444281 e!2444280)))

(declare-fun b!3949525 () Bool)

(assert (=> b!3949525 (= e!2444282 e!2444281)))

(declare-fun c!685879 () Bool)

(assert (=> b!3949525 (= c!685879 (is-IntegerValue!20392 (value!207795 (h!47396 prefixTokens!80))))))

(declare-fun d!1171431 () Bool)

(declare-fun c!685880 () Bool)

(assert (=> d!1171431 (= c!685880 (is-IntegerValue!20391 (value!207795 (h!47396 prefixTokens!80))))))

(assert (=> d!1171431 (= (inv!21 (value!207795 (h!47396 prefixTokens!80))) e!2444282)))

(assert (= (and d!1171431 c!685880) b!3949523))

(assert (= (and d!1171431 (not c!685880)) b!3949525))

(assert (= (and b!3949525 c!685879) b!3949521))

(assert (= (and b!3949525 (not c!685879)) b!3949524))

(assert (= (and b!3949524 (not res!1598046)) b!3949522))

(declare-fun m!4518413 () Bool)

(assert (=> b!3949521 m!4518413))

(declare-fun m!4518415 () Bool)

(assert (=> b!3949522 m!4518415))

(declare-fun m!4518417 () Bool)

(assert (=> b!3949523 m!4518417))

(assert (=> b!3949272 d!1171431))

(declare-fun d!1171439 () Bool)

(declare-fun res!1598049 () Bool)

(declare-fun e!2444285 () Bool)

(assert (=> d!1171439 (=> (not res!1598049) (not e!2444285))))

(declare-fun rulesValid!2566 (LexerInterface!6156 List!42099) Bool)

(assert (=> d!1171439 (= res!1598049 (rulesValid!2566 thiss!20629 rules!2768))))

(assert (=> d!1171439 (= (rulesInvariant!5499 thiss!20629 rules!2768) e!2444285)))

(declare-fun b!3949528 () Bool)

(declare-datatypes ((List!42105 0))(
  ( (Nil!41981) (Cons!41981 (h!47401 String!47704) (t!328466 List!42105)) )
))
(declare-fun noDuplicateTag!2567 (LexerInterface!6156 List!42099 List!42105) Bool)

(assert (=> b!3949528 (= e!2444285 (noDuplicateTag!2567 thiss!20629 rules!2768 Nil!41981))))

(assert (= (and d!1171439 res!1598049) b!3949528))

(declare-fun m!4518419 () Bool)

(assert (=> d!1171439 m!4518419))

(declare-fun m!4518421 () Bool)

(assert (=> b!3949528 m!4518421))

(assert (=> b!3949258 d!1171439))

(declare-fun d!1171441 () Bool)

(assert (=> d!1171441 (= (isEmpty!25064 prefixTokens!80) (is-Nil!41976 prefixTokens!80))))

(assert (=> b!3949269 d!1171441))

(declare-fun call!285197 () Option!8987)

(declare-fun bm!285192 () Bool)

(declare-fun maxPrefixOneRule!2516 (LexerInterface!6156 Rule!12934 List!42097) Option!8987)

(assert (=> bm!285192 (= call!285197 (maxPrefixOneRule!2516 thiss!20629 (h!47395 rules!2768) lt!1380465))))

(declare-fun b!3949575 () Bool)

(declare-fun e!2444310 () Bool)

(declare-fun e!2444308 () Bool)

(assert (=> b!3949575 (= e!2444310 e!2444308)))

(declare-fun res!1598086 () Bool)

(assert (=> b!3949575 (=> (not res!1598086) (not e!2444308))))

(declare-fun lt!1380574 () Option!8987)

(declare-fun isDefined!6978 (Option!8987) Bool)

(assert (=> b!3949575 (= res!1598086 (isDefined!6978 lt!1380574))))

(declare-fun b!3949576 () Bool)

(declare-fun res!1598082 () Bool)

(assert (=> b!3949576 (=> (not res!1598082) (not e!2444308))))

(declare-fun get!13857 (Option!8987) tuple2!41258)

(assert (=> b!3949576 (= res!1598082 (= (list!15591 (charsOf!4385 (_1!23763 (get!13857 lt!1380574)))) (originalCharacters!7167 (_1!23763 (get!13857 lt!1380574)))))))

(declare-fun d!1171443 () Bool)

(assert (=> d!1171443 e!2444310))

(declare-fun res!1598083 () Bool)

(assert (=> d!1171443 (=> res!1598083 e!2444310)))

(declare-fun isEmpty!25069 (Option!8987) Bool)

(assert (=> d!1171443 (= res!1598083 (isEmpty!25069 lt!1380574))))

(declare-fun e!2444309 () Option!8987)

(assert (=> d!1171443 (= lt!1380574 e!2444309)))

(declare-fun c!685889 () Bool)

(assert (=> d!1171443 (= c!685889 (and (is-Cons!41975 rules!2768) (is-Nil!41975 (t!328340 rules!2768))))))

(declare-fun lt!1380576 () Unit!60497)

(declare-fun lt!1380578 () Unit!60497)

(assert (=> d!1171443 (= lt!1380576 lt!1380578)))

(assert (=> d!1171443 (isPrefix!3656 lt!1380465 lt!1380465)))

(declare-fun lemmaIsPrefixRefl!2309 (List!42097 List!42097) Unit!60497)

(assert (=> d!1171443 (= lt!1380578 (lemmaIsPrefixRefl!2309 lt!1380465 lt!1380465))))

(declare-fun rulesValidInductive!2379 (LexerInterface!6156 List!42099) Bool)

(assert (=> d!1171443 (rulesValidInductive!2379 thiss!20629 rules!2768)))

(assert (=> d!1171443 (= (maxPrefix!3460 thiss!20629 rules!2768 lt!1380465) lt!1380574)))

(declare-fun b!3949577 () Bool)

(declare-fun lt!1380577 () Option!8987)

(declare-fun lt!1380575 () Option!8987)

(assert (=> b!3949577 (= e!2444309 (ite (and (is-None!8986 lt!1380577) (is-None!8986 lt!1380575)) None!8986 (ite (is-None!8986 lt!1380575) lt!1380577 (ite (is-None!8986 lt!1380577) lt!1380575 (ite (>= (size!31462 (_1!23763 (v!39326 lt!1380577))) (size!31462 (_1!23763 (v!39326 lt!1380575)))) lt!1380577 lt!1380575)))))))

(assert (=> b!3949577 (= lt!1380577 call!285197)))

(assert (=> b!3949577 (= lt!1380575 (maxPrefix!3460 thiss!20629 (t!328340 rules!2768) lt!1380465))))

(declare-fun b!3949578 () Bool)

(declare-fun res!1598084 () Bool)

(assert (=> b!3949578 (=> (not res!1598084) (not e!2444308))))

(assert (=> b!3949578 (= res!1598084 (< (size!31463 (_2!23763 (get!13857 lt!1380574))) (size!31463 lt!1380465)))))

(declare-fun b!3949579 () Bool)

(declare-fun res!1598080 () Bool)

(assert (=> b!3949579 (=> (not res!1598080) (not e!2444308))))

(assert (=> b!3949579 (= res!1598080 (= (++!10891 (list!15591 (charsOf!4385 (_1!23763 (get!13857 lt!1380574)))) (_2!23763 (get!13857 lt!1380574))) lt!1380465))))

(declare-fun b!3949580 () Bool)

(assert (=> b!3949580 (= e!2444309 call!285197)))

(declare-fun b!3949581 () Bool)

(declare-fun res!1598085 () Bool)

(assert (=> b!3949581 (=> (not res!1598085) (not e!2444308))))

(declare-fun matchR!5511 (Regex!11472 List!42097) Bool)

(assert (=> b!3949581 (= res!1598085 (matchR!5511 (regex!6567 (rule!9533 (_1!23763 (get!13857 lt!1380574)))) (list!15591 (charsOf!4385 (_1!23763 (get!13857 lt!1380574))))))))

(declare-fun b!3949582 () Bool)

(declare-fun res!1598081 () Bool)

(assert (=> b!3949582 (=> (not res!1598081) (not e!2444308))))

(assert (=> b!3949582 (= res!1598081 (= (value!207795 (_1!23763 (get!13857 lt!1380574))) (apply!9798 (transformation!6567 (rule!9533 (_1!23763 (get!13857 lt!1380574)))) (seqFromList!4826 (originalCharacters!7167 (_1!23763 (get!13857 lt!1380574)))))))))

(declare-fun b!3949583 () Bool)

(assert (=> b!3949583 (= e!2444308 (contains!8403 rules!2768 (rule!9533 (_1!23763 (get!13857 lt!1380574)))))))

(assert (= (and d!1171443 c!685889) b!3949580))

(assert (= (and d!1171443 (not c!685889)) b!3949577))

(assert (= (or b!3949580 b!3949577) bm!285192))

(assert (= (and d!1171443 (not res!1598083)) b!3949575))

(assert (= (and b!3949575 res!1598086) b!3949576))

(assert (= (and b!3949576 res!1598082) b!3949578))

(assert (= (and b!3949578 res!1598084) b!3949579))

(assert (= (and b!3949579 res!1598080) b!3949582))

(assert (= (and b!3949582 res!1598081) b!3949581))

(assert (= (and b!3949581 res!1598085) b!3949583))

(declare-fun m!4518457 () Bool)

(assert (=> b!3949579 m!4518457))

(declare-fun m!4518459 () Bool)

(assert (=> b!3949579 m!4518459))

(assert (=> b!3949579 m!4518459))

(declare-fun m!4518461 () Bool)

(assert (=> b!3949579 m!4518461))

(assert (=> b!3949579 m!4518461))

(declare-fun m!4518463 () Bool)

(assert (=> b!3949579 m!4518463))

(assert (=> b!3949581 m!4518457))

(assert (=> b!3949581 m!4518459))

(assert (=> b!3949581 m!4518459))

(assert (=> b!3949581 m!4518461))

(assert (=> b!3949581 m!4518461))

(declare-fun m!4518465 () Bool)

(assert (=> b!3949581 m!4518465))

(assert (=> b!3949578 m!4518457))

(declare-fun m!4518467 () Bool)

(assert (=> b!3949578 m!4518467))

(assert (=> b!3949578 m!4518299))

(assert (=> b!3949582 m!4518457))

(declare-fun m!4518469 () Bool)

(assert (=> b!3949582 m!4518469))

(assert (=> b!3949582 m!4518469))

(declare-fun m!4518471 () Bool)

(assert (=> b!3949582 m!4518471))

(declare-fun m!4518473 () Bool)

(assert (=> bm!285192 m!4518473))

(declare-fun m!4518475 () Bool)

(assert (=> d!1171443 m!4518475))

(declare-fun m!4518477 () Bool)

(assert (=> d!1171443 m!4518477))

(declare-fun m!4518479 () Bool)

(assert (=> d!1171443 m!4518479))

(declare-fun m!4518481 () Bool)

(assert (=> d!1171443 m!4518481))

(assert (=> b!3949583 m!4518457))

(declare-fun m!4518483 () Bool)

(assert (=> b!3949583 m!4518483))

(declare-fun m!4518485 () Bool)

(assert (=> b!3949577 m!4518485))

(assert (=> b!3949576 m!4518457))

(assert (=> b!3949576 m!4518459))

(assert (=> b!3949576 m!4518459))

(assert (=> b!3949576 m!4518461))

(declare-fun m!4518487 () Bool)

(assert (=> b!3949575 m!4518487))

(assert (=> b!3949266 d!1171443))

(declare-fun d!1171455 () Bool)

(assert (=> d!1171455 (= (isEmpty!25065 prefix!426) (is-Nil!41973 prefix!426))))

(assert (=> b!3949277 d!1171455))

(declare-fun d!1171457 () Bool)

(declare-fun res!1598087 () Bool)

(declare-fun e!2444311 () Bool)

(assert (=> d!1171457 (=> (not res!1598087) (not e!2444311))))

(assert (=> d!1171457 (= res!1598087 (not (isEmpty!25065 (originalCharacters!7167 (h!47396 prefixTokens!80)))))))

(assert (=> d!1171457 (= (inv!56205 (h!47396 prefixTokens!80)) e!2444311)))

(declare-fun b!3949584 () Bool)

(declare-fun res!1598088 () Bool)

(assert (=> b!3949584 (=> (not res!1598088) (not e!2444311))))

(assert (=> b!3949584 (= res!1598088 (= (originalCharacters!7167 (h!47396 prefixTokens!80)) (list!15591 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (value!207795 (h!47396 prefixTokens!80))))))))

(declare-fun b!3949585 () Bool)

(assert (=> b!3949585 (= e!2444311 (= (size!31462 (h!47396 prefixTokens!80)) (size!31463 (originalCharacters!7167 (h!47396 prefixTokens!80)))))))

(assert (= (and d!1171457 res!1598087) b!3949584))

(assert (= (and b!3949584 res!1598088) b!3949585))

(declare-fun b_lambda!115543 () Bool)

(assert (=> (not b_lambda!115543) (not b!3949584)))

(declare-fun t!328383 () Bool)

(declare-fun tb!237545 () Bool)

(assert (=> (and b!3949261 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328383) tb!237545))

(declare-fun b!3949586 () Bool)

(declare-fun e!2444312 () Bool)

(declare-fun tp!1202844 () Bool)

(assert (=> b!3949586 (= e!2444312 (and (inv!56208 (c!685829 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (value!207795 (h!47396 prefixTokens!80))))) tp!1202844))))

(declare-fun result!287692 () Bool)

(assert (=> tb!237545 (= result!287692 (and (inv!56209 (dynLambda!17980 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (value!207795 (h!47396 prefixTokens!80)))) e!2444312))))

(assert (= tb!237545 b!3949586))

(declare-fun m!4518489 () Bool)

(assert (=> b!3949586 m!4518489))

(declare-fun m!4518491 () Bool)

(assert (=> tb!237545 m!4518491))

(assert (=> b!3949584 t!328383))

(declare-fun b_and!302483 () Bool)

(assert (= b_and!302471 (and (=> t!328383 result!287692) b_and!302483)))

(declare-fun tb!237547 () Bool)

(declare-fun t!328385 () Bool)

(assert (=> (and b!3949268 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328385) tb!237547))

(declare-fun result!287694 () Bool)

(assert (= result!287694 result!287692))

(assert (=> b!3949584 t!328385))

(declare-fun b_and!302485 () Bool)

(assert (= b_and!302473 (and (=> t!328385 result!287694) b_and!302485)))

(declare-fun t!328387 () Bool)

(declare-fun tb!237549 () Bool)

(assert (=> (and b!3949273 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328387) tb!237549))

(declare-fun result!287696 () Bool)

(assert (= result!287696 result!287692))

(assert (=> b!3949584 t!328387))

(declare-fun b_and!302487 () Bool)

(assert (= b_and!302475 (and (=> t!328387 result!287696) b_and!302487)))

(declare-fun m!4518493 () Bool)

(assert (=> d!1171457 m!4518493))

(declare-fun m!4518495 () Bool)

(assert (=> b!3949584 m!4518495))

(assert (=> b!3949584 m!4518495))

(declare-fun m!4518497 () Bool)

(assert (=> b!3949584 m!4518497))

(declare-fun m!4518499 () Bool)

(assert (=> b!3949585 m!4518499))

(assert (=> b!3949276 d!1171457))

(declare-fun d!1171459 () Bool)

(assert (=> d!1171459 (= (inv!56201 (tag!7427 (h!47395 rules!2768))) (= (mod (str.len (value!207769 (tag!7427 (h!47395 rules!2768)))) 2) 0))))

(assert (=> b!3949255 d!1171459))

(declare-fun d!1171461 () Bool)

(declare-fun res!1598089 () Bool)

(declare-fun e!2444313 () Bool)

(assert (=> d!1171461 (=> (not res!1598089) (not e!2444313))))

(assert (=> d!1171461 (= res!1598089 (semiInverseModEq!2832 (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toValue!9043 (transformation!6567 (h!47395 rules!2768)))))))

(assert (=> d!1171461 (= (inv!56204 (transformation!6567 (h!47395 rules!2768))) e!2444313)))

(declare-fun b!3949587 () Bool)

(assert (=> b!3949587 (= e!2444313 (equivClasses!2731 (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toValue!9043 (transformation!6567 (h!47395 rules!2768)))))))

(assert (= (and d!1171461 res!1598089) b!3949587))

(declare-fun m!4518501 () Bool)

(assert (=> d!1171461 m!4518501))

(declare-fun m!4518503 () Bool)

(assert (=> b!3949587 m!4518503))

(assert (=> b!3949255 d!1171461))

(declare-fun d!1171463 () Bool)

(assert (=> d!1171463 (= (inv!56201 (tag!7427 (rule!9533 (h!47396 prefixTokens!80)))) (= (mod (str.len (value!207769 (tag!7427 (rule!9533 (h!47396 prefixTokens!80))))) 2) 0))))

(assert (=> b!3949257 d!1171463))

(declare-fun d!1171465 () Bool)

(declare-fun res!1598090 () Bool)

(declare-fun e!2444314 () Bool)

(assert (=> d!1171465 (=> (not res!1598090) (not e!2444314))))

(assert (=> d!1171465 (= res!1598090 (semiInverseModEq!2832 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toValue!9043 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))))))

(assert (=> d!1171465 (= (inv!56204 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) e!2444314)))

(declare-fun b!3949588 () Bool)

(assert (=> b!3949588 (= e!2444314 (equivClasses!2731 (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toValue!9043 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))))))

(assert (= (and d!1171465 res!1598090) b!3949588))

(declare-fun m!4518505 () Bool)

(assert (=> d!1171465 m!4518505))

(declare-fun m!4518507 () Bool)

(assert (=> b!3949588 m!4518507))

(assert (=> b!3949257 d!1171465))

(declare-fun b!3949589 () Bool)

(declare-fun e!2444316 () Bool)

(assert (=> b!3949589 (= e!2444316 (inv!17 (value!207795 (h!47396 suffixTokens!72))))))

(declare-fun b!3949590 () Bool)

(declare-fun e!2444315 () Bool)

(assert (=> b!3949590 (= e!2444315 (inv!15 (value!207795 (h!47396 suffixTokens!72))))))

(declare-fun b!3949591 () Bool)

(declare-fun e!2444317 () Bool)

(assert (=> b!3949591 (= e!2444317 (inv!16 (value!207795 (h!47396 suffixTokens!72))))))

(declare-fun b!3949592 () Bool)

(declare-fun res!1598091 () Bool)

(assert (=> b!3949592 (=> res!1598091 e!2444315)))

(assert (=> b!3949592 (= res!1598091 (not (is-IntegerValue!20393 (value!207795 (h!47396 suffixTokens!72)))))))

(assert (=> b!3949592 (= e!2444316 e!2444315)))

(declare-fun b!3949593 () Bool)

(assert (=> b!3949593 (= e!2444317 e!2444316)))

(declare-fun c!685890 () Bool)

(assert (=> b!3949593 (= c!685890 (is-IntegerValue!20392 (value!207795 (h!47396 suffixTokens!72))))))

(declare-fun d!1171467 () Bool)

(declare-fun c!685891 () Bool)

(assert (=> d!1171467 (= c!685891 (is-IntegerValue!20391 (value!207795 (h!47396 suffixTokens!72))))))

(assert (=> d!1171467 (= (inv!21 (value!207795 (h!47396 suffixTokens!72))) e!2444317)))

(assert (= (and d!1171467 c!685891) b!3949591))

(assert (= (and d!1171467 (not c!685891)) b!3949593))

(assert (= (and b!3949593 c!685890) b!3949589))

(assert (= (and b!3949593 (not c!685890)) b!3949592))

(assert (= (and b!3949592 (not res!1598091)) b!3949590))

(declare-fun m!4518509 () Bool)

(assert (=> b!3949589 m!4518509))

(declare-fun m!4518511 () Bool)

(assert (=> b!3949590 m!4518511))

(declare-fun m!4518513 () Bool)

(assert (=> b!3949591 m!4518513))

(assert (=> b!3949256 d!1171467))

(declare-fun d!1171469 () Bool)

(assert (=> d!1171469 (= (isEmpty!25063 rules!2768) (is-Nil!41975 rules!2768))))

(assert (=> b!3949267 d!1171469))

(declare-fun b!3949598 () Bool)

(declare-fun e!2444320 () Bool)

(declare-fun tp!1202847 () Bool)

(assert (=> b!3949598 (= e!2444320 (and tp_is_empty!19915 tp!1202847))))

(assert (=> b!3949274 (= tp!1202773 e!2444320)))

(assert (= (and b!3949274 (is-Cons!41973 (t!328338 suffixResult!91))) b!3949598))

(declare-fun b!3949610 () Bool)

(declare-fun e!2444323 () Bool)

(declare-fun tp!1202861 () Bool)

(declare-fun tp!1202859 () Bool)

(assert (=> b!3949610 (= e!2444323 (and tp!1202861 tp!1202859))))

(declare-fun b!3949611 () Bool)

(declare-fun tp!1202860 () Bool)

(assert (=> b!3949611 (= e!2444323 tp!1202860)))

(assert (=> b!3949264 (= tp!1202781 e!2444323)))

(declare-fun b!3949609 () Bool)

(assert (=> b!3949609 (= e!2444323 tp_is_empty!19915)))

(declare-fun b!3949612 () Bool)

(declare-fun tp!1202858 () Bool)

(declare-fun tp!1202862 () Bool)

(assert (=> b!3949612 (= e!2444323 (and tp!1202858 tp!1202862))))

(assert (= (and b!3949264 (is-ElementMatch!11472 (regex!6567 (rule!9533 (h!47396 suffixTokens!72))))) b!3949609))

(assert (= (and b!3949264 (is-Concat!18270 (regex!6567 (rule!9533 (h!47396 suffixTokens!72))))) b!3949610))

(assert (= (and b!3949264 (is-Star!11472 (regex!6567 (rule!9533 (h!47396 suffixTokens!72))))) b!3949611))

(assert (= (and b!3949264 (is-Union!11472 (regex!6567 (rule!9533 (h!47396 suffixTokens!72))))) b!3949612))

(declare-fun b!3949626 () Bool)

(declare-fun b_free!108425 () Bool)

(declare-fun b_next!109129 () Bool)

(assert (=> b!3949626 (= b_free!108425 (not b_next!109129))))

(declare-fun tb!237551 () Bool)

(declare-fun t!328389 () Bool)

(assert (=> (and b!3949626 (= (toValue!9043 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328389) tb!237551))

(declare-fun result!287704 () Bool)

(assert (= result!287704 result!287672))

(assert (=> d!1171407 t!328389))

(declare-fun b_and!302489 () Bool)

(declare-fun tp!1202877 () Bool)

(assert (=> b!3949626 (= tp!1202877 (and (=> t!328389 result!287704) b_and!302489))))

(declare-fun b_free!108427 () Bool)

(declare-fun b_next!109131 () Bool)

(assert (=> b!3949626 (= b_free!108427 (not b_next!109131))))

(declare-fun tb!237553 () Bool)

(declare-fun t!328391 () Bool)

(assert (=> (and b!3949626 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328391) tb!237553))

(declare-fun result!287706 () Bool)

(assert (= result!287706 result!287650))

(assert (=> d!1171369 t!328391))

(declare-fun t!328393 () Bool)

(declare-fun tb!237555 () Bool)

(assert (=> (and b!3949626 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328393) tb!237555))

(declare-fun result!287708 () Bool)

(assert (= result!287708 result!287662))

(assert (=> b!3949416 t!328393))

(declare-fun t!328395 () Bool)

(declare-fun tb!237557 () Bool)

(assert (=> (and b!3949626 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328395) tb!237557))

(declare-fun result!287710 () Bool)

(assert (= result!287710 result!287680))

(assert (=> b!3949461 t!328395))

(declare-fun tb!237559 () Bool)

(declare-fun t!328397 () Bool)

(assert (=> (and b!3949626 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328397) tb!237559))

(declare-fun result!287712 () Bool)

(assert (= result!287712 result!287692))

(assert (=> b!3949584 t!328397))

(declare-fun b_and!302491 () Bool)

(declare-fun tp!1202874 () Bool)

(assert (=> b!3949626 (= tp!1202874 (and (=> t!328391 result!287706) (=> t!328393 result!287708) (=> t!328395 result!287710) (=> t!328397 result!287712) b_and!302491))))

(declare-fun e!2444336 () Bool)

(declare-fun b!3949624 () Bool)

(declare-fun e!2444338 () Bool)

(declare-fun tp!1202873 () Bool)

(assert (=> b!3949624 (= e!2444336 (and (inv!21 (value!207795 (h!47396 (t!328341 suffixTokens!72)))) e!2444338 tp!1202873))))

(declare-fun tp!1202875 () Bool)

(declare-fun b!3949625 () Bool)

(declare-fun e!2444339 () Bool)

(assert (=> b!3949625 (= e!2444338 (and tp!1202875 (inv!56201 (tag!7427 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (inv!56204 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) e!2444339))))

(declare-fun e!2444340 () Bool)

(assert (=> b!3949275 (= tp!1202770 e!2444340)))

(assert (=> b!3949626 (= e!2444339 (and tp!1202877 tp!1202874))))

(declare-fun b!3949623 () Bool)

(declare-fun tp!1202876 () Bool)

(assert (=> b!3949623 (= e!2444340 (and (inv!56205 (h!47396 (t!328341 suffixTokens!72))) e!2444336 tp!1202876))))

(assert (= b!3949625 b!3949626))

(assert (= b!3949624 b!3949625))

(assert (= b!3949623 b!3949624))

(assert (= (and b!3949275 (is-Cons!41976 (t!328341 suffixTokens!72))) b!3949623))

(declare-fun m!4518515 () Bool)

(assert (=> b!3949624 m!4518515))

(declare-fun m!4518517 () Bool)

(assert (=> b!3949625 m!4518517))

(declare-fun m!4518519 () Bool)

(assert (=> b!3949625 m!4518519))

(declare-fun m!4518521 () Bool)

(assert (=> b!3949623 m!4518521))

(declare-fun b!3949627 () Bool)

(declare-fun e!2444342 () Bool)

(declare-fun tp!1202878 () Bool)

(assert (=> b!3949627 (= e!2444342 (and tp_is_empty!19915 tp!1202878))))

(assert (=> b!3949260 (= tp!1202767 e!2444342)))

(assert (= (and b!3949260 (is-Cons!41973 (t!328338 prefix!426))) b!3949627))

(declare-fun b!3949628 () Bool)

(declare-fun e!2444343 () Bool)

(declare-fun tp!1202879 () Bool)

(assert (=> b!3949628 (= e!2444343 (and tp_is_empty!19915 tp!1202879))))

(assert (=> b!3949272 (= tp!1202776 e!2444343)))

(assert (= (and b!3949272 (is-Cons!41973 (originalCharacters!7167 (h!47396 prefixTokens!80)))) b!3949628))

(declare-fun b!3949629 () Bool)

(declare-fun e!2444344 () Bool)

(declare-fun tp!1202880 () Bool)

(assert (=> b!3949629 (= e!2444344 (and tp_is_empty!19915 tp!1202880))))

(assert (=> b!3949270 (= tp!1202774 e!2444344)))

(assert (= (and b!3949270 (is-Cons!41973 (t!328338 suffix!1176))) b!3949629))

(declare-fun b!3949640 () Bool)

(declare-fun b_free!108429 () Bool)

(declare-fun b_next!109133 () Bool)

(assert (=> b!3949640 (= b_free!108429 (not b_next!109133))))

(declare-fun t!328399 () Bool)

(declare-fun tb!237561 () Bool)

(assert (=> (and b!3949640 (= (toValue!9043 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328399) tb!237561))

(declare-fun result!287716 () Bool)

(assert (= result!287716 result!287672))

(assert (=> d!1171407 t!328399))

(declare-fun b_and!302493 () Bool)

(declare-fun tp!1202891 () Bool)

(assert (=> b!3949640 (= tp!1202891 (and (=> t!328399 result!287716) b_and!302493))))

(declare-fun b_free!108431 () Bool)

(declare-fun b_next!109135 () Bool)

(assert (=> b!3949640 (= b_free!108431 (not b_next!109135))))

(declare-fun t!328401 () Bool)

(declare-fun tb!237563 () Bool)

(assert (=> (and b!3949640 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328401) tb!237563))

(declare-fun result!287718 () Bool)

(assert (= result!287718 result!287650))

(assert (=> d!1171369 t!328401))

(declare-fun t!328403 () Bool)

(declare-fun tb!237565 () Bool)

(assert (=> (and b!3949640 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328403) tb!237565))

(declare-fun result!287720 () Bool)

(assert (= result!287720 result!287662))

(assert (=> b!3949416 t!328403))

(declare-fun t!328405 () Bool)

(declare-fun tb!237567 () Bool)

(assert (=> (and b!3949640 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328405) tb!237567))

(declare-fun result!287722 () Bool)

(assert (= result!287722 result!287680))

(assert (=> b!3949461 t!328405))

(declare-fun t!328407 () Bool)

(declare-fun tb!237569 () Bool)

(assert (=> (and b!3949640 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328407) tb!237569))

(declare-fun result!287724 () Bool)

(assert (= result!287724 result!287692))

(assert (=> b!3949584 t!328407))

(declare-fun tp!1202890 () Bool)

(declare-fun b_and!302495 () Bool)

(assert (=> b!3949640 (= tp!1202890 (and (=> t!328401 result!287718) (=> t!328403 result!287720) (=> t!328405 result!287722) (=> t!328407 result!287724) b_and!302495))))

(declare-fun e!2444354 () Bool)

(assert (=> b!3949640 (= e!2444354 (and tp!1202891 tp!1202890))))

(declare-fun b!3949639 () Bool)

(declare-fun e!2444353 () Bool)

(declare-fun tp!1202892 () Bool)

(assert (=> b!3949639 (= e!2444353 (and tp!1202892 (inv!56201 (tag!7427 (h!47395 (t!328340 rules!2768)))) (inv!56204 (transformation!6567 (h!47395 (t!328340 rules!2768)))) e!2444354))))

(declare-fun b!3949638 () Bool)

(declare-fun e!2444356 () Bool)

(declare-fun tp!1202889 () Bool)

(assert (=> b!3949638 (= e!2444356 (and e!2444353 tp!1202889))))

(assert (=> b!3949259 (= tp!1202775 e!2444356)))

(assert (= b!3949639 b!3949640))

(assert (= b!3949638 b!3949639))

(assert (= (and b!3949259 (is-Cons!41975 (t!328340 rules!2768))) b!3949638))

(declare-fun m!4518523 () Bool)

(assert (=> b!3949639 m!4518523))

(declare-fun m!4518525 () Bool)

(assert (=> b!3949639 m!4518525))

(declare-fun b!3949644 () Bool)

(declare-fun b_free!108433 () Bool)

(declare-fun b_next!109137 () Bool)

(assert (=> b!3949644 (= b_free!108433 (not b_next!109137))))

(declare-fun t!328409 () Bool)

(declare-fun tb!237571 () Bool)

(assert (=> (and b!3949644 (= (toValue!9043 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toValue!9043 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328409) tb!237571))

(declare-fun result!287726 () Bool)

(assert (= result!287726 result!287672))

(assert (=> d!1171407 t!328409))

(declare-fun b_and!302497 () Bool)

(declare-fun tp!1202897 () Bool)

(assert (=> b!3949644 (= tp!1202897 (and (=> t!328409 result!287726) b_and!302497))))

(declare-fun b_free!108435 () Bool)

(declare-fun b_next!109139 () Bool)

(assert (=> b!3949644 (= b_free!108435 (not b_next!109139))))

(declare-fun t!328411 () Bool)

(declare-fun tb!237573 () Bool)

(assert (=> (and b!3949644 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (_1!23763 (v!39326 lt!1380464)))))) t!328411) tb!237573))

(declare-fun result!287728 () Bool)

(assert (= result!287728 result!287650))

(assert (=> d!1171369 t!328411))

(declare-fun t!328413 () Bool)

(declare-fun tb!237575 () Bool)

(assert (=> (and b!3949644 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (Token!12273 lt!1380468 (rule!9533 (_1!23763 (v!39326 lt!1380464))) lt!1380469 lt!1380466))))) t!328413) tb!237575))

(declare-fun result!287730 () Bool)

(assert (= result!287730 result!287662))

(assert (=> b!3949416 t!328413))

(declare-fun tb!237577 () Bool)

(declare-fun t!328415 () Bool)

(assert (=> (and b!3949644 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72))))) t!328415) tb!237577))

(declare-fun result!287732 () Bool)

(assert (= result!287732 result!287680))

(assert (=> b!3949461 t!328415))

(declare-fun t!328417 () Bool)

(declare-fun tb!237579 () Bool)

(assert (=> (and b!3949644 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80))))) t!328417) tb!237579))

(declare-fun result!287734 () Bool)

(assert (= result!287734 result!287692))

(assert (=> b!3949584 t!328417))

(declare-fun tp!1202894 () Bool)

(declare-fun b_and!302499 () Bool)

(assert (=> b!3949644 (= tp!1202894 (and (=> t!328411 result!287728) (=> t!328413 result!287730) (=> t!328415 result!287732) (=> t!328417 result!287734) b_and!302499))))

(declare-fun e!2444359 () Bool)

(declare-fun e!2444357 () Bool)

(declare-fun b!3949642 () Bool)

(declare-fun tp!1202893 () Bool)

(assert (=> b!3949642 (= e!2444357 (and (inv!21 (value!207795 (h!47396 (t!328341 prefixTokens!80)))) e!2444359 tp!1202893))))

(declare-fun e!2444360 () Bool)

(declare-fun tp!1202895 () Bool)

(declare-fun b!3949643 () Bool)

(assert (=> b!3949643 (= e!2444359 (and tp!1202895 (inv!56201 (tag!7427 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (inv!56204 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) e!2444360))))

(declare-fun e!2444361 () Bool)

(assert (=> b!3949276 (= tp!1202779 e!2444361)))

(assert (=> b!3949644 (= e!2444360 (and tp!1202897 tp!1202894))))

(declare-fun b!3949641 () Bool)

(declare-fun tp!1202896 () Bool)

(assert (=> b!3949641 (= e!2444361 (and (inv!56205 (h!47396 (t!328341 prefixTokens!80))) e!2444357 tp!1202896))))

(assert (= b!3949643 b!3949644))

(assert (= b!3949642 b!3949643))

(assert (= b!3949641 b!3949642))

(assert (= (and b!3949276 (is-Cons!41976 (t!328341 prefixTokens!80))) b!3949641))

(declare-fun m!4518527 () Bool)

(assert (=> b!3949642 m!4518527))

(declare-fun m!4518529 () Bool)

(assert (=> b!3949643 m!4518529))

(declare-fun m!4518531 () Bool)

(assert (=> b!3949643 m!4518531))

(declare-fun m!4518533 () Bool)

(assert (=> b!3949641 m!4518533))

(declare-fun b!3949646 () Bool)

(declare-fun e!2444363 () Bool)

(declare-fun tp!1202901 () Bool)

(declare-fun tp!1202899 () Bool)

(assert (=> b!3949646 (= e!2444363 (and tp!1202901 tp!1202899))))

(declare-fun b!3949647 () Bool)

(declare-fun tp!1202900 () Bool)

(assert (=> b!3949647 (= e!2444363 tp!1202900)))

(assert (=> b!3949255 (= tp!1202783 e!2444363)))

(declare-fun b!3949645 () Bool)

(assert (=> b!3949645 (= e!2444363 tp_is_empty!19915)))

(declare-fun b!3949648 () Bool)

(declare-fun tp!1202898 () Bool)

(declare-fun tp!1202902 () Bool)

(assert (=> b!3949648 (= e!2444363 (and tp!1202898 tp!1202902))))

(assert (= (and b!3949255 (is-ElementMatch!11472 (regex!6567 (h!47395 rules!2768)))) b!3949645))

(assert (= (and b!3949255 (is-Concat!18270 (regex!6567 (h!47395 rules!2768)))) b!3949646))

(assert (= (and b!3949255 (is-Star!11472 (regex!6567 (h!47395 rules!2768)))) b!3949647))

(assert (= (and b!3949255 (is-Union!11472 (regex!6567 (h!47395 rules!2768)))) b!3949648))

(declare-fun b!3949650 () Bool)

(declare-fun e!2444364 () Bool)

(declare-fun tp!1202906 () Bool)

(declare-fun tp!1202904 () Bool)

(assert (=> b!3949650 (= e!2444364 (and tp!1202906 tp!1202904))))

(declare-fun b!3949651 () Bool)

(declare-fun tp!1202905 () Bool)

(assert (=> b!3949651 (= e!2444364 tp!1202905)))

(assert (=> b!3949257 (= tp!1202780 e!2444364)))

(declare-fun b!3949649 () Bool)

(assert (=> b!3949649 (= e!2444364 tp_is_empty!19915)))

(declare-fun b!3949652 () Bool)

(declare-fun tp!1202903 () Bool)

(declare-fun tp!1202907 () Bool)

(assert (=> b!3949652 (= e!2444364 (and tp!1202903 tp!1202907))))

(assert (= (and b!3949257 (is-ElementMatch!11472 (regex!6567 (rule!9533 (h!47396 prefixTokens!80))))) b!3949649))

(assert (= (and b!3949257 (is-Concat!18270 (regex!6567 (rule!9533 (h!47396 prefixTokens!80))))) b!3949650))

(assert (= (and b!3949257 (is-Star!11472 (regex!6567 (rule!9533 (h!47396 prefixTokens!80))))) b!3949651))

(assert (= (and b!3949257 (is-Union!11472 (regex!6567 (rule!9533 (h!47396 prefixTokens!80))))) b!3949652))

(declare-fun b!3949653 () Bool)

(declare-fun e!2444365 () Bool)

(declare-fun tp!1202908 () Bool)

(assert (=> b!3949653 (= e!2444365 (and tp_is_empty!19915 tp!1202908))))

(assert (=> b!3949256 (= tp!1202769 e!2444365)))

(assert (= (and b!3949256 (is-Cons!41973 (originalCharacters!7167 (h!47396 suffixTokens!72)))) b!3949653))

(declare-fun b_lambda!115545 () Bool)

(assert (= b_lambda!115539 (or (and b!3949644 b_free!108435 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))))) (and b!3949626 b_free!108427 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))))) (and b!3949273 b_free!108411 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))))) (and b!3949268 b_free!108407) (and b!3949261 b_free!108403 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))))) (and b!3949640 b_free!108431 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))))) b_lambda!115545)))

(declare-fun b_lambda!115547 () Bool)

(assert (= b_lambda!115543 (or (and b!3949626 b_free!108427 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 suffixTokens!72))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))))) (and b!3949273 b_free!108411 (= (toChars!8902 (transformation!6567 (h!47395 rules!2768))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))))) (and b!3949268 b_free!108407 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 suffixTokens!72)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))))) (and b!3949261 b_free!108403) (and b!3949644 b_free!108435 (= (toChars!8902 (transformation!6567 (rule!9533 (h!47396 (t!328341 prefixTokens!80))))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))))) (and b!3949640 b_free!108431 (= (toChars!8902 (transformation!6567 (h!47395 (t!328340 rules!2768)))) (toChars!8902 (transformation!6567 (rule!9533 (h!47396 prefixTokens!80)))))) b_lambda!115547)))

(push 1)

(assert (not d!1171373))

(assert (not b!3949612))

(assert (not b_lambda!115535))

(assert (not b!3949627))

(assert (not d!1171411))

(assert (not b_next!109139))

(assert (not b!3949498))

(assert b_and!302497)

(assert (not b!3949416))

(assert (not b!3949521))

(assert (not b!3949439))

(assert (not b!3949581))

(assert (not d!1171415))

(assert (not d!1171395))

(assert (not b!3949650))

(assert (not b!3949611))

(assert (not b!3949579))

(assert (not d!1171457))

(assert (not tb!237527))

(assert (not b!3949652))

(assert b_and!302493)

(assert (not b!3949494))

(assert (not b!3949653))

(assert (not b!3949576))

(assert (not b!3949523))

(assert (not b!3949577))

(assert (not b!3949578))

(assert (not b_next!109131))

(assert b_and!302469)

(assert (not b!3949454))

(assert (not b!3949648))

(assert (not b!3949643))

(assert (not b!3949497))

(assert (not b_next!109115))

(assert (not b!3949462))

(assert (not b!3949400))

(assert (not d!1171419))

(assert b_and!302499)

(assert (not b_lambda!115537))

(assert (not b!3949586))

(assert (not b!3949351))

(assert (not b!3949372))

(assert (not b_lambda!115545))

(assert (not tb!237517))

(assert (not b!3949470))

(assert b_and!302487)

(assert (not b_next!109135))

(assert (not tb!237509))

(assert (not d!1171389))

(assert (not b!3949461))

(assert b_and!302467)

(assert (not d!1171403))

(assert (not b!3949468))

(assert b_and!302489)

(assert (not b!3949460))

(assert (not b_next!109129))

(assert (not d!1171369))

(assert (not b!3949455))

(assert (not b!3949493))

(assert (not b!3949583))

(assert b_and!302483)

(assert (not b!3949417))

(assert (not b!3949589))

(assert (not b!3949641))

(assert (not b_next!109105))

(assert (not b_next!109133))

(assert (not b!3949371))

(assert (not b!3949419))

(assert b_and!302491)

(assert (not d!1171409))

(assert (not b_next!109107))

(assert (not b!3949642))

(assert (not d!1171443))

(assert (not b_next!109109))

(assert (not b!3949623))

(assert (not b!3949584))

(assert (not b!3949501))

(assert (not b!3949585))

(assert (not d!1171385))

(assert (not d!1171383))

(assert (not d!1171423))

(assert (not b!3949646))

(assert b_and!302465)

(assert (not b!3949582))

(assert b_and!302485)

(assert b_and!302495)

(assert (not b!3949522))

(assert (not b!3949629))

(assert (not b!3949651))

(assert (not b!3949625))

(assert (not b!3949453))

(assert (not d!1171377))

(assert (not b_next!109113))

(assert (not b!3949638))

(assert (not b!3949469))

(assert (not d!1171465))

(assert (not d!1171439))

(assert (not d!1171461))

(assert (not b!3949430))

(assert (not b!3949591))

(assert (not b!3949639))

(assert (not b!3949431))

(assert (not d!1171421))

(assert (not b_lambda!115531))

(assert (not b!3949575))

(assert (not b!3949624))

(assert (not d!1171367))

(assert (not b!3949528))

(assert (not b_next!109137))

(assert (not b!3949463))

(assert (not b!3949384))

(assert (not d!1171417))

(assert (not b!3949588))

(assert (not d!1171393))

(assert (not tb!237533))

(assert (not b_lambda!115547))

(assert (not b!3949429))

(assert (not tb!237545))

(assert (not b!3949598))

(assert (not b!3949628))

(assert (not b!3949610))

(assert (not b!3949587))

(assert (not b_next!109111))

(assert (not bm!285192))

(assert (not b!3949647))

(assert (not b!3949590))

(assert tp_is_empty!19915)

(check-sat)

(pop 1)

(push 1)

(assert b_and!302493)

(assert (not b_next!109115))

(assert b_and!302499)

(assert b_and!302467)

(assert b_and!302483)

(assert (not b_next!109113))

(assert (not b_next!109137))

(assert (not b_next!109111))

(assert (not b_next!109139))

(assert b_and!302497)

(assert (not b_next!109131))

(assert b_and!302469)

(assert b_and!302487)

(assert (not b_next!109135))

(assert (not b_next!109129))

(assert b_and!302489)

(assert (not b_next!109105))

(assert (not b_next!109133))

(assert b_and!302491)

(assert (not b_next!109109))

(assert (not b_next!109107))

(assert b_and!302465)

(assert b_and!302485)

(assert b_and!302495)

(check-sat)

(pop 1)

