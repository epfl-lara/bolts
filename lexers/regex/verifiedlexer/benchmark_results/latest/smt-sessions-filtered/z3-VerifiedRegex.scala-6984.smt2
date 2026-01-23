; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!370944 () Bool)

(assert start!370944)

(declare-fun b!3947199 () Bool)

(declare-fun b_free!108197 () Bool)

(declare-fun b_next!108901 () Bool)

(assert (=> b!3947199 (= b_free!108197 (not b_next!108901))))

(declare-fun tp!1201803 () Bool)

(declare-fun b_and!302075 () Bool)

(assert (=> b!3947199 (= tp!1201803 b_and!302075)))

(declare-fun b_free!108199 () Bool)

(declare-fun b_next!108903 () Bool)

(assert (=> b!3947199 (= b_free!108199 (not b_next!108903))))

(declare-fun tp!1201792 () Bool)

(declare-fun b_and!302077 () Bool)

(assert (=> b!3947199 (= tp!1201792 b_and!302077)))

(declare-fun b!3947201 () Bool)

(declare-fun b_free!108201 () Bool)

(declare-fun b_next!108905 () Bool)

(assert (=> b!3947201 (= b_free!108201 (not b_next!108905))))

(declare-fun tp!1201802 () Bool)

(declare-fun b_and!302079 () Bool)

(assert (=> b!3947201 (= tp!1201802 b_and!302079)))

(declare-fun b_free!108203 () Bool)

(declare-fun b_next!108907 () Bool)

(assert (=> b!3947201 (= b_free!108203 (not b_next!108907))))

(declare-fun tp!1201800 () Bool)

(declare-fun b_and!302081 () Bool)

(assert (=> b!3947201 (= tp!1201800 b_and!302081)))

(declare-fun b!3947186 () Bool)

(declare-fun b_free!108205 () Bool)

(declare-fun b_next!108909 () Bool)

(assert (=> b!3947186 (= b_free!108205 (not b_next!108909))))

(declare-fun tp!1201801 () Bool)

(declare-fun b_and!302083 () Bool)

(assert (=> b!3947186 (= tp!1201801 b_and!302083)))

(declare-fun b_free!108207 () Bool)

(declare-fun b_next!108911 () Bool)

(assert (=> b!3947186 (= b_free!108207 (not b_next!108911))))

(declare-fun tp!1201797 () Bool)

(declare-fun b_and!302085 () Bool)

(assert (=> b!3947186 (= tp!1201797 b_and!302085)))

(declare-fun e!2442541 () Bool)

(assert (=> b!3947186 (= e!2442541 (and tp!1201801 tp!1201797))))

(declare-fun b!3947187 () Bool)

(declare-fun e!2442542 () Bool)

(declare-fun e!2442527 () Bool)

(declare-fun tp!1201808 () Bool)

(assert (=> b!3947187 (= e!2442542 (and e!2442527 tp!1201808))))

(declare-fun tp!1201796 () Bool)

(declare-datatypes ((List!42047 0))(
  ( (Nil!41923) (Cons!41923 (h!47343 (_ BitVec 16)) (t!328000 List!42047)) )
))
(declare-datatypes ((TokenValue!6786 0))(
  ( (FloatLiteralValue!13572 (text!47947 List!42047)) (TokenValueExt!6785 (__x!25789 Int)) (Broken!33930 (value!207454 List!42047)) (Object!6909) (End!6786) (Def!6786) (Underscore!6786) (Match!6786) (Else!6786) (Error!6786) (Case!6786) (If!6786) (Extends!6786) (Abstract!6786) (Class!6786) (Val!6786) (DelimiterValue!13572 (del!6846 List!42047)) (KeywordValue!6792 (value!207455 List!42047)) (CommentValue!13572 (value!207456 List!42047)) (WhitespaceValue!13572 (value!207457 List!42047)) (IndentationValue!6786 (value!207458 List!42047)) (String!47647) (Int32!6786) (Broken!33931 (value!207459 List!42047)) (Boolean!6787) (Unit!60457) (OperatorValue!6789 (op!6846 List!42047)) (IdentifierValue!13572 (value!207460 List!42047)) (IdentifierValue!13573 (value!207461 List!42047)) (WhitespaceValue!13573 (value!207462 List!42047)) (True!13572) (False!13572) (Broken!33932 (value!207463 List!42047)) (Broken!33933 (value!207464 List!42047)) (True!13573) (RightBrace!6786) (RightBracket!6786) (Colon!6786) (Null!6786) (Comma!6786) (LeftBracket!6786) (False!13573) (LeftBrace!6786) (ImaginaryLiteralValue!6786 (text!47948 List!42047)) (StringLiteralValue!20358 (value!207465 List!42047)) (EOFValue!6786 (value!207466 List!42047)) (IdentValue!6786 (value!207467 List!42047)) (DelimiterValue!13573 (value!207468 List!42047)) (DedentValue!6786 (value!207469 List!42047)) (NewLineValue!6786 (value!207470 List!42047)) (IntegerValue!20358 (value!207471 (_ BitVec 32)) (text!47949 List!42047)) (IntegerValue!20359 (value!207472 Int) (text!47950 List!42047)) (Times!6786) (Or!6786) (Equal!6786) (Minus!6786) (Broken!33934 (value!207473 List!42047)) (And!6786) (Div!6786) (LessEqual!6786) (Mod!6786) (Concat!18247) (Not!6786) (Plus!6786) (SpaceValue!6786 (value!207474 List!42047)) (IntegerValue!20360 (value!207475 Int) (text!47951 List!42047)) (StringLiteralValue!20359 (text!47952 List!42047)) (FloatLiteralValue!13573 (text!47953 List!42047)) (BytesLiteralValue!6786 (value!207476 List!42047)) (CommentValue!13573 (value!207477 List!42047)) (StringLiteralValue!20360 (value!207478 List!42047)) (ErrorTokenValue!6786 (msg!6847 List!42047)) )
))
(declare-datatypes ((C!23108 0))(
  ( (C!23109 (val!13648 Int)) )
))
(declare-datatypes ((Regex!11461 0))(
  ( (ElementMatch!11461 (c!685600 C!23108)) (Concat!18248 (regOne!23434 Regex!11461) (regTwo!23434 Regex!11461)) (EmptyExpr!11461) (Star!11461 (reg!11790 Regex!11461)) (EmptyLang!11461) (Union!11461 (regOne!23435 Regex!11461) (regTwo!23435 Regex!11461)) )
))
(declare-datatypes ((String!47648 0))(
  ( (String!47649 (value!207479 String)) )
))
(declare-datatypes ((List!42048 0))(
  ( (Nil!41924) (Cons!41924 (h!47344 C!23108) (t!328001 List!42048)) )
))
(declare-datatypes ((IArray!25539 0))(
  ( (IArray!25540 (innerList!12827 List!42048)) )
))
(declare-datatypes ((Conc!12767 0))(
  ( (Node!12767 (left!31923 Conc!12767) (right!32253 Conc!12767) (csize!25764 Int) (cheight!12978 Int)) (Leaf!19752 (xs!16073 IArray!25539) (csize!25765 Int)) (Empty!12767) )
))
(declare-datatypes ((BalanceConc!25128 0))(
  ( (BalanceConc!25129 (c!685601 Conc!12767)) )
))
(declare-datatypes ((TokenValueInjection!13000 0))(
  ( (TokenValueInjection!13001 (toValue!9032 Int) (toChars!8891 Int)) )
))
(declare-datatypes ((Rule!12912 0))(
  ( (Rule!12913 (regex!6556 Regex!11461) (tag!7416 String!47648) (isSeparator!6556 Bool) (transformation!6556 TokenValueInjection!13000)) )
))
(declare-datatypes ((Token!12250 0))(
  ( (Token!12251 (value!207480 TokenValue!6786) (rule!9522 Rule!12912) (size!31435 Int) (originalCharacters!7156 List!42048)) )
))
(declare-datatypes ((List!42049 0))(
  ( (Nil!41925) (Cons!41925 (h!47345 Token!12250) (t!328002 List!42049)) )
))
(declare-fun prefixTokens!80 () List!42049)

(declare-fun e!2442530 () Bool)

(declare-fun e!2442536 () Bool)

(declare-fun b!3947188 () Bool)

(declare-fun inv!56152 (Token!12250) Bool)

(assert (=> b!3947188 (= e!2442536 (and (inv!56152 (h!47345 prefixTokens!80)) e!2442530 tp!1201796))))

(declare-fun tp!1201806 () Bool)

(declare-datatypes ((List!42050 0))(
  ( (Nil!41926) (Cons!41926 (h!47346 Rule!12912) (t!328003 List!42050)) )
))
(declare-fun rules!2768 () List!42050)

(declare-fun b!3947189 () Bool)

(declare-fun inv!56149 (String!47648) Bool)

(declare-fun inv!56153 (TokenValueInjection!13000) Bool)

(assert (=> b!3947189 (= e!2442527 (and tp!1201806 (inv!56149 (tag!7416 (h!47346 rules!2768))) (inv!56153 (transformation!6556 (h!47346 rules!2768))) e!2442541))))

(declare-fun e!2442524 () Bool)

(declare-fun b!3947190 () Bool)

(declare-fun suffixTokens!72 () List!42049)

(declare-fun e!2442534 () Bool)

(declare-fun tp!1201799 () Bool)

(assert (=> b!3947190 (= e!2442524 (and (inv!56152 (h!47345 suffixTokens!72)) e!2442534 tp!1201799))))

(declare-fun b!3947191 () Bool)

(declare-fun e!2442529 () Bool)

(declare-fun tp_is_empty!19893 () Bool)

(declare-fun tp!1201807 () Bool)

(assert (=> b!3947191 (= e!2442529 (and tp_is_empty!19893 tp!1201807))))

(declare-fun b!3947192 () Bool)

(declare-fun e!2442535 () Bool)

(declare-fun tp!1201805 () Bool)

(assert (=> b!3947192 (= e!2442535 (and tp_is_empty!19893 tp!1201805))))

(declare-fun b!3947193 () Bool)

(declare-fun e!2442526 () Bool)

(assert (=> b!3947193 (= e!2442526 (not true))))

(declare-fun e!2442540 () Bool)

(assert (=> b!3947193 e!2442540))

(declare-fun res!1597131 () Bool)

(assert (=> b!3947193 (=> (not res!1597131) (not e!2442540))))

(declare-datatypes ((tuple2!41214 0))(
  ( (tuple2!41215 (_1!23741 Token!12250) (_2!23741 List!42048)) )
))
(declare-datatypes ((Option!8976 0))(
  ( (None!8975) (Some!8975 (v!39315 tuple2!41214)) )
))
(declare-fun lt!1379866 () Option!8976)

(declare-fun lt!1379864 () List!42048)

(assert (=> b!3947193 (= res!1597131 (= (_2!23741 (v!39315 lt!1379866)) lt!1379864))))

(declare-fun lt!1379867 () List!42048)

(declare-datatypes ((Unit!60458 0))(
  ( (Unit!60459) )
))
(declare-fun lt!1379861 () Unit!60458)

(declare-fun lt!1379865 () List!42048)

(declare-fun lemmaSamePrefixThenSameSuffix!1854 (List!42048 List!42048 List!42048 List!42048 List!42048) Unit!60458)

(assert (=> b!3947193 (= lt!1379861 (lemmaSamePrefixThenSameSuffix!1854 lt!1379865 (_2!23741 (v!39315 lt!1379866)) lt!1379865 lt!1379864 lt!1379867))))

(declare-fun getSuffix!2096 (List!42048 List!42048) List!42048)

(assert (=> b!3947193 (= lt!1379864 (getSuffix!2096 lt!1379867 lt!1379865))))

(declare-fun isPrefix!3645 (List!42048 List!42048) Bool)

(declare-fun ++!10869 (List!42048 List!42048) List!42048)

(assert (=> b!3947193 (isPrefix!3645 lt!1379865 (++!10869 lt!1379865 (_2!23741 (v!39315 lt!1379866))))))

(declare-fun lt!1379863 () Unit!60458)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2504 (List!42048 List!42048) Unit!60458)

(assert (=> b!3947193 (= lt!1379863 (lemmaConcatTwoListThenFirstIsPrefix!2504 lt!1379865 (_2!23741 (v!39315 lt!1379866))))))

(declare-fun list!15574 (BalanceConc!25128) List!42048)

(declare-fun charsOf!4374 (Token!12250) BalanceConc!25128)

(assert (=> b!3947193 (= lt!1379865 (list!15574 (charsOf!4374 (_1!23741 (v!39315 lt!1379866)))))))

(declare-datatypes ((LexerInterface!6145 0))(
  ( (LexerInterfaceExt!6142 (__x!25790 Int)) (Lexer!6143) )
))
(declare-fun thiss!20629 () LexerInterface!6145)

(declare-fun ruleValid!2498 (LexerInterface!6145 Rule!12912) Bool)

(assert (=> b!3947193 (ruleValid!2498 thiss!20629 (rule!9522 (_1!23741 (v!39315 lt!1379866))))))

(declare-fun lt!1379862 () Unit!60458)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1574 (LexerInterface!6145 Rule!12912 List!42050) Unit!60458)

(assert (=> b!3947193 (= lt!1379862 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1574 thiss!20629 (rule!9522 (_1!23741 (v!39315 lt!1379866))) rules!2768))))

(declare-fun lt!1379860 () Unit!60458)

(declare-fun lemmaCharactersSize!1209 (Token!12250) Unit!60458)

(assert (=> b!3947193 (= lt!1379860 (lemmaCharactersSize!1209 (_1!23741 (v!39315 lt!1379866))))))

(declare-fun b!3947194 () Bool)

(declare-fun res!1597125 () Bool)

(declare-fun e!2442525 () Bool)

(assert (=> b!3947194 (=> (not res!1597125) (not e!2442525))))

(declare-fun suffixResult!91 () List!42048)

(declare-fun suffix!1176 () List!42048)

(declare-datatypes ((tuple2!41216 0))(
  ( (tuple2!41217 (_1!23742 List!42049) (_2!23742 List!42048)) )
))
(declare-fun lexList!1913 (LexerInterface!6145 List!42050 List!42048) tuple2!41216)

(assert (=> b!3947194 (= res!1597125 (= (lexList!1913 thiss!20629 rules!2768 suffix!1176) (tuple2!41217 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3947195 () Bool)

(declare-fun res!1597128 () Bool)

(declare-fun e!2442523 () Bool)

(assert (=> b!3947195 (=> (not res!1597128) (not e!2442523))))

(declare-fun isEmpty!25024 (List!42050) Bool)

(assert (=> b!3947195 (= res!1597128 (not (isEmpty!25024 rules!2768)))))

(declare-fun b!3947196 () Bool)

(declare-fun res!1597130 () Bool)

(assert (=> b!3947196 (=> (not res!1597130) (not e!2442523))))

(declare-fun isEmpty!25025 (List!42049) Bool)

(assert (=> b!3947196 (= res!1597130 (not (isEmpty!25025 prefixTokens!80)))))

(declare-fun b!3947198 () Bool)

(declare-fun e!2442543 () Bool)

(declare-fun tp!1201793 () Bool)

(assert (=> b!3947198 (= e!2442543 (and tp_is_empty!19893 tp!1201793))))

(declare-fun e!2442537 () Bool)

(assert (=> b!3947199 (= e!2442537 (and tp!1201803 tp!1201792))))

(declare-fun b!3947200 () Bool)

(assert (=> b!3947200 (= e!2442523 e!2442525)))

(declare-fun res!1597129 () Bool)

(assert (=> b!3947200 (=> (not res!1597129) (not e!2442525))))

(declare-fun ++!10870 (List!42049 List!42049) List!42049)

(assert (=> b!3947200 (= res!1597129 (= (lexList!1913 thiss!20629 rules!2768 lt!1379867) (tuple2!41217 (++!10870 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42048)

(assert (=> b!3947200 (= lt!1379867 (++!10869 prefix!426 suffix!1176))))

(declare-fun e!2442538 () Bool)

(assert (=> b!3947201 (= e!2442538 (and tp!1201802 tp!1201800))))

(declare-fun b!3947202 () Bool)

(declare-fun res!1597124 () Bool)

(assert (=> b!3947202 (=> (not res!1597124) (not e!2442523))))

(declare-fun isEmpty!25026 (List!42048) Bool)

(assert (=> b!3947202 (= res!1597124 (not (isEmpty!25026 prefix!426)))))

(declare-fun b!3947203 () Bool)

(declare-fun res!1597126 () Bool)

(assert (=> b!3947203 (=> (not res!1597126) (not e!2442523))))

(declare-fun rulesInvariant!5488 (LexerInterface!6145 List!42050) Bool)

(assert (=> b!3947203 (= res!1597126 (rulesInvariant!5488 thiss!20629 rules!2768))))

(declare-fun e!2442532 () Bool)

(declare-fun tp!1201804 () Bool)

(declare-fun b!3947204 () Bool)

(declare-fun inv!21 (TokenValue!6786) Bool)

(assert (=> b!3947204 (= e!2442530 (and (inv!21 (value!207480 (h!47345 prefixTokens!80))) e!2442532 tp!1201804))))

(declare-fun b!3947205 () Bool)

(assert (=> b!3947205 (= e!2442525 e!2442526)))

(declare-fun res!1597127 () Bool)

(assert (=> b!3947205 (=> (not res!1597127) (not e!2442526))))

(get-info :version)

(assert (=> b!3947205 (= res!1597127 ((_ is Some!8975) lt!1379866))))

(declare-fun maxPrefix!3449 (LexerInterface!6145 List!42050 List!42048) Option!8976)

(assert (=> b!3947205 (= lt!1379866 (maxPrefix!3449 thiss!20629 rules!2768 lt!1379867))))

(declare-fun b!3947206 () Bool)

(declare-fun tp!1201795 () Bool)

(assert (=> b!3947206 (= e!2442532 (and tp!1201795 (inv!56149 (tag!7416 (rule!9522 (h!47345 prefixTokens!80)))) (inv!56153 (transformation!6556 (rule!9522 (h!47345 prefixTokens!80)))) e!2442537))))

(declare-fun e!2442544 () Bool)

(declare-fun b!3947207 () Bool)

(declare-fun tp!1201798 () Bool)

(assert (=> b!3947207 (= e!2442544 (and tp!1201798 (inv!56149 (tag!7416 (rule!9522 (h!47345 suffixTokens!72)))) (inv!56153 (transformation!6556 (rule!9522 (h!47345 suffixTokens!72)))) e!2442538))))

(declare-fun tp!1201794 () Bool)

(declare-fun b!3947208 () Bool)

(assert (=> b!3947208 (= e!2442534 (and (inv!21 (value!207480 (h!47345 suffixTokens!72))) e!2442544 tp!1201794))))

(declare-fun res!1597132 () Bool)

(assert (=> start!370944 (=> (not res!1597132) (not e!2442523))))

(assert (=> start!370944 (= res!1597132 ((_ is Lexer!6143) thiss!20629))))

(assert (=> start!370944 e!2442523))

(assert (=> start!370944 e!2442543))

(assert (=> start!370944 true))

(assert (=> start!370944 e!2442535))

(assert (=> start!370944 e!2442542))

(assert (=> start!370944 e!2442536))

(assert (=> start!370944 e!2442524))

(assert (=> start!370944 e!2442529))

(declare-fun b!3947197 () Bool)

(declare-fun apply!9787 (TokenValueInjection!13000 BalanceConc!25128) TokenValue!6786)

(declare-fun seqFromList!4815 (List!42048) BalanceConc!25128)

(assert (=> b!3947197 (= e!2442540 (= (value!207480 (_1!23741 (v!39315 lt!1379866))) (apply!9787 (transformation!6556 (rule!9522 (_1!23741 (v!39315 lt!1379866)))) (seqFromList!4815 lt!1379865))))))

(assert (= (and start!370944 res!1597132) b!3947195))

(assert (= (and b!3947195 res!1597128) b!3947203))

(assert (= (and b!3947203 res!1597126) b!3947196))

(assert (= (and b!3947196 res!1597130) b!3947202))

(assert (= (and b!3947202 res!1597124) b!3947200))

(assert (= (and b!3947200 res!1597129) b!3947194))

(assert (= (and b!3947194 res!1597125) b!3947205))

(assert (= (and b!3947205 res!1597127) b!3947193))

(assert (= (and b!3947193 res!1597131) b!3947197))

(assert (= (and start!370944 ((_ is Cons!41924) suffixResult!91)) b!3947198))

(assert (= (and start!370944 ((_ is Cons!41924) suffix!1176)) b!3947192))

(assert (= b!3947189 b!3947186))

(assert (= b!3947187 b!3947189))

(assert (= (and start!370944 ((_ is Cons!41926) rules!2768)) b!3947187))

(assert (= b!3947206 b!3947199))

(assert (= b!3947204 b!3947206))

(assert (= b!3947188 b!3947204))

(assert (= (and start!370944 ((_ is Cons!41925) prefixTokens!80)) b!3947188))

(assert (= b!3947207 b!3947201))

(assert (= b!3947208 b!3947207))

(assert (= b!3947190 b!3947208))

(assert (= (and start!370944 ((_ is Cons!41925) suffixTokens!72)) b!3947190))

(assert (= (and start!370944 ((_ is Cons!41924) prefix!426)) b!3947191))

(declare-fun m!4516059 () Bool)

(assert (=> b!3947208 m!4516059))

(declare-fun m!4516061 () Bool)

(assert (=> b!3947194 m!4516061))

(declare-fun m!4516063 () Bool)

(assert (=> b!3947203 m!4516063))

(declare-fun m!4516065 () Bool)

(assert (=> b!3947195 m!4516065))

(declare-fun m!4516067 () Bool)

(assert (=> b!3947193 m!4516067))

(declare-fun m!4516069 () Bool)

(assert (=> b!3947193 m!4516069))

(declare-fun m!4516071 () Bool)

(assert (=> b!3947193 m!4516071))

(declare-fun m!4516073 () Bool)

(assert (=> b!3947193 m!4516073))

(declare-fun m!4516075 () Bool)

(assert (=> b!3947193 m!4516075))

(declare-fun m!4516077 () Bool)

(assert (=> b!3947193 m!4516077))

(declare-fun m!4516079 () Bool)

(assert (=> b!3947193 m!4516079))

(declare-fun m!4516081 () Bool)

(assert (=> b!3947193 m!4516081))

(assert (=> b!3947193 m!4516075))

(declare-fun m!4516083 () Bool)

(assert (=> b!3947193 m!4516083))

(declare-fun m!4516085 () Bool)

(assert (=> b!3947193 m!4516085))

(assert (=> b!3947193 m!4516079))

(declare-fun m!4516087 () Bool)

(assert (=> b!3947190 m!4516087))

(declare-fun m!4516089 () Bool)

(assert (=> b!3947189 m!4516089))

(declare-fun m!4516091 () Bool)

(assert (=> b!3947189 m!4516091))

(declare-fun m!4516093 () Bool)

(assert (=> b!3947188 m!4516093))

(declare-fun m!4516095 () Bool)

(assert (=> b!3947196 m!4516095))

(declare-fun m!4516097 () Bool)

(assert (=> b!3947207 m!4516097))

(declare-fun m!4516099 () Bool)

(assert (=> b!3947207 m!4516099))

(declare-fun m!4516101 () Bool)

(assert (=> b!3947205 m!4516101))

(declare-fun m!4516103 () Bool)

(assert (=> b!3947202 m!4516103))

(declare-fun m!4516105 () Bool)

(assert (=> b!3947206 m!4516105))

(declare-fun m!4516107 () Bool)

(assert (=> b!3947206 m!4516107))

(declare-fun m!4516109 () Bool)

(assert (=> b!3947204 m!4516109))

(declare-fun m!4516111 () Bool)

(assert (=> b!3947200 m!4516111))

(declare-fun m!4516113 () Bool)

(assert (=> b!3947200 m!4516113))

(declare-fun m!4516115 () Bool)

(assert (=> b!3947200 m!4516115))

(declare-fun m!4516117 () Bool)

(assert (=> b!3947197 m!4516117))

(assert (=> b!3947197 m!4516117))

(declare-fun m!4516119 () Bool)

(assert (=> b!3947197 m!4516119))

(check-sat b_and!302077 (not b_next!108911) (not b!3947192) (not b_next!108905) (not b_next!108901) (not b!3947189) (not b!3947203) (not b!3947196) b_and!302081 (not b!3947193) (not b_next!108903) b_and!302079 (not b!3947198) (not b!3947191) (not b!3947195) (not b!3947197) b_and!302085 (not b!3947206) b_and!302083 (not b!3947207) (not b!3947187) (not b!3947205) (not b!3947188) (not b!3947208) (not b!3947200) (not b!3947190) b_and!302075 (not b!3947202) tp_is_empty!19893 (not b!3947204) (not b!3947194) (not b_next!108909) (not b_next!108907))
(check-sat b_and!302077 b_and!302085 (not b_next!108911) b_and!302083 (not b_next!108905) (not b_next!108901) b_and!302075 b_and!302081 (not b_next!108903) b_and!302079 (not b_next!108909) (not b_next!108907))
