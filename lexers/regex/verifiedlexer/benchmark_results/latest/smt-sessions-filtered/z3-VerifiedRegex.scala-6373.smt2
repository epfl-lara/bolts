; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331758 () Bool)

(assert start!331758)

(declare-fun b!3579159 () Bool)

(declare-fun b_free!91693 () Bool)

(declare-fun b_next!92397 () Bool)

(assert (=> b!3579159 (= b_free!91693 (not b_next!92397))))

(declare-fun tp!1095023 () Bool)

(declare-fun b_and!257963 () Bool)

(assert (=> b!3579159 (= tp!1095023 b_and!257963)))

(declare-fun b_free!91695 () Bool)

(declare-fun b_next!92399 () Bool)

(assert (=> b!3579159 (= b_free!91695 (not b_next!92399))))

(declare-fun tp!1095014 () Bool)

(declare-fun b_and!257965 () Bool)

(assert (=> b!3579159 (= tp!1095014 b_and!257965)))

(declare-fun b!3579168 () Bool)

(declare-fun b_free!91697 () Bool)

(declare-fun b_next!92401 () Bool)

(assert (=> b!3579168 (= b_free!91697 (not b_next!92401))))

(declare-fun tp!1095024 () Bool)

(declare-fun b_and!257967 () Bool)

(assert (=> b!3579168 (= tp!1095024 b_and!257967)))

(declare-fun b_free!91699 () Bool)

(declare-fun b_next!92403 () Bool)

(assert (=> b!3579168 (= b_free!91699 (not b_next!92403))))

(declare-fun tp!1095011 () Bool)

(declare-fun b_and!257969 () Bool)

(assert (=> b!3579168 (= tp!1095011 b_and!257969)))

(declare-fun b!3579173 () Bool)

(declare-fun b_free!91701 () Bool)

(declare-fun b_next!92405 () Bool)

(assert (=> b!3579173 (= b_free!91701 (not b_next!92405))))

(declare-fun tp!1095018 () Bool)

(declare-fun b_and!257971 () Bool)

(assert (=> b!3579173 (= tp!1095018 b_and!257971)))

(declare-fun b_free!91703 () Bool)

(declare-fun b_next!92407 () Bool)

(assert (=> b!3579173 (= b_free!91703 (not b_next!92407))))

(declare-fun tp!1095013 () Bool)

(declare-fun b_and!257973 () Bool)

(assert (=> b!3579173 (= tp!1095013 b_and!257973)))

(declare-fun b!3579174 () Bool)

(declare-fun b_free!91705 () Bool)

(declare-fun b_next!92409 () Bool)

(assert (=> b!3579174 (= b_free!91705 (not b_next!92409))))

(declare-fun tp!1095017 () Bool)

(declare-fun b_and!257975 () Bool)

(assert (=> b!3579174 (= tp!1095017 b_and!257975)))

(declare-fun b_free!91707 () Bool)

(declare-fun b_next!92411 () Bool)

(assert (=> b!3579174 (= b_free!91707 (not b_next!92411))))

(declare-fun tp!1095020 () Bool)

(declare-fun b_and!257977 () Bool)

(assert (=> b!3579174 (= tp!1095020 b_and!257977)))

(declare-fun e!2214319 () Bool)

(assert (=> b!3579159 (= e!2214319 (and tp!1095023 tp!1095014))))

(declare-fun b!3579160 () Bool)

(declare-fun res!1444046 () Bool)

(declare-fun e!2214328 () Bool)

(assert (=> b!3579160 (=> (not res!1444046) (not e!2214328))))

(declare-datatypes ((LexerInterface!5115 0))(
  ( (LexerInterfaceExt!5112 (__x!23729 Int)) (Lexer!5113) )
))
(declare-fun thiss!23823 () LexerInterface!5115)

(declare-datatypes ((List!37691 0))(
  ( (Nil!37567) (Cons!37567 (h!42987 (_ BitVec 16)) (t!290176 List!37691)) )
))
(declare-datatypes ((TokenValue!5756 0))(
  ( (FloatLiteralValue!11512 (text!40737 List!37691)) (TokenValueExt!5755 (__x!23730 Int)) (Broken!28780 (value!177925 List!37691)) (Object!5879) (End!5756) (Def!5756) (Underscore!5756) (Match!5756) (Else!5756) (Error!5756) (Case!5756) (If!5756) (Extends!5756) (Abstract!5756) (Class!5756) (Val!5756) (DelimiterValue!11512 (del!5816 List!37691)) (KeywordValue!5762 (value!177926 List!37691)) (CommentValue!11512 (value!177927 List!37691)) (WhitespaceValue!11512 (value!177928 List!37691)) (IndentationValue!5756 (value!177929 List!37691)) (String!42113) (Int32!5756) (Broken!28781 (value!177930 List!37691)) (Boolean!5757) (Unit!53600) (OperatorValue!5759 (op!5816 List!37691)) (IdentifierValue!11512 (value!177931 List!37691)) (IdentifierValue!11513 (value!177932 List!37691)) (WhitespaceValue!11513 (value!177933 List!37691)) (True!11512) (False!11512) (Broken!28782 (value!177934 List!37691)) (Broken!28783 (value!177935 List!37691)) (True!11513) (RightBrace!5756) (RightBracket!5756) (Colon!5756) (Null!5756) (Comma!5756) (LeftBracket!5756) (False!11513) (LeftBrace!5756) (ImaginaryLiteralValue!5756 (text!40738 List!37691)) (StringLiteralValue!17268 (value!177936 List!37691)) (EOFValue!5756 (value!177937 List!37691)) (IdentValue!5756 (value!177938 List!37691)) (DelimiterValue!11513 (value!177939 List!37691)) (DedentValue!5756 (value!177940 List!37691)) (NewLineValue!5756 (value!177941 List!37691)) (IntegerValue!17268 (value!177942 (_ BitVec 32)) (text!40739 List!37691)) (IntegerValue!17269 (value!177943 Int) (text!40740 List!37691)) (Times!5756) (Or!5756) (Equal!5756) (Minus!5756) (Broken!28784 (value!177944 List!37691)) (And!5756) (Div!5756) (LessEqual!5756) (Mod!5756) (Concat!16041) (Not!5756) (Plus!5756) (SpaceValue!5756 (value!177945 List!37691)) (IntegerValue!17270 (value!177946 Int) (text!40741 List!37691)) (StringLiteralValue!17269 (text!40742 List!37691)) (FloatLiteralValue!11513 (text!40743 List!37691)) (BytesLiteralValue!5756 (value!177947 List!37691)) (CommentValue!11513 (value!177948 List!37691)) (StringLiteralValue!17270 (value!177949 List!37691)) (ErrorTokenValue!5756 (msg!5817 List!37691)) )
))
(declare-datatypes ((C!20756 0))(
  ( (C!20757 (val!12426 Int)) )
))
(declare-datatypes ((Regex!10285 0))(
  ( (ElementMatch!10285 (c!620359 C!20756)) (Concat!16042 (regOne!21082 Regex!10285) (regTwo!21082 Regex!10285)) (EmptyExpr!10285) (Star!10285 (reg!10614 Regex!10285)) (EmptyLang!10285) (Union!10285 (regOne!21083 Regex!10285) (regTwo!21083 Regex!10285)) )
))
(declare-datatypes ((String!42114 0))(
  ( (String!42115 (value!177950 String)) )
))
(declare-datatypes ((List!37692 0))(
  ( (Nil!37568) (Cons!37568 (h!42988 C!20756) (t!290177 List!37692)) )
))
(declare-datatypes ((IArray!22853 0))(
  ( (IArray!22854 (innerList!11484 List!37692)) )
))
(declare-datatypes ((Conc!11424 0))(
  ( (Node!11424 (left!29381 Conc!11424) (right!29711 Conc!11424) (csize!23078 Int) (cheight!11635 Int)) (Leaf!17798 (xs!14626 IArray!22853) (csize!23079 Int)) (Empty!11424) )
))
(declare-datatypes ((BalanceConc!22462 0))(
  ( (BalanceConc!22463 (c!620360 Conc!11424)) )
))
(declare-datatypes ((TokenValueInjection!10940 0))(
  ( (TokenValueInjection!10941 (toValue!7798 Int) (toChars!7657 Int)) )
))
(declare-datatypes ((Rule!10852 0))(
  ( (Rule!10853 (regex!5526 Regex!10285) (tag!6192 String!42114) (isSeparator!5526 Bool) (transformation!5526 TokenValueInjection!10940)) )
))
(declare-datatypes ((List!37693 0))(
  ( (Nil!37569) (Cons!37569 (h!42989 Rule!10852) (t!290178 List!37693)) )
))
(declare-fun rules!3307 () List!37693)

(declare-fun rulesInvariant!4512 (LexerInterface!5115 List!37693) Bool)

(assert (=> b!3579160 (= res!1444046 (rulesInvariant!4512 thiss!23823 rules!3307))))

(declare-fun b!3579161 () Bool)

(declare-fun res!1444045 () Bool)

(assert (=> b!3579161 (=> (not res!1444045) (not e!2214328))))

(declare-fun anOtherTypeRule!33 () Rule!10852)

(declare-fun contains!7128 (List!37693 Rule!10852) Bool)

(assert (=> b!3579161 (= res!1444045 (contains!7128 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3579162 () Bool)

(declare-fun e!2214323 () Bool)

(declare-fun tp!1095015 () Bool)

(declare-fun e!2214332 () Bool)

(declare-fun rule!403 () Rule!10852)

(declare-fun inv!50847 (String!42114) Bool)

(declare-fun inv!50850 (TokenValueInjection!10940) Bool)

(assert (=> b!3579162 (= e!2214332 (and tp!1095015 (inv!50847 (tag!6192 rule!403)) (inv!50850 (transformation!5526 rule!403)) e!2214323))))

(declare-fun b!3579163 () Bool)

(declare-fun res!1444044 () Bool)

(assert (=> b!3579163 (=> (not res!1444044) (not e!2214328))))

(assert (=> b!3579163 (= res!1444044 (contains!7128 rules!3307 rule!403))))

(declare-fun b!3579164 () Bool)

(declare-fun rulesValidInductive!1911 (LexerInterface!5115 List!37693) Bool)

(assert (=> b!3579164 (= e!2214328 (not (rulesValidInductive!1911 thiss!23823 rules!3307)))))

(declare-fun lt!1228352 () List!37692)

(declare-datatypes ((Token!10418 0))(
  ( (Token!10419 (value!177951 TokenValue!5756) (rule!8238 Rule!10852) (size!28655 Int) (originalCharacters!6240 List!37692)) )
))
(declare-fun token!511 () Token!10418)

(declare-fun list!13793 (BalanceConc!22462) List!37692)

(declare-fun charsOf!3540 (Token!10418) BalanceConc!22462)

(assert (=> b!3579164 (= lt!1228352 (list!13793 (charsOf!3540 token!511)))))

(declare-fun b!3579165 () Bool)

(declare-fun res!1444048 () Bool)

(assert (=> b!3579165 (=> (not res!1444048) (not e!2214328))))

(declare-fun isEmpty!22119 (List!37693) Bool)

(assert (=> b!3579165 (= res!1444048 (not (isEmpty!22119 rules!3307)))))

(declare-fun b!3579166 () Bool)

(declare-fun res!1444049 () Bool)

(assert (=> b!3579166 (=> (not res!1444049) (not e!2214328))))

(assert (=> b!3579166 (= res!1444049 (not (= (isSeparator!5526 anOtherTypeRule!33) (isSeparator!5526 rule!403))))))

(assert (=> b!3579168 (= e!2214323 (and tp!1095024 tp!1095011))))

(declare-fun b!3579169 () Bool)

(declare-fun e!2214321 () Bool)

(declare-fun e!2214320 () Bool)

(declare-fun tp!1095012 () Bool)

(assert (=> b!3579169 (= e!2214321 (and tp!1095012 (inv!50847 (tag!6192 (rule!8238 token!511))) (inv!50850 (transformation!5526 (rule!8238 token!511))) e!2214320))))

(declare-fun e!2214329 () Bool)

(declare-fun tp!1095021 () Bool)

(declare-fun b!3579170 () Bool)

(assert (=> b!3579170 (= e!2214329 (and tp!1095021 (inv!50847 (tag!6192 (h!42989 rules!3307))) (inv!50850 (transformation!5526 (h!42989 rules!3307))) e!2214319))))

(declare-fun b!3579171 () Bool)

(declare-fun e!2214326 () Bool)

(declare-fun tp!1095019 () Bool)

(declare-fun inv!21 (TokenValue!5756) Bool)

(assert (=> b!3579171 (= e!2214326 (and (inv!21 (value!177951 token!511)) e!2214321 tp!1095019))))

(declare-fun b!3579172 () Bool)

(declare-fun e!2214325 () Bool)

(declare-fun tp!1095016 () Bool)

(assert (=> b!3579172 (= e!2214325 (and e!2214329 tp!1095016))))

(declare-fun tp!1095022 () Bool)

(declare-fun b!3579167 () Bool)

(declare-fun e!2214331 () Bool)

(declare-fun e!2214333 () Bool)

(assert (=> b!3579167 (= e!2214331 (and tp!1095022 (inv!50847 (tag!6192 anOtherTypeRule!33)) (inv!50850 (transformation!5526 anOtherTypeRule!33)) e!2214333))))

(declare-fun res!1444047 () Bool)

(assert (=> start!331758 (=> (not res!1444047) (not e!2214328))))

(get-info :version)

(assert (=> start!331758 (= res!1444047 ((_ is Lexer!5113) thiss!23823))))

(assert (=> start!331758 e!2214328))

(assert (=> start!331758 e!2214325))

(assert (=> start!331758 true))

(declare-fun inv!50851 (Token!10418) Bool)

(assert (=> start!331758 (and (inv!50851 token!511) e!2214326)))

(assert (=> start!331758 e!2214332))

(assert (=> start!331758 e!2214331))

(assert (=> b!3579173 (= e!2214333 (and tp!1095018 tp!1095013))))

(assert (=> b!3579174 (= e!2214320 (and tp!1095017 tp!1095020))))

(assert (= (and start!331758 res!1444047) b!3579165))

(assert (= (and b!3579165 res!1444048) b!3579160))

(assert (= (and b!3579160 res!1444046) b!3579163))

(assert (= (and b!3579163 res!1444044) b!3579161))

(assert (= (and b!3579161 res!1444045) b!3579166))

(assert (= (and b!3579166 res!1444049) b!3579164))

(assert (= b!3579170 b!3579159))

(assert (= b!3579172 b!3579170))

(assert (= (and start!331758 ((_ is Cons!37569) rules!3307)) b!3579172))

(assert (= b!3579169 b!3579174))

(assert (= b!3579171 b!3579169))

(assert (= start!331758 b!3579171))

(assert (= b!3579162 b!3579168))

(assert (= start!331758 b!3579162))

(assert (= b!3579167 b!3579173))

(assert (= start!331758 b!3579167))

(declare-fun m!4073503 () Bool)

(assert (=> b!3579170 m!4073503))

(declare-fun m!4073505 () Bool)

(assert (=> b!3579170 m!4073505))

(declare-fun m!4073507 () Bool)

(assert (=> start!331758 m!4073507))

(declare-fun m!4073509 () Bool)

(assert (=> b!3579165 m!4073509))

(declare-fun m!4073511 () Bool)

(assert (=> b!3579169 m!4073511))

(declare-fun m!4073513 () Bool)

(assert (=> b!3579169 m!4073513))

(declare-fun m!4073515 () Bool)

(assert (=> b!3579163 m!4073515))

(declare-fun m!4073517 () Bool)

(assert (=> b!3579171 m!4073517))

(declare-fun m!4073519 () Bool)

(assert (=> b!3579162 m!4073519))

(declare-fun m!4073521 () Bool)

(assert (=> b!3579162 m!4073521))

(declare-fun m!4073523 () Bool)

(assert (=> b!3579161 m!4073523))

(declare-fun m!4073525 () Bool)

(assert (=> b!3579164 m!4073525))

(declare-fun m!4073527 () Bool)

(assert (=> b!3579164 m!4073527))

(assert (=> b!3579164 m!4073527))

(declare-fun m!4073529 () Bool)

(assert (=> b!3579164 m!4073529))

(declare-fun m!4073531 () Bool)

(assert (=> b!3579160 m!4073531))

(declare-fun m!4073533 () Bool)

(assert (=> b!3579167 m!4073533))

(declare-fun m!4073535 () Bool)

(assert (=> b!3579167 m!4073535))

(check-sat (not start!331758) b_and!257973 (not b!3579162) (not b!3579164) b_and!257967 (not b_next!92405) (not b_next!92399) (not b!3579167) b_and!257963 b_and!257971 b_and!257969 (not b!3579170) (not b!3579160) (not b_next!92409) (not b_next!92407) b_and!257977 (not b!3579169) (not b!3579165) (not b_next!92401) (not b!3579161) (not b!3579171) (not b_next!92411) b_and!257965 (not b!3579163) (not b!3579172) (not b_next!92403) (not b_next!92397) b_and!257975)
(check-sat b_and!257973 (not b_next!92409) b_and!257967 (not b_next!92405) (not b_next!92399) b_and!257963 (not b_next!92401) b_and!257971 b_and!257969 (not b_next!92407) b_and!257977 (not b_next!92411) b_and!257965 (not b_next!92403) (not b_next!92397) b_and!257975)
(get-model)

(declare-fun d!1055714 () Bool)

(declare-fun res!1444071 () Bool)

(declare-fun e!2214343 () Bool)

(assert (=> d!1055714 (=> (not res!1444071) (not e!2214343))))

(declare-fun isEmpty!22121 (List!37692) Bool)

(assert (=> d!1055714 (= res!1444071 (not (isEmpty!22121 (originalCharacters!6240 token!511))))))

(assert (=> d!1055714 (= (inv!50851 token!511) e!2214343)))

(declare-fun b!3579185 () Bool)

(declare-fun res!1444072 () Bool)

(assert (=> b!3579185 (=> (not res!1444072) (not e!2214343))))

(declare-fun dynLambda!16167 (Int TokenValue!5756) BalanceConc!22462)

(assert (=> b!3579185 (= res!1444072 (= (originalCharacters!6240 token!511) (list!13793 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(declare-fun b!3579186 () Bool)

(declare-fun size!28657 (List!37692) Int)

(assert (=> b!3579186 (= e!2214343 (= (size!28655 token!511) (size!28657 (originalCharacters!6240 token!511))))))

(assert (= (and d!1055714 res!1444071) b!3579185))

(assert (= (and b!3579185 res!1444072) b!3579186))

(declare-fun b_lambda!105771 () Bool)

(assert (=> (not b_lambda!105771) (not b!3579185)))

(declare-fun t!290180 () Bool)

(declare-fun tb!204259 () Bool)

(assert (=> (and b!3579159 (= (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290180) tb!204259))

(declare-fun b!3579195 () Bool)

(declare-fun e!2214350 () Bool)

(declare-fun tp!1095027 () Bool)

(declare-fun inv!50854 (Conc!11424) Bool)

(assert (=> b!3579195 (= e!2214350 (and (inv!50854 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))) tp!1095027))))

(declare-fun result!248964 () Bool)

(declare-fun inv!50855 (BalanceConc!22462) Bool)

(assert (=> tb!204259 (= result!248964 (and (inv!50855 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))) e!2214350))))

(assert (= tb!204259 b!3579195))

(declare-fun m!4073543 () Bool)

(assert (=> b!3579195 m!4073543))

(declare-fun m!4073545 () Bool)

(assert (=> tb!204259 m!4073545))

(assert (=> b!3579185 t!290180))

(declare-fun b_and!257979 () Bool)

(assert (= b_and!257965 (and (=> t!290180 result!248964) b_and!257979)))

(declare-fun t!290182 () Bool)

(declare-fun tb!204261 () Bool)

(assert (=> (and b!3579168 (= (toChars!7657 (transformation!5526 rule!403)) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290182) tb!204261))

(declare-fun result!248968 () Bool)

(assert (= result!248968 result!248964))

(assert (=> b!3579185 t!290182))

(declare-fun b_and!257981 () Bool)

(assert (= b_and!257969 (and (=> t!290182 result!248968) b_and!257981)))

(declare-fun t!290184 () Bool)

(declare-fun tb!204263 () Bool)

(assert (=> (and b!3579173 (= (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290184) tb!204263))

(declare-fun result!248970 () Bool)

(assert (= result!248970 result!248964))

(assert (=> b!3579185 t!290184))

(declare-fun b_and!257983 () Bool)

(assert (= b_and!257973 (and (=> t!290184 result!248970) b_and!257983)))

(declare-fun t!290186 () Bool)

(declare-fun tb!204265 () Bool)

(assert (=> (and b!3579174 (= (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290186) tb!204265))

(declare-fun result!248972 () Bool)

(assert (= result!248972 result!248964))

(assert (=> b!3579185 t!290186))

(declare-fun b_and!257985 () Bool)

(assert (= b_and!257977 (and (=> t!290186 result!248972) b_and!257985)))

(declare-fun m!4073547 () Bool)

(assert (=> d!1055714 m!4073547))

(declare-fun m!4073549 () Bool)

(assert (=> b!3579185 m!4073549))

(assert (=> b!3579185 m!4073549))

(declare-fun m!4073551 () Bool)

(assert (=> b!3579185 m!4073551))

(declare-fun m!4073553 () Bool)

(assert (=> b!3579186 m!4073553))

(assert (=> start!331758 d!1055714))

(declare-fun d!1055718 () Bool)

(assert (=> d!1055718 true))

(declare-fun lt!1228365 () Bool)

(declare-fun lambda!123703 () Int)

(declare-fun forall!8136 (List!37693 Int) Bool)

(assert (=> d!1055718 (= lt!1228365 (forall!8136 rules!3307 lambda!123703))))

(declare-fun e!2214404 () Bool)

(assert (=> d!1055718 (= lt!1228365 e!2214404)))

(declare-fun res!1444104 () Bool)

(assert (=> d!1055718 (=> res!1444104 e!2214404)))

(assert (=> d!1055718 (= res!1444104 (not ((_ is Cons!37569) rules!3307)))))

(assert (=> d!1055718 (= (rulesValidInductive!1911 thiss!23823 rules!3307) lt!1228365)))

(declare-fun b!3579283 () Bool)

(declare-fun e!2214405 () Bool)

(assert (=> b!3579283 (= e!2214404 e!2214405)))

(declare-fun res!1444103 () Bool)

(assert (=> b!3579283 (=> (not res!1444103) (not e!2214405))))

(declare-fun ruleValid!1802 (LexerInterface!5115 Rule!10852) Bool)

(assert (=> b!3579283 (= res!1444103 (ruleValid!1802 thiss!23823 (h!42989 rules!3307)))))

(declare-fun b!3579284 () Bool)

(assert (=> b!3579284 (= e!2214405 (rulesValidInductive!1911 thiss!23823 (t!290178 rules!3307)))))

(assert (= (and d!1055718 (not res!1444104)) b!3579283))

(assert (= (and b!3579283 res!1444103) b!3579284))

(declare-fun m!4073611 () Bool)

(assert (=> d!1055718 m!4073611))

(declare-fun m!4073613 () Bool)

(assert (=> b!3579283 m!4073613))

(declare-fun m!4073615 () Bool)

(assert (=> b!3579284 m!4073615))

(assert (=> b!3579164 d!1055718))

(declare-fun d!1055750 () Bool)

(declare-fun list!13795 (Conc!11424) List!37692)

(assert (=> d!1055750 (= (list!13793 (charsOf!3540 token!511)) (list!13795 (c!620360 (charsOf!3540 token!511))))))

(declare-fun bs!569793 () Bool)

(assert (= bs!569793 d!1055750))

(declare-fun m!4073617 () Bool)

(assert (=> bs!569793 m!4073617))

(assert (=> b!3579164 d!1055750))

(declare-fun d!1055752 () Bool)

(declare-fun lt!1228368 () BalanceConc!22462)

(assert (=> d!1055752 (= (list!13793 lt!1228368) (originalCharacters!6240 token!511))))

(assert (=> d!1055752 (= lt!1228368 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))

(assert (=> d!1055752 (= (charsOf!3540 token!511) lt!1228368)))

(declare-fun b_lambda!105781 () Bool)

(assert (=> (not b_lambda!105781) (not d!1055752)))

(assert (=> d!1055752 t!290180))

(declare-fun b_and!258007 () Bool)

(assert (= b_and!257979 (and (=> t!290180 result!248964) b_and!258007)))

(assert (=> d!1055752 t!290182))

(declare-fun b_and!258009 () Bool)

(assert (= b_and!257981 (and (=> t!290182 result!248968) b_and!258009)))

(assert (=> d!1055752 t!290184))

(declare-fun b_and!258011 () Bool)

(assert (= b_and!257983 (and (=> t!290184 result!248970) b_and!258011)))

(assert (=> d!1055752 t!290186))

(declare-fun b_and!258013 () Bool)

(assert (= b_and!257985 (and (=> t!290186 result!248972) b_and!258013)))

(declare-fun m!4073619 () Bool)

(assert (=> d!1055752 m!4073619))

(assert (=> d!1055752 m!4073549))

(assert (=> b!3579164 d!1055752))

(declare-fun d!1055754 () Bool)

(assert (=> d!1055754 (= (isEmpty!22119 rules!3307) ((_ is Nil!37569) rules!3307))))

(assert (=> b!3579165 d!1055754))

(declare-fun d!1055756 () Bool)

(declare-fun lt!1228371 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5330 (List!37693) (InoxSet Rule!10852))

(assert (=> d!1055756 (= lt!1228371 (select (content!5330 rules!3307) rule!403))))

(declare-fun e!2214411 () Bool)

(assert (=> d!1055756 (= lt!1228371 e!2214411)))

(declare-fun res!1444109 () Bool)

(assert (=> d!1055756 (=> (not res!1444109) (not e!2214411))))

(assert (=> d!1055756 (= res!1444109 ((_ is Cons!37569) rules!3307))))

(assert (=> d!1055756 (= (contains!7128 rules!3307 rule!403) lt!1228371)))

(declare-fun b!3579291 () Bool)

(declare-fun e!2214410 () Bool)

(assert (=> b!3579291 (= e!2214411 e!2214410)))

(declare-fun res!1444110 () Bool)

(assert (=> b!3579291 (=> res!1444110 e!2214410)))

(assert (=> b!3579291 (= res!1444110 (= (h!42989 rules!3307) rule!403))))

(declare-fun b!3579292 () Bool)

(assert (=> b!3579292 (= e!2214410 (contains!7128 (t!290178 rules!3307) rule!403))))

(assert (= (and d!1055756 res!1444109) b!3579291))

(assert (= (and b!3579291 (not res!1444110)) b!3579292))

(declare-fun m!4073621 () Bool)

(assert (=> d!1055756 m!4073621))

(declare-fun m!4073623 () Bool)

(assert (=> d!1055756 m!4073623))

(declare-fun m!4073625 () Bool)

(assert (=> b!3579292 m!4073625))

(assert (=> b!3579163 d!1055756))

(declare-fun d!1055758 () Bool)

(assert (=> d!1055758 (= (inv!50847 (tag!6192 rule!403)) (= (mod (str.len (value!177950 (tag!6192 rule!403))) 2) 0))))

(assert (=> b!3579162 d!1055758))

(declare-fun d!1055760 () Bool)

(declare-fun res!1444113 () Bool)

(declare-fun e!2214414 () Bool)

(assert (=> d!1055760 (=> (not res!1444113) (not e!2214414))))

(declare-fun semiInverseModEq!2341 (Int Int) Bool)

(assert (=> d!1055760 (= res!1444113 (semiInverseModEq!2341 (toChars!7657 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 rule!403))))))

(assert (=> d!1055760 (= (inv!50850 (transformation!5526 rule!403)) e!2214414)))

(declare-fun b!3579295 () Bool)

(declare-fun equivClasses!2240 (Int Int) Bool)

(assert (=> b!3579295 (= e!2214414 (equivClasses!2240 (toChars!7657 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 rule!403))))))

(assert (= (and d!1055760 res!1444113) b!3579295))

(declare-fun m!4073627 () Bool)

(assert (=> d!1055760 m!4073627))

(declare-fun m!4073629 () Bool)

(assert (=> b!3579295 m!4073629))

(assert (=> b!3579162 d!1055760))

(declare-fun d!1055762 () Bool)

(declare-fun c!620371 () Bool)

(assert (=> d!1055762 (= c!620371 ((_ is IntegerValue!17268) (value!177951 token!511)))))

(declare-fun e!2214423 () Bool)

(assert (=> d!1055762 (= (inv!21 (value!177951 token!511)) e!2214423)))

(declare-fun b!3579306 () Bool)

(declare-fun e!2214421 () Bool)

(assert (=> b!3579306 (= e!2214423 e!2214421)))

(declare-fun c!620372 () Bool)

(assert (=> b!3579306 (= c!620372 ((_ is IntegerValue!17269) (value!177951 token!511)))))

(declare-fun b!3579307 () Bool)

(declare-fun res!1444116 () Bool)

(declare-fun e!2214422 () Bool)

(assert (=> b!3579307 (=> res!1444116 e!2214422)))

(assert (=> b!3579307 (= res!1444116 (not ((_ is IntegerValue!17270) (value!177951 token!511))))))

(assert (=> b!3579307 (= e!2214421 e!2214422)))

(declare-fun b!3579308 () Bool)

(declare-fun inv!16 (TokenValue!5756) Bool)

(assert (=> b!3579308 (= e!2214423 (inv!16 (value!177951 token!511)))))

(declare-fun b!3579309 () Bool)

(declare-fun inv!17 (TokenValue!5756) Bool)

(assert (=> b!3579309 (= e!2214421 (inv!17 (value!177951 token!511)))))

(declare-fun b!3579310 () Bool)

(declare-fun inv!15 (TokenValue!5756) Bool)

(assert (=> b!3579310 (= e!2214422 (inv!15 (value!177951 token!511)))))

(assert (= (and d!1055762 c!620371) b!3579308))

(assert (= (and d!1055762 (not c!620371)) b!3579306))

(assert (= (and b!3579306 c!620372) b!3579309))

(assert (= (and b!3579306 (not c!620372)) b!3579307))

(assert (= (and b!3579307 (not res!1444116)) b!3579310))

(declare-fun m!4073631 () Bool)

(assert (=> b!3579308 m!4073631))

(declare-fun m!4073633 () Bool)

(assert (=> b!3579309 m!4073633))

(declare-fun m!4073635 () Bool)

(assert (=> b!3579310 m!4073635))

(assert (=> b!3579171 d!1055762))

(declare-fun d!1055764 () Bool)

(declare-fun res!1444119 () Bool)

(declare-fun e!2214426 () Bool)

(assert (=> d!1055764 (=> (not res!1444119) (not e!2214426))))

(declare-fun rulesValid!2101 (LexerInterface!5115 List!37693) Bool)

(assert (=> d!1055764 (= res!1444119 (rulesValid!2101 thiss!23823 rules!3307))))

(assert (=> d!1055764 (= (rulesInvariant!4512 thiss!23823 rules!3307) e!2214426)))

(declare-fun b!3579313 () Bool)

(declare-datatypes ((List!37695 0))(
  ( (Nil!37571) (Cons!37571 (h!42991 String!42114) (t!290200 List!37695)) )
))
(declare-fun noDuplicateTag!2097 (LexerInterface!5115 List!37693 List!37695) Bool)

(assert (=> b!3579313 (= e!2214426 (noDuplicateTag!2097 thiss!23823 rules!3307 Nil!37571))))

(assert (= (and d!1055764 res!1444119) b!3579313))

(declare-fun m!4073637 () Bool)

(assert (=> d!1055764 m!4073637))

(declare-fun m!4073639 () Bool)

(assert (=> b!3579313 m!4073639))

(assert (=> b!3579160 d!1055764))

(declare-fun d!1055766 () Bool)

(declare-fun lt!1228372 () Bool)

(assert (=> d!1055766 (= lt!1228372 (select (content!5330 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2214428 () Bool)

(assert (=> d!1055766 (= lt!1228372 e!2214428)))

(declare-fun res!1444120 () Bool)

(assert (=> d!1055766 (=> (not res!1444120) (not e!2214428))))

(assert (=> d!1055766 (= res!1444120 ((_ is Cons!37569) rules!3307))))

(assert (=> d!1055766 (= (contains!7128 rules!3307 anOtherTypeRule!33) lt!1228372)))

(declare-fun b!3579314 () Bool)

(declare-fun e!2214427 () Bool)

(assert (=> b!3579314 (= e!2214428 e!2214427)))

(declare-fun res!1444121 () Bool)

(assert (=> b!3579314 (=> res!1444121 e!2214427)))

(assert (=> b!3579314 (= res!1444121 (= (h!42989 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3579315 () Bool)

(assert (=> b!3579315 (= e!2214427 (contains!7128 (t!290178 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1055766 res!1444120) b!3579314))

(assert (= (and b!3579314 (not res!1444121)) b!3579315))

(assert (=> d!1055766 m!4073621))

(declare-fun m!4073641 () Bool)

(assert (=> d!1055766 m!4073641))

(declare-fun m!4073643 () Bool)

(assert (=> b!3579315 m!4073643))

(assert (=> b!3579161 d!1055766))

(declare-fun d!1055768 () Bool)

(assert (=> d!1055768 (= (inv!50847 (tag!6192 (h!42989 rules!3307))) (= (mod (str.len (value!177950 (tag!6192 (h!42989 rules!3307)))) 2) 0))))

(assert (=> b!3579170 d!1055768))

(declare-fun d!1055770 () Bool)

(declare-fun res!1444122 () Bool)

(declare-fun e!2214429 () Bool)

(assert (=> d!1055770 (=> (not res!1444122) (not e!2214429))))

(assert (=> d!1055770 (= res!1444122 (semiInverseModEq!2341 (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))))))

(assert (=> d!1055770 (= (inv!50850 (transformation!5526 (h!42989 rules!3307))) e!2214429)))

(declare-fun b!3579316 () Bool)

(assert (=> b!3579316 (= e!2214429 (equivClasses!2240 (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))))))

(assert (= (and d!1055770 res!1444122) b!3579316))

(declare-fun m!4073645 () Bool)

(assert (=> d!1055770 m!4073645))

(declare-fun m!4073647 () Bool)

(assert (=> b!3579316 m!4073647))

(assert (=> b!3579170 d!1055770))

(declare-fun d!1055772 () Bool)

(assert (=> d!1055772 (= (inv!50847 (tag!6192 (rule!8238 token!511))) (= (mod (str.len (value!177950 (tag!6192 (rule!8238 token!511)))) 2) 0))))

(assert (=> b!3579169 d!1055772))

(declare-fun d!1055774 () Bool)

(declare-fun res!1444123 () Bool)

(declare-fun e!2214430 () Bool)

(assert (=> d!1055774 (=> (not res!1444123) (not e!2214430))))

(assert (=> d!1055774 (= res!1444123 (semiInverseModEq!2341 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (rule!8238 token!511)))))))

(assert (=> d!1055774 (= (inv!50850 (transformation!5526 (rule!8238 token!511))) e!2214430)))

(declare-fun b!3579317 () Bool)

(assert (=> b!3579317 (= e!2214430 (equivClasses!2240 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (rule!8238 token!511)))))))

(assert (= (and d!1055774 res!1444123) b!3579317))

(declare-fun m!4073649 () Bool)

(assert (=> d!1055774 m!4073649))

(declare-fun m!4073651 () Bool)

(assert (=> b!3579317 m!4073651))

(assert (=> b!3579169 d!1055774))

(declare-fun d!1055776 () Bool)

(assert (=> d!1055776 (= (inv!50847 (tag!6192 anOtherTypeRule!33)) (= (mod (str.len (value!177950 (tag!6192 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3579167 d!1055776))

(declare-fun d!1055778 () Bool)

(declare-fun res!1444124 () Bool)

(declare-fun e!2214431 () Bool)

(assert (=> d!1055778 (=> (not res!1444124) (not e!2214431))))

(assert (=> d!1055778 (= res!1444124 (semiInverseModEq!2341 (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toValue!7798 (transformation!5526 anOtherTypeRule!33))))))

(assert (=> d!1055778 (= (inv!50850 (transformation!5526 anOtherTypeRule!33)) e!2214431)))

(declare-fun b!3579318 () Bool)

(assert (=> b!3579318 (= e!2214431 (equivClasses!2240 (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toValue!7798 (transformation!5526 anOtherTypeRule!33))))))

(assert (= (and d!1055778 res!1444124) b!3579318))

(declare-fun m!4073653 () Bool)

(assert (=> d!1055778 m!4073653))

(declare-fun m!4073655 () Bool)

(assert (=> b!3579318 m!4073655))

(assert (=> b!3579167 d!1055778))

(declare-fun b!3579332 () Bool)

(declare-fun e!2214434 () Bool)

(declare-fun tp!1095088 () Bool)

(declare-fun tp!1095090 () Bool)

(assert (=> b!3579332 (= e!2214434 (and tp!1095088 tp!1095090))))

(declare-fun b!3579330 () Bool)

(declare-fun tp!1095087 () Bool)

(declare-fun tp!1095089 () Bool)

(assert (=> b!3579330 (= e!2214434 (and tp!1095087 tp!1095089))))

(assert (=> b!3579170 (= tp!1095021 e!2214434)))

(declare-fun b!3579331 () Bool)

(declare-fun tp!1095086 () Bool)

(assert (=> b!3579331 (= e!2214434 tp!1095086)))

(declare-fun b!3579329 () Bool)

(declare-fun tp_is_empty!17673 () Bool)

(assert (=> b!3579329 (= e!2214434 tp_is_empty!17673)))

(assert (= (and b!3579170 ((_ is ElementMatch!10285) (regex!5526 (h!42989 rules!3307)))) b!3579329))

(assert (= (and b!3579170 ((_ is Concat!16042) (regex!5526 (h!42989 rules!3307)))) b!3579330))

(assert (= (and b!3579170 ((_ is Star!10285) (regex!5526 (h!42989 rules!3307)))) b!3579331))

(assert (= (and b!3579170 ((_ is Union!10285) (regex!5526 (h!42989 rules!3307)))) b!3579332))

(declare-fun b!3579336 () Bool)

(declare-fun e!2214435 () Bool)

(declare-fun tp!1095093 () Bool)

(declare-fun tp!1095095 () Bool)

(assert (=> b!3579336 (= e!2214435 (and tp!1095093 tp!1095095))))

(declare-fun b!3579334 () Bool)

(declare-fun tp!1095092 () Bool)

(declare-fun tp!1095094 () Bool)

(assert (=> b!3579334 (= e!2214435 (and tp!1095092 tp!1095094))))

(assert (=> b!3579169 (= tp!1095012 e!2214435)))

(declare-fun b!3579335 () Bool)

(declare-fun tp!1095091 () Bool)

(assert (=> b!3579335 (= e!2214435 tp!1095091)))

(declare-fun b!3579333 () Bool)

(assert (=> b!3579333 (= e!2214435 tp_is_empty!17673)))

(assert (= (and b!3579169 ((_ is ElementMatch!10285) (regex!5526 (rule!8238 token!511)))) b!3579333))

(assert (= (and b!3579169 ((_ is Concat!16042) (regex!5526 (rule!8238 token!511)))) b!3579334))

(assert (= (and b!3579169 ((_ is Star!10285) (regex!5526 (rule!8238 token!511)))) b!3579335))

(assert (= (and b!3579169 ((_ is Union!10285) (regex!5526 (rule!8238 token!511)))) b!3579336))

(declare-fun b!3579340 () Bool)

(declare-fun e!2214436 () Bool)

(declare-fun tp!1095098 () Bool)

(declare-fun tp!1095100 () Bool)

(assert (=> b!3579340 (= e!2214436 (and tp!1095098 tp!1095100))))

(declare-fun b!3579338 () Bool)

(declare-fun tp!1095097 () Bool)

(declare-fun tp!1095099 () Bool)

(assert (=> b!3579338 (= e!2214436 (and tp!1095097 tp!1095099))))

(assert (=> b!3579167 (= tp!1095022 e!2214436)))

(declare-fun b!3579339 () Bool)

(declare-fun tp!1095096 () Bool)

(assert (=> b!3579339 (= e!2214436 tp!1095096)))

(declare-fun b!3579337 () Bool)

(assert (=> b!3579337 (= e!2214436 tp_is_empty!17673)))

(assert (= (and b!3579167 ((_ is ElementMatch!10285) (regex!5526 anOtherTypeRule!33))) b!3579337))

(assert (= (and b!3579167 ((_ is Concat!16042) (regex!5526 anOtherTypeRule!33))) b!3579338))

(assert (= (and b!3579167 ((_ is Star!10285) (regex!5526 anOtherTypeRule!33))) b!3579339))

(assert (= (and b!3579167 ((_ is Union!10285) (regex!5526 anOtherTypeRule!33))) b!3579340))

(declare-fun b!3579351 () Bool)

(declare-fun b_free!91713 () Bool)

(declare-fun b_next!92417 () Bool)

(assert (=> b!3579351 (= b_free!91713 (not b_next!92417))))

(declare-fun tp!1095111 () Bool)

(declare-fun b_and!258015 () Bool)

(assert (=> b!3579351 (= tp!1095111 b_and!258015)))

(declare-fun b_free!91715 () Bool)

(declare-fun b_next!92419 () Bool)

(assert (=> b!3579351 (= b_free!91715 (not b_next!92419))))

(declare-fun t!290199 () Bool)

(declare-fun tb!204277 () Bool)

(assert (=> (and b!3579351 (= (toChars!7657 (transformation!5526 (h!42989 (t!290178 rules!3307)))) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290199) tb!204277))

(declare-fun result!248996 () Bool)

(assert (= result!248996 result!248964))

(assert (=> b!3579185 t!290199))

(assert (=> d!1055752 t!290199))

(declare-fun b_and!258017 () Bool)

(declare-fun tp!1095110 () Bool)

(assert (=> b!3579351 (= tp!1095110 (and (=> t!290199 result!248996) b_and!258017))))

(declare-fun e!2214448 () Bool)

(assert (=> b!3579351 (= e!2214448 (and tp!1095111 tp!1095110))))

(declare-fun b!3579350 () Bool)

(declare-fun e!2214445 () Bool)

(declare-fun tp!1095109 () Bool)

(assert (=> b!3579350 (= e!2214445 (and tp!1095109 (inv!50847 (tag!6192 (h!42989 (t!290178 rules!3307)))) (inv!50850 (transformation!5526 (h!42989 (t!290178 rules!3307)))) e!2214448))))

(declare-fun b!3579349 () Bool)

(declare-fun e!2214447 () Bool)

(declare-fun tp!1095112 () Bool)

(assert (=> b!3579349 (= e!2214447 (and e!2214445 tp!1095112))))

(assert (=> b!3579172 (= tp!1095016 e!2214447)))

(assert (= b!3579350 b!3579351))

(assert (= b!3579349 b!3579350))

(assert (= (and b!3579172 ((_ is Cons!37569) (t!290178 rules!3307))) b!3579349))

(declare-fun m!4073657 () Bool)

(assert (=> b!3579350 m!4073657))

(declare-fun m!4073659 () Bool)

(assert (=> b!3579350 m!4073659))

(declare-fun b!3579355 () Bool)

(declare-fun e!2214449 () Bool)

(declare-fun tp!1095115 () Bool)

(declare-fun tp!1095117 () Bool)

(assert (=> b!3579355 (= e!2214449 (and tp!1095115 tp!1095117))))

(declare-fun b!3579353 () Bool)

(declare-fun tp!1095114 () Bool)

(declare-fun tp!1095116 () Bool)

(assert (=> b!3579353 (= e!2214449 (and tp!1095114 tp!1095116))))

(assert (=> b!3579162 (= tp!1095015 e!2214449)))

(declare-fun b!3579354 () Bool)

(declare-fun tp!1095113 () Bool)

(assert (=> b!3579354 (= e!2214449 tp!1095113)))

(declare-fun b!3579352 () Bool)

(assert (=> b!3579352 (= e!2214449 tp_is_empty!17673)))

(assert (= (and b!3579162 ((_ is ElementMatch!10285) (regex!5526 rule!403))) b!3579352))

(assert (= (and b!3579162 ((_ is Concat!16042) (regex!5526 rule!403))) b!3579353))

(assert (= (and b!3579162 ((_ is Star!10285) (regex!5526 rule!403))) b!3579354))

(assert (= (and b!3579162 ((_ is Union!10285) (regex!5526 rule!403))) b!3579355))

(declare-fun b!3579360 () Bool)

(declare-fun e!2214452 () Bool)

(declare-fun tp!1095120 () Bool)

(assert (=> b!3579360 (= e!2214452 (and tp_is_empty!17673 tp!1095120))))

(assert (=> b!3579171 (= tp!1095019 e!2214452)))

(assert (= (and b!3579171 ((_ is Cons!37568) (originalCharacters!6240 token!511))) b!3579360))

(declare-fun b_lambda!105783 () Bool)

(assert (= b_lambda!105781 (or (and b!3579159 b_free!91695 (= (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579174 b_free!91707) (and b!3579168 b_free!91699 (= (toChars!7657 (transformation!5526 rule!403)) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579173 b_free!91703 (= (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579351 b_free!91715 (= (toChars!7657 (transformation!5526 (h!42989 (t!290178 rules!3307)))) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) b_lambda!105783)))

(declare-fun b_lambda!105785 () Bool)

(assert (= b_lambda!105771 (or (and b!3579159 b_free!91695 (= (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579174 b_free!91707) (and b!3579168 b_free!91699 (= (toChars!7657 (transformation!5526 rule!403)) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579173 b_free!91703 (= (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) (and b!3579351 b_free!91715 (= (toChars!7657 (transformation!5526 (h!42989 (t!290178 rules!3307)))) (toChars!7657 (transformation!5526 (rule!8238 token!511))))) b_lambda!105785)))

(check-sat (not d!1055750) (not b!3579336) (not b!3579284) (not d!1055756) b_and!257963 (not b!3579316) (not b!3579309) b_and!258011 (not b!3579339) (not b!3579292) (not d!1055774) (not b!3579185) (not b_next!92419) (not b!3579295) (not b_lambda!105783) (not b_next!92409) (not b!3579334) (not d!1055770) b_and!258015 (not b_next!92407) (not b!3579186) (not b!3579195) (not b!3579355) (not d!1055766) b_and!258009 (not tb!204259) (not b!3579349) b_and!257967 (not d!1055718) (not b!3579315) (not d!1055752) (not d!1055760) b_and!258017 (not b_next!92405) (not b_lambda!105785) (not d!1055764) (not b!3579318) (not b_next!92399) (not b!3579313) (not b!3579332) (not b!3579335) (not b!3579360) (not b!3579338) (not b_next!92401) (not d!1055714) (not b!3579308) (not b_next!92417) (not b!3579283) b_and!257971 b_and!258007 (not b_next!92411) (not b!3579354) (not b!3579331) b_and!258013 (not b!3579330) (not b!3579340) (not b!3579317) tp_is_empty!17673 (not b!3579350) (not b!3579353) (not b_next!92397) (not d!1055778) b_and!257975 (not b_next!92403) (not b!3579310))
(check-sat b_and!258011 (not b_next!92419) (not b_next!92409) b_and!258009 b_and!257967 (not b_next!92399) b_and!257963 (not b_next!92401) (not b_next!92417) (not b_next!92411) b_and!258013 b_and!258015 (not b_next!92407) b_and!258017 (not b_next!92405) b_and!257971 b_and!258007 (not b_next!92403) (not b_next!92397) b_and!257975)
(get-model)

(declare-fun d!1055780 () Bool)

(assert (=> d!1055780 true))

(declare-fun order!20419 () Int)

(declare-fun lambda!123706 () Int)

(declare-fun order!20421 () Int)

(declare-fun dynLambda!16168 (Int Int) Int)

(declare-fun dynLambda!16169 (Int Int) Int)

(assert (=> d!1055780 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (dynLambda!16169 order!20421 lambda!123706))))

(declare-fun Forall2!957 (Int) Bool)

(assert (=> d!1055780 (= (equivClasses!2240 (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (Forall2!957 lambda!123706))))

(declare-fun bs!569794 () Bool)

(assert (= bs!569794 d!1055780))

(declare-fun m!4073661 () Bool)

(assert (=> bs!569794 m!4073661))

(assert (=> b!3579318 d!1055780))

(declare-fun bs!569795 () Bool)

(declare-fun d!1055782 () Bool)

(assert (= bs!569795 (and d!1055782 d!1055780)))

(declare-fun lambda!123707 () Int)

(assert (=> bs!569795 (= (= (toValue!7798 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (= lambda!123707 lambda!123706))))

(assert (=> d!1055782 true))

(assert (=> d!1055782 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (dynLambda!16169 order!20421 lambda!123707))))

(assert (=> d!1055782 (= (equivClasses!2240 (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (Forall2!957 lambda!123707))))

(declare-fun bs!569796 () Bool)

(assert (= bs!569796 d!1055782))

(declare-fun m!4073663 () Bool)

(assert (=> bs!569796 m!4073663))

(assert (=> b!3579316 d!1055782))

(declare-fun d!1055784 () Bool)

(declare-fun c!620375 () Bool)

(assert (=> d!1055784 (= c!620375 ((_ is Node!11424) (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(declare-fun e!2214459 () Bool)

(assert (=> d!1055784 (= (inv!50854 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))) e!2214459)))

(declare-fun b!3579371 () Bool)

(declare-fun inv!50856 (Conc!11424) Bool)

(assert (=> b!3579371 (= e!2214459 (inv!50856 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(declare-fun b!3579372 () Bool)

(declare-fun e!2214460 () Bool)

(assert (=> b!3579372 (= e!2214459 e!2214460)))

(declare-fun res!1444135 () Bool)

(assert (=> b!3579372 (= res!1444135 (not ((_ is Leaf!17798) (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))))))

(assert (=> b!3579372 (=> res!1444135 e!2214460)))

(declare-fun b!3579373 () Bool)

(declare-fun inv!50857 (Conc!11424) Bool)

(assert (=> b!3579373 (= e!2214460 (inv!50857 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(assert (= (and d!1055784 c!620375) b!3579371))

(assert (= (and d!1055784 (not c!620375)) b!3579372))

(assert (= (and b!3579372 (not res!1444135)) b!3579373))

(declare-fun m!4073665 () Bool)

(assert (=> b!3579371 m!4073665))

(declare-fun m!4073667 () Bool)

(assert (=> b!3579373 m!4073667))

(assert (=> b!3579195 d!1055784))

(declare-fun d!1055786 () Bool)

(assert (=> d!1055786 true))

(declare-fun lambda!123710 () Int)

(declare-fun order!20425 () Int)

(declare-fun order!20423 () Int)

(declare-fun dynLambda!16170 (Int Int) Int)

(declare-fun dynLambda!16171 (Int Int) Int)

(assert (=> d!1055786 (< (dynLambda!16170 order!20423 (toChars!7657 (transformation!5526 anOtherTypeRule!33))) (dynLambda!16171 order!20425 lambda!123710))))

(assert (=> d!1055786 true))

(assert (=> d!1055786 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (dynLambda!16171 order!20425 lambda!123710))))

(declare-fun Forall!1360 (Int) Bool)

(assert (=> d!1055786 (= (semiInverseModEq!2341 (toChars!7657 (transformation!5526 anOtherTypeRule!33)) (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (Forall!1360 lambda!123710))))

(declare-fun bs!569797 () Bool)

(assert (= bs!569797 d!1055786))

(declare-fun m!4073669 () Bool)

(assert (=> bs!569797 m!4073669))

(assert (=> d!1055778 d!1055786))

(declare-fun d!1055790 () Bool)

(declare-fun charsToBigInt!0 (List!37691 Int) Int)

(assert (=> d!1055790 (= (inv!15 (value!177951 token!511)) (= (charsToBigInt!0 (text!40741 (value!177951 token!511)) 0) (value!177946 (value!177951 token!511))))))

(declare-fun bs!569798 () Bool)

(assert (= bs!569798 d!1055790))

(declare-fun m!4073671 () Bool)

(assert (=> bs!569798 m!4073671))

(assert (=> b!3579310 d!1055790))

(declare-fun d!1055792 () Bool)

(declare-fun lt!1228378 () Int)

(assert (=> d!1055792 (>= lt!1228378 0)))

(declare-fun e!2214463 () Int)

(assert (=> d!1055792 (= lt!1228378 e!2214463)))

(declare-fun c!620378 () Bool)

(assert (=> d!1055792 (= c!620378 ((_ is Nil!37568) (originalCharacters!6240 token!511)))))

(assert (=> d!1055792 (= (size!28657 (originalCharacters!6240 token!511)) lt!1228378)))

(declare-fun b!3579382 () Bool)

(assert (=> b!3579382 (= e!2214463 0)))

(declare-fun b!3579383 () Bool)

(assert (=> b!3579383 (= e!2214463 (+ 1 (size!28657 (t!290177 (originalCharacters!6240 token!511)))))))

(assert (= (and d!1055792 c!620378) b!3579382))

(assert (= (and d!1055792 (not c!620378)) b!3579383))

(declare-fun m!4073673 () Bool)

(assert (=> b!3579383 m!4073673))

(assert (=> b!3579186 d!1055792))

(declare-fun bs!569801 () Bool)

(declare-fun d!1055794 () Bool)

(assert (= bs!569801 (and d!1055794 d!1055780)))

(declare-fun lambda!123714 () Int)

(assert (=> bs!569801 (= (= (toValue!7798 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (= lambda!123714 lambda!123706))))

(declare-fun bs!569802 () Bool)

(assert (= bs!569802 (and d!1055794 d!1055782)))

(assert (=> bs!569802 (= (= (toValue!7798 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (= lambda!123714 lambda!123707))))

(assert (=> d!1055794 true))

(assert (=> d!1055794 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 rule!403))) (dynLambda!16169 order!20421 lambda!123714))))

(assert (=> d!1055794 (= (equivClasses!2240 (toChars!7657 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 rule!403))) (Forall2!957 lambda!123714))))

(declare-fun bs!569803 () Bool)

(assert (= bs!569803 d!1055794))

(declare-fun m!4073677 () Bool)

(assert (=> bs!569803 m!4073677))

(assert (=> b!3579295 d!1055794))

(declare-fun d!1055798 () Bool)

(assert (=> d!1055798 (= (list!13793 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))) (list!13795 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(declare-fun bs!569804 () Bool)

(assert (= bs!569804 d!1055798))

(declare-fun m!4073679 () Bool)

(assert (=> bs!569804 m!4073679))

(assert (=> b!3579185 d!1055798))

(declare-fun d!1055800 () Bool)

(declare-fun charsToBigInt!1 (List!37691) Int)

(assert (=> d!1055800 (= (inv!17 (value!177951 token!511)) (= (charsToBigInt!1 (text!40740 (value!177951 token!511))) (value!177943 (value!177951 token!511))))))

(declare-fun bs!569805 () Bool)

(assert (= bs!569805 d!1055800))

(declare-fun m!4073681 () Bool)

(assert (=> bs!569805 m!4073681))

(assert (=> b!3579309 d!1055800))

(declare-fun bs!569806 () Bool)

(declare-fun d!1055802 () Bool)

(assert (= bs!569806 (and d!1055802 d!1055786)))

(declare-fun lambda!123715 () Int)

(assert (=> bs!569806 (= (and (= (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toChars!7657 (transformation!5526 anOtherTypeRule!33))) (= (toValue!7798 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 anOtherTypeRule!33)))) (= lambda!123715 lambda!123710))))

(assert (=> d!1055802 true))

(assert (=> d!1055802 (< (dynLambda!16170 order!20423 (toChars!7657 (transformation!5526 (h!42989 rules!3307)))) (dynLambda!16171 order!20425 lambda!123715))))

(assert (=> d!1055802 true))

(assert (=> d!1055802 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (dynLambda!16171 order!20425 lambda!123715))))

(assert (=> d!1055802 (= (semiInverseModEq!2341 (toChars!7657 (transformation!5526 (h!42989 rules!3307))) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (Forall!1360 lambda!123715))))

(declare-fun bs!569807 () Bool)

(assert (= bs!569807 d!1055802))

(declare-fun m!4073683 () Bool)

(assert (=> bs!569807 m!4073683))

(assert (=> d!1055770 d!1055802))

(declare-fun d!1055804 () Bool)

(declare-fun res!1444140 () Bool)

(declare-fun e!2214468 () Bool)

(assert (=> d!1055804 (=> res!1444140 e!2214468)))

(assert (=> d!1055804 (= res!1444140 ((_ is Nil!37569) rules!3307))))

(assert (=> d!1055804 (= (noDuplicateTag!2097 thiss!23823 rules!3307 Nil!37571) e!2214468)))

(declare-fun b!3579388 () Bool)

(declare-fun e!2214469 () Bool)

(assert (=> b!3579388 (= e!2214468 e!2214469)))

(declare-fun res!1444141 () Bool)

(assert (=> b!3579388 (=> (not res!1444141) (not e!2214469))))

(declare-fun contains!7129 (List!37695 String!42114) Bool)

(assert (=> b!3579388 (= res!1444141 (not (contains!7129 Nil!37571 (tag!6192 (h!42989 rules!3307)))))))

(declare-fun b!3579389 () Bool)

(assert (=> b!3579389 (= e!2214469 (noDuplicateTag!2097 thiss!23823 (t!290178 rules!3307) (Cons!37571 (tag!6192 (h!42989 rules!3307)) Nil!37571)))))

(assert (= (and d!1055804 (not res!1444140)) b!3579388))

(assert (= (and b!3579388 res!1444141) b!3579389))

(declare-fun m!4073685 () Bool)

(assert (=> b!3579388 m!4073685))

(declare-fun m!4073687 () Bool)

(assert (=> b!3579389 m!4073687))

(assert (=> b!3579313 d!1055804))

(declare-fun bs!569809 () Bool)

(declare-fun d!1055806 () Bool)

(assert (= bs!569809 (and d!1055806 d!1055718)))

(declare-fun lambda!123721 () Int)

(assert (=> bs!569809 (= lambda!123721 lambda!123703)))

(assert (=> d!1055806 true))

(declare-fun lt!1228381 () Bool)

(assert (=> d!1055806 (= lt!1228381 (rulesValidInductive!1911 thiss!23823 rules!3307))))

(assert (=> d!1055806 (= lt!1228381 (forall!8136 rules!3307 lambda!123721))))

(assert (=> d!1055806 (= (rulesValid!2101 thiss!23823 rules!3307) lt!1228381)))

(declare-fun bs!569810 () Bool)

(assert (= bs!569810 d!1055806))

(assert (=> bs!569810 m!4073525))

(declare-fun m!4073691 () Bool)

(assert (=> bs!569810 m!4073691))

(assert (=> d!1055764 d!1055806))

(declare-fun d!1055810 () Bool)

(declare-fun c!620381 () Bool)

(assert (=> d!1055810 (= c!620381 ((_ is Nil!37569) rules!3307))))

(declare-fun e!2214472 () (InoxSet Rule!10852))

(assert (=> d!1055810 (= (content!5330 rules!3307) e!2214472)))

(declare-fun b!3579398 () Bool)

(assert (=> b!3579398 (= e!2214472 ((as const (Array Rule!10852 Bool)) false))))

(declare-fun b!3579399 () Bool)

(assert (=> b!3579399 (= e!2214472 ((_ map or) (store ((as const (Array Rule!10852 Bool)) false) (h!42989 rules!3307) true) (content!5330 (t!290178 rules!3307))))))

(assert (= (and d!1055810 c!620381) b!3579398))

(assert (= (and d!1055810 (not c!620381)) b!3579399))

(declare-fun m!4073693 () Bool)

(assert (=> b!3579399 m!4073693))

(declare-fun m!4073695 () Bool)

(assert (=> b!3579399 m!4073695))

(assert (=> d!1055766 d!1055810))

(declare-fun d!1055812 () Bool)

(assert (=> d!1055812 (= (list!13793 lt!1228368) (list!13795 (c!620360 lt!1228368)))))

(declare-fun bs!569811 () Bool)

(assert (= bs!569811 d!1055812))

(declare-fun m!4073697 () Bool)

(assert (=> bs!569811 m!4073697))

(assert (=> d!1055752 d!1055812))

(declare-fun bs!569812 () Bool)

(declare-fun d!1055814 () Bool)

(assert (= bs!569812 (and d!1055814 d!1055780)))

(declare-fun lambda!123722 () Int)

(assert (=> bs!569812 (= (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 anOtherTypeRule!33))) (= lambda!123722 lambda!123706))))

(declare-fun bs!569813 () Bool)

(assert (= bs!569813 (and d!1055814 d!1055782)))

(assert (=> bs!569813 (= (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (h!42989 rules!3307)))) (= lambda!123722 lambda!123707))))

(declare-fun bs!569814 () Bool)

(assert (= bs!569814 (and d!1055814 d!1055794)))

(assert (=> bs!569814 (= (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 rule!403))) (= lambda!123722 lambda!123714))))

(assert (=> d!1055814 true))

(assert (=> d!1055814 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 (rule!8238 token!511)))) (dynLambda!16169 order!20421 lambda!123722))))

(assert (=> d!1055814 (= (equivClasses!2240 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (rule!8238 token!511)))) (Forall2!957 lambda!123722))))

(declare-fun bs!569815 () Bool)

(assert (= bs!569815 d!1055814))

(declare-fun m!4073699 () Bool)

(assert (=> bs!569815 m!4073699))

(assert (=> b!3579317 d!1055814))

(declare-fun d!1055816 () Bool)

(assert (=> d!1055816 (= (isEmpty!22121 (originalCharacters!6240 token!511)) ((_ is Nil!37568) (originalCharacters!6240 token!511)))))

(assert (=> d!1055714 d!1055816))

(declare-fun d!1055818 () Bool)

(declare-fun lt!1228382 () Bool)

(assert (=> d!1055818 (= lt!1228382 (select (content!5330 (t!290178 rules!3307)) anOtherTypeRule!33))))

(declare-fun e!2214478 () Bool)

(assert (=> d!1055818 (= lt!1228382 e!2214478)))

(declare-fun res!1444144 () Bool)

(assert (=> d!1055818 (=> (not res!1444144) (not e!2214478))))

(assert (=> d!1055818 (= res!1444144 ((_ is Cons!37569) (t!290178 rules!3307)))))

(assert (=> d!1055818 (= (contains!7128 (t!290178 rules!3307) anOtherTypeRule!33) lt!1228382)))

(declare-fun b!3579406 () Bool)

(declare-fun e!2214477 () Bool)

(assert (=> b!3579406 (= e!2214478 e!2214477)))

(declare-fun res!1444145 () Bool)

(assert (=> b!3579406 (=> res!1444145 e!2214477)))

(assert (=> b!3579406 (= res!1444145 (= (h!42989 (t!290178 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3579407 () Bool)

(assert (=> b!3579407 (= e!2214477 (contains!7128 (t!290178 (t!290178 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1055818 res!1444144) b!3579406))

(assert (= (and b!3579406 (not res!1444145)) b!3579407))

(assert (=> d!1055818 m!4073695))

(declare-fun m!4073701 () Bool)

(assert (=> d!1055818 m!4073701))

(declare-fun m!4073703 () Bool)

(assert (=> b!3579407 m!4073703))

(assert (=> b!3579315 d!1055818))

(declare-fun bs!569816 () Bool)

(declare-fun d!1055820 () Bool)

(assert (= bs!569816 (and d!1055820 d!1055786)))

(declare-fun lambda!123723 () Int)

(assert (=> bs!569816 (= (and (= (toChars!7657 (transformation!5526 rule!403)) (toChars!7657 (transformation!5526 anOtherTypeRule!33))) (= (toValue!7798 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 anOtherTypeRule!33)))) (= lambda!123723 lambda!123710))))

(declare-fun bs!569817 () Bool)

(assert (= bs!569817 (and d!1055820 d!1055802)))

(assert (=> bs!569817 (= (and (= (toChars!7657 (transformation!5526 rule!403)) (toChars!7657 (transformation!5526 (h!42989 rules!3307)))) (= (toValue!7798 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 (h!42989 rules!3307))))) (= lambda!123723 lambda!123715))))

(assert (=> d!1055820 true))

(assert (=> d!1055820 (< (dynLambda!16170 order!20423 (toChars!7657 (transformation!5526 rule!403))) (dynLambda!16171 order!20425 lambda!123723))))

(assert (=> d!1055820 true))

(assert (=> d!1055820 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 rule!403))) (dynLambda!16171 order!20425 lambda!123723))))

(assert (=> d!1055820 (= (semiInverseModEq!2341 (toChars!7657 (transformation!5526 rule!403)) (toValue!7798 (transformation!5526 rule!403))) (Forall!1360 lambda!123723))))

(declare-fun bs!569818 () Bool)

(assert (= bs!569818 d!1055820))

(declare-fun m!4073705 () Bool)

(assert (=> bs!569818 m!4073705))

(assert (=> d!1055760 d!1055820))

(declare-fun bs!569819 () Bool)

(declare-fun d!1055822 () Bool)

(assert (= bs!569819 (and d!1055822 d!1055786)))

(declare-fun lambda!123724 () Int)

(assert (=> bs!569819 (= (and (= (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toChars!7657 (transformation!5526 anOtherTypeRule!33))) (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 anOtherTypeRule!33)))) (= lambda!123724 lambda!123710))))

(declare-fun bs!569820 () Bool)

(assert (= bs!569820 (and d!1055822 d!1055802)))

(assert (=> bs!569820 (= (and (= (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toChars!7657 (transformation!5526 (h!42989 rules!3307)))) (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (h!42989 rules!3307))))) (= lambda!123724 lambda!123715))))

(declare-fun bs!569821 () Bool)

(assert (= bs!569821 (and d!1055822 d!1055820)))

(assert (=> bs!569821 (= (and (= (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toChars!7657 (transformation!5526 rule!403))) (= (toValue!7798 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 rule!403)))) (= lambda!123724 lambda!123723))))

(assert (=> d!1055822 true))

(assert (=> d!1055822 (< (dynLambda!16170 order!20423 (toChars!7657 (transformation!5526 (rule!8238 token!511)))) (dynLambda!16171 order!20425 lambda!123724))))

(assert (=> d!1055822 true))

(assert (=> d!1055822 (< (dynLambda!16168 order!20419 (toValue!7798 (transformation!5526 (rule!8238 token!511)))) (dynLambda!16171 order!20425 lambda!123724))))

(assert (=> d!1055822 (= (semiInverseModEq!2341 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (toValue!7798 (transformation!5526 (rule!8238 token!511)))) (Forall!1360 lambda!123724))))

(declare-fun bs!569822 () Bool)

(assert (= bs!569822 d!1055822))

(declare-fun m!4073711 () Bool)

(assert (=> bs!569822 m!4073711))

(assert (=> d!1055774 d!1055822))

(declare-fun d!1055826 () Bool)

(declare-fun res!1444151 () Bool)

(declare-fun e!2214487 () Bool)

(assert (=> d!1055826 (=> res!1444151 e!2214487)))

(assert (=> d!1055826 (= res!1444151 ((_ is Nil!37569) rules!3307))))

(assert (=> d!1055826 (= (forall!8136 rules!3307 lambda!123703) e!2214487)))

(declare-fun b!3579419 () Bool)

(declare-fun e!2214488 () Bool)

(assert (=> b!3579419 (= e!2214487 e!2214488)))

(declare-fun res!1444152 () Bool)

(assert (=> b!3579419 (=> (not res!1444152) (not e!2214488))))

(declare-fun dynLambda!16175 (Int Rule!10852) Bool)

(assert (=> b!3579419 (= res!1444152 (dynLambda!16175 lambda!123703 (h!42989 rules!3307)))))

(declare-fun b!3579420 () Bool)

(assert (=> b!3579420 (= e!2214488 (forall!8136 (t!290178 rules!3307) lambda!123703))))

(assert (= (and d!1055826 (not res!1444151)) b!3579419))

(assert (= (and b!3579419 res!1444152) b!3579420))

(declare-fun b_lambda!105787 () Bool)

(assert (=> (not b_lambda!105787) (not b!3579419)))

(declare-fun m!4073713 () Bool)

(assert (=> b!3579419 m!4073713))

(declare-fun m!4073715 () Bool)

(assert (=> b!3579420 m!4073715))

(assert (=> d!1055718 d!1055826))

(declare-fun d!1055828 () Bool)

(declare-fun res!1444157 () Bool)

(declare-fun e!2214492 () Bool)

(assert (=> d!1055828 (=> (not res!1444157) (not e!2214492))))

(declare-fun validRegex!4701 (Regex!10285) Bool)

(assert (=> d!1055828 (= res!1444157 (validRegex!4701 (regex!5526 (h!42989 rules!3307))))))

(assert (=> d!1055828 (= (ruleValid!1802 thiss!23823 (h!42989 rules!3307)) e!2214492)))

(declare-fun b!3579427 () Bool)

(declare-fun res!1444158 () Bool)

(assert (=> b!3579427 (=> (not res!1444158) (not e!2214492))))

(declare-fun nullable!3545 (Regex!10285) Bool)

(assert (=> b!3579427 (= res!1444158 (not (nullable!3545 (regex!5526 (h!42989 rules!3307)))))))

(declare-fun b!3579428 () Bool)

(assert (=> b!3579428 (= e!2214492 (not (= (tag!6192 (h!42989 rules!3307)) (String!42115 ""))))))

(assert (= (and d!1055828 res!1444157) b!3579427))

(assert (= (and b!3579427 res!1444158) b!3579428))

(declare-fun m!4073723 () Bool)

(assert (=> d!1055828 m!4073723))

(declare-fun m!4073725 () Bool)

(assert (=> b!3579427 m!4073725))

(assert (=> b!3579283 d!1055828))

(declare-fun d!1055834 () Bool)

(declare-fun charsToInt!0 (List!37691) (_ BitVec 32))

(assert (=> d!1055834 (= (inv!16 (value!177951 token!511)) (= (charsToInt!0 (text!40739 (value!177951 token!511))) (value!177942 (value!177951 token!511))))))

(declare-fun bs!569826 () Bool)

(assert (= bs!569826 d!1055834))

(declare-fun m!4073729 () Bool)

(assert (=> bs!569826 m!4073729))

(assert (=> b!3579308 d!1055834))

(declare-fun bs!569827 () Bool)

(declare-fun d!1055840 () Bool)

(assert (= bs!569827 (and d!1055840 d!1055718)))

(declare-fun lambda!123726 () Int)

(assert (=> bs!569827 (= lambda!123726 lambda!123703)))

(declare-fun bs!569828 () Bool)

(assert (= bs!569828 (and d!1055840 d!1055806)))

(assert (=> bs!569828 (= lambda!123726 lambda!123721)))

(assert (=> d!1055840 true))

(declare-fun lt!1228383 () Bool)

(assert (=> d!1055840 (= lt!1228383 (forall!8136 (t!290178 rules!3307) lambda!123726))))

(declare-fun e!2214494 () Bool)

(assert (=> d!1055840 (= lt!1228383 e!2214494)))

(declare-fun res!1444161 () Bool)

(assert (=> d!1055840 (=> res!1444161 e!2214494)))

(assert (=> d!1055840 (= res!1444161 (not ((_ is Cons!37569) (t!290178 rules!3307))))))

(assert (=> d!1055840 (= (rulesValidInductive!1911 thiss!23823 (t!290178 rules!3307)) lt!1228383)))

(declare-fun b!3579430 () Bool)

(declare-fun e!2214495 () Bool)

(assert (=> b!3579430 (= e!2214494 e!2214495)))

(declare-fun res!1444160 () Bool)

(assert (=> b!3579430 (=> (not res!1444160) (not e!2214495))))

(assert (=> b!3579430 (= res!1444160 (ruleValid!1802 thiss!23823 (h!42989 (t!290178 rules!3307))))))

(declare-fun b!3579431 () Bool)

(assert (=> b!3579431 (= e!2214495 (rulesValidInductive!1911 thiss!23823 (t!290178 (t!290178 rules!3307))))))

(assert (= (and d!1055840 (not res!1444161)) b!3579430))

(assert (= (and b!3579430 res!1444160) b!3579431))

(declare-fun m!4073735 () Bool)

(assert (=> d!1055840 m!4073735))

(declare-fun m!4073737 () Bool)

(assert (=> b!3579430 m!4073737))

(declare-fun m!4073739 () Bool)

(assert (=> b!3579431 m!4073739))

(assert (=> b!3579284 d!1055840))

(declare-fun d!1055844 () Bool)

(declare-fun c!620396 () Bool)

(assert (=> d!1055844 (= c!620396 ((_ is Empty!11424) (c!620360 (charsOf!3540 token!511))))))

(declare-fun e!2214504 () List!37692)

(assert (=> d!1055844 (= (list!13795 (c!620360 (charsOf!3540 token!511))) e!2214504)))

(declare-fun b!3579451 () Bool)

(declare-fun e!2214505 () List!37692)

(declare-fun ++!9348 (List!37692 List!37692) List!37692)

(assert (=> b!3579451 (= e!2214505 (++!9348 (list!13795 (left!29381 (c!620360 (charsOf!3540 token!511)))) (list!13795 (right!29711 (c!620360 (charsOf!3540 token!511))))))))

(declare-fun b!3579448 () Bool)

(assert (=> b!3579448 (= e!2214504 Nil!37568)))

(declare-fun b!3579449 () Bool)

(assert (=> b!3579449 (= e!2214504 e!2214505)))

(declare-fun c!620397 () Bool)

(assert (=> b!3579449 (= c!620397 ((_ is Leaf!17798) (c!620360 (charsOf!3540 token!511))))))

(declare-fun b!3579450 () Bool)

(declare-fun list!13797 (IArray!22853) List!37692)

(assert (=> b!3579450 (= e!2214505 (list!13797 (xs!14626 (c!620360 (charsOf!3540 token!511)))))))

(assert (= (and d!1055844 c!620396) b!3579448))

(assert (= (and d!1055844 (not c!620396)) b!3579449))

(assert (= (and b!3579449 c!620397) b!3579450))

(assert (= (and b!3579449 (not c!620397)) b!3579451))

(declare-fun m!4073741 () Bool)

(assert (=> b!3579451 m!4073741))

(declare-fun m!4073743 () Bool)

(assert (=> b!3579451 m!4073743))

(assert (=> b!3579451 m!4073741))

(assert (=> b!3579451 m!4073743))

(declare-fun m!4073745 () Bool)

(assert (=> b!3579451 m!4073745))

(declare-fun m!4073747 () Bool)

(assert (=> b!3579450 m!4073747))

(assert (=> d!1055750 d!1055844))

(declare-fun d!1055846 () Bool)

(assert (=> d!1055846 (= (inv!50847 (tag!6192 (h!42989 (t!290178 rules!3307)))) (= (mod (str.len (value!177950 (tag!6192 (h!42989 (t!290178 rules!3307))))) 2) 0))))

(assert (=> b!3579350 d!1055846))

(declare-fun d!1055848 () Bool)

(declare-fun res!1444162 () Bool)

(declare-fun e!2214506 () Bool)

(assert (=> d!1055848 (=> (not res!1444162) (not e!2214506))))

(assert (=> d!1055848 (= res!1444162 (semiInverseModEq!2341 (toChars!7657 (transformation!5526 (h!42989 (t!290178 rules!3307)))) (toValue!7798 (transformation!5526 (h!42989 (t!290178 rules!3307))))))))

(assert (=> d!1055848 (= (inv!50850 (transformation!5526 (h!42989 (t!290178 rules!3307)))) e!2214506)))

(declare-fun b!3579452 () Bool)

(assert (=> b!3579452 (= e!2214506 (equivClasses!2240 (toChars!7657 (transformation!5526 (h!42989 (t!290178 rules!3307)))) (toValue!7798 (transformation!5526 (h!42989 (t!290178 rules!3307))))))))

(assert (= (and d!1055848 res!1444162) b!3579452))

(declare-fun m!4073749 () Bool)

(assert (=> d!1055848 m!4073749))

(declare-fun m!4073751 () Bool)

(assert (=> b!3579452 m!4073751))

(assert (=> b!3579350 d!1055848))

(declare-fun d!1055850 () Bool)

(declare-fun lt!1228384 () Bool)

(assert (=> d!1055850 (= lt!1228384 (select (content!5330 (t!290178 rules!3307)) rule!403))))

(declare-fun e!2214508 () Bool)

(assert (=> d!1055850 (= lt!1228384 e!2214508)))

(declare-fun res!1444163 () Bool)

(assert (=> d!1055850 (=> (not res!1444163) (not e!2214508))))

(assert (=> d!1055850 (= res!1444163 ((_ is Cons!37569) (t!290178 rules!3307)))))

(assert (=> d!1055850 (= (contains!7128 (t!290178 rules!3307) rule!403) lt!1228384)))

(declare-fun b!3579453 () Bool)

(declare-fun e!2214507 () Bool)

(assert (=> b!3579453 (= e!2214508 e!2214507)))

(declare-fun res!1444164 () Bool)

(assert (=> b!3579453 (=> res!1444164 e!2214507)))

(assert (=> b!3579453 (= res!1444164 (= (h!42989 (t!290178 rules!3307)) rule!403))))

(declare-fun b!3579454 () Bool)

(assert (=> b!3579454 (= e!2214507 (contains!7128 (t!290178 (t!290178 rules!3307)) rule!403))))

(assert (= (and d!1055850 res!1444163) b!3579453))

(assert (= (and b!3579453 (not res!1444164)) b!3579454))

(assert (=> d!1055850 m!4073695))

(declare-fun m!4073753 () Bool)

(assert (=> d!1055850 m!4073753))

(declare-fun m!4073755 () Bool)

(assert (=> b!3579454 m!4073755))

(assert (=> b!3579292 d!1055850))

(declare-fun d!1055852 () Bool)

(declare-fun isBalanced!3495 (Conc!11424) Bool)

(assert (=> d!1055852 (= (inv!50855 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))) (isBalanced!3495 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))))))

(declare-fun bs!569829 () Bool)

(assert (= bs!569829 d!1055852))

(declare-fun m!4073757 () Bool)

(assert (=> bs!569829 m!4073757))

(assert (=> tb!204259 d!1055852))

(assert (=> d!1055756 d!1055810))

(declare-fun b!3579462 () Bool)

(declare-fun e!2214511 () Bool)

(declare-fun tp!1095123 () Bool)

(declare-fun tp!1095125 () Bool)

(assert (=> b!3579462 (= e!2214511 (and tp!1095123 tp!1095125))))

(declare-fun b!3579460 () Bool)

(declare-fun tp!1095122 () Bool)

(declare-fun tp!1095124 () Bool)

(assert (=> b!3579460 (= e!2214511 (and tp!1095122 tp!1095124))))

(assert (=> b!3579331 (= tp!1095086 e!2214511)))

(declare-fun b!3579461 () Bool)

(declare-fun tp!1095121 () Bool)

(assert (=> b!3579461 (= e!2214511 tp!1095121)))

(declare-fun b!3579459 () Bool)

(assert (=> b!3579459 (= e!2214511 tp_is_empty!17673)))

(assert (= (and b!3579331 ((_ is ElementMatch!10285) (reg!10614 (regex!5526 (h!42989 rules!3307))))) b!3579459))

(assert (= (and b!3579331 ((_ is Concat!16042) (reg!10614 (regex!5526 (h!42989 rules!3307))))) b!3579460))

(assert (= (and b!3579331 ((_ is Star!10285) (reg!10614 (regex!5526 (h!42989 rules!3307))))) b!3579461))

(assert (= (and b!3579331 ((_ is Union!10285) (reg!10614 (regex!5526 (h!42989 rules!3307))))) b!3579462))

(declare-fun b!3579463 () Bool)

(declare-fun e!2214512 () Bool)

(declare-fun tp!1095126 () Bool)

(assert (=> b!3579463 (= e!2214512 (and tp_is_empty!17673 tp!1095126))))

(assert (=> b!3579360 (= tp!1095120 e!2214512)))

(assert (= (and b!3579360 ((_ is Cons!37568) (t!290177 (originalCharacters!6240 token!511)))) b!3579463))

(declare-fun b!3579467 () Bool)

(declare-fun e!2214513 () Bool)

(declare-fun tp!1095129 () Bool)

(declare-fun tp!1095131 () Bool)

(assert (=> b!3579467 (= e!2214513 (and tp!1095129 tp!1095131))))

(declare-fun b!3579465 () Bool)

(declare-fun tp!1095128 () Bool)

(declare-fun tp!1095130 () Bool)

(assert (=> b!3579465 (= e!2214513 (and tp!1095128 tp!1095130))))

(assert (=> b!3579336 (= tp!1095093 e!2214513)))

(declare-fun b!3579466 () Bool)

(declare-fun tp!1095127 () Bool)

(assert (=> b!3579466 (= e!2214513 tp!1095127)))

(declare-fun b!3579464 () Bool)

(assert (=> b!3579464 (= e!2214513 tp_is_empty!17673)))

(assert (= (and b!3579336 ((_ is ElementMatch!10285) (regOne!21083 (regex!5526 (rule!8238 token!511))))) b!3579464))

(assert (= (and b!3579336 ((_ is Concat!16042) (regOne!21083 (regex!5526 (rule!8238 token!511))))) b!3579465))

(assert (= (and b!3579336 ((_ is Star!10285) (regOne!21083 (regex!5526 (rule!8238 token!511))))) b!3579466))

(assert (= (and b!3579336 ((_ is Union!10285) (regOne!21083 (regex!5526 (rule!8238 token!511))))) b!3579467))

(declare-fun b!3579473 () Bool)

(declare-fun e!2214516 () Bool)

(declare-fun tp!1095134 () Bool)

(declare-fun tp!1095136 () Bool)

(assert (=> b!3579473 (= e!2214516 (and tp!1095134 tp!1095136))))

(declare-fun b!3579471 () Bool)

(declare-fun tp!1095133 () Bool)

(declare-fun tp!1095135 () Bool)

(assert (=> b!3579471 (= e!2214516 (and tp!1095133 tp!1095135))))

(assert (=> b!3579336 (= tp!1095095 e!2214516)))

(declare-fun b!3579472 () Bool)

(declare-fun tp!1095132 () Bool)

(assert (=> b!3579472 (= e!2214516 tp!1095132)))

(declare-fun b!3579470 () Bool)

(assert (=> b!3579470 (= e!2214516 tp_is_empty!17673)))

(assert (= (and b!3579336 ((_ is ElementMatch!10285) (regTwo!21083 (regex!5526 (rule!8238 token!511))))) b!3579470))

(assert (= (and b!3579336 ((_ is Concat!16042) (regTwo!21083 (regex!5526 (rule!8238 token!511))))) b!3579471))

(assert (= (and b!3579336 ((_ is Star!10285) (regTwo!21083 (regex!5526 (rule!8238 token!511))))) b!3579472))

(assert (= (and b!3579336 ((_ is Union!10285) (regTwo!21083 (regex!5526 (rule!8238 token!511))))) b!3579473))

(declare-fun b!3579477 () Bool)

(declare-fun e!2214517 () Bool)

(declare-fun tp!1095139 () Bool)

(declare-fun tp!1095141 () Bool)

(assert (=> b!3579477 (= e!2214517 (and tp!1095139 tp!1095141))))

(declare-fun b!3579475 () Bool)

(declare-fun tp!1095138 () Bool)

(declare-fun tp!1095140 () Bool)

(assert (=> b!3579475 (= e!2214517 (and tp!1095138 tp!1095140))))

(assert (=> b!3579332 (= tp!1095088 e!2214517)))

(declare-fun b!3579476 () Bool)

(declare-fun tp!1095137 () Bool)

(assert (=> b!3579476 (= e!2214517 tp!1095137)))

(declare-fun b!3579474 () Bool)

(assert (=> b!3579474 (= e!2214517 tp_is_empty!17673)))

(assert (= (and b!3579332 ((_ is ElementMatch!10285) (regOne!21083 (regex!5526 (h!42989 rules!3307))))) b!3579474))

(assert (= (and b!3579332 ((_ is Concat!16042) (regOne!21083 (regex!5526 (h!42989 rules!3307))))) b!3579475))

(assert (= (and b!3579332 ((_ is Star!10285) (regOne!21083 (regex!5526 (h!42989 rules!3307))))) b!3579476))

(assert (= (and b!3579332 ((_ is Union!10285) (regOne!21083 (regex!5526 (h!42989 rules!3307))))) b!3579477))

(declare-fun b!3579481 () Bool)

(declare-fun e!2214518 () Bool)

(declare-fun tp!1095144 () Bool)

(declare-fun tp!1095146 () Bool)

(assert (=> b!3579481 (= e!2214518 (and tp!1095144 tp!1095146))))

(declare-fun b!3579479 () Bool)

(declare-fun tp!1095143 () Bool)

(declare-fun tp!1095145 () Bool)

(assert (=> b!3579479 (= e!2214518 (and tp!1095143 tp!1095145))))

(assert (=> b!3579332 (= tp!1095090 e!2214518)))

(declare-fun b!3579480 () Bool)

(declare-fun tp!1095142 () Bool)

(assert (=> b!3579480 (= e!2214518 tp!1095142)))

(declare-fun b!3579478 () Bool)

(assert (=> b!3579478 (= e!2214518 tp_is_empty!17673)))

(assert (= (and b!3579332 ((_ is ElementMatch!10285) (regTwo!21083 (regex!5526 (h!42989 rules!3307))))) b!3579478))

(assert (= (and b!3579332 ((_ is Concat!16042) (regTwo!21083 (regex!5526 (h!42989 rules!3307))))) b!3579479))

(assert (= (and b!3579332 ((_ is Star!10285) (regTwo!21083 (regex!5526 (h!42989 rules!3307))))) b!3579480))

(assert (= (and b!3579332 ((_ is Union!10285) (regTwo!21083 (regex!5526 (h!42989 rules!3307))))) b!3579481))

(declare-fun tp!1095154 () Bool)

(declare-fun b!3579490 () Bool)

(declare-fun e!2214524 () Bool)

(declare-fun tp!1095155 () Bool)

(assert (=> b!3579490 (= e!2214524 (and (inv!50854 (left!29381 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))) tp!1095154 (inv!50854 (right!29711 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))) tp!1095155))))

(declare-fun b!3579492 () Bool)

(declare-fun e!2214523 () Bool)

(declare-fun tp!1095153 () Bool)

(assert (=> b!3579492 (= e!2214523 tp!1095153)))

(declare-fun b!3579491 () Bool)

(declare-fun inv!50860 (IArray!22853) Bool)

(assert (=> b!3579491 (= e!2214524 (and (inv!50860 (xs!14626 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))) e!2214523))))

(assert (=> b!3579195 (= tp!1095027 (and (inv!50854 (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511)))) e!2214524))))

(assert (= (and b!3579195 ((_ is Node!11424) (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))) b!3579490))

(assert (= b!3579491 b!3579492))

(assert (= (and b!3579195 ((_ is Leaf!17798) (c!620360 (dynLambda!16167 (toChars!7657 (transformation!5526 (rule!8238 token!511))) (value!177951 token!511))))) b!3579491))

(declare-fun m!4073771 () Bool)

(assert (=> b!3579490 m!4073771))

(declare-fun m!4073773 () Bool)

(assert (=> b!3579490 m!4073773))

(declare-fun m!4073775 () Bool)

(assert (=> b!3579491 m!4073775))

(assert (=> b!3579195 m!4073543))

(declare-fun b!3579496 () Bool)

(declare-fun e!2214525 () Bool)

(declare-fun tp!1095158 () Bool)

(declare-fun tp!1095160 () Bool)

(assert (=> b!3579496 (= e!2214525 (and tp!1095158 tp!1095160))))

(declare-fun b!3579494 () Bool)

(declare-fun tp!1095157 () Bool)

(declare-fun tp!1095159 () Bool)

(assert (=> b!3579494 (= e!2214525 (and tp!1095157 tp!1095159))))

(assert (=> b!3579339 (= tp!1095096 e!2214525)))

(declare-fun b!3579495 () Bool)

(declare-fun tp!1095156 () Bool)

(assert (=> b!3579495 (= e!2214525 tp!1095156)))

(declare-fun b!3579493 () Bool)

(assert (=> b!3579493 (= e!2214525 tp_is_empty!17673)))

(assert (= (and b!3579339 ((_ is ElementMatch!10285) (reg!10614 (regex!5526 anOtherTypeRule!33)))) b!3579493))

(assert (= (and b!3579339 ((_ is Concat!16042) (reg!10614 (regex!5526 anOtherTypeRule!33)))) b!3579494))

(assert (= (and b!3579339 ((_ is Star!10285) (reg!10614 (regex!5526 anOtherTypeRule!33)))) b!3579495))

(assert (= (and b!3579339 ((_ is Union!10285) (reg!10614 (regex!5526 anOtherTypeRule!33)))) b!3579496))

(declare-fun b!3579500 () Bool)

(declare-fun e!2214526 () Bool)

(declare-fun tp!1095163 () Bool)

(declare-fun tp!1095165 () Bool)

(assert (=> b!3579500 (= e!2214526 (and tp!1095163 tp!1095165))))

(declare-fun b!3579498 () Bool)

(declare-fun tp!1095162 () Bool)

(declare-fun tp!1095164 () Bool)

(assert (=> b!3579498 (= e!2214526 (and tp!1095162 tp!1095164))))

(assert (=> b!3579330 (= tp!1095087 e!2214526)))

(declare-fun b!3579499 () Bool)

(declare-fun tp!1095161 () Bool)

(assert (=> b!3579499 (= e!2214526 tp!1095161)))

(declare-fun b!3579497 () Bool)

(assert (=> b!3579497 (= e!2214526 tp_is_empty!17673)))

(assert (= (and b!3579330 ((_ is ElementMatch!10285) (regOne!21082 (regex!5526 (h!42989 rules!3307))))) b!3579497))

(assert (= (and b!3579330 ((_ is Concat!16042) (regOne!21082 (regex!5526 (h!42989 rules!3307))))) b!3579498))

(assert (= (and b!3579330 ((_ is Star!10285) (regOne!21082 (regex!5526 (h!42989 rules!3307))))) b!3579499))

(assert (= (and b!3579330 ((_ is Union!10285) (regOne!21082 (regex!5526 (h!42989 rules!3307))))) b!3579500))

(declare-fun b!3579504 () Bool)

(declare-fun e!2214527 () Bool)

(declare-fun tp!1095168 () Bool)

(declare-fun tp!1095170 () Bool)

(assert (=> b!3579504 (= e!2214527 (and tp!1095168 tp!1095170))))

(declare-fun b!3579502 () Bool)

(declare-fun tp!1095167 () Bool)

(declare-fun tp!1095169 () Bool)

(assert (=> b!3579502 (= e!2214527 (and tp!1095167 tp!1095169))))

(assert (=> b!3579330 (= tp!1095089 e!2214527)))

(declare-fun b!3579503 () Bool)

(declare-fun tp!1095166 () Bool)

(assert (=> b!3579503 (= e!2214527 tp!1095166)))

(declare-fun b!3579501 () Bool)

(assert (=> b!3579501 (= e!2214527 tp_is_empty!17673)))

(assert (= (and b!3579330 ((_ is ElementMatch!10285) (regTwo!21082 (regex!5526 (h!42989 rules!3307))))) b!3579501))

(assert (= (and b!3579330 ((_ is Concat!16042) (regTwo!21082 (regex!5526 (h!42989 rules!3307))))) b!3579502))

(assert (= (and b!3579330 ((_ is Star!10285) (regTwo!21082 (regex!5526 (h!42989 rules!3307))))) b!3579503))

(assert (= (and b!3579330 ((_ is Union!10285) (regTwo!21082 (regex!5526 (h!42989 rules!3307))))) b!3579504))

(declare-fun b!3579508 () Bool)

(declare-fun e!2214528 () Bool)

(declare-fun tp!1095173 () Bool)

(declare-fun tp!1095175 () Bool)

(assert (=> b!3579508 (= e!2214528 (and tp!1095173 tp!1095175))))

(declare-fun b!3579506 () Bool)

(declare-fun tp!1095172 () Bool)

(declare-fun tp!1095174 () Bool)

(assert (=> b!3579506 (= e!2214528 (and tp!1095172 tp!1095174))))

(assert (=> b!3579335 (= tp!1095091 e!2214528)))

(declare-fun b!3579507 () Bool)

(declare-fun tp!1095171 () Bool)

(assert (=> b!3579507 (= e!2214528 tp!1095171)))

(declare-fun b!3579505 () Bool)

(assert (=> b!3579505 (= e!2214528 tp_is_empty!17673)))

(assert (= (and b!3579335 ((_ is ElementMatch!10285) (reg!10614 (regex!5526 (rule!8238 token!511))))) b!3579505))

(assert (= (and b!3579335 ((_ is Concat!16042) (reg!10614 (regex!5526 (rule!8238 token!511))))) b!3579506))

(assert (= (and b!3579335 ((_ is Star!10285) (reg!10614 (regex!5526 (rule!8238 token!511))))) b!3579507))

(assert (= (and b!3579335 ((_ is Union!10285) (reg!10614 (regex!5526 (rule!8238 token!511))))) b!3579508))

(declare-fun b!3579512 () Bool)

(declare-fun e!2214529 () Bool)

(declare-fun tp!1095178 () Bool)

(declare-fun tp!1095180 () Bool)

(assert (=> b!3579512 (= e!2214529 (and tp!1095178 tp!1095180))))

(declare-fun b!3579510 () Bool)

(declare-fun tp!1095177 () Bool)

(declare-fun tp!1095179 () Bool)

(assert (=> b!3579510 (= e!2214529 (and tp!1095177 tp!1095179))))

(assert (=> b!3579340 (= tp!1095098 e!2214529)))

(declare-fun b!3579511 () Bool)

(declare-fun tp!1095176 () Bool)

(assert (=> b!3579511 (= e!2214529 tp!1095176)))

(declare-fun b!3579509 () Bool)

(assert (=> b!3579509 (= e!2214529 tp_is_empty!17673)))

(assert (= (and b!3579340 ((_ is ElementMatch!10285) (regOne!21083 (regex!5526 anOtherTypeRule!33)))) b!3579509))

(assert (= (and b!3579340 ((_ is Concat!16042) (regOne!21083 (regex!5526 anOtherTypeRule!33)))) b!3579510))

(assert (= (and b!3579340 ((_ is Star!10285) (regOne!21083 (regex!5526 anOtherTypeRule!33)))) b!3579511))

(assert (= (and b!3579340 ((_ is Union!10285) (regOne!21083 (regex!5526 anOtherTypeRule!33)))) b!3579512))

(declare-fun b!3579516 () Bool)

(declare-fun e!2214530 () Bool)

(declare-fun tp!1095183 () Bool)

(declare-fun tp!1095185 () Bool)

(assert (=> b!3579516 (= e!2214530 (and tp!1095183 tp!1095185))))

(declare-fun b!3579514 () Bool)

(declare-fun tp!1095182 () Bool)

(declare-fun tp!1095184 () Bool)

(assert (=> b!3579514 (= e!2214530 (and tp!1095182 tp!1095184))))

(assert (=> b!3579340 (= tp!1095100 e!2214530)))

(declare-fun b!3579515 () Bool)

(declare-fun tp!1095181 () Bool)

(assert (=> b!3579515 (= e!2214530 tp!1095181)))

(declare-fun b!3579513 () Bool)

(assert (=> b!3579513 (= e!2214530 tp_is_empty!17673)))

(assert (= (and b!3579340 ((_ is ElementMatch!10285) (regTwo!21083 (regex!5526 anOtherTypeRule!33)))) b!3579513))

(assert (= (and b!3579340 ((_ is Concat!16042) (regTwo!21083 (regex!5526 anOtherTypeRule!33)))) b!3579514))

(assert (= (and b!3579340 ((_ is Star!10285) (regTwo!21083 (regex!5526 anOtherTypeRule!33)))) b!3579515))

(assert (= (and b!3579340 ((_ is Union!10285) (regTwo!21083 (regex!5526 anOtherTypeRule!33)))) b!3579516))

(declare-fun b!3579520 () Bool)

(declare-fun e!2214531 () Bool)

(declare-fun tp!1095188 () Bool)

(declare-fun tp!1095190 () Bool)

(assert (=> b!3579520 (= e!2214531 (and tp!1095188 tp!1095190))))

(declare-fun b!3579518 () Bool)

(declare-fun tp!1095187 () Bool)

(declare-fun tp!1095189 () Bool)

(assert (=> b!3579518 (= e!2214531 (and tp!1095187 tp!1095189))))

(assert (=> b!3579338 (= tp!1095097 e!2214531)))

(declare-fun b!3579519 () Bool)

(declare-fun tp!1095186 () Bool)

(assert (=> b!3579519 (= e!2214531 tp!1095186)))

(declare-fun b!3579517 () Bool)

(assert (=> b!3579517 (= e!2214531 tp_is_empty!17673)))

(assert (= (and b!3579338 ((_ is ElementMatch!10285) (regOne!21082 (regex!5526 anOtherTypeRule!33)))) b!3579517))

(assert (= (and b!3579338 ((_ is Concat!16042) (regOne!21082 (regex!5526 anOtherTypeRule!33)))) b!3579518))

(assert (= (and b!3579338 ((_ is Star!10285) (regOne!21082 (regex!5526 anOtherTypeRule!33)))) b!3579519))

(assert (= (and b!3579338 ((_ is Union!10285) (regOne!21082 (regex!5526 anOtherTypeRule!33)))) b!3579520))

(declare-fun b!3579524 () Bool)

(declare-fun e!2214532 () Bool)

(declare-fun tp!1095193 () Bool)

(declare-fun tp!1095195 () Bool)

(assert (=> b!3579524 (= e!2214532 (and tp!1095193 tp!1095195))))

(declare-fun b!3579522 () Bool)

(declare-fun tp!1095192 () Bool)

(declare-fun tp!1095194 () Bool)

(assert (=> b!3579522 (= e!2214532 (and tp!1095192 tp!1095194))))

(assert (=> b!3579338 (= tp!1095099 e!2214532)))

(declare-fun b!3579523 () Bool)

(declare-fun tp!1095191 () Bool)

(assert (=> b!3579523 (= e!2214532 tp!1095191)))

(declare-fun b!3579521 () Bool)

(assert (=> b!3579521 (= e!2214532 tp_is_empty!17673)))

(assert (= (and b!3579338 ((_ is ElementMatch!10285) (regTwo!21082 (regex!5526 anOtherTypeRule!33)))) b!3579521))

(assert (= (and b!3579338 ((_ is Concat!16042) (regTwo!21082 (regex!5526 anOtherTypeRule!33)))) b!3579522))

(assert (= (and b!3579338 ((_ is Star!10285) (regTwo!21082 (regex!5526 anOtherTypeRule!33)))) b!3579523))

(assert (= (and b!3579338 ((_ is Union!10285) (regTwo!21082 (regex!5526 anOtherTypeRule!33)))) b!3579524))

(declare-fun b!3579528 () Bool)

(declare-fun e!2214533 () Bool)

(declare-fun tp!1095198 () Bool)

(declare-fun tp!1095200 () Bool)

(assert (=> b!3579528 (= e!2214533 (and tp!1095198 tp!1095200))))

(declare-fun b!3579526 () Bool)

(declare-fun tp!1095197 () Bool)

(declare-fun tp!1095199 () Bool)

(assert (=> b!3579526 (= e!2214533 (and tp!1095197 tp!1095199))))

(assert (=> b!3579334 (= tp!1095092 e!2214533)))

(declare-fun b!3579527 () Bool)

(declare-fun tp!1095196 () Bool)

(assert (=> b!3579527 (= e!2214533 tp!1095196)))

(declare-fun b!3579525 () Bool)

(assert (=> b!3579525 (= e!2214533 tp_is_empty!17673)))

(assert (= (and b!3579334 ((_ is ElementMatch!10285) (regOne!21082 (regex!5526 (rule!8238 token!511))))) b!3579525))

(assert (= (and b!3579334 ((_ is Concat!16042) (regOne!21082 (regex!5526 (rule!8238 token!511))))) b!3579526))

(assert (= (and b!3579334 ((_ is Star!10285) (regOne!21082 (regex!5526 (rule!8238 token!511))))) b!3579527))

(assert (= (and b!3579334 ((_ is Union!10285) (regOne!21082 (regex!5526 (rule!8238 token!511))))) b!3579528))

(declare-fun b!3579532 () Bool)

(declare-fun e!2214534 () Bool)

(declare-fun tp!1095203 () Bool)

(declare-fun tp!1095205 () Bool)

(assert (=> b!3579532 (= e!2214534 (and tp!1095203 tp!1095205))))

(declare-fun b!3579530 () Bool)

(declare-fun tp!1095202 () Bool)

(declare-fun tp!1095204 () Bool)

(assert (=> b!3579530 (= e!2214534 (and tp!1095202 tp!1095204))))

(assert (=> b!3579334 (= tp!1095094 e!2214534)))

(declare-fun b!3579531 () Bool)

(declare-fun tp!1095201 () Bool)

(assert (=> b!3579531 (= e!2214534 tp!1095201)))

(declare-fun b!3579529 () Bool)

(assert (=> b!3579529 (= e!2214534 tp_is_empty!17673)))

(assert (= (and b!3579334 ((_ is ElementMatch!10285) (regTwo!21082 (regex!5526 (rule!8238 token!511))))) b!3579529))

(assert (= (and b!3579334 ((_ is Concat!16042) (regTwo!21082 (regex!5526 (rule!8238 token!511))))) b!3579530))

(assert (= (and b!3579334 ((_ is Star!10285) (regTwo!21082 (regex!5526 (rule!8238 token!511))))) b!3579531))

(assert (= (and b!3579334 ((_ is Union!10285) (regTwo!21082 (regex!5526 (rule!8238 token!511))))) b!3579532))

(declare-fun b!3579536 () Bool)

(declare-fun e!2214535 () Bool)

(declare-fun tp!1095208 () Bool)

(declare-fun tp!1095210 () Bool)

(assert (=> b!3579536 (= e!2214535 (and tp!1095208 tp!1095210))))

(declare-fun b!3579534 () Bool)

(declare-fun tp!1095207 () Bool)

(declare-fun tp!1095209 () Bool)

(assert (=> b!3579534 (= e!2214535 (and tp!1095207 tp!1095209))))

(assert (=> b!3579355 (= tp!1095115 e!2214535)))

(declare-fun b!3579535 () Bool)

(declare-fun tp!1095206 () Bool)

(assert (=> b!3579535 (= e!2214535 tp!1095206)))

(declare-fun b!3579533 () Bool)

(assert (=> b!3579533 (= e!2214535 tp_is_empty!17673)))

(assert (= (and b!3579355 ((_ is ElementMatch!10285) (regOne!21083 (regex!5526 rule!403)))) b!3579533))

(assert (= (and b!3579355 ((_ is Concat!16042) (regOne!21083 (regex!5526 rule!403)))) b!3579534))

(assert (= (and b!3579355 ((_ is Star!10285) (regOne!21083 (regex!5526 rule!403)))) b!3579535))

(assert (= (and b!3579355 ((_ is Union!10285) (regOne!21083 (regex!5526 rule!403)))) b!3579536))

(declare-fun b!3579540 () Bool)

(declare-fun e!2214536 () Bool)

(declare-fun tp!1095213 () Bool)

(declare-fun tp!1095215 () Bool)

(assert (=> b!3579540 (= e!2214536 (and tp!1095213 tp!1095215))))

(declare-fun b!3579538 () Bool)

(declare-fun tp!1095212 () Bool)

(declare-fun tp!1095214 () Bool)

(assert (=> b!3579538 (= e!2214536 (and tp!1095212 tp!1095214))))

(assert (=> b!3579355 (= tp!1095117 e!2214536)))

(declare-fun b!3579539 () Bool)

(declare-fun tp!1095211 () Bool)

(assert (=> b!3579539 (= e!2214536 tp!1095211)))

(declare-fun b!3579537 () Bool)

(assert (=> b!3579537 (= e!2214536 tp_is_empty!17673)))

(assert (= (and b!3579355 ((_ is ElementMatch!10285) (regTwo!21083 (regex!5526 rule!403)))) b!3579537))

(assert (= (and b!3579355 ((_ is Concat!16042) (regTwo!21083 (regex!5526 rule!403)))) b!3579538))

(assert (= (and b!3579355 ((_ is Star!10285) (regTwo!21083 (regex!5526 rule!403)))) b!3579539))

(assert (= (and b!3579355 ((_ is Union!10285) (regTwo!21083 (regex!5526 rule!403)))) b!3579540))

(declare-fun b!3579544 () Bool)

(declare-fun e!2214537 () Bool)

(declare-fun tp!1095218 () Bool)

(declare-fun tp!1095220 () Bool)

(assert (=> b!3579544 (= e!2214537 (and tp!1095218 tp!1095220))))

(declare-fun b!3579542 () Bool)

(declare-fun tp!1095217 () Bool)

(declare-fun tp!1095219 () Bool)

(assert (=> b!3579542 (= e!2214537 (and tp!1095217 tp!1095219))))

(assert (=> b!3579354 (= tp!1095113 e!2214537)))

(declare-fun b!3579543 () Bool)

(declare-fun tp!1095216 () Bool)

(assert (=> b!3579543 (= e!2214537 tp!1095216)))

(declare-fun b!3579541 () Bool)

(assert (=> b!3579541 (= e!2214537 tp_is_empty!17673)))

(assert (= (and b!3579354 ((_ is ElementMatch!10285) (reg!10614 (regex!5526 rule!403)))) b!3579541))

(assert (= (and b!3579354 ((_ is Concat!16042) (reg!10614 (regex!5526 rule!403)))) b!3579542))

(assert (= (and b!3579354 ((_ is Star!10285) (reg!10614 (regex!5526 rule!403)))) b!3579543))

(assert (= (and b!3579354 ((_ is Union!10285) (reg!10614 (regex!5526 rule!403)))) b!3579544))

(declare-fun b!3579548 () Bool)

(declare-fun e!2214538 () Bool)

(declare-fun tp!1095223 () Bool)

(declare-fun tp!1095225 () Bool)

(assert (=> b!3579548 (= e!2214538 (and tp!1095223 tp!1095225))))

(declare-fun b!3579546 () Bool)

(declare-fun tp!1095222 () Bool)

(declare-fun tp!1095224 () Bool)

(assert (=> b!3579546 (= e!2214538 (and tp!1095222 tp!1095224))))

(assert (=> b!3579350 (= tp!1095109 e!2214538)))

(declare-fun b!3579547 () Bool)

(declare-fun tp!1095221 () Bool)

(assert (=> b!3579547 (= e!2214538 tp!1095221)))

(declare-fun b!3579545 () Bool)

(assert (=> b!3579545 (= e!2214538 tp_is_empty!17673)))

(assert (= (and b!3579350 ((_ is ElementMatch!10285) (regex!5526 (h!42989 (t!290178 rules!3307))))) b!3579545))

(assert (= (and b!3579350 ((_ is Concat!16042) (regex!5526 (h!42989 (t!290178 rules!3307))))) b!3579546))

(assert (= (and b!3579350 ((_ is Star!10285) (regex!5526 (h!42989 (t!290178 rules!3307))))) b!3579547))

(assert (= (and b!3579350 ((_ is Union!10285) (regex!5526 (h!42989 (t!290178 rules!3307))))) b!3579548))

(declare-fun b!3579552 () Bool)

(declare-fun e!2214539 () Bool)

(declare-fun tp!1095228 () Bool)

(declare-fun tp!1095230 () Bool)

(assert (=> b!3579552 (= e!2214539 (and tp!1095228 tp!1095230))))

(declare-fun b!3579550 () Bool)

(declare-fun tp!1095227 () Bool)

(declare-fun tp!1095229 () Bool)

(assert (=> b!3579550 (= e!2214539 (and tp!1095227 tp!1095229))))

(assert (=> b!3579353 (= tp!1095114 e!2214539)))

(declare-fun b!3579551 () Bool)

(declare-fun tp!1095226 () Bool)

(assert (=> b!3579551 (= e!2214539 tp!1095226)))

(declare-fun b!3579549 () Bool)

(assert (=> b!3579549 (= e!2214539 tp_is_empty!17673)))

(assert (= (and b!3579353 ((_ is ElementMatch!10285) (regOne!21082 (regex!5526 rule!403)))) b!3579549))

(assert (= (and b!3579353 ((_ is Concat!16042) (regOne!21082 (regex!5526 rule!403)))) b!3579550))

(assert (= (and b!3579353 ((_ is Star!10285) (regOne!21082 (regex!5526 rule!403)))) b!3579551))

(assert (= (and b!3579353 ((_ is Union!10285) (regOne!21082 (regex!5526 rule!403)))) b!3579552))

(declare-fun b!3579558 () Bool)

(declare-fun e!2214542 () Bool)

(declare-fun tp!1095233 () Bool)

(declare-fun tp!1095235 () Bool)

(assert (=> b!3579558 (= e!2214542 (and tp!1095233 tp!1095235))))

(declare-fun b!3579556 () Bool)

(declare-fun tp!1095232 () Bool)

(declare-fun tp!1095234 () Bool)

(assert (=> b!3579556 (= e!2214542 (and tp!1095232 tp!1095234))))

(assert (=> b!3579353 (= tp!1095116 e!2214542)))

(declare-fun b!3579557 () Bool)

(declare-fun tp!1095231 () Bool)

(assert (=> b!3579557 (= e!2214542 tp!1095231)))

(declare-fun b!3579555 () Bool)

(assert (=> b!3579555 (= e!2214542 tp_is_empty!17673)))

(assert (= (and b!3579353 ((_ is ElementMatch!10285) (regTwo!21082 (regex!5526 rule!403)))) b!3579555))

(assert (= (and b!3579353 ((_ is Concat!16042) (regTwo!21082 (regex!5526 rule!403)))) b!3579556))

(assert (= (and b!3579353 ((_ is Star!10285) (regTwo!21082 (regex!5526 rule!403)))) b!3579557))

(assert (= (and b!3579353 ((_ is Union!10285) (regTwo!21082 (regex!5526 rule!403)))) b!3579558))

(declare-fun b!3579563 () Bool)

(declare-fun b_free!91717 () Bool)

(declare-fun b_next!92421 () Bool)

(assert (=> b!3579563 (= b_free!91717 (not b_next!92421))))

(declare-fun tp!1095238 () Bool)

(declare-fun b_and!258019 () Bool)

(assert (=> b!3579563 (= tp!1095238 b_and!258019)))

(declare-fun b_free!91719 () Bool)

(declare-fun b_next!92423 () Bool)

(assert (=> b!3579563 (= b_free!91719 (not b_next!92423))))

(declare-fun t!290204 () Bool)

(declare-fun tb!204279 () Bool)

(assert (=> (and b!3579563 (= (toChars!7657 (transformation!5526 (h!42989 (t!290178 (t!290178 rules!3307))))) (toChars!7657 (transformation!5526 (rule!8238 token!511)))) t!290204) tb!204279))

(declare-fun result!249002 () Bool)

(assert (= result!249002 result!248964))

(assert (=> b!3579185 t!290204))

(assert (=> d!1055752 t!290204))

(declare-fun tp!1095237 () Bool)

(declare-fun b_and!258021 () Bool)

(assert (=> b!3579563 (= tp!1095237 (and (=> t!290204 result!249002) b_and!258021))))

(declare-fun e!2214548 () Bool)

(assert (=> b!3579563 (= e!2214548 (and tp!1095238 tp!1095237))))

(declare-fun e!2214545 () Bool)

(declare-fun b!3579562 () Bool)

(declare-fun tp!1095236 () Bool)

(assert (=> b!3579562 (= e!2214545 (and tp!1095236 (inv!50847 (tag!6192 (h!42989 (t!290178 (t!290178 rules!3307))))) (inv!50850 (transformation!5526 (h!42989 (t!290178 (t!290178 rules!3307))))) e!2214548))))

(declare-fun b!3579561 () Bool)

(declare-fun e!2214547 () Bool)

(declare-fun tp!1095239 () Bool)

(assert (=> b!3579561 (= e!2214547 (and e!2214545 tp!1095239))))

(assert (=> b!3579349 (= tp!1095112 e!2214547)))

(assert (= b!3579562 b!3579563))

(assert (= b!3579561 b!3579562))

(assert (= (and b!3579349 ((_ is Cons!37569) (t!290178 (t!290178 rules!3307)))) b!3579561))

(declare-fun m!4073779 () Bool)

(assert (=> b!3579562 m!4073779))

(declare-fun m!4073781 () Bool)

(assert (=> b!3579562 m!4073781))

(declare-fun b_lambda!105789 () Bool)

(assert (= b_lambda!105787 (or d!1055718 b_lambda!105789)))

(declare-fun bs!569831 () Bool)

(declare-fun d!1055860 () Bool)

(assert (= bs!569831 (and d!1055860 d!1055718)))

(assert (=> bs!569831 (= (dynLambda!16175 lambda!123703 (h!42989 rules!3307)) (ruleValid!1802 thiss!23823 (h!42989 rules!3307)))))

(assert (=> bs!569831 m!4073613))

(assert (=> b!3579419 d!1055860))

(check-sat (not b!3579476) (not d!1055852) (not b!3579492) (not b!3579491) (not b!3579407) b_and!258011 (not b!3579450) (not b!3579520) b_and!258019 (not b_next!92419) (not b!3579502) (not d!1055780) (not b_next!92409) (not b_lambda!105783) (not b!3579543) (not b!3579557) (not b!3579527) (not b!3579388) (not b!3579499) (not b!3579542) (not b!3579536) (not b!3579535) (not d!1055820) b_and!258015 (not b_next!92407) (not b!3579494) (not b!3579420) (not b!3579516) (not b!3579539) (not b!3579503) (not b!3579534) (not b!3579519) (not b!3579371) b_and!258009 (not b!3579522) (not b!3579195) (not b!3579461) (not bs!569831) (not d!1055800) (not b!3579480) (not d!1055850) (not b!3579465) (not b!3579383) b_and!257967 (not b!3579477) (not b!3579544) (not b!3579498) (not b!3579452) (not b!3579399) (not d!1055828) (not b!3579558) (not d!1055806) (not b_next!92423) (not b!3579550) b_and!258017 (not b_next!92405) (not b!3579512) (not b!3579526) (not d!1055794) (not b!3579547) (not b!3579490) (not b_lambda!105785) (not b!3579551) (not b!3579515) (not b!3579475) (not b!3579500) (not b_next!92399) (not b!3579481) (not b!3579496) (not b!3579528) (not b!3579473) (not d!1055822) (not b!3579561) (not b!3579507) (not b!3579556) (not b!3579463) (not b!3579495) (not d!1055782) (not d!1055790) (not b_next!92421) b_and!257963 (not d!1055848) (not b_next!92401) (not b!3579471) (not b!3579431) (not b!3579532) (not b_next!92417) (not d!1055840) (not b!3579427) (not b!3579451) (not b!3579508) (not b!3579462) (not b!3579518) (not b!3579504) (not b!3579546) (not b!3579531) (not b_lambda!105789) b_and!257971 (not b!3579538) (not b!3579373) (not b!3579510) b_and!258007 (not b_next!92411) (not b!3579514) (not d!1055812) (not b!3579467) (not b!3579454) b_and!258013 (not b!3579524) (not b!3579389) (not b!3579430) (not b!3579460) (not b!3579466) (not d!1055818) (not b!3579511) (not b!3579548) (not d!1055814) tp_is_empty!17673 (not b!3579479) (not d!1055798) (not b!3579472) (not b!3579530) (not d!1055834) (not b!3579523) (not b_next!92403) (not d!1055786) (not b_next!92397) (not b!3579552) (not b!3579506) b_and!257975 (not b!3579540) (not b!3579562) (not d!1055802) b_and!258021)
(check-sat b_and!258011 (not b_next!92409) b_and!258009 b_and!257967 (not b_next!92423) (not b_next!92399) (not b_next!92421) b_and!257963 (not b_next!92401) (not b_next!92417) (not b_next!92411) b_and!258013 b_and!258021 b_and!258019 (not b_next!92419) b_and!258015 (not b_next!92407) b_and!258017 (not b_next!92405) b_and!257971 b_and!258007 (not b_next!92403) (not b_next!92397) b_and!257975)
