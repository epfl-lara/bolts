; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3658 () Bool)

(assert start!3658)

(declare-fun b!51066 () Bool)

(declare-fun b_free!1603 () Bool)

(declare-fun b_next!1603 () Bool)

(assert (=> b!51066 (= b_free!1603 (not b_next!1603))))

(declare-fun tp!33631 () Bool)

(declare-fun b_and!1651 () Bool)

(assert (=> b!51066 (= tp!33631 b_and!1651)))

(declare-fun b_free!1605 () Bool)

(declare-fun b_next!1605 () Bool)

(assert (=> b!51066 (= b_free!1605 (not b_next!1605))))

(declare-fun tp!33629 () Bool)

(declare-fun b_and!1653 () Bool)

(assert (=> b!51066 (= tp!33629 b_and!1653)))

(declare-fun b_free!1607 () Bool)

(declare-fun b_next!1607 () Bool)

(assert (=> start!3658 (= b_free!1607 (not b_next!1607))))

(declare-fun tp!33632 () Bool)

(declare-fun b_and!1655 () Bool)

(assert (=> start!3658 (= tp!33632 b_and!1655)))

(declare-fun b!51058 () Bool)

(declare-fun res!33601 () Bool)

(declare-fun e!29962 () Bool)

(assert (=> b!51058 (=> res!33601 e!29962)))

(declare-datatypes ((List!1030 0))(
  ( (Nil!1024) (Cons!1024 (h!6421 (_ BitVec 16)) (t!17241 List!1030)) )
))
(declare-datatypes ((TokenValue!211 0))(
  ( (FloatLiteralValue!422 (text!1922 List!1030)) (TokenValueExt!210 (__x!1517 Int)) (Broken!1055 (value!9170 List!1030)) (Object!216) (End!211) (Def!211) (Underscore!211) (Match!211) (Else!211) (Error!211) (Case!211) (If!211) (Extends!211) (Abstract!211) (Class!211) (Val!211) (DelimiterValue!422 (del!271 List!1030)) (KeywordValue!217 (value!9171 List!1030)) (CommentValue!422 (value!9172 List!1030)) (WhitespaceValue!422 (value!9173 List!1030)) (IndentationValue!211 (value!9174 List!1030)) (String!1446) (Int32!211) (Broken!1056 (value!9175 List!1030)) (Boolean!212) (Unit!583) (OperatorValue!214 (op!271 List!1030)) (IdentifierValue!422 (value!9176 List!1030)) (IdentifierValue!423 (value!9177 List!1030)) (WhitespaceValue!423 (value!9178 List!1030)) (True!422) (False!422) (Broken!1057 (value!9179 List!1030)) (Broken!1058 (value!9180 List!1030)) (True!423) (RightBrace!211) (RightBracket!211) (Colon!211) (Null!211) (Comma!211) (LeftBracket!211) (False!423) (LeftBrace!211) (ImaginaryLiteralValue!211 (text!1923 List!1030)) (StringLiteralValue!633 (value!9181 List!1030)) (EOFValue!211 (value!9182 List!1030)) (IdentValue!211 (value!9183 List!1030)) (DelimiterValue!423 (value!9184 List!1030)) (DedentValue!211 (value!9185 List!1030)) (NewLineValue!211 (value!9186 List!1030)) (IntegerValue!633 (value!9187 (_ BitVec 32)) (text!1924 List!1030)) (IntegerValue!634 (value!9188 Int) (text!1925 List!1030)) (Times!211) (Or!211) (Equal!211) (Minus!211) (Broken!1059 (value!9189 List!1030)) (And!211) (Div!211) (LessEqual!211) (Mod!211) (Concat!500) (Not!211) (Plus!211) (SpaceValue!211 (value!9190 List!1030)) (IntegerValue!635 (value!9191 Int) (text!1926 List!1030)) (StringLiteralValue!634 (text!1927 List!1030)) (FloatLiteralValue!423 (text!1928 List!1030)) (BytesLiteralValue!211 (value!9192 List!1030)) (CommentValue!423 (value!9193 List!1030)) (StringLiteralValue!635 (value!9194 List!1030)) (ErrorTokenValue!211 (msg!272 List!1030)) )
))
(declare-datatypes ((C!1500 0))(
  ( (C!1501 (val!357 Int)) )
))
(declare-datatypes ((List!1031 0))(
  ( (Nil!1025) (Cons!1025 (h!6422 C!1500) (t!17242 List!1031)) )
))
(declare-datatypes ((IArray!493 0))(
  ( (IArray!494 (innerList!304 List!1031)) )
))
(declare-datatypes ((Conc!246 0))(
  ( (Node!246 (left!769 Conc!246) (right!1099 Conc!246) (csize!722 Int) (cheight!457 Int)) (Leaf!492 (xs!2825 IArray!493) (csize!723 Int)) (Empty!246) )
))
(declare-datatypes ((Regex!289 0))(
  ( (ElementMatch!289 (c!16651 C!1500)) (Concat!501 (regOne!1090 Regex!289) (regTwo!1090 Regex!289)) (EmptyExpr!289) (Star!289 (reg!618 Regex!289)) (EmptyLang!289) (Union!289 (regOne!1091 Regex!289) (regTwo!1091 Regex!289)) )
))
(declare-datatypes ((String!1447 0))(
  ( (String!1448 (value!9195 String)) )
))
(declare-datatypes ((BalanceConc!496 0))(
  ( (BalanceConc!497 (c!16652 Conc!246)) )
))
(declare-datatypes ((TokenValueInjection!246 0))(
  ( (TokenValueInjection!247 (toValue!700 Int) (toChars!559 Int)) )
))
(declare-datatypes ((Rule!242 0))(
  ( (Rule!243 (regex!221 Regex!289) (tag!399 String!1447) (isSeparator!221 Bool) (transformation!221 TokenValueInjection!246)) )
))
(declare-datatypes ((Token!206 0))(
  ( (Token!207 (value!9196 TokenValue!211) (rule!696 Rule!242) (size!950 Int) (originalCharacters!274 List!1031)) )
))
(declare-datatypes ((List!1032 0))(
  ( (Nil!1026) (Cons!1026 (h!6423 Token!206) (t!17243 List!1032)) )
))
(declare-fun lt!8941 () List!1032)

(declare-fun lt!8938 () Token!206)

(declare-fun contains!108 (List!1032 Token!206) Bool)

(assert (=> b!51058 (= res!33601 (not (contains!108 lt!8941 lt!8938)))))

(declare-fun b!51059 () Bool)

(declare-fun e!29964 () Bool)

(declare-fun e!29965 () Bool)

(assert (=> b!51059 (= e!29964 e!29965)))

(declare-fun res!33600 () Bool)

(assert (=> b!51059 (=> (not res!33600) (not e!29965))))

(declare-fun from!821 () Int)

(declare-fun lt!8946 () Int)

(assert (=> b!51059 (= res!33600 (<= from!821 lt!8946))))

(declare-datatypes ((IArray!495 0))(
  ( (IArray!496 (innerList!305 List!1032)) )
))
(declare-datatypes ((Conc!247 0))(
  ( (Node!247 (left!770 Conc!247) (right!1100 Conc!247) (csize!724 Int) (cheight!458 Int)) (Leaf!493 (xs!2826 IArray!495) (csize!725 Int)) (Empty!247) )
))
(declare-datatypes ((BalanceConc!498 0))(
  ( (BalanceConc!499 (c!16653 Conc!247)) )
))
(declare-fun v!6227 () BalanceConc!498)

(declare-fun size!951 (BalanceConc!498) Int)

(assert (=> b!51059 (= lt!8946 (size!951 v!6227))))

(declare-fun b!51060 () Bool)

(declare-fun e!29966 () Bool)

(declare-fun tp!33628 () Bool)

(declare-fun e!29968 () Bool)

(declare-datatypes ((List!1033 0))(
  ( (Nil!1027) (Cons!1027 (h!6424 Rule!242) (t!17244 List!1033)) )
))
(declare-fun rules!1069 () List!1033)

(declare-fun inv!1346 (String!1447) Bool)

(declare-fun inv!1350 (TokenValueInjection!246) Bool)

(assert (=> b!51060 (= e!29968 (and tp!33628 (inv!1346 (tag!399 (h!6424 rules!1069))) (inv!1350 (transformation!221 (h!6424 rules!1069))) e!29966))))

(declare-fun b!51061 () Bool)

(declare-fun res!33591 () Bool)

(assert (=> b!51061 (=> (not res!33591) (not e!29965))))

(assert (=> b!51061 (= res!33591 (< from!821 (- lt!8946 1)))))

(declare-fun b!51062 () Bool)

(declare-fun res!33597 () Bool)

(declare-fun e!29969 () Bool)

(assert (=> b!51062 (=> res!33597 e!29969)))

(declare-fun lt!8940 () Token!206)

(assert (=> b!51062 (= res!33597 (not (contains!108 lt!8941 lt!8940)))))

(declare-fun b!51063 () Bool)

(declare-fun res!33599 () Bool)

(assert (=> b!51063 (=> (not res!33599) (not e!29965))))

(declare-datatypes ((LexerInterface!113 0))(
  ( (LexerInterfaceExt!110 (__x!1518 Int)) (Lexer!111) )
))
(declare-fun thiss!11059 () LexerInterface!113)

(declare-fun rulesInvariant!107 (LexerInterface!113 List!1033) Bool)

(assert (=> b!51063 (= res!33599 (rulesInvariant!107 thiss!11059 rules!1069))))

(declare-fun b!51064 () Bool)

(declare-fun res!33592 () Bool)

(assert (=> b!51064 (=> (not res!33592) (not e!29965))))

(declare-fun rulesProduceEachTokenIndividually!51 (LexerInterface!113 List!1033 BalanceConc!498) Bool)

(assert (=> b!51064 (= res!33592 (rulesProduceEachTokenIndividually!51 thiss!11059 rules!1069 v!6227))))

(declare-fun b!51065 () Bool)

(declare-fun e!29971 () Bool)

(declare-fun tp!33630 () Bool)

(declare-fun inv!1351 (Conc!247) Bool)

(assert (=> b!51065 (= e!29971 (and (inv!1351 (c!16653 v!6227)) tp!33630))))

(assert (=> b!51066 (= e!29966 (and tp!33631 tp!33629))))

(declare-fun b!51057 () Bool)

(assert (=> b!51057 (= e!29962 true)))

(declare-fun lt!8935 () List!1032)

(declare-fun dropList!4 (BalanceConc!498 Int) List!1032)

(assert (=> b!51057 (= lt!8935 (dropList!4 v!6227 from!821))))

(declare-fun lt!8947 () Bool)

(declare-fun e!29963 () Bool)

(assert (=> b!51057 (= lt!8947 e!29963)))

(declare-fun res!33598 () Bool)

(assert (=> b!51057 (=> res!33598 e!29963)))

(declare-fun pred!6 () Int)

(declare-fun dynLambda!167 (Int Token!206 Token!206 List!1033) Bool)

(assert (=> b!51057 (= res!33598 (not (dynLambda!167 pred!6 lt!8940 lt!8938 rules!1069)))))

(declare-fun e!29961 () Bool)

(assert (=> b!51057 e!29961))

(declare-fun res!33595 () Bool)

(assert (=> b!51057 (=> (not res!33595) (not e!29961))))

(declare-fun rulesProduceIndividualToken!32 (LexerInterface!113 List!1033 Token!206) Bool)

(assert (=> b!51057 (= res!33595 (rulesProduceIndividualToken!32 thiss!11059 rules!1069 lt!8938))))

(declare-datatypes ((Unit!584 0))(
  ( (Unit!585) )
))
(declare-fun lt!8945 () Unit!584)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!20 (LexerInterface!113 List!1033 List!1032 Token!206) Unit!584)

(assert (=> b!51057 (= lt!8945 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!20 thiss!11059 rules!1069 lt!8941 lt!8938))))

(assert (=> b!51057 (rulesProduceIndividualToken!32 thiss!11059 rules!1069 lt!8940)))

(declare-fun lt!8944 () Unit!584)

(assert (=> b!51057 (= lt!8944 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!20 thiss!11059 rules!1069 lt!8941 lt!8940))))

(declare-fun res!33594 () Bool)

(assert (=> start!3658 (=> (not res!33594) (not e!29964))))

(get-info :version)

(assert (=> start!3658 (= res!33594 (and ((_ is Lexer!111) thiss!11059) (>= from!821 0)))))

(assert (=> start!3658 e!29964))

(assert (=> start!3658 true))

(assert (=> start!3658 tp!33632))

(declare-fun inv!1352 (BalanceConc!498) Bool)

(assert (=> start!3658 (and (inv!1352 v!6227) e!29971)))

(declare-fun e!29970 () Bool)

(assert (=> start!3658 e!29970))

(declare-fun b!51067 () Bool)

(assert (=> b!51067 (= e!29969 e!29962)))

(declare-fun res!33593 () Bool)

(assert (=> b!51067 (=> res!33593 e!29962)))

(declare-fun contains!109 (BalanceConc!498 Token!206) Bool)

(assert (=> b!51067 (= res!33593 (not (contains!109 v!6227 lt!8938)))))

(declare-fun apply!92 (BalanceConc!498 Int) Token!206)

(assert (=> b!51067 (= lt!8938 (apply!92 v!6227 (+ 1 from!821)))))

(declare-fun b!51068 () Bool)

(assert (=> b!51068 (= e!29965 (not e!29969))))

(declare-fun res!33596 () Bool)

(assert (=> b!51068 (=> res!33596 e!29969)))

(assert (=> b!51068 (= res!33596 (not (contains!109 v!6227 lt!8940)))))

(assert (=> b!51068 (= lt!8940 (apply!92 v!6227 from!821))))

(declare-fun lt!8939 () List!1032)

(declare-fun tail!63 (List!1032) List!1032)

(declare-fun drop!38 (List!1032 Int) List!1032)

(assert (=> b!51068 (= (tail!63 lt!8939) (drop!38 lt!8941 (+ 2 from!821)))))

(declare-fun lt!8948 () Unit!584)

(declare-fun lemmaDropTail!34 (List!1032 Int) Unit!584)

(assert (=> b!51068 (= lt!8948 (lemmaDropTail!34 lt!8941 (+ 1 from!821)))))

(declare-fun lt!8943 () List!1032)

(assert (=> b!51068 (= (tail!63 lt!8943) lt!8939)))

(declare-fun lt!8942 () Unit!584)

(assert (=> b!51068 (= lt!8942 (lemmaDropTail!34 lt!8941 from!821))))

(declare-fun head!378 (List!1032) Token!206)

(declare-fun apply!93 (List!1032 Int) Token!206)

(assert (=> b!51068 (= (head!378 lt!8939) (apply!93 lt!8941 (+ 1 from!821)))))

(assert (=> b!51068 (= lt!8939 (drop!38 lt!8941 (+ 1 from!821)))))

(declare-fun lt!8936 () Unit!584)

(declare-fun lemmaDropApply!38 (List!1032 Int) Unit!584)

(assert (=> b!51068 (= lt!8936 (lemmaDropApply!38 lt!8941 (+ 1 from!821)))))

(assert (=> b!51068 (= (head!378 lt!8943) (apply!93 lt!8941 from!821))))

(assert (=> b!51068 (= lt!8943 (drop!38 lt!8941 from!821))))

(declare-fun lt!8937 () Unit!584)

(assert (=> b!51068 (= lt!8937 (lemmaDropApply!38 lt!8941 from!821))))

(declare-fun list!262 (BalanceConc!498) List!1032)

(assert (=> b!51068 (= lt!8941 (list!262 v!6227))))

(declare-fun b!51069 () Bool)

(declare-fun res!33602 () Bool)

(assert (=> b!51069 (=> (not res!33602) (not e!29965))))

(declare-fun isEmpty!207 (List!1033) Bool)

(assert (=> b!51069 (= res!33602 (not (isEmpty!207 rules!1069)))))

(declare-fun b!51070 () Bool)

(declare-fun size!952 (BalanceConc!496) Int)

(declare-fun charsOf!14 (Token!206) BalanceConc!496)

(assert (=> b!51070 (= e!29961 (> (size!952 (charsOf!14 lt!8938)) 0))))

(declare-fun b!51071 () Bool)

(declare-fun tp!33627 () Bool)

(assert (=> b!51071 (= e!29970 (and e!29968 tp!33627))))

(declare-fun b!51072 () Bool)

(declare-fun tokensListTwoByTwoPredicate!2 (LexerInterface!113 BalanceConc!498 Int List!1033 Int) Bool)

(assert (=> b!51072 (= e!29963 (not (tokensListTwoByTwoPredicate!2 thiss!11059 v!6227 (+ 1 from!821) rules!1069 pred!6)))))

(assert (= (and start!3658 res!33594) b!51059))

(assert (= (and b!51059 res!33600) b!51069))

(assert (= (and b!51069 res!33602) b!51063))

(assert (= (and b!51063 res!33599) b!51064))

(assert (= (and b!51064 res!33592) b!51061))

(assert (= (and b!51061 res!33591) b!51068))

(assert (= (and b!51068 (not res!33596)) b!51062))

(assert (= (and b!51062 (not res!33597)) b!51067))

(assert (= (and b!51067 (not res!33593)) b!51058))

(assert (= (and b!51058 (not res!33601)) b!51057))

(assert (= (and b!51057 res!33595) b!51070))

(assert (= (and b!51057 (not res!33598)) b!51072))

(assert (= start!3658 b!51065))

(assert (= b!51060 b!51066))

(assert (= b!51071 b!51060))

(assert (= (and start!3658 ((_ is Cons!1027) rules!1069)) b!51071))

(declare-fun b_lambda!311 () Bool)

(assert (=> (not b_lambda!311) (not b!51057)))

(declare-fun t!17240 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and start!3658 (= pred!6 pred!6) t!17240) tb!49))

(declare-fun result!786 () Bool)

(assert (=> tb!49 (= result!786 true)))

(assert (=> b!51057 t!17240))

(declare-fun b_and!1657 () Bool)

(assert (= b_and!1655 (and (=> t!17240 result!786) b_and!1657)))

(declare-fun m!25456 () Bool)

(assert (=> b!51063 m!25456))

(declare-fun m!25458 () Bool)

(assert (=> start!3658 m!25458))

(declare-fun m!25460 () Bool)

(assert (=> b!51064 m!25460))

(declare-fun m!25462 () Bool)

(assert (=> b!51069 m!25462))

(declare-fun m!25464 () Bool)

(assert (=> b!51072 m!25464))

(declare-fun m!25466 () Bool)

(assert (=> b!51060 m!25466))

(declare-fun m!25468 () Bool)

(assert (=> b!51060 m!25468))

(declare-fun m!25470 () Bool)

(assert (=> b!51067 m!25470))

(declare-fun m!25472 () Bool)

(assert (=> b!51067 m!25472))

(declare-fun m!25474 () Bool)

(assert (=> b!51058 m!25474))

(declare-fun m!25476 () Bool)

(assert (=> b!51070 m!25476))

(assert (=> b!51070 m!25476))

(declare-fun m!25478 () Bool)

(assert (=> b!51070 m!25478))

(declare-fun m!25480 () Bool)

(assert (=> b!51062 m!25480))

(declare-fun m!25482 () Bool)

(assert (=> b!51065 m!25482))

(declare-fun m!25484 () Bool)

(assert (=> b!51057 m!25484))

(declare-fun m!25486 () Bool)

(assert (=> b!51057 m!25486))

(declare-fun m!25488 () Bool)

(assert (=> b!51057 m!25488))

(declare-fun m!25490 () Bool)

(assert (=> b!51057 m!25490))

(declare-fun m!25492 () Bool)

(assert (=> b!51057 m!25492))

(declare-fun m!25494 () Bool)

(assert (=> b!51057 m!25494))

(declare-fun m!25496 () Bool)

(assert (=> b!51059 m!25496))

(declare-fun m!25498 () Bool)

(assert (=> b!51068 m!25498))

(declare-fun m!25500 () Bool)

(assert (=> b!51068 m!25500))

(declare-fun m!25502 () Bool)

(assert (=> b!51068 m!25502))

(declare-fun m!25504 () Bool)

(assert (=> b!51068 m!25504))

(declare-fun m!25506 () Bool)

(assert (=> b!51068 m!25506))

(declare-fun m!25508 () Bool)

(assert (=> b!51068 m!25508))

(declare-fun m!25510 () Bool)

(assert (=> b!51068 m!25510))

(declare-fun m!25512 () Bool)

(assert (=> b!51068 m!25512))

(declare-fun m!25514 () Bool)

(assert (=> b!51068 m!25514))

(declare-fun m!25516 () Bool)

(assert (=> b!51068 m!25516))

(declare-fun m!25518 () Bool)

(assert (=> b!51068 m!25518))

(declare-fun m!25520 () Bool)

(assert (=> b!51068 m!25520))

(declare-fun m!25522 () Bool)

(assert (=> b!51068 m!25522))

(declare-fun m!25524 () Bool)

(assert (=> b!51068 m!25524))

(declare-fun m!25526 () Bool)

(assert (=> b!51068 m!25526))

(declare-fun m!25528 () Bool)

(assert (=> b!51068 m!25528))

(check-sat (not b!51067) (not b_next!1603) (not b!51057) (not b!51060) (not b!51065) (not b!51071) (not b!51072) (not b!51064) (not start!3658) b_and!1657 (not b_next!1605) (not b!51068) b_and!1653 (not b!51059) b_and!1651 (not b!51062) (not b!51069) (not b!51058) (not b_lambda!311) (not b_next!1607) (not b!51063) (not b!51070))
(check-sat (not b_next!1603) b_and!1651 (not b_next!1607) b_and!1657 (not b_next!1605) b_and!1653)
