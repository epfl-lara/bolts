; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!15088 () Bool)

(assert start!15088)

(declare-fun b!143506 () Bool)

(declare-fun b_free!4933 () Bool)

(declare-fun b_next!4933 () Bool)

(assert (=> b!143506 (= b_free!4933 (not b_next!4933))))

(declare-fun tp!75773 () Bool)

(declare-fun b_and!7573 () Bool)

(assert (=> b!143506 (= tp!75773 b_and!7573)))

(declare-fun b_free!4935 () Bool)

(declare-fun b_next!4935 () Bool)

(assert (=> b!143506 (= b_free!4935 (not b_next!4935))))

(declare-fun tp!75770 () Bool)

(declare-fun b_and!7575 () Bool)

(assert (=> b!143506 (= tp!75770 b_and!7575)))

(declare-fun b!143498 () Bool)

(declare-fun b_free!4937 () Bool)

(declare-fun b_next!4937 () Bool)

(assert (=> b!143498 (= b_free!4937 (not b_next!4937))))

(declare-fun tp!75778 () Bool)

(declare-fun b_and!7577 () Bool)

(assert (=> b!143498 (= tp!75778 b_and!7577)))

(declare-fun b_free!4939 () Bool)

(declare-fun b_next!4939 () Bool)

(assert (=> b!143498 (= b_free!4939 (not b_next!4939))))

(declare-fun tp!75771 () Bool)

(declare-fun b_and!7579 () Bool)

(assert (=> b!143498 (= tp!75771 b_and!7579)))

(declare-fun b!143493 () Bool)

(declare-fun b_free!4941 () Bool)

(declare-fun b_next!4941 () Bool)

(assert (=> b!143493 (= b_free!4941 (not b_next!4941))))

(declare-fun tp!75768 () Bool)

(declare-fun b_and!7581 () Bool)

(assert (=> b!143493 (= tp!75768 b_and!7581)))

(declare-fun b_free!4943 () Bool)

(declare-fun b_next!4943 () Bool)

(assert (=> b!143493 (= b_free!4943 (not b_next!4943))))

(declare-fun tp!75776 () Bool)

(declare-fun b_and!7583 () Bool)

(assert (=> b!143493 (= tp!75776 b_and!7583)))

(declare-fun b!143491 () Bool)

(declare-fun res!66337 () Bool)

(declare-fun e!84981 () Bool)

(assert (=> b!143491 (=> (not res!66337) (not e!84981))))

(declare-datatypes ((List!2487 0))(
  ( (Nil!2477) (Cons!2477 (h!7874 (_ BitVec 16)) (t!23881 List!2487)) )
))
(declare-datatypes ((TokenValue!444 0))(
  ( (FloatLiteralValue!888 (text!3553 List!2487)) (TokenValueExt!443 (__x!2375 Int)) (Broken!2220 (value!16318 List!2487)) (Object!453) (End!444) (Def!444) (Underscore!444) (Match!444) (Else!444) (Error!444) (Case!444) (If!444) (Extends!444) (Abstract!444) (Class!444) (Val!444) (DelimiterValue!888 (del!504 List!2487)) (KeywordValue!450 (value!16319 List!2487)) (CommentValue!888 (value!16320 List!2487)) (WhitespaceValue!888 (value!16321 List!2487)) (IndentationValue!444 (value!16322 List!2487)) (String!3301) (Int32!444) (Broken!2221 (value!16323 List!2487)) (Boolean!445) (Unit!1832) (OperatorValue!447 (op!504 List!2487)) (IdentifierValue!888 (value!16324 List!2487)) (IdentifierValue!889 (value!16325 List!2487)) (WhitespaceValue!889 (value!16326 List!2487)) (True!888) (False!888) (Broken!2222 (value!16327 List!2487)) (Broken!2223 (value!16328 List!2487)) (True!889) (RightBrace!444) (RightBracket!444) (Colon!444) (Null!444) (Comma!444) (LeftBracket!444) (False!889) (LeftBrace!444) (ImaginaryLiteralValue!444 (text!3554 List!2487)) (StringLiteralValue!1332 (value!16329 List!2487)) (EOFValue!444 (value!16330 List!2487)) (IdentValue!444 (value!16331 List!2487)) (DelimiterValue!889 (value!16332 List!2487)) (DedentValue!444 (value!16333 List!2487)) (NewLineValue!444 (value!16334 List!2487)) (IntegerValue!1332 (value!16335 (_ BitVec 32)) (text!3555 List!2487)) (IntegerValue!1333 (value!16336 Int) (text!3556 List!2487)) (Times!444) (Or!444) (Equal!444) (Minus!444) (Broken!2224 (value!16337 List!2487)) (And!444) (Div!444) (LessEqual!444) (Mod!444) (Concat!1090) (Not!444) (Plus!444) (SpaceValue!444 (value!16338 List!2487)) (IntegerValue!1334 (value!16339 Int) (text!3557 List!2487)) (StringLiteralValue!1333 (text!3558 List!2487)) (FloatLiteralValue!889 (text!3559 List!2487)) (BytesLiteralValue!444 (value!16340 List!2487)) (CommentValue!889 (value!16341 List!2487)) (StringLiteralValue!1334 (value!16342 List!2487)) (ErrorTokenValue!444 (msg!505 List!2487)) )
))
(declare-datatypes ((C!2214 0))(
  ( (C!2215 (val!993 Int)) )
))
(declare-datatypes ((List!2488 0))(
  ( (Nil!2478) (Cons!2478 (h!7875 C!2214) (t!23882 List!2488)) )
))
(declare-datatypes ((IArray!1333 0))(
  ( (IArray!1334 (innerList!724 List!2488)) )
))
(declare-datatypes ((Conc!666 0))(
  ( (Node!666 (left!1872 Conc!666) (right!2202 Conc!666) (csize!1562 Int) (cheight!877 Int)) (Leaf!1217 (xs!3261 IArray!1333) (csize!1563 Int)) (Empty!666) )
))
(declare-datatypes ((BalanceConc!1340 0))(
  ( (BalanceConc!1341 (c!29515 Conc!666)) )
))
(declare-datatypes ((TokenValueInjection!660 0))(
  ( (TokenValueInjection!661 (toValue!1041 Int) (toChars!900 Int)) )
))
(declare-datatypes ((String!3302 0))(
  ( (String!3303 (value!16343 String)) )
))
(declare-datatypes ((Regex!646 0))(
  ( (ElementMatch!646 (c!29516 C!2214)) (Concat!1091 (regOne!1804 Regex!646) (regTwo!1804 Regex!646)) (EmptyExpr!646) (Star!646 (reg!975 Regex!646)) (EmptyLang!646) (Union!646 (regOne!1805 Regex!646) (regTwo!1805 Regex!646)) )
))
(declare-datatypes ((Rule!644 0))(
  ( (Rule!645 (regex!422 Regex!646) (tag!600 String!3302) (isSeparator!422 Bool) (transformation!422 TokenValueInjection!660)) )
))
(declare-datatypes ((Token!588 0))(
  ( (Token!589 (value!16344 TokenValue!444) (rule!929 Rule!644) (size!2144 Int) (originalCharacters!465 List!2488)) )
))
(declare-fun separatorToken!170 () Token!588)

(declare-datatypes ((List!2489 0))(
  ( (Nil!2479) (Cons!2479 (h!7876 Rule!644) (t!23883 List!2489)) )
))
(declare-fun rules!1920 () List!2489)

(declare-datatypes ((LexerInterface!308 0))(
  ( (LexerInterfaceExt!305 (__x!2376 Int)) (Lexer!306) )
))
(declare-fun thiss!17480 () LexerInterface!308)

(declare-fun rulesProduceIndividualToken!57 (LexerInterface!308 List!2489 Token!588) Bool)

(assert (=> b!143491 (= res!66337 (rulesProduceIndividualToken!57 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!143492 () Bool)

(declare-fun res!66341 () Bool)

(assert (=> b!143492 (=> (not res!66341) (not e!84981))))

(declare-datatypes ((List!2490 0))(
  ( (Nil!2480) (Cons!2480 (h!7877 Token!588) (t!23884 List!2490)) )
))
(declare-fun tokens!465 () List!2490)

(declare-datatypes ((IArray!1335 0))(
  ( (IArray!1336 (innerList!725 List!2490)) )
))
(declare-datatypes ((Conc!667 0))(
  ( (Node!667 (left!1873 Conc!667) (right!2203 Conc!667) (csize!1564 Int) (cheight!878 Int)) (Leaf!1218 (xs!3262 IArray!1335) (csize!1565 Int)) (Empty!667) )
))
(declare-datatypes ((BalanceConc!1342 0))(
  ( (BalanceConc!1343 (c!29517 Conc!667)) )
))
(declare-fun rulesProduceEachTokenIndividually!100 (LexerInterface!308 List!2489 BalanceConc!1342) Bool)

(declare-fun seqFromList!235 (List!2490) BalanceConc!1342)

(assert (=> b!143492 (= res!66341 (rulesProduceEachTokenIndividually!100 thiss!17480 rules!1920 (seqFromList!235 tokens!465)))))

(declare-fun e!84986 () Bool)

(assert (=> b!143493 (= e!84986 (and tp!75768 tp!75776))))

(declare-fun b!143494 () Bool)

(assert (=> b!143494 (= e!84981 false)))

(declare-fun lt!41343 () List!2488)

(declare-fun printWithSeparatorTokenWhenNeededList!1 (LexerInterface!308 List!2489 List!2490 Token!588) List!2488)

(assert (=> b!143494 (= lt!41343 (printWithSeparatorTokenWhenNeededList!1 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!75769 () Bool)

(declare-fun b!143495 () Bool)

(declare-fun e!84990 () Bool)

(declare-fun inv!3250 (String!3302) Bool)

(declare-fun inv!3253 (TokenValueInjection!660) Bool)

(assert (=> b!143495 (= e!84990 (and tp!75769 (inv!3250 (tag!600 (h!7876 rules!1920))) (inv!3253 (transformation!422 (h!7876 rules!1920))) e!84986))))

(declare-fun b!143496 () Bool)

(declare-fun e!84978 () Bool)

(declare-fun tp!75779 () Bool)

(assert (=> b!143496 (= e!84978 (and e!84990 tp!75779))))

(declare-fun b!143497 () Bool)

(declare-fun res!66343 () Bool)

(assert (=> b!143497 (=> (not res!66343) (not e!84981))))

(assert (=> b!143497 (= res!66343 (isSeparator!422 (rule!929 separatorToken!170)))))

(declare-fun e!84989 () Bool)

(assert (=> b!143498 (= e!84989 (and tp!75778 tp!75771))))

(declare-fun res!66338 () Bool)

(assert (=> start!15088 (=> (not res!66338) (not e!84981))))

(assert (=> start!15088 (= res!66338 (is-Lexer!306 thiss!17480))))

(assert (=> start!15088 e!84981))

(assert (=> start!15088 true))

(assert (=> start!15088 e!84978))

(declare-fun e!84991 () Bool)

(assert (=> start!15088 e!84991))

(declare-fun e!84979 () Bool)

(declare-fun inv!3254 (Token!588) Bool)

(assert (=> start!15088 (and (inv!3254 separatorToken!170) e!84979)))

(declare-fun b!143499 () Bool)

(declare-fun res!66344 () Bool)

(assert (=> b!143499 (=> (not res!66344) (not e!84981))))

(declare-fun sepAndNonSepRulesDisjointChars!11 (List!2489 List!2489) Bool)

(assert (=> b!143499 (= res!66344 (sepAndNonSepRulesDisjointChars!11 rules!1920 rules!1920))))

(declare-fun b!143500 () Bool)

(declare-fun res!66339 () Bool)

(assert (=> b!143500 (=> (not res!66339) (not e!84981))))

(assert (=> b!143500 (= res!66339 (is-Cons!2480 tokens!465))))

(declare-fun b!143501 () Bool)

(declare-fun res!66342 () Bool)

(assert (=> b!143501 (=> (not res!66342) (not e!84981))))

(declare-fun isEmpty!951 (List!2489) Bool)

(assert (=> b!143501 (= res!66342 (not (isEmpty!951 rules!1920)))))

(declare-fun b!143502 () Bool)

(declare-fun res!66336 () Bool)

(assert (=> b!143502 (=> (not res!66336) (not e!84981))))

(declare-fun lambda!3441 () Int)

(declare-fun forall!374 (List!2490 Int) Bool)

(assert (=> b!143502 (= res!66336 (forall!374 tokens!465 lambda!3441))))

(declare-fun tp!75775 () Bool)

(declare-fun b!143503 () Bool)

(declare-fun e!84987 () Bool)

(assert (=> b!143503 (= e!84991 (and (inv!3254 (h!7877 tokens!465)) e!84987 tp!75775))))

(declare-fun tp!75777 () Bool)

(declare-fun b!143504 () Bool)

(declare-fun e!84992 () Bool)

(declare-fun inv!21 (TokenValue!444) Bool)

(assert (=> b!143504 (= e!84987 (and (inv!21 (value!16344 (h!7877 tokens!465))) e!84992 tp!75777))))

(declare-fun b!143505 () Bool)

(declare-fun res!66340 () Bool)

(assert (=> b!143505 (=> (not res!66340) (not e!84981))))

(declare-fun rulesInvariant!274 (LexerInterface!308 List!2489) Bool)

(assert (=> b!143505 (= res!66340 (rulesInvariant!274 thiss!17480 rules!1920))))

(declare-fun e!84983 () Bool)

(assert (=> b!143506 (= e!84983 (and tp!75773 tp!75770))))

(declare-fun tp!75772 () Bool)

(declare-fun e!84980 () Bool)

(declare-fun b!143507 () Bool)

(assert (=> b!143507 (= e!84979 (and (inv!21 (value!16344 separatorToken!170)) e!84980 tp!75772))))

(declare-fun b!143508 () Bool)

(declare-fun tp!75780 () Bool)

(assert (=> b!143508 (= e!84992 (and tp!75780 (inv!3250 (tag!600 (rule!929 (h!7877 tokens!465)))) (inv!3253 (transformation!422 (rule!929 (h!7877 tokens!465)))) e!84983))))

(declare-fun b!143509 () Bool)

(declare-fun tp!75774 () Bool)

(assert (=> b!143509 (= e!84980 (and tp!75774 (inv!3250 (tag!600 (rule!929 separatorToken!170))) (inv!3253 (transformation!422 (rule!929 separatorToken!170))) e!84989))))

(assert (= (and start!15088 res!66338) b!143501))

(assert (= (and b!143501 res!66342) b!143505))

(assert (= (and b!143505 res!66340) b!143492))

(assert (= (and b!143492 res!66341) b!143491))

(assert (= (and b!143491 res!66337) b!143497))

(assert (= (and b!143497 res!66343) b!143502))

(assert (= (and b!143502 res!66336) b!143499))

(assert (= (and b!143499 res!66344) b!143500))

(assert (= (and b!143500 res!66339) b!143494))

(assert (= b!143495 b!143493))

(assert (= b!143496 b!143495))

(assert (= (and start!15088 (is-Cons!2479 rules!1920)) b!143496))

(assert (= b!143508 b!143506))

(assert (= b!143504 b!143508))

(assert (= b!143503 b!143504))

(assert (= (and start!15088 (is-Cons!2480 tokens!465)) b!143503))

(assert (= b!143509 b!143498))

(assert (= b!143507 b!143509))

(assert (= start!15088 b!143507))

(declare-fun m!126071 () Bool)

(assert (=> b!143491 m!126071))

(declare-fun m!126073 () Bool)

(assert (=> b!143492 m!126073))

(assert (=> b!143492 m!126073))

(declare-fun m!126075 () Bool)

(assert (=> b!143492 m!126075))

(declare-fun m!126077 () Bool)

(assert (=> b!143502 m!126077))

(declare-fun m!126079 () Bool)

(assert (=> b!143503 m!126079))

(declare-fun m!126081 () Bool)

(assert (=> b!143504 m!126081))

(declare-fun m!126083 () Bool)

(assert (=> b!143495 m!126083))

(declare-fun m!126085 () Bool)

(assert (=> b!143495 m!126085))

(declare-fun m!126087 () Bool)

(assert (=> b!143494 m!126087))

(declare-fun m!126089 () Bool)

(assert (=> b!143509 m!126089))

(declare-fun m!126091 () Bool)

(assert (=> b!143509 m!126091))

(declare-fun m!126093 () Bool)

(assert (=> b!143501 m!126093))

(declare-fun m!126095 () Bool)

(assert (=> b!143508 m!126095))

(declare-fun m!126097 () Bool)

(assert (=> b!143508 m!126097))

(declare-fun m!126099 () Bool)

(assert (=> start!15088 m!126099))

(declare-fun m!126101 () Bool)

(assert (=> b!143499 m!126101))

(declare-fun m!126103 () Bool)

(assert (=> b!143507 m!126103))

(declare-fun m!126105 () Bool)

(assert (=> b!143505 m!126105))

(push 1)

(assert (not b_next!4941))

(assert (not b!143505))

(assert b_and!7573)

(assert (not b!143494))

(assert (not start!15088))

(assert b_and!7575)

(assert (not b_next!4943))

(assert (not b!143501))

(assert (not b!143507))

(assert (not b!143496))

(assert (not b!143502))

(assert (not b_next!4933))

(assert (not b_next!4939))

(assert (not b!143508))

(assert b_and!7579)

(assert (not b!143495))

(assert (not b!143503))

(assert (not b!143499))

(assert b_and!7577)

(assert (not b!143504))

(assert b_and!7583)

(assert (not b!143492))

(assert (not b_next!4937))

(assert b_and!7581)

(assert (not b!143509))

(assert (not b!143491))

(assert (not b_next!4935))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7579)

(assert (not b_next!4941))

(assert b_and!7573)

(assert b_and!7575)

(assert (not b_next!4943))

(assert b_and!7577)

(assert b_and!7583)

(assert (not b_next!4933))

(assert (not b_next!4939))

(assert (not b_next!4935))

(assert (not b_next!4937))

(assert b_and!7581)

(check-sat)

(pop 1)

