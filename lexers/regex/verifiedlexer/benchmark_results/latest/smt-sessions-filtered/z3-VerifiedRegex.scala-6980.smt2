; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!370436 () Bool)

(assert start!370436)

(declare-fun b!3943720 () Bool)

(declare-fun b_free!107981 () Bool)

(declare-fun b_next!108685 () Bool)

(assert (=> b!3943720 (= b_free!107981 (not b_next!108685))))

(declare-fun tp!1200459 () Bool)

(declare-fun b_and!301547 () Bool)

(assert (=> b!3943720 (= tp!1200459 b_and!301547)))

(declare-fun b_free!107983 () Bool)

(declare-fun b_next!108687 () Bool)

(assert (=> b!3943720 (= b_free!107983 (not b_next!108687))))

(declare-fun tp!1200467 () Bool)

(declare-fun b_and!301549 () Bool)

(assert (=> b!3943720 (= tp!1200467 b_and!301549)))

(declare-fun b!3943727 () Bool)

(declare-fun b_free!107985 () Bool)

(declare-fun b_next!108689 () Bool)

(assert (=> b!3943727 (= b_free!107985 (not b_next!108689))))

(declare-fun tp!1200464 () Bool)

(declare-fun b_and!301551 () Bool)

(assert (=> b!3943727 (= tp!1200464 b_and!301551)))

(declare-fun b_free!107987 () Bool)

(declare-fun b_next!108691 () Bool)

(assert (=> b!3943727 (= b_free!107987 (not b_next!108691))))

(declare-fun tp!1200460 () Bool)

(declare-fun b_and!301553 () Bool)

(assert (=> b!3943727 (= tp!1200460 b_and!301553)))

(declare-fun b!3943711 () Bool)

(declare-fun b_free!107989 () Bool)

(declare-fun b_next!108693 () Bool)

(assert (=> b!3943711 (= b_free!107989 (not b_next!108693))))

(declare-fun tp!1200463 () Bool)

(declare-fun b_and!301555 () Bool)

(assert (=> b!3943711 (= tp!1200463 b_and!301555)))

(declare-fun b_free!107991 () Bool)

(declare-fun b_next!108695 () Bool)

(assert (=> b!3943711 (= b_free!107991 (not b_next!108695))))

(declare-fun tp!1200455 () Bool)

(declare-fun b_and!301557 () Bool)

(assert (=> b!3943711 (= tp!1200455 b_and!301557)))

(declare-fun e!2440287 () Bool)

(assert (=> b!3943711 (= e!2440287 (and tp!1200463 tp!1200455))))

(declare-fun tp!1200466 () Bool)

(declare-fun e!2440275 () Bool)

(declare-fun b!3943712 () Bool)

(declare-datatypes ((List!42009 0))(
  ( (Nil!41885) (Cons!41885 (h!47305 (_ BitVec 16)) (t!327346 List!42009)) )
))
(declare-datatypes ((TokenValue!6778 0))(
  ( (FloatLiteralValue!13556 (text!47891 List!42009)) (TokenValueExt!6777 (__x!25773 Int)) (Broken!33890 (value!207226 List!42009)) (Object!6901) (End!6778) (Def!6778) (Underscore!6778) (Match!6778) (Else!6778) (Error!6778) (Case!6778) (If!6778) (Extends!6778) (Abstract!6778) (Class!6778) (Val!6778) (DelimiterValue!13556 (del!6838 List!42009)) (KeywordValue!6784 (value!207227 List!42009)) (CommentValue!13556 (value!207228 List!42009)) (WhitespaceValue!13556 (value!207229 List!42009)) (IndentationValue!6778 (value!207230 List!42009)) (String!47607) (Int32!6778) (Broken!33891 (value!207231 List!42009)) (Boolean!6779) (Unit!60427) (OperatorValue!6781 (op!6838 List!42009)) (IdentifierValue!13556 (value!207232 List!42009)) (IdentifierValue!13557 (value!207233 List!42009)) (WhitespaceValue!13557 (value!207234 List!42009)) (True!13556) (False!13556) (Broken!33892 (value!207235 List!42009)) (Broken!33893 (value!207236 List!42009)) (True!13557) (RightBrace!6778) (RightBracket!6778) (Colon!6778) (Null!6778) (Comma!6778) (LeftBracket!6778) (False!13557) (LeftBrace!6778) (ImaginaryLiteralValue!6778 (text!47892 List!42009)) (StringLiteralValue!20334 (value!207237 List!42009)) (EOFValue!6778 (value!207238 List!42009)) (IdentValue!6778 (value!207239 List!42009)) (DelimiterValue!13557 (value!207240 List!42009)) (DedentValue!6778 (value!207241 List!42009)) (NewLineValue!6778 (value!207242 List!42009)) (IntegerValue!20334 (value!207243 (_ BitVec 32)) (text!47893 List!42009)) (IntegerValue!20335 (value!207244 Int) (text!47894 List!42009)) (Times!6778) (Or!6778) (Equal!6778) (Minus!6778) (Broken!33894 (value!207245 List!42009)) (And!6778) (Div!6778) (LessEqual!6778) (Mod!6778) (Concat!18231) (Not!6778) (Plus!6778) (SpaceValue!6778 (value!207246 List!42009)) (IntegerValue!20336 (value!207247 Int) (text!47895 List!42009)) (StringLiteralValue!20335 (text!47896 List!42009)) (FloatLiteralValue!13557 (text!47897 List!42009)) (BytesLiteralValue!6778 (value!207248 List!42009)) (CommentValue!13557 (value!207249 List!42009)) (StringLiteralValue!20336 (value!207250 List!42009)) (ErrorTokenValue!6778 (msg!6839 List!42009)) )
))
(declare-datatypes ((C!23092 0))(
  ( (C!23093 (val!13640 Int)) )
))
(declare-datatypes ((Regex!11453 0))(
  ( (ElementMatch!11453 (c!685070 C!23092)) (Concat!18232 (regOne!23418 Regex!11453) (regTwo!23418 Regex!11453)) (EmptyExpr!11453) (Star!11453 (reg!11782 Regex!11453)) (EmptyLang!11453) (Union!11453 (regOne!23419 Regex!11453) (regTwo!23419 Regex!11453)) )
))
(declare-datatypes ((String!47608 0))(
  ( (String!47609 (value!207251 String)) )
))
(declare-datatypes ((List!42010 0))(
  ( (Nil!41886) (Cons!41886 (h!47306 C!23092) (t!327347 List!42010)) )
))
(declare-datatypes ((IArray!25523 0))(
  ( (IArray!25524 (innerList!12819 List!42010)) )
))
(declare-datatypes ((Conc!12759 0))(
  ( (Node!12759 (left!31903 Conc!12759) (right!32233 Conc!12759) (csize!25748 Int) (cheight!12970 Int)) (Leaf!19740 (xs!16065 IArray!25523) (csize!25749 Int)) (Empty!12759) )
))
(declare-datatypes ((BalanceConc!25112 0))(
  ( (BalanceConc!25113 (c!685071 Conc!12759)) )
))
(declare-datatypes ((TokenValueInjection!12984 0))(
  ( (TokenValueInjection!12985 (toValue!9016 Int) (toChars!8875 Int)) )
))
(declare-datatypes ((Rule!12896 0))(
  ( (Rule!12897 (regex!6548 Regex!11453) (tag!7408 String!47608) (isSeparator!6548 Bool) (transformation!6548 TokenValueInjection!12984)) )
))
(declare-datatypes ((Token!12234 0))(
  ( (Token!12235 (value!207252 TokenValue!6778) (rule!9510 Rule!12896) (size!31411 Int) (originalCharacters!7148 List!42010)) )
))
(declare-datatypes ((List!42011 0))(
  ( (Nil!41887) (Cons!41887 (h!47307 Token!12234) (t!327348 List!42011)) )
))
(declare-fun suffixTokens!72 () List!42011)

(declare-fun e!2440272 () Bool)

(declare-fun inv!21 (TokenValue!6778) Bool)

(assert (=> b!3943712 (= e!2440272 (and (inv!21 (value!207252 (h!47307 suffixTokens!72))) e!2440275 tp!1200466))))

(declare-fun res!1595858 () Bool)

(declare-fun e!2440285 () Bool)

(assert (=> start!370436 (=> (not res!1595858) (not e!2440285))))

(declare-datatypes ((LexerInterface!6137 0))(
  ( (LexerInterfaceExt!6134 (__x!25774 Int)) (Lexer!6135) )
))
(declare-fun thiss!20629 () LexerInterface!6137)

(get-info :version)

(assert (=> start!370436 (= res!1595858 ((_ is Lexer!6135) thiss!20629))))

(assert (=> start!370436 e!2440285))

(declare-fun e!2440280 () Bool)

(assert (=> start!370436 e!2440280))

(assert (=> start!370436 true))

(declare-fun e!2440286 () Bool)

(assert (=> start!370436 e!2440286))

(declare-fun e!2440270 () Bool)

(assert (=> start!370436 e!2440270))

(declare-fun e!2440273 () Bool)

(assert (=> start!370436 e!2440273))

(declare-fun e!2440281 () Bool)

(assert (=> start!370436 e!2440281))

(declare-fun e!2440282 () Bool)

(assert (=> start!370436 e!2440282))

(declare-fun e!2440268 () Bool)

(declare-fun tp!1200457 () Bool)

(declare-fun b!3943713 () Bool)

(declare-fun inv!56097 (String!47608) Bool)

(declare-fun inv!56100 (TokenValueInjection!12984) Bool)

(assert (=> b!3943713 (= e!2440275 (and tp!1200457 (inv!56097 (tag!7408 (rule!9510 (h!47307 suffixTokens!72)))) (inv!56100 (transformation!6548 (rule!9510 (h!47307 suffixTokens!72)))) e!2440268))))

(declare-fun b!3943714 () Bool)

(declare-fun e!2440269 () Bool)

(assert (=> b!3943714 (= e!2440285 e!2440269)))

(declare-fun res!1595859 () Bool)

(assert (=> b!3943714 (=> (not res!1595859) (not e!2440269))))

(declare-fun suffixResult!91 () List!42010)

(declare-fun lt!1379037 () List!42010)

(declare-datatypes ((List!42012 0))(
  ( (Nil!41888) (Cons!41888 (h!47308 Rule!12896) (t!327349 List!42012)) )
))
(declare-fun rules!2768 () List!42012)

(declare-fun prefixTokens!80 () List!42011)

(declare-datatypes ((tuple2!41174 0))(
  ( (tuple2!41175 (_1!23721 List!42011) (_2!23721 List!42010)) )
))
(declare-fun lexList!1905 (LexerInterface!6137 List!42012 List!42010) tuple2!41174)

(declare-fun ++!10853 (List!42011 List!42011) List!42011)

(assert (=> b!3943714 (= res!1595859 (= (lexList!1905 thiss!20629 rules!2768 lt!1379037) (tuple2!41175 (++!10853 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42010)

(declare-fun suffix!1176 () List!42010)

(declare-fun ++!10854 (List!42010 List!42010) List!42010)

(assert (=> b!3943714 (= lt!1379037 (++!10854 prefix!426 suffix!1176))))

(declare-fun e!2440267 () Bool)

(declare-fun e!2440276 () Bool)

(declare-fun tp!1200456 () Bool)

(declare-fun b!3943715 () Bool)

(assert (=> b!3943715 (= e!2440267 (and (inv!21 (value!207252 (h!47307 prefixTokens!80))) e!2440276 tp!1200456))))

(declare-fun b!3943716 () Bool)

(declare-fun res!1595861 () Bool)

(assert (=> b!3943716 (=> (not res!1595861) (not e!2440285))))

(declare-fun isEmpty!24994 (List!42011) Bool)

(assert (=> b!3943716 (= res!1595861 (not (isEmpty!24994 prefixTokens!80)))))

(declare-fun b!3943717 () Bool)

(declare-fun e!2440277 () Bool)

(declare-fun tp!1200465 () Bool)

(assert (=> b!3943717 (= e!2440270 (and e!2440277 tp!1200465))))

(declare-fun b!3943718 () Bool)

(declare-fun tp!1200470 () Bool)

(declare-fun inv!56101 (Token!12234) Bool)

(assert (=> b!3943718 (= e!2440273 (and (inv!56101 (h!47307 prefixTokens!80)) e!2440267 tp!1200470))))

(declare-fun b!3943719 () Bool)

(declare-fun res!1595856 () Bool)

(assert (=> b!3943719 (=> (not res!1595856) (not e!2440269))))

(assert (=> b!3943719 (= res!1595856 (= (lexList!1905 thiss!20629 rules!2768 suffix!1176) (tuple2!41175 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2440288 () Bool)

(assert (=> b!3943720 (= e!2440288 (and tp!1200459 tp!1200467))))

(declare-fun b!3943721 () Bool)

(declare-fun res!1595863 () Bool)

(assert (=> b!3943721 (=> (not res!1595863) (not e!2440285))))

(declare-fun isEmpty!24995 (List!42012) Bool)

(assert (=> b!3943721 (= res!1595863 (not (isEmpty!24995 rules!2768)))))

(declare-fun b!3943722 () Bool)

(declare-fun tp!1200462 () Bool)

(assert (=> b!3943722 (= e!2440281 (and (inv!56101 (h!47307 suffixTokens!72)) e!2440272 tp!1200462))))

(declare-fun b!3943723 () Bool)

(declare-fun res!1595860 () Bool)

(assert (=> b!3943723 (=> (not res!1595860) (not e!2440285))))

(declare-fun isEmpty!24996 (List!42010) Bool)

(assert (=> b!3943723 (= res!1595860 (not (isEmpty!24996 prefix!426)))))

(declare-fun b!3943724 () Bool)

(declare-fun e!2440274 () Bool)

(assert (=> b!3943724 (= e!2440274 (not true))))

(declare-fun lt!1379038 () Bool)

(declare-fun lt!1379035 () List!42010)

(declare-fun isPrefix!3637 (List!42010 List!42010) Bool)

(assert (=> b!3943724 (= lt!1379038 (isPrefix!3637 lt!1379035 lt!1379037))))

(declare-fun lt!1379041 () List!42010)

(declare-fun getSuffix!2088 (List!42010 List!42010) List!42010)

(assert (=> b!3943724 (= lt!1379041 (getSuffix!2088 lt!1379037 lt!1379035))))

(declare-datatypes ((tuple2!41176 0))(
  ( (tuple2!41177 (_1!23722 Token!12234) (_2!23722 List!42010)) )
))
(declare-datatypes ((Option!8968 0))(
  ( (None!8967) (Some!8967 (v!39303 tuple2!41176)) )
))
(declare-fun lt!1379036 () Option!8968)

(assert (=> b!3943724 (isPrefix!3637 lt!1379035 (++!10854 lt!1379035 (_2!23722 (v!39303 lt!1379036))))))

(declare-datatypes ((Unit!60428 0))(
  ( (Unit!60429) )
))
(declare-fun lt!1379040 () Unit!60428)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2496 (List!42010 List!42010) Unit!60428)

(assert (=> b!3943724 (= lt!1379040 (lemmaConcatTwoListThenFirstIsPrefix!2496 lt!1379035 (_2!23722 (v!39303 lt!1379036))))))

(declare-fun list!15556 (BalanceConc!25112) List!42010)

(declare-fun charsOf!4366 (Token!12234) BalanceConc!25112)

(assert (=> b!3943724 (= lt!1379035 (list!15556 (charsOf!4366 (_1!23722 (v!39303 lt!1379036)))))))

(declare-fun ruleValid!2490 (LexerInterface!6137 Rule!12896) Bool)

(assert (=> b!3943724 (ruleValid!2490 thiss!20629 (rule!9510 (_1!23722 (v!39303 lt!1379036))))))

(declare-fun lt!1379039 () Unit!60428)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1566 (LexerInterface!6137 Rule!12896 List!42012) Unit!60428)

(assert (=> b!3943724 (= lt!1379039 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1566 thiss!20629 (rule!9510 (_1!23722 (v!39303 lt!1379036))) rules!2768))))

(declare-fun lt!1379034 () Unit!60428)

(declare-fun lemmaCharactersSize!1201 (Token!12234) Unit!60428)

(assert (=> b!3943724 (= lt!1379034 (lemmaCharactersSize!1201 (_1!23722 (v!39303 lt!1379036))))))

(declare-fun b!3943725 () Bool)

(declare-fun tp_is_empty!19877 () Bool)

(declare-fun tp!1200461 () Bool)

(assert (=> b!3943725 (= e!2440280 (and tp_is_empty!19877 tp!1200461))))

(declare-fun b!3943726 () Bool)

(assert (=> b!3943726 (= e!2440269 e!2440274)))

(declare-fun res!1595857 () Bool)

(assert (=> b!3943726 (=> (not res!1595857) (not e!2440274))))

(assert (=> b!3943726 (= res!1595857 ((_ is Some!8967) lt!1379036))))

(declare-fun maxPrefix!3441 (LexerInterface!6137 List!42012 List!42010) Option!8968)

(assert (=> b!3943726 (= lt!1379036 (maxPrefix!3441 thiss!20629 rules!2768 lt!1379037))))

(assert (=> b!3943727 (= e!2440268 (and tp!1200464 tp!1200460))))

(declare-fun b!3943728 () Bool)

(declare-fun tp!1200458 () Bool)

(assert (=> b!3943728 (= e!2440276 (and tp!1200458 (inv!56097 (tag!7408 (rule!9510 (h!47307 prefixTokens!80)))) (inv!56100 (transformation!6548 (rule!9510 (h!47307 prefixTokens!80)))) e!2440288))))

(declare-fun b!3943729 () Bool)

(declare-fun tp!1200454 () Bool)

(assert (=> b!3943729 (= e!2440282 (and tp_is_empty!19877 tp!1200454))))

(declare-fun b!3943730 () Bool)

(declare-fun res!1595862 () Bool)

(assert (=> b!3943730 (=> (not res!1595862) (not e!2440285))))

(declare-fun rulesInvariant!5480 (LexerInterface!6137 List!42012) Bool)

(assert (=> b!3943730 (= res!1595862 (rulesInvariant!5480 thiss!20629 rules!2768))))

(declare-fun b!3943731 () Bool)

(declare-fun tp!1200468 () Bool)

(assert (=> b!3943731 (= e!2440286 (and tp_is_empty!19877 tp!1200468))))

(declare-fun b!3943732 () Bool)

(declare-fun tp!1200469 () Bool)

(assert (=> b!3943732 (= e!2440277 (and tp!1200469 (inv!56097 (tag!7408 (h!47308 rules!2768))) (inv!56100 (transformation!6548 (h!47308 rules!2768))) e!2440287))))

(assert (= (and start!370436 res!1595858) b!3943721))

(assert (= (and b!3943721 res!1595863) b!3943730))

(assert (= (and b!3943730 res!1595862) b!3943716))

(assert (= (and b!3943716 res!1595861) b!3943723))

(assert (= (and b!3943723 res!1595860) b!3943714))

(assert (= (and b!3943714 res!1595859) b!3943719))

(assert (= (and b!3943719 res!1595856) b!3943726))

(assert (= (and b!3943726 res!1595857) b!3943724))

(assert (= (and start!370436 ((_ is Cons!41886) suffixResult!91)) b!3943725))

(assert (= (and start!370436 ((_ is Cons!41886) suffix!1176)) b!3943731))

(assert (= b!3943732 b!3943711))

(assert (= b!3943717 b!3943732))

(assert (= (and start!370436 ((_ is Cons!41888) rules!2768)) b!3943717))

(assert (= b!3943728 b!3943720))

(assert (= b!3943715 b!3943728))

(assert (= b!3943718 b!3943715))

(assert (= (and start!370436 ((_ is Cons!41887) prefixTokens!80)) b!3943718))

(assert (= b!3943713 b!3943727))

(assert (= b!3943712 b!3943713))

(assert (= b!3943722 b!3943712))

(assert (= (and start!370436 ((_ is Cons!41887) suffixTokens!72)) b!3943722))

(assert (= (and start!370436 ((_ is Cons!41886) prefix!426)) b!3943729))

(declare-fun m!4512359 () Bool)

(assert (=> b!3943728 m!4512359))

(declare-fun m!4512361 () Bool)

(assert (=> b!3943728 m!4512361))

(declare-fun m!4512363 () Bool)

(assert (=> b!3943723 m!4512363))

(declare-fun m!4512365 () Bool)

(assert (=> b!3943719 m!4512365))

(declare-fun m!4512367 () Bool)

(assert (=> b!3943712 m!4512367))

(declare-fun m!4512369 () Bool)

(assert (=> b!3943713 m!4512369))

(declare-fun m!4512371 () Bool)

(assert (=> b!3943713 m!4512371))

(declare-fun m!4512373 () Bool)

(assert (=> b!3943721 m!4512373))

(declare-fun m!4512375 () Bool)

(assert (=> b!3943718 m!4512375))

(declare-fun m!4512377 () Bool)

(assert (=> b!3943722 m!4512377))

(declare-fun m!4512379 () Bool)

(assert (=> b!3943715 m!4512379))

(declare-fun m!4512381 () Bool)

(assert (=> b!3943724 m!4512381))

(declare-fun m!4512383 () Bool)

(assert (=> b!3943724 m!4512383))

(declare-fun m!4512385 () Bool)

(assert (=> b!3943724 m!4512385))

(declare-fun m!4512387 () Bool)

(assert (=> b!3943724 m!4512387))

(declare-fun m!4512389 () Bool)

(assert (=> b!3943724 m!4512389))

(declare-fun m!4512391 () Bool)

(assert (=> b!3943724 m!4512391))

(declare-fun m!4512393 () Bool)

(assert (=> b!3943724 m!4512393))

(assert (=> b!3943724 m!4512383))

(declare-fun m!4512395 () Bool)

(assert (=> b!3943724 m!4512395))

(assert (=> b!3943724 m!4512391))

(declare-fun m!4512397 () Bool)

(assert (=> b!3943724 m!4512397))

(declare-fun m!4512399 () Bool)

(assert (=> b!3943724 m!4512399))

(declare-fun m!4512401 () Bool)

(assert (=> b!3943730 m!4512401))

(declare-fun m!4512403 () Bool)

(assert (=> b!3943714 m!4512403))

(declare-fun m!4512405 () Bool)

(assert (=> b!3943714 m!4512405))

(declare-fun m!4512407 () Bool)

(assert (=> b!3943714 m!4512407))

(declare-fun m!4512409 () Bool)

(assert (=> b!3943716 m!4512409))

(declare-fun m!4512411 () Bool)

(assert (=> b!3943732 m!4512411))

(declare-fun m!4512413 () Bool)

(assert (=> b!3943732 m!4512413))

(declare-fun m!4512415 () Bool)

(assert (=> b!3943726 m!4512415))

(check-sat (not b_next!108687) (not b!3943722) (not b!3943716) b_and!301553 (not b!3943721) (not b!3943712) (not b!3943725) (not b!3943732) (not b!3943731) (not b_next!108695) (not b!3943714) (not b_next!108689) (not b!3943718) b_and!301547 (not b!3943713) b_and!301557 b_and!301551 (not b!3943728) (not b_next!108693) (not b_next!108691) (not b_next!108685) tp_is_empty!19877 (not b!3943724) (not b!3943730) b_and!301555 (not b!3943729) (not b!3943717) b_and!301549 (not b!3943726) (not b!3943723) (not b!3943715) (not b!3943719))
(check-sat b_and!301547 (not b_next!108687) b_and!301553 b_and!301557 b_and!301551 (not b_next!108685) b_and!301555 b_and!301549 (not b_next!108695) (not b_next!108689) (not b_next!108693) (not b_next!108691))
