; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!370230 () Bool)

(assert start!370230)

(declare-fun b!3942272 () Bool)

(declare-fun b_free!107897 () Bool)

(declare-fun b_next!108601 () Bool)

(assert (=> b!3942272 (= b_free!107897 (not b_next!108601))))

(declare-fun tp!1199916 () Bool)

(declare-fun b_and!301331 () Bool)

(assert (=> b!3942272 (= tp!1199916 b_and!301331)))

(declare-fun b_free!107899 () Bool)

(declare-fun b_next!108603 () Bool)

(assert (=> b!3942272 (= b_free!107899 (not b_next!108603))))

(declare-fun tp!1199917 () Bool)

(declare-fun b_and!301333 () Bool)

(assert (=> b!3942272 (= tp!1199917 b_and!301333)))

(declare-fun b!3942277 () Bool)

(declare-fun b_free!107901 () Bool)

(declare-fun b_next!108605 () Bool)

(assert (=> b!3942277 (= b_free!107901 (not b_next!108605))))

(declare-fun tp!1199919 () Bool)

(declare-fun b_and!301335 () Bool)

(assert (=> b!3942277 (= tp!1199919 b_and!301335)))

(declare-fun b_free!107903 () Bool)

(declare-fun b_next!108607 () Bool)

(assert (=> b!3942277 (= b_free!107903 (not b_next!108607))))

(declare-fun tp!1199906 () Bool)

(declare-fun b_and!301337 () Bool)

(assert (=> b!3942277 (= tp!1199906 b_and!301337)))

(declare-fun b!3942290 () Bool)

(declare-fun b_free!107905 () Bool)

(declare-fun b_next!108609 () Bool)

(assert (=> b!3942290 (= b_free!107905 (not b_next!108609))))

(declare-fun tp!1199907 () Bool)

(declare-fun b_and!301339 () Bool)

(assert (=> b!3942290 (= tp!1199907 b_and!301339)))

(declare-fun b_free!107907 () Bool)

(declare-fun b_next!108611 () Bool)

(assert (=> b!3942290 (= b_free!107907 (not b_next!108611))))

(declare-fun tp!1199920 () Bool)

(declare-fun b_and!301341 () Bool)

(assert (=> b!3942290 (= tp!1199920 b_and!301341)))

(declare-fun e!2439372 () Bool)

(declare-fun tp!1199909 () Bool)

(declare-datatypes ((List!41995 0))(
  ( (Nil!41871) (Cons!41871 (h!47291 (_ BitVec 16)) (t!327078 List!41995)) )
))
(declare-datatypes ((TokenValue!6775 0))(
  ( (FloatLiteralValue!13550 (text!47870 List!41995)) (TokenValueExt!6774 (__x!25767 Int)) (Broken!33875 (value!207142 List!41995)) (Object!6898) (End!6775) (Def!6775) (Underscore!6775) (Match!6775) (Else!6775) (Error!6775) (Case!6775) (If!6775) (Extends!6775) (Abstract!6775) (Class!6775) (Val!6775) (DelimiterValue!13550 (del!6835 List!41995)) (KeywordValue!6781 (value!207143 List!41995)) (CommentValue!13550 (value!207144 List!41995)) (WhitespaceValue!13550 (value!207145 List!41995)) (IndentationValue!6775 (value!207146 List!41995)) (String!47594) (Int32!6775) (Broken!33876 (value!207147 List!41995)) (Boolean!6776) (Unit!60416) (OperatorValue!6778 (op!6835 List!41995)) (IdentifierValue!13550 (value!207148 List!41995)) (IdentifierValue!13551 (value!207149 List!41995)) (WhitespaceValue!13551 (value!207150 List!41995)) (True!13550) (False!13550) (Broken!33877 (value!207151 List!41995)) (Broken!33878 (value!207152 List!41995)) (True!13551) (RightBrace!6775) (RightBracket!6775) (Colon!6775) (Null!6775) (Comma!6775) (LeftBracket!6775) (False!13551) (LeftBrace!6775) (ImaginaryLiteralValue!6775 (text!47871 List!41995)) (StringLiteralValue!20325 (value!207153 List!41995)) (EOFValue!6775 (value!207154 List!41995)) (IdentValue!6775 (value!207155 List!41995)) (DelimiterValue!13551 (value!207156 List!41995)) (DedentValue!6775 (value!207157 List!41995)) (NewLineValue!6775 (value!207158 List!41995)) (IntegerValue!20325 (value!207159 (_ BitVec 32)) (text!47872 List!41995)) (IntegerValue!20326 (value!207160 Int) (text!47873 List!41995)) (Times!6775) (Or!6775) (Equal!6775) (Minus!6775) (Broken!33879 (value!207161 List!41995)) (And!6775) (Div!6775) (LessEqual!6775) (Mod!6775) (Concat!18225) (Not!6775) (Plus!6775) (SpaceValue!6775 (value!207162 List!41995)) (IntegerValue!20327 (value!207163 Int) (text!47874 List!41995)) (StringLiteralValue!20326 (text!47875 List!41995)) (FloatLiteralValue!13551 (text!47876 List!41995)) (BytesLiteralValue!6775 (value!207164 List!41995)) (CommentValue!13551 (value!207165 List!41995)) (StringLiteralValue!20327 (value!207166 List!41995)) (ErrorTokenValue!6775 (msg!6836 List!41995)) )
))
(declare-datatypes ((C!23086 0))(
  ( (C!23087 (val!13637 Int)) )
))
(declare-datatypes ((Regex!11450 0))(
  ( (ElementMatch!11450 (c!684841 C!23086)) (Concat!18226 (regOne!23412 Regex!11450) (regTwo!23412 Regex!11450)) (EmptyExpr!11450) (Star!11450 (reg!11779 Regex!11450)) (EmptyLang!11450) (Union!11450 (regOne!23413 Regex!11450) (regTwo!23413 Regex!11450)) )
))
(declare-datatypes ((String!47595 0))(
  ( (String!47596 (value!207167 String)) )
))
(declare-datatypes ((List!41996 0))(
  ( (Nil!41872) (Cons!41872 (h!47292 C!23086) (t!327079 List!41996)) )
))
(declare-datatypes ((IArray!25517 0))(
  ( (IArray!25518 (innerList!12816 List!41996)) )
))
(declare-datatypes ((Conc!12756 0))(
  ( (Node!12756 (left!31895 Conc!12756) (right!32225 Conc!12756) (csize!25742 Int) (cheight!12967 Int)) (Leaf!19736 (xs!16062 IArray!25517) (csize!25743 Int)) (Empty!12756) )
))
(declare-datatypes ((BalanceConc!25106 0))(
  ( (BalanceConc!25107 (c!684842 Conc!12756)) )
))
(declare-datatypes ((TokenValueInjection!12978 0))(
  ( (TokenValueInjection!12979 (toValue!9009 Int) (toChars!8868 Int)) )
))
(declare-datatypes ((Rule!12890 0))(
  ( (Rule!12891 (regex!6545 Regex!11450) (tag!7405 String!47595) (isSeparator!6545 Bool) (transformation!6545 TokenValueInjection!12978)) )
))
(declare-datatypes ((Token!12228 0))(
  ( (Token!12229 (value!207168 TokenValue!6775) (rule!9505 Rule!12890) (size!31402 Int) (originalCharacters!7145 List!41996)) )
))
(declare-datatypes ((List!41997 0))(
  ( (Nil!41873) (Cons!41873 (h!47293 Token!12228) (t!327080 List!41997)) )
))
(declare-fun prefixTokens!80 () List!41997)

(declare-fun b!3942269 () Bool)

(declare-fun e!2439356 () Bool)

(declare-fun inv!56082 (Token!12228) Bool)

(assert (=> b!3942269 (= e!2439356 (and (inv!56082 (h!47293 prefixTokens!80)) e!2439372 tp!1199909))))

(declare-fun e!2439360 () Bool)

(declare-datatypes ((List!41998 0))(
  ( (Nil!41874) (Cons!41874 (h!47294 Rule!12890) (t!327081 List!41998)) )
))
(declare-fun rules!2768 () List!41998)

(declare-fun tp!1199910 () Bool)

(declare-fun e!2439359 () Bool)

(declare-fun b!3942270 () Bool)

(declare-fun inv!56079 (String!47595) Bool)

(declare-fun inv!56083 (TokenValueInjection!12978) Bool)

(assert (=> b!3942270 (= e!2439360 (and tp!1199910 (inv!56079 (tag!7405 (h!47294 rules!2768))) (inv!56083 (transformation!6545 (h!47294 rules!2768))) e!2439359))))

(declare-fun b!3942271 () Bool)

(declare-fun res!1595349 () Bool)

(declare-fun e!2439363 () Bool)

(assert (=> b!3942271 (=> (not res!1595349) (not e!2439363))))

(declare-fun isEmpty!24983 (List!41997) Bool)

(assert (=> b!3942271 (= res!1595349 (not (isEmpty!24983 prefixTokens!80)))))

(declare-fun e!2439370 () Bool)

(assert (=> b!3942272 (= e!2439370 (and tp!1199916 tp!1199917))))

(declare-fun res!1595345 () Bool)

(assert (=> start!370230 (=> (not res!1595345) (not e!2439363))))

(declare-datatypes ((LexerInterface!6134 0))(
  ( (LexerInterfaceExt!6131 (__x!25768 Int)) (Lexer!6132) )
))
(declare-fun thiss!20629 () LexerInterface!6134)

(assert (=> start!370230 (= res!1595345 (is-Lexer!6132 thiss!20629))))

(assert (=> start!370230 e!2439363))

(declare-fun e!2439368 () Bool)

(assert (=> start!370230 e!2439368))

(assert (=> start!370230 true))

(declare-fun e!2439367 () Bool)

(assert (=> start!370230 e!2439367))

(declare-fun e!2439369 () Bool)

(assert (=> start!370230 e!2439369))

(assert (=> start!370230 e!2439356))

(declare-fun e!2439364 () Bool)

(assert (=> start!370230 e!2439364))

(declare-fun e!2439362 () Bool)

(assert (=> start!370230 e!2439362))

(declare-fun b!3942273 () Bool)

(declare-fun tp!1199911 () Bool)

(declare-fun suffixTokens!72 () List!41997)

(declare-fun e!2439355 () Bool)

(declare-fun e!2439357 () Bool)

(declare-fun inv!21 (TokenValue!6775) Bool)

(assert (=> b!3942273 (= e!2439355 (and (inv!21 (value!207168 (h!47293 suffixTokens!72))) e!2439357 tp!1199911))))

(declare-fun b!3942274 () Bool)

(declare-fun tp_is_empty!19871 () Bool)

(declare-fun tp!1199915 () Bool)

(assert (=> b!3942274 (= e!2439368 (and tp_is_empty!19871 tp!1199915))))

(declare-fun e!2439354 () Bool)

(declare-fun b!3942275 () Bool)

(declare-fun tp!1199914 () Bool)

(assert (=> b!3942275 (= e!2439357 (and tp!1199914 (inv!56079 (tag!7405 (rule!9505 (h!47293 suffixTokens!72)))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) e!2439354))))

(declare-fun b!3942276 () Bool)

(declare-fun res!1595350 () Bool)

(assert (=> b!3942276 (=> (not res!1595350) (not e!2439363))))

(declare-fun isEmpty!24984 (List!41998) Bool)

(assert (=> b!3942276 (= res!1595350 (not (isEmpty!24984 rules!2768)))))

(assert (=> b!3942277 (= e!2439354 (and tp!1199919 tp!1199906))))

(declare-fun b!3942278 () Bool)

(declare-fun tp!1199913 () Bool)

(assert (=> b!3942278 (= e!2439362 (and tp_is_empty!19871 tp!1199913))))

(declare-fun b!3942279 () Bool)

(declare-fun tp!1199921 () Bool)

(assert (=> b!3942279 (= e!2439367 (and tp_is_empty!19871 tp!1199921))))

(declare-fun b!3942280 () Bool)

(declare-fun res!1595346 () Bool)

(assert (=> b!3942280 (=> (not res!1595346) (not e!2439363))))

(declare-fun prefix!426 () List!41996)

(declare-fun isEmpty!24985 (List!41996) Bool)

(assert (=> b!3942280 (= res!1595346 (not (isEmpty!24985 prefix!426)))))

(declare-fun b!3942281 () Bool)

(declare-fun e!2439374 () Bool)

(declare-fun lt!1378707 () List!41996)

(declare-fun lt!1378708 () List!41996)

(declare-fun isPrefix!3634 (List!41996 List!41996) Bool)

(assert (=> b!3942281 (= e!2439374 (not (isPrefix!3634 lt!1378707 lt!1378708)))))

(declare-fun lt!1378709 () List!41996)

(declare-fun getSuffix!2085 (List!41996 List!41996) List!41996)

(assert (=> b!3942281 (= lt!1378709 (getSuffix!2085 lt!1378708 lt!1378707))))

(declare-datatypes ((tuple2!41158 0))(
  ( (tuple2!41159 (_1!23713 Token!12228) (_2!23713 List!41996)) )
))
(declare-datatypes ((Option!8965 0))(
  ( (None!8964) (Some!8964 (v!39298 tuple2!41158)) )
))
(declare-fun lt!1378706 () Option!8965)

(declare-fun ++!10847 (List!41996 List!41996) List!41996)

(assert (=> b!3942281 (isPrefix!3634 lt!1378707 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))

(declare-datatypes ((Unit!60417 0))(
  ( (Unit!60418) )
))
(declare-fun lt!1378710 () Unit!60417)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2493 (List!41996 List!41996) Unit!60417)

(assert (=> b!3942281 (= lt!1378710 (lemmaConcatTwoListThenFirstIsPrefix!2493 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))

(declare-fun list!15549 (BalanceConc!25106) List!41996)

(declare-fun charsOf!4363 (Token!12228) BalanceConc!25106)

(assert (=> b!3942281 (= lt!1378707 (list!15549 (charsOf!4363 (_1!23713 (v!39298 lt!1378706)))))))

(declare-fun ruleValid!2487 (LexerInterface!6134 Rule!12890) Bool)

(assert (=> b!3942281 (ruleValid!2487 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))

(declare-fun lt!1378712 () Unit!60417)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1563 (LexerInterface!6134 Rule!12890 List!41998) Unit!60417)

(assert (=> b!3942281 (= lt!1378712 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1563 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))) rules!2768))))

(declare-fun lt!1378711 () Unit!60417)

(declare-fun lemmaCharactersSize!1198 (Token!12228) Unit!60417)

(assert (=> b!3942281 (= lt!1378711 (lemmaCharactersSize!1198 (_1!23713 (v!39298 lt!1378706))))))

(declare-fun b!3942282 () Bool)

(declare-fun res!1595352 () Bool)

(assert (=> b!3942282 (=> (not res!1595352) (not e!2439363))))

(declare-fun rulesInvariant!5477 (LexerInterface!6134 List!41998) Bool)

(assert (=> b!3942282 (= res!1595352 (rulesInvariant!5477 thiss!20629 rules!2768))))

(declare-fun b!3942283 () Bool)

(declare-fun e!2439373 () Bool)

(assert (=> b!3942283 (= e!2439373 e!2439374)))

(declare-fun res!1595347 () Bool)

(assert (=> b!3942283 (=> (not res!1595347) (not e!2439374))))

(assert (=> b!3942283 (= res!1595347 (is-Some!8964 lt!1378706))))

(declare-fun maxPrefix!3438 (LexerInterface!6134 List!41998 List!41996) Option!8965)

(assert (=> b!3942283 (= lt!1378706 (maxPrefix!3438 thiss!20629 rules!2768 lt!1378708))))

(declare-fun b!3942284 () Bool)

(assert (=> b!3942284 (= e!2439363 e!2439373)))

(declare-fun res!1595351 () Bool)

(assert (=> b!3942284 (=> (not res!1595351) (not e!2439373))))

(declare-fun suffixResult!91 () List!41996)

(declare-datatypes ((tuple2!41160 0))(
  ( (tuple2!41161 (_1!23714 List!41997) (_2!23714 List!41996)) )
))
(declare-fun lexList!1902 (LexerInterface!6134 List!41998 List!41996) tuple2!41160)

(declare-fun ++!10848 (List!41997 List!41997) List!41997)

(assert (=> b!3942284 (= res!1595351 (= (lexList!1902 thiss!20629 rules!2768 lt!1378708) (tuple2!41161 (++!10848 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!41996)

(assert (=> b!3942284 (= lt!1378708 (++!10847 prefix!426 suffix!1176))))

(declare-fun e!2439361 () Bool)

(declare-fun b!3942285 () Bool)

(declare-fun tp!1199912 () Bool)

(assert (=> b!3942285 (= e!2439361 (and tp!1199912 (inv!56079 (tag!7405 (rule!9505 (h!47293 prefixTokens!80)))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) e!2439370))))

(declare-fun b!3942286 () Bool)

(declare-fun tp!1199905 () Bool)

(assert (=> b!3942286 (= e!2439369 (and e!2439360 tp!1199905))))

(declare-fun b!3942287 () Bool)

(declare-fun tp!1199918 () Bool)

(assert (=> b!3942287 (= e!2439372 (and (inv!21 (value!207168 (h!47293 prefixTokens!80))) e!2439361 tp!1199918))))

(declare-fun b!3942288 () Bool)

(declare-fun tp!1199908 () Bool)

(assert (=> b!3942288 (= e!2439364 (and (inv!56082 (h!47293 suffixTokens!72)) e!2439355 tp!1199908))))

(declare-fun b!3942289 () Bool)

(declare-fun res!1595348 () Bool)

(assert (=> b!3942289 (=> (not res!1595348) (not e!2439373))))

(assert (=> b!3942289 (= res!1595348 (= (lexList!1902 thiss!20629 rules!2768 suffix!1176) (tuple2!41161 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3942290 (= e!2439359 (and tp!1199907 tp!1199920))))

(assert (= (and start!370230 res!1595345) b!3942276))

(assert (= (and b!3942276 res!1595350) b!3942282))

(assert (= (and b!3942282 res!1595352) b!3942271))

(assert (= (and b!3942271 res!1595349) b!3942280))

(assert (= (and b!3942280 res!1595346) b!3942284))

(assert (= (and b!3942284 res!1595351) b!3942289))

(assert (= (and b!3942289 res!1595348) b!3942283))

(assert (= (and b!3942283 res!1595347) b!3942281))

(assert (= (and start!370230 (is-Cons!41872 suffixResult!91)) b!3942274))

(assert (= (and start!370230 (is-Cons!41872 suffix!1176)) b!3942279))

(assert (= b!3942270 b!3942290))

(assert (= b!3942286 b!3942270))

(assert (= (and start!370230 (is-Cons!41874 rules!2768)) b!3942286))

(assert (= b!3942285 b!3942272))

(assert (= b!3942287 b!3942285))

(assert (= b!3942269 b!3942287))

(assert (= (and start!370230 (is-Cons!41873 prefixTokens!80)) b!3942269))

(assert (= b!3942275 b!3942277))

(assert (= b!3942273 b!3942275))

(assert (= b!3942288 b!3942273))

(assert (= (and start!370230 (is-Cons!41873 suffixTokens!72)) b!3942288))

(assert (= (and start!370230 (is-Cons!41872 prefix!426)) b!3942278))

(declare-fun m!4510825 () Bool)

(assert (=> b!3942289 m!4510825))

(declare-fun m!4510827 () Bool)

(assert (=> b!3942282 m!4510827))

(declare-fun m!4510829 () Bool)

(assert (=> b!3942285 m!4510829))

(declare-fun m!4510831 () Bool)

(assert (=> b!3942285 m!4510831))

(declare-fun m!4510833 () Bool)

(assert (=> b!3942269 m!4510833))

(declare-fun m!4510835 () Bool)

(assert (=> b!3942281 m!4510835))

(declare-fun m!4510837 () Bool)

(assert (=> b!3942281 m!4510837))

(declare-fun m!4510839 () Bool)

(assert (=> b!3942281 m!4510839))

(declare-fun m!4510841 () Bool)

(assert (=> b!3942281 m!4510841))

(declare-fun m!4510843 () Bool)

(assert (=> b!3942281 m!4510843))

(assert (=> b!3942281 m!4510837))

(declare-fun m!4510845 () Bool)

(assert (=> b!3942281 m!4510845))

(declare-fun m!4510847 () Bool)

(assert (=> b!3942281 m!4510847))

(declare-fun m!4510849 () Bool)

(assert (=> b!3942281 m!4510849))

(declare-fun m!4510851 () Bool)

(assert (=> b!3942281 m!4510851))

(declare-fun m!4510853 () Bool)

(assert (=> b!3942281 m!4510853))

(assert (=> b!3942281 m!4510847))

(declare-fun m!4510855 () Bool)

(assert (=> b!3942284 m!4510855))

(declare-fun m!4510857 () Bool)

(assert (=> b!3942284 m!4510857))

(declare-fun m!4510859 () Bool)

(assert (=> b!3942284 m!4510859))

(declare-fun m!4510861 () Bool)

(assert (=> b!3942288 m!4510861))

(declare-fun m!4510863 () Bool)

(assert (=> b!3942276 m!4510863))

(declare-fun m!4510865 () Bool)

(assert (=> b!3942280 m!4510865))

(declare-fun m!4510867 () Bool)

(assert (=> b!3942283 m!4510867))

(declare-fun m!4510869 () Bool)

(assert (=> b!3942287 m!4510869))

(declare-fun m!4510871 () Bool)

(assert (=> b!3942270 m!4510871))

(declare-fun m!4510873 () Bool)

(assert (=> b!3942270 m!4510873))

(declare-fun m!4510875 () Bool)

(assert (=> b!3942273 m!4510875))

(declare-fun m!4510877 () Bool)

(assert (=> b!3942271 m!4510877))

(declare-fun m!4510879 () Bool)

(assert (=> b!3942275 m!4510879))

(declare-fun m!4510881 () Bool)

(assert (=> b!3942275 m!4510881))

(push 1)

(assert (not b!3942289))

(assert tp_is_empty!19871)

(assert (not b!3942285))

(assert (not b_next!108611))

(assert (not b!3942282))

(assert (not b!3942273))

(assert (not b!3942279))

(assert (not b_next!108609))

(assert (not b!3942275))

(assert (not b!3942280))

(assert (not b!3942271))

(assert (not b_next!108601))

(assert (not b_next!108605))

(assert b_and!301341)

(assert b_and!301331)

(assert b_and!301339)

(assert (not b_next!108603))

(assert (not b_next!108607))

(assert b_and!301333)

(assert (not b!3942270))

(assert (not b!3942288))

(assert (not b!3942269))

(assert b_and!301335)

(assert (not b!3942281))

(assert (not b!3942284))

(assert (not b!3942287))

(assert (not b!3942286))

(assert (not b!3942274))

(assert (not b!3942278))

(assert (not b!3942276))

(assert (not b!3942283))

(assert b_and!301337)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108611))

(assert b_and!301333)

(assert (not b_next!108609))

(assert b_and!301335)

(assert (not b_next!108601))

(assert (not b_next!108605))

(assert b_and!301337)

(assert b_and!301341)

(assert b_and!301331)

(assert b_and!301339)

(assert (not b_next!108603))

(assert (not b_next!108607))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1169252 () Bool)

(declare-fun res!1595385 () Bool)

(declare-fun e!2439443 () Bool)

(assert (=> d!1169252 (=> (not res!1595385) (not e!2439443))))

(assert (=> d!1169252 (= res!1595385 (not (isEmpty!24985 (originalCharacters!7145 (h!47293 prefixTokens!80)))))))

(assert (=> d!1169252 (= (inv!56082 (h!47293 prefixTokens!80)) e!2439443)))

(declare-fun b!3942361 () Bool)

(declare-fun res!1595386 () Bool)

(assert (=> b!3942361 (=> (not res!1595386) (not e!2439443))))

(declare-fun dynLambda!17930 (Int TokenValue!6775) BalanceConc!25106)

(assert (=> b!3942361 (= res!1595386 (= (originalCharacters!7145 (h!47293 prefixTokens!80)) (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(declare-fun b!3942362 () Bool)

(declare-fun size!31404 (List!41996) Int)

(assert (=> b!3942362 (= e!2439443 (= (size!31402 (h!47293 prefixTokens!80)) (size!31404 (originalCharacters!7145 (h!47293 prefixTokens!80)))))))

(assert (= (and d!1169252 res!1595385) b!3942361))

(assert (= (and b!3942361 res!1595386) b!3942362))

(declare-fun b_lambda!115287 () Bool)

(assert (=> (not b_lambda!115287) (not b!3942361)))

(declare-fun t!327087 () Bool)

(declare-fun tb!236357 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327087) tb!236357))

(declare-fun b!3942367 () Bool)

(declare-fun e!2439446 () Bool)

(declare-fun tp!1199975 () Bool)

(declare-fun inv!56086 (Conc!12756) Bool)

(assert (=> b!3942367 (= e!2439446 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))) tp!1199975))))

(declare-fun result!286322 () Bool)

(declare-fun inv!56087 (BalanceConc!25106) Bool)

(assert (=> tb!236357 (= result!286322 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))) e!2439446))))

(assert (= tb!236357 b!3942367))

(declare-fun m!4510941 () Bool)

(assert (=> b!3942367 m!4510941))

(declare-fun m!4510943 () Bool)

(assert (=> tb!236357 m!4510943))

(assert (=> b!3942361 t!327087))

(declare-fun b_and!301355 () Bool)

(assert (= b_and!301333 (and (=> t!327087 result!286322) b_and!301355)))

(declare-fun t!327089 () Bool)

(declare-fun tb!236359 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327089) tb!236359))

(declare-fun result!286326 () Bool)

(assert (= result!286326 result!286322))

(assert (=> b!3942361 t!327089))

(declare-fun b_and!301357 () Bool)

(assert (= b_and!301337 (and (=> t!327089 result!286326) b_and!301357)))

(declare-fun tb!236361 () Bool)

(declare-fun t!327091 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327091) tb!236361))

(declare-fun result!286328 () Bool)

(assert (= result!286328 result!286322))

(assert (=> b!3942361 t!327091))

(declare-fun b_and!301359 () Bool)

(assert (= b_and!301341 (and (=> t!327091 result!286328) b_and!301359)))

(declare-fun m!4510945 () Bool)

(assert (=> d!1169252 m!4510945))

(declare-fun m!4510947 () Bool)

(assert (=> b!3942361 m!4510947))

(assert (=> b!3942361 m!4510947))

(declare-fun m!4510949 () Bool)

(assert (=> b!3942361 m!4510949))

(declare-fun m!4510951 () Bool)

(assert (=> b!3942362 m!4510951))

(assert (=> b!3942269 d!1169252))

(declare-fun d!1169254 () Bool)

(assert (=> d!1169254 (= (isEmpty!24985 prefix!426) (is-Nil!41872 prefix!426))))

(assert (=> b!3942280 d!1169254))

(declare-fun b!3942388 () Bool)

(declare-fun e!2439459 () tuple2!41160)

(assert (=> b!3942388 (= e!2439459 (tuple2!41161 Nil!41873 suffix!1176))))

(declare-fun d!1169256 () Bool)

(declare-fun e!2439460 () Bool)

(assert (=> d!1169256 e!2439460))

(declare-fun c!684851 () Bool)

(declare-fun lt!1378742 () tuple2!41160)

(declare-fun size!31405 (List!41997) Int)

(assert (=> d!1169256 (= c!684851 (> (size!31405 (_1!23714 lt!1378742)) 0))))

(assert (=> d!1169256 (= lt!1378742 e!2439459)))

(declare-fun c!684850 () Bool)

(declare-fun lt!1378740 () Option!8965)

(assert (=> d!1169256 (= c!684850 (is-Some!8964 lt!1378740))))

(assert (=> d!1169256 (= lt!1378740 (maxPrefix!3438 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1169256 (= (lexList!1902 thiss!20629 rules!2768 suffix!1176) lt!1378742)))

(declare-fun b!3942389 () Bool)

(declare-fun e!2439458 () Bool)

(assert (=> b!3942389 (= e!2439458 (not (isEmpty!24983 (_1!23714 lt!1378742))))))

(declare-fun b!3942390 () Bool)

(assert (=> b!3942390 (= e!2439460 e!2439458)))

(declare-fun res!1595395 () Bool)

(assert (=> b!3942390 (= res!1595395 (< (size!31404 (_2!23714 lt!1378742)) (size!31404 suffix!1176)))))

(assert (=> b!3942390 (=> (not res!1595395) (not e!2439458))))

(declare-fun b!3942391 () Bool)

(assert (=> b!3942391 (= e!2439460 (= (_2!23714 lt!1378742) suffix!1176))))

(declare-fun b!3942392 () Bool)

(declare-fun lt!1378741 () tuple2!41160)

(assert (=> b!3942392 (= e!2439459 (tuple2!41161 (Cons!41873 (_1!23713 (v!39298 lt!1378740)) (_1!23714 lt!1378741)) (_2!23714 lt!1378741)))))

(assert (=> b!3942392 (= lt!1378741 (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378740))))))

(assert (= (and d!1169256 c!684850) b!3942392))

(assert (= (and d!1169256 (not c!684850)) b!3942388))

(assert (= (and d!1169256 c!684851) b!3942390))

(assert (= (and d!1169256 (not c!684851)) b!3942391))

(assert (= (and b!3942390 res!1595395) b!3942389))

(declare-fun m!4510953 () Bool)

(assert (=> d!1169256 m!4510953))

(declare-fun m!4510955 () Bool)

(assert (=> d!1169256 m!4510955))

(declare-fun m!4510957 () Bool)

(assert (=> b!3942389 m!4510957))

(declare-fun m!4510959 () Bool)

(assert (=> b!3942390 m!4510959))

(declare-fun m!4510961 () Bool)

(assert (=> b!3942390 m!4510961))

(declare-fun m!4510963 () Bool)

(assert (=> b!3942392 m!4510963))

(assert (=> b!3942289 d!1169256))

(declare-fun d!1169260 () Bool)

(declare-fun res!1595398 () Bool)

(declare-fun e!2439464 () Bool)

(assert (=> d!1169260 (=> (not res!1595398) (not e!2439464))))

(declare-fun rulesValid!2552 (LexerInterface!6134 List!41998) Bool)

(assert (=> d!1169260 (= res!1595398 (rulesValid!2552 thiss!20629 rules!2768))))

(assert (=> d!1169260 (= (rulesInvariant!5477 thiss!20629 rules!2768) e!2439464)))

(declare-fun b!3942396 () Bool)

(declare-datatypes ((List!42003 0))(
  ( (Nil!41879) (Cons!41879 (h!47299 String!47595) (t!327128 List!42003)) )
))
(declare-fun noDuplicateTag!2553 (LexerInterface!6134 List!41998 List!42003) Bool)

(assert (=> b!3942396 (= e!2439464 (noDuplicateTag!2553 thiss!20629 rules!2768 Nil!41879))))

(assert (= (and d!1169260 res!1595398) b!3942396))

(declare-fun m!4510977 () Bool)

(assert (=> d!1169260 m!4510977))

(declare-fun m!4510979 () Bool)

(assert (=> b!3942396 m!4510979))

(assert (=> b!3942282 d!1169260))

(declare-fun d!1169264 () Bool)

(declare-fun e!2439481 () Bool)

(assert (=> d!1169264 e!2439481))

(declare-fun res!1595419 () Bool)

(assert (=> d!1169264 (=> res!1595419 e!2439481)))

(declare-fun lt!1378753 () Option!8965)

(declare-fun isEmpty!24989 (Option!8965) Bool)

(assert (=> d!1169264 (= res!1595419 (isEmpty!24989 lt!1378753))))

(declare-fun e!2439482 () Option!8965)

(assert (=> d!1169264 (= lt!1378753 e!2439482)))

(declare-fun c!684860 () Bool)

(assert (=> d!1169264 (= c!684860 (and (is-Cons!41874 rules!2768) (is-Nil!41874 (t!327081 rules!2768))))))

(declare-fun lt!1378756 () Unit!60417)

(declare-fun lt!1378754 () Unit!60417)

(assert (=> d!1169264 (= lt!1378756 lt!1378754)))

(assert (=> d!1169264 (isPrefix!3634 lt!1378708 lt!1378708)))

(declare-fun lemmaIsPrefixRefl!2295 (List!41996 List!41996) Unit!60417)

(assert (=> d!1169264 (= lt!1378754 (lemmaIsPrefixRefl!2295 lt!1378708 lt!1378708))))

(declare-fun rulesValidInductive!2365 (LexerInterface!6134 List!41998) Bool)

(assert (=> d!1169264 (rulesValidInductive!2365 thiss!20629 rules!2768)))

(assert (=> d!1169264 (= (maxPrefix!3438 thiss!20629 rules!2768 lt!1378708) lt!1378753)))

(declare-fun b!3942430 () Bool)

(declare-fun res!1595416 () Bool)

(declare-fun e!2439480 () Bool)

(assert (=> b!3942430 (=> (not res!1595416) (not e!2439480))))

(declare-fun get!13832 (Option!8965) tuple2!41158)

(declare-fun apply!9778 (TokenValueInjection!12978 BalanceConc!25106) TokenValue!6775)

(declare-fun seqFromList!4806 (List!41996) BalanceConc!25106)

(assert (=> b!3942430 (= res!1595416 (= (value!207168 (_1!23713 (get!13832 lt!1378753))) (apply!9778 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun b!3942431 () Bool)

(declare-fun res!1595421 () Bool)

(assert (=> b!3942431 (=> (not res!1595421) (not e!2439480))))

(assert (=> b!3942431 (= res!1595421 (= (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))) (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753)))))))

(declare-fun b!3942432 () Bool)

(declare-fun call!285071 () Option!8965)

(assert (=> b!3942432 (= e!2439482 call!285071)))

(declare-fun b!3942433 () Bool)

(assert (=> b!3942433 (= e!2439481 e!2439480)))

(declare-fun res!1595422 () Bool)

(assert (=> b!3942433 (=> (not res!1595422) (not e!2439480))))

(declare-fun isDefined!6964 (Option!8965) Bool)

(assert (=> b!3942433 (= res!1595422 (isDefined!6964 lt!1378753))))

(declare-fun b!3942434 () Bool)

(declare-fun res!1595418 () Bool)

(assert (=> b!3942434 (=> (not res!1595418) (not e!2439480))))

(assert (=> b!3942434 (= res!1595418 (= (++!10847 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))) (_2!23713 (get!13832 lt!1378753))) lt!1378708))))

(declare-fun b!3942435 () Bool)

(declare-fun res!1595417 () Bool)

(assert (=> b!3942435 (=> (not res!1595417) (not e!2439480))))

(assert (=> b!3942435 (= res!1595417 (< (size!31404 (_2!23713 (get!13832 lt!1378753))) (size!31404 lt!1378708)))))

(declare-fun b!3942436 () Bool)

(declare-fun contains!8384 (List!41998 Rule!12890) Bool)

(assert (=> b!3942436 (= e!2439480 (contains!8384 rules!2768 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))

(declare-fun b!3942437 () Bool)

(declare-fun lt!1378757 () Option!8965)

(declare-fun lt!1378755 () Option!8965)

(assert (=> b!3942437 (= e!2439482 (ite (and (is-None!8964 lt!1378757) (is-None!8964 lt!1378755)) None!8964 (ite (is-None!8964 lt!1378755) lt!1378757 (ite (is-None!8964 lt!1378757) lt!1378755 (ite (>= (size!31402 (_1!23713 (v!39298 lt!1378757))) (size!31402 (_1!23713 (v!39298 lt!1378755)))) lt!1378757 lt!1378755)))))))

(assert (=> b!3942437 (= lt!1378757 call!285071)))

(assert (=> b!3942437 (= lt!1378755 (maxPrefix!3438 thiss!20629 (t!327081 rules!2768) lt!1378708))))

(declare-fun bm!285066 () Bool)

(declare-fun maxPrefixOneRule!2502 (LexerInterface!6134 Rule!12890 List!41996) Option!8965)

(assert (=> bm!285066 (= call!285071 (maxPrefixOneRule!2502 thiss!20629 (h!47294 rules!2768) lt!1378708))))

(declare-fun b!3942438 () Bool)

(declare-fun res!1595420 () Bool)

(assert (=> b!3942438 (=> (not res!1595420) (not e!2439480))))

(declare-fun matchR!5497 (Regex!11450 List!41996) Bool)

(assert (=> b!3942438 (= res!1595420 (matchR!5497 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))

(assert (= (and d!1169264 c!684860) b!3942432))

(assert (= (and d!1169264 (not c!684860)) b!3942437))

(assert (= (or b!3942432 b!3942437) bm!285066))

(assert (= (and d!1169264 (not res!1595419)) b!3942433))

(assert (= (and b!3942433 res!1595422) b!3942431))

(assert (= (and b!3942431 res!1595421) b!3942435))

(assert (= (and b!3942435 res!1595417) b!3942434))

(assert (= (and b!3942434 res!1595418) b!3942430))

(assert (= (and b!3942430 res!1595416) b!3942438))

(assert (= (and b!3942438 res!1595420) b!3942436))

(declare-fun m!4510987 () Bool)

(assert (=> d!1169264 m!4510987))

(declare-fun m!4510989 () Bool)

(assert (=> d!1169264 m!4510989))

(declare-fun m!4510991 () Bool)

(assert (=> d!1169264 m!4510991))

(declare-fun m!4510993 () Bool)

(assert (=> d!1169264 m!4510993))

(declare-fun m!4510995 () Bool)

(assert (=> b!3942437 m!4510995))

(declare-fun m!4510997 () Bool)

(assert (=> b!3942434 m!4510997))

(declare-fun m!4510999 () Bool)

(assert (=> b!3942434 m!4510999))

(assert (=> b!3942434 m!4510999))

(declare-fun m!4511001 () Bool)

(assert (=> b!3942434 m!4511001))

(assert (=> b!3942434 m!4511001))

(declare-fun m!4511003 () Bool)

(assert (=> b!3942434 m!4511003))

(assert (=> b!3942435 m!4510997))

(declare-fun m!4511005 () Bool)

(assert (=> b!3942435 m!4511005))

(declare-fun m!4511007 () Bool)

(assert (=> b!3942435 m!4511007))

(assert (=> b!3942430 m!4510997))

(declare-fun m!4511009 () Bool)

(assert (=> b!3942430 m!4511009))

(assert (=> b!3942430 m!4511009))

(declare-fun m!4511011 () Bool)

(assert (=> b!3942430 m!4511011))

(assert (=> b!3942438 m!4510997))

(assert (=> b!3942438 m!4510999))

(assert (=> b!3942438 m!4510999))

(assert (=> b!3942438 m!4511001))

(assert (=> b!3942438 m!4511001))

(declare-fun m!4511013 () Bool)

(assert (=> b!3942438 m!4511013))

(assert (=> b!3942431 m!4510997))

(assert (=> b!3942431 m!4510999))

(assert (=> b!3942431 m!4510999))

(assert (=> b!3942431 m!4511001))

(assert (=> b!3942436 m!4510997))

(declare-fun m!4511015 () Bool)

(assert (=> b!3942436 m!4511015))

(declare-fun m!4511017 () Bool)

(assert (=> bm!285066 m!4511017))

(declare-fun m!4511019 () Bool)

(assert (=> b!3942433 m!4511019))

(assert (=> b!3942283 d!1169264))

(declare-fun d!1169270 () Bool)

(assert (=> d!1169270 (= (inv!56079 (tag!7405 (h!47294 rules!2768))) (= (mod (str.len (value!207167 (tag!7405 (h!47294 rules!2768)))) 2) 0))))

(assert (=> b!3942270 d!1169270))

(declare-fun d!1169272 () Bool)

(declare-fun res!1595425 () Bool)

(declare-fun e!2439485 () Bool)

(assert (=> d!1169272 (=> (not res!1595425) (not e!2439485))))

(declare-fun semiInverseModEq!2818 (Int Int) Bool)

(assert (=> d!1169272 (= res!1595425 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (h!47294 rules!2768)))))))

(assert (=> d!1169272 (= (inv!56083 (transformation!6545 (h!47294 rules!2768))) e!2439485)))

(declare-fun b!3942441 () Bool)

(declare-fun equivClasses!2717 (Int Int) Bool)

(assert (=> b!3942441 (= e!2439485 (equivClasses!2717 (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (h!47294 rules!2768)))))))

(assert (= (and d!1169272 res!1595425) b!3942441))

(declare-fun m!4511021 () Bool)

(assert (=> d!1169272 m!4511021))

(declare-fun m!4511023 () Bool)

(assert (=> b!3942441 m!4511023))

(assert (=> b!3942270 d!1169272))

(declare-fun d!1169274 () Bool)

(declare-fun res!1595430 () Bool)

(declare-fun e!2439488 () Bool)

(assert (=> d!1169274 (=> (not res!1595430) (not e!2439488))))

(declare-fun validRegex!5213 (Regex!11450) Bool)

(assert (=> d!1169274 (= res!1595430 (validRegex!5213 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))

(assert (=> d!1169274 (= (ruleValid!2487 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706)))) e!2439488)))

(declare-fun b!3942446 () Bool)

(declare-fun res!1595431 () Bool)

(assert (=> b!3942446 (=> (not res!1595431) (not e!2439488))))

(declare-fun nullable!4014 (Regex!11450) Bool)

(assert (=> b!3942446 (= res!1595431 (not (nullable!4014 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))))))

(declare-fun b!3942447 () Bool)

(assert (=> b!3942447 (= e!2439488 (not (= (tag!7405 (rule!9505 (_1!23713 (v!39298 lt!1378706)))) (String!47596 ""))))))

(assert (= (and d!1169274 res!1595430) b!3942446))

(assert (= (and b!3942446 res!1595431) b!3942447))

(declare-fun m!4511025 () Bool)

(assert (=> d!1169274 m!4511025))

(declare-fun m!4511027 () Bool)

(assert (=> b!3942446 m!4511027))

(assert (=> b!3942281 d!1169274))

(declare-fun d!1169276 () Bool)

(declare-fun list!15551 (Conc!12756) List!41996)

(assert (=> d!1169276 (= (list!15549 (charsOf!4363 (_1!23713 (v!39298 lt!1378706)))) (list!15551 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706))))))))

(declare-fun bs!586693 () Bool)

(assert (= bs!586693 d!1169276))

(declare-fun m!4511029 () Bool)

(assert (=> bs!586693 m!4511029))

(assert (=> b!3942281 d!1169276))

(declare-fun d!1169278 () Bool)

(declare-fun e!2439496 () Bool)

(assert (=> d!1169278 e!2439496))

(declare-fun res!1595442 () Bool)

(assert (=> d!1169278 (=> res!1595442 e!2439496)))

(declare-fun lt!1378760 () Bool)

(assert (=> d!1169278 (= res!1595442 (not lt!1378760))))

(declare-fun e!2439495 () Bool)

(assert (=> d!1169278 (= lt!1378760 e!2439495)))

(declare-fun res!1595440 () Bool)

(assert (=> d!1169278 (=> res!1595440 e!2439495)))

(assert (=> d!1169278 (= res!1595440 (is-Nil!41872 lt!1378707))))

(assert (=> d!1169278 (= (isPrefix!3634 lt!1378707 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))) lt!1378760)))

(declare-fun b!3942458 () Bool)

(declare-fun e!2439497 () Bool)

(declare-fun tail!6102 (List!41996) List!41996)

(assert (=> b!3942458 (= e!2439497 (isPrefix!3634 (tail!6102 lt!1378707) (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))))

(declare-fun b!3942457 () Bool)

(declare-fun res!1595441 () Bool)

(assert (=> b!3942457 (=> (not res!1595441) (not e!2439497))))

(declare-fun head!8376 (List!41996) C!23086)

(assert (=> b!3942457 (= res!1595441 (= (head!8376 lt!1378707) (head!8376 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))))

(declare-fun b!3942456 () Bool)

(assert (=> b!3942456 (= e!2439495 e!2439497)))

(declare-fun res!1595443 () Bool)

(assert (=> b!3942456 (=> (not res!1595443) (not e!2439497))))

(assert (=> b!3942456 (= res!1595443 (not (is-Nil!41872 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))))

(declare-fun b!3942459 () Bool)

(assert (=> b!3942459 (= e!2439496 (>= (size!31404 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))) (size!31404 lt!1378707)))))

(assert (= (and d!1169278 (not res!1595440)) b!3942456))

(assert (= (and b!3942456 res!1595443) b!3942457))

(assert (= (and b!3942457 res!1595441) b!3942458))

(assert (= (and d!1169278 (not res!1595442)) b!3942459))

(declare-fun m!4511031 () Bool)

(assert (=> b!3942458 m!4511031))

(assert (=> b!3942458 m!4510847))

(declare-fun m!4511033 () Bool)

(assert (=> b!3942458 m!4511033))

(assert (=> b!3942458 m!4511031))

(assert (=> b!3942458 m!4511033))

(declare-fun m!4511035 () Bool)

(assert (=> b!3942458 m!4511035))

(declare-fun m!4511037 () Bool)

(assert (=> b!3942457 m!4511037))

(assert (=> b!3942457 m!4510847))

(declare-fun m!4511039 () Bool)

(assert (=> b!3942457 m!4511039))

(assert (=> b!3942459 m!4510847))

(declare-fun m!4511041 () Bool)

(assert (=> b!3942459 m!4511041))

(declare-fun m!4511043 () Bool)

(assert (=> b!3942459 m!4511043))

(assert (=> b!3942281 d!1169278))

(declare-fun d!1169280 () Bool)

(assert (=> d!1169280 (ruleValid!2487 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))

(declare-fun lt!1378763 () Unit!60417)

(declare-fun choose!23526 (LexerInterface!6134 Rule!12890 List!41998) Unit!60417)

(assert (=> d!1169280 (= lt!1378763 (choose!23526 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))) rules!2768))))

(assert (=> d!1169280 (contains!8384 rules!2768 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169280 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1563 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))) rules!2768) lt!1378763)))

(declare-fun bs!586694 () Bool)

(assert (= bs!586694 d!1169280))

(assert (=> bs!586694 m!4510853))

(declare-fun m!4511045 () Bool)

(assert (=> bs!586694 m!4511045))

(declare-fun m!4511047 () Bool)

(assert (=> bs!586694 m!4511047))

(assert (=> b!3942281 d!1169280))

(declare-fun d!1169282 () Bool)

(assert (=> d!1169282 (isPrefix!3634 lt!1378707 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))

(declare-fun lt!1378766 () Unit!60417)

(declare-fun choose!23527 (List!41996 List!41996) Unit!60417)

(assert (=> d!1169282 (= lt!1378766 (choose!23527 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169282 (= (lemmaConcatTwoListThenFirstIsPrefix!2493 lt!1378707 (_2!23713 (v!39298 lt!1378706))) lt!1378766)))

(declare-fun bs!586695 () Bool)

(assert (= bs!586695 d!1169282))

(assert (=> bs!586695 m!4510847))

(assert (=> bs!586695 m!4510847))

(assert (=> bs!586695 m!4510849))

(declare-fun m!4511049 () Bool)

(assert (=> bs!586695 m!4511049))

(assert (=> b!3942281 d!1169282))

(declare-fun b!3942471 () Bool)

(declare-fun lt!1378769 () List!41996)

(declare-fun e!2439503 () Bool)

(assert (=> b!3942471 (= e!2439503 (or (not (= (_2!23713 (v!39298 lt!1378706)) Nil!41872)) (= lt!1378769 lt!1378707)))))

(declare-fun b!3942468 () Bool)

(declare-fun e!2439502 () List!41996)

(assert (=> b!3942468 (= e!2439502 (_2!23713 (v!39298 lt!1378706)))))

(declare-fun d!1169284 () Bool)

(assert (=> d!1169284 e!2439503))

(declare-fun res!1595449 () Bool)

(assert (=> d!1169284 (=> (not res!1595449) (not e!2439503))))

(declare-fun content!6328 (List!41996) (Set C!23086))

(assert (=> d!1169284 (= res!1595449 (= (content!6328 lt!1378769) (set.union (content!6328 lt!1378707) (content!6328 (_2!23713 (v!39298 lt!1378706))))))))

(assert (=> d!1169284 (= lt!1378769 e!2439502)))

(declare-fun c!684863 () Bool)

(assert (=> d!1169284 (= c!684863 (is-Nil!41872 lt!1378707))))

(assert (=> d!1169284 (= (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))) lt!1378769)))

(declare-fun b!3942469 () Bool)

(assert (=> b!3942469 (= e!2439502 (Cons!41872 (h!47292 lt!1378707) (++!10847 (t!327079 lt!1378707) (_2!23713 (v!39298 lt!1378706)))))))

(declare-fun b!3942470 () Bool)

(declare-fun res!1595448 () Bool)

(assert (=> b!3942470 (=> (not res!1595448) (not e!2439503))))

(assert (=> b!3942470 (= res!1595448 (= (size!31404 lt!1378769) (+ (size!31404 lt!1378707) (size!31404 (_2!23713 (v!39298 lt!1378706))))))))

(assert (= (and d!1169284 c!684863) b!3942468))

(assert (= (and d!1169284 (not c!684863)) b!3942469))

(assert (= (and d!1169284 res!1595449) b!3942470))

(assert (= (and b!3942470 res!1595448) b!3942471))

(declare-fun m!4511051 () Bool)

(assert (=> d!1169284 m!4511051))

(declare-fun m!4511053 () Bool)

(assert (=> d!1169284 m!4511053))

(declare-fun m!4511055 () Bool)

(assert (=> d!1169284 m!4511055))

(declare-fun m!4511057 () Bool)

(assert (=> b!3942469 m!4511057))

(declare-fun m!4511059 () Bool)

(assert (=> b!3942470 m!4511059))

(assert (=> b!3942470 m!4511043))

(declare-fun m!4511061 () Bool)

(assert (=> b!3942470 m!4511061))

(assert (=> b!3942281 d!1169284))

(declare-fun d!1169286 () Bool)

(declare-fun lt!1378772 () BalanceConc!25106)

(assert (=> d!1169286 (= (list!15549 lt!1378772) (originalCharacters!7145 (_1!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169286 (= lt!1378772 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))))

(assert (=> d!1169286 (= (charsOf!4363 (_1!23713 (v!39298 lt!1378706))) lt!1378772)))

(declare-fun b_lambda!115291 () Bool)

(assert (=> (not b_lambda!115291) (not d!1169286)))

(declare-fun t!327099 () Bool)

(declare-fun tb!236369 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327099) tb!236369))

(declare-fun b!3942472 () Bool)

(declare-fun e!2439504 () Bool)

(declare-fun tp!1199979 () Bool)

(assert (=> b!3942472 (= e!2439504 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))) tp!1199979))))

(declare-fun result!286338 () Bool)

(assert (=> tb!236369 (= result!286338 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))) e!2439504))))

(assert (= tb!236369 b!3942472))

(declare-fun m!4511063 () Bool)

(assert (=> b!3942472 m!4511063))

(declare-fun m!4511065 () Bool)

(assert (=> tb!236369 m!4511065))

(assert (=> d!1169286 t!327099))

(declare-fun b_and!301367 () Bool)

(assert (= b_and!301355 (and (=> t!327099 result!286338) b_and!301367)))

(declare-fun tb!236371 () Bool)

(declare-fun t!327101 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327101) tb!236371))

(declare-fun result!286340 () Bool)

(assert (= result!286340 result!286338))

(assert (=> d!1169286 t!327101))

(declare-fun b_and!301369 () Bool)

(assert (= b_and!301357 (and (=> t!327101 result!286340) b_and!301369)))

(declare-fun t!327103 () Bool)

(declare-fun tb!236373 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327103) tb!236373))

(declare-fun result!286342 () Bool)

(assert (= result!286342 result!286338))

(assert (=> d!1169286 t!327103))

(declare-fun b_and!301371 () Bool)

(assert (= b_and!301359 (and (=> t!327103 result!286342) b_and!301371)))

(declare-fun m!4511067 () Bool)

(assert (=> d!1169286 m!4511067))

(declare-fun m!4511069 () Bool)

(assert (=> d!1169286 m!4511069))

(assert (=> b!3942281 d!1169286))

(declare-fun d!1169288 () Bool)

(declare-fun lt!1378775 () List!41996)

(assert (=> d!1169288 (= (++!10847 lt!1378707 lt!1378775) lt!1378708)))

(declare-fun e!2439507 () List!41996)

(assert (=> d!1169288 (= lt!1378775 e!2439507)))

(declare-fun c!684866 () Bool)

(assert (=> d!1169288 (= c!684866 (is-Cons!41872 lt!1378707))))

(assert (=> d!1169288 (>= (size!31404 lt!1378708) (size!31404 lt!1378707))))

(assert (=> d!1169288 (= (getSuffix!2085 lt!1378708 lt!1378707) lt!1378775)))

(declare-fun b!3942477 () Bool)

(assert (=> b!3942477 (= e!2439507 (getSuffix!2085 (tail!6102 lt!1378708) (t!327079 lt!1378707)))))

(declare-fun b!3942478 () Bool)

(assert (=> b!3942478 (= e!2439507 lt!1378708)))

(assert (= (and d!1169288 c!684866) b!3942477))

(assert (= (and d!1169288 (not c!684866)) b!3942478))

(declare-fun m!4511071 () Bool)

(assert (=> d!1169288 m!4511071))

(assert (=> d!1169288 m!4511007))

(assert (=> d!1169288 m!4511043))

(declare-fun m!4511073 () Bool)

(assert (=> b!3942477 m!4511073))

(assert (=> b!3942477 m!4511073))

(declare-fun m!4511075 () Bool)

(assert (=> b!3942477 m!4511075))

(assert (=> b!3942281 d!1169288))

(declare-fun d!1169290 () Bool)

(assert (=> d!1169290 (= (size!31402 (_1!23713 (v!39298 lt!1378706))) (size!31404 (originalCharacters!7145 (_1!23713 (v!39298 lt!1378706)))))))

(declare-fun Unit!60422 () Unit!60417)

(assert (=> d!1169290 (= (lemmaCharactersSize!1198 (_1!23713 (v!39298 lt!1378706))) Unit!60422)))

(declare-fun bs!586696 () Bool)

(assert (= bs!586696 d!1169290))

(declare-fun m!4511077 () Bool)

(assert (=> bs!586696 m!4511077))

(assert (=> b!3942281 d!1169290))

(declare-fun d!1169292 () Bool)

(declare-fun e!2439509 () Bool)

(assert (=> d!1169292 e!2439509))

(declare-fun res!1595452 () Bool)

(assert (=> d!1169292 (=> res!1595452 e!2439509)))

(declare-fun lt!1378776 () Bool)

(assert (=> d!1169292 (= res!1595452 (not lt!1378776))))

(declare-fun e!2439508 () Bool)

(assert (=> d!1169292 (= lt!1378776 e!2439508)))

(declare-fun res!1595450 () Bool)

(assert (=> d!1169292 (=> res!1595450 e!2439508)))

(assert (=> d!1169292 (= res!1595450 (is-Nil!41872 lt!1378707))))

(assert (=> d!1169292 (= (isPrefix!3634 lt!1378707 lt!1378708) lt!1378776)))

(declare-fun b!3942481 () Bool)

(declare-fun e!2439510 () Bool)

(assert (=> b!3942481 (= e!2439510 (isPrefix!3634 (tail!6102 lt!1378707) (tail!6102 lt!1378708)))))

(declare-fun b!3942480 () Bool)

(declare-fun res!1595451 () Bool)

(assert (=> b!3942480 (=> (not res!1595451) (not e!2439510))))

(assert (=> b!3942480 (= res!1595451 (= (head!8376 lt!1378707) (head!8376 lt!1378708)))))

(declare-fun b!3942479 () Bool)

(assert (=> b!3942479 (= e!2439508 e!2439510)))

(declare-fun res!1595453 () Bool)

(assert (=> b!3942479 (=> (not res!1595453) (not e!2439510))))

(assert (=> b!3942479 (= res!1595453 (not (is-Nil!41872 lt!1378708)))))

(declare-fun b!3942482 () Bool)

(assert (=> b!3942482 (= e!2439509 (>= (size!31404 lt!1378708) (size!31404 lt!1378707)))))

(assert (= (and d!1169292 (not res!1595450)) b!3942479))

(assert (= (and b!3942479 res!1595453) b!3942480))

(assert (= (and b!3942480 res!1595451) b!3942481))

(assert (= (and d!1169292 (not res!1595452)) b!3942482))

(assert (=> b!3942481 m!4511031))

(assert (=> b!3942481 m!4511073))

(assert (=> b!3942481 m!4511031))

(assert (=> b!3942481 m!4511073))

(declare-fun m!4511079 () Bool)

(assert (=> b!3942481 m!4511079))

(assert (=> b!3942480 m!4511037))

(declare-fun m!4511081 () Bool)

(assert (=> b!3942480 m!4511081))

(assert (=> b!3942482 m!4511007))

(assert (=> b!3942482 m!4511043))

(assert (=> b!3942281 d!1169292))

(declare-fun d!1169294 () Bool)

(assert (=> d!1169294 (= (isEmpty!24983 prefixTokens!80) (is-Nil!41873 prefixTokens!80))))

(assert (=> b!3942271 d!1169294))

(declare-fun d!1169296 () Bool)

(assert (=> d!1169296 (= (inv!56079 (tag!7405 (rule!9505 (h!47293 prefixTokens!80)))) (= (mod (str.len (value!207167 (tag!7405 (rule!9505 (h!47293 prefixTokens!80))))) 2) 0))))

(assert (=> b!3942285 d!1169296))

(declare-fun d!1169298 () Bool)

(declare-fun res!1595454 () Bool)

(declare-fun e!2439511 () Bool)

(assert (=> d!1169298 (=> (not res!1595454) (not e!2439511))))

(assert (=> d!1169298 (= res!1595454 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))))))

(assert (=> d!1169298 (= (inv!56083 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) e!2439511)))

(declare-fun b!3942483 () Bool)

(assert (=> b!3942483 (= e!2439511 (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))))))

(assert (= (and d!1169298 res!1595454) b!3942483))

(declare-fun m!4511083 () Bool)

(assert (=> d!1169298 m!4511083))

(declare-fun m!4511085 () Bool)

(assert (=> b!3942483 m!4511085))

(assert (=> b!3942285 d!1169298))

(declare-fun d!1169300 () Bool)

(assert (=> d!1169300 (= (inv!56079 (tag!7405 (rule!9505 (h!47293 suffixTokens!72)))) (= (mod (str.len (value!207167 (tag!7405 (rule!9505 (h!47293 suffixTokens!72))))) 2) 0))))

(assert (=> b!3942275 d!1169300))

(declare-fun d!1169302 () Bool)

(declare-fun res!1595455 () Bool)

(declare-fun e!2439512 () Bool)

(assert (=> d!1169302 (=> (not res!1595455) (not e!2439512))))

(assert (=> d!1169302 (= res!1595455 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))))))

(assert (=> d!1169302 (= (inv!56083 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) e!2439512)))

(declare-fun b!3942484 () Bool)

(assert (=> b!3942484 (= e!2439512 (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))))))

(assert (= (and d!1169302 res!1595455) b!3942484))

(declare-fun m!4511087 () Bool)

(assert (=> d!1169302 m!4511087))

(declare-fun m!4511089 () Bool)

(assert (=> b!3942484 m!4511089))

(assert (=> b!3942275 d!1169302))

(declare-fun b!3942495 () Bool)

(declare-fun e!2439519 () Bool)

(declare-fun inv!16 (TokenValue!6775) Bool)

(assert (=> b!3942495 (= e!2439519 (inv!16 (value!207168 (h!47293 suffixTokens!72))))))

(declare-fun b!3942496 () Bool)

(declare-fun res!1595458 () Bool)

(declare-fun e!2439520 () Bool)

(assert (=> b!3942496 (=> res!1595458 e!2439520)))

(assert (=> b!3942496 (= res!1595458 (not (is-IntegerValue!20327 (value!207168 (h!47293 suffixTokens!72)))))))

(declare-fun e!2439521 () Bool)

(assert (=> b!3942496 (= e!2439521 e!2439520)))

(declare-fun b!3942497 () Bool)

(assert (=> b!3942497 (= e!2439519 e!2439521)))

(declare-fun c!684871 () Bool)

(assert (=> b!3942497 (= c!684871 (is-IntegerValue!20326 (value!207168 (h!47293 suffixTokens!72))))))

(declare-fun d!1169304 () Bool)

(declare-fun c!684872 () Bool)

(assert (=> d!1169304 (= c!684872 (is-IntegerValue!20325 (value!207168 (h!47293 suffixTokens!72))))))

(assert (=> d!1169304 (= (inv!21 (value!207168 (h!47293 suffixTokens!72))) e!2439519)))

(declare-fun b!3942498 () Bool)

(declare-fun inv!15 (TokenValue!6775) Bool)

(assert (=> b!3942498 (= e!2439520 (inv!15 (value!207168 (h!47293 suffixTokens!72))))))

(declare-fun b!3942499 () Bool)

(declare-fun inv!17 (TokenValue!6775) Bool)

(assert (=> b!3942499 (= e!2439521 (inv!17 (value!207168 (h!47293 suffixTokens!72))))))

(assert (= (and d!1169304 c!684872) b!3942495))

(assert (= (and d!1169304 (not c!684872)) b!3942497))

(assert (= (and b!3942497 c!684871) b!3942499))

(assert (= (and b!3942497 (not c!684871)) b!3942496))

(assert (= (and b!3942496 (not res!1595458)) b!3942498))

(declare-fun m!4511091 () Bool)

(assert (=> b!3942495 m!4511091))

(declare-fun m!4511093 () Bool)

(assert (=> b!3942498 m!4511093))

(declare-fun m!4511095 () Bool)

(assert (=> b!3942499 m!4511095))

(assert (=> b!3942273 d!1169304))

(declare-fun b!3942500 () Bool)

(declare-fun e!2439523 () tuple2!41160)

(assert (=> b!3942500 (= e!2439523 (tuple2!41161 Nil!41873 lt!1378708))))

(declare-fun d!1169306 () Bool)

(declare-fun e!2439524 () Bool)

(assert (=> d!1169306 e!2439524))

(declare-fun c!684874 () Bool)

(declare-fun lt!1378785 () tuple2!41160)

(assert (=> d!1169306 (= c!684874 (> (size!31405 (_1!23714 lt!1378785)) 0))))

(assert (=> d!1169306 (= lt!1378785 e!2439523)))

(declare-fun c!684873 () Bool)

(declare-fun lt!1378783 () Option!8965)

(assert (=> d!1169306 (= c!684873 (is-Some!8964 lt!1378783))))

(assert (=> d!1169306 (= lt!1378783 (maxPrefix!3438 thiss!20629 rules!2768 lt!1378708))))

(assert (=> d!1169306 (= (lexList!1902 thiss!20629 rules!2768 lt!1378708) lt!1378785)))

(declare-fun b!3942501 () Bool)

(declare-fun e!2439522 () Bool)

(assert (=> b!3942501 (= e!2439522 (not (isEmpty!24983 (_1!23714 lt!1378785))))))

(declare-fun b!3942502 () Bool)

(assert (=> b!3942502 (= e!2439524 e!2439522)))

(declare-fun res!1595459 () Bool)

(assert (=> b!3942502 (= res!1595459 (< (size!31404 (_2!23714 lt!1378785)) (size!31404 lt!1378708)))))

(assert (=> b!3942502 (=> (not res!1595459) (not e!2439522))))

(declare-fun b!3942503 () Bool)

(assert (=> b!3942503 (= e!2439524 (= (_2!23714 lt!1378785) lt!1378708))))

(declare-fun b!3942504 () Bool)

(declare-fun lt!1378784 () tuple2!41160)

(assert (=> b!3942504 (= e!2439523 (tuple2!41161 (Cons!41873 (_1!23713 (v!39298 lt!1378783)) (_1!23714 lt!1378784)) (_2!23714 lt!1378784)))))

(assert (=> b!3942504 (= lt!1378784 (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378783))))))

(assert (= (and d!1169306 c!684873) b!3942504))

(assert (= (and d!1169306 (not c!684873)) b!3942500))

(assert (= (and d!1169306 c!684874) b!3942502))

(assert (= (and d!1169306 (not c!684874)) b!3942503))

(assert (= (and b!3942502 res!1595459) b!3942501))

(declare-fun m!4511097 () Bool)

(assert (=> d!1169306 m!4511097))

(assert (=> d!1169306 m!4510867))

(declare-fun m!4511099 () Bool)

(assert (=> b!3942501 m!4511099))

(declare-fun m!4511101 () Bool)

(assert (=> b!3942502 m!4511101))

(assert (=> b!3942502 m!4511007))

(declare-fun m!4511103 () Bool)

(assert (=> b!3942504 m!4511103))

(assert (=> b!3942284 d!1169306))

(declare-fun b!3942532 () Bool)

(declare-fun e!2439536 () List!41997)

(assert (=> b!3942532 (= e!2439536 (Cons!41873 (h!47293 prefixTokens!80) (++!10848 (t!327080 prefixTokens!80) suffixTokens!72)))))

(declare-fun e!2439535 () Bool)

(declare-fun lt!1378792 () List!41997)

(declare-fun b!3942534 () Bool)

(assert (=> b!3942534 (= e!2439535 (or (not (= suffixTokens!72 Nil!41873)) (= lt!1378792 prefixTokens!80)))))

(declare-fun d!1169308 () Bool)

(assert (=> d!1169308 e!2439535))

(declare-fun res!1595478 () Bool)

(assert (=> d!1169308 (=> (not res!1595478) (not e!2439535))))

(declare-fun content!6329 (List!41997) (Set Token!12228))

(assert (=> d!1169308 (= res!1595478 (= (content!6329 lt!1378792) (set.union (content!6329 prefixTokens!80) (content!6329 suffixTokens!72))))))

(assert (=> d!1169308 (= lt!1378792 e!2439536)))

(declare-fun c!684879 () Bool)

(assert (=> d!1169308 (= c!684879 (is-Nil!41873 prefixTokens!80))))

(assert (=> d!1169308 (= (++!10848 prefixTokens!80 suffixTokens!72) lt!1378792)))

(declare-fun b!3942531 () Bool)

(assert (=> b!3942531 (= e!2439536 suffixTokens!72)))

(declare-fun b!3942533 () Bool)

(declare-fun res!1595479 () Bool)

(assert (=> b!3942533 (=> (not res!1595479) (not e!2439535))))

(assert (=> b!3942533 (= res!1595479 (= (size!31405 lt!1378792) (+ (size!31405 prefixTokens!80) (size!31405 suffixTokens!72))))))

(assert (= (and d!1169308 c!684879) b!3942531))

(assert (= (and d!1169308 (not c!684879)) b!3942532))

(assert (= (and d!1169308 res!1595478) b!3942533))

(assert (= (and b!3942533 res!1595479) b!3942534))

(declare-fun m!4511105 () Bool)

(assert (=> b!3942532 m!4511105))

(declare-fun m!4511107 () Bool)

(assert (=> d!1169308 m!4511107))

(declare-fun m!4511109 () Bool)

(assert (=> d!1169308 m!4511109))

(declare-fun m!4511111 () Bool)

(assert (=> d!1169308 m!4511111))

(declare-fun m!4511113 () Bool)

(assert (=> b!3942533 m!4511113))

(declare-fun m!4511115 () Bool)

(assert (=> b!3942533 m!4511115))

(declare-fun m!4511117 () Bool)

(assert (=> b!3942533 m!4511117))

(assert (=> b!3942284 d!1169308))

(declare-fun e!2439538 () Bool)

(declare-fun lt!1378793 () List!41996)

(declare-fun b!3942538 () Bool)

(assert (=> b!3942538 (= e!2439538 (or (not (= suffix!1176 Nil!41872)) (= lt!1378793 prefix!426)))))

(declare-fun b!3942535 () Bool)

(declare-fun e!2439537 () List!41996)

(assert (=> b!3942535 (= e!2439537 suffix!1176)))

(declare-fun d!1169310 () Bool)

(assert (=> d!1169310 e!2439538))

(declare-fun res!1595481 () Bool)

(assert (=> d!1169310 (=> (not res!1595481) (not e!2439538))))

(assert (=> d!1169310 (= res!1595481 (= (content!6328 lt!1378793) (set.union (content!6328 prefix!426) (content!6328 suffix!1176))))))

(assert (=> d!1169310 (= lt!1378793 e!2439537)))

(declare-fun c!684880 () Bool)

(assert (=> d!1169310 (= c!684880 (is-Nil!41872 prefix!426))))

(assert (=> d!1169310 (= (++!10847 prefix!426 suffix!1176) lt!1378793)))

(declare-fun b!3942536 () Bool)

(assert (=> b!3942536 (= e!2439537 (Cons!41872 (h!47292 prefix!426) (++!10847 (t!327079 prefix!426) suffix!1176)))))

(declare-fun b!3942537 () Bool)

(declare-fun res!1595480 () Bool)

(assert (=> b!3942537 (=> (not res!1595480) (not e!2439538))))

(assert (=> b!3942537 (= res!1595480 (= (size!31404 lt!1378793) (+ (size!31404 prefix!426) (size!31404 suffix!1176))))))

(assert (= (and d!1169310 c!684880) b!3942535))

(assert (= (and d!1169310 (not c!684880)) b!3942536))

(assert (= (and d!1169310 res!1595481) b!3942537))

(assert (= (and b!3942537 res!1595480) b!3942538))

(declare-fun m!4511119 () Bool)

(assert (=> d!1169310 m!4511119))

(declare-fun m!4511121 () Bool)

(assert (=> d!1169310 m!4511121))

(declare-fun m!4511123 () Bool)

(assert (=> d!1169310 m!4511123))

(declare-fun m!4511125 () Bool)

(assert (=> b!3942536 m!4511125))

(declare-fun m!4511127 () Bool)

(assert (=> b!3942537 m!4511127))

(declare-fun m!4511129 () Bool)

(assert (=> b!3942537 m!4511129))

(assert (=> b!3942537 m!4510961))

(assert (=> b!3942284 d!1169310))

(declare-fun d!1169312 () Bool)

(declare-fun res!1595482 () Bool)

(declare-fun e!2439539 () Bool)

(assert (=> d!1169312 (=> (not res!1595482) (not e!2439539))))

(assert (=> d!1169312 (= res!1595482 (not (isEmpty!24985 (originalCharacters!7145 (h!47293 suffixTokens!72)))))))

(assert (=> d!1169312 (= (inv!56082 (h!47293 suffixTokens!72)) e!2439539)))

(declare-fun b!3942539 () Bool)

(declare-fun res!1595483 () Bool)

(assert (=> b!3942539 (=> (not res!1595483) (not e!2439539))))

(assert (=> b!3942539 (= res!1595483 (= (originalCharacters!7145 (h!47293 suffixTokens!72)) (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(declare-fun b!3942540 () Bool)

(assert (=> b!3942540 (= e!2439539 (= (size!31402 (h!47293 suffixTokens!72)) (size!31404 (originalCharacters!7145 (h!47293 suffixTokens!72)))))))

(assert (= (and d!1169312 res!1595482) b!3942539))

(assert (= (and b!3942539 res!1595483) b!3942540))

(declare-fun b_lambda!115293 () Bool)

(assert (=> (not b_lambda!115293) (not b!3942539)))

(declare-fun tb!236375 () Bool)

(declare-fun t!327105 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327105) tb!236375))

(declare-fun b!3942541 () Bool)

(declare-fun e!2439540 () Bool)

(declare-fun tp!1199980 () Bool)

(assert (=> b!3942541 (= e!2439540 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))) tp!1199980))))

(declare-fun result!286344 () Bool)

(assert (=> tb!236375 (= result!286344 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))) e!2439540))))

(assert (= tb!236375 b!3942541))

(declare-fun m!4511131 () Bool)

(assert (=> b!3942541 m!4511131))

(declare-fun m!4511133 () Bool)

(assert (=> tb!236375 m!4511133))

(assert (=> b!3942539 t!327105))

(declare-fun b_and!301373 () Bool)

(assert (= b_and!301367 (and (=> t!327105 result!286344) b_and!301373)))

(declare-fun t!327107 () Bool)

(declare-fun tb!236377 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327107) tb!236377))

(declare-fun result!286346 () Bool)

(assert (= result!286346 result!286344))

(assert (=> b!3942539 t!327107))

(declare-fun b_and!301375 () Bool)

(assert (= b_and!301369 (and (=> t!327107 result!286346) b_and!301375)))

(declare-fun t!327109 () Bool)

(declare-fun tb!236379 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327109) tb!236379))

(declare-fun result!286348 () Bool)

(assert (= result!286348 result!286344))

(assert (=> b!3942539 t!327109))

(declare-fun b_and!301377 () Bool)

(assert (= b_and!301371 (and (=> t!327109 result!286348) b_and!301377)))

(declare-fun m!4511135 () Bool)

(assert (=> d!1169312 m!4511135))

(declare-fun m!4511137 () Bool)

(assert (=> b!3942539 m!4511137))

(assert (=> b!3942539 m!4511137))

(declare-fun m!4511139 () Bool)

(assert (=> b!3942539 m!4511139))

(declare-fun m!4511141 () Bool)

(assert (=> b!3942540 m!4511141))

(assert (=> b!3942288 d!1169312))

(declare-fun d!1169314 () Bool)

(assert (=> d!1169314 (= (isEmpty!24984 rules!2768) (is-Nil!41874 rules!2768))))

(assert (=> b!3942276 d!1169314))

(declare-fun b!3942542 () Bool)

(declare-fun e!2439541 () Bool)

(assert (=> b!3942542 (= e!2439541 (inv!16 (value!207168 (h!47293 prefixTokens!80))))))

(declare-fun b!3942543 () Bool)

(declare-fun res!1595484 () Bool)

(declare-fun e!2439542 () Bool)

(assert (=> b!3942543 (=> res!1595484 e!2439542)))

(assert (=> b!3942543 (= res!1595484 (not (is-IntegerValue!20327 (value!207168 (h!47293 prefixTokens!80)))))))

(declare-fun e!2439543 () Bool)

(assert (=> b!3942543 (= e!2439543 e!2439542)))

(declare-fun b!3942544 () Bool)

(assert (=> b!3942544 (= e!2439541 e!2439543)))

(declare-fun c!684881 () Bool)

(assert (=> b!3942544 (= c!684881 (is-IntegerValue!20326 (value!207168 (h!47293 prefixTokens!80))))))

(declare-fun d!1169316 () Bool)

(declare-fun c!684882 () Bool)

(assert (=> d!1169316 (= c!684882 (is-IntegerValue!20325 (value!207168 (h!47293 prefixTokens!80))))))

(assert (=> d!1169316 (= (inv!21 (value!207168 (h!47293 prefixTokens!80))) e!2439541)))

(declare-fun b!3942545 () Bool)

(assert (=> b!3942545 (= e!2439542 (inv!15 (value!207168 (h!47293 prefixTokens!80))))))

(declare-fun b!3942546 () Bool)

(assert (=> b!3942546 (= e!2439543 (inv!17 (value!207168 (h!47293 prefixTokens!80))))))

(assert (= (and d!1169316 c!684882) b!3942542))

(assert (= (and d!1169316 (not c!684882)) b!3942544))

(assert (= (and b!3942544 c!684881) b!3942546))

(assert (= (and b!3942544 (not c!684881)) b!3942543))

(assert (= (and b!3942543 (not res!1595484)) b!3942545))

(declare-fun m!4511143 () Bool)

(assert (=> b!3942542 m!4511143))

(declare-fun m!4511145 () Bool)

(assert (=> b!3942545 m!4511145))

(declare-fun m!4511147 () Bool)

(assert (=> b!3942546 m!4511147))

(assert (=> b!3942287 d!1169316))

(declare-fun b!3942560 () Bool)

(declare-fun b_free!107921 () Bool)

(declare-fun b_next!108625 () Bool)

(assert (=> b!3942560 (= b_free!107921 (not b_next!108625))))

(declare-fun tp!1199991 () Bool)

(declare-fun b_and!301379 () Bool)

(assert (=> b!3942560 (= tp!1199991 b_and!301379)))

(declare-fun b_free!107923 () Bool)

(declare-fun b_next!108627 () Bool)

(assert (=> b!3942560 (= b_free!107923 (not b_next!108627))))

(declare-fun t!327111 () Bool)

(declare-fun tb!236381 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327111) tb!236381))

(declare-fun result!286352 () Bool)

(assert (= result!286352 result!286322))

(assert (=> b!3942361 t!327111))

(declare-fun tb!236383 () Bool)

(declare-fun t!327113 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327113) tb!236383))

(declare-fun result!286354 () Bool)

(assert (= result!286354 result!286338))

(assert (=> d!1169286 t!327113))

(declare-fun tb!236385 () Bool)

(declare-fun t!327115 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327115) tb!236385))

(declare-fun result!286356 () Bool)

(assert (= result!286356 result!286344))

(assert (=> b!3942539 t!327115))

(declare-fun b_and!301381 () Bool)

(declare-fun tp!1199993 () Bool)

(assert (=> b!3942560 (= tp!1199993 (and (=> t!327111 result!286352) (=> t!327113 result!286354) (=> t!327115 result!286356) b_and!301381))))

(declare-fun e!2439560 () Bool)

(assert (=> b!3942560 (= e!2439560 (and tp!1199991 tp!1199993))))

(declare-fun e!2439557 () Bool)

(assert (=> b!3942269 (= tp!1199909 e!2439557)))

(declare-fun e!2439561 () Bool)

(declare-fun e!2439556 () Bool)

(declare-fun tp!1199994 () Bool)

(declare-fun b!3942558 () Bool)

(assert (=> b!3942558 (= e!2439556 (and (inv!21 (value!207168 (h!47293 (t!327080 prefixTokens!80)))) e!2439561 tp!1199994))))

(declare-fun tp!1199992 () Bool)

(declare-fun b!3942557 () Bool)

(assert (=> b!3942557 (= e!2439557 (and (inv!56082 (h!47293 (t!327080 prefixTokens!80))) e!2439556 tp!1199992))))

(declare-fun b!3942559 () Bool)

(declare-fun tp!1199995 () Bool)

(assert (=> b!3942559 (= e!2439561 (and tp!1199995 (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) e!2439560))))

(assert (= b!3942559 b!3942560))

(assert (= b!3942558 b!3942559))

(assert (= b!3942557 b!3942558))

(assert (= (and b!3942269 (is-Cons!41873 (t!327080 prefixTokens!80))) b!3942557))

(declare-fun m!4511149 () Bool)

(assert (=> b!3942558 m!4511149))

(declare-fun m!4511151 () Bool)

(assert (=> b!3942557 m!4511151))

(declare-fun m!4511153 () Bool)

(assert (=> b!3942559 m!4511153))

(declare-fun m!4511155 () Bool)

(assert (=> b!3942559 m!4511155))

(declare-fun b!3942565 () Bool)

(declare-fun e!2439564 () Bool)

(declare-fun tp!1199998 () Bool)

(assert (=> b!3942565 (= e!2439564 (and tp_is_empty!19871 tp!1199998))))

(assert (=> b!3942278 (= tp!1199913 e!2439564)))

(assert (= (and b!3942278 (is-Cons!41872 (t!327079 prefix!426))) b!3942565))

(declare-fun b!3942566 () Bool)

(declare-fun e!2439565 () Bool)

(declare-fun tp!1199999 () Bool)

(assert (=> b!3942566 (= e!2439565 (and tp_is_empty!19871 tp!1199999))))

(assert (=> b!3942279 (= tp!1199921 e!2439565)))

(assert (= (and b!3942279 (is-Cons!41872 (t!327079 suffix!1176))) b!3942566))

(declare-fun b!3942578 () Bool)

(declare-fun e!2439568 () Bool)

(declare-fun tp!1200014 () Bool)

(declare-fun tp!1200013 () Bool)

(assert (=> b!3942578 (= e!2439568 (and tp!1200014 tp!1200013))))

(declare-fun b!3942579 () Bool)

(declare-fun tp!1200011 () Bool)

(assert (=> b!3942579 (= e!2439568 tp!1200011)))

(assert (=> b!3942270 (= tp!1199910 e!2439568)))

(declare-fun b!3942577 () Bool)

(assert (=> b!3942577 (= e!2439568 tp_is_empty!19871)))

(declare-fun b!3942580 () Bool)

(declare-fun tp!1200010 () Bool)

(declare-fun tp!1200012 () Bool)

(assert (=> b!3942580 (= e!2439568 (and tp!1200010 tp!1200012))))

(assert (= (and b!3942270 (is-ElementMatch!11450 (regex!6545 (h!47294 rules!2768)))) b!3942577))

(assert (= (and b!3942270 (is-Concat!18226 (regex!6545 (h!47294 rules!2768)))) b!3942578))

(assert (= (and b!3942270 (is-Star!11450 (regex!6545 (h!47294 rules!2768)))) b!3942579))

(assert (= (and b!3942270 (is-Union!11450 (regex!6545 (h!47294 rules!2768)))) b!3942580))

(declare-fun b!3942581 () Bool)

(declare-fun e!2439569 () Bool)

(declare-fun tp!1200015 () Bool)

(assert (=> b!3942581 (= e!2439569 (and tp_is_empty!19871 tp!1200015))))

(assert (=> b!3942274 (= tp!1199915 e!2439569)))

(assert (= (and b!3942274 (is-Cons!41872 (t!327079 suffixResult!91))) b!3942581))

(declare-fun b!3942583 () Bool)

(declare-fun e!2439570 () Bool)

(declare-fun tp!1200020 () Bool)

(declare-fun tp!1200019 () Bool)

(assert (=> b!3942583 (= e!2439570 (and tp!1200020 tp!1200019))))

(declare-fun b!3942584 () Bool)

(declare-fun tp!1200017 () Bool)

(assert (=> b!3942584 (= e!2439570 tp!1200017)))

(assert (=> b!3942285 (= tp!1199912 e!2439570)))

(declare-fun b!3942582 () Bool)

(assert (=> b!3942582 (= e!2439570 tp_is_empty!19871)))

(declare-fun b!3942585 () Bool)

(declare-fun tp!1200016 () Bool)

(declare-fun tp!1200018 () Bool)

(assert (=> b!3942585 (= e!2439570 (and tp!1200016 tp!1200018))))

(assert (= (and b!3942285 (is-ElementMatch!11450 (regex!6545 (rule!9505 (h!47293 prefixTokens!80))))) b!3942582))

(assert (= (and b!3942285 (is-Concat!18226 (regex!6545 (rule!9505 (h!47293 prefixTokens!80))))) b!3942583))

(assert (= (and b!3942285 (is-Star!11450 (regex!6545 (rule!9505 (h!47293 prefixTokens!80))))) b!3942584))

(assert (= (and b!3942285 (is-Union!11450 (regex!6545 (rule!9505 (h!47293 prefixTokens!80))))) b!3942585))

(declare-fun b!3942587 () Bool)

(declare-fun e!2439571 () Bool)

(declare-fun tp!1200025 () Bool)

(declare-fun tp!1200024 () Bool)

(assert (=> b!3942587 (= e!2439571 (and tp!1200025 tp!1200024))))

(declare-fun b!3942588 () Bool)

(declare-fun tp!1200022 () Bool)

(assert (=> b!3942588 (= e!2439571 tp!1200022)))

(assert (=> b!3942275 (= tp!1199914 e!2439571)))

(declare-fun b!3942586 () Bool)

(assert (=> b!3942586 (= e!2439571 tp_is_empty!19871)))

(declare-fun b!3942589 () Bool)

(declare-fun tp!1200021 () Bool)

(declare-fun tp!1200023 () Bool)

(assert (=> b!3942589 (= e!2439571 (and tp!1200021 tp!1200023))))

(assert (= (and b!3942275 (is-ElementMatch!11450 (regex!6545 (rule!9505 (h!47293 suffixTokens!72))))) b!3942586))

(assert (= (and b!3942275 (is-Concat!18226 (regex!6545 (rule!9505 (h!47293 suffixTokens!72))))) b!3942587))

(assert (= (and b!3942275 (is-Star!11450 (regex!6545 (rule!9505 (h!47293 suffixTokens!72))))) b!3942588))

(assert (= (and b!3942275 (is-Union!11450 (regex!6545 (rule!9505 (h!47293 suffixTokens!72))))) b!3942589))

(declare-fun b!3942590 () Bool)

(declare-fun e!2439572 () Bool)

(declare-fun tp!1200026 () Bool)

(assert (=> b!3942590 (= e!2439572 (and tp_is_empty!19871 tp!1200026))))

(assert (=> b!3942273 (= tp!1199911 e!2439572)))

(assert (= (and b!3942273 (is-Cons!41872 (originalCharacters!7145 (h!47293 suffixTokens!72)))) b!3942590))

(declare-fun b!3942594 () Bool)

(declare-fun b_free!107925 () Bool)

(declare-fun b_next!108629 () Bool)

(assert (=> b!3942594 (= b_free!107925 (not b_next!108629))))

(declare-fun tp!1200027 () Bool)

(declare-fun b_and!301383 () Bool)

(assert (=> b!3942594 (= tp!1200027 b_and!301383)))

(declare-fun b_free!107927 () Bool)

(declare-fun b_next!108631 () Bool)

(assert (=> b!3942594 (= b_free!107927 (not b_next!108631))))

(declare-fun t!327117 () Bool)

(declare-fun tb!236387 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327117) tb!236387))

(declare-fun result!286362 () Bool)

(assert (= result!286362 result!286322))

(assert (=> b!3942361 t!327117))

(declare-fun t!327119 () Bool)

(declare-fun tb!236389 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327119) tb!236389))

(declare-fun result!286364 () Bool)

(assert (= result!286364 result!286338))

(assert (=> d!1169286 t!327119))

(declare-fun t!327121 () Bool)

(declare-fun tb!236391 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327121) tb!236391))

(declare-fun result!286366 () Bool)

(assert (= result!286366 result!286344))

(assert (=> b!3942539 t!327121))

(declare-fun b_and!301385 () Bool)

(declare-fun tp!1200029 () Bool)

(assert (=> b!3942594 (= tp!1200029 (and (=> t!327117 result!286362) (=> t!327119 result!286364) (=> t!327121 result!286366) b_and!301385))))

(declare-fun e!2439577 () Bool)

(assert (=> b!3942594 (= e!2439577 (and tp!1200027 tp!1200029))))

(declare-fun e!2439574 () Bool)

(assert (=> b!3942288 (= tp!1199908 e!2439574)))

(declare-fun e!2439573 () Bool)

(declare-fun b!3942592 () Bool)

(declare-fun tp!1200030 () Bool)

(declare-fun e!2439578 () Bool)

(assert (=> b!3942592 (= e!2439573 (and (inv!21 (value!207168 (h!47293 (t!327080 suffixTokens!72)))) e!2439578 tp!1200030))))

(declare-fun tp!1200028 () Bool)

(declare-fun b!3942591 () Bool)

(assert (=> b!3942591 (= e!2439574 (and (inv!56082 (h!47293 (t!327080 suffixTokens!72))) e!2439573 tp!1200028))))

(declare-fun b!3942593 () Bool)

(declare-fun tp!1200031 () Bool)

(assert (=> b!3942593 (= e!2439578 (and tp!1200031 (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) e!2439577))))

(assert (= b!3942593 b!3942594))

(assert (= b!3942592 b!3942593))

(assert (= b!3942591 b!3942592))

(assert (= (and b!3942288 (is-Cons!41873 (t!327080 suffixTokens!72))) b!3942591))

(declare-fun m!4511157 () Bool)

(assert (=> b!3942592 m!4511157))

(declare-fun m!4511159 () Bool)

(assert (=> b!3942591 m!4511159))

(declare-fun m!4511161 () Bool)

(assert (=> b!3942593 m!4511161))

(declare-fun m!4511163 () Bool)

(assert (=> b!3942593 m!4511163))

(declare-fun b!3942605 () Bool)

(declare-fun b_free!107929 () Bool)

(declare-fun b_next!108633 () Bool)

(assert (=> b!3942605 (= b_free!107929 (not b_next!108633))))

(declare-fun tp!1200043 () Bool)

(declare-fun b_and!301387 () Bool)

(assert (=> b!3942605 (= tp!1200043 b_and!301387)))

(declare-fun b_free!107931 () Bool)

(declare-fun b_next!108635 () Bool)

(assert (=> b!3942605 (= b_free!107931 (not b_next!108635))))

(declare-fun t!327123 () Bool)

(declare-fun tb!236393 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327123) tb!236393))

(declare-fun result!286370 () Bool)

(assert (= result!286370 result!286322))

(assert (=> b!3942361 t!327123))

(declare-fun t!327125 () Bool)

(declare-fun tb!236395 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327125) tb!236395))

(declare-fun result!286372 () Bool)

(assert (= result!286372 result!286338))

(assert (=> d!1169286 t!327125))

(declare-fun t!327127 () Bool)

(declare-fun tb!236397 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327127) tb!236397))

(declare-fun result!286374 () Bool)

(assert (= result!286374 result!286344))

(assert (=> b!3942539 t!327127))

(declare-fun b_and!301389 () Bool)

(declare-fun tp!1200042 () Bool)

(assert (=> b!3942605 (= tp!1200042 (and (=> t!327123 result!286370) (=> t!327125 result!286372) (=> t!327127 result!286374) b_and!301389))))

(declare-fun e!2439588 () Bool)

(assert (=> b!3942605 (= e!2439588 (and tp!1200043 tp!1200042))))

(declare-fun b!3942604 () Bool)

(declare-fun tp!1200041 () Bool)

(declare-fun e!2439587 () Bool)

(assert (=> b!3942604 (= e!2439587 (and tp!1200041 (inv!56079 (tag!7405 (h!47294 (t!327081 rules!2768)))) (inv!56083 (transformation!6545 (h!47294 (t!327081 rules!2768)))) e!2439588))))

(declare-fun b!3942603 () Bool)

(declare-fun e!2439590 () Bool)

(declare-fun tp!1200040 () Bool)

(assert (=> b!3942603 (= e!2439590 (and e!2439587 tp!1200040))))

(assert (=> b!3942286 (= tp!1199905 e!2439590)))

(assert (= b!3942604 b!3942605))

(assert (= b!3942603 b!3942604))

(assert (= (and b!3942286 (is-Cons!41874 (t!327081 rules!2768))) b!3942603))

(declare-fun m!4511165 () Bool)

(assert (=> b!3942604 m!4511165))

(declare-fun m!4511167 () Bool)

(assert (=> b!3942604 m!4511167))

(declare-fun b!3942615 () Bool)

(declare-fun e!2439594 () Bool)

(declare-fun tp!1200044 () Bool)

(assert (=> b!3942615 (= e!2439594 (and tp_is_empty!19871 tp!1200044))))

(assert (=> b!3942287 (= tp!1199918 e!2439594)))

(assert (= (and b!3942287 (is-Cons!41872 (originalCharacters!7145 (h!47293 prefixTokens!80)))) b!3942615))

(declare-fun b_lambda!115295 () Bool)

(assert (= b_lambda!115293 (or (and b!3942272 b_free!107899 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (and b!3942290 b_free!107907 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (and b!3942277 b_free!107903) (and b!3942594 b_free!107927 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (and b!3942560 b_free!107923 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (and b!3942605 b_free!107931 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b_lambda!115295)))

(declare-fun b_lambda!115297 () Bool)

(assert (= b_lambda!115287 (or (and b!3942272 b_free!107899) (and b!3942605 b_free!107931 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))))) (and b!3942290 b_free!107907 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))))) (and b!3942277 b_free!107903 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))))) (and b!3942594 b_free!107927 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))))) (and b!3942560 b_free!107923 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b_lambda!115297)))

(push 1)

(assert (not d!1169286))

(assert (not d!1169312))

(assert (not d!1169310))

(assert (not d!1169280))

(assert (not b!3942557))

(assert (not d!1169290))

(assert (not b!3942593))

(assert (not d!1169276))

(assert tp_is_empty!19871)

(assert (not b!3942590))

(assert b_and!301375)

(assert (not b!3942604))

(assert (not b!3942584))

(assert (not b!3942603))

(assert b_and!301381)

(assert (not b_next!108611))

(assert (not b!3942501))

(assert (not b!3942435))

(assert (not b!3942592))

(assert (not b!3942502))

(assert (not d!1169288))

(assert (not b!3942441))

(assert (not b!3942482))

(assert (not b_lambda!115291))

(assert (not b!3942481))

(assert (not b!3942457))

(assert (not b_next!108633))

(assert (not b!3942591))

(assert (not b_next!108635))

(assert (not d!1169282))

(assert (not b_lambda!115295))

(assert (not b!3942446))

(assert (not b!3942362))

(assert (not b_next!108603))

(assert (not b!3942433))

(assert (not b_next!108607))

(assert (not b!3942437))

(assert (not b_next!108631))

(assert (not b!3942438))

(assert b_and!301379)

(assert b_and!301385)

(assert (not b!3942495))

(assert (not d!1169308))

(assert (not b!3942565))

(assert (not d!1169284))

(assert (not b!3942588))

(assert (not b!3942533))

(assert (not d!1169306))

(assert b_and!301387)

(assert (not tb!236369))

(assert b_and!301377)

(assert (not b!3942390))

(assert (not b!3942558))

(assert (not b!3942541))

(assert (not b!3942580))

(assert (not b_next!108609))

(assert (not b!3942589))

(assert (not b!3942392))

(assert (not b!3942559))

(assert (not d!1169274))

(assert (not b!3942499))

(assert (not b!3942472))

(assert (not b!3942480))

(assert (not b!3942583))

(assert (not b!3942532))

(assert (not b!3942545))

(assert (not b!3942470))

(assert (not d!1169260))

(assert (not b!3942361))

(assert (not b_lambda!115297))

(assert (not b_next!108627))

(assert b_and!301335)

(assert (not b!3942566))

(assert (not b!3942581))

(assert (not b!3942504))

(assert (not b!3942587))

(assert (not b!3942469))

(assert (not b!3942542))

(assert (not b!3942430))

(assert (not d!1169264))

(assert (not b_next!108601))

(assert b_and!301389)

(assert (not bm!285066))

(assert (not b!3942546))

(assert (not b!3942389))

(assert (not b!3942615))

(assert (not b!3942498))

(assert (not b!3942585))

(assert (not b!3942483))

(assert (not d!1169256))

(assert (not d!1169272))

(assert (not b!3942434))

(assert (not b!3942477))

(assert (not b!3942539))

(assert b_and!301373)

(assert (not b_next!108605))

(assert (not b!3942367))

(assert (not b!3942396))

(assert (not b_next!108625))

(assert (not b!3942458))

(assert (not b_next!108629))

(assert b_and!301383)

(assert (not b!3942579))

(assert (not b!3942484))

(assert (not d!1169252))

(assert (not b!3942540))

(assert (not tb!236357))

(assert (not b!3942436))

(assert (not tb!236375))

(assert (not b!3942578))

(assert (not b!3942537))

(assert b_and!301331)

(assert b_and!301339)

(assert (not b!3942431))

(assert (not d!1169302))

(assert (not b!3942536))

(assert (not b!3942459))

(assert (not d!1169298))

(check-sat)

(pop 1)

(push 1)

(assert b_and!301375)

(assert (not b_next!108633))

(assert (not b_next!108635))

(assert b_and!301387)

(assert b_and!301377)

(assert (not b_next!108609))

(assert b_and!301331)

(assert b_and!301339)

(assert b_and!301381)

(assert (not b_next!108611))

(assert (not b_next!108603))

(assert (not b_next!108607))

(assert (not b_next!108631))

(assert b_and!301379)

(assert b_and!301385)

(assert (not b_next!108627))

(assert b_and!301335)

(assert (not b_next!108601))

(assert b_and!301389)

(assert b_and!301373)

(assert (not b_next!108605))

(assert (not b_next!108625))

(assert (not b_next!108629))

(assert b_and!301383)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1169282 d!1169278))

(assert (=> d!1169282 d!1169284))

(declare-fun d!1169368 () Bool)

(assert (=> d!1169368 (isPrefix!3634 lt!1378707 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169368 true))

(declare-fun _$46!1588 () Unit!60417)

(assert (=> d!1169368 (= (choose!23527 lt!1378707 (_2!23713 (v!39298 lt!1378706))) _$46!1588)))

(declare-fun bs!586701 () Bool)

(assert (= bs!586701 d!1169368))

(assert (=> bs!586701 m!4510847))

(assert (=> bs!586701 m!4510847))

(assert (=> bs!586701 m!4510849))

(assert (=> d!1169282 d!1169368))

(declare-fun d!1169370 () Bool)

(declare-fun nullableFct!1132 (Regex!11450) Bool)

(assert (=> d!1169370 (= (nullable!4014 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (nullableFct!1132 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))

(declare-fun bs!586702 () Bool)

(assert (= bs!586702 d!1169370))

(declare-fun m!4511361 () Bool)

(assert (=> bs!586702 m!4511361))

(assert (=> b!3942446 d!1169370))

(declare-fun d!1169372 () Bool)

(declare-fun e!2439702 () Bool)

(assert (=> d!1169372 e!2439702))

(declare-fun res!1595546 () Bool)

(assert (=> d!1169372 (=> res!1595546 e!2439702)))

(declare-fun lt!1378834 () Bool)

(assert (=> d!1169372 (= res!1595546 (not lt!1378834))))

(declare-fun e!2439701 () Bool)

(assert (=> d!1169372 (= lt!1378834 e!2439701)))

(declare-fun res!1595544 () Bool)

(assert (=> d!1169372 (=> res!1595544 e!2439701)))

(assert (=> d!1169372 (= res!1595544 (is-Nil!41872 (tail!6102 lt!1378707)))))

(assert (=> d!1169372 (= (isPrefix!3634 (tail!6102 lt!1378707) (tail!6102 lt!1378708)) lt!1378834)))

(declare-fun b!3942771 () Bool)

(declare-fun e!2439703 () Bool)

(assert (=> b!3942771 (= e!2439703 (isPrefix!3634 (tail!6102 (tail!6102 lt!1378707)) (tail!6102 (tail!6102 lt!1378708))))))

(declare-fun b!3942770 () Bool)

(declare-fun res!1595545 () Bool)

(assert (=> b!3942770 (=> (not res!1595545) (not e!2439703))))

(assert (=> b!3942770 (= res!1595545 (= (head!8376 (tail!6102 lt!1378707)) (head!8376 (tail!6102 lt!1378708))))))

(declare-fun b!3942769 () Bool)

(assert (=> b!3942769 (= e!2439701 e!2439703)))

(declare-fun res!1595547 () Bool)

(assert (=> b!3942769 (=> (not res!1595547) (not e!2439703))))

(assert (=> b!3942769 (= res!1595547 (not (is-Nil!41872 (tail!6102 lt!1378708))))))

(declare-fun b!3942772 () Bool)

(assert (=> b!3942772 (= e!2439702 (>= (size!31404 (tail!6102 lt!1378708)) (size!31404 (tail!6102 lt!1378707))))))

(assert (= (and d!1169372 (not res!1595544)) b!3942769))

(assert (= (and b!3942769 res!1595547) b!3942770))

(assert (= (and b!3942770 res!1595545) b!3942771))

(assert (= (and d!1169372 (not res!1595546)) b!3942772))

(assert (=> b!3942771 m!4511031))

(declare-fun m!4511363 () Bool)

(assert (=> b!3942771 m!4511363))

(assert (=> b!3942771 m!4511073))

(declare-fun m!4511365 () Bool)

(assert (=> b!3942771 m!4511365))

(assert (=> b!3942771 m!4511363))

(assert (=> b!3942771 m!4511365))

(declare-fun m!4511367 () Bool)

(assert (=> b!3942771 m!4511367))

(assert (=> b!3942770 m!4511031))

(declare-fun m!4511369 () Bool)

(assert (=> b!3942770 m!4511369))

(assert (=> b!3942770 m!4511073))

(declare-fun m!4511371 () Bool)

(assert (=> b!3942770 m!4511371))

(assert (=> b!3942772 m!4511073))

(declare-fun m!4511373 () Bool)

(assert (=> b!3942772 m!4511373))

(assert (=> b!3942772 m!4511031))

(declare-fun m!4511375 () Bool)

(assert (=> b!3942772 m!4511375))

(assert (=> b!3942481 d!1169372))

(declare-fun d!1169374 () Bool)

(assert (=> d!1169374 (= (tail!6102 lt!1378707) (t!327079 lt!1378707))))

(assert (=> b!3942481 d!1169374))

(declare-fun d!1169376 () Bool)

(assert (=> d!1169376 (= (tail!6102 lt!1378708) (t!327079 lt!1378708))))

(assert (=> b!3942481 d!1169376))

(declare-fun b!3942776 () Bool)

(declare-fun e!2439705 () Bool)

(declare-fun lt!1378835 () List!41996)

(assert (=> b!3942776 (= e!2439705 (or (not (= (_2!23713 (v!39298 lt!1378706)) Nil!41872)) (= lt!1378835 (t!327079 lt!1378707))))))

(declare-fun b!3942773 () Bool)

(declare-fun e!2439704 () List!41996)

(assert (=> b!3942773 (= e!2439704 (_2!23713 (v!39298 lt!1378706)))))

(declare-fun d!1169378 () Bool)

(assert (=> d!1169378 e!2439705))

(declare-fun res!1595549 () Bool)

(assert (=> d!1169378 (=> (not res!1595549) (not e!2439705))))

(assert (=> d!1169378 (= res!1595549 (= (content!6328 lt!1378835) (set.union (content!6328 (t!327079 lt!1378707)) (content!6328 (_2!23713 (v!39298 lt!1378706))))))))

(assert (=> d!1169378 (= lt!1378835 e!2439704)))

(declare-fun c!684904 () Bool)

(assert (=> d!1169378 (= c!684904 (is-Nil!41872 (t!327079 lt!1378707)))))

(assert (=> d!1169378 (= (++!10847 (t!327079 lt!1378707) (_2!23713 (v!39298 lt!1378706))) lt!1378835)))

(declare-fun b!3942774 () Bool)

(assert (=> b!3942774 (= e!2439704 (Cons!41872 (h!47292 (t!327079 lt!1378707)) (++!10847 (t!327079 (t!327079 lt!1378707)) (_2!23713 (v!39298 lt!1378706)))))))

(declare-fun b!3942775 () Bool)

(declare-fun res!1595548 () Bool)

(assert (=> b!3942775 (=> (not res!1595548) (not e!2439705))))

(assert (=> b!3942775 (= res!1595548 (= (size!31404 lt!1378835) (+ (size!31404 (t!327079 lt!1378707)) (size!31404 (_2!23713 (v!39298 lt!1378706))))))))

(assert (= (and d!1169378 c!684904) b!3942773))

(assert (= (and d!1169378 (not c!684904)) b!3942774))

(assert (= (and d!1169378 res!1595549) b!3942775))

(assert (= (and b!3942775 res!1595548) b!3942776))

(declare-fun m!4511377 () Bool)

(assert (=> d!1169378 m!4511377))

(declare-fun m!4511379 () Bool)

(assert (=> d!1169378 m!4511379))

(assert (=> d!1169378 m!4511055))

(declare-fun m!4511381 () Bool)

(assert (=> b!3942774 m!4511381))

(declare-fun m!4511383 () Bool)

(assert (=> b!3942775 m!4511383))

(declare-fun m!4511385 () Bool)

(assert (=> b!3942775 m!4511385))

(assert (=> b!3942775 m!4511061))

(assert (=> b!3942469 d!1169378))

(declare-fun d!1169380 () Bool)

(declare-fun charsToBigInt!0 (List!41995 Int) Int)

(assert (=> d!1169380 (= (inv!15 (value!207168 (h!47293 prefixTokens!80))) (= (charsToBigInt!0 (text!47874 (value!207168 (h!47293 prefixTokens!80))) 0) (value!207163 (value!207168 (h!47293 prefixTokens!80)))))))

(declare-fun bs!586703 () Bool)

(assert (= bs!586703 d!1169380))

(declare-fun m!4511387 () Bool)

(assert (=> bs!586703 m!4511387))

(assert (=> b!3942545 d!1169380))

(declare-fun d!1169382 () Bool)

(assert (=> d!1169382 (= (isEmpty!24989 lt!1378753) (not (is-Some!8964 lt!1378753)))))

(assert (=> d!1169264 d!1169382))

(declare-fun d!1169384 () Bool)

(declare-fun e!2439707 () Bool)

(assert (=> d!1169384 e!2439707))

(declare-fun res!1595552 () Bool)

(assert (=> d!1169384 (=> res!1595552 e!2439707)))

(declare-fun lt!1378836 () Bool)

(assert (=> d!1169384 (= res!1595552 (not lt!1378836))))

(declare-fun e!2439706 () Bool)

(assert (=> d!1169384 (= lt!1378836 e!2439706)))

(declare-fun res!1595550 () Bool)

(assert (=> d!1169384 (=> res!1595550 e!2439706)))

(assert (=> d!1169384 (= res!1595550 (is-Nil!41872 lt!1378708))))

(assert (=> d!1169384 (= (isPrefix!3634 lt!1378708 lt!1378708) lt!1378836)))

(declare-fun b!3942779 () Bool)

(declare-fun e!2439708 () Bool)

(assert (=> b!3942779 (= e!2439708 (isPrefix!3634 (tail!6102 lt!1378708) (tail!6102 lt!1378708)))))

(declare-fun b!3942778 () Bool)

(declare-fun res!1595551 () Bool)

(assert (=> b!3942778 (=> (not res!1595551) (not e!2439708))))

(assert (=> b!3942778 (= res!1595551 (= (head!8376 lt!1378708) (head!8376 lt!1378708)))))

(declare-fun b!3942777 () Bool)

(assert (=> b!3942777 (= e!2439706 e!2439708)))

(declare-fun res!1595553 () Bool)

(assert (=> b!3942777 (=> (not res!1595553) (not e!2439708))))

(assert (=> b!3942777 (= res!1595553 (not (is-Nil!41872 lt!1378708)))))

(declare-fun b!3942780 () Bool)

(assert (=> b!3942780 (= e!2439707 (>= (size!31404 lt!1378708) (size!31404 lt!1378708)))))

(assert (= (and d!1169384 (not res!1595550)) b!3942777))

(assert (= (and b!3942777 res!1595553) b!3942778))

(assert (= (and b!3942778 res!1595551) b!3942779))

(assert (= (and d!1169384 (not res!1595552)) b!3942780))

(assert (=> b!3942779 m!4511073))

(assert (=> b!3942779 m!4511073))

(assert (=> b!3942779 m!4511073))

(assert (=> b!3942779 m!4511073))

(declare-fun m!4511389 () Bool)

(assert (=> b!3942779 m!4511389))

(assert (=> b!3942778 m!4511081))

(assert (=> b!3942778 m!4511081))

(assert (=> b!3942780 m!4511007))

(assert (=> b!3942780 m!4511007))

(assert (=> d!1169264 d!1169384))

(declare-fun d!1169386 () Bool)

(assert (=> d!1169386 (isPrefix!3634 lt!1378708 lt!1378708)))

(declare-fun lt!1378839 () Unit!60417)

(declare-fun choose!23530 (List!41996 List!41996) Unit!60417)

(assert (=> d!1169386 (= lt!1378839 (choose!23530 lt!1378708 lt!1378708))))

(assert (=> d!1169386 (= (lemmaIsPrefixRefl!2295 lt!1378708 lt!1378708) lt!1378839)))

(declare-fun bs!586704 () Bool)

(assert (= bs!586704 d!1169386))

(assert (=> bs!586704 m!4510989))

(declare-fun m!4511391 () Bool)

(assert (=> bs!586704 m!4511391))

(assert (=> d!1169264 d!1169386))

(declare-fun d!1169388 () Bool)

(assert (=> d!1169388 true))

(declare-fun lt!1378842 () Bool)

(declare-fun lambda!126670 () Int)

(declare-fun forall!8320 (List!41998 Int) Bool)

(assert (=> d!1169388 (= lt!1378842 (forall!8320 rules!2768 lambda!126670))))

(declare-fun e!2439714 () Bool)

(assert (=> d!1169388 (= lt!1378842 e!2439714)))

(declare-fun res!1595559 () Bool)

(assert (=> d!1169388 (=> res!1595559 e!2439714)))

(assert (=> d!1169388 (= res!1595559 (not (is-Cons!41874 rules!2768)))))

(assert (=> d!1169388 (= (rulesValidInductive!2365 thiss!20629 rules!2768) lt!1378842)))

(declare-fun b!3942785 () Bool)

(declare-fun e!2439713 () Bool)

(assert (=> b!3942785 (= e!2439714 e!2439713)))

(declare-fun res!1595558 () Bool)

(assert (=> b!3942785 (=> (not res!1595558) (not e!2439713))))

(assert (=> b!3942785 (= res!1595558 (ruleValid!2487 thiss!20629 (h!47294 rules!2768)))))

(declare-fun b!3942786 () Bool)

(assert (=> b!3942786 (= e!2439713 (rulesValidInductive!2365 thiss!20629 (t!327081 rules!2768)))))

(assert (= (and d!1169388 (not res!1595559)) b!3942785))

(assert (= (and b!3942785 res!1595558) b!3942786))

(declare-fun m!4511393 () Bool)

(assert (=> d!1169388 m!4511393))

(declare-fun m!4511395 () Bool)

(assert (=> b!3942785 m!4511395))

(declare-fun m!4511397 () Bool)

(assert (=> b!3942786 m!4511397))

(assert (=> d!1169264 d!1169388))

(declare-fun b!3942792 () Bool)

(declare-fun e!2439716 () Bool)

(declare-fun lt!1378843 () List!41996)

(assert (=> b!3942792 (= e!2439716 (or (not (= (_2!23713 (get!13832 lt!1378753)) Nil!41872)) (= lt!1378843 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun b!3942789 () Bool)

(declare-fun e!2439715 () List!41996)

(assert (=> b!3942789 (= e!2439715 (_2!23713 (get!13832 lt!1378753)))))

(declare-fun d!1169390 () Bool)

(assert (=> d!1169390 e!2439716))

(declare-fun res!1595561 () Bool)

(assert (=> d!1169390 (=> (not res!1595561) (not e!2439716))))

(assert (=> d!1169390 (= res!1595561 (= (content!6328 lt!1378843) (set.union (content!6328 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (content!6328 (_2!23713 (get!13832 lt!1378753))))))))

(assert (=> d!1169390 (= lt!1378843 e!2439715)))

(declare-fun c!684905 () Bool)

(assert (=> d!1169390 (= c!684905 (is-Nil!41872 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))

(assert (=> d!1169390 (= (++!10847 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))) (_2!23713 (get!13832 lt!1378753))) lt!1378843)))

(declare-fun b!3942790 () Bool)

(assert (=> b!3942790 (= e!2439715 (Cons!41872 (h!47292 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (++!10847 (t!327079 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (_2!23713 (get!13832 lt!1378753)))))))

(declare-fun b!3942791 () Bool)

(declare-fun res!1595560 () Bool)

(assert (=> b!3942791 (=> (not res!1595560) (not e!2439716))))

(assert (=> b!3942791 (= res!1595560 (= (size!31404 lt!1378843) (+ (size!31404 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (size!31404 (_2!23713 (get!13832 lt!1378753))))))))

(assert (= (and d!1169390 c!684905) b!3942789))

(assert (= (and d!1169390 (not c!684905)) b!3942790))

(assert (= (and d!1169390 res!1595561) b!3942791))

(assert (= (and b!3942791 res!1595560) b!3942792))

(declare-fun m!4511399 () Bool)

(assert (=> d!1169390 m!4511399))

(assert (=> d!1169390 m!4511001))

(declare-fun m!4511401 () Bool)

(assert (=> d!1169390 m!4511401))

(declare-fun m!4511403 () Bool)

(assert (=> d!1169390 m!4511403))

(declare-fun m!4511405 () Bool)

(assert (=> b!3942790 m!4511405))

(declare-fun m!4511407 () Bool)

(assert (=> b!3942791 m!4511407))

(assert (=> b!3942791 m!4511001))

(declare-fun m!4511409 () Bool)

(assert (=> b!3942791 m!4511409))

(assert (=> b!3942791 m!4511005))

(assert (=> b!3942434 d!1169390))

(declare-fun d!1169392 () Bool)

(assert (=> d!1169392 (= (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))) (list!15551 (c!684842 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun bs!586705 () Bool)

(assert (= bs!586705 d!1169392))

(declare-fun m!4511411 () Bool)

(assert (=> bs!586705 m!4511411))

(assert (=> b!3942434 d!1169392))

(declare-fun d!1169394 () Bool)

(declare-fun lt!1378844 () BalanceConc!25106)

(assert (=> d!1169394 (= (list!15549 lt!1378844) (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753))))))

(assert (=> d!1169394 (= lt!1378844 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))) (value!207168 (_1!23713 (get!13832 lt!1378753)))))))

(assert (=> d!1169394 (= (charsOf!4363 (_1!23713 (get!13832 lt!1378753))) lt!1378844)))

(declare-fun b_lambda!115307 () Bool)

(assert (=> (not b_lambda!115307) (not d!1169394)))

(declare-fun tb!236429 () Bool)

(declare-fun t!327161 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327161) tb!236429))

(declare-fun b!3942793 () Bool)

(declare-fun e!2439717 () Bool)

(declare-fun tp!1200111 () Bool)

(assert (=> b!3942793 (= e!2439717 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))) (value!207168 (_1!23713 (get!13832 lt!1378753)))))) tp!1200111))))

(declare-fun result!286414 () Bool)

(assert (=> tb!236429 (= result!286414 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))) (value!207168 (_1!23713 (get!13832 lt!1378753))))) e!2439717))))

(assert (= tb!236429 b!3942793))

(declare-fun m!4511413 () Bool)

(assert (=> b!3942793 m!4511413))

(declare-fun m!4511415 () Bool)

(assert (=> tb!236429 m!4511415))

(assert (=> d!1169394 t!327161))

(declare-fun b_and!301415 () Bool)

(assert (= b_and!301375 (and (=> t!327161 result!286414) b_and!301415)))

(declare-fun tb!236431 () Bool)

(declare-fun t!327163 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327163) tb!236431))

(declare-fun result!286416 () Bool)

(assert (= result!286416 result!286414))

(assert (=> d!1169394 t!327163))

(declare-fun b_and!301417 () Bool)

(assert (= b_and!301389 (and (=> t!327163 result!286416) b_and!301417)))

(declare-fun t!327165 () Bool)

(declare-fun tb!236433 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327165) tb!236433))

(declare-fun result!286418 () Bool)

(assert (= result!286418 result!286414))

(assert (=> d!1169394 t!327165))

(declare-fun b_and!301419 () Bool)

(assert (= b_and!301373 (and (=> t!327165 result!286418) b_and!301419)))

(declare-fun tb!236435 () Bool)

(declare-fun t!327167 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327167) tb!236435))

(declare-fun result!286420 () Bool)

(assert (= result!286420 result!286414))

(assert (=> d!1169394 t!327167))

(declare-fun b_and!301421 () Bool)

(assert (= b_and!301377 (and (=> t!327167 result!286420) b_and!301421)))

(declare-fun tb!236437 () Bool)

(declare-fun t!327169 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327169) tb!236437))

(declare-fun result!286422 () Bool)

(assert (= result!286422 result!286414))

(assert (=> d!1169394 t!327169))

(declare-fun b_and!301423 () Bool)

(assert (= b_and!301381 (and (=> t!327169 result!286422) b_and!301423)))

(declare-fun t!327171 () Bool)

(declare-fun tb!236439 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327171) tb!236439))

(declare-fun result!286424 () Bool)

(assert (= result!286424 result!286414))

(assert (=> d!1169394 t!327171))

(declare-fun b_and!301425 () Bool)

(assert (= b_and!301385 (and (=> t!327171 result!286424) b_and!301425)))

(declare-fun m!4511417 () Bool)

(assert (=> d!1169394 m!4511417))

(declare-fun m!4511419 () Bool)

(assert (=> d!1169394 m!4511419))

(assert (=> b!3942434 d!1169394))

(declare-fun d!1169396 () Bool)

(assert (=> d!1169396 (= (get!13832 lt!1378753) (v!39298 lt!1378753))))

(assert (=> b!3942434 d!1169396))

(declare-fun b!3942795 () Bool)

(declare-fun e!2439719 () List!41997)

(assert (=> b!3942795 (= e!2439719 (Cons!41873 (h!47293 (t!327080 prefixTokens!80)) (++!10848 (t!327080 (t!327080 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3942797 () Bool)

(declare-fun e!2439718 () Bool)

(declare-fun lt!1378845 () List!41997)

(assert (=> b!3942797 (= e!2439718 (or (not (= suffixTokens!72 Nil!41873)) (= lt!1378845 (t!327080 prefixTokens!80))))))

(declare-fun d!1169398 () Bool)

(assert (=> d!1169398 e!2439718))

(declare-fun res!1595562 () Bool)

(assert (=> d!1169398 (=> (not res!1595562) (not e!2439718))))

(assert (=> d!1169398 (= res!1595562 (= (content!6329 lt!1378845) (set.union (content!6329 (t!327080 prefixTokens!80)) (content!6329 suffixTokens!72))))))

(assert (=> d!1169398 (= lt!1378845 e!2439719)))

(declare-fun c!684906 () Bool)

(assert (=> d!1169398 (= c!684906 (is-Nil!41873 (t!327080 prefixTokens!80)))))

(assert (=> d!1169398 (= (++!10848 (t!327080 prefixTokens!80) suffixTokens!72) lt!1378845)))

(declare-fun b!3942794 () Bool)

(assert (=> b!3942794 (= e!2439719 suffixTokens!72)))

(declare-fun b!3942796 () Bool)

(declare-fun res!1595563 () Bool)

(assert (=> b!3942796 (=> (not res!1595563) (not e!2439718))))

(assert (=> b!3942796 (= res!1595563 (= (size!31405 lt!1378845) (+ (size!31405 (t!327080 prefixTokens!80)) (size!31405 suffixTokens!72))))))

(assert (= (and d!1169398 c!684906) b!3942794))

(assert (= (and d!1169398 (not c!684906)) b!3942795))

(assert (= (and d!1169398 res!1595562) b!3942796))

(assert (= (and b!3942796 res!1595563) b!3942797))

(declare-fun m!4511421 () Bool)

(assert (=> b!3942795 m!4511421))

(declare-fun m!4511423 () Bool)

(assert (=> d!1169398 m!4511423))

(declare-fun m!4511425 () Bool)

(assert (=> d!1169398 m!4511425))

(assert (=> d!1169398 m!4511111))

(declare-fun m!4511427 () Bool)

(assert (=> b!3942796 m!4511427))

(declare-fun m!4511429 () Bool)

(assert (=> b!3942796 m!4511429))

(assert (=> b!3942796 m!4511117))

(assert (=> b!3942532 d!1169398))

(declare-fun d!1169400 () Bool)

(assert (=> d!1169400 (= (isEmpty!24985 (originalCharacters!7145 (h!47293 suffixTokens!72))) (is-Nil!41872 (originalCharacters!7145 (h!47293 suffixTokens!72))))))

(assert (=> d!1169312 d!1169400))

(declare-fun d!1169402 () Bool)

(declare-fun lt!1378848 () Int)

(assert (=> d!1169402 (>= lt!1378848 0)))

(declare-fun e!2439722 () Int)

(assert (=> d!1169402 (= lt!1378848 e!2439722)))

(declare-fun c!684909 () Bool)

(assert (=> d!1169402 (= c!684909 (is-Nil!41872 (originalCharacters!7145 (_1!23713 (v!39298 lt!1378706)))))))

(assert (=> d!1169402 (= (size!31404 (originalCharacters!7145 (_1!23713 (v!39298 lt!1378706)))) lt!1378848)))

(declare-fun b!3942802 () Bool)

(assert (=> b!3942802 (= e!2439722 0)))

(declare-fun b!3942803 () Bool)

(assert (=> b!3942803 (= e!2439722 (+ 1 (size!31404 (t!327079 (originalCharacters!7145 (_1!23713 (v!39298 lt!1378706)))))))))

(assert (= (and d!1169402 c!684909) b!3942802))

(assert (= (and d!1169402 (not c!684909)) b!3942803))

(declare-fun m!4511431 () Bool)

(assert (=> b!3942803 m!4511431))

(assert (=> d!1169290 d!1169402))

(declare-fun d!1169404 () Bool)

(assert (=> d!1169404 true))

(declare-fun lambda!126673 () Int)

(declare-fun order!22337 () Int)

(declare-fun order!22335 () Int)

(declare-fun dynLambda!17932 (Int Int) Int)

(declare-fun dynLambda!17933 (Int Int) Int)

(assert (=> d!1169404 (< (dynLambda!17932 order!22335 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (dynLambda!17933 order!22337 lambda!126673))))

(assert (=> d!1169404 true))

(declare-fun order!22339 () Int)

(declare-fun dynLambda!17934 (Int Int) Int)

(assert (=> d!1169404 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (dynLambda!17933 order!22337 lambda!126673))))

(declare-fun Forall!1453 (Int) Bool)

(assert (=> d!1169404 (= (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (Forall!1453 lambda!126673))))

(declare-fun bs!586706 () Bool)

(assert (= bs!586706 d!1169404))

(declare-fun m!4511433 () Bool)

(assert (=> bs!586706 m!4511433))

(assert (=> d!1169302 d!1169404))

(declare-fun d!1169406 () Bool)

(declare-fun lt!1378851 () Bool)

(declare-fun content!6332 (List!41998) (Set Rule!12890))

(assert (=> d!1169406 (= lt!1378851 (set.member (rule!9505 (_1!23713 (get!13832 lt!1378753))) (content!6332 rules!2768)))))

(declare-fun e!2439728 () Bool)

(assert (=> d!1169406 (= lt!1378851 e!2439728)))

(declare-fun res!1595569 () Bool)

(assert (=> d!1169406 (=> (not res!1595569) (not e!2439728))))

(assert (=> d!1169406 (= res!1595569 (is-Cons!41874 rules!2768))))

(assert (=> d!1169406 (= (contains!8384 rules!2768 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) lt!1378851)))

(declare-fun b!3942812 () Bool)

(declare-fun e!2439727 () Bool)

(assert (=> b!3942812 (= e!2439728 e!2439727)))

(declare-fun res!1595568 () Bool)

(assert (=> b!3942812 (=> res!1595568 e!2439727)))

(assert (=> b!3942812 (= res!1595568 (= (h!47294 rules!2768) (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))

(declare-fun b!3942813 () Bool)

(assert (=> b!3942813 (= e!2439727 (contains!8384 (t!327081 rules!2768) (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))

(assert (= (and d!1169406 res!1595569) b!3942812))

(assert (= (and b!3942812 (not res!1595568)) b!3942813))

(declare-fun m!4511435 () Bool)

(assert (=> d!1169406 m!4511435))

(declare-fun m!4511437 () Bool)

(assert (=> d!1169406 m!4511437))

(declare-fun m!4511439 () Bool)

(assert (=> b!3942813 m!4511439))

(assert (=> b!3942436 d!1169406))

(assert (=> b!3942436 d!1169396))

(declare-fun b!3942832 () Bool)

(declare-fun e!2439740 () Option!8965)

(declare-datatypes ((tuple2!41166 0))(
  ( (tuple2!41167 (_1!23717 List!41996) (_2!23717 List!41996)) )
))
(declare-fun lt!1378862 () tuple2!41166)

(declare-fun size!31408 (BalanceConc!25106) Int)

(assert (=> b!3942832 (= e!2439740 (Some!8964 (tuple2!41159 (Token!12229 (apply!9778 (transformation!6545 (h!47294 rules!2768)) (seqFromList!4806 (_1!23717 lt!1378862))) (h!47294 rules!2768) (size!31408 (seqFromList!4806 (_1!23717 lt!1378862))) (_1!23717 lt!1378862)) (_2!23717 lt!1378862))))))

(declare-fun lt!1378863 () Unit!60417)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1248 (Regex!11450 List!41996) Unit!60417)

(assert (=> b!3942832 (= lt!1378863 (longestMatchIsAcceptedByMatchOrIsEmpty!1248 (regex!6545 (h!47294 rules!2768)) lt!1378708))))

(declare-fun res!1595592 () Bool)

(declare-fun findLongestMatchInner!1275 (Regex!11450 List!41996 Int List!41996 List!41996 Int) tuple2!41166)

(assert (=> b!3942832 (= res!1595592 (isEmpty!24985 (_1!23717 (findLongestMatchInner!1275 (regex!6545 (h!47294 rules!2768)) Nil!41872 (size!31404 Nil!41872) lt!1378708 lt!1378708 (size!31404 lt!1378708)))))))

(declare-fun e!2439739 () Bool)

(assert (=> b!3942832 (=> res!1595592 e!2439739)))

(assert (=> b!3942832 e!2439739))

(declare-fun lt!1378866 () Unit!60417)

(assert (=> b!3942832 (= lt!1378866 lt!1378863)))

(declare-fun lt!1378865 () Unit!60417)

(declare-fun lemmaSemiInverse!1781 (TokenValueInjection!12978 BalanceConc!25106) Unit!60417)

(assert (=> b!3942832 (= lt!1378865 (lemmaSemiInverse!1781 (transformation!6545 (h!47294 rules!2768)) (seqFromList!4806 (_1!23717 lt!1378862))))))

(declare-fun b!3942833 () Bool)

(assert (=> b!3942833 (= e!2439740 None!8964)))

(declare-fun b!3942834 () Bool)

(declare-fun res!1595591 () Bool)

(declare-fun e!2439738 () Bool)

(assert (=> b!3942834 (=> (not res!1595591) (not e!2439738))))

(declare-fun lt!1378864 () Option!8965)

(assert (=> b!3942834 (= res!1595591 (< (size!31404 (_2!23713 (get!13832 lt!1378864))) (size!31404 lt!1378708)))))

(declare-fun d!1169408 () Bool)

(declare-fun e!2439737 () Bool)

(assert (=> d!1169408 e!2439737))

(declare-fun res!1595589 () Bool)

(assert (=> d!1169408 (=> res!1595589 e!2439737)))

(assert (=> d!1169408 (= res!1595589 (isEmpty!24989 lt!1378864))))

(assert (=> d!1169408 (= lt!1378864 e!2439740)))

(declare-fun c!684912 () Bool)

(assert (=> d!1169408 (= c!684912 (isEmpty!24985 (_1!23717 lt!1378862)))))

(declare-fun findLongestMatch!1188 (Regex!11450 List!41996) tuple2!41166)

(assert (=> d!1169408 (= lt!1378862 (findLongestMatch!1188 (regex!6545 (h!47294 rules!2768)) lt!1378708))))

(assert (=> d!1169408 (ruleValid!2487 thiss!20629 (h!47294 rules!2768))))

(assert (=> d!1169408 (= (maxPrefixOneRule!2502 thiss!20629 (h!47294 rules!2768) lt!1378708) lt!1378864)))

(declare-fun b!3942835 () Bool)

(declare-fun res!1595594 () Bool)

(assert (=> b!3942835 (=> (not res!1595594) (not e!2439738))))

(assert (=> b!3942835 (= res!1595594 (= (value!207168 (_1!23713 (get!13832 lt!1378864))) (apply!9778 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378864)))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378864)))))))))

(declare-fun b!3942836 () Bool)

(declare-fun res!1595590 () Bool)

(assert (=> b!3942836 (=> (not res!1595590) (not e!2439738))))

(assert (=> b!3942836 (= res!1595590 (= (rule!9505 (_1!23713 (get!13832 lt!1378864))) (h!47294 rules!2768)))))

(declare-fun b!3942837 () Bool)

(assert (=> b!3942837 (= e!2439737 e!2439738)))

(declare-fun res!1595588 () Bool)

(assert (=> b!3942837 (=> (not res!1595588) (not e!2439738))))

(assert (=> b!3942837 (= res!1595588 (matchR!5497 (regex!6545 (h!47294 rules!2768)) (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378864))))))))

(declare-fun b!3942838 () Bool)

(assert (=> b!3942838 (= e!2439739 (matchR!5497 (regex!6545 (h!47294 rules!2768)) (_1!23717 (findLongestMatchInner!1275 (regex!6545 (h!47294 rules!2768)) Nil!41872 (size!31404 Nil!41872) lt!1378708 lt!1378708 (size!31404 lt!1378708)))))))

(declare-fun b!3942839 () Bool)

(declare-fun res!1595593 () Bool)

(assert (=> b!3942839 (=> (not res!1595593) (not e!2439738))))

(assert (=> b!3942839 (= res!1595593 (= (++!10847 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378864)))) (_2!23713 (get!13832 lt!1378864))) lt!1378708))))

(declare-fun b!3942840 () Bool)

(assert (=> b!3942840 (= e!2439738 (= (size!31402 (_1!23713 (get!13832 lt!1378864))) (size!31404 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378864))))))))

(assert (= (and d!1169408 c!684912) b!3942833))

(assert (= (and d!1169408 (not c!684912)) b!3942832))

(assert (= (and b!3942832 (not res!1595592)) b!3942838))

(assert (= (and d!1169408 (not res!1595589)) b!3942837))

(assert (= (and b!3942837 res!1595588) b!3942839))

(assert (= (and b!3942839 res!1595593) b!3942834))

(assert (= (and b!3942834 res!1595591) b!3942836))

(assert (= (and b!3942836 res!1595590) b!3942835))

(assert (= (and b!3942835 res!1595594) b!3942840))

(declare-fun m!4511441 () Bool)

(assert (=> b!3942837 m!4511441))

(declare-fun m!4511443 () Bool)

(assert (=> b!3942837 m!4511443))

(assert (=> b!3942837 m!4511443))

(declare-fun m!4511445 () Bool)

(assert (=> b!3942837 m!4511445))

(assert (=> b!3942837 m!4511445))

(declare-fun m!4511447 () Bool)

(assert (=> b!3942837 m!4511447))

(assert (=> b!3942840 m!4511441))

(declare-fun m!4511449 () Bool)

(assert (=> b!3942840 m!4511449))

(assert (=> b!3942836 m!4511441))

(declare-fun m!4511451 () Bool)

(assert (=> d!1169408 m!4511451))

(declare-fun m!4511453 () Bool)

(assert (=> d!1169408 m!4511453))

(declare-fun m!4511455 () Bool)

(assert (=> d!1169408 m!4511455))

(assert (=> d!1169408 m!4511395))

(assert (=> b!3942839 m!4511441))

(assert (=> b!3942839 m!4511443))

(assert (=> b!3942839 m!4511443))

(assert (=> b!3942839 m!4511445))

(assert (=> b!3942839 m!4511445))

(declare-fun m!4511457 () Bool)

(assert (=> b!3942839 m!4511457))

(assert (=> b!3942834 m!4511441))

(declare-fun m!4511459 () Bool)

(assert (=> b!3942834 m!4511459))

(assert (=> b!3942834 m!4511007))

(declare-fun m!4511461 () Bool)

(assert (=> b!3942832 m!4511461))

(assert (=> b!3942832 m!4511007))

(declare-fun m!4511463 () Bool)

(assert (=> b!3942832 m!4511463))

(declare-fun m!4511465 () Bool)

(assert (=> b!3942832 m!4511465))

(assert (=> b!3942832 m!4511461))

(declare-fun m!4511467 () Bool)

(assert (=> b!3942832 m!4511467))

(declare-fun m!4511469 () Bool)

(assert (=> b!3942832 m!4511469))

(assert (=> b!3942832 m!4511007))

(assert (=> b!3942832 m!4511467))

(declare-fun m!4511471 () Bool)

(assert (=> b!3942832 m!4511471))

(assert (=> b!3942832 m!4511467))

(declare-fun m!4511473 () Bool)

(assert (=> b!3942832 m!4511473))

(assert (=> b!3942832 m!4511467))

(declare-fun m!4511475 () Bool)

(assert (=> b!3942832 m!4511475))

(assert (=> b!3942835 m!4511441))

(declare-fun m!4511477 () Bool)

(assert (=> b!3942835 m!4511477))

(assert (=> b!3942835 m!4511477))

(declare-fun m!4511479 () Bool)

(assert (=> b!3942835 m!4511479))

(assert (=> b!3942838 m!4511461))

(assert (=> b!3942838 m!4511007))

(assert (=> b!3942838 m!4511461))

(assert (=> b!3942838 m!4511007))

(assert (=> b!3942838 m!4511463))

(declare-fun m!4511481 () Bool)

(assert (=> b!3942838 m!4511481))

(assert (=> bm!285066 d!1169408))

(declare-fun d!1169410 () Bool)

(assert (=> d!1169410 (= (inv!15 (value!207168 (h!47293 suffixTokens!72))) (= (charsToBigInt!0 (text!47874 (value!207168 (h!47293 suffixTokens!72))) 0) (value!207163 (value!207168 (h!47293 suffixTokens!72)))))))

(declare-fun bs!586707 () Bool)

(assert (= bs!586707 d!1169410))

(declare-fun m!4511483 () Bool)

(assert (=> bs!586707 m!4511483))

(assert (=> b!3942498 d!1169410))

(assert (=> d!1169280 d!1169274))

(declare-fun d!1169412 () Bool)

(assert (=> d!1169412 (ruleValid!2487 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169412 true))

(declare-fun _$65!1389 () Unit!60417)

(assert (=> d!1169412 (= (choose!23526 thiss!20629 (rule!9505 (_1!23713 (v!39298 lt!1378706))) rules!2768) _$65!1389)))

(declare-fun bs!586708 () Bool)

(assert (= bs!586708 d!1169412))

(assert (=> bs!586708 m!4510853))

(assert (=> d!1169280 d!1169412))

(declare-fun d!1169414 () Bool)

(declare-fun lt!1378867 () Bool)

(assert (=> d!1169414 (= lt!1378867 (set.member (rule!9505 (_1!23713 (v!39298 lt!1378706))) (content!6332 rules!2768)))))

(declare-fun e!2439742 () Bool)

(assert (=> d!1169414 (= lt!1378867 e!2439742)))

(declare-fun res!1595596 () Bool)

(assert (=> d!1169414 (=> (not res!1595596) (not e!2439742))))

(assert (=> d!1169414 (= res!1595596 (is-Cons!41874 rules!2768))))

(assert (=> d!1169414 (= (contains!8384 rules!2768 (rule!9505 (_1!23713 (v!39298 lt!1378706)))) lt!1378867)))

(declare-fun b!3942841 () Bool)

(declare-fun e!2439741 () Bool)

(assert (=> b!3942841 (= e!2439742 e!2439741)))

(declare-fun res!1595595 () Bool)

(assert (=> b!3942841 (=> res!1595595 e!2439741)))

(assert (=> b!3942841 (= res!1595595 (= (h!47294 rules!2768) (rule!9505 (_1!23713 (v!39298 lt!1378706)))))))

(declare-fun b!3942842 () Bool)

(assert (=> b!3942842 (= e!2439741 (contains!8384 (t!327081 rules!2768) (rule!9505 (_1!23713 (v!39298 lt!1378706)))))))

(assert (= (and d!1169414 res!1595596) b!3942841))

(assert (= (and b!3942841 (not res!1595595)) b!3942842))

(assert (=> d!1169414 m!4511435))

(declare-fun m!4511485 () Bool)

(assert (=> d!1169414 m!4511485))

(declare-fun m!4511487 () Bool)

(assert (=> b!3942842 m!4511487))

(assert (=> d!1169280 d!1169414))

(declare-fun bs!586709 () Bool)

(declare-fun d!1169416 () Bool)

(assert (= bs!586709 (and d!1169416 d!1169404)))

(declare-fun lambda!126674 () Int)

(assert (=> bs!586709 (= (and (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (= (toValue!9009 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (= lambda!126674 lambda!126673))))

(assert (=> d!1169416 true))

(assert (=> d!1169416 (< (dynLambda!17932 order!22335 (toChars!8868 (transformation!6545 (h!47294 rules!2768)))) (dynLambda!17933 order!22337 lambda!126674))))

(assert (=> d!1169416 true))

(assert (=> d!1169416 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (h!47294 rules!2768)))) (dynLambda!17933 order!22337 lambda!126674))))

(assert (=> d!1169416 (= (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (h!47294 rules!2768)))) (Forall!1453 lambda!126674))))

(declare-fun bs!586710 () Bool)

(assert (= bs!586710 d!1169416))

(declare-fun m!4511489 () Bool)

(assert (=> bs!586710 m!4511489))

(assert (=> d!1169272 d!1169416))

(declare-fun d!1169418 () Bool)

(assert (=> d!1169418 (= (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))) (list!15551 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(declare-fun bs!586711 () Bool)

(assert (= bs!586711 d!1169418))

(declare-fun m!4511491 () Bool)

(assert (=> bs!586711 m!4511491))

(assert (=> b!3942539 d!1169418))

(declare-fun d!1169420 () Bool)

(declare-fun lt!1378868 () Int)

(assert (=> d!1169420 (>= lt!1378868 0)))

(declare-fun e!2439743 () Int)

(assert (=> d!1169420 (= lt!1378868 e!2439743)))

(declare-fun c!684913 () Bool)

(assert (=> d!1169420 (= c!684913 (is-Nil!41872 lt!1378793))))

(assert (=> d!1169420 (= (size!31404 lt!1378793) lt!1378868)))

(declare-fun b!3942843 () Bool)

(assert (=> b!3942843 (= e!2439743 0)))

(declare-fun b!3942844 () Bool)

(assert (=> b!3942844 (= e!2439743 (+ 1 (size!31404 (t!327079 lt!1378793))))))

(assert (= (and d!1169420 c!684913) b!3942843))

(assert (= (and d!1169420 (not c!684913)) b!3942844))

(declare-fun m!4511493 () Bool)

(assert (=> b!3942844 m!4511493))

(assert (=> b!3942537 d!1169420))

(declare-fun d!1169422 () Bool)

(declare-fun lt!1378869 () Int)

(assert (=> d!1169422 (>= lt!1378869 0)))

(declare-fun e!2439744 () Int)

(assert (=> d!1169422 (= lt!1378869 e!2439744)))

(declare-fun c!684914 () Bool)

(assert (=> d!1169422 (= c!684914 (is-Nil!41872 prefix!426))))

(assert (=> d!1169422 (= (size!31404 prefix!426) lt!1378869)))

(declare-fun b!3942845 () Bool)

(assert (=> b!3942845 (= e!2439744 0)))

(declare-fun b!3942846 () Bool)

(assert (=> b!3942846 (= e!2439744 (+ 1 (size!31404 (t!327079 prefix!426))))))

(assert (= (and d!1169422 c!684914) b!3942845))

(assert (= (and d!1169422 (not c!684914)) b!3942846))

(declare-fun m!4511495 () Bool)

(assert (=> b!3942846 m!4511495))

(assert (=> b!3942537 d!1169422))

(declare-fun d!1169424 () Bool)

(declare-fun lt!1378870 () Int)

(assert (=> d!1169424 (>= lt!1378870 0)))

(declare-fun e!2439745 () Int)

(assert (=> d!1169424 (= lt!1378870 e!2439745)))

(declare-fun c!684915 () Bool)

(assert (=> d!1169424 (= c!684915 (is-Nil!41872 suffix!1176))))

(assert (=> d!1169424 (= (size!31404 suffix!1176) lt!1378870)))

(declare-fun b!3942847 () Bool)

(assert (=> b!3942847 (= e!2439745 0)))

(declare-fun b!3942848 () Bool)

(assert (=> b!3942848 (= e!2439745 (+ 1 (size!31404 (t!327079 suffix!1176))))))

(assert (= (and d!1169424 c!684915) b!3942847))

(assert (= (and d!1169424 (not c!684915)) b!3942848))

(declare-fun m!4511497 () Bool)

(assert (=> b!3942848 m!4511497))

(assert (=> b!3942537 d!1169424))

(declare-fun d!1169426 () Bool)

(assert (=> d!1169426 (= (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))) (list!15551 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(declare-fun bs!586712 () Bool)

(assert (= bs!586712 d!1169426))

(declare-fun m!4511499 () Bool)

(assert (=> bs!586712 m!4511499))

(assert (=> b!3942361 d!1169426))

(declare-fun d!1169428 () Bool)

(assert (=> d!1169428 (= (inv!56079 (tag!7405 (h!47294 (t!327081 rules!2768)))) (= (mod (str.len (value!207167 (tag!7405 (h!47294 (t!327081 rules!2768))))) 2) 0))))

(assert (=> b!3942604 d!1169428))

(declare-fun d!1169430 () Bool)

(declare-fun res!1595597 () Bool)

(declare-fun e!2439746 () Bool)

(assert (=> d!1169430 (=> (not res!1595597) (not e!2439746))))

(assert (=> d!1169430 (= res!1595597 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toValue!9009 (transformation!6545 (h!47294 (t!327081 rules!2768))))))))

(assert (=> d!1169430 (= (inv!56083 (transformation!6545 (h!47294 (t!327081 rules!2768)))) e!2439746)))

(declare-fun b!3942849 () Bool)

(assert (=> b!3942849 (= e!2439746 (equivClasses!2717 (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toValue!9009 (transformation!6545 (h!47294 (t!327081 rules!2768))))))))

(assert (= (and d!1169430 res!1595597) b!3942849))

(declare-fun m!4511501 () Bool)

(assert (=> d!1169430 m!4511501))

(declare-fun m!4511503 () Bool)

(assert (=> b!3942849 m!4511503))

(assert (=> b!3942604 d!1169430))

(declare-fun d!1169432 () Bool)

(declare-fun lt!1378871 () Int)

(assert (=> d!1169432 (>= lt!1378871 0)))

(declare-fun e!2439747 () Int)

(assert (=> d!1169432 (= lt!1378871 e!2439747)))

(declare-fun c!684916 () Bool)

(assert (=> d!1169432 (= c!684916 (is-Nil!41872 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))

(assert (=> d!1169432 (= (size!31404 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))) lt!1378871)))

(declare-fun b!3942850 () Bool)

(assert (=> b!3942850 (= e!2439747 0)))

(declare-fun b!3942851 () Bool)

(assert (=> b!3942851 (= e!2439747 (+ 1 (size!31404 (t!327079 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))))

(assert (= (and d!1169432 c!684916) b!3942850))

(assert (= (and d!1169432 (not c!684916)) b!3942851))

(declare-fun m!4511505 () Bool)

(assert (=> b!3942851 m!4511505))

(assert (=> b!3942459 d!1169432))

(declare-fun d!1169434 () Bool)

(declare-fun lt!1378872 () Int)

(assert (=> d!1169434 (>= lt!1378872 0)))

(declare-fun e!2439748 () Int)

(assert (=> d!1169434 (= lt!1378872 e!2439748)))

(declare-fun c!684917 () Bool)

(assert (=> d!1169434 (= c!684917 (is-Nil!41872 lt!1378707))))

(assert (=> d!1169434 (= (size!31404 lt!1378707) lt!1378872)))

(declare-fun b!3942852 () Bool)

(assert (=> b!3942852 (= e!2439748 0)))

(declare-fun b!3942853 () Bool)

(assert (=> b!3942853 (= e!2439748 (+ 1 (size!31404 (t!327079 lt!1378707))))))

(assert (= (and d!1169434 c!684917) b!3942852))

(assert (= (and d!1169434 (not c!684917)) b!3942853))

(assert (=> b!3942853 m!4511385))

(assert (=> b!3942459 d!1169434))

(declare-fun d!1169436 () Bool)

(declare-fun res!1595598 () Bool)

(declare-fun e!2439749 () Bool)

(assert (=> d!1169436 (=> (not res!1595598) (not e!2439749))))

(assert (=> d!1169436 (= res!1595598 (not (isEmpty!24985 (originalCharacters!7145 (h!47293 (t!327080 prefixTokens!80))))))))

(assert (=> d!1169436 (= (inv!56082 (h!47293 (t!327080 prefixTokens!80))) e!2439749)))

(declare-fun b!3942854 () Bool)

(declare-fun res!1595599 () Bool)

(assert (=> b!3942854 (=> (not res!1595599) (not e!2439749))))

(assert (=> b!3942854 (= res!1595599 (= (originalCharacters!7145 (h!47293 (t!327080 prefixTokens!80))) (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))))

(declare-fun b!3942855 () Bool)

(assert (=> b!3942855 (= e!2439749 (= (size!31402 (h!47293 (t!327080 prefixTokens!80))) (size!31404 (originalCharacters!7145 (h!47293 (t!327080 prefixTokens!80))))))))

(assert (= (and d!1169436 res!1595598) b!3942854))

(assert (= (and b!3942854 res!1595599) b!3942855))

(declare-fun b_lambda!115309 () Bool)

(assert (=> (not b_lambda!115309) (not b!3942854)))

(declare-fun tb!236441 () Bool)

(declare-fun t!327173 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327173) tb!236441))

(declare-fun b!3942856 () Bool)

(declare-fun e!2439750 () Bool)

(declare-fun tp!1200112 () Bool)

(assert (=> b!3942856 (= e!2439750 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (value!207168 (h!47293 (t!327080 prefixTokens!80)))))) tp!1200112))))

(declare-fun result!286426 () Bool)

(assert (=> tb!236441 (= result!286426 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (value!207168 (h!47293 (t!327080 prefixTokens!80))))) e!2439750))))

(assert (= tb!236441 b!3942856))

(declare-fun m!4511507 () Bool)

(assert (=> b!3942856 m!4511507))

(declare-fun m!4511509 () Bool)

(assert (=> tb!236441 m!4511509))

(assert (=> b!3942854 t!327173))

(declare-fun b_and!301427 () Bool)

(assert (= b_and!301425 (and (=> t!327173 result!286426) b_and!301427)))

(declare-fun t!327175 () Bool)

(declare-fun tb!236443 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327175) tb!236443))

(declare-fun result!286428 () Bool)

(assert (= result!286428 result!286426))

(assert (=> b!3942854 t!327175))

(declare-fun b_and!301429 () Bool)

(assert (= b_and!301417 (and (=> t!327175 result!286428) b_and!301429)))

(declare-fun t!327177 () Bool)

(declare-fun tb!236445 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327177) tb!236445))

(declare-fun result!286430 () Bool)

(assert (= result!286430 result!286426))

(assert (=> b!3942854 t!327177))

(declare-fun b_and!301431 () Bool)

(assert (= b_and!301423 (and (=> t!327177 result!286430) b_and!301431)))

(declare-fun t!327179 () Bool)

(declare-fun tb!236447 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327179) tb!236447))

(declare-fun result!286432 () Bool)

(assert (= result!286432 result!286426))

(assert (=> b!3942854 t!327179))

(declare-fun b_and!301433 () Bool)

(assert (= b_and!301419 (and (=> t!327179 result!286432) b_and!301433)))

(declare-fun tb!236449 () Bool)

(declare-fun t!327181 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327181) tb!236449))

(declare-fun result!286434 () Bool)

(assert (= result!286434 result!286426))

(assert (=> b!3942854 t!327181))

(declare-fun b_and!301435 () Bool)

(assert (= b_and!301415 (and (=> t!327181 result!286434) b_and!301435)))

(declare-fun tb!236451 () Bool)

(declare-fun t!327183 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327183) tb!236451))

(declare-fun result!286436 () Bool)

(assert (= result!286436 result!286426))

(assert (=> b!3942854 t!327183))

(declare-fun b_and!301437 () Bool)

(assert (= b_and!301421 (and (=> t!327183 result!286436) b_and!301437)))

(declare-fun m!4511511 () Bool)

(assert (=> d!1169436 m!4511511))

(declare-fun m!4511513 () Bool)

(assert (=> b!3942854 m!4511513))

(assert (=> b!3942854 m!4511513))

(declare-fun m!4511515 () Bool)

(assert (=> b!3942854 m!4511515))

(declare-fun m!4511517 () Bool)

(assert (=> b!3942855 m!4511517))

(assert (=> b!3942557 d!1169436))

(declare-fun d!1169438 () Bool)

(declare-fun isBalanced!3644 (Conc!12756) Bool)

(assert (=> d!1169438 (= (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))) (isBalanced!3644 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(declare-fun bs!586713 () Bool)

(assert (= bs!586713 d!1169438))

(declare-fun m!4511519 () Bool)

(assert (=> bs!586713 m!4511519))

(assert (=> tb!236375 d!1169438))

(declare-fun d!1169440 () Bool)

(assert (=> d!1169440 (= (isEmpty!24983 (_1!23714 lt!1378742)) (is-Nil!41873 (_1!23714 lt!1378742)))))

(assert (=> b!3942389 d!1169440))

(declare-fun d!1169442 () Bool)

(declare-fun res!1595604 () Bool)

(declare-fun e!2439755 () Bool)

(assert (=> d!1169442 (=> res!1595604 e!2439755)))

(assert (=> d!1169442 (= res!1595604 (is-Nil!41874 rules!2768))))

(assert (=> d!1169442 (= (noDuplicateTag!2553 thiss!20629 rules!2768 Nil!41879) e!2439755)))

(declare-fun b!3942861 () Bool)

(declare-fun e!2439756 () Bool)

(assert (=> b!3942861 (= e!2439755 e!2439756)))

(declare-fun res!1595605 () Bool)

(assert (=> b!3942861 (=> (not res!1595605) (not e!2439756))))

(declare-fun contains!8386 (List!42003 String!47595) Bool)

(assert (=> b!3942861 (= res!1595605 (not (contains!8386 Nil!41879 (tag!7405 (h!47294 rules!2768)))))))

(declare-fun b!3942862 () Bool)

(assert (=> b!3942862 (= e!2439756 (noDuplicateTag!2553 thiss!20629 (t!327081 rules!2768) (Cons!41879 (tag!7405 (h!47294 rules!2768)) Nil!41879)))))

(assert (= (and d!1169442 (not res!1595604)) b!3942861))

(assert (= (and b!3942861 res!1595605) b!3942862))

(declare-fun m!4511521 () Bool)

(assert (=> b!3942861 m!4511521))

(declare-fun m!4511523 () Bool)

(assert (=> b!3942862 m!4511523))

(assert (=> b!3942396 d!1169442))

(declare-fun d!1169444 () Bool)

(assert (=> d!1169444 (= (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (= (mod (str.len (value!207167 (tag!7405 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3942559 d!1169444))

(declare-fun d!1169446 () Bool)

(declare-fun res!1595606 () Bool)

(declare-fun e!2439757 () Bool)

(assert (=> d!1169446 (=> (not res!1595606) (not e!2439757))))

(assert (=> d!1169446 (= res!1595606 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))))))

(assert (=> d!1169446 (= (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) e!2439757)))

(declare-fun b!3942863 () Bool)

(assert (=> b!3942863 (= e!2439757 (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))))))

(assert (= (and d!1169446 res!1595606) b!3942863))

(declare-fun m!4511525 () Bool)

(assert (=> d!1169446 m!4511525))

(declare-fun m!4511527 () Bool)

(assert (=> b!3942863 m!4511527))

(assert (=> b!3942559 d!1169446))

(declare-fun d!1169448 () Bool)

(assert (=> d!1169448 (= (isEmpty!24985 (originalCharacters!7145 (h!47293 prefixTokens!80))) (is-Nil!41872 (originalCharacters!7145 (h!47293 prefixTokens!80))))))

(assert (=> d!1169252 d!1169448))

(declare-fun d!1169450 () Bool)

(declare-fun lt!1378873 () Int)

(assert (=> d!1169450 (>= lt!1378873 0)))

(declare-fun e!2439758 () Int)

(assert (=> d!1169450 (= lt!1378873 e!2439758)))

(declare-fun c!684918 () Bool)

(assert (=> d!1169450 (= c!684918 (is-Nil!41872 (_2!23714 lt!1378785)))))

(assert (=> d!1169450 (= (size!31404 (_2!23714 lt!1378785)) lt!1378873)))

(declare-fun b!3942864 () Bool)

(assert (=> b!3942864 (= e!2439758 0)))

(declare-fun b!3942865 () Bool)

(assert (=> b!3942865 (= e!2439758 (+ 1 (size!31404 (t!327079 (_2!23714 lt!1378785)))))))

(assert (= (and d!1169450 c!684918) b!3942864))

(assert (= (and d!1169450 (not c!684918)) b!3942865))

(declare-fun m!4511529 () Bool)

(assert (=> b!3942865 m!4511529))

(assert (=> b!3942502 d!1169450))

(declare-fun d!1169452 () Bool)

(declare-fun lt!1378874 () Int)

(assert (=> d!1169452 (>= lt!1378874 0)))

(declare-fun e!2439759 () Int)

(assert (=> d!1169452 (= lt!1378874 e!2439759)))

(declare-fun c!684919 () Bool)

(assert (=> d!1169452 (= c!684919 (is-Nil!41872 lt!1378708))))

(assert (=> d!1169452 (= (size!31404 lt!1378708) lt!1378874)))

(declare-fun b!3942866 () Bool)

(assert (=> b!3942866 (= e!2439759 0)))

(declare-fun b!3942867 () Bool)

(assert (=> b!3942867 (= e!2439759 (+ 1 (size!31404 (t!327079 lt!1378708))))))

(assert (= (and d!1169452 c!684919) b!3942866))

(assert (= (and d!1169452 (not c!684919)) b!3942867))

(declare-fun m!4511531 () Bool)

(assert (=> b!3942867 m!4511531))

(assert (=> b!3942502 d!1169452))

(declare-fun d!1169454 () Bool)

(assert (=> d!1169454 true))

(declare-fun lambda!126677 () Int)

(declare-fun order!22341 () Int)

(declare-fun dynLambda!17935 (Int Int) Int)

(assert (=> d!1169454 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (dynLambda!17935 order!22341 lambda!126677))))

(declare-fun Forall2!1052 (Int) Bool)

(assert (=> d!1169454 (= (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (Forall2!1052 lambda!126677))))

(declare-fun bs!586714 () Bool)

(assert (= bs!586714 d!1169454))

(declare-fun m!4511533 () Bool)

(assert (=> bs!586714 m!4511533))

(assert (=> b!3942483 d!1169454))

(assert (=> b!3942430 d!1169396))

(declare-fun d!1169456 () Bool)

(declare-fun dynLambda!17936 (Int BalanceConc!25106) TokenValue!6775)

(assert (=> d!1169456 (= (apply!9778 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753))))) (dynLambda!17936 (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun b_lambda!115311 () Bool)

(assert (=> (not b_lambda!115311) (not d!1169456)))

(declare-fun t!327185 () Bool)

(declare-fun tb!236453 () Bool)

(assert (=> (and b!3942594 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327185) tb!236453))

(declare-fun result!286438 () Bool)

(assert (=> tb!236453 (= result!286438 (inv!21 (dynLambda!17936 (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun m!4511535 () Bool)

(assert (=> tb!236453 m!4511535))

(assert (=> d!1169456 t!327185))

(declare-fun b_and!301439 () Bool)

(assert (= b_and!301383 (and (=> t!327185 result!286438) b_and!301439)))

(declare-fun tb!236455 () Bool)

(declare-fun t!327187 () Bool)

(assert (=> (and b!3942290 (= (toValue!9009 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327187) tb!236455))

(declare-fun result!286442 () Bool)

(assert (= result!286442 result!286438))

(assert (=> d!1169456 t!327187))

(declare-fun b_and!301441 () Bool)

(assert (= b_and!301339 (and (=> t!327187 result!286442) b_and!301441)))

(declare-fun tb!236457 () Bool)

(declare-fun t!327189 () Bool)

(assert (=> (and b!3942277 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327189) tb!236457))

(declare-fun result!286444 () Bool)

(assert (= result!286444 result!286438))

(assert (=> d!1169456 t!327189))

(declare-fun b_and!301443 () Bool)

(assert (= b_and!301335 (and (=> t!327189 result!286444) b_and!301443)))

(declare-fun tb!236459 () Bool)

(declare-fun t!327191 () Bool)

(assert (=> (and b!3942272 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327191) tb!236459))

(declare-fun result!286446 () Bool)

(assert (= result!286446 result!286438))

(assert (=> d!1169456 t!327191))

(declare-fun b_and!301445 () Bool)

(assert (= b_and!301331 (and (=> t!327191 result!286446) b_and!301445)))

(declare-fun t!327193 () Bool)

(declare-fun tb!236461 () Bool)

(assert (=> (and b!3942605 (= (toValue!9009 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327193) tb!236461))

(declare-fun result!286448 () Bool)

(assert (= result!286448 result!286438))

(assert (=> d!1169456 t!327193))

(declare-fun b_and!301447 () Bool)

(assert (= b_and!301387 (and (=> t!327193 result!286448) b_and!301447)))

(declare-fun t!327195 () Bool)

(declare-fun tb!236463 () Bool)

(assert (=> (and b!3942560 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327195) tb!236463))

(declare-fun result!286450 () Bool)

(assert (= result!286450 result!286438))

(assert (=> d!1169456 t!327195))

(declare-fun b_and!301449 () Bool)

(assert (= b_and!301379 (and (=> t!327195 result!286450) b_and!301449)))

(assert (=> d!1169456 m!4511009))

(declare-fun m!4511537 () Bool)

(assert (=> d!1169456 m!4511537))

(assert (=> b!3942430 d!1169456))

(declare-fun d!1169458 () Bool)

(declare-fun fromListB!2222 (List!41996) BalanceConc!25106)

(assert (=> d!1169458 (= (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753)))) (fromListB!2222 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378753)))))))

(declare-fun bs!586715 () Bool)

(assert (= bs!586715 d!1169458))

(declare-fun m!4511539 () Bool)

(assert (=> bs!586715 m!4511539))

(assert (=> b!3942430 d!1169458))

(declare-fun lt!1378875 () List!41996)

(declare-fun b!3942877 () Bool)

(declare-fun e!2439766 () Bool)

(assert (=> b!3942877 (= e!2439766 (or (not (= lt!1378775 Nil!41872)) (= lt!1378875 lt!1378707)))))

(declare-fun b!3942874 () Bool)

(declare-fun e!2439765 () List!41996)

(assert (=> b!3942874 (= e!2439765 lt!1378775)))

(declare-fun d!1169460 () Bool)

(assert (=> d!1169460 e!2439766))

(declare-fun res!1595610 () Bool)

(assert (=> d!1169460 (=> (not res!1595610) (not e!2439766))))

(assert (=> d!1169460 (= res!1595610 (= (content!6328 lt!1378875) (set.union (content!6328 lt!1378707) (content!6328 lt!1378775))))))

(assert (=> d!1169460 (= lt!1378875 e!2439765)))

(declare-fun c!684920 () Bool)

(assert (=> d!1169460 (= c!684920 (is-Nil!41872 lt!1378707))))

(assert (=> d!1169460 (= (++!10847 lt!1378707 lt!1378775) lt!1378875)))

(declare-fun b!3942875 () Bool)

(assert (=> b!3942875 (= e!2439765 (Cons!41872 (h!47292 lt!1378707) (++!10847 (t!327079 lt!1378707) lt!1378775)))))

(declare-fun b!3942876 () Bool)

(declare-fun res!1595609 () Bool)

(assert (=> b!3942876 (=> (not res!1595609) (not e!2439766))))

(assert (=> b!3942876 (= res!1595609 (= (size!31404 lt!1378875) (+ (size!31404 lt!1378707) (size!31404 lt!1378775))))))

(assert (= (and d!1169460 c!684920) b!3942874))

(assert (= (and d!1169460 (not c!684920)) b!3942875))

(assert (= (and d!1169460 res!1595610) b!3942876))

(assert (= (and b!3942876 res!1595609) b!3942877))

(declare-fun m!4511541 () Bool)

(assert (=> d!1169460 m!4511541))

(assert (=> d!1169460 m!4511053))

(declare-fun m!4511543 () Bool)

(assert (=> d!1169460 m!4511543))

(declare-fun m!4511545 () Bool)

(assert (=> b!3942875 m!4511545))

(declare-fun m!4511547 () Bool)

(assert (=> b!3942876 m!4511547))

(assert (=> b!3942876 m!4511043))

(declare-fun m!4511549 () Bool)

(assert (=> b!3942876 m!4511549))

(assert (=> d!1169288 d!1169460))

(assert (=> d!1169288 d!1169452))

(assert (=> d!1169288 d!1169434))

(declare-fun b!3942878 () Bool)

(declare-fun e!2439767 () Bool)

(assert (=> b!3942878 (= e!2439767 (inv!16 (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))

(declare-fun b!3942879 () Bool)

(declare-fun res!1595611 () Bool)

(declare-fun e!2439768 () Bool)

(assert (=> b!3942879 (=> res!1595611 e!2439768)))

(assert (=> b!3942879 (= res!1595611 (not (is-IntegerValue!20327 (value!207168 (h!47293 (t!327080 suffixTokens!72))))))))

(declare-fun e!2439769 () Bool)

(assert (=> b!3942879 (= e!2439769 e!2439768)))

(declare-fun b!3942880 () Bool)

(assert (=> b!3942880 (= e!2439767 e!2439769)))

(declare-fun c!684921 () Bool)

(assert (=> b!3942880 (= c!684921 (is-IntegerValue!20326 (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))

(declare-fun d!1169462 () Bool)

(declare-fun c!684922 () Bool)

(assert (=> d!1169462 (= c!684922 (is-IntegerValue!20325 (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))

(assert (=> d!1169462 (= (inv!21 (value!207168 (h!47293 (t!327080 suffixTokens!72)))) e!2439767)))

(declare-fun b!3942881 () Bool)

(assert (=> b!3942881 (= e!2439768 (inv!15 (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))

(declare-fun b!3942882 () Bool)

(assert (=> b!3942882 (= e!2439769 (inv!17 (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))

(assert (= (and d!1169462 c!684922) b!3942878))

(assert (= (and d!1169462 (not c!684922)) b!3942880))

(assert (= (and b!3942880 c!684921) b!3942882))

(assert (= (and b!3942880 (not c!684921)) b!3942879))

(assert (= (and b!3942879 (not res!1595611)) b!3942881))

(declare-fun m!4511551 () Bool)

(assert (=> b!3942878 m!4511551))

(declare-fun m!4511553 () Bool)

(assert (=> b!3942881 m!4511553))

(declare-fun m!4511555 () Bool)

(assert (=> b!3942882 m!4511555))

(assert (=> b!3942592 d!1169462))

(declare-fun b!3942883 () Bool)

(declare-fun e!2439771 () tuple2!41160)

(assert (=> b!3942883 (= e!2439771 (tuple2!41161 Nil!41873 (_2!23713 (v!39298 lt!1378783))))))

(declare-fun d!1169464 () Bool)

(declare-fun e!2439772 () Bool)

(assert (=> d!1169464 e!2439772))

(declare-fun c!684924 () Bool)

(declare-fun lt!1378878 () tuple2!41160)

(assert (=> d!1169464 (= c!684924 (> (size!31405 (_1!23714 lt!1378878)) 0))))

(assert (=> d!1169464 (= lt!1378878 e!2439771)))

(declare-fun c!684923 () Bool)

(declare-fun lt!1378876 () Option!8965)

(assert (=> d!1169464 (= c!684923 (is-Some!8964 lt!1378876))))

(assert (=> d!1169464 (= lt!1378876 (maxPrefix!3438 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378783))))))

(assert (=> d!1169464 (= (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378783))) lt!1378878)))

(declare-fun b!3942884 () Bool)

(declare-fun e!2439770 () Bool)

(assert (=> b!3942884 (= e!2439770 (not (isEmpty!24983 (_1!23714 lt!1378878))))))

(declare-fun b!3942885 () Bool)

(assert (=> b!3942885 (= e!2439772 e!2439770)))

(declare-fun res!1595612 () Bool)

(assert (=> b!3942885 (= res!1595612 (< (size!31404 (_2!23714 lt!1378878)) (size!31404 (_2!23713 (v!39298 lt!1378783)))))))

(assert (=> b!3942885 (=> (not res!1595612) (not e!2439770))))

(declare-fun b!3942886 () Bool)

(assert (=> b!3942886 (= e!2439772 (= (_2!23714 lt!1378878) (_2!23713 (v!39298 lt!1378783))))))

(declare-fun b!3942887 () Bool)

(declare-fun lt!1378877 () tuple2!41160)

(assert (=> b!3942887 (= e!2439771 (tuple2!41161 (Cons!41873 (_1!23713 (v!39298 lt!1378876)) (_1!23714 lt!1378877)) (_2!23714 lt!1378877)))))

(assert (=> b!3942887 (= lt!1378877 (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378876))))))

(assert (= (and d!1169464 c!684923) b!3942887))

(assert (= (and d!1169464 (not c!684923)) b!3942883))

(assert (= (and d!1169464 c!684924) b!3942885))

(assert (= (and d!1169464 (not c!684924)) b!3942886))

(assert (= (and b!3942885 res!1595612) b!3942884))

(declare-fun m!4511557 () Bool)

(assert (=> d!1169464 m!4511557))

(declare-fun m!4511559 () Bool)

(assert (=> d!1169464 m!4511559))

(declare-fun m!4511561 () Bool)

(assert (=> b!3942884 m!4511561))

(declare-fun m!4511563 () Bool)

(assert (=> b!3942885 m!4511563))

(declare-fun m!4511565 () Bool)

(assert (=> b!3942885 m!4511565))

(declare-fun m!4511567 () Bool)

(assert (=> b!3942887 m!4511567))

(assert (=> b!3942504 d!1169464))

(assert (=> b!3942431 d!1169392))

(assert (=> b!3942431 d!1169394))

(assert (=> b!3942431 d!1169396))

(declare-fun d!1169466 () Bool)

(declare-fun c!684927 () Bool)

(assert (=> d!1169466 (= c!684927 (is-Nil!41872 lt!1378793))))

(declare-fun e!2439775 () (Set C!23086))

(assert (=> d!1169466 (= (content!6328 lt!1378793) e!2439775)))

(declare-fun b!3942892 () Bool)

(assert (=> b!3942892 (= e!2439775 (as set.empty (Set C!23086)))))

(declare-fun b!3942893 () Bool)

(assert (=> b!3942893 (= e!2439775 (set.union (set.insert (h!47292 lt!1378793) (as set.empty (Set C!23086))) (content!6328 (t!327079 lt!1378793))))))

(assert (= (and d!1169466 c!684927) b!3942892))

(assert (= (and d!1169466 (not c!684927)) b!3942893))

(declare-fun m!4511569 () Bool)

(assert (=> b!3942893 m!4511569))

(declare-fun m!4511571 () Bool)

(assert (=> b!3942893 m!4511571))

(assert (=> d!1169310 d!1169466))

(declare-fun d!1169468 () Bool)

(declare-fun c!684928 () Bool)

(assert (=> d!1169468 (= c!684928 (is-Nil!41872 prefix!426))))

(declare-fun e!2439776 () (Set C!23086))

(assert (=> d!1169468 (= (content!6328 prefix!426) e!2439776)))

(declare-fun b!3942894 () Bool)

(assert (=> b!3942894 (= e!2439776 (as set.empty (Set C!23086)))))

(declare-fun b!3942895 () Bool)

(assert (=> b!3942895 (= e!2439776 (set.union (set.insert (h!47292 prefix!426) (as set.empty (Set C!23086))) (content!6328 (t!327079 prefix!426))))))

(assert (= (and d!1169468 c!684928) b!3942894))

(assert (= (and d!1169468 (not c!684928)) b!3942895))

(declare-fun m!4511573 () Bool)

(assert (=> b!3942895 m!4511573))

(declare-fun m!4511575 () Bool)

(assert (=> b!3942895 m!4511575))

(assert (=> d!1169310 d!1169468))

(declare-fun d!1169470 () Bool)

(declare-fun c!684929 () Bool)

(assert (=> d!1169470 (= c!684929 (is-Nil!41872 suffix!1176))))

(declare-fun e!2439777 () (Set C!23086))

(assert (=> d!1169470 (= (content!6328 suffix!1176) e!2439777)))

(declare-fun b!3942896 () Bool)

(assert (=> b!3942896 (= e!2439777 (as set.empty (Set C!23086)))))

(declare-fun b!3942897 () Bool)

(assert (=> b!3942897 (= e!2439777 (set.union (set.insert (h!47292 suffix!1176) (as set.empty (Set C!23086))) (content!6328 (t!327079 suffix!1176))))))

(assert (= (and d!1169470 c!684929) b!3942896))

(assert (= (and d!1169470 (not c!684929)) b!3942897))

(declare-fun m!4511577 () Bool)

(assert (=> b!3942897 m!4511577))

(declare-fun m!4511579 () Bool)

(assert (=> b!3942897 m!4511579))

(assert (=> d!1169310 d!1169470))

(declare-fun d!1169472 () Bool)

(assert (=> d!1169472 (= (isDefined!6964 lt!1378753) (not (isEmpty!24989 lt!1378753)))))

(declare-fun bs!586716 () Bool)

(assert (= bs!586716 d!1169472))

(assert (=> bs!586716 m!4510987))

(assert (=> b!3942433 d!1169472))

(declare-fun d!1169474 () Bool)

(assert (=> d!1169474 (= (head!8376 lt!1378707) (h!47292 lt!1378707))))

(assert (=> b!3942480 d!1169474))

(declare-fun d!1169476 () Bool)

(assert (=> d!1169476 (= (head!8376 lt!1378708) (h!47292 lt!1378708))))

(assert (=> b!3942480 d!1169476))

(declare-fun d!1169478 () Bool)

(declare-fun res!1595627 () Bool)

(declare-fun e!2439792 () Bool)

(assert (=> d!1169478 (=> res!1595627 e!2439792)))

(assert (=> d!1169478 (= res!1595627 (is-ElementMatch!11450 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))

(assert (=> d!1169478 (= (validRegex!5213 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) e!2439792)))

(declare-fun b!3942916 () Bool)

(declare-fun e!2439798 () Bool)

(declare-fun e!2439794 () Bool)

(assert (=> b!3942916 (= e!2439798 e!2439794)))

(declare-fun res!1595625 () Bool)

(assert (=> b!3942916 (=> (not res!1595625) (not e!2439794))))

(declare-fun call!285081 () Bool)

(assert (=> b!3942916 (= res!1595625 call!285081)))

(declare-fun b!3942917 () Bool)

(declare-fun e!2439795 () Bool)

(assert (=> b!3942917 (= e!2439792 e!2439795)))

(declare-fun c!684934 () Bool)

(assert (=> b!3942917 (= c!684934 (is-Star!11450 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))

(declare-fun b!3942918 () Bool)

(declare-fun res!1595626 () Bool)

(declare-fun e!2439796 () Bool)

(assert (=> b!3942918 (=> (not res!1595626) (not e!2439796))))

(declare-fun call!285083 () Bool)

(assert (=> b!3942918 (= res!1595626 call!285083)))

(declare-fun e!2439793 () Bool)

(assert (=> b!3942918 (= e!2439793 e!2439796)))

(declare-fun bm!285076 () Bool)

(declare-fun call!285082 () Bool)

(assert (=> bm!285076 (= call!285081 call!285082)))

(declare-fun b!3942919 () Bool)

(assert (=> b!3942919 (= e!2439795 e!2439793)))

(declare-fun c!684935 () Bool)

(assert (=> b!3942919 (= c!684935 (is-Union!11450 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))

(declare-fun b!3942920 () Bool)

(declare-fun e!2439797 () Bool)

(assert (=> b!3942920 (= e!2439797 call!285082)))

(declare-fun b!3942921 () Bool)

(assert (=> b!3942921 (= e!2439796 call!285081)))

(declare-fun bm!285077 () Bool)

(assert (=> bm!285077 (= call!285082 (validRegex!5213 (ite c!684934 (reg!11779 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (ite c!684935 (regTwo!23413 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (regOne!23412 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))))))))

(declare-fun b!3942922 () Bool)

(assert (=> b!3942922 (= e!2439794 call!285083)))

(declare-fun b!3942923 () Bool)

(declare-fun res!1595623 () Bool)

(assert (=> b!3942923 (=> res!1595623 e!2439798)))

(assert (=> b!3942923 (= res!1595623 (not (is-Concat!18226 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))))))

(assert (=> b!3942923 (= e!2439793 e!2439798)))

(declare-fun bm!285078 () Bool)

(assert (=> bm!285078 (= call!285083 (validRegex!5213 (ite c!684935 (regOne!23413 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (regTwo!23412 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))))

(declare-fun b!3942924 () Bool)

(assert (=> b!3942924 (= e!2439795 e!2439797)))

(declare-fun res!1595624 () Bool)

(assert (=> b!3942924 (= res!1595624 (not (nullable!4014 (reg!11779 (regex!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))))))

(assert (=> b!3942924 (=> (not res!1595624) (not e!2439797))))

(assert (= (and d!1169478 (not res!1595627)) b!3942917))

(assert (= (and b!3942917 c!684934) b!3942924))

(assert (= (and b!3942917 (not c!684934)) b!3942919))

(assert (= (and b!3942924 res!1595624) b!3942920))

(assert (= (and b!3942919 c!684935) b!3942918))

(assert (= (and b!3942919 (not c!684935)) b!3942923))

(assert (= (and b!3942918 res!1595626) b!3942921))

(assert (= (and b!3942923 (not res!1595623)) b!3942916))

(assert (= (and b!3942916 res!1595625) b!3942922))

(assert (= (or b!3942921 b!3942916) bm!285076))

(assert (= (or b!3942918 b!3942922) bm!285078))

(assert (= (or b!3942920 bm!285076) bm!285077))

(declare-fun m!4511581 () Bool)

(assert (=> bm!285077 m!4511581))

(declare-fun m!4511583 () Bool)

(assert (=> bm!285078 m!4511583))

(declare-fun m!4511585 () Bool)

(assert (=> b!3942924 m!4511585))

(assert (=> d!1169274 d!1169478))

(assert (=> b!3942482 d!1169452))

(assert (=> b!3942482 d!1169434))

(declare-fun d!1169480 () Bool)

(declare-fun lt!1378879 () Int)

(assert (=> d!1169480 (>= lt!1378879 0)))

(declare-fun e!2439799 () Int)

(assert (=> d!1169480 (= lt!1378879 e!2439799)))

(declare-fun c!684936 () Bool)

(assert (=> d!1169480 (= c!684936 (is-Nil!41872 lt!1378769))))

(assert (=> d!1169480 (= (size!31404 lt!1378769) lt!1378879)))

(declare-fun b!3942925 () Bool)

(assert (=> b!3942925 (= e!2439799 0)))

(declare-fun b!3942926 () Bool)

(assert (=> b!3942926 (= e!2439799 (+ 1 (size!31404 (t!327079 lt!1378769))))))

(assert (= (and d!1169480 c!684936) b!3942925))

(assert (= (and d!1169480 (not c!684936)) b!3942926))

(declare-fun m!4511587 () Bool)

(assert (=> b!3942926 m!4511587))

(assert (=> b!3942470 d!1169480))

(assert (=> b!3942470 d!1169434))

(declare-fun d!1169482 () Bool)

(declare-fun lt!1378880 () Int)

(assert (=> d!1169482 (>= lt!1378880 0)))

(declare-fun e!2439800 () Int)

(assert (=> d!1169482 (= lt!1378880 e!2439800)))

(declare-fun c!684937 () Bool)

(assert (=> d!1169482 (= c!684937 (is-Nil!41872 (_2!23713 (v!39298 lt!1378706))))))

(assert (=> d!1169482 (= (size!31404 (_2!23713 (v!39298 lt!1378706))) lt!1378880)))

(declare-fun b!3942927 () Bool)

(assert (=> b!3942927 (= e!2439800 0)))

(declare-fun b!3942928 () Bool)

(assert (=> b!3942928 (= e!2439800 (+ 1 (size!31404 (t!327079 (_2!23713 (v!39298 lt!1378706))))))))

(assert (= (and d!1169482 c!684937) b!3942927))

(assert (= (and d!1169482 (not c!684937)) b!3942928))

(declare-fun m!4511589 () Bool)

(assert (=> b!3942928 m!4511589))

(assert (=> b!3942470 d!1169482))

(declare-fun d!1169484 () Bool)

(declare-fun charsToBigInt!1 (List!41995) Int)

(assert (=> d!1169484 (= (inv!17 (value!207168 (h!47293 prefixTokens!80))) (= (charsToBigInt!1 (text!47873 (value!207168 (h!47293 prefixTokens!80)))) (value!207160 (value!207168 (h!47293 prefixTokens!80)))))))

(declare-fun bs!586717 () Bool)

(assert (= bs!586717 d!1169484))

(declare-fun m!4511591 () Bool)

(assert (=> bs!586717 m!4511591))

(assert (=> b!3942546 d!1169484))

(declare-fun d!1169486 () Bool)

(declare-fun lt!1378881 () Int)

(assert (=> d!1169486 (>= lt!1378881 0)))

(declare-fun e!2439801 () Int)

(assert (=> d!1169486 (= lt!1378881 e!2439801)))

(declare-fun c!684938 () Bool)

(assert (=> d!1169486 (= c!684938 (is-Nil!41872 (_2!23713 (get!13832 lt!1378753))))))

(assert (=> d!1169486 (= (size!31404 (_2!23713 (get!13832 lt!1378753))) lt!1378881)))

(declare-fun b!3942929 () Bool)

(assert (=> b!3942929 (= e!2439801 0)))

(declare-fun b!3942930 () Bool)

(assert (=> b!3942930 (= e!2439801 (+ 1 (size!31404 (t!327079 (_2!23713 (get!13832 lt!1378753))))))))

(assert (= (and d!1169486 c!684938) b!3942929))

(assert (= (and d!1169486 (not c!684938)) b!3942930))

(declare-fun m!4511593 () Bool)

(assert (=> b!3942930 m!4511593))

(assert (=> b!3942435 d!1169486))

(assert (=> b!3942435 d!1169396))

(assert (=> b!3942435 d!1169452))

(declare-fun d!1169488 () Bool)

(declare-fun charsToInt!0 (List!41995) (_ BitVec 32))

(assert (=> d!1169488 (= (inv!16 (value!207168 (h!47293 suffixTokens!72))) (= (charsToInt!0 (text!47872 (value!207168 (h!47293 suffixTokens!72)))) (value!207159 (value!207168 (h!47293 suffixTokens!72)))))))

(declare-fun bs!586718 () Bool)

(assert (= bs!586718 d!1169488))

(declare-fun m!4511595 () Bool)

(assert (=> bs!586718 m!4511595))

(assert (=> b!3942495 d!1169488))

(declare-fun d!1169490 () Bool)

(declare-fun lt!1378884 () Int)

(assert (=> d!1169490 (>= lt!1378884 0)))

(declare-fun e!2439804 () Int)

(assert (=> d!1169490 (= lt!1378884 e!2439804)))

(declare-fun c!684941 () Bool)

(assert (=> d!1169490 (= c!684941 (is-Nil!41873 lt!1378792))))

(assert (=> d!1169490 (= (size!31405 lt!1378792) lt!1378884)))

(declare-fun b!3942935 () Bool)

(assert (=> b!3942935 (= e!2439804 0)))

(declare-fun b!3942936 () Bool)

(assert (=> b!3942936 (= e!2439804 (+ 1 (size!31405 (t!327080 lt!1378792))))))

(assert (= (and d!1169490 c!684941) b!3942935))

(assert (= (and d!1169490 (not c!684941)) b!3942936))

(declare-fun m!4511597 () Bool)

(assert (=> b!3942936 m!4511597))

(assert (=> b!3942533 d!1169490))

(declare-fun d!1169492 () Bool)

(declare-fun lt!1378885 () Int)

(assert (=> d!1169492 (>= lt!1378885 0)))

(declare-fun e!2439805 () Int)

(assert (=> d!1169492 (= lt!1378885 e!2439805)))

(declare-fun c!684942 () Bool)

(assert (=> d!1169492 (= c!684942 (is-Nil!41873 prefixTokens!80))))

(assert (=> d!1169492 (= (size!31405 prefixTokens!80) lt!1378885)))

(declare-fun b!3942937 () Bool)

(assert (=> b!3942937 (= e!2439805 0)))

(declare-fun b!3942938 () Bool)

(assert (=> b!3942938 (= e!2439805 (+ 1 (size!31405 (t!327080 prefixTokens!80))))))

(assert (= (and d!1169492 c!684942) b!3942937))

(assert (= (and d!1169492 (not c!684942)) b!3942938))

(assert (=> b!3942938 m!4511429))

(assert (=> b!3942533 d!1169492))

(declare-fun d!1169494 () Bool)

(declare-fun lt!1378886 () Int)

(assert (=> d!1169494 (>= lt!1378886 0)))

(declare-fun e!2439806 () Int)

(assert (=> d!1169494 (= lt!1378886 e!2439806)))

(declare-fun c!684943 () Bool)

(assert (=> d!1169494 (= c!684943 (is-Nil!41873 suffixTokens!72))))

(assert (=> d!1169494 (= (size!31405 suffixTokens!72) lt!1378886)))

(declare-fun b!3942939 () Bool)

(assert (=> b!3942939 (= e!2439806 0)))

(declare-fun b!3942940 () Bool)

(assert (=> b!3942940 (= e!2439806 (+ 1 (size!31405 (t!327080 suffixTokens!72))))))

(assert (= (and d!1169494 c!684943) b!3942939))

(assert (= (and d!1169494 (not c!684943)) b!3942940))

(declare-fun m!4511599 () Bool)

(assert (=> b!3942940 m!4511599))

(assert (=> b!3942533 d!1169494))

(declare-fun d!1169496 () Bool)

(declare-fun e!2439808 () Bool)

(assert (=> d!1169496 e!2439808))

(declare-fun res!1595631 () Bool)

(assert (=> d!1169496 (=> res!1595631 e!2439808)))

(declare-fun lt!1378887 () Option!8965)

(assert (=> d!1169496 (= res!1595631 (isEmpty!24989 lt!1378887))))

(declare-fun e!2439809 () Option!8965)

(assert (=> d!1169496 (= lt!1378887 e!2439809)))

(declare-fun c!684944 () Bool)

(assert (=> d!1169496 (= c!684944 (and (is-Cons!41874 (t!327081 rules!2768)) (is-Nil!41874 (t!327081 (t!327081 rules!2768)))))))

(declare-fun lt!1378890 () Unit!60417)

(declare-fun lt!1378888 () Unit!60417)

(assert (=> d!1169496 (= lt!1378890 lt!1378888)))

(assert (=> d!1169496 (isPrefix!3634 lt!1378708 lt!1378708)))

(assert (=> d!1169496 (= lt!1378888 (lemmaIsPrefixRefl!2295 lt!1378708 lt!1378708))))

(assert (=> d!1169496 (rulesValidInductive!2365 thiss!20629 (t!327081 rules!2768))))

(assert (=> d!1169496 (= (maxPrefix!3438 thiss!20629 (t!327081 rules!2768) lt!1378708) lt!1378887)))

(declare-fun b!3942941 () Bool)

(declare-fun res!1595628 () Bool)

(declare-fun e!2439807 () Bool)

(assert (=> b!3942941 (=> (not res!1595628) (not e!2439807))))

(assert (=> b!3942941 (= res!1595628 (= (value!207168 (_1!23713 (get!13832 lt!1378887))) (apply!9778 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378887)))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378887)))))))))

(declare-fun b!3942942 () Bool)

(declare-fun res!1595633 () Bool)

(assert (=> b!3942942 (=> (not res!1595633) (not e!2439807))))

(assert (=> b!3942942 (= res!1595633 (= (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378887)))) (originalCharacters!7145 (_1!23713 (get!13832 lt!1378887)))))))

(declare-fun b!3942943 () Bool)

(declare-fun call!285084 () Option!8965)

(assert (=> b!3942943 (= e!2439809 call!285084)))

(declare-fun b!3942944 () Bool)

(assert (=> b!3942944 (= e!2439808 e!2439807)))

(declare-fun res!1595634 () Bool)

(assert (=> b!3942944 (=> (not res!1595634) (not e!2439807))))

(assert (=> b!3942944 (= res!1595634 (isDefined!6964 lt!1378887))))

(declare-fun b!3942945 () Bool)

(declare-fun res!1595630 () Bool)

(assert (=> b!3942945 (=> (not res!1595630) (not e!2439807))))

(assert (=> b!3942945 (= res!1595630 (= (++!10847 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378887)))) (_2!23713 (get!13832 lt!1378887))) lt!1378708))))

(declare-fun b!3942946 () Bool)

(declare-fun res!1595629 () Bool)

(assert (=> b!3942946 (=> (not res!1595629) (not e!2439807))))

(assert (=> b!3942946 (= res!1595629 (< (size!31404 (_2!23713 (get!13832 lt!1378887))) (size!31404 lt!1378708)))))

(declare-fun b!3942947 () Bool)

(assert (=> b!3942947 (= e!2439807 (contains!8384 (t!327081 rules!2768) (rule!9505 (_1!23713 (get!13832 lt!1378887)))))))

(declare-fun b!3942948 () Bool)

(declare-fun lt!1378891 () Option!8965)

(declare-fun lt!1378889 () Option!8965)

(assert (=> b!3942948 (= e!2439809 (ite (and (is-None!8964 lt!1378891) (is-None!8964 lt!1378889)) None!8964 (ite (is-None!8964 lt!1378889) lt!1378891 (ite (is-None!8964 lt!1378891) lt!1378889 (ite (>= (size!31402 (_1!23713 (v!39298 lt!1378891))) (size!31402 (_1!23713 (v!39298 lt!1378889)))) lt!1378891 lt!1378889)))))))

(assert (=> b!3942948 (= lt!1378891 call!285084)))

(assert (=> b!3942948 (= lt!1378889 (maxPrefix!3438 thiss!20629 (t!327081 (t!327081 rules!2768)) lt!1378708))))

(declare-fun bm!285079 () Bool)

(assert (=> bm!285079 (= call!285084 (maxPrefixOneRule!2502 thiss!20629 (h!47294 (t!327081 rules!2768)) lt!1378708))))

(declare-fun b!3942949 () Bool)

(declare-fun res!1595632 () Bool)

(assert (=> b!3942949 (=> (not res!1595632) (not e!2439807))))

(assert (=> b!3942949 (= res!1595632 (matchR!5497 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378887)))) (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378887))))))))

(assert (= (and d!1169496 c!684944) b!3942943))

(assert (= (and d!1169496 (not c!684944)) b!3942948))

(assert (= (or b!3942943 b!3942948) bm!285079))

(assert (= (and d!1169496 (not res!1595631)) b!3942944))

(assert (= (and b!3942944 res!1595634) b!3942942))

(assert (= (and b!3942942 res!1595633) b!3942946))

(assert (= (and b!3942946 res!1595629) b!3942945))

(assert (= (and b!3942945 res!1595630) b!3942941))

(assert (= (and b!3942941 res!1595628) b!3942949))

(assert (= (and b!3942949 res!1595632) b!3942947))

(declare-fun m!4511601 () Bool)

(assert (=> d!1169496 m!4511601))

(assert (=> d!1169496 m!4510989))

(assert (=> d!1169496 m!4510991))

(assert (=> d!1169496 m!4511397))

(declare-fun m!4511603 () Bool)

(assert (=> b!3942948 m!4511603))

(declare-fun m!4511605 () Bool)

(assert (=> b!3942945 m!4511605))

(declare-fun m!4511607 () Bool)

(assert (=> b!3942945 m!4511607))

(assert (=> b!3942945 m!4511607))

(declare-fun m!4511609 () Bool)

(assert (=> b!3942945 m!4511609))

(assert (=> b!3942945 m!4511609))

(declare-fun m!4511611 () Bool)

(assert (=> b!3942945 m!4511611))

(assert (=> b!3942946 m!4511605))

(declare-fun m!4511613 () Bool)

(assert (=> b!3942946 m!4511613))

(assert (=> b!3942946 m!4511007))

(assert (=> b!3942941 m!4511605))

(declare-fun m!4511615 () Bool)

(assert (=> b!3942941 m!4511615))

(assert (=> b!3942941 m!4511615))

(declare-fun m!4511617 () Bool)

(assert (=> b!3942941 m!4511617))

(assert (=> b!3942949 m!4511605))

(assert (=> b!3942949 m!4511607))

(assert (=> b!3942949 m!4511607))

(assert (=> b!3942949 m!4511609))

(assert (=> b!3942949 m!4511609))

(declare-fun m!4511619 () Bool)

(assert (=> b!3942949 m!4511619))

(assert (=> b!3942942 m!4511605))

(assert (=> b!3942942 m!4511607))

(assert (=> b!3942942 m!4511607))

(assert (=> b!3942942 m!4511609))

(assert (=> b!3942947 m!4511605))

(declare-fun m!4511621 () Bool)

(assert (=> b!3942947 m!4511621))

(declare-fun m!4511623 () Bool)

(assert (=> bm!285079 m!4511623))

(declare-fun m!4511625 () Bool)

(assert (=> b!3942944 m!4511625))

(assert (=> b!3942437 d!1169496))

(declare-fun d!1169498 () Bool)

(declare-fun lt!1378892 () Int)

(assert (=> d!1169498 (>= lt!1378892 0)))

(declare-fun e!2439810 () Int)

(assert (=> d!1169498 (= lt!1378892 e!2439810)))

(declare-fun c!684945 () Bool)

(assert (=> d!1169498 (= c!684945 (is-Nil!41873 (_1!23714 lt!1378785)))))

(assert (=> d!1169498 (= (size!31405 (_1!23714 lt!1378785)) lt!1378892)))

(declare-fun b!3942950 () Bool)

(assert (=> b!3942950 (= e!2439810 0)))

(declare-fun b!3942951 () Bool)

(assert (=> b!3942951 (= e!2439810 (+ 1 (size!31405 (t!327080 (_1!23714 lt!1378785)))))))

(assert (= (and d!1169498 c!684945) b!3942950))

(assert (= (and d!1169498 (not c!684945)) b!3942951))

(declare-fun m!4511627 () Bool)

(assert (=> b!3942951 m!4511627))

(assert (=> d!1169306 d!1169498))

(assert (=> d!1169306 d!1169264))

(declare-fun d!1169500 () Bool)

(declare-fun lt!1378893 () Int)

(assert (=> d!1169500 (>= lt!1378893 0)))

(declare-fun e!2439811 () Int)

(assert (=> d!1169500 (= lt!1378893 e!2439811)))

(declare-fun c!684946 () Bool)

(assert (=> d!1169500 (= c!684946 (is-Nil!41872 (originalCharacters!7145 (h!47293 suffixTokens!72))))))

(assert (=> d!1169500 (= (size!31404 (originalCharacters!7145 (h!47293 suffixTokens!72))) lt!1378893)))

(declare-fun b!3942952 () Bool)

(assert (=> b!3942952 (= e!2439811 0)))

(declare-fun b!3942953 () Bool)

(assert (=> b!3942953 (= e!2439811 (+ 1 (size!31404 (t!327079 (originalCharacters!7145 (h!47293 suffixTokens!72))))))))

(assert (= (and d!1169500 c!684946) b!3942952))

(assert (= (and d!1169500 (not c!684946)) b!3942953))

(declare-fun m!4511629 () Bool)

(assert (=> b!3942953 m!4511629))

(assert (=> b!3942540 d!1169500))

(declare-fun b!3942962 () Bool)

(declare-fun e!2439816 () List!41996)

(assert (=> b!3942962 (= e!2439816 Nil!41872)))

(declare-fun b!3942964 () Bool)

(declare-fun e!2439817 () List!41996)

(declare-fun list!15553 (IArray!25517) List!41996)

(assert (=> b!3942964 (= e!2439817 (list!15553 (xs!16062 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706)))))))))

(declare-fun d!1169502 () Bool)

(declare-fun c!684951 () Bool)

(assert (=> d!1169502 (= c!684951 (is-Empty!12756 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706))))))))

(assert (=> d!1169502 (= (list!15551 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706))))) e!2439816)))

(declare-fun b!3942965 () Bool)

(assert (=> b!3942965 (= e!2439817 (++!10847 (list!15551 (left!31895 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706)))))) (list!15551 (right!32225 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706))))))))))

(declare-fun b!3942963 () Bool)

(assert (=> b!3942963 (= e!2439816 e!2439817)))

(declare-fun c!684952 () Bool)

(assert (=> b!3942963 (= c!684952 (is-Leaf!19736 (c!684842 (charsOf!4363 (_1!23713 (v!39298 lt!1378706))))))))

(assert (= (and d!1169502 c!684951) b!3942962))

(assert (= (and d!1169502 (not c!684951)) b!3942963))

(assert (= (and b!3942963 c!684952) b!3942964))

(assert (= (and b!3942963 (not c!684952)) b!3942965))

(declare-fun m!4511631 () Bool)

(assert (=> b!3942964 m!4511631))

(declare-fun m!4511633 () Bool)

(assert (=> b!3942965 m!4511633))

(declare-fun m!4511635 () Bool)

(assert (=> b!3942965 m!4511635))

(assert (=> b!3942965 m!4511633))

(assert (=> b!3942965 m!4511635))

(declare-fun m!4511637 () Bool)

(assert (=> b!3942965 m!4511637))

(assert (=> d!1169276 d!1169502))

(declare-fun bs!586719 () Bool)

(declare-fun d!1169504 () Bool)

(assert (= bs!586719 (and d!1169504 d!1169454)))

(declare-fun lambda!126678 () Int)

(assert (=> bs!586719 (= (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (= lambda!126678 lambda!126677))))

(assert (=> d!1169504 true))

(assert (=> d!1169504 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (dynLambda!17935 order!22341 lambda!126678))))

(assert (=> d!1169504 (= (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (Forall2!1052 lambda!126678))))

(declare-fun bs!586720 () Bool)

(assert (= bs!586720 d!1169504))

(declare-fun m!4511639 () Bool)

(assert (=> bs!586720 m!4511639))

(assert (=> b!3942484 d!1169504))

(declare-fun d!1169506 () Bool)

(assert (=> d!1169506 (= (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))) (isBalanced!3644 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))))))

(declare-fun bs!586721 () Bool)

(assert (= bs!586721 d!1169506))

(declare-fun m!4511641 () Bool)

(assert (=> bs!586721 m!4511641))

(assert (=> tb!236369 d!1169506))

(declare-fun b!3942994 () Bool)

(declare-fun e!2439836 () Bool)

(assert (=> b!3942994 (= e!2439836 (not (= (head!8376 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (c!684841 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))))))))

(declare-fun d!1169508 () Bool)

(declare-fun e!2439832 () Bool)

(assert (=> d!1169508 e!2439832))

(declare-fun c!684961 () Bool)

(assert (=> d!1169508 (= c!684961 (is-EmptyExpr!11450 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun lt!1378896 () Bool)

(declare-fun e!2439835 () Bool)

(assert (=> d!1169508 (= lt!1378896 e!2439835)))

(declare-fun c!684960 () Bool)

(assert (=> d!1169508 (= c!684960 (isEmpty!24985 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))

(assert (=> d!1169508 (validRegex!5213 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))

(assert (=> d!1169508 (= (matchR!5497 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) lt!1378896)))

(declare-fun b!3942995 () Bool)

(declare-fun res!1595655 () Bool)

(declare-fun e!2439837 () Bool)

(assert (=> b!3942995 (=> res!1595655 e!2439837)))

(assert (=> b!3942995 (= res!1595655 (not (is-ElementMatch!11450 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun e!2439834 () Bool)

(assert (=> b!3942995 (= e!2439834 e!2439837)))

(declare-fun b!3942996 () Bool)

(declare-fun call!285087 () Bool)

(assert (=> b!3942996 (= e!2439832 (= lt!1378896 call!285087))))

(declare-fun b!3942997 () Bool)

(declare-fun e!2439838 () Bool)

(assert (=> b!3942997 (= e!2439838 (= (head!8376 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))) (c!684841 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun b!3942998 () Bool)

(declare-fun res!1595657 () Bool)

(assert (=> b!3942998 (=> (not res!1595657) (not e!2439838))))

(assert (=> b!3942998 (= res!1595657 (not call!285087))))

(declare-fun b!3942999 () Bool)

(assert (=> b!3942999 (= e!2439832 e!2439834)))

(declare-fun c!684959 () Bool)

(assert (=> b!3942999 (= c!684959 (is-EmptyLang!11450 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun bm!285082 () Bool)

(assert (=> bm!285082 (= call!285087 (isEmpty!24985 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun b!3943000 () Bool)

(assert (=> b!3943000 (= e!2439835 (nullable!4014 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753))))))))

(declare-fun b!3943001 () Bool)

(declare-fun derivativeStep!3456 (Regex!11450 C!23086) Regex!11450)

(assert (=> b!3943001 (= e!2439835 (matchR!5497 (derivativeStep!3456 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))) (head!8376 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))))) (tail!6102 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun b!3943002 () Bool)

(declare-fun res!1595651 () Bool)

(assert (=> b!3943002 (=> (not res!1595651) (not e!2439838))))

(assert (=> b!3943002 (= res!1595651 (isEmpty!24985 (tail!6102 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753)))))))))

(declare-fun b!3943003 () Bool)

(declare-fun e!2439833 () Bool)

(assert (=> b!3943003 (= e!2439833 e!2439836)))

(declare-fun res!1595656 () Bool)

(assert (=> b!3943003 (=> res!1595656 e!2439836)))

(assert (=> b!3943003 (= res!1595656 call!285087)))

(declare-fun b!3943004 () Bool)

(declare-fun res!1595658 () Bool)

(assert (=> b!3943004 (=> res!1595658 e!2439836)))

(assert (=> b!3943004 (= res!1595658 (not (isEmpty!24985 (tail!6102 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378753))))))))))

(declare-fun b!3943005 () Bool)

(assert (=> b!3943005 (= e!2439834 (not lt!1378896))))

(declare-fun b!3943006 () Bool)

(declare-fun res!1595652 () Bool)

(assert (=> b!3943006 (=> res!1595652 e!2439837)))

(assert (=> b!3943006 (= res!1595652 e!2439838)))

(declare-fun res!1595654 () Bool)

(assert (=> b!3943006 (=> (not res!1595654) (not e!2439838))))

(assert (=> b!3943006 (= res!1595654 lt!1378896)))

(declare-fun b!3943007 () Bool)

(assert (=> b!3943007 (= e!2439837 e!2439833)))

(declare-fun res!1595653 () Bool)

(assert (=> b!3943007 (=> (not res!1595653) (not e!2439833))))

(assert (=> b!3943007 (= res!1595653 (not lt!1378896))))

(assert (= (and d!1169508 c!684960) b!3943000))

(assert (= (and d!1169508 (not c!684960)) b!3943001))

(assert (= (and d!1169508 c!684961) b!3942996))

(assert (= (and d!1169508 (not c!684961)) b!3942999))

(assert (= (and b!3942999 c!684959) b!3943005))

(assert (= (and b!3942999 (not c!684959)) b!3942995))

(assert (= (and b!3942995 (not res!1595655)) b!3943006))

(assert (= (and b!3943006 res!1595654) b!3942998))

(assert (= (and b!3942998 res!1595657) b!3943002))

(assert (= (and b!3943002 res!1595651) b!3942997))

(assert (= (and b!3943006 (not res!1595652)) b!3943007))

(assert (= (and b!3943007 res!1595653) b!3943003))

(assert (= (and b!3943003 (not res!1595656)) b!3943004))

(assert (= (and b!3943004 (not res!1595658)) b!3942994))

(assert (= (or b!3942996 b!3942998 b!3943003) bm!285082))

(assert (=> d!1169508 m!4511001))

(declare-fun m!4511643 () Bool)

(assert (=> d!1169508 m!4511643))

(declare-fun m!4511645 () Bool)

(assert (=> d!1169508 m!4511645))

(declare-fun m!4511647 () Bool)

(assert (=> b!3943000 m!4511647))

(assert (=> b!3943002 m!4511001))

(declare-fun m!4511649 () Bool)

(assert (=> b!3943002 m!4511649))

(assert (=> b!3943002 m!4511649))

(declare-fun m!4511651 () Bool)

(assert (=> b!3943002 m!4511651))

(assert (=> b!3942997 m!4511001))

(declare-fun m!4511653 () Bool)

(assert (=> b!3942997 m!4511653))

(assert (=> b!3943004 m!4511001))

(assert (=> b!3943004 m!4511649))

(assert (=> b!3943004 m!4511649))

(assert (=> b!3943004 m!4511651))

(assert (=> bm!285082 m!4511001))

(assert (=> bm!285082 m!4511643))

(assert (=> b!3942994 m!4511001))

(assert (=> b!3942994 m!4511653))

(assert (=> b!3943001 m!4511001))

(assert (=> b!3943001 m!4511653))

(assert (=> b!3943001 m!4511653))

(declare-fun m!4511655 () Bool)

(assert (=> b!3943001 m!4511655))

(assert (=> b!3943001 m!4511001))

(assert (=> b!3943001 m!4511649))

(assert (=> b!3943001 m!4511655))

(assert (=> b!3943001 m!4511649))

(declare-fun m!4511657 () Bool)

(assert (=> b!3943001 m!4511657))

(assert (=> b!3942438 d!1169508))

(assert (=> b!3942438 d!1169396))

(assert (=> b!3942438 d!1169392))

(assert (=> b!3942438 d!1169394))

(declare-fun d!1169510 () Bool)

(assert (=> d!1169510 (= (inv!17 (value!207168 (h!47293 suffixTokens!72))) (= (charsToBigInt!1 (text!47873 (value!207168 (h!47293 suffixTokens!72)))) (value!207160 (value!207168 (h!47293 suffixTokens!72)))))))

(declare-fun bs!586722 () Bool)

(assert (= bs!586722 d!1169510))

(declare-fun m!4511659 () Bool)

(assert (=> bs!586722 m!4511659))

(assert (=> b!3942499 d!1169510))

(declare-fun e!2439840 () Bool)

(declare-fun b!3943011 () Bool)

(declare-fun lt!1378897 () List!41996)

(assert (=> b!3943011 (= e!2439840 (or (not (= suffix!1176 Nil!41872)) (= lt!1378897 (t!327079 prefix!426))))))

(declare-fun b!3943008 () Bool)

(declare-fun e!2439839 () List!41996)

(assert (=> b!3943008 (= e!2439839 suffix!1176)))

(declare-fun d!1169512 () Bool)

(assert (=> d!1169512 e!2439840))

(declare-fun res!1595660 () Bool)

(assert (=> d!1169512 (=> (not res!1595660) (not e!2439840))))

(assert (=> d!1169512 (= res!1595660 (= (content!6328 lt!1378897) (set.union (content!6328 (t!327079 prefix!426)) (content!6328 suffix!1176))))))

(assert (=> d!1169512 (= lt!1378897 e!2439839)))

(declare-fun c!684962 () Bool)

(assert (=> d!1169512 (= c!684962 (is-Nil!41872 (t!327079 prefix!426)))))

(assert (=> d!1169512 (= (++!10847 (t!327079 prefix!426) suffix!1176) lt!1378897)))

(declare-fun b!3943009 () Bool)

(assert (=> b!3943009 (= e!2439839 (Cons!41872 (h!47292 (t!327079 prefix!426)) (++!10847 (t!327079 (t!327079 prefix!426)) suffix!1176)))))

(declare-fun b!3943010 () Bool)

(declare-fun res!1595659 () Bool)

(assert (=> b!3943010 (=> (not res!1595659) (not e!2439840))))

(assert (=> b!3943010 (= res!1595659 (= (size!31404 lt!1378897) (+ (size!31404 (t!327079 prefix!426)) (size!31404 suffix!1176))))))

(assert (= (and d!1169512 c!684962) b!3943008))

(assert (= (and d!1169512 (not c!684962)) b!3943009))

(assert (= (and d!1169512 res!1595660) b!3943010))

(assert (= (and b!3943010 res!1595659) b!3943011))

(declare-fun m!4511661 () Bool)

(assert (=> d!1169512 m!4511661))

(assert (=> d!1169512 m!4511575))

(assert (=> d!1169512 m!4511123))

(declare-fun m!4511663 () Bool)

(assert (=> b!3943009 m!4511663))

(declare-fun m!4511665 () Bool)

(assert (=> b!3943010 m!4511665))

(assert (=> b!3943010 m!4511495))

(assert (=> b!3943010 m!4510961))

(assert (=> b!3942536 d!1169512))

(assert (=> b!3942457 d!1169474))

(declare-fun d!1169514 () Bool)

(assert (=> d!1169514 (= (head!8376 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))) (h!47292 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))

(assert (=> b!3942457 d!1169514))

(declare-fun d!1169516 () Bool)

(declare-fun lt!1378898 () Int)

(assert (=> d!1169516 (>= lt!1378898 0)))

(declare-fun e!2439841 () Int)

(assert (=> d!1169516 (= lt!1378898 e!2439841)))

(declare-fun c!684963 () Bool)

(assert (=> d!1169516 (= c!684963 (is-Nil!41873 (_1!23714 lt!1378742)))))

(assert (=> d!1169516 (= (size!31405 (_1!23714 lt!1378742)) lt!1378898)))

(declare-fun b!3943012 () Bool)

(assert (=> b!3943012 (= e!2439841 0)))

(declare-fun b!3943013 () Bool)

(assert (=> b!3943013 (= e!2439841 (+ 1 (size!31405 (t!327080 (_1!23714 lt!1378742)))))))

(assert (= (and d!1169516 c!684963) b!3943012))

(assert (= (and d!1169516 (not c!684963)) b!3943013))

(declare-fun m!4511667 () Bool)

(assert (=> b!3943013 m!4511667))

(assert (=> d!1169256 d!1169516))

(declare-fun d!1169518 () Bool)

(declare-fun e!2439843 () Bool)

(assert (=> d!1169518 e!2439843))

(declare-fun res!1595664 () Bool)

(assert (=> d!1169518 (=> res!1595664 e!2439843)))

(declare-fun lt!1378899 () Option!8965)

(assert (=> d!1169518 (= res!1595664 (isEmpty!24989 lt!1378899))))

(declare-fun e!2439844 () Option!8965)

(assert (=> d!1169518 (= lt!1378899 e!2439844)))

(declare-fun c!684964 () Bool)

(assert (=> d!1169518 (= c!684964 (and (is-Cons!41874 rules!2768) (is-Nil!41874 (t!327081 rules!2768))))))

(declare-fun lt!1378902 () Unit!60417)

(declare-fun lt!1378900 () Unit!60417)

(assert (=> d!1169518 (= lt!1378902 lt!1378900)))

(assert (=> d!1169518 (isPrefix!3634 suffix!1176 suffix!1176)))

(assert (=> d!1169518 (= lt!1378900 (lemmaIsPrefixRefl!2295 suffix!1176 suffix!1176))))

(assert (=> d!1169518 (rulesValidInductive!2365 thiss!20629 rules!2768)))

(assert (=> d!1169518 (= (maxPrefix!3438 thiss!20629 rules!2768 suffix!1176) lt!1378899)))

(declare-fun b!3943014 () Bool)

(declare-fun res!1595661 () Bool)

(declare-fun e!2439842 () Bool)

(assert (=> b!3943014 (=> (not res!1595661) (not e!2439842))))

(assert (=> b!3943014 (= res!1595661 (= (value!207168 (_1!23713 (get!13832 lt!1378899))) (apply!9778 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378899)))) (seqFromList!4806 (originalCharacters!7145 (_1!23713 (get!13832 lt!1378899)))))))))

(declare-fun b!3943015 () Bool)

(declare-fun res!1595666 () Bool)

(assert (=> b!3943015 (=> (not res!1595666) (not e!2439842))))

(assert (=> b!3943015 (= res!1595666 (= (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378899)))) (originalCharacters!7145 (_1!23713 (get!13832 lt!1378899)))))))

(declare-fun b!3943016 () Bool)

(declare-fun call!285088 () Option!8965)

(assert (=> b!3943016 (= e!2439844 call!285088)))

(declare-fun b!3943017 () Bool)

(assert (=> b!3943017 (= e!2439843 e!2439842)))

(declare-fun res!1595667 () Bool)

(assert (=> b!3943017 (=> (not res!1595667) (not e!2439842))))

(assert (=> b!3943017 (= res!1595667 (isDefined!6964 lt!1378899))))

(declare-fun b!3943018 () Bool)

(declare-fun res!1595663 () Bool)

(assert (=> b!3943018 (=> (not res!1595663) (not e!2439842))))

(assert (=> b!3943018 (= res!1595663 (= (++!10847 (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378899)))) (_2!23713 (get!13832 lt!1378899))) suffix!1176))))

(declare-fun b!3943019 () Bool)

(declare-fun res!1595662 () Bool)

(assert (=> b!3943019 (=> (not res!1595662) (not e!2439842))))

(assert (=> b!3943019 (= res!1595662 (< (size!31404 (_2!23713 (get!13832 lt!1378899))) (size!31404 suffix!1176)))))

(declare-fun b!3943020 () Bool)

(assert (=> b!3943020 (= e!2439842 (contains!8384 rules!2768 (rule!9505 (_1!23713 (get!13832 lt!1378899)))))))

(declare-fun b!3943021 () Bool)

(declare-fun lt!1378903 () Option!8965)

(declare-fun lt!1378901 () Option!8965)

(assert (=> b!3943021 (= e!2439844 (ite (and (is-None!8964 lt!1378903) (is-None!8964 lt!1378901)) None!8964 (ite (is-None!8964 lt!1378901) lt!1378903 (ite (is-None!8964 lt!1378903) lt!1378901 (ite (>= (size!31402 (_1!23713 (v!39298 lt!1378903))) (size!31402 (_1!23713 (v!39298 lt!1378901)))) lt!1378903 lt!1378901)))))))

(assert (=> b!3943021 (= lt!1378903 call!285088)))

(assert (=> b!3943021 (= lt!1378901 (maxPrefix!3438 thiss!20629 (t!327081 rules!2768) suffix!1176))))

(declare-fun bm!285083 () Bool)

(assert (=> bm!285083 (= call!285088 (maxPrefixOneRule!2502 thiss!20629 (h!47294 rules!2768) suffix!1176))))

(declare-fun b!3943022 () Bool)

(declare-fun res!1595665 () Bool)

(assert (=> b!3943022 (=> (not res!1595665) (not e!2439842))))

(assert (=> b!3943022 (= res!1595665 (matchR!5497 (regex!6545 (rule!9505 (_1!23713 (get!13832 lt!1378899)))) (list!15549 (charsOf!4363 (_1!23713 (get!13832 lt!1378899))))))))

(assert (= (and d!1169518 c!684964) b!3943016))

(assert (= (and d!1169518 (not c!684964)) b!3943021))

(assert (= (or b!3943016 b!3943021) bm!285083))

(assert (= (and d!1169518 (not res!1595664)) b!3943017))

(assert (= (and b!3943017 res!1595667) b!3943015))

(assert (= (and b!3943015 res!1595666) b!3943019))

(assert (= (and b!3943019 res!1595662) b!3943018))

(assert (= (and b!3943018 res!1595663) b!3943014))

(assert (= (and b!3943014 res!1595661) b!3943022))

(assert (= (and b!3943022 res!1595665) b!3943020))

(declare-fun m!4511669 () Bool)

(assert (=> d!1169518 m!4511669))

(declare-fun m!4511671 () Bool)

(assert (=> d!1169518 m!4511671))

(declare-fun m!4511673 () Bool)

(assert (=> d!1169518 m!4511673))

(assert (=> d!1169518 m!4510993))

(declare-fun m!4511675 () Bool)

(assert (=> b!3943021 m!4511675))

(declare-fun m!4511677 () Bool)

(assert (=> b!3943018 m!4511677))

(declare-fun m!4511679 () Bool)

(assert (=> b!3943018 m!4511679))

(assert (=> b!3943018 m!4511679))

(declare-fun m!4511681 () Bool)

(assert (=> b!3943018 m!4511681))

(assert (=> b!3943018 m!4511681))

(declare-fun m!4511683 () Bool)

(assert (=> b!3943018 m!4511683))

(assert (=> b!3943019 m!4511677))

(declare-fun m!4511685 () Bool)

(assert (=> b!3943019 m!4511685))

(assert (=> b!3943019 m!4510961))

(assert (=> b!3943014 m!4511677))

(declare-fun m!4511687 () Bool)

(assert (=> b!3943014 m!4511687))

(assert (=> b!3943014 m!4511687))

(declare-fun m!4511689 () Bool)

(assert (=> b!3943014 m!4511689))

(assert (=> b!3943022 m!4511677))

(assert (=> b!3943022 m!4511679))

(assert (=> b!3943022 m!4511679))

(assert (=> b!3943022 m!4511681))

(assert (=> b!3943022 m!4511681))

(declare-fun m!4511691 () Bool)

(assert (=> b!3943022 m!4511691))

(assert (=> b!3943015 m!4511677))

(assert (=> b!3943015 m!4511679))

(assert (=> b!3943015 m!4511679))

(assert (=> b!3943015 m!4511681))

(assert (=> b!3943020 m!4511677))

(declare-fun m!4511693 () Bool)

(assert (=> b!3943020 m!4511693))

(declare-fun m!4511695 () Bool)

(assert (=> bm!285083 m!4511695))

(declare-fun m!4511697 () Bool)

(assert (=> b!3943017 m!4511697))

(assert (=> d!1169256 d!1169518))

(declare-fun d!1169520 () Bool)

(declare-fun e!2439846 () Bool)

(assert (=> d!1169520 e!2439846))

(declare-fun res!1595670 () Bool)

(assert (=> d!1169520 (=> res!1595670 e!2439846)))

(declare-fun lt!1378904 () Bool)

(assert (=> d!1169520 (= res!1595670 (not lt!1378904))))

(declare-fun e!2439845 () Bool)

(assert (=> d!1169520 (= lt!1378904 e!2439845)))

(declare-fun res!1595668 () Bool)

(assert (=> d!1169520 (=> res!1595668 e!2439845)))

(assert (=> d!1169520 (= res!1595668 (is-Nil!41872 (tail!6102 lt!1378707)))))

(assert (=> d!1169520 (= (isPrefix!3634 (tail!6102 lt!1378707) (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))) lt!1378904)))

(declare-fun b!3943025 () Bool)

(declare-fun e!2439847 () Bool)

(assert (=> b!3943025 (= e!2439847 (isPrefix!3634 (tail!6102 (tail!6102 lt!1378707)) (tail!6102 (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))))

(declare-fun b!3943024 () Bool)

(declare-fun res!1595669 () Bool)

(assert (=> b!3943024 (=> (not res!1595669) (not e!2439847))))

(assert (=> b!3943024 (= res!1595669 (= (head!8376 (tail!6102 lt!1378707)) (head!8376 (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))))

(declare-fun b!3943023 () Bool)

(assert (=> b!3943023 (= e!2439845 e!2439847)))

(declare-fun res!1595671 () Bool)

(assert (=> b!3943023 (=> (not res!1595671) (not e!2439847))))

(assert (=> b!3943023 (= res!1595671 (not (is-Nil!41872 (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))))

(declare-fun b!3943026 () Bool)

(assert (=> b!3943026 (= e!2439846 (>= (size!31404 (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706))))) (size!31404 (tail!6102 lt!1378707))))))

(assert (= (and d!1169520 (not res!1595668)) b!3943023))

(assert (= (and b!3943023 res!1595671) b!3943024))

(assert (= (and b!3943024 res!1595669) b!3943025))

(assert (= (and d!1169520 (not res!1595670)) b!3943026))

(assert (=> b!3943025 m!4511031))

(assert (=> b!3943025 m!4511363))

(assert (=> b!3943025 m!4511033))

(declare-fun m!4511699 () Bool)

(assert (=> b!3943025 m!4511699))

(assert (=> b!3943025 m!4511363))

(assert (=> b!3943025 m!4511699))

(declare-fun m!4511701 () Bool)

(assert (=> b!3943025 m!4511701))

(assert (=> b!3943024 m!4511031))

(assert (=> b!3943024 m!4511369))

(assert (=> b!3943024 m!4511033))

(declare-fun m!4511703 () Bool)

(assert (=> b!3943024 m!4511703))

(assert (=> b!3943026 m!4511033))

(declare-fun m!4511705 () Bool)

(assert (=> b!3943026 m!4511705))

(assert (=> b!3943026 m!4511031))

(assert (=> b!3943026 m!4511375))

(assert (=> b!3942458 d!1169520))

(assert (=> b!3942458 d!1169374))

(declare-fun d!1169522 () Bool)

(assert (=> d!1169522 (= (tail!6102 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))) (t!327079 (++!10847 lt!1378707 (_2!23713 (v!39298 lt!1378706)))))))

(assert (=> b!3942458 d!1169522))

(declare-fun d!1169524 () Bool)

(declare-fun lt!1378905 () Int)

(assert (=> d!1169524 (>= lt!1378905 0)))

(declare-fun e!2439848 () Int)

(assert (=> d!1169524 (= lt!1378905 e!2439848)))

(declare-fun c!684965 () Bool)

(assert (=> d!1169524 (= c!684965 (is-Nil!41872 (originalCharacters!7145 (h!47293 prefixTokens!80))))))

(assert (=> d!1169524 (= (size!31404 (originalCharacters!7145 (h!47293 prefixTokens!80))) lt!1378905)))

(declare-fun b!3943027 () Bool)

(assert (=> b!3943027 (= e!2439848 0)))

(declare-fun b!3943028 () Bool)

(assert (=> b!3943028 (= e!2439848 (+ 1 (size!31404 (t!327079 (originalCharacters!7145 (h!47293 prefixTokens!80))))))))

(assert (= (and d!1169524 c!684965) b!3943027))

(assert (= (and d!1169524 (not c!684965)) b!3943028))

(declare-fun m!4511707 () Bool)

(assert (=> b!3943028 m!4511707))

(assert (=> b!3942362 d!1169524))

(declare-fun d!1169526 () Bool)

(declare-fun c!684966 () Bool)

(assert (=> d!1169526 (= c!684966 (is-Nil!41872 lt!1378769))))

(declare-fun e!2439849 () (Set C!23086))

(assert (=> d!1169526 (= (content!6328 lt!1378769) e!2439849)))

(declare-fun b!3943029 () Bool)

(assert (=> b!3943029 (= e!2439849 (as set.empty (Set C!23086)))))

(declare-fun b!3943030 () Bool)

(assert (=> b!3943030 (= e!2439849 (set.union (set.insert (h!47292 lt!1378769) (as set.empty (Set C!23086))) (content!6328 (t!327079 lt!1378769))))))

(assert (= (and d!1169526 c!684966) b!3943029))

(assert (= (and d!1169526 (not c!684966)) b!3943030))

(declare-fun m!4511709 () Bool)

(assert (=> b!3943030 m!4511709))

(declare-fun m!4511711 () Bool)

(assert (=> b!3943030 m!4511711))

(assert (=> d!1169284 d!1169526))

(declare-fun d!1169528 () Bool)

(declare-fun c!684967 () Bool)

(assert (=> d!1169528 (= c!684967 (is-Nil!41872 lt!1378707))))

(declare-fun e!2439850 () (Set C!23086))

(assert (=> d!1169528 (= (content!6328 lt!1378707) e!2439850)))

(declare-fun b!3943031 () Bool)

(assert (=> b!3943031 (= e!2439850 (as set.empty (Set C!23086)))))

(declare-fun b!3943032 () Bool)

(assert (=> b!3943032 (= e!2439850 (set.union (set.insert (h!47292 lt!1378707) (as set.empty (Set C!23086))) (content!6328 (t!327079 lt!1378707))))))

(assert (= (and d!1169528 c!684967) b!3943031))

(assert (= (and d!1169528 (not c!684967)) b!3943032))

(declare-fun m!4511713 () Bool)

(assert (=> b!3943032 m!4511713))

(assert (=> b!3943032 m!4511379))

(assert (=> d!1169284 d!1169528))

(declare-fun d!1169530 () Bool)

(declare-fun c!684968 () Bool)

(assert (=> d!1169530 (= c!684968 (is-Nil!41872 (_2!23713 (v!39298 lt!1378706))))))

(declare-fun e!2439851 () (Set C!23086))

(assert (=> d!1169530 (= (content!6328 (_2!23713 (v!39298 lt!1378706))) e!2439851)))

(declare-fun b!3943033 () Bool)

(assert (=> b!3943033 (= e!2439851 (as set.empty (Set C!23086)))))

(declare-fun b!3943034 () Bool)

(assert (=> b!3943034 (= e!2439851 (set.union (set.insert (h!47292 (_2!23713 (v!39298 lt!1378706))) (as set.empty (Set C!23086))) (content!6328 (t!327079 (_2!23713 (v!39298 lt!1378706))))))))

(assert (= (and d!1169530 c!684968) b!3943033))

(assert (= (and d!1169530 (not c!684968)) b!3943034))

(declare-fun m!4511715 () Bool)

(assert (=> b!3943034 m!4511715))

(declare-fun m!4511717 () Bool)

(assert (=> b!3943034 m!4511717))

(assert (=> d!1169284 d!1169530))

(declare-fun d!1169532 () Bool)

(declare-fun c!684971 () Bool)

(assert (=> d!1169532 (= c!684971 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(declare-fun e!2439856 () Bool)

(assert (=> d!1169532 (= (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))) e!2439856)))

(declare-fun b!3943041 () Bool)

(declare-fun inv!56090 (Conc!12756) Bool)

(assert (=> b!3943041 (= e!2439856 (inv!56090 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(declare-fun b!3943042 () Bool)

(declare-fun e!2439857 () Bool)

(assert (=> b!3943042 (= e!2439856 e!2439857)))

(declare-fun res!1595674 () Bool)

(assert (=> b!3943042 (= res!1595674 (not (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))))))

(assert (=> b!3943042 (=> res!1595674 e!2439857)))

(declare-fun b!3943043 () Bool)

(declare-fun inv!56091 (Conc!12756) Bool)

(assert (=> b!3943043 (= e!2439857 (inv!56091 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(assert (= (and d!1169532 c!684971) b!3943041))

(assert (= (and d!1169532 (not c!684971)) b!3943042))

(assert (= (and b!3943042 (not res!1595674)) b!3943043))

(declare-fun m!4511719 () Bool)

(assert (=> b!3943041 m!4511719))

(declare-fun m!4511721 () Bool)

(assert (=> b!3943043 m!4511721))

(assert (=> b!3942367 d!1169532))

(declare-fun bs!586723 () Bool)

(declare-fun d!1169534 () Bool)

(assert (= bs!586723 (and d!1169534 d!1169388)))

(declare-fun lambda!126681 () Int)

(assert (=> bs!586723 (= lambda!126681 lambda!126670)))

(assert (=> d!1169534 true))

(declare-fun lt!1378908 () Bool)

(assert (=> d!1169534 (= lt!1378908 (rulesValidInductive!2365 thiss!20629 rules!2768))))

(assert (=> d!1169534 (= lt!1378908 (forall!8320 rules!2768 lambda!126681))))

(assert (=> d!1169534 (= (rulesValid!2552 thiss!20629 rules!2768) lt!1378908)))

(declare-fun bs!586724 () Bool)

(assert (= bs!586724 d!1169534))

(assert (=> bs!586724 m!4510993))

(declare-fun m!4511723 () Bool)

(assert (=> bs!586724 m!4511723))

(assert (=> d!1169260 d!1169534))

(declare-fun d!1169536 () Bool)

(declare-fun c!684972 () Bool)

(assert (=> d!1169536 (= c!684972 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))))))

(declare-fun e!2439858 () Bool)

(assert (=> d!1169536 (= (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))) e!2439858)))

(declare-fun b!3943044 () Bool)

(assert (=> b!3943044 (= e!2439858 (inv!56090 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))))))

(declare-fun b!3943045 () Bool)

(declare-fun e!2439859 () Bool)

(assert (=> b!3943045 (= e!2439858 e!2439859)))

(declare-fun res!1595675 () Bool)

(assert (=> b!3943045 (= res!1595675 (not (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))))))

(assert (=> b!3943045 (=> res!1595675 e!2439859)))

(declare-fun b!3943046 () Bool)

(assert (=> b!3943046 (= e!2439859 (inv!56091 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))))))

(assert (= (and d!1169536 c!684972) b!3943044))

(assert (= (and d!1169536 (not c!684972)) b!3943045))

(assert (= (and b!3943045 (not res!1595675)) b!3943046))

(declare-fun m!4511725 () Bool)

(assert (=> b!3943044 m!4511725))

(declare-fun m!4511727 () Bool)

(assert (=> b!3943046 m!4511727))

(assert (=> b!3942472 d!1169536))

(declare-fun b!3943047 () Bool)

(declare-fun e!2439860 () Bool)

(assert (=> b!3943047 (= e!2439860 (inv!16 (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))

(declare-fun b!3943048 () Bool)

(declare-fun res!1595676 () Bool)

(declare-fun e!2439861 () Bool)

(assert (=> b!3943048 (=> res!1595676 e!2439861)))

(assert (=> b!3943048 (= res!1595676 (not (is-IntegerValue!20327 (value!207168 (h!47293 (t!327080 prefixTokens!80))))))))

(declare-fun e!2439862 () Bool)

(assert (=> b!3943048 (= e!2439862 e!2439861)))

(declare-fun b!3943049 () Bool)

(assert (=> b!3943049 (= e!2439860 e!2439862)))

(declare-fun c!684973 () Bool)

(assert (=> b!3943049 (= c!684973 (is-IntegerValue!20326 (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))

(declare-fun d!1169538 () Bool)

(declare-fun c!684974 () Bool)

(assert (=> d!1169538 (= c!684974 (is-IntegerValue!20325 (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))

(assert (=> d!1169538 (= (inv!21 (value!207168 (h!47293 (t!327080 prefixTokens!80)))) e!2439860)))

(declare-fun b!3943050 () Bool)

(assert (=> b!3943050 (= e!2439861 (inv!15 (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))

(declare-fun b!3943051 () Bool)

(assert (=> b!3943051 (= e!2439862 (inv!17 (value!207168 (h!47293 (t!327080 prefixTokens!80)))))))

(assert (= (and d!1169538 c!684974) b!3943047))

(assert (= (and d!1169538 (not c!684974)) b!3943049))

(assert (= (and b!3943049 c!684973) b!3943051))

(assert (= (and b!3943049 (not c!684973)) b!3943048))

(assert (= (and b!3943048 (not res!1595676)) b!3943050))

(declare-fun m!4511729 () Bool)

(assert (=> b!3943047 m!4511729))

(declare-fun m!4511731 () Bool)

(assert (=> b!3943050 m!4511731))

(declare-fun m!4511733 () Bool)

(assert (=> b!3943051 m!4511733))

(assert (=> b!3942558 d!1169538))

(declare-fun d!1169540 () Bool)

(declare-fun lt!1378909 () List!41996)

(assert (=> d!1169540 (= (++!10847 (t!327079 lt!1378707) lt!1378909) (tail!6102 lt!1378708))))

(declare-fun e!2439863 () List!41996)

(assert (=> d!1169540 (= lt!1378909 e!2439863)))

(declare-fun c!684975 () Bool)

(assert (=> d!1169540 (= c!684975 (is-Cons!41872 (t!327079 lt!1378707)))))

(assert (=> d!1169540 (>= (size!31404 (tail!6102 lt!1378708)) (size!31404 (t!327079 lt!1378707)))))

(assert (=> d!1169540 (= (getSuffix!2085 (tail!6102 lt!1378708) (t!327079 lt!1378707)) lt!1378909)))

(declare-fun b!3943052 () Bool)

(assert (=> b!3943052 (= e!2439863 (getSuffix!2085 (tail!6102 (tail!6102 lt!1378708)) (t!327079 (t!327079 lt!1378707))))))

(declare-fun b!3943053 () Bool)

(assert (=> b!3943053 (= e!2439863 (tail!6102 lt!1378708))))

(assert (= (and d!1169540 c!684975) b!3943052))

(assert (= (and d!1169540 (not c!684975)) b!3943053))

(declare-fun m!4511735 () Bool)

(assert (=> d!1169540 m!4511735))

(assert (=> d!1169540 m!4511073))

(assert (=> d!1169540 m!4511373))

(assert (=> d!1169540 m!4511385))

(assert (=> b!3943052 m!4511073))

(assert (=> b!3943052 m!4511365))

(assert (=> b!3943052 m!4511365))

(declare-fun m!4511737 () Bool)

(assert (=> b!3943052 m!4511737))

(assert (=> b!3942477 d!1169540))

(assert (=> b!3942477 d!1169376))

(declare-fun d!1169542 () Bool)

(assert (=> d!1169542 (= (isEmpty!24983 (_1!23714 lt!1378785)) (is-Nil!41873 (_1!23714 lt!1378785)))))

(assert (=> b!3942501 d!1169542))

(declare-fun d!1169544 () Bool)

(declare-fun lt!1378910 () Int)

(assert (=> d!1169544 (>= lt!1378910 0)))

(declare-fun e!2439864 () Int)

(assert (=> d!1169544 (= lt!1378910 e!2439864)))

(declare-fun c!684976 () Bool)

(assert (=> d!1169544 (= c!684976 (is-Nil!41872 (_2!23714 lt!1378742)))))

(assert (=> d!1169544 (= (size!31404 (_2!23714 lt!1378742)) lt!1378910)))

(declare-fun b!3943054 () Bool)

(assert (=> b!3943054 (= e!2439864 0)))

(declare-fun b!3943055 () Bool)

(assert (=> b!3943055 (= e!2439864 (+ 1 (size!31404 (t!327079 (_2!23714 lt!1378742)))))))

(assert (= (and d!1169544 c!684976) b!3943054))

(assert (= (and d!1169544 (not c!684976)) b!3943055))

(declare-fun m!4511739 () Bool)

(assert (=> b!3943055 m!4511739))

(assert (=> b!3942390 d!1169544))

(assert (=> b!3942390 d!1169424))

(declare-fun bs!586725 () Bool)

(declare-fun d!1169546 () Bool)

(assert (= bs!586725 (and d!1169546 d!1169404)))

(declare-fun lambda!126682 () Int)

(assert (=> bs!586725 (= (and (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))))) (= lambda!126682 lambda!126673))))

(declare-fun bs!586726 () Bool)

(assert (= bs!586726 (and d!1169546 d!1169416)))

(assert (=> bs!586726 (= (and (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (h!47294 rules!2768)))) (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (h!47294 rules!2768))))) (= lambda!126682 lambda!126674))))

(assert (=> d!1169546 true))

(assert (=> d!1169546 (< (dynLambda!17932 order!22335 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (dynLambda!17933 order!22337 lambda!126682))))

(assert (=> d!1169546 true))

(assert (=> d!1169546 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (dynLambda!17933 order!22337 lambda!126682))))

(assert (=> d!1169546 (= (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (Forall!1453 lambda!126682))))

(declare-fun bs!586727 () Bool)

(assert (= bs!586727 d!1169546))

(declare-fun m!4511741 () Bool)

(assert (=> bs!586727 m!4511741))

(assert (=> d!1169298 d!1169546))

(declare-fun d!1169548 () Bool)

(assert (=> d!1169548 (= (list!15549 lt!1378772) (list!15551 (c!684842 lt!1378772)))))

(declare-fun bs!586728 () Bool)

(assert (= bs!586728 d!1169548))

(declare-fun m!4511743 () Bool)

(assert (=> bs!586728 m!4511743))

(assert (=> d!1169286 d!1169548))

(declare-fun d!1169550 () Bool)

(declare-fun res!1595677 () Bool)

(declare-fun e!2439865 () Bool)

(assert (=> d!1169550 (=> (not res!1595677) (not e!2439865))))

(assert (=> d!1169550 (= res!1595677 (not (isEmpty!24985 (originalCharacters!7145 (h!47293 (t!327080 suffixTokens!72))))))))

(assert (=> d!1169550 (= (inv!56082 (h!47293 (t!327080 suffixTokens!72))) e!2439865)))

(declare-fun b!3943056 () Bool)

(declare-fun res!1595678 () Bool)

(assert (=> b!3943056 (=> (not res!1595678) (not e!2439865))))

(assert (=> b!3943056 (= res!1595678 (= (originalCharacters!7145 (h!47293 (t!327080 suffixTokens!72))) (list!15549 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (value!207168 (h!47293 (t!327080 suffixTokens!72)))))))))

(declare-fun b!3943057 () Bool)

(assert (=> b!3943057 (= e!2439865 (= (size!31402 (h!47293 (t!327080 suffixTokens!72))) (size!31404 (originalCharacters!7145 (h!47293 (t!327080 suffixTokens!72))))))))

(assert (= (and d!1169550 res!1595677) b!3943056))

(assert (= (and b!3943056 res!1595678) b!3943057))

(declare-fun b_lambda!115313 () Bool)

(assert (=> (not b_lambda!115313) (not b!3943056)))

(declare-fun t!327198 () Bool)

(declare-fun tb!236465 () Bool)

(assert (=> (and b!3942594 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327198) tb!236465))

(declare-fun b!3943058 () Bool)

(declare-fun e!2439866 () Bool)

(declare-fun tp!1200113 () Bool)

(assert (=> b!3943058 (= e!2439866 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (value!207168 (h!47293 (t!327080 suffixTokens!72)))))) tp!1200113))))

(declare-fun result!286452 () Bool)

(assert (=> tb!236465 (= result!286452 (and (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (value!207168 (h!47293 (t!327080 suffixTokens!72))))) e!2439866))))

(assert (= tb!236465 b!3943058))

(declare-fun m!4511745 () Bool)

(assert (=> b!3943058 m!4511745))

(declare-fun m!4511747 () Bool)

(assert (=> tb!236465 m!4511747))

(assert (=> b!3943056 t!327198))

(declare-fun b_and!301451 () Bool)

(assert (= b_and!301427 (and (=> t!327198 result!286452) b_and!301451)))

(declare-fun tb!236467 () Bool)

(declare-fun t!327200 () Bool)

(assert (=> (and b!3942605 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327200) tb!236467))

(declare-fun result!286454 () Bool)

(assert (= result!286454 result!286452))

(assert (=> b!3943056 t!327200))

(declare-fun b_and!301453 () Bool)

(assert (= b_and!301429 (and (=> t!327200 result!286454) b_and!301453)))

(declare-fun tb!236469 () Bool)

(declare-fun t!327202 () Bool)

(assert (=> (and b!3942560 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327202) tb!236469))

(declare-fun result!286456 () Bool)

(assert (= result!286456 result!286452))

(assert (=> b!3943056 t!327202))

(declare-fun b_and!301455 () Bool)

(assert (= b_and!301431 (and (=> t!327202 result!286456) b_and!301455)))

(declare-fun t!327204 () Bool)

(declare-fun tb!236471 () Bool)

(assert (=> (and b!3942277 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327204) tb!236471))

(declare-fun result!286458 () Bool)

(assert (= result!286458 result!286452))

(assert (=> b!3943056 t!327204))

(declare-fun b_and!301457 () Bool)

(assert (= b_and!301435 (and (=> t!327204 result!286458) b_and!301457)))

(declare-fun tb!236473 () Bool)

(declare-fun t!327206 () Bool)

(assert (=> (and b!3942290 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327206) tb!236473))

(declare-fun result!286460 () Bool)

(assert (= result!286460 result!286452))

(assert (=> b!3943056 t!327206))

(declare-fun b_and!301459 () Bool)

(assert (= b_and!301437 (and (=> t!327206 result!286460) b_and!301459)))

(declare-fun t!327208 () Bool)

(declare-fun tb!236475 () Bool)

(assert (=> (and b!3942272 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327208) tb!236475))

(declare-fun result!286462 () Bool)

(assert (= result!286462 result!286452))

(assert (=> b!3943056 t!327208))

(declare-fun b_and!301461 () Bool)

(assert (= b_and!301433 (and (=> t!327208 result!286462) b_and!301461)))

(declare-fun m!4511749 () Bool)

(assert (=> d!1169550 m!4511749))

(declare-fun m!4511751 () Bool)

(assert (=> b!3943056 m!4511751))

(assert (=> b!3943056 m!4511751))

(declare-fun m!4511753 () Bool)

(assert (=> b!3943056 m!4511753))

(declare-fun m!4511755 () Bool)

(assert (=> b!3943057 m!4511755))

(assert (=> b!3942591 d!1169550))

(declare-fun bs!586729 () Bool)

(declare-fun d!1169552 () Bool)

(assert (= bs!586729 (and d!1169552 d!1169454)))

(declare-fun lambda!126683 () Int)

(assert (=> bs!586729 (= (= (toValue!9009 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) (= lambda!126683 lambda!126677))))

(declare-fun bs!586730 () Bool)

(assert (= bs!586730 (and d!1169552 d!1169504)))

(assert (=> bs!586730 (= (= (toValue!9009 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) (= lambda!126683 lambda!126678))))

(assert (=> d!1169552 true))

(assert (=> d!1169552 (< (dynLambda!17934 order!22339 (toValue!9009 (transformation!6545 (h!47294 rules!2768)))) (dynLambda!17935 order!22341 lambda!126683))))

(assert (=> d!1169552 (= (equivClasses!2717 (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toValue!9009 (transformation!6545 (h!47294 rules!2768)))) (Forall2!1052 lambda!126683))))

(declare-fun bs!586731 () Bool)

(assert (= bs!586731 d!1169552))

(declare-fun m!4511757 () Bool)

(assert (=> bs!586731 m!4511757))

(assert (=> b!3942441 d!1169552))

(declare-fun b!3943059 () Bool)

(declare-fun e!2439868 () tuple2!41160)

(assert (=> b!3943059 (= e!2439868 (tuple2!41161 Nil!41873 (_2!23713 (v!39298 lt!1378740))))))

(declare-fun d!1169554 () Bool)

(declare-fun e!2439869 () Bool)

(assert (=> d!1169554 e!2439869))

(declare-fun c!684978 () Bool)

(declare-fun lt!1378913 () tuple2!41160)

(assert (=> d!1169554 (= c!684978 (> (size!31405 (_1!23714 lt!1378913)) 0))))

(assert (=> d!1169554 (= lt!1378913 e!2439868)))

(declare-fun c!684977 () Bool)

(declare-fun lt!1378911 () Option!8965)

(assert (=> d!1169554 (= c!684977 (is-Some!8964 lt!1378911))))

(assert (=> d!1169554 (= lt!1378911 (maxPrefix!3438 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378740))))))

(assert (=> d!1169554 (= (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378740))) lt!1378913)))

(declare-fun b!3943060 () Bool)

(declare-fun e!2439867 () Bool)

(assert (=> b!3943060 (= e!2439867 (not (isEmpty!24983 (_1!23714 lt!1378913))))))

(declare-fun b!3943061 () Bool)

(assert (=> b!3943061 (= e!2439869 e!2439867)))

(declare-fun res!1595679 () Bool)

(assert (=> b!3943061 (= res!1595679 (< (size!31404 (_2!23714 lt!1378913)) (size!31404 (_2!23713 (v!39298 lt!1378740)))))))

(assert (=> b!3943061 (=> (not res!1595679) (not e!2439867))))

(declare-fun b!3943062 () Bool)

(assert (=> b!3943062 (= e!2439869 (= (_2!23714 lt!1378913) (_2!23713 (v!39298 lt!1378740))))))

(declare-fun b!3943063 () Bool)

(declare-fun lt!1378912 () tuple2!41160)

(assert (=> b!3943063 (= e!2439868 (tuple2!41161 (Cons!41873 (_1!23713 (v!39298 lt!1378911)) (_1!23714 lt!1378912)) (_2!23714 lt!1378912)))))

(assert (=> b!3943063 (= lt!1378912 (lexList!1902 thiss!20629 rules!2768 (_2!23713 (v!39298 lt!1378911))))))

(assert (= (and d!1169554 c!684977) b!3943063))

(assert (= (and d!1169554 (not c!684977)) b!3943059))

(assert (= (and d!1169554 c!684978) b!3943061))

(assert (= (and d!1169554 (not c!684978)) b!3943062))

(assert (= (and b!3943061 res!1595679) b!3943060))

(declare-fun m!4511759 () Bool)

(assert (=> d!1169554 m!4511759))

(declare-fun m!4511761 () Bool)

(assert (=> d!1169554 m!4511761))

(declare-fun m!4511763 () Bool)

(assert (=> b!3943060 m!4511763))

(declare-fun m!4511765 () Bool)

(assert (=> b!3943061 m!4511765))

(declare-fun m!4511767 () Bool)

(assert (=> b!3943061 m!4511767))

(declare-fun m!4511769 () Bool)

(assert (=> b!3943063 m!4511769))

(assert (=> b!3942392 d!1169554))

(declare-fun d!1169556 () Bool)

(declare-fun c!684979 () Bool)

(assert (=> d!1169556 (= c!684979 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(declare-fun e!2439870 () Bool)

(assert (=> d!1169556 (= (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))) e!2439870)))

(declare-fun b!3943064 () Bool)

(assert (=> b!3943064 (= e!2439870 (inv!56090 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(declare-fun b!3943065 () Bool)

(declare-fun e!2439871 () Bool)

(assert (=> b!3943065 (= e!2439870 e!2439871)))

(declare-fun res!1595680 () Bool)

(assert (=> b!3943065 (= res!1595680 (not (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))))))

(assert (=> b!3943065 (=> res!1595680 e!2439871)))

(declare-fun b!3943066 () Bool)

(assert (=> b!3943066 (= e!2439871 (inv!56091 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))))))

(assert (= (and d!1169556 c!684979) b!3943064))

(assert (= (and d!1169556 (not c!684979)) b!3943065))

(assert (= (and b!3943065 (not res!1595680)) b!3943066))

(declare-fun m!4511771 () Bool)

(assert (=> b!3943064 m!4511771))

(declare-fun m!4511773 () Bool)

(assert (=> b!3943066 m!4511773))

(assert (=> b!3942541 d!1169556))

(declare-fun d!1169558 () Bool)

(assert (=> d!1169558 (= (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (= (mod (str.len (value!207167 (tag!7405 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3942593 d!1169558))

(declare-fun d!1169560 () Bool)

(declare-fun res!1595681 () Bool)

(declare-fun e!2439872 () Bool)

(assert (=> d!1169560 (=> (not res!1595681) (not e!2439872))))

(assert (=> d!1169560 (= res!1595681 (semiInverseModEq!2818 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))))))

(assert (=> d!1169560 (= (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) e!2439872)))

(declare-fun b!3943067 () Bool)

(assert (=> b!3943067 (= e!2439872 (equivClasses!2717 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))))))

(assert (= (and d!1169560 res!1595681) b!3943067))

(declare-fun m!4511775 () Bool)

(assert (=> d!1169560 m!4511775))

(declare-fun m!4511777 () Bool)

(assert (=> b!3943067 m!4511777))

(assert (=> b!3942593 d!1169560))

(declare-fun d!1169562 () Bool)

(assert (=> d!1169562 (= (inv!56087 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))) (isBalanced!3644 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))))))

(declare-fun bs!586732 () Bool)

(assert (= bs!586732 d!1169562))

(declare-fun m!4511779 () Bool)

(assert (=> bs!586732 m!4511779))

(assert (=> tb!236357 d!1169562))

(declare-fun d!1169564 () Bool)

(declare-fun c!684982 () Bool)

(assert (=> d!1169564 (= c!684982 (is-Nil!41873 lt!1378792))))

(declare-fun e!2439875 () (Set Token!12228))

(assert (=> d!1169564 (= (content!6329 lt!1378792) e!2439875)))

(declare-fun b!3943072 () Bool)

(assert (=> b!3943072 (= e!2439875 (as set.empty (Set Token!12228)))))

(declare-fun b!3943073 () Bool)

(assert (=> b!3943073 (= e!2439875 (set.union (set.insert (h!47293 lt!1378792) (as set.empty (Set Token!12228))) (content!6329 (t!327080 lt!1378792))))))

(assert (= (and d!1169564 c!684982) b!3943072))

(assert (= (and d!1169564 (not c!684982)) b!3943073))

(declare-fun m!4511781 () Bool)

(assert (=> b!3943073 m!4511781))

(declare-fun m!4511783 () Bool)

(assert (=> b!3943073 m!4511783))

(assert (=> d!1169308 d!1169564))

(declare-fun d!1169566 () Bool)

(declare-fun c!684983 () Bool)

(assert (=> d!1169566 (= c!684983 (is-Nil!41873 prefixTokens!80))))

(declare-fun e!2439876 () (Set Token!12228))

(assert (=> d!1169566 (= (content!6329 prefixTokens!80) e!2439876)))

(declare-fun b!3943074 () Bool)

(assert (=> b!3943074 (= e!2439876 (as set.empty (Set Token!12228)))))

(declare-fun b!3943075 () Bool)

(assert (=> b!3943075 (= e!2439876 (set.union (set.insert (h!47293 prefixTokens!80) (as set.empty (Set Token!12228))) (content!6329 (t!327080 prefixTokens!80))))))

(assert (= (and d!1169566 c!684983) b!3943074))

(assert (= (and d!1169566 (not c!684983)) b!3943075))

(declare-fun m!4511785 () Bool)

(assert (=> b!3943075 m!4511785))

(assert (=> b!3943075 m!4511425))

(assert (=> d!1169308 d!1169566))

(declare-fun d!1169568 () Bool)

(declare-fun c!684984 () Bool)

(assert (=> d!1169568 (= c!684984 (is-Nil!41873 suffixTokens!72))))

(declare-fun e!2439877 () (Set Token!12228))

(assert (=> d!1169568 (= (content!6329 suffixTokens!72) e!2439877)))

(declare-fun b!3943076 () Bool)

(assert (=> b!3943076 (= e!2439877 (as set.empty (Set Token!12228)))))

(declare-fun b!3943077 () Bool)

(assert (=> b!3943077 (= e!2439877 (set.union (set.insert (h!47293 suffixTokens!72) (as set.empty (Set Token!12228))) (content!6329 (t!327080 suffixTokens!72))))))

(assert (= (and d!1169568 c!684984) b!3943076))

(assert (= (and d!1169568 (not c!684984)) b!3943077))

(declare-fun m!4511787 () Bool)

(assert (=> b!3943077 m!4511787))

(declare-fun m!4511789 () Bool)

(assert (=> b!3943077 m!4511789))

(assert (=> d!1169308 d!1169568))

(declare-fun d!1169570 () Bool)

(assert (=> d!1169570 (= (inv!16 (value!207168 (h!47293 prefixTokens!80))) (= (charsToInt!0 (text!47872 (value!207168 (h!47293 prefixTokens!80)))) (value!207159 (value!207168 (h!47293 prefixTokens!80)))))))

(declare-fun bs!586733 () Bool)

(assert (= bs!586733 d!1169570))

(declare-fun m!4511791 () Bool)

(assert (=> bs!586733 m!4511791))

(assert (=> b!3942542 d!1169570))

(declare-fun b!3943079 () Bool)

(declare-fun e!2439878 () Bool)

(declare-fun tp!1200118 () Bool)

(declare-fun tp!1200117 () Bool)

(assert (=> b!3943079 (= e!2439878 (and tp!1200118 tp!1200117))))

(declare-fun b!3943080 () Bool)

(declare-fun tp!1200115 () Bool)

(assert (=> b!3943080 (= e!2439878 tp!1200115)))

(assert (=> b!3942578 (= tp!1200014 e!2439878)))

(declare-fun b!3943078 () Bool)

(assert (=> b!3943078 (= e!2439878 tp_is_empty!19871)))

(declare-fun b!3943081 () Bool)

(declare-fun tp!1200114 () Bool)

(declare-fun tp!1200116 () Bool)

(assert (=> b!3943081 (= e!2439878 (and tp!1200114 tp!1200116))))

(assert (= (and b!3942578 (is-ElementMatch!11450 (regOne!23412 (regex!6545 (h!47294 rules!2768))))) b!3943078))

(assert (= (and b!3942578 (is-Concat!18226 (regOne!23412 (regex!6545 (h!47294 rules!2768))))) b!3943079))

(assert (= (and b!3942578 (is-Star!11450 (regOne!23412 (regex!6545 (h!47294 rules!2768))))) b!3943080))

(assert (= (and b!3942578 (is-Union!11450 (regOne!23412 (regex!6545 (h!47294 rules!2768))))) b!3943081))

(declare-fun b!3943083 () Bool)

(declare-fun e!2439879 () Bool)

(declare-fun tp!1200123 () Bool)

(declare-fun tp!1200122 () Bool)

(assert (=> b!3943083 (= e!2439879 (and tp!1200123 tp!1200122))))

(declare-fun b!3943084 () Bool)

(declare-fun tp!1200120 () Bool)

(assert (=> b!3943084 (= e!2439879 tp!1200120)))

(assert (=> b!3942578 (= tp!1200013 e!2439879)))

(declare-fun b!3943082 () Bool)

(assert (=> b!3943082 (= e!2439879 tp_is_empty!19871)))

(declare-fun b!3943085 () Bool)

(declare-fun tp!1200119 () Bool)

(declare-fun tp!1200121 () Bool)

(assert (=> b!3943085 (= e!2439879 (and tp!1200119 tp!1200121))))

(assert (= (and b!3942578 (is-ElementMatch!11450 (regTwo!23412 (regex!6545 (h!47294 rules!2768))))) b!3943082))

(assert (= (and b!3942578 (is-Concat!18226 (regTwo!23412 (regex!6545 (h!47294 rules!2768))))) b!3943083))

(assert (= (and b!3942578 (is-Star!11450 (regTwo!23412 (regex!6545 (h!47294 rules!2768))))) b!3943084))

(assert (= (and b!3942578 (is-Union!11450 (regTwo!23412 (regex!6545 (h!47294 rules!2768))))) b!3943085))

(declare-fun b!3943087 () Bool)

(declare-fun e!2439880 () Bool)

(declare-fun tp!1200128 () Bool)

(declare-fun tp!1200127 () Bool)

(assert (=> b!3943087 (= e!2439880 (and tp!1200128 tp!1200127))))

(declare-fun b!3943088 () Bool)

(declare-fun tp!1200125 () Bool)

(assert (=> b!3943088 (= e!2439880 tp!1200125)))

(assert (=> b!3942580 (= tp!1200010 e!2439880)))

(declare-fun b!3943086 () Bool)

(assert (=> b!3943086 (= e!2439880 tp_is_empty!19871)))

(declare-fun b!3943089 () Bool)

(declare-fun tp!1200124 () Bool)

(declare-fun tp!1200126 () Bool)

(assert (=> b!3943089 (= e!2439880 (and tp!1200124 tp!1200126))))

(assert (= (and b!3942580 (is-ElementMatch!11450 (regOne!23413 (regex!6545 (h!47294 rules!2768))))) b!3943086))

(assert (= (and b!3942580 (is-Concat!18226 (regOne!23413 (regex!6545 (h!47294 rules!2768))))) b!3943087))

(assert (= (and b!3942580 (is-Star!11450 (regOne!23413 (regex!6545 (h!47294 rules!2768))))) b!3943088))

(assert (= (and b!3942580 (is-Union!11450 (regOne!23413 (regex!6545 (h!47294 rules!2768))))) b!3943089))

(declare-fun b!3943091 () Bool)

(declare-fun e!2439881 () Bool)

(declare-fun tp!1200133 () Bool)

(declare-fun tp!1200132 () Bool)

(assert (=> b!3943091 (= e!2439881 (and tp!1200133 tp!1200132))))

(declare-fun b!3943092 () Bool)

(declare-fun tp!1200130 () Bool)

(assert (=> b!3943092 (= e!2439881 tp!1200130)))

(assert (=> b!3942580 (= tp!1200012 e!2439881)))

(declare-fun b!3943090 () Bool)

(assert (=> b!3943090 (= e!2439881 tp_is_empty!19871)))

(declare-fun b!3943093 () Bool)

(declare-fun tp!1200129 () Bool)

(declare-fun tp!1200131 () Bool)

(assert (=> b!3943093 (= e!2439881 (and tp!1200129 tp!1200131))))

(assert (= (and b!3942580 (is-ElementMatch!11450 (regTwo!23413 (regex!6545 (h!47294 rules!2768))))) b!3943090))

(assert (= (and b!3942580 (is-Concat!18226 (regTwo!23413 (regex!6545 (h!47294 rules!2768))))) b!3943091))

(assert (= (and b!3942580 (is-Star!11450 (regTwo!23413 (regex!6545 (h!47294 rules!2768))))) b!3943092))

(assert (= (and b!3942580 (is-Union!11450 (regTwo!23413 (regex!6545 (h!47294 rules!2768))))) b!3943093))

(declare-fun b!3943095 () Bool)

(declare-fun e!2439882 () Bool)

(declare-fun tp!1200138 () Bool)

(declare-fun tp!1200137 () Bool)

(assert (=> b!3943095 (= e!2439882 (and tp!1200138 tp!1200137))))

(declare-fun b!3943096 () Bool)

(declare-fun tp!1200135 () Bool)

(assert (=> b!3943096 (= e!2439882 tp!1200135)))

(assert (=> b!3942587 (= tp!1200025 e!2439882)))

(declare-fun b!3943094 () Bool)

(assert (=> b!3943094 (= e!2439882 tp_is_empty!19871)))

(declare-fun b!3943097 () Bool)

(declare-fun tp!1200134 () Bool)

(declare-fun tp!1200136 () Bool)

(assert (=> b!3943097 (= e!2439882 (and tp!1200134 tp!1200136))))

(assert (= (and b!3942587 (is-ElementMatch!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943094))

(assert (= (and b!3942587 (is-Concat!18226 (regOne!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943095))

(assert (= (and b!3942587 (is-Star!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943096))

(assert (= (and b!3942587 (is-Union!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943097))

(declare-fun b!3943099 () Bool)

(declare-fun e!2439883 () Bool)

(declare-fun tp!1200143 () Bool)

(declare-fun tp!1200142 () Bool)

(assert (=> b!3943099 (= e!2439883 (and tp!1200143 tp!1200142))))

(declare-fun b!3943100 () Bool)

(declare-fun tp!1200140 () Bool)

(assert (=> b!3943100 (= e!2439883 tp!1200140)))

(assert (=> b!3942587 (= tp!1200024 e!2439883)))

(declare-fun b!3943098 () Bool)

(assert (=> b!3943098 (= e!2439883 tp_is_empty!19871)))

(declare-fun b!3943101 () Bool)

(declare-fun tp!1200139 () Bool)

(declare-fun tp!1200141 () Bool)

(assert (=> b!3943101 (= e!2439883 (and tp!1200139 tp!1200141))))

(assert (= (and b!3942587 (is-ElementMatch!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943098))

(assert (= (and b!3942587 (is-Concat!18226 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943099))

(assert (= (and b!3942587 (is-Star!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943100))

(assert (= (and b!3942587 (is-Union!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943101))

(declare-fun b!3943103 () Bool)

(declare-fun e!2439884 () Bool)

(declare-fun tp!1200148 () Bool)

(declare-fun tp!1200147 () Bool)

(assert (=> b!3943103 (= e!2439884 (and tp!1200148 tp!1200147))))

(declare-fun b!3943104 () Bool)

(declare-fun tp!1200145 () Bool)

(assert (=> b!3943104 (= e!2439884 tp!1200145)))

(assert (=> b!3942579 (= tp!1200011 e!2439884)))

(declare-fun b!3943102 () Bool)

(assert (=> b!3943102 (= e!2439884 tp_is_empty!19871)))

(declare-fun b!3943105 () Bool)

(declare-fun tp!1200144 () Bool)

(declare-fun tp!1200146 () Bool)

(assert (=> b!3943105 (= e!2439884 (and tp!1200144 tp!1200146))))

(assert (= (and b!3942579 (is-ElementMatch!11450 (reg!11779 (regex!6545 (h!47294 rules!2768))))) b!3943102))

(assert (= (and b!3942579 (is-Concat!18226 (reg!11779 (regex!6545 (h!47294 rules!2768))))) b!3943103))

(assert (= (and b!3942579 (is-Star!11450 (reg!11779 (regex!6545 (h!47294 rules!2768))))) b!3943104))

(assert (= (and b!3942579 (is-Union!11450 (reg!11779 (regex!6545 (h!47294 rules!2768))))) b!3943105))

(declare-fun b!3943107 () Bool)

(declare-fun e!2439885 () Bool)

(declare-fun tp!1200153 () Bool)

(declare-fun tp!1200152 () Bool)

(assert (=> b!3943107 (= e!2439885 (and tp!1200153 tp!1200152))))

(declare-fun b!3943108 () Bool)

(declare-fun tp!1200150 () Bool)

(assert (=> b!3943108 (= e!2439885 tp!1200150)))

(assert (=> b!3942588 (= tp!1200022 e!2439885)))

(declare-fun b!3943106 () Bool)

(assert (=> b!3943106 (= e!2439885 tp_is_empty!19871)))

(declare-fun b!3943109 () Bool)

(declare-fun tp!1200149 () Bool)

(declare-fun tp!1200151 () Bool)

(assert (=> b!3943109 (= e!2439885 (and tp!1200149 tp!1200151))))

(assert (= (and b!3942588 (is-ElementMatch!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943106))

(assert (= (and b!3942588 (is-Concat!18226 (reg!11779 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943107))

(assert (= (and b!3942588 (is-Star!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943108))

(assert (= (and b!3942588 (is-Union!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943109))

(declare-fun b!3943111 () Bool)

(declare-fun e!2439886 () Bool)

(declare-fun tp!1200158 () Bool)

(declare-fun tp!1200157 () Bool)

(assert (=> b!3943111 (= e!2439886 (and tp!1200158 tp!1200157))))

(declare-fun b!3943112 () Bool)

(declare-fun tp!1200155 () Bool)

(assert (=> b!3943112 (= e!2439886 tp!1200155)))

(assert (=> b!3942589 (= tp!1200021 e!2439886)))

(declare-fun b!3943110 () Bool)

(assert (=> b!3943110 (= e!2439886 tp_is_empty!19871)))

(declare-fun b!3943113 () Bool)

(declare-fun tp!1200154 () Bool)

(declare-fun tp!1200156 () Bool)

(assert (=> b!3943113 (= e!2439886 (and tp!1200154 tp!1200156))))

(assert (= (and b!3942589 (is-ElementMatch!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943110))

(assert (= (and b!3942589 (is-Concat!18226 (regOne!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943111))

(assert (= (and b!3942589 (is-Star!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943112))

(assert (= (and b!3942589 (is-Union!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943113))

(declare-fun b!3943115 () Bool)

(declare-fun e!2439887 () Bool)

(declare-fun tp!1200163 () Bool)

(declare-fun tp!1200162 () Bool)

(assert (=> b!3943115 (= e!2439887 (and tp!1200163 tp!1200162))))

(declare-fun b!3943116 () Bool)

(declare-fun tp!1200160 () Bool)

(assert (=> b!3943116 (= e!2439887 tp!1200160)))

(assert (=> b!3942589 (= tp!1200023 e!2439887)))

(declare-fun b!3943114 () Bool)

(assert (=> b!3943114 (= e!2439887 tp_is_empty!19871)))

(declare-fun b!3943117 () Bool)

(declare-fun tp!1200159 () Bool)

(declare-fun tp!1200161 () Bool)

(assert (=> b!3943117 (= e!2439887 (and tp!1200159 tp!1200161))))

(assert (= (and b!3942589 (is-ElementMatch!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943114))

(assert (= (and b!3942589 (is-Concat!18226 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943115))

(assert (= (and b!3942589 (is-Star!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943116))

(assert (= (and b!3942589 (is-Union!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 suffixTokens!72)))))) b!3943117))

(declare-fun b!3943118 () Bool)

(declare-fun e!2439888 () Bool)

(declare-fun tp!1200164 () Bool)

(assert (=> b!3943118 (= e!2439888 (and tp_is_empty!19871 tp!1200164))))

(assert (=> b!3942565 (= tp!1199998 e!2439888)))

(assert (= (and b!3942565 (is-Cons!41872 (t!327079 (t!327079 prefix!426)))) b!3943118))

(declare-fun b!3943119 () Bool)

(declare-fun e!2439889 () Bool)

(declare-fun tp!1200165 () Bool)

(assert (=> b!3943119 (= e!2439889 (and tp_is_empty!19871 tp!1200165))))

(assert (=> b!3942581 (= tp!1200015 e!2439889)))

(assert (= (and b!3942581 (is-Cons!41872 (t!327079 (t!327079 suffixResult!91)))) b!3943119))

(declare-fun b!3943120 () Bool)

(declare-fun e!2439890 () Bool)

(declare-fun tp!1200166 () Bool)

(assert (=> b!3943120 (= e!2439890 (and tp_is_empty!19871 tp!1200166))))

(assert (=> b!3942590 (= tp!1200026 e!2439890)))

(assert (= (and b!3942590 (is-Cons!41872 (t!327079 (originalCharacters!7145 (h!47293 suffixTokens!72))))) b!3943120))

(declare-fun b!3943121 () Bool)

(declare-fun e!2439891 () Bool)

(declare-fun tp!1200167 () Bool)

(assert (=> b!3943121 (= e!2439891 (and tp_is_empty!19871 tp!1200167))))

(assert (=> b!3942566 (= tp!1199999 e!2439891)))

(assert (= (and b!3942566 (is-Cons!41872 (t!327079 (t!327079 suffix!1176)))) b!3943121))

(declare-fun b!3943124 () Bool)

(declare-fun b_free!107945 () Bool)

(declare-fun b_next!108649 () Bool)

(assert (=> b!3943124 (= b_free!107945 (not b_next!108649))))

(declare-fun t!327210 () Bool)

(declare-fun tb!236477 () Bool)

(assert (=> (and b!3943124 (= (toValue!9009 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327210) tb!236477))

(declare-fun result!286464 () Bool)

(assert (= result!286464 result!286438))

(assert (=> d!1169456 t!327210))

(declare-fun b_and!301463 () Bool)

(declare-fun tp!1200171 () Bool)

(assert (=> b!3943124 (= tp!1200171 (and (=> t!327210 result!286464) b_and!301463))))

(declare-fun b_free!107947 () Bool)

(declare-fun b_next!108651 () Bool)

(assert (=> b!3943124 (= b_free!107947 (not b_next!108651))))

(declare-fun tb!236479 () Bool)

(declare-fun t!327212 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327212) tb!236479))

(declare-fun result!286466 () Bool)

(assert (= result!286466 result!286414))

(assert (=> d!1169394 t!327212))

(declare-fun t!327214 () Bool)

(declare-fun tb!236481 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327214) tb!236481))

(declare-fun result!286468 () Bool)

(assert (= result!286468 result!286344))

(assert (=> b!3942539 t!327214))

(declare-fun tb!236483 () Bool)

(declare-fun t!327216 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327216) tb!236483))

(declare-fun result!286470 () Bool)

(assert (= result!286470 result!286452))

(assert (=> b!3943056 t!327216))

(declare-fun t!327218 () Bool)

(declare-fun tb!236485 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327218) tb!236485))

(declare-fun result!286472 () Bool)

(assert (= result!286472 result!286338))

(assert (=> d!1169286 t!327218))

(declare-fun tb!236487 () Bool)

(declare-fun t!327220 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327220) tb!236487))

(declare-fun result!286474 () Bool)

(assert (= result!286474 result!286322))

(assert (=> b!3942361 t!327220))

(declare-fun t!327222 () Bool)

(declare-fun tb!236489 () Bool)

(assert (=> (and b!3943124 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327222) tb!236489))

(declare-fun result!286476 () Bool)

(assert (= result!286476 result!286426))

(assert (=> b!3942854 t!327222))

(declare-fun b_and!301465 () Bool)

(declare-fun tp!1200170 () Bool)

(assert (=> b!3943124 (= tp!1200170 (and (=> t!327220 result!286474) (=> t!327212 result!286466) (=> t!327218 result!286472) (=> t!327216 result!286470) (=> t!327222 result!286476) (=> t!327214 result!286468) b_and!301465))))

(declare-fun e!2439893 () Bool)

(assert (=> b!3943124 (= e!2439893 (and tp!1200171 tp!1200170))))

(declare-fun b!3943123 () Bool)

(declare-fun e!2439892 () Bool)

(declare-fun tp!1200169 () Bool)

(assert (=> b!3943123 (= e!2439892 (and tp!1200169 (inv!56079 (tag!7405 (h!47294 (t!327081 (t!327081 rules!2768))))) (inv!56083 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) e!2439893))))

(declare-fun b!3943122 () Bool)

(declare-fun e!2439895 () Bool)

(declare-fun tp!1200168 () Bool)

(assert (=> b!3943122 (= e!2439895 (and e!2439892 tp!1200168))))

(assert (=> b!3942603 (= tp!1200040 e!2439895)))

(assert (= b!3943123 b!3943124))

(assert (= b!3943122 b!3943123))

(assert (= (and b!3942603 (is-Cons!41874 (t!327081 (t!327081 rules!2768)))) b!3943122))

(declare-fun m!4511793 () Bool)

(assert (=> b!3943123 m!4511793))

(declare-fun m!4511795 () Bool)

(assert (=> b!3943123 m!4511795))

(declare-fun b!3943126 () Bool)

(declare-fun e!2439896 () Bool)

(declare-fun tp!1200176 () Bool)

(declare-fun tp!1200175 () Bool)

(assert (=> b!3943126 (= e!2439896 (and tp!1200176 tp!1200175))))

(declare-fun b!3943127 () Bool)

(declare-fun tp!1200173 () Bool)

(assert (=> b!3943127 (= e!2439896 tp!1200173)))

(assert (=> b!3942604 (= tp!1200041 e!2439896)))

(declare-fun b!3943125 () Bool)

(assert (=> b!3943125 (= e!2439896 tp_is_empty!19871)))

(declare-fun b!3943128 () Bool)

(declare-fun tp!1200172 () Bool)

(declare-fun tp!1200174 () Bool)

(assert (=> b!3943128 (= e!2439896 (and tp!1200172 tp!1200174))))

(assert (= (and b!3942604 (is-ElementMatch!11450 (regex!6545 (h!47294 (t!327081 rules!2768))))) b!3943125))

(assert (= (and b!3942604 (is-Concat!18226 (regex!6545 (h!47294 (t!327081 rules!2768))))) b!3943126))

(assert (= (and b!3942604 (is-Star!11450 (regex!6545 (h!47294 (t!327081 rules!2768))))) b!3943127))

(assert (= (and b!3942604 (is-Union!11450 (regex!6545 (h!47294 (t!327081 rules!2768))))) b!3943128))

(declare-fun b!3943137 () Bool)

(declare-fun tp!1200183 () Bool)

(declare-fun tp!1200185 () Bool)

(declare-fun e!2439902 () Bool)

(assert (=> b!3943137 (= e!2439902 (and (inv!56086 (left!31895 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))) tp!1200185 (inv!56086 (right!32225 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))) tp!1200183))))

(declare-fun b!3943139 () Bool)

(declare-fun e!2439901 () Bool)

(declare-fun tp!1200184 () Bool)

(assert (=> b!3943139 (= e!2439901 tp!1200184)))

(declare-fun b!3943138 () Bool)

(declare-fun inv!56092 (IArray!25517) Bool)

(assert (=> b!3943138 (= e!2439902 (and (inv!56092 (xs!16062 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))) e!2439901))))

(assert (=> b!3942367 (= tp!1199975 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80))))) e!2439902))))

(assert (= (and b!3942367 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))) b!3943137))

(assert (= b!3943138 b!3943139))

(assert (= (and b!3942367 (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (value!207168 (h!47293 prefixTokens!80)))))) b!3943138))

(declare-fun m!4511797 () Bool)

(assert (=> b!3943137 m!4511797))

(declare-fun m!4511799 () Bool)

(assert (=> b!3943137 m!4511799))

(declare-fun m!4511801 () Bool)

(assert (=> b!3943138 m!4511801))

(assert (=> b!3942367 m!4510941))

(declare-fun b!3943141 () Bool)

(declare-fun e!2439903 () Bool)

(declare-fun tp!1200190 () Bool)

(declare-fun tp!1200189 () Bool)

(assert (=> b!3943141 (= e!2439903 (and tp!1200190 tp!1200189))))

(declare-fun b!3943142 () Bool)

(declare-fun tp!1200187 () Bool)

(assert (=> b!3943142 (= e!2439903 tp!1200187)))

(assert (=> b!3942584 (= tp!1200017 e!2439903)))

(declare-fun b!3943140 () Bool)

(assert (=> b!3943140 (= e!2439903 tp_is_empty!19871)))

(declare-fun b!3943143 () Bool)

(declare-fun tp!1200186 () Bool)

(declare-fun tp!1200188 () Bool)

(assert (=> b!3943143 (= e!2439903 (and tp!1200186 tp!1200188))))

(assert (= (and b!3942584 (is-ElementMatch!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943140))

(assert (= (and b!3942584 (is-Concat!18226 (reg!11779 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943141))

(assert (= (and b!3942584 (is-Star!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943142))

(assert (= (and b!3942584 (is-Union!11450 (reg!11779 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943143))

(declare-fun b!3943147 () Bool)

(declare-fun b_free!107949 () Bool)

(declare-fun b_next!108653 () Bool)

(assert (=> b!3943147 (= b_free!107949 (not b_next!108653))))

(declare-fun tb!236491 () Bool)

(declare-fun t!327224 () Bool)

(assert (=> (and b!3943147 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327224) tb!236491))

(declare-fun result!286480 () Bool)

(assert (= result!286480 result!286438))

(assert (=> d!1169456 t!327224))

(declare-fun tp!1200191 () Bool)

(declare-fun b_and!301467 () Bool)

(assert (=> b!3943147 (= tp!1200191 (and (=> t!327224 result!286480) b_and!301467))))

(declare-fun b_free!107951 () Bool)

(declare-fun b_next!108655 () Bool)

(assert (=> b!3943147 (= b_free!107951 (not b_next!108655))))

(declare-fun tb!236493 () Bool)

(declare-fun t!327226 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327226) tb!236493))

(declare-fun result!286482 () Bool)

(assert (= result!286482 result!286414))

(assert (=> d!1169394 t!327226))

(declare-fun t!327228 () Bool)

(declare-fun tb!236495 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327228) tb!236495))

(declare-fun result!286484 () Bool)

(assert (= result!286484 result!286344))

(assert (=> b!3942539 t!327228))

(declare-fun tb!236497 () Bool)

(declare-fun t!327230 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327230) tb!236497))

(declare-fun result!286486 () Bool)

(assert (= result!286486 result!286452))

(assert (=> b!3943056 t!327230))

(declare-fun t!327232 () Bool)

(declare-fun tb!236499 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327232) tb!236499))

(declare-fun result!286488 () Bool)

(assert (= result!286488 result!286338))

(assert (=> d!1169286 t!327232))

(declare-fun t!327234 () Bool)

(declare-fun tb!236501 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327234) tb!236501))

(declare-fun result!286490 () Bool)

(assert (= result!286490 result!286322))

(assert (=> b!3942361 t!327234))

(declare-fun t!327236 () Bool)

(declare-fun tb!236503 () Bool)

(assert (=> (and b!3943147 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327236) tb!236503))

(declare-fun result!286492 () Bool)

(assert (= result!286492 result!286426))

(assert (=> b!3942854 t!327236))

(declare-fun b_and!301469 () Bool)

(declare-fun tp!1200193 () Bool)

(assert (=> b!3943147 (= tp!1200193 (and (=> t!327234 result!286490) (=> t!327230 result!286486) (=> t!327226 result!286482) (=> t!327236 result!286492) (=> t!327232 result!286488) (=> t!327228 result!286484) b_and!301469))))

(declare-fun e!2439908 () Bool)

(assert (=> b!3943147 (= e!2439908 (and tp!1200191 tp!1200193))))

(declare-fun e!2439905 () Bool)

(assert (=> b!3942557 (= tp!1199992 e!2439905)))

(declare-fun e!2439904 () Bool)

(declare-fun tp!1200194 () Bool)

(declare-fun e!2439909 () Bool)

(declare-fun b!3943145 () Bool)

(assert (=> b!3943145 (= e!2439904 (and (inv!21 (value!207168 (h!47293 (t!327080 (t!327080 prefixTokens!80))))) e!2439909 tp!1200194))))

(declare-fun b!3943144 () Bool)

(declare-fun tp!1200192 () Bool)

(assert (=> b!3943144 (= e!2439905 (and (inv!56082 (h!47293 (t!327080 (t!327080 prefixTokens!80)))) e!2439904 tp!1200192))))

(declare-fun b!3943146 () Bool)

(declare-fun tp!1200195 () Bool)

(assert (=> b!3943146 (= e!2439909 (and tp!1200195 (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) e!2439908))))

(assert (= b!3943146 b!3943147))

(assert (= b!3943145 b!3943146))

(assert (= b!3943144 b!3943145))

(assert (= (and b!3942557 (is-Cons!41873 (t!327080 (t!327080 prefixTokens!80)))) b!3943144))

(declare-fun m!4511803 () Bool)

(assert (=> b!3943145 m!4511803))

(declare-fun m!4511805 () Bool)

(assert (=> b!3943144 m!4511805))

(declare-fun m!4511807 () Bool)

(assert (=> b!3943146 m!4511807))

(declare-fun m!4511809 () Bool)

(assert (=> b!3943146 m!4511809))

(declare-fun e!2439911 () Bool)

(declare-fun tp!1200196 () Bool)

(declare-fun tp!1200198 () Bool)

(declare-fun b!3943148 () Bool)

(assert (=> b!3943148 (= e!2439911 (and (inv!56086 (left!31895 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))) tp!1200198 (inv!56086 (right!32225 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))) tp!1200196))))

(declare-fun b!3943150 () Bool)

(declare-fun e!2439910 () Bool)

(declare-fun tp!1200197 () Bool)

(assert (=> b!3943150 (= e!2439910 tp!1200197)))

(declare-fun b!3943149 () Bool)

(assert (=> b!3943149 (= e!2439911 (and (inv!56092 (xs!16062 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))) e!2439910))))

(assert (=> b!3942472 (= tp!1199979 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706)))))) e!2439911))))

(assert (= (and b!3942472 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))) b!3943148))

(assert (= b!3943149 b!3943150))

(assert (= (and b!3942472 (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))) (value!207168 (_1!23713 (v!39298 lt!1378706))))))) b!3943149))

(declare-fun m!4511811 () Bool)

(assert (=> b!3943148 m!4511811))

(declare-fun m!4511813 () Bool)

(assert (=> b!3943148 m!4511813))

(declare-fun m!4511815 () Bool)

(assert (=> b!3943149 m!4511815))

(assert (=> b!3942472 m!4511063))

(declare-fun b!3943152 () Bool)

(declare-fun e!2439912 () Bool)

(declare-fun tp!1200203 () Bool)

(declare-fun tp!1200202 () Bool)

(assert (=> b!3943152 (= e!2439912 (and tp!1200203 tp!1200202))))

(declare-fun b!3943153 () Bool)

(declare-fun tp!1200200 () Bool)

(assert (=> b!3943153 (= e!2439912 tp!1200200)))

(assert (=> b!3942583 (= tp!1200020 e!2439912)))

(declare-fun b!3943151 () Bool)

(assert (=> b!3943151 (= e!2439912 tp_is_empty!19871)))

(declare-fun b!3943154 () Bool)

(declare-fun tp!1200199 () Bool)

(declare-fun tp!1200201 () Bool)

(assert (=> b!3943154 (= e!2439912 (and tp!1200199 tp!1200201))))

(assert (= (and b!3942583 (is-ElementMatch!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943151))

(assert (= (and b!3942583 (is-Concat!18226 (regOne!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943152))

(assert (= (and b!3942583 (is-Star!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943153))

(assert (= (and b!3942583 (is-Union!11450 (regOne!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943154))

(declare-fun b!3943156 () Bool)

(declare-fun e!2439913 () Bool)

(declare-fun tp!1200208 () Bool)

(declare-fun tp!1200207 () Bool)

(assert (=> b!3943156 (= e!2439913 (and tp!1200208 tp!1200207))))

(declare-fun b!3943157 () Bool)

(declare-fun tp!1200205 () Bool)

(assert (=> b!3943157 (= e!2439913 tp!1200205)))

(assert (=> b!3942583 (= tp!1200019 e!2439913)))

(declare-fun b!3943155 () Bool)

(assert (=> b!3943155 (= e!2439913 tp_is_empty!19871)))

(declare-fun b!3943158 () Bool)

(declare-fun tp!1200204 () Bool)

(declare-fun tp!1200206 () Bool)

(assert (=> b!3943158 (= e!2439913 (and tp!1200204 tp!1200206))))

(assert (= (and b!3942583 (is-ElementMatch!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943155))

(assert (= (and b!3942583 (is-Concat!18226 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943156))

(assert (= (and b!3942583 (is-Star!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943157))

(assert (= (and b!3942583 (is-Union!11450 (regTwo!23412 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943158))

(declare-fun b!3943159 () Bool)

(declare-fun e!2439914 () Bool)

(declare-fun tp!1200209 () Bool)

(assert (=> b!3943159 (= e!2439914 (and tp_is_empty!19871 tp!1200209))))

(assert (=> b!3942615 (= tp!1200044 e!2439914)))

(assert (= (and b!3942615 (is-Cons!41872 (t!327079 (originalCharacters!7145 (h!47293 prefixTokens!80))))) b!3943159))

(declare-fun b!3943161 () Bool)

(declare-fun e!2439915 () Bool)

(declare-fun tp!1200214 () Bool)

(declare-fun tp!1200213 () Bool)

(assert (=> b!3943161 (= e!2439915 (and tp!1200214 tp!1200213))))

(declare-fun b!3943162 () Bool)

(declare-fun tp!1200211 () Bool)

(assert (=> b!3943162 (= e!2439915 tp!1200211)))

(assert (=> b!3942585 (= tp!1200016 e!2439915)))

(declare-fun b!3943160 () Bool)

(assert (=> b!3943160 (= e!2439915 tp_is_empty!19871)))

(declare-fun b!3943163 () Bool)

(declare-fun tp!1200210 () Bool)

(declare-fun tp!1200212 () Bool)

(assert (=> b!3943163 (= e!2439915 (and tp!1200210 tp!1200212))))

(assert (= (and b!3942585 (is-ElementMatch!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943160))

(assert (= (and b!3942585 (is-Concat!18226 (regOne!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943161))

(assert (= (and b!3942585 (is-Star!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943162))

(assert (= (and b!3942585 (is-Union!11450 (regOne!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943163))

(declare-fun b!3943165 () Bool)

(declare-fun e!2439916 () Bool)

(declare-fun tp!1200219 () Bool)

(declare-fun tp!1200218 () Bool)

(assert (=> b!3943165 (= e!2439916 (and tp!1200219 tp!1200218))))

(declare-fun b!3943166 () Bool)

(declare-fun tp!1200216 () Bool)

(assert (=> b!3943166 (= e!2439916 tp!1200216)))

(assert (=> b!3942585 (= tp!1200018 e!2439916)))

(declare-fun b!3943164 () Bool)

(assert (=> b!3943164 (= e!2439916 tp_is_empty!19871)))

(declare-fun b!3943167 () Bool)

(declare-fun tp!1200215 () Bool)

(declare-fun tp!1200217 () Bool)

(assert (=> b!3943167 (= e!2439916 (and tp!1200215 tp!1200217))))

(assert (= (and b!3942585 (is-ElementMatch!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943164))

(assert (= (and b!3942585 (is-Concat!18226 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943165))

(assert (= (and b!3942585 (is-Star!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943166))

(assert (= (and b!3942585 (is-Union!11450 (regTwo!23413 (regex!6545 (rule!9505 (h!47293 prefixTokens!80)))))) b!3943167))

(declare-fun b!3943168 () Bool)

(declare-fun e!2439917 () Bool)

(declare-fun tp!1200220 () Bool)

(assert (=> b!3943168 (= e!2439917 (and tp_is_empty!19871 tp!1200220))))

(assert (=> b!3942558 (= tp!1199994 e!2439917)))

(assert (= (and b!3942558 (is-Cons!41872 (originalCharacters!7145 (h!47293 (t!327080 prefixTokens!80))))) b!3943168))

(declare-fun b!3943170 () Bool)

(declare-fun e!2439918 () Bool)

(declare-fun tp!1200225 () Bool)

(declare-fun tp!1200224 () Bool)

(assert (=> b!3943170 (= e!2439918 (and tp!1200225 tp!1200224))))

(declare-fun b!3943171 () Bool)

(declare-fun tp!1200222 () Bool)

(assert (=> b!3943171 (= e!2439918 tp!1200222)))

(assert (=> b!3942559 (= tp!1199995 e!2439918)))

(declare-fun b!3943169 () Bool)

(assert (=> b!3943169 (= e!2439918 tp_is_empty!19871)))

(declare-fun b!3943172 () Bool)

(declare-fun tp!1200221 () Bool)

(declare-fun tp!1200223 () Bool)

(assert (=> b!3943172 (= e!2439918 (and tp!1200221 tp!1200223))))

(assert (= (and b!3942559 (is-ElementMatch!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) b!3943169))

(assert (= (and b!3942559 (is-Concat!18226 (regex!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) b!3943170))

(assert (= (and b!3942559 (is-Star!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) b!3943171))

(assert (= (and b!3942559 (is-Union!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) b!3943172))

(declare-fun b!3943176 () Bool)

(declare-fun b_free!107953 () Bool)

(declare-fun b_next!108657 () Bool)

(assert (=> b!3943176 (= b_free!107953 (not b_next!108657))))

(declare-fun tb!236505 () Bool)

(declare-fun t!327238 () Bool)

(assert (=> (and b!3943176 (= (toValue!9009 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toValue!9009 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327238) tb!236505))

(declare-fun result!286494 () Bool)

(assert (= result!286494 result!286438))

(assert (=> d!1169456 t!327238))

(declare-fun b_and!301471 () Bool)

(declare-fun tp!1200226 () Bool)

(assert (=> b!3943176 (= tp!1200226 (and (=> t!327238 result!286494) b_and!301471))))

(declare-fun b_free!107955 () Bool)

(declare-fun b_next!108659 () Bool)

(assert (=> b!3943176 (= b_free!107955 (not b_next!108659))))

(declare-fun t!327240 () Bool)

(declare-fun tb!236507 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (get!13832 lt!1378753)))))) t!327240) tb!236507))

(declare-fun result!286496 () Bool)

(assert (= result!286496 result!286414))

(assert (=> d!1169394 t!327240))

(declare-fun t!327242 () Bool)

(declare-fun tb!236509 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72))))) t!327242) tb!236509))

(declare-fun result!286498 () Bool)

(assert (= result!286498 result!286344))

(assert (=> b!3942539 t!327242))

(declare-fun t!327244 () Bool)

(declare-fun tb!236511 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) t!327244) tb!236511))

(declare-fun result!286500 () Bool)

(assert (= result!286500 result!286452))

(assert (=> b!3943056 t!327244))

(declare-fun t!327246 () Bool)

(declare-fun tb!236513 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706)))))) t!327246) tb!236513))

(declare-fun result!286502 () Bool)

(assert (= result!286502 result!286338))

(assert (=> d!1169286 t!327246))

(declare-fun tb!236515 () Bool)

(declare-fun t!327248 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80))))) t!327248) tb!236515))

(declare-fun result!286504 () Bool)

(assert (= result!286504 result!286322))

(assert (=> b!3942361 t!327248))

(declare-fun t!327250 () Bool)

(declare-fun tb!236517 () Bool)

(assert (=> (and b!3943176 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80)))))) t!327250) tb!236517))

(declare-fun result!286506 () Bool)

(assert (= result!286506 result!286426))

(assert (=> b!3942854 t!327250))

(declare-fun tp!1200228 () Bool)

(declare-fun b_and!301473 () Bool)

(assert (=> b!3943176 (= tp!1200228 (and (=> t!327244 result!286500) (=> t!327240 result!286496) (=> t!327250 result!286506) (=> t!327242 result!286498) (=> t!327248 result!286504) (=> t!327246 result!286502) b_and!301473))))

(declare-fun e!2439923 () Bool)

(assert (=> b!3943176 (= e!2439923 (and tp!1200226 tp!1200228))))

(declare-fun e!2439920 () Bool)

(assert (=> b!3942591 (= tp!1200028 e!2439920)))

(declare-fun e!2439919 () Bool)

(declare-fun tp!1200229 () Bool)

(declare-fun b!3943174 () Bool)

(declare-fun e!2439924 () Bool)

(assert (=> b!3943174 (= e!2439919 (and (inv!21 (value!207168 (h!47293 (t!327080 (t!327080 suffixTokens!72))))) e!2439924 tp!1200229))))

(declare-fun tp!1200227 () Bool)

(declare-fun b!3943173 () Bool)

(assert (=> b!3943173 (= e!2439920 (and (inv!56082 (h!47293 (t!327080 (t!327080 suffixTokens!72)))) e!2439919 tp!1200227))))

(declare-fun tp!1200230 () Bool)

(declare-fun b!3943175 () Bool)

(assert (=> b!3943175 (= e!2439924 (and tp!1200230 (inv!56079 (tag!7405 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (inv!56083 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) e!2439923))))

(assert (= b!3943175 b!3943176))

(assert (= b!3943174 b!3943175))

(assert (= b!3943173 b!3943174))

(assert (= (and b!3942591 (is-Cons!41873 (t!327080 (t!327080 suffixTokens!72)))) b!3943173))

(declare-fun m!4511817 () Bool)

(assert (=> b!3943174 m!4511817))

(declare-fun m!4511819 () Bool)

(assert (=> b!3943173 m!4511819))

(declare-fun m!4511821 () Bool)

(assert (=> b!3943175 m!4511821))

(declare-fun m!4511823 () Bool)

(assert (=> b!3943175 m!4511823))

(declare-fun tp!1200233 () Bool)

(declare-fun tp!1200231 () Bool)

(declare-fun b!3943177 () Bool)

(declare-fun e!2439926 () Bool)

(assert (=> b!3943177 (= e!2439926 (and (inv!56086 (left!31895 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))) tp!1200233 (inv!56086 (right!32225 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))) tp!1200231))))

(declare-fun b!3943179 () Bool)

(declare-fun e!2439925 () Bool)

(declare-fun tp!1200232 () Bool)

(assert (=> b!3943179 (= e!2439925 tp!1200232)))

(declare-fun b!3943178 () Bool)

(assert (=> b!3943178 (= e!2439926 (and (inv!56092 (xs!16062 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))) e!2439925))))

(assert (=> b!3942541 (= tp!1199980 (and (inv!56086 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72))))) e!2439926))))

(assert (= (and b!3942541 (is-Node!12756 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))) b!3943177))

(assert (= b!3943178 b!3943179))

(assert (= (and b!3942541 (is-Leaf!19736 (c!684842 (dynLambda!17930 (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (value!207168 (h!47293 suffixTokens!72)))))) b!3943178))

(declare-fun m!4511825 () Bool)

(assert (=> b!3943177 m!4511825))

(declare-fun m!4511827 () Bool)

(assert (=> b!3943177 m!4511827))

(declare-fun m!4511829 () Bool)

(assert (=> b!3943178 m!4511829))

(assert (=> b!3942541 m!4511131))

(declare-fun b!3943181 () Bool)

(declare-fun e!2439927 () Bool)

(declare-fun tp!1200238 () Bool)

(declare-fun tp!1200237 () Bool)

(assert (=> b!3943181 (= e!2439927 (and tp!1200238 tp!1200237))))

(declare-fun b!3943182 () Bool)

(declare-fun tp!1200235 () Bool)

(assert (=> b!3943182 (= e!2439927 tp!1200235)))

(assert (=> b!3942593 (= tp!1200031 e!2439927)))

(declare-fun b!3943180 () Bool)

(assert (=> b!3943180 (= e!2439927 tp_is_empty!19871)))

(declare-fun b!3943183 () Bool)

(declare-fun tp!1200234 () Bool)

(declare-fun tp!1200236 () Bool)

(assert (=> b!3943183 (= e!2439927 (and tp!1200234 tp!1200236))))

(assert (= (and b!3942593 (is-ElementMatch!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) b!3943180))

(assert (= (and b!3942593 (is-Concat!18226 (regex!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) b!3943181))

(assert (= (and b!3942593 (is-Star!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) b!3943182))

(assert (= (and b!3942593 (is-Union!11450 (regex!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72)))))) b!3943183))

(declare-fun b!3943184 () Bool)

(declare-fun e!2439928 () Bool)

(declare-fun tp!1200239 () Bool)

(assert (=> b!3943184 (= e!2439928 (and tp_is_empty!19871 tp!1200239))))

(assert (=> b!3942592 (= tp!1200030 e!2439928)))

(assert (= (and b!3942592 (is-Cons!41872 (originalCharacters!7145 (h!47293 (t!327080 suffixTokens!72))))) b!3943184))

(declare-fun b_lambda!115315 () Bool)

(assert (= b_lambda!115313 (or (and b!3943147 b_free!107951 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942594 b_free!107927) (and b!3943176 b_free!107955 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942290 b_free!107907 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942560 b_free!107923 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942605 b_free!107931 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942272 b_free!107899 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3942277 b_free!107903 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) (and b!3943124 b_free!107947 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))))) b_lambda!115315)))

(declare-fun b_lambda!115317 () Bool)

(assert (= b_lambda!115309 (or (and b!3942290 b_free!107907 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3943124 b_free!107947 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3942277 b_free!107903 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3942560 b_free!107923) (and b!3943176 b_free!107955 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3942594 b_free!107927 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3942272 b_free!107899 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3942605 b_free!107931 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) (and b!3943147 b_free!107951 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))))) b_lambda!115317)))

(declare-fun b_lambda!115319 () Bool)

(assert (= b_lambda!115291 (or (and b!3942560 b_free!107923 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 prefixTokens!80))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3942605 b_free!107931 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 rules!2768)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3942272 b_free!107899 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 prefixTokens!80)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3942290 b_free!107907 (= (toChars!8868 (transformation!6545 (h!47294 rules!2768))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3942277 b_free!107903 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 suffixTokens!72)))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3942594 b_free!107927 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 suffixTokens!72))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3943176 b_free!107955 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 suffixTokens!72)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3943124 b_free!107947 (= (toChars!8868 (transformation!6545 (h!47294 (t!327081 (t!327081 rules!2768))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) (and b!3943147 b_free!107951 (= (toChars!8868 (transformation!6545 (rule!9505 (h!47293 (t!327080 (t!327080 prefixTokens!80)))))) (toChars!8868 (transformation!6545 (rule!9505 (_1!23713 (v!39298 lt!1378706))))))) b_lambda!115319)))

(push 1)

(assert (not b!3942842))

(assert (not b!3943126))

(assert (not b!3943159))

(assert (not d!1169460))

(assert (not b!3943057))

(assert b_and!301463)

(assert (not b!3942770))

(assert (not d!1169506))

(assert (not b!3942780))

(assert (not b!3942863))

(assert (not b!3943043))

(assert (not b!3943170))

(assert b_and!301447)

(assert (not b!3943144))

(assert (not b!3943128))

(assert (not b!3943066))

(assert (not b!3942941))

(assert b_and!301453)

(assert (not b!3943041))

(assert tp_is_empty!19871)

(assert (not b!3942832))

(assert (not b_next!108649))

(assert (not b!3943181))

(assert (not b!3943154))

(assert (not b!3942861))

(assert (not b!3943004))

(assert (not b!3943030))

(assert (not d!1169488))

(assert (not b!3942944))

(assert (not b!3942848))

(assert (not b!3943051))

(assert (not b!3943150))

(assert b_and!301461)

(assert (not b!3942953))

(assert (not d!1169464))

(assert (not b!3942846))

(assert (not b_next!108611))

(assert (not b!3943096))

(assert (not b!3943104))

(assert (not b!3943028))

(assert (not b!3943026))

(assert (not b!3942840))

(assert (not b!3942803))

(assert (not b!3942885))

(assert (not b!3943021))

(assert (not b!3943095))

(assert (not b!3943084))

(assert (not b!3943060))

(assert (not b!3942853))

(assert (not b_lambda!115317))

(assert (not b!3943111))

(assert (not b!3943113))

(assert (not b!3943061))

(assert b_and!301455)

(assert (not bm!285083))

(assert (not b_next!108633))

(assert (not b!3943171))

(assert (not b!3942930))

(assert (not d!1169390))

(assert (not d!1169398))

(assert (not b!3942865))

(assert (not b!3943165))

(assert (not d!1169408))

(assert (not b!3943018))

(assert (not d!1169446))

(assert (not b!3942938))

(assert (not b!3943067))

(assert (not d!1169418))

(assert (not d!1169414))

(assert (not b!3942951))

(assert (not b!3943058))

(assert (not b!3942779))

(assert (not b!3942785))

(assert (not d!1169416))

(assert (not b!3942786))

(assert (not d!1169484))

(assert b_and!301471)

(assert (not bm!285078))

(assert (not b_lambda!115295))

(assert (not b!3943099))

(assert (not d!1169378))

(assert (not b!3942856))

(assert (not b!3942946))

(assert (not b!3943000))

(assert (not b_next!108635))

(assert (not b!3943158))

(assert (not b_next!108603))

(assert (not d!1169412))

(assert (not b!3943107))

(assert (not b!3943097))

(assert (not b!3943046))

(assert (not b!3943064))

(assert b_and!301473)

(assert (not b_next!108631))

(assert (not b!3943167))

(assert (not b!3943137))

(assert (not b!3943014))

(assert (not b!3943075))

(assert (not b!3943142))

(assert (not b!3943052))

(assert (not b!3942893))

(assert (not b_next!108607))

(assert b_and!301441)

(assert (not d!1169406))

(assert (not b!3943079))

(assert (not b!3942834))

(assert (not b!3943122))

(assert (not b!3943183))

(assert (not b!3942897))

(assert (not b!3943146))

(assert (not b!3943145))

(assert (not b!3943024))

(assert (not b!3942839))

(assert (not b!3943121))

(assert (not b!3943174))

(assert (not d!1169510))

(assert (not b!3942887))

(assert (not d!1169368))

(assert (not b!3943120))

(assert (not b!3942926))

(assert (not d!1169554))

(assert (not d!1169512))

(assert (not b!3942924))

(assert (not b!3943141))

(assert (not b!3943172))

(assert (not b!3943149))

(assert (not d!1169548))

(assert (not b!3943080))

(assert (not d!1169404))

(assert (not b!3943091))

(assert (not b!3943001))

(assert (not b!3943056))

(assert (not b!3943138))

(assert (not b!3942795))

(assert (not b!3942541))

(assert (not b!3943015))

(assert (not d!1169436))

(assert (not d!1169388))

(assert (not b!3942835))

(assert (not d!1169546))

(assert (not b_next!108657))

(assert (not b!3943063))

(assert (not b!3943025))

(assert b_and!301445)

(assert (not b!3942854))

(assert (not b!3943017))

(assert (not d!1169370))

(assert (not d!1169458))

(assert (not b!3942875))

(assert (not b!3942837))

(assert (not b!3943002))

(assert (not b!3942796))

(assert b_and!301451)

(assert (not bm!285082))

(assert (not b!3943143))

(assert (not b!3943077))

(assert (not b!3943087))

(assert (not b_lambda!115315))

(assert (not b!3942790))

(assert (not b!3943089))

(assert (not b_next!108609))

(assert b_and!301439)

(assert (not b!3942775))

(assert (not b!3943178))

(assert (not b!3942851))

(assert (not d!1169518))

(assert (not b!3943153))

(assert (not b!3943184))

(assert (not b!3943117))

(assert (not d!1169560))

(assert (not b!3942876))

(assert (not b!3942772))

(assert (not b!3943109))

(assert (not b!3942778))

(assert (not b_next!108655))

(assert (not b!3942771))

(assert (not b!3942947))

(assert (not b!3943101))

(assert (not b!3943175))

(assert (not b!3942838))

(assert (not b!3943019))

(assert (not tb!236441))

(assert (not b!3943020))

(assert (not b!3942472))

(assert (not d!1169410))

(assert (not b!3943032))

(assert (not d!1169438))

(assert (not b_lambda!115319))

(assert (not b!3942844))

(assert (not b!3943081))

(assert (not b!3943179))

(assert (not b!3943127))

(assert (not b!3943116))

(assert b_and!301457)

(assert (not b!3943010))

(assert (not b!3942774))

(assert (not d!1169552))

(assert (not b!3942964))

(assert (not b!3942813))

(assert (not b_lambda!115307))

(assert (not b!3943123))

(assert (not b_lambda!115297))

(assert (not b!3942855))

(assert (not b_next!108627))

(assert (not b!3942836))

(assert (not b!3943103))

(assert b_and!301449)

(assert (not d!1169430))

(assert (not b!3942793))

(assert (not b!3942849))

(assert (not b!3943092))

(assert (not b!3943022))

(assert (not b!3943073))

(assert (not b!3943148))

(assert (not b!3942949))

(assert (not d!1169386))

(assert (not b!3942945))

(assert (not d!1169472))

(assert (not b_next!108601))

(assert (not d!1169508))

(assert (not bm!285079))

(assert (not b!3943055))

(assert (not b!3942881))

(assert (not b!3942942))

(assert (not b!3943088))

(assert (not b!3943119))

(assert (not tb!236453))

(assert (not b!3943085))

(assert (not d!1169454))

(assert (not b!3942878))

(assert (not b!3942791))

(assert (not b!3943161))

(assert (not b_next!108605))

(assert (not b!3943083))

(assert (not b!3942367))

(assert b_and!301467)

(assert (not b_next!108651))

(assert (not b_next!108659))

(assert (not b!3943034))

(assert (not d!1169426))

(assert (not b!3943173))

(assert (not b!3942882))

(assert (not b_next!108625))

(assert (not b_next!108653))

(assert b_and!301469)

(assert (not tb!236429))

(assert (not b!3942994))

(assert (not b!3942928))

(assert (not tb!236465))

(assert (not d!1169550))

(assert (not b_next!108629))

(assert (not b!3943156))

(assert (not b!3943115))

(assert (not b!3943152))

(assert (not b!3943163))

(assert (not b!3943044))

(assert (not b!3943177))

(assert (not b!3943047))

(assert (not b!3943050))

(assert (not b!3943009))

(assert (not b!3942940))

(assert (not b!3943139))

(assert (not b!3943182))

(assert (not b!3943157))

(assert (not b!3942895))

(assert (not b!3943105))

(assert (not d!1169496))

(assert (not d!1169540))

(assert (not b!3942936))

(assert (not b!3942884))

(assert (not b!3943108))

(assert (not b!3943112))

(assert (not b!3943166))

(assert (not d!1169504))

(assert (not b_lambda!115311))

(assert b_and!301443)

(assert (not b!3942867))

(assert (not d!1169570))

(assert (not d!1169392))

(assert (not b!3942997))

(assert (not bm!285077))

(assert (not b!3943093))

(assert (not b!3943013))

(assert (not b!3943162))

(assert (not b!3942862))

(assert (not b!3942948))

(assert (not b!3942965))

(assert (not b!3943118))

(assert (not d!1169534))

(assert b_and!301465)

(assert b_and!301459)

(assert (not b!3943100))

(assert (not d!1169380))

(assert (not d!1169394))

(assert (not b!3943168))

(assert (not d!1169562))

(check-sat)

(pop 1)

(push 1)

(assert b_and!301461)

(assert (not b_next!108611))

(assert (not b_next!108655))

(assert b_and!301457)

(assert (not b_next!108627))

(assert b_and!301449)

(assert (not b_next!108601))

(assert b_and!301443)

(assert b_and!301463)

(assert b_and!301447)

(assert b_and!301453)

(assert (not b_next!108649))

(assert b_and!301455)

(assert (not b_next!108633))

(assert b_and!301471)

(assert (not b_next!108635))

(assert (not b_next!108603))

(assert (not b_next!108607))

(assert b_and!301441)

(assert b_and!301473)

(assert (not b_next!108631))

(assert (not b_next!108657))

(assert b_and!301445)

(assert b_and!301451)

(assert (not b_next!108609))

(assert b_and!301439)

(assert (not b_next!108605))

(assert b_and!301467)

(assert (not b_next!108659))

(assert (not b_next!108651))

(assert (not b_next!108625))

(assert (not b_next!108653))

(assert b_and!301469)

(assert (not b_next!108629))

(assert b_and!301465)

(assert b_and!301459)

(check-sat)

(pop 1)

