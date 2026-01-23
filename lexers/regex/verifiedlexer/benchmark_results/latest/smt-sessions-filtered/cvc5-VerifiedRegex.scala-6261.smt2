; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!308312 () Bool)

(assert start!308312)

(declare-fun b!3307605 () Bool)

(declare-fun b_free!86997 () Bool)

(declare-fun b_next!87701 () Bool)

(assert (=> b!3307605 (= b_free!86997 (not b_next!87701))))

(declare-fun tp!1035803 () Bool)

(declare-fun b_and!226807 () Bool)

(assert (=> b!3307605 (= tp!1035803 b_and!226807)))

(declare-fun b_free!86999 () Bool)

(declare-fun b_next!87703 () Bool)

(assert (=> b!3307605 (= b_free!86999 (not b_next!87703))))

(declare-fun tp!1035810 () Bool)

(declare-fun b_and!226809 () Bool)

(assert (=> b!3307605 (= tp!1035810 b_and!226809)))

(declare-fun b!3307616 () Bool)

(declare-fun b_free!87001 () Bool)

(declare-fun b_next!87705 () Bool)

(assert (=> b!3307616 (= b_free!87001 (not b_next!87705))))

(declare-fun tp!1035805 () Bool)

(declare-fun b_and!226811 () Bool)

(assert (=> b!3307616 (= tp!1035805 b_and!226811)))

(declare-fun b_free!87003 () Bool)

(declare-fun b_next!87707 () Bool)

(assert (=> b!3307616 (= b_free!87003 (not b_next!87707))))

(declare-fun tp!1035808 () Bool)

(declare-fun b_and!226813 () Bool)

(assert (=> b!3307616 (= tp!1035808 b_and!226813)))

(declare-fun b!3307602 () Bool)

(declare-fun b_free!87005 () Bool)

(declare-fun b_next!87709 () Bool)

(assert (=> b!3307602 (= b_free!87005 (not b_next!87709))))

(declare-fun tp!1035802 () Bool)

(declare-fun b_and!226815 () Bool)

(assert (=> b!3307602 (= tp!1035802 b_and!226815)))

(declare-fun b_free!87007 () Bool)

(declare-fun b_next!87711 () Bool)

(assert (=> b!3307602 (= b_free!87007 (not b_next!87711))))

(declare-fun tp!1035809 () Bool)

(declare-fun b_and!226817 () Bool)

(assert (=> b!3307602 (= tp!1035809 b_and!226817)))

(declare-fun e!2057082 () Bool)

(assert (=> b!3307602 (= e!2057082 (and tp!1035802 tp!1035809))))

(declare-fun e!2057080 () Bool)

(declare-fun b!3307603 () Bool)

(declare-fun e!2057086 () Bool)

(declare-datatypes ((C!20306 0))(
  ( (C!20307 (val!12201 Int)) )
))
(declare-datatypes ((Regex!10060 0))(
  ( (ElementMatch!10060 (c!561064 C!20306)) (Concat!15591 (regOne!20632 Regex!10060) (regTwo!20632 Regex!10060)) (EmptyExpr!10060) (Star!10060 (reg!10389 Regex!10060)) (EmptyLang!10060) (Union!10060 (regOne!20633 Regex!10060) (regTwo!20633 Regex!10060)) )
))
(declare-datatypes ((List!36649 0))(
  ( (Nil!36525) (Cons!36525 (h!41945 (_ BitVec 16)) (t!253870 List!36649)) )
))
(declare-datatypes ((TokenValue!5531 0))(
  ( (FloatLiteralValue!11062 (text!39162 List!36649)) (TokenValueExt!5530 (__x!23279 Int)) (Broken!27655 (value!171514 List!36649)) (Object!5654) (End!5531) (Def!5531) (Underscore!5531) (Match!5531) (Else!5531) (Error!5531) (Case!5531) (If!5531) (Extends!5531) (Abstract!5531) (Class!5531) (Val!5531) (DelimiterValue!11062 (del!5591 List!36649)) (KeywordValue!5537 (value!171515 List!36649)) (CommentValue!11062 (value!171516 List!36649)) (WhitespaceValue!11062 (value!171517 List!36649)) (IndentationValue!5531 (value!171518 List!36649)) (String!40990) (Int32!5531) (Broken!27656 (value!171519 List!36649)) (Boolean!5532) (Unit!51452) (OperatorValue!5534 (op!5591 List!36649)) (IdentifierValue!11062 (value!171520 List!36649)) (IdentifierValue!11063 (value!171521 List!36649)) (WhitespaceValue!11063 (value!171522 List!36649)) (True!11062) (False!11062) (Broken!27657 (value!171523 List!36649)) (Broken!27658 (value!171524 List!36649)) (True!11063) (RightBrace!5531) (RightBracket!5531) (Colon!5531) (Null!5531) (Comma!5531) (LeftBracket!5531) (False!11063) (LeftBrace!5531) (ImaginaryLiteralValue!5531 (text!39163 List!36649)) (StringLiteralValue!16593 (value!171525 List!36649)) (EOFValue!5531 (value!171526 List!36649)) (IdentValue!5531 (value!171527 List!36649)) (DelimiterValue!11063 (value!171528 List!36649)) (DedentValue!5531 (value!171529 List!36649)) (NewLineValue!5531 (value!171530 List!36649)) (IntegerValue!16593 (value!171531 (_ BitVec 32)) (text!39164 List!36649)) (IntegerValue!16594 (value!171532 Int) (text!39165 List!36649)) (Times!5531) (Or!5531) (Equal!5531) (Minus!5531) (Broken!27659 (value!171533 List!36649)) (And!5531) (Div!5531) (LessEqual!5531) (Mod!5531) (Concat!15592) (Not!5531) (Plus!5531) (SpaceValue!5531 (value!171534 List!36649)) (IntegerValue!16595 (value!171535 Int) (text!39166 List!36649)) (StringLiteralValue!16594 (text!39167 List!36649)) (FloatLiteralValue!11063 (text!39168 List!36649)) (BytesLiteralValue!5531 (value!171536 List!36649)) (CommentValue!11063 (value!171537 List!36649)) (StringLiteralValue!16595 (value!171538 List!36649)) (ErrorTokenValue!5531 (msg!5592 List!36649)) )
))
(declare-datatypes ((List!36650 0))(
  ( (Nil!36526) (Cons!36526 (h!41946 C!20306) (t!253871 List!36650)) )
))
(declare-datatypes ((IArray!21959 0))(
  ( (IArray!21960 (innerList!11037 List!36650)) )
))
(declare-datatypes ((Conc!10977 0))(
  ( (Node!10977 (left!28454 Conc!10977) (right!28784 Conc!10977) (csize!22184 Int) (cheight!11188 Int)) (Leaf!17239 (xs!14115 IArray!21959) (csize!22185 Int)) (Empty!10977) )
))
(declare-datatypes ((BalanceConc!21568 0))(
  ( (BalanceConc!21569 (c!561065 Conc!10977)) )
))
(declare-datatypes ((String!40991 0))(
  ( (String!40992 (value!171539 String)) )
))
(declare-datatypes ((TokenValueInjection!10490 0))(
  ( (TokenValueInjection!10491 (toValue!7445 Int) (toChars!7304 Int)) )
))
(declare-datatypes ((Rule!10402 0))(
  ( (Rule!10403 (regex!5301 Regex!10060) (tag!5847 String!40991) (isSeparator!5301 Bool) (transformation!5301 TokenValueInjection!10490)) )
))
(declare-datatypes ((Token!9968 0))(
  ( (Token!9969 (value!171540 TokenValue!5531) (rule!7805 Rule!10402) (size!27595 Int) (originalCharacters!6015 List!36650)) )
))
(declare-fun separatorToken!241 () Token!9968)

(declare-fun tp!1035804 () Bool)

(declare-fun inv!49500 (String!40991) Bool)

(declare-fun inv!49503 (TokenValueInjection!10490) Bool)

(assert (=> b!3307603 (= e!2057086 (and tp!1035804 (inv!49500 (tag!5847 (rule!7805 separatorToken!241))) (inv!49503 (transformation!5301 (rule!7805 separatorToken!241))) e!2057080))))

(declare-fun b!3307604 () Bool)

(declare-fun tp!1035812 () Bool)

(declare-datatypes ((List!36651 0))(
  ( (Nil!36527) (Cons!36527 (h!41947 Token!9968) (t!253872 List!36651)) )
))
(declare-fun tokens!494 () List!36651)

(declare-fun e!2057088 () Bool)

(assert (=> b!3307604 (= e!2057088 (and tp!1035812 (inv!49500 (tag!5847 (rule!7805 (h!41947 tokens!494)))) (inv!49503 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) e!2057082))))

(assert (=> b!3307605 (= e!2057080 (and tp!1035803 tp!1035810))))

(declare-fun b!3307606 () Bool)

(declare-fun res!1341443 () Bool)

(declare-fun e!2057084 () Bool)

(assert (=> b!3307606 (=> (not res!1341443) (not e!2057084))))

(declare-datatypes ((LexerInterface!4890 0))(
  ( (LexerInterfaceExt!4887 (__x!23280 Int)) (Lexer!4888) )
))
(declare-fun thiss!18206 () LexerInterface!4890)

(declare-datatypes ((List!36652 0))(
  ( (Nil!36528) (Cons!36528 (h!41948 Rule!10402) (t!253873 List!36652)) )
))
(declare-fun rules!2135 () List!36652)

(declare-fun rulesInvariant!4287 (LexerInterface!4890 List!36652) Bool)

(assert (=> b!3307606 (= res!1341443 (rulesInvariant!4287 thiss!18206 rules!2135))))

(declare-fun b!3307607 () Bool)

(declare-fun res!1341434 () Bool)

(assert (=> b!3307607 (=> (not res!1341434) (not e!2057084))))

(declare-datatypes ((IArray!21961 0))(
  ( (IArray!21962 (innerList!11038 List!36651)) )
))
(declare-datatypes ((Conc!10978 0))(
  ( (Node!10978 (left!28455 Conc!10978) (right!28785 Conc!10978) (csize!22186 Int) (cheight!11189 Int)) (Leaf!17240 (xs!14116 IArray!21961) (csize!22187 Int)) (Empty!10978) )
))
(declare-datatypes ((BalanceConc!21570 0))(
  ( (BalanceConc!21571 (c!561066 Conc!10978)) )
))
(declare-fun rulesProduceEachTokenIndividually!1341 (LexerInterface!4890 List!36652 BalanceConc!21570) Bool)

(declare-fun seqFromList!3657 (List!36651) BalanceConc!21570)

(assert (=> b!3307607 (= res!1341434 (rulesProduceEachTokenIndividually!1341 thiss!18206 rules!2135 (seqFromList!3657 tokens!494)))))

(declare-fun e!2057081 () Bool)

(declare-fun tp!1035811 () Bool)

(declare-fun b!3307608 () Bool)

(declare-fun inv!21 (TokenValue!5531) Bool)

(assert (=> b!3307608 (= e!2057081 (and (inv!21 (value!171540 (h!41947 tokens!494))) e!2057088 tp!1035811))))

(declare-fun b!3307609 () Bool)

(declare-fun res!1341441 () Bool)

(assert (=> b!3307609 (=> (not res!1341441) (not e!2057084))))

(assert (=> b!3307609 (= res!1341441 (and (not (is-Nil!36527 tokens!494)) (not (is-Nil!36527 (t!253872 tokens!494)))))))

(declare-fun b!3307610 () Bool)

(declare-fun res!1341444 () Bool)

(assert (=> b!3307610 (=> (not res!1341444) (not e!2057084))))

(declare-fun rulesProduceIndividualToken!2382 (LexerInterface!4890 List!36652 Token!9968) Bool)

(assert (=> b!3307610 (= res!1341444 (rulesProduceIndividualToken!2382 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3307611 () Bool)

(declare-fun e!2057075 () Bool)

(assert (=> b!3307611 (= e!2057075 (or (isSeparator!5301 (rule!7805 (h!41947 tokens!494))) (not (isSeparator!5301 (rule!7805 (h!41947 (t!253872 tokens!494)))))))))

(declare-datatypes ((Unit!51453 0))(
  ( (Unit!51454) )
))
(declare-fun lt!1121196 () Unit!51453)

(declare-fun lambda!119114 () Int)

(declare-fun forallContained!1252 (List!36651 Int Token!9968) Unit!51453)

(assert (=> b!3307611 (= lt!1121196 (forallContained!1252 tokens!494 lambda!119114 (h!41947 (t!253872 tokens!494))))))

(declare-fun lt!1121199 () Unit!51453)

(assert (=> b!3307611 (= lt!1121199 (forallContained!1252 tokens!494 lambda!119114 (h!41947 tokens!494)))))

(declare-fun res!1341440 () Bool)

(assert (=> start!308312 (=> (not res!1341440) (not e!2057084))))

(assert (=> start!308312 (= res!1341440 (is-Lexer!4888 thiss!18206))))

(assert (=> start!308312 e!2057084))

(assert (=> start!308312 true))

(declare-fun e!2057089 () Bool)

(assert (=> start!308312 e!2057089))

(declare-fun e!2057090 () Bool)

(assert (=> start!308312 e!2057090))

(declare-fun e!2057078 () Bool)

(declare-fun inv!49504 (Token!9968) Bool)

(assert (=> start!308312 (and (inv!49504 separatorToken!241) e!2057078)))

(declare-fun b!3307601 () Bool)

(declare-fun e!2057083 () Bool)

(declare-fun tp!1035813 () Bool)

(assert (=> b!3307601 (= e!2057089 (and e!2057083 tp!1035813))))

(declare-fun b!3307612 () Bool)

(declare-fun res!1341438 () Bool)

(assert (=> b!3307612 (=> res!1341438 e!2057075)))

(declare-fun lt!1121200 () List!36650)

(declare-fun isEmpty!20668 (BalanceConc!21570) Bool)

(declare-datatypes ((tuple2!36016 0))(
  ( (tuple2!36017 (_1!21142 BalanceConc!21570) (_2!21142 BalanceConc!21568)) )
))
(declare-fun lex!2216 (LexerInterface!4890 List!36652 BalanceConc!21568) tuple2!36016)

(declare-fun seqFromList!3658 (List!36650) BalanceConc!21568)

(assert (=> b!3307612 (= res!1341438 (isEmpty!20668 (_1!21142 (lex!2216 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200)))))))

(declare-fun b!3307613 () Bool)

(declare-fun e!2057085 () Bool)

(assert (=> b!3307613 (= e!2057084 (not e!2057085))))

(declare-fun res!1341435 () Bool)

(assert (=> b!3307613 (=> res!1341435 e!2057085)))

(declare-fun lt!1121197 () List!36650)

(declare-fun lt!1121201 () List!36650)

(assert (=> b!3307613 (= res!1341435 (not (= lt!1121197 lt!1121201)))))

(declare-fun printList!1440 (LexerInterface!4890 List!36651) List!36650)

(assert (=> b!3307613 (= lt!1121201 (printList!1440 thiss!18206 (Cons!36527 (h!41947 tokens!494) Nil!36527)))))

(declare-fun lt!1121195 () BalanceConc!21568)

(declare-fun list!13108 (BalanceConc!21568) List!36650)

(assert (=> b!3307613 (= lt!1121197 (list!13108 lt!1121195))))

(declare-fun lt!1121198 () BalanceConc!21570)

(declare-fun printTailRec!1387 (LexerInterface!4890 BalanceConc!21570 Int BalanceConc!21568) BalanceConc!21568)

(assert (=> b!3307613 (= lt!1121195 (printTailRec!1387 thiss!18206 lt!1121198 0 (BalanceConc!21569 Empty!10977)))))

(declare-fun print!1955 (LexerInterface!4890 BalanceConc!21570) BalanceConc!21568)

(assert (=> b!3307613 (= lt!1121195 (print!1955 thiss!18206 lt!1121198))))

(declare-fun singletonSeq!2397 (Token!9968) BalanceConc!21570)

(assert (=> b!3307613 (= lt!1121198 (singletonSeq!2397 (h!41947 tokens!494)))))

(declare-fun b!3307614 () Bool)

(assert (=> b!3307614 (= e!2057085 e!2057075)))

(declare-fun res!1341439 () Bool)

(assert (=> b!3307614 (=> res!1341439 e!2057075)))

(assert (=> b!3307614 (= res!1341439 (or (not (= lt!1121201 lt!1121200)) (not (= lt!1121197 lt!1121200))))))

(declare-fun charsOf!3317 (Token!9968) BalanceConc!21568)

(assert (=> b!3307614 (= lt!1121200 (list!13108 (charsOf!3317 (h!41947 tokens!494))))))

(declare-fun b!3307615 () Bool)

(declare-fun res!1341445 () Bool)

(assert (=> b!3307615 (=> (not res!1341445) (not e!2057084))))

(declare-fun sepAndNonSepRulesDisjointChars!1495 (List!36652 List!36652) Bool)

(assert (=> b!3307615 (= res!1341445 (sepAndNonSepRulesDisjointChars!1495 rules!2135 rules!2135))))

(declare-fun e!2057077 () Bool)

(assert (=> b!3307616 (= e!2057077 (and tp!1035805 tp!1035808))))

(declare-fun b!3307617 () Bool)

(declare-fun res!1341433 () Bool)

(assert (=> b!3307617 (=> (not res!1341433) (not e!2057084))))

(declare-fun forall!7581 (List!36651 Int) Bool)

(assert (=> b!3307617 (= res!1341433 (forall!7581 tokens!494 lambda!119114))))

(declare-fun b!3307618 () Bool)

(declare-fun res!1341437 () Bool)

(assert (=> b!3307618 (=> res!1341437 e!2057075)))

(assert (=> b!3307618 (= res!1341437 (not (rulesProduceIndividualToken!2382 thiss!18206 rules!2135 (h!41947 tokens!494))))))

(declare-fun b!3307619 () Bool)

(declare-fun tp!1035801 () Bool)

(assert (=> b!3307619 (= e!2057090 (and (inv!49504 (h!41947 tokens!494)) e!2057081 tp!1035801))))

(declare-fun b!3307620 () Bool)

(declare-fun res!1341436 () Bool)

(assert (=> b!3307620 (=> (not res!1341436) (not e!2057084))))

(declare-fun isEmpty!20669 (List!36652) Bool)

(assert (=> b!3307620 (= res!1341436 (not (isEmpty!20669 rules!2135)))))

(declare-fun b!3307621 () Bool)

(declare-fun res!1341442 () Bool)

(assert (=> b!3307621 (=> (not res!1341442) (not e!2057084))))

(assert (=> b!3307621 (= res!1341442 (isSeparator!5301 (rule!7805 separatorToken!241)))))

(declare-fun b!3307622 () Bool)

(declare-fun tp!1035806 () Bool)

(assert (=> b!3307622 (= e!2057078 (and (inv!21 (value!171540 separatorToken!241)) e!2057086 tp!1035806))))

(declare-fun b!3307623 () Bool)

(declare-fun tp!1035807 () Bool)

(assert (=> b!3307623 (= e!2057083 (and tp!1035807 (inv!49500 (tag!5847 (h!41948 rules!2135))) (inv!49503 (transformation!5301 (h!41948 rules!2135))) e!2057077))))

(assert (= (and start!308312 res!1341440) b!3307620))

(assert (= (and b!3307620 res!1341436) b!3307606))

(assert (= (and b!3307606 res!1341443) b!3307607))

(assert (= (and b!3307607 res!1341434) b!3307610))

(assert (= (and b!3307610 res!1341444) b!3307621))

(assert (= (and b!3307621 res!1341442) b!3307617))

(assert (= (and b!3307617 res!1341433) b!3307615))

(assert (= (and b!3307615 res!1341445) b!3307609))

(assert (= (and b!3307609 res!1341441) b!3307613))

(assert (= (and b!3307613 (not res!1341435)) b!3307614))

(assert (= (and b!3307614 (not res!1341439)) b!3307618))

(assert (= (and b!3307618 (not res!1341437)) b!3307612))

(assert (= (and b!3307612 (not res!1341438)) b!3307611))

(assert (= b!3307623 b!3307616))

(assert (= b!3307601 b!3307623))

(assert (= (and start!308312 (is-Cons!36528 rules!2135)) b!3307601))

(assert (= b!3307604 b!3307602))

(assert (= b!3307608 b!3307604))

(assert (= b!3307619 b!3307608))

(assert (= (and start!308312 (is-Cons!36527 tokens!494)) b!3307619))

(assert (= b!3307603 b!3307605))

(assert (= b!3307622 b!3307603))

(assert (= start!308312 b!3307622))

(declare-fun m!3634411 () Bool)

(assert (=> b!3307604 m!3634411))

(declare-fun m!3634413 () Bool)

(assert (=> b!3307604 m!3634413))

(declare-fun m!3634415 () Bool)

(assert (=> b!3307617 m!3634415))

(declare-fun m!3634417 () Bool)

(assert (=> b!3307603 m!3634417))

(declare-fun m!3634419 () Bool)

(assert (=> b!3307603 m!3634419))

(declare-fun m!3634421 () Bool)

(assert (=> b!3307618 m!3634421))

(declare-fun m!3634423 () Bool)

(assert (=> b!3307615 m!3634423))

(declare-fun m!3634425 () Bool)

(assert (=> b!3307619 m!3634425))

(declare-fun m!3634427 () Bool)

(assert (=> b!3307622 m!3634427))

(declare-fun m!3634429 () Bool)

(assert (=> b!3307614 m!3634429))

(assert (=> b!3307614 m!3634429))

(declare-fun m!3634431 () Bool)

(assert (=> b!3307614 m!3634431))

(declare-fun m!3634433 () Bool)

(assert (=> b!3307623 m!3634433))

(declare-fun m!3634435 () Bool)

(assert (=> b!3307623 m!3634435))

(declare-fun m!3634437 () Bool)

(assert (=> b!3307620 m!3634437))

(declare-fun m!3634439 () Bool)

(assert (=> b!3307613 m!3634439))

(declare-fun m!3634441 () Bool)

(assert (=> b!3307613 m!3634441))

(declare-fun m!3634443 () Bool)

(assert (=> b!3307613 m!3634443))

(declare-fun m!3634445 () Bool)

(assert (=> b!3307613 m!3634445))

(declare-fun m!3634447 () Bool)

(assert (=> b!3307613 m!3634447))

(declare-fun m!3634449 () Bool)

(assert (=> b!3307611 m!3634449))

(declare-fun m!3634451 () Bool)

(assert (=> b!3307611 m!3634451))

(declare-fun m!3634453 () Bool)

(assert (=> b!3307607 m!3634453))

(assert (=> b!3307607 m!3634453))

(declare-fun m!3634455 () Bool)

(assert (=> b!3307607 m!3634455))

(declare-fun m!3634457 () Bool)

(assert (=> start!308312 m!3634457))

(declare-fun m!3634459 () Bool)

(assert (=> b!3307608 m!3634459))

(declare-fun m!3634461 () Bool)

(assert (=> b!3307610 m!3634461))

(declare-fun m!3634463 () Bool)

(assert (=> b!3307606 m!3634463))

(declare-fun m!3634465 () Bool)

(assert (=> b!3307612 m!3634465))

(assert (=> b!3307612 m!3634465))

(declare-fun m!3634467 () Bool)

(assert (=> b!3307612 m!3634467))

(declare-fun m!3634469 () Bool)

(assert (=> b!3307612 m!3634469))

(push 1)

(assert b_and!226809)

(assert (not b!3307610))

(assert (not b!3307608))

(assert (not b!3307603))

(assert (not b_next!87701))

(assert (not b!3307601))

(assert (not b_next!87707))

(assert b_and!226815)

(assert (not b!3307617))

(assert (not b!3307618))

(assert (not b!3307615))

(assert (not b_next!87705))

(assert (not b_next!87711))

(assert b_and!226811)

(assert (not b!3307606))

(assert (not b!3307607))

(assert b_and!226807)

(assert (not b!3307623))

(assert (not b!3307622))

(assert (not b!3307611))

(assert (not b!3307619))

(assert b_and!226817)

(assert (not b_next!87703))

(assert (not b!3307613))

(assert (not b!3307612))

(assert (not b!3307620))

(assert (not b_next!87709))

(assert (not b!3307604))

(assert (not start!308312))

(assert (not b!3307614))

(assert b_and!226813)

(check-sat)

(pop 1)

(push 1)

(assert b_and!226809)

(assert (not b_next!87701))

(assert b_and!226807)

(assert (not b_next!87707))

(assert (not b_next!87709))

(assert b_and!226815)

(assert (not b_next!87705))

(assert b_and!226813)

(assert (not b_next!87711))

(assert b_and!226811)

(assert b_and!226817)

(assert (not b_next!87703))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!926608 () Bool)

(declare-fun res!1341497 () Bool)

(declare-fun e!2057149 () Bool)

(assert (=> d!926608 (=> res!1341497 e!2057149)))

(assert (=> d!926608 (= res!1341497 (not (is-Cons!36528 rules!2135)))))

(assert (=> d!926608 (= (sepAndNonSepRulesDisjointChars!1495 rules!2135 rules!2135) e!2057149)))

(declare-fun b!3307697 () Bool)

(declare-fun e!2057150 () Bool)

(assert (=> b!3307697 (= e!2057149 e!2057150)))

(declare-fun res!1341498 () Bool)

(assert (=> b!3307697 (=> (not res!1341498) (not e!2057150))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!631 (Rule!10402 List!36652) Bool)

(assert (=> b!3307697 (= res!1341498 (ruleDisjointCharsFromAllFromOtherType!631 (h!41948 rules!2135) rules!2135))))

(declare-fun b!3307698 () Bool)

(assert (=> b!3307698 (= e!2057150 (sepAndNonSepRulesDisjointChars!1495 rules!2135 (t!253873 rules!2135)))))

(assert (= (and d!926608 (not res!1341497)) b!3307697))

(assert (= (and b!3307697 res!1341498) b!3307698))

(declare-fun m!3634531 () Bool)

(assert (=> b!3307697 m!3634531))

(declare-fun m!3634533 () Bool)

(assert (=> b!3307698 m!3634533))

(assert (=> b!3307615 d!926608))

(declare-fun d!926610 () Bool)

(declare-fun res!1341505 () Bool)

(declare-fun e!2057155 () Bool)

(assert (=> d!926610 (=> res!1341505 e!2057155)))

(assert (=> d!926610 (= res!1341505 (is-Nil!36527 tokens!494))))

(assert (=> d!926610 (= (forall!7581 tokens!494 lambda!119114) e!2057155)))

(declare-fun b!3307703 () Bool)

(declare-fun e!2057156 () Bool)

(assert (=> b!3307703 (= e!2057155 e!2057156)))

(declare-fun res!1341506 () Bool)

(assert (=> b!3307703 (=> (not res!1341506) (not e!2057156))))

(declare-fun dynLambda!14988 (Int Token!9968) Bool)

(assert (=> b!3307703 (= res!1341506 (dynLambda!14988 lambda!119114 (h!41947 tokens!494)))))

(declare-fun b!3307704 () Bool)

(assert (=> b!3307704 (= e!2057156 (forall!7581 (t!253872 tokens!494) lambda!119114))))

(assert (= (and d!926610 (not res!1341505)) b!3307703))

(assert (= (and b!3307703 res!1341506) b!3307704))

(declare-fun b_lambda!92471 () Bool)

(assert (=> (not b_lambda!92471) (not b!3307703)))

(declare-fun m!3634535 () Bool)

(assert (=> b!3307703 m!3634535))

(declare-fun m!3634537 () Bool)

(assert (=> b!3307704 m!3634537))

(assert (=> b!3307617 d!926610))

(declare-fun d!926612 () Bool)

(declare-fun res!1341510 () Bool)

(declare-fun e!2057159 () Bool)

(assert (=> d!926612 (=> (not res!1341510) (not e!2057159))))

(declare-fun rulesValid!1955 (LexerInterface!4890 List!36652) Bool)

(assert (=> d!926612 (= res!1341510 (rulesValid!1955 thiss!18206 rules!2135))))

(assert (=> d!926612 (= (rulesInvariant!4287 thiss!18206 rules!2135) e!2057159)))

(declare-fun b!3307707 () Bool)

(declare-datatypes ((List!36657 0))(
  ( (Nil!36533) (Cons!36533 (h!41953 String!40991) (t!253923 List!36657)) )
))
(declare-fun noDuplicateTag!1951 (LexerInterface!4890 List!36652 List!36657) Bool)

(assert (=> b!3307707 (= e!2057159 (noDuplicateTag!1951 thiss!18206 rules!2135 Nil!36533))))

(assert (= (and d!926612 res!1341510) b!3307707))

(declare-fun m!3634539 () Bool)

(assert (=> d!926612 m!3634539))

(declare-fun m!3634541 () Bool)

(assert (=> b!3307707 m!3634541))

(assert (=> b!3307606 d!926612))

(declare-fun d!926614 () Bool)

(declare-fun res!1341515 () Bool)

(declare-fun e!2057162 () Bool)

(assert (=> d!926614 (=> (not res!1341515) (not e!2057162))))

(declare-fun isEmpty!20672 (List!36650) Bool)

(assert (=> d!926614 (= res!1341515 (not (isEmpty!20672 (originalCharacters!6015 separatorToken!241))))))

(assert (=> d!926614 (= (inv!49504 separatorToken!241) e!2057162)))

(declare-fun b!3307712 () Bool)

(declare-fun res!1341516 () Bool)

(assert (=> b!3307712 (=> (not res!1341516) (not e!2057162))))

(declare-fun dynLambda!14989 (Int TokenValue!5531) BalanceConc!21568)

(assert (=> b!3307712 (= res!1341516 (= (originalCharacters!6015 separatorToken!241) (list!13108 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (value!171540 separatorToken!241)))))))

(declare-fun b!3307713 () Bool)

(declare-fun size!27597 (List!36650) Int)

(assert (=> b!3307713 (= e!2057162 (= (size!27595 separatorToken!241) (size!27597 (originalCharacters!6015 separatorToken!241))))))

(assert (= (and d!926614 res!1341515) b!3307712))

(assert (= (and b!3307712 res!1341516) b!3307713))

(declare-fun b_lambda!92473 () Bool)

(assert (=> (not b_lambda!92473) (not b!3307712)))

(declare-fun t!253883 () Bool)

(declare-fun tb!171775 () Bool)

(assert (=> (and b!3307605 (= (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241)))) t!253883) tb!171775))

(declare-fun b!3307718 () Bool)

(declare-fun e!2057165 () Bool)

(declare-fun tp!1035855 () Bool)

(declare-fun inv!49507 (Conc!10977) Bool)

(assert (=> b!3307718 (= e!2057165 (and (inv!49507 (c!561065 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (value!171540 separatorToken!241)))) tp!1035855))))

(declare-fun result!214644 () Bool)

(declare-fun inv!49508 (BalanceConc!21568) Bool)

(assert (=> tb!171775 (= result!214644 (and (inv!49508 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (value!171540 separatorToken!241))) e!2057165))))

(assert (= tb!171775 b!3307718))

(declare-fun m!3634543 () Bool)

(assert (=> b!3307718 m!3634543))

(declare-fun m!3634545 () Bool)

(assert (=> tb!171775 m!3634545))

(assert (=> b!3307712 t!253883))

(declare-fun b_and!226831 () Bool)

(assert (= b_and!226809 (and (=> t!253883 result!214644) b_and!226831)))

(declare-fun tb!171777 () Bool)

(declare-fun t!253885 () Bool)

(assert (=> (and b!3307616 (= (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241)))) t!253885) tb!171777))

(declare-fun result!214648 () Bool)

(assert (= result!214648 result!214644))

(assert (=> b!3307712 t!253885))

(declare-fun b_and!226833 () Bool)

(assert (= b_and!226813 (and (=> t!253885 result!214648) b_and!226833)))

(declare-fun t!253887 () Bool)

(declare-fun tb!171779 () Bool)

(assert (=> (and b!3307602 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241)))) t!253887) tb!171779))

(declare-fun result!214650 () Bool)

(assert (= result!214650 result!214644))

(assert (=> b!3307712 t!253887))

(declare-fun b_and!226835 () Bool)

(assert (= b_and!226817 (and (=> t!253887 result!214650) b_and!226835)))

(declare-fun m!3634547 () Bool)

(assert (=> d!926614 m!3634547))

(declare-fun m!3634549 () Bool)

(assert (=> b!3307712 m!3634549))

(assert (=> b!3307712 m!3634549))

(declare-fun m!3634551 () Bool)

(assert (=> b!3307712 m!3634551))

(declare-fun m!3634553 () Bool)

(assert (=> b!3307713 m!3634553))

(assert (=> start!308312 d!926614))

(declare-fun b!3307729 () Bool)

(declare-fun e!2057174 () Bool)

(declare-fun inv!15 (TokenValue!5531) Bool)

(assert (=> b!3307729 (= e!2057174 (inv!15 (value!171540 (h!41947 tokens!494))))))

(declare-fun b!3307730 () Bool)

(declare-fun e!2057173 () Bool)

(declare-fun inv!16 (TokenValue!5531) Bool)

(assert (=> b!3307730 (= e!2057173 (inv!16 (value!171540 (h!41947 tokens!494))))))

(declare-fun b!3307731 () Bool)

(declare-fun res!1341519 () Bool)

(assert (=> b!3307731 (=> res!1341519 e!2057174)))

(assert (=> b!3307731 (= res!1341519 (not (is-IntegerValue!16595 (value!171540 (h!41947 tokens!494)))))))

(declare-fun e!2057172 () Bool)

(assert (=> b!3307731 (= e!2057172 e!2057174)))

(declare-fun b!3307732 () Bool)

(declare-fun inv!17 (TokenValue!5531) Bool)

(assert (=> b!3307732 (= e!2057172 (inv!17 (value!171540 (h!41947 tokens!494))))))

(declare-fun b!3307733 () Bool)

(assert (=> b!3307733 (= e!2057173 e!2057172)))

(declare-fun c!561076 () Bool)

(assert (=> b!3307733 (= c!561076 (is-IntegerValue!16594 (value!171540 (h!41947 tokens!494))))))

(declare-fun d!926616 () Bool)

(declare-fun c!561075 () Bool)

(assert (=> d!926616 (= c!561075 (is-IntegerValue!16593 (value!171540 (h!41947 tokens!494))))))

(assert (=> d!926616 (= (inv!21 (value!171540 (h!41947 tokens!494))) e!2057173)))

(assert (= (and d!926616 c!561075) b!3307730))

(assert (= (and d!926616 (not c!561075)) b!3307733))

(assert (= (and b!3307733 c!561076) b!3307732))

(assert (= (and b!3307733 (not c!561076)) b!3307731))

(assert (= (and b!3307731 (not res!1341519)) b!3307729))

(declare-fun m!3634555 () Bool)

(assert (=> b!3307729 m!3634555))

(declare-fun m!3634557 () Bool)

(assert (=> b!3307730 m!3634557))

(declare-fun m!3634559 () Bool)

(assert (=> b!3307732 m!3634559))

(assert (=> b!3307608 d!926616))

(declare-fun bs!549224 () Bool)

(declare-fun d!926618 () Bool)

(assert (= bs!549224 (and d!926618 b!3307617)))

(declare-fun lambda!119126 () Int)

(assert (=> bs!549224 (not (= lambda!119126 lambda!119114))))

(declare-fun b!3307794 () Bool)

(declare-fun e!2057215 () Bool)

(assert (=> b!3307794 (= e!2057215 true)))

(declare-fun b!3307793 () Bool)

(declare-fun e!2057214 () Bool)

(assert (=> b!3307793 (= e!2057214 e!2057215)))

(declare-fun b!3307792 () Bool)

(declare-fun e!2057213 () Bool)

(assert (=> b!3307792 (= e!2057213 e!2057214)))

(assert (=> d!926618 e!2057213))

(assert (= b!3307793 b!3307794))

(assert (= b!3307792 b!3307793))

(assert (= (and d!926618 (is-Cons!36528 rules!2135)) b!3307792))

(declare-fun order!18999 () Int)

(declare-fun order!19001 () Int)

(declare-fun dynLambda!14990 (Int Int) Int)

(declare-fun dynLambda!14991 (Int Int) Int)

(assert (=> b!3307794 (< (dynLambda!14990 order!18999 (toValue!7445 (transformation!5301 (h!41948 rules!2135)))) (dynLambda!14991 order!19001 lambda!119126))))

(declare-fun order!19003 () Int)

(declare-fun dynLambda!14992 (Int Int) Int)

(assert (=> b!3307794 (< (dynLambda!14992 order!19003 (toChars!7304 (transformation!5301 (h!41948 rules!2135)))) (dynLambda!14991 order!19001 lambda!119126))))

(assert (=> d!926618 true))

(declare-fun e!2057206 () Bool)

(assert (=> d!926618 e!2057206))

(declare-fun res!1341545 () Bool)

(assert (=> d!926618 (=> (not res!1341545) (not e!2057206))))

(declare-fun lt!1121258 () Bool)

(declare-fun list!13110 (BalanceConc!21570) List!36651)

(assert (=> d!926618 (= res!1341545 (= lt!1121258 (forall!7581 (list!13110 (seqFromList!3657 tokens!494)) lambda!119126)))))

(declare-fun forall!7583 (BalanceConc!21570 Int) Bool)

(assert (=> d!926618 (= lt!1121258 (forall!7583 (seqFromList!3657 tokens!494) lambda!119126))))

(assert (=> d!926618 (not (isEmpty!20669 rules!2135))))

(assert (=> d!926618 (= (rulesProduceEachTokenIndividually!1341 thiss!18206 rules!2135 (seqFromList!3657 tokens!494)) lt!1121258)))

(declare-fun b!3307783 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1767 (LexerInterface!4890 List!36652 List!36651) Bool)

(assert (=> b!3307783 (= e!2057206 (= lt!1121258 (rulesProduceEachTokenIndividuallyList!1767 thiss!18206 rules!2135 (list!13110 (seqFromList!3657 tokens!494)))))))

(assert (= (and d!926618 res!1341545) b!3307783))

(assert (=> d!926618 m!3634453))

(declare-fun m!3634667 () Bool)

(assert (=> d!926618 m!3634667))

(assert (=> d!926618 m!3634667))

(declare-fun m!3634669 () Bool)

(assert (=> d!926618 m!3634669))

(assert (=> d!926618 m!3634453))

(declare-fun m!3634671 () Bool)

(assert (=> d!926618 m!3634671))

(assert (=> d!926618 m!3634437))

(assert (=> b!3307783 m!3634453))

(assert (=> b!3307783 m!3634667))

(assert (=> b!3307783 m!3634667))

(declare-fun m!3634673 () Bool)

(assert (=> b!3307783 m!3634673))

(assert (=> b!3307607 d!926618))

(declare-fun d!926642 () Bool)

(declare-fun fromListB!1609 (List!36651) BalanceConc!21570)

(assert (=> d!926642 (= (seqFromList!3657 tokens!494) (fromListB!1609 tokens!494))))

(declare-fun bs!549225 () Bool)

(assert (= bs!549225 d!926642))

(declare-fun m!3634675 () Bool)

(assert (=> bs!549225 m!3634675))

(assert (=> b!3307607 d!926642))

(declare-fun d!926644 () Bool)

(declare-fun lt!1121265 () Bool)

(declare-fun e!2057221 () Bool)

(assert (=> d!926644 (= lt!1121265 e!2057221)))

(declare-fun res!1341554 () Bool)

(assert (=> d!926644 (=> (not res!1341554) (not e!2057221))))

(assert (=> d!926644 (= res!1341554 (= (list!13110 (_1!21142 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 (h!41947 tokens!494)))))) (list!13110 (singletonSeq!2397 (h!41947 tokens!494)))))))

(declare-fun e!2057220 () Bool)

(assert (=> d!926644 (= lt!1121265 e!2057220)))

(declare-fun res!1341552 () Bool)

(assert (=> d!926644 (=> (not res!1341552) (not e!2057220))))

(declare-fun lt!1121266 () tuple2!36016)

(declare-fun size!27598 (BalanceConc!21570) Int)

(assert (=> d!926644 (= res!1341552 (= (size!27598 (_1!21142 lt!1121266)) 1))))

(assert (=> d!926644 (= lt!1121266 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 (h!41947 tokens!494)))))))

(assert (=> d!926644 (not (isEmpty!20669 rules!2135))))

(assert (=> d!926644 (= (rulesProduceIndividualToken!2382 thiss!18206 rules!2135 (h!41947 tokens!494)) lt!1121265)))

(declare-fun b!3307803 () Bool)

(declare-fun res!1341553 () Bool)

(assert (=> b!3307803 (=> (not res!1341553) (not e!2057220))))

(declare-fun apply!8397 (BalanceConc!21570 Int) Token!9968)

(assert (=> b!3307803 (= res!1341553 (= (apply!8397 (_1!21142 lt!1121266) 0) (h!41947 tokens!494)))))

(declare-fun b!3307804 () Bool)

(declare-fun isEmpty!20673 (BalanceConc!21568) Bool)

(assert (=> b!3307804 (= e!2057220 (isEmpty!20673 (_2!21142 lt!1121266)))))

(declare-fun b!3307805 () Bool)

(assert (=> b!3307805 (= e!2057221 (isEmpty!20673 (_2!21142 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 (h!41947 tokens!494)))))))))

(assert (= (and d!926644 res!1341552) b!3307803))

(assert (= (and b!3307803 res!1341553) b!3307804))

(assert (= (and d!926644 res!1341554) b!3307805))

(assert (=> d!926644 m!3634441))

(declare-fun m!3634677 () Bool)

(assert (=> d!926644 m!3634677))

(assert (=> d!926644 m!3634437))

(declare-fun m!3634679 () Bool)

(assert (=> d!926644 m!3634679))

(assert (=> d!926644 m!3634441))

(declare-fun m!3634681 () Bool)

(assert (=> d!926644 m!3634681))

(assert (=> d!926644 m!3634681))

(declare-fun m!3634683 () Bool)

(assert (=> d!926644 m!3634683))

(assert (=> d!926644 m!3634441))

(declare-fun m!3634685 () Bool)

(assert (=> d!926644 m!3634685))

(declare-fun m!3634687 () Bool)

(assert (=> b!3307803 m!3634687))

(declare-fun m!3634689 () Bool)

(assert (=> b!3307804 m!3634689))

(assert (=> b!3307805 m!3634441))

(assert (=> b!3307805 m!3634441))

(assert (=> b!3307805 m!3634681))

(assert (=> b!3307805 m!3634681))

(assert (=> b!3307805 m!3634683))

(declare-fun m!3634691 () Bool)

(assert (=> b!3307805 m!3634691))

(assert (=> b!3307618 d!926644))

(declare-fun d!926646 () Bool)

(assert (=> d!926646 (= (isEmpty!20669 rules!2135) (is-Nil!36528 rules!2135))))

(assert (=> b!3307620 d!926646))

(declare-fun d!926648 () Bool)

(declare-fun res!1341555 () Bool)

(declare-fun e!2057222 () Bool)

(assert (=> d!926648 (=> (not res!1341555) (not e!2057222))))

(assert (=> d!926648 (= res!1341555 (not (isEmpty!20672 (originalCharacters!6015 (h!41947 tokens!494)))))))

(assert (=> d!926648 (= (inv!49504 (h!41947 tokens!494)) e!2057222)))

(declare-fun b!3307806 () Bool)

(declare-fun res!1341556 () Bool)

(assert (=> b!3307806 (=> (not res!1341556) (not e!2057222))))

(assert (=> b!3307806 (= res!1341556 (= (originalCharacters!6015 (h!41947 tokens!494)) (list!13108 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (value!171540 (h!41947 tokens!494))))))))

(declare-fun b!3307807 () Bool)

(assert (=> b!3307807 (= e!2057222 (= (size!27595 (h!41947 tokens!494)) (size!27597 (originalCharacters!6015 (h!41947 tokens!494)))))))

(assert (= (and d!926648 res!1341555) b!3307806))

(assert (= (and b!3307806 res!1341556) b!3307807))

(declare-fun b_lambda!92479 () Bool)

(assert (=> (not b_lambda!92479) (not b!3307806)))

(declare-fun t!253909 () Bool)

(declare-fun tb!171793 () Bool)

(assert (=> (and b!3307605 (= (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494))))) t!253909) tb!171793))

(declare-fun b!3307808 () Bool)

(declare-fun e!2057223 () Bool)

(declare-fun tp!1035860 () Bool)

(assert (=> b!3307808 (= e!2057223 (and (inv!49507 (c!561065 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (value!171540 (h!41947 tokens!494))))) tp!1035860))))

(declare-fun result!214666 () Bool)

(assert (=> tb!171793 (= result!214666 (and (inv!49508 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (value!171540 (h!41947 tokens!494)))) e!2057223))))

(assert (= tb!171793 b!3307808))

(declare-fun m!3634693 () Bool)

(assert (=> b!3307808 m!3634693))

(declare-fun m!3634695 () Bool)

(assert (=> tb!171793 m!3634695))

(assert (=> b!3307806 t!253909))

(declare-fun b_and!226849 () Bool)

(assert (= b_and!226831 (and (=> t!253909 result!214666) b_and!226849)))

(declare-fun tb!171795 () Bool)

(declare-fun t!253911 () Bool)

(assert (=> (and b!3307616 (= (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494))))) t!253911) tb!171795))

(declare-fun result!214668 () Bool)

(assert (= result!214668 result!214666))

(assert (=> b!3307806 t!253911))

(declare-fun b_and!226851 () Bool)

(assert (= b_and!226833 (and (=> t!253911 result!214668) b_and!226851)))

(declare-fun t!253913 () Bool)

(declare-fun tb!171797 () Bool)

(assert (=> (and b!3307602 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494))))) t!253913) tb!171797))

(declare-fun result!214670 () Bool)

(assert (= result!214670 result!214666))

(assert (=> b!3307806 t!253913))

(declare-fun b_and!226853 () Bool)

(assert (= b_and!226835 (and (=> t!253913 result!214670) b_and!226853)))

(declare-fun m!3634697 () Bool)

(assert (=> d!926648 m!3634697))

(declare-fun m!3634699 () Bool)

(assert (=> b!3307806 m!3634699))

(assert (=> b!3307806 m!3634699))

(declare-fun m!3634701 () Bool)

(assert (=> b!3307806 m!3634701))

(declare-fun m!3634703 () Bool)

(assert (=> b!3307807 m!3634703))

(assert (=> b!3307619 d!926648))

(declare-fun d!926650 () Bool)

(declare-fun lt!1121267 () Bool)

(declare-fun e!2057225 () Bool)

(assert (=> d!926650 (= lt!1121267 e!2057225)))

(declare-fun res!1341559 () Bool)

(assert (=> d!926650 (=> (not res!1341559) (not e!2057225))))

(assert (=> d!926650 (= res!1341559 (= (list!13110 (_1!21142 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 separatorToken!241))))) (list!13110 (singletonSeq!2397 separatorToken!241))))))

(declare-fun e!2057224 () Bool)

(assert (=> d!926650 (= lt!1121267 e!2057224)))

(declare-fun res!1341557 () Bool)

(assert (=> d!926650 (=> (not res!1341557) (not e!2057224))))

(declare-fun lt!1121268 () tuple2!36016)

(assert (=> d!926650 (= res!1341557 (= (size!27598 (_1!21142 lt!1121268)) 1))))

(assert (=> d!926650 (= lt!1121268 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 separatorToken!241))))))

(assert (=> d!926650 (not (isEmpty!20669 rules!2135))))

(assert (=> d!926650 (= (rulesProduceIndividualToken!2382 thiss!18206 rules!2135 separatorToken!241) lt!1121267)))

(declare-fun b!3307809 () Bool)

(declare-fun res!1341558 () Bool)

(assert (=> b!3307809 (=> (not res!1341558) (not e!2057224))))

(assert (=> b!3307809 (= res!1341558 (= (apply!8397 (_1!21142 lt!1121268) 0) separatorToken!241))))

(declare-fun b!3307810 () Bool)

(assert (=> b!3307810 (= e!2057224 (isEmpty!20673 (_2!21142 lt!1121268)))))

(declare-fun b!3307811 () Bool)

(assert (=> b!3307811 (= e!2057225 (isEmpty!20673 (_2!21142 (lex!2216 thiss!18206 rules!2135 (print!1955 thiss!18206 (singletonSeq!2397 separatorToken!241))))))))

(assert (= (and d!926650 res!1341557) b!3307809))

(assert (= (and b!3307809 res!1341558) b!3307810))

(assert (= (and d!926650 res!1341559) b!3307811))

(declare-fun m!3634705 () Bool)

(assert (=> d!926650 m!3634705))

(declare-fun m!3634707 () Bool)

(assert (=> d!926650 m!3634707))

(assert (=> d!926650 m!3634437))

(declare-fun m!3634709 () Bool)

(assert (=> d!926650 m!3634709))

(assert (=> d!926650 m!3634705))

(declare-fun m!3634711 () Bool)

(assert (=> d!926650 m!3634711))

(assert (=> d!926650 m!3634711))

(declare-fun m!3634713 () Bool)

(assert (=> d!926650 m!3634713))

(assert (=> d!926650 m!3634705))

(declare-fun m!3634715 () Bool)

(assert (=> d!926650 m!3634715))

(declare-fun m!3634717 () Bool)

(assert (=> b!3307809 m!3634717))

(declare-fun m!3634719 () Bool)

(assert (=> b!3307810 m!3634719))

(assert (=> b!3307811 m!3634705))

(assert (=> b!3307811 m!3634705))

(assert (=> b!3307811 m!3634711))

(assert (=> b!3307811 m!3634711))

(assert (=> b!3307811 m!3634713))

(declare-fun m!3634721 () Bool)

(assert (=> b!3307811 m!3634721))

(assert (=> b!3307610 d!926650))

(declare-fun d!926652 () Bool)

(declare-fun lt!1121271 () Bool)

(declare-fun isEmpty!20674 (List!36651) Bool)

(assert (=> d!926652 (= lt!1121271 (isEmpty!20674 (list!13110 (_1!21142 (lex!2216 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200))))))))

(declare-fun isEmpty!20675 (Conc!10978) Bool)

(assert (=> d!926652 (= lt!1121271 (isEmpty!20675 (c!561066 (_1!21142 (lex!2216 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200))))))))

(assert (=> d!926652 (= (isEmpty!20668 (_1!21142 (lex!2216 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200)))) lt!1121271)))

(declare-fun bs!549226 () Bool)

(assert (= bs!549226 d!926652))

(declare-fun m!3634723 () Bool)

(assert (=> bs!549226 m!3634723))

(assert (=> bs!549226 m!3634723))

(declare-fun m!3634725 () Bool)

(assert (=> bs!549226 m!3634725))

(declare-fun m!3634727 () Bool)

(assert (=> bs!549226 m!3634727))

(assert (=> b!3307612 d!926652))

(declare-fun b!3307822 () Bool)

(declare-fun e!2057232 () Bool)

(declare-fun e!2057234 () Bool)

(assert (=> b!3307822 (= e!2057232 e!2057234)))

(declare-fun res!1341567 () Bool)

(declare-fun lt!1121274 () tuple2!36016)

(declare-fun size!27599 (BalanceConc!21568) Int)

(assert (=> b!3307822 (= res!1341567 (< (size!27599 (_2!21142 lt!1121274)) (size!27599 (seqFromList!3658 lt!1121200))))))

(assert (=> b!3307822 (=> (not res!1341567) (not e!2057234))))

(declare-fun e!2057233 () Bool)

(declare-fun b!3307823 () Bool)

(declare-datatypes ((tuple2!36020 0))(
  ( (tuple2!36021 (_1!21144 List!36651) (_2!21144 List!36650)) )
))
(declare-fun lexList!1359 (LexerInterface!4890 List!36652 List!36650) tuple2!36020)

(assert (=> b!3307823 (= e!2057233 (= (list!13108 (_2!21142 lt!1121274)) (_2!21144 (lexList!1359 thiss!18206 rules!2135 (list!13108 (seqFromList!3658 lt!1121200))))))))

(declare-fun b!3307824 () Bool)

(assert (=> b!3307824 (= e!2057234 (not (isEmpty!20668 (_1!21142 lt!1121274))))))

(declare-fun b!3307825 () Bool)

(assert (=> b!3307825 (= e!2057232 (= (_2!21142 lt!1121274) (seqFromList!3658 lt!1121200)))))

(declare-fun b!3307826 () Bool)

(declare-fun res!1341566 () Bool)

(assert (=> b!3307826 (=> (not res!1341566) (not e!2057233))))

(assert (=> b!3307826 (= res!1341566 (= (list!13110 (_1!21142 lt!1121274)) (_1!21144 (lexList!1359 thiss!18206 rules!2135 (list!13108 (seqFromList!3658 lt!1121200))))))))

(declare-fun d!926654 () Bool)

(assert (=> d!926654 e!2057233))

(declare-fun res!1341568 () Bool)

(assert (=> d!926654 (=> (not res!1341568) (not e!2057233))))

(assert (=> d!926654 (= res!1341568 e!2057232)))

(declare-fun c!561088 () Bool)

(assert (=> d!926654 (= c!561088 (> (size!27598 (_1!21142 lt!1121274)) 0))))

(declare-fun lexTailRecV2!969 (LexerInterface!4890 List!36652 BalanceConc!21568 BalanceConc!21568 BalanceConc!21568 BalanceConc!21570) tuple2!36016)

(assert (=> d!926654 (= lt!1121274 (lexTailRecV2!969 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200) (BalanceConc!21569 Empty!10977) (seqFromList!3658 lt!1121200) (BalanceConc!21571 Empty!10978)))))

(assert (=> d!926654 (= (lex!2216 thiss!18206 rules!2135 (seqFromList!3658 lt!1121200)) lt!1121274)))

(assert (= (and d!926654 c!561088) b!3307822))

(assert (= (and d!926654 (not c!561088)) b!3307825))

(assert (= (and b!3307822 res!1341567) b!3307824))

(assert (= (and d!926654 res!1341568) b!3307826))

(assert (= (and b!3307826 res!1341566) b!3307823))

(declare-fun m!3634729 () Bool)

(assert (=> d!926654 m!3634729))

(assert (=> d!926654 m!3634465))

(assert (=> d!926654 m!3634465))

(declare-fun m!3634731 () Bool)

(assert (=> d!926654 m!3634731))

(declare-fun m!3634733 () Bool)

(assert (=> b!3307824 m!3634733))

(declare-fun m!3634735 () Bool)

(assert (=> b!3307826 m!3634735))

(assert (=> b!3307826 m!3634465))

(declare-fun m!3634737 () Bool)

(assert (=> b!3307826 m!3634737))

(assert (=> b!3307826 m!3634737))

(declare-fun m!3634739 () Bool)

(assert (=> b!3307826 m!3634739))

(declare-fun m!3634741 () Bool)

(assert (=> b!3307823 m!3634741))

(assert (=> b!3307823 m!3634465))

(assert (=> b!3307823 m!3634737))

(assert (=> b!3307823 m!3634737))

(assert (=> b!3307823 m!3634739))

(declare-fun m!3634743 () Bool)

(assert (=> b!3307822 m!3634743))

(assert (=> b!3307822 m!3634465))

(declare-fun m!3634745 () Bool)

(assert (=> b!3307822 m!3634745))

(assert (=> b!3307612 d!926654))

(declare-fun d!926656 () Bool)

(declare-fun fromListB!1610 (List!36650) BalanceConc!21568)

(assert (=> d!926656 (= (seqFromList!3658 lt!1121200) (fromListB!1610 lt!1121200))))

(declare-fun bs!549227 () Bool)

(assert (= bs!549227 d!926656))

(declare-fun m!3634747 () Bool)

(assert (=> bs!549227 m!3634747))

(assert (=> b!3307612 d!926656))

(declare-fun d!926658 () Bool)

(assert (=> d!926658 (dynLambda!14988 lambda!119114 (h!41947 (t!253872 tokens!494)))))

(declare-fun lt!1121277 () Unit!51453)

(declare-fun choose!19150 (List!36651 Int Token!9968) Unit!51453)

(assert (=> d!926658 (= lt!1121277 (choose!19150 tokens!494 lambda!119114 (h!41947 (t!253872 tokens!494))))))

(declare-fun e!2057237 () Bool)

(assert (=> d!926658 e!2057237))

(declare-fun res!1341571 () Bool)

(assert (=> d!926658 (=> (not res!1341571) (not e!2057237))))

(assert (=> d!926658 (= res!1341571 (forall!7581 tokens!494 lambda!119114))))

(assert (=> d!926658 (= (forallContained!1252 tokens!494 lambda!119114 (h!41947 (t!253872 tokens!494))) lt!1121277)))

(declare-fun b!3307829 () Bool)

(declare-fun contains!6603 (List!36651 Token!9968) Bool)

(assert (=> b!3307829 (= e!2057237 (contains!6603 tokens!494 (h!41947 (t!253872 tokens!494))))))

(assert (= (and d!926658 res!1341571) b!3307829))

(declare-fun b_lambda!92481 () Bool)

(assert (=> (not b_lambda!92481) (not d!926658)))

(declare-fun m!3634749 () Bool)

(assert (=> d!926658 m!3634749))

(declare-fun m!3634751 () Bool)

(assert (=> d!926658 m!3634751))

(assert (=> d!926658 m!3634415))

(declare-fun m!3634753 () Bool)

(assert (=> b!3307829 m!3634753))

(assert (=> b!3307611 d!926658))

(declare-fun d!926660 () Bool)

(assert (=> d!926660 (dynLambda!14988 lambda!119114 (h!41947 tokens!494))))

(declare-fun lt!1121278 () Unit!51453)

(assert (=> d!926660 (= lt!1121278 (choose!19150 tokens!494 lambda!119114 (h!41947 tokens!494)))))

(declare-fun e!2057238 () Bool)

(assert (=> d!926660 e!2057238))

(declare-fun res!1341572 () Bool)

(assert (=> d!926660 (=> (not res!1341572) (not e!2057238))))

(assert (=> d!926660 (= res!1341572 (forall!7581 tokens!494 lambda!119114))))

(assert (=> d!926660 (= (forallContained!1252 tokens!494 lambda!119114 (h!41947 tokens!494)) lt!1121278)))

(declare-fun b!3307830 () Bool)

(assert (=> b!3307830 (= e!2057238 (contains!6603 tokens!494 (h!41947 tokens!494)))))

(assert (= (and d!926660 res!1341572) b!3307830))

(declare-fun b_lambda!92483 () Bool)

(assert (=> (not b_lambda!92483) (not d!926660)))

(assert (=> d!926660 m!3634535))

(declare-fun m!3634755 () Bool)

(assert (=> d!926660 m!3634755))

(assert (=> d!926660 m!3634415))

(declare-fun m!3634757 () Bool)

(assert (=> b!3307830 m!3634757))

(assert (=> b!3307611 d!926660))

(declare-fun b!3307831 () Bool)

(declare-fun e!2057241 () Bool)

(assert (=> b!3307831 (= e!2057241 (inv!15 (value!171540 separatorToken!241)))))

(declare-fun b!3307832 () Bool)

(declare-fun e!2057240 () Bool)

(assert (=> b!3307832 (= e!2057240 (inv!16 (value!171540 separatorToken!241)))))

(declare-fun b!3307833 () Bool)

(declare-fun res!1341573 () Bool)

(assert (=> b!3307833 (=> res!1341573 e!2057241)))

(assert (=> b!3307833 (= res!1341573 (not (is-IntegerValue!16595 (value!171540 separatorToken!241))))))

(declare-fun e!2057239 () Bool)

(assert (=> b!3307833 (= e!2057239 e!2057241)))

(declare-fun b!3307834 () Bool)

(assert (=> b!3307834 (= e!2057239 (inv!17 (value!171540 separatorToken!241)))))

(declare-fun b!3307835 () Bool)

(assert (=> b!3307835 (= e!2057240 e!2057239)))

(declare-fun c!561090 () Bool)

(assert (=> b!3307835 (= c!561090 (is-IntegerValue!16594 (value!171540 separatorToken!241)))))

(declare-fun d!926662 () Bool)

(declare-fun c!561089 () Bool)

(assert (=> d!926662 (= c!561089 (is-IntegerValue!16593 (value!171540 separatorToken!241)))))

(assert (=> d!926662 (= (inv!21 (value!171540 separatorToken!241)) e!2057240)))

(assert (= (and d!926662 c!561089) b!3307832))

(assert (= (and d!926662 (not c!561089)) b!3307835))

(assert (= (and b!3307835 c!561090) b!3307834))

(assert (= (and b!3307835 (not c!561090)) b!3307833))

(assert (= (and b!3307833 (not res!1341573)) b!3307831))

(declare-fun m!3634759 () Bool)

(assert (=> b!3307831 m!3634759))

(declare-fun m!3634761 () Bool)

(assert (=> b!3307832 m!3634761))

(declare-fun m!3634763 () Bool)

(assert (=> b!3307834 m!3634763))

(assert (=> b!3307622 d!926662))

(declare-fun d!926664 () Bool)

(declare-fun lt!1121281 () BalanceConc!21568)

(assert (=> d!926664 (= (list!13108 lt!1121281) (printList!1440 thiss!18206 (list!13110 lt!1121198)))))

(assert (=> d!926664 (= lt!1121281 (printTailRec!1387 thiss!18206 lt!1121198 0 (BalanceConc!21569 Empty!10977)))))

(assert (=> d!926664 (= (print!1955 thiss!18206 lt!1121198) lt!1121281)))

(declare-fun bs!549228 () Bool)

(assert (= bs!549228 d!926664))

(declare-fun m!3634765 () Bool)

(assert (=> bs!549228 m!3634765))

(declare-fun m!3634767 () Bool)

(assert (=> bs!549228 m!3634767))

(assert (=> bs!549228 m!3634767))

(declare-fun m!3634769 () Bool)

(assert (=> bs!549228 m!3634769))

(assert (=> bs!549228 m!3634445))

(assert (=> b!3307613 d!926664))

(declare-fun d!926666 () Bool)

(declare-fun list!13111 (Conc!10977) List!36650)

(assert (=> d!926666 (= (list!13108 lt!1121195) (list!13111 (c!561065 lt!1121195)))))

(declare-fun bs!549229 () Bool)

(assert (= bs!549229 d!926666))

(declare-fun m!3634771 () Bool)

(assert (=> bs!549229 m!3634771))

(assert (=> b!3307613 d!926666))

(declare-fun d!926668 () Bool)

(declare-fun lt!1121301 () BalanceConc!21568)

(declare-fun printListTailRec!601 (LexerInterface!4890 List!36651 List!36650) List!36650)

(declare-fun dropList!1118 (BalanceConc!21570 Int) List!36651)

(assert (=> d!926668 (= (list!13108 lt!1121301) (printListTailRec!601 thiss!18206 (dropList!1118 lt!1121198 0) (list!13108 (BalanceConc!21569 Empty!10977))))))

(declare-fun e!2057247 () BalanceConc!21568)

(assert (=> d!926668 (= lt!1121301 e!2057247)))

(declare-fun c!561093 () Bool)

(assert (=> d!926668 (= c!561093 (>= 0 (size!27598 lt!1121198)))))

(declare-fun e!2057246 () Bool)

(assert (=> d!926668 e!2057246))

(declare-fun res!1341576 () Bool)

(assert (=> d!926668 (=> (not res!1341576) (not e!2057246))))

(assert (=> d!926668 (= res!1341576 (>= 0 0))))

(assert (=> d!926668 (= (printTailRec!1387 thiss!18206 lt!1121198 0 (BalanceConc!21569 Empty!10977)) lt!1121301)))

(declare-fun b!3307842 () Bool)

(assert (=> b!3307842 (= e!2057246 (<= 0 (size!27598 lt!1121198)))))

(declare-fun b!3307843 () Bool)

(assert (=> b!3307843 (= e!2057247 (BalanceConc!21569 Empty!10977))))

(declare-fun b!3307844 () Bool)

(declare-fun ++!8849 (BalanceConc!21568 BalanceConc!21568) BalanceConc!21568)

(assert (=> b!3307844 (= e!2057247 (printTailRec!1387 thiss!18206 lt!1121198 (+ 0 1) (++!8849 (BalanceConc!21569 Empty!10977) (charsOf!3317 (apply!8397 lt!1121198 0)))))))

(declare-fun lt!1121302 () List!36651)

(assert (=> b!3307844 (= lt!1121302 (list!13110 lt!1121198))))

(declare-fun lt!1121298 () Unit!51453)

(declare-fun lemmaDropApply!1077 (List!36651 Int) Unit!51453)

(assert (=> b!3307844 (= lt!1121298 (lemmaDropApply!1077 lt!1121302 0))))

(declare-fun head!7133 (List!36651) Token!9968)

(declare-fun drop!1909 (List!36651 Int) List!36651)

(declare-fun apply!8398 (List!36651 Int) Token!9968)

(assert (=> b!3307844 (= (head!7133 (drop!1909 lt!1121302 0)) (apply!8398 lt!1121302 0))))

(declare-fun lt!1121299 () Unit!51453)

(assert (=> b!3307844 (= lt!1121299 lt!1121298)))

(declare-fun lt!1121297 () List!36651)

(assert (=> b!3307844 (= lt!1121297 (list!13110 lt!1121198))))

(declare-fun lt!1121300 () Unit!51453)

(declare-fun lemmaDropTail!961 (List!36651 Int) Unit!51453)

(assert (=> b!3307844 (= lt!1121300 (lemmaDropTail!961 lt!1121297 0))))

(declare-fun tail!5271 (List!36651) List!36651)

(assert (=> b!3307844 (= (tail!5271 (drop!1909 lt!1121297 0)) (drop!1909 lt!1121297 (+ 0 1)))))

(declare-fun lt!1121296 () Unit!51453)

(assert (=> b!3307844 (= lt!1121296 lt!1121300)))

(assert (= (and d!926668 res!1341576) b!3307842))

(assert (= (and d!926668 c!561093) b!3307843))

(assert (= (and d!926668 (not c!561093)) b!3307844))

(declare-fun m!3634773 () Bool)

(assert (=> d!926668 m!3634773))

(declare-fun m!3634775 () Bool)

(assert (=> d!926668 m!3634775))

(declare-fun m!3634777 () Bool)

(assert (=> d!926668 m!3634777))

(assert (=> d!926668 m!3634777))

(assert (=> d!926668 m!3634773))

(declare-fun m!3634779 () Bool)

(assert (=> d!926668 m!3634779))

(declare-fun m!3634781 () Bool)

(assert (=> d!926668 m!3634781))

(assert (=> b!3307842 m!3634775))

(declare-fun m!3634783 () Bool)

(assert (=> b!3307844 m!3634783))

(declare-fun m!3634785 () Bool)

(assert (=> b!3307844 m!3634785))

(declare-fun m!3634787 () Bool)

(assert (=> b!3307844 m!3634787))

(declare-fun m!3634789 () Bool)

(assert (=> b!3307844 m!3634789))

(declare-fun m!3634791 () Bool)

(assert (=> b!3307844 m!3634791))

(declare-fun m!3634793 () Bool)

(assert (=> b!3307844 m!3634793))

(declare-fun m!3634795 () Bool)

(assert (=> b!3307844 m!3634795))

(declare-fun m!3634797 () Bool)

(assert (=> b!3307844 m!3634797))

(assert (=> b!3307844 m!3634797))

(declare-fun m!3634799 () Bool)

(assert (=> b!3307844 m!3634799))

(declare-fun m!3634801 () Bool)

(assert (=> b!3307844 m!3634801))

(declare-fun m!3634803 () Bool)

(assert (=> b!3307844 m!3634803))

(assert (=> b!3307844 m!3634789))

(assert (=> b!3307844 m!3634803))

(declare-fun m!3634805 () Bool)

(assert (=> b!3307844 m!3634805))

(assert (=> b!3307844 m!3634805))

(assert (=> b!3307844 m!3634793))

(assert (=> b!3307844 m!3634767))

(assert (=> b!3307613 d!926668))

(declare-fun d!926670 () Bool)

(declare-fun e!2057250 () Bool)

(assert (=> d!926670 e!2057250))

(declare-fun res!1341579 () Bool)

(assert (=> d!926670 (=> (not res!1341579) (not e!2057250))))

(declare-fun lt!1121305 () BalanceConc!21570)

(assert (=> d!926670 (= res!1341579 (= (list!13110 lt!1121305) (Cons!36527 (h!41947 tokens!494) Nil!36527)))))

(declare-fun singleton!1034 (Token!9968) BalanceConc!21570)

(assert (=> d!926670 (= lt!1121305 (singleton!1034 (h!41947 tokens!494)))))

(assert (=> d!926670 (= (singletonSeq!2397 (h!41947 tokens!494)) lt!1121305)))

(declare-fun b!3307847 () Bool)

(declare-fun isBalanced!3287 (Conc!10978) Bool)

(assert (=> b!3307847 (= e!2057250 (isBalanced!3287 (c!561066 lt!1121305)))))

(assert (= (and d!926670 res!1341579) b!3307847))

(declare-fun m!3634807 () Bool)

(assert (=> d!926670 m!3634807))

(declare-fun m!3634809 () Bool)

(assert (=> d!926670 m!3634809))

(declare-fun m!3634811 () Bool)

(assert (=> b!3307847 m!3634811))

(assert (=> b!3307613 d!926670))

(declare-fun d!926672 () Bool)

(declare-fun c!561096 () Bool)

(assert (=> d!926672 (= c!561096 (is-Cons!36527 (Cons!36527 (h!41947 tokens!494) Nil!36527)))))

(declare-fun e!2057253 () List!36650)

(assert (=> d!926672 (= (printList!1440 thiss!18206 (Cons!36527 (h!41947 tokens!494) Nil!36527)) e!2057253)))

(declare-fun b!3307852 () Bool)

(declare-fun ++!8850 (List!36650 List!36650) List!36650)

(assert (=> b!3307852 (= e!2057253 (++!8850 (list!13108 (charsOf!3317 (h!41947 (Cons!36527 (h!41947 tokens!494) Nil!36527)))) (printList!1440 thiss!18206 (t!253872 (Cons!36527 (h!41947 tokens!494) Nil!36527)))))))

(declare-fun b!3307853 () Bool)

(assert (=> b!3307853 (= e!2057253 Nil!36526)))

(assert (= (and d!926672 c!561096) b!3307852))

(assert (= (and d!926672 (not c!561096)) b!3307853))

(declare-fun m!3634813 () Bool)

(assert (=> b!3307852 m!3634813))

(assert (=> b!3307852 m!3634813))

(declare-fun m!3634815 () Bool)

(assert (=> b!3307852 m!3634815))

(declare-fun m!3634817 () Bool)

(assert (=> b!3307852 m!3634817))

(assert (=> b!3307852 m!3634815))

(assert (=> b!3307852 m!3634817))

(declare-fun m!3634819 () Bool)

(assert (=> b!3307852 m!3634819))

(assert (=> b!3307613 d!926672))

(declare-fun d!926674 () Bool)

(assert (=> d!926674 (= (inv!49500 (tag!5847 (h!41948 rules!2135))) (= (mod (str.len (value!171539 (tag!5847 (h!41948 rules!2135)))) 2) 0))))

(assert (=> b!3307623 d!926674))

(declare-fun d!926676 () Bool)

(declare-fun res!1341582 () Bool)

(declare-fun e!2057256 () Bool)

(assert (=> d!926676 (=> (not res!1341582) (not e!2057256))))

(declare-fun semiInverseModEq!2195 (Int Int) Bool)

(assert (=> d!926676 (= res!1341582 (semiInverseModEq!2195 (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toValue!7445 (transformation!5301 (h!41948 rules!2135)))))))

(assert (=> d!926676 (= (inv!49503 (transformation!5301 (h!41948 rules!2135))) e!2057256)))

(declare-fun b!3307856 () Bool)

(declare-fun equivClasses!2094 (Int Int) Bool)

(assert (=> b!3307856 (= e!2057256 (equivClasses!2094 (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toValue!7445 (transformation!5301 (h!41948 rules!2135)))))))

(assert (= (and d!926676 res!1341582) b!3307856))

(declare-fun m!3634821 () Bool)

(assert (=> d!926676 m!3634821))

(declare-fun m!3634823 () Bool)

(assert (=> b!3307856 m!3634823))

(assert (=> b!3307623 d!926676))

(declare-fun d!926678 () Bool)

(assert (=> d!926678 (= (inv!49500 (tag!5847 (rule!7805 (h!41947 tokens!494)))) (= (mod (str.len (value!171539 (tag!5847 (rule!7805 (h!41947 tokens!494))))) 2) 0))))

(assert (=> b!3307604 d!926678))

(declare-fun d!926680 () Bool)

(declare-fun res!1341583 () Bool)

(declare-fun e!2057257 () Bool)

(assert (=> d!926680 (=> (not res!1341583) (not e!2057257))))

(assert (=> d!926680 (= res!1341583 (semiInverseModEq!2195 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (toValue!7445 (transformation!5301 (rule!7805 (h!41947 tokens!494))))))))

(assert (=> d!926680 (= (inv!49503 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) e!2057257)))

(declare-fun b!3307857 () Bool)

(assert (=> b!3307857 (= e!2057257 (equivClasses!2094 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (toValue!7445 (transformation!5301 (rule!7805 (h!41947 tokens!494))))))))

(assert (= (and d!926680 res!1341583) b!3307857))

(declare-fun m!3634825 () Bool)

(assert (=> d!926680 m!3634825))

(declare-fun m!3634827 () Bool)

(assert (=> b!3307857 m!3634827))

(assert (=> b!3307604 d!926680))

(declare-fun d!926682 () Bool)

(assert (=> d!926682 (= (inv!49500 (tag!5847 (rule!7805 separatorToken!241))) (= (mod (str.len (value!171539 (tag!5847 (rule!7805 separatorToken!241)))) 2) 0))))

(assert (=> b!3307603 d!926682))

(declare-fun d!926684 () Bool)

(declare-fun res!1341584 () Bool)

(declare-fun e!2057258 () Bool)

(assert (=> d!926684 (=> (not res!1341584) (not e!2057258))))

(assert (=> d!926684 (= res!1341584 (semiInverseModEq!2195 (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toValue!7445 (transformation!5301 (rule!7805 separatorToken!241)))))))

(assert (=> d!926684 (= (inv!49503 (transformation!5301 (rule!7805 separatorToken!241))) e!2057258)))

(declare-fun b!3307858 () Bool)

(assert (=> b!3307858 (= e!2057258 (equivClasses!2094 (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toValue!7445 (transformation!5301 (rule!7805 separatorToken!241)))))))

(assert (= (and d!926684 res!1341584) b!3307858))

(declare-fun m!3634829 () Bool)

(assert (=> d!926684 m!3634829))

(declare-fun m!3634831 () Bool)

(assert (=> b!3307858 m!3634831))

(assert (=> b!3307603 d!926684))

(declare-fun d!926686 () Bool)

(assert (=> d!926686 (= (list!13108 (charsOf!3317 (h!41947 tokens!494))) (list!13111 (c!561065 (charsOf!3317 (h!41947 tokens!494)))))))

(declare-fun bs!549230 () Bool)

(assert (= bs!549230 d!926686))

(declare-fun m!3634833 () Bool)

(assert (=> bs!549230 m!3634833))

(assert (=> b!3307614 d!926686))

(declare-fun d!926688 () Bool)

(declare-fun lt!1121308 () BalanceConc!21568)

(assert (=> d!926688 (= (list!13108 lt!1121308) (originalCharacters!6015 (h!41947 tokens!494)))))

(assert (=> d!926688 (= lt!1121308 (dynLambda!14989 (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (value!171540 (h!41947 tokens!494))))))

(assert (=> d!926688 (= (charsOf!3317 (h!41947 tokens!494)) lt!1121308)))

(declare-fun b_lambda!92485 () Bool)

(assert (=> (not b_lambda!92485) (not d!926688)))

(assert (=> d!926688 t!253909))

(declare-fun b_and!226855 () Bool)

(assert (= b_and!226849 (and (=> t!253909 result!214666) b_and!226855)))

(assert (=> d!926688 t!253911))

(declare-fun b_and!226857 () Bool)

(assert (= b_and!226851 (and (=> t!253911 result!214668) b_and!226857)))

(assert (=> d!926688 t!253913))

(declare-fun b_and!226859 () Bool)

(assert (= b_and!226853 (and (=> t!253913 result!214670) b_and!226859)))

(declare-fun m!3634835 () Bool)

(assert (=> d!926688 m!3634835))

(assert (=> d!926688 m!3634699))

(assert (=> b!3307614 d!926688))

(declare-fun b!3307869 () Bool)

(declare-fun b_free!87021 () Bool)

(declare-fun b_next!87725 () Bool)

(assert (=> b!3307869 (= b_free!87021 (not b_next!87725))))

(declare-fun tp!1035869 () Bool)

(declare-fun b_and!226861 () Bool)

(assert (=> b!3307869 (= tp!1035869 b_and!226861)))

(declare-fun b_free!87023 () Bool)

(declare-fun b_next!87727 () Bool)

(assert (=> b!3307869 (= b_free!87023 (not b_next!87727))))

(declare-fun tb!171799 () Bool)

(declare-fun t!253916 () Bool)

(assert (=> (and b!3307869 (= (toChars!7304 (transformation!5301 (h!41948 (t!253873 rules!2135)))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241)))) t!253916) tb!171799))

(declare-fun result!214674 () Bool)

(assert (= result!214674 result!214644))

(assert (=> b!3307712 t!253916))

(declare-fun t!253918 () Bool)

(declare-fun tb!171801 () Bool)

(assert (=> (and b!3307869 (= (toChars!7304 (transformation!5301 (h!41948 (t!253873 rules!2135)))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494))))) t!253918) tb!171801))

(declare-fun result!214676 () Bool)

(assert (= result!214676 result!214666))

(assert (=> b!3307806 t!253918))

(assert (=> d!926688 t!253918))

(declare-fun tp!1035872 () Bool)

(declare-fun b_and!226863 () Bool)

(assert (=> b!3307869 (= tp!1035872 (and (=> t!253916 result!214674) (=> t!253918 result!214676) b_and!226863))))

(declare-fun e!2057268 () Bool)

(assert (=> b!3307869 (= e!2057268 (and tp!1035869 tp!1035872))))

(declare-fun e!2057270 () Bool)

(declare-fun tp!1035870 () Bool)

(declare-fun b!3307868 () Bool)

(assert (=> b!3307868 (= e!2057270 (and tp!1035870 (inv!49500 (tag!5847 (h!41948 (t!253873 rules!2135)))) (inv!49503 (transformation!5301 (h!41948 (t!253873 rules!2135)))) e!2057268))))

(declare-fun b!3307867 () Bool)

(declare-fun e!2057267 () Bool)

(declare-fun tp!1035871 () Bool)

(assert (=> b!3307867 (= e!2057267 (and e!2057270 tp!1035871))))

(assert (=> b!3307601 (= tp!1035813 e!2057267)))

(assert (= b!3307868 b!3307869))

(assert (= b!3307867 b!3307868))

(assert (= (and b!3307601 (is-Cons!36528 (t!253873 rules!2135))) b!3307867))

(declare-fun m!3634837 () Bool)

(assert (=> b!3307868 m!3634837))

(declare-fun m!3634839 () Bool)

(assert (=> b!3307868 m!3634839))

(declare-fun b!3307874 () Bool)

(declare-fun e!2057273 () Bool)

(declare-fun tp_is_empty!17379 () Bool)

(declare-fun tp!1035875 () Bool)

(assert (=> b!3307874 (= e!2057273 (and tp_is_empty!17379 tp!1035875))))

(assert (=> b!3307622 (= tp!1035806 e!2057273)))

(assert (= (and b!3307622 (is-Cons!36526 (originalCharacters!6015 separatorToken!241))) b!3307874))

(declare-fun b!3307875 () Bool)

(declare-fun e!2057274 () Bool)

(declare-fun tp!1035876 () Bool)

(assert (=> b!3307875 (= e!2057274 (and tp_is_empty!17379 tp!1035876))))

(assert (=> b!3307608 (= tp!1035811 e!2057274)))

(assert (= (and b!3307608 (is-Cons!36526 (originalCharacters!6015 (h!41947 tokens!494)))) b!3307875))

(declare-fun b!3307888 () Bool)

(declare-fun e!2057277 () Bool)

(declare-fun tp!1035891 () Bool)

(assert (=> b!3307888 (= e!2057277 tp!1035891)))

(declare-fun b!3307886 () Bool)

(assert (=> b!3307886 (= e!2057277 tp_is_empty!17379)))

(assert (=> b!3307623 (= tp!1035807 e!2057277)))

(declare-fun b!3307889 () Bool)

(declare-fun tp!1035890 () Bool)

(declare-fun tp!1035889 () Bool)

(assert (=> b!3307889 (= e!2057277 (and tp!1035890 tp!1035889))))

(declare-fun b!3307887 () Bool)

(declare-fun tp!1035887 () Bool)

(declare-fun tp!1035888 () Bool)

(assert (=> b!3307887 (= e!2057277 (and tp!1035887 tp!1035888))))

(assert (= (and b!3307623 (is-ElementMatch!10060 (regex!5301 (h!41948 rules!2135)))) b!3307886))

(assert (= (and b!3307623 (is-Concat!15591 (regex!5301 (h!41948 rules!2135)))) b!3307887))

(assert (= (and b!3307623 (is-Star!10060 (regex!5301 (h!41948 rules!2135)))) b!3307888))

(assert (= (and b!3307623 (is-Union!10060 (regex!5301 (h!41948 rules!2135)))) b!3307889))

(declare-fun b!3307892 () Bool)

(declare-fun e!2057278 () Bool)

(declare-fun tp!1035896 () Bool)

(assert (=> b!3307892 (= e!2057278 tp!1035896)))

(declare-fun b!3307890 () Bool)

(assert (=> b!3307890 (= e!2057278 tp_is_empty!17379)))

(assert (=> b!3307604 (= tp!1035812 e!2057278)))

(declare-fun b!3307893 () Bool)

(declare-fun tp!1035895 () Bool)

(declare-fun tp!1035894 () Bool)

(assert (=> b!3307893 (= e!2057278 (and tp!1035895 tp!1035894))))

(declare-fun b!3307891 () Bool)

(declare-fun tp!1035892 () Bool)

(declare-fun tp!1035893 () Bool)

(assert (=> b!3307891 (= e!2057278 (and tp!1035892 tp!1035893))))

(assert (= (and b!3307604 (is-ElementMatch!10060 (regex!5301 (rule!7805 (h!41947 tokens!494))))) b!3307890))

(assert (= (and b!3307604 (is-Concat!15591 (regex!5301 (rule!7805 (h!41947 tokens!494))))) b!3307891))

(assert (= (and b!3307604 (is-Star!10060 (regex!5301 (rule!7805 (h!41947 tokens!494))))) b!3307892))

(assert (= (and b!3307604 (is-Union!10060 (regex!5301 (rule!7805 (h!41947 tokens!494))))) b!3307893))

(declare-fun b!3307896 () Bool)

(declare-fun e!2057279 () Bool)

(declare-fun tp!1035901 () Bool)

(assert (=> b!3307896 (= e!2057279 tp!1035901)))

(declare-fun b!3307894 () Bool)

(assert (=> b!3307894 (= e!2057279 tp_is_empty!17379)))

(assert (=> b!3307603 (= tp!1035804 e!2057279)))

(declare-fun b!3307897 () Bool)

(declare-fun tp!1035900 () Bool)

(declare-fun tp!1035899 () Bool)

(assert (=> b!3307897 (= e!2057279 (and tp!1035900 tp!1035899))))

(declare-fun b!3307895 () Bool)

(declare-fun tp!1035897 () Bool)

(declare-fun tp!1035898 () Bool)

(assert (=> b!3307895 (= e!2057279 (and tp!1035897 tp!1035898))))

(assert (= (and b!3307603 (is-ElementMatch!10060 (regex!5301 (rule!7805 separatorToken!241)))) b!3307894))

(assert (= (and b!3307603 (is-Concat!15591 (regex!5301 (rule!7805 separatorToken!241)))) b!3307895))

(assert (= (and b!3307603 (is-Star!10060 (regex!5301 (rule!7805 separatorToken!241)))) b!3307896))

(assert (= (and b!3307603 (is-Union!10060 (regex!5301 (rule!7805 separatorToken!241)))) b!3307897))

(declare-fun b!3307911 () Bool)

(declare-fun b_free!87025 () Bool)

(declare-fun b_next!87729 () Bool)

(assert (=> b!3307911 (= b_free!87025 (not b_next!87729))))

(declare-fun tp!1035913 () Bool)

(declare-fun b_and!226865 () Bool)

(assert (=> b!3307911 (= tp!1035913 b_and!226865)))

(declare-fun b_free!87027 () Bool)

(declare-fun b_next!87731 () Bool)

(assert (=> b!3307911 (= b_free!87027 (not b_next!87731))))

(declare-fun t!253920 () Bool)

(declare-fun tb!171803 () Bool)

(assert (=> (and b!3307911 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241)))) t!253920) tb!171803))

(declare-fun result!214684 () Bool)

(assert (= result!214684 result!214644))

(assert (=> b!3307712 t!253920))

(declare-fun t!253922 () Bool)

(declare-fun tb!171805 () Bool)

(assert (=> (and b!3307911 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494))))) t!253922) tb!171805))

(declare-fun result!214686 () Bool)

(assert (= result!214686 result!214666))

(assert (=> b!3307806 t!253922))

(assert (=> d!926688 t!253922))

(declare-fun b_and!226867 () Bool)

(declare-fun tp!1035912 () Bool)

(assert (=> b!3307911 (= tp!1035912 (and (=> t!253920 result!214684) (=> t!253922 result!214686) b_and!226867))))

(declare-fun e!2057292 () Bool)

(declare-fun e!2057294 () Bool)

(declare-fun b!3307910 () Bool)

(declare-fun tp!1035916 () Bool)

(assert (=> b!3307910 (= e!2057292 (and tp!1035916 (inv!49500 (tag!5847 (rule!7805 (h!41947 (t!253872 tokens!494))))) (inv!49503 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) e!2057294))))

(declare-fun b!3307908 () Bool)

(declare-fun e!2057293 () Bool)

(declare-fun e!2057295 () Bool)

(declare-fun tp!1035914 () Bool)

(assert (=> b!3307908 (= e!2057293 (and (inv!49504 (h!41947 (t!253872 tokens!494))) e!2057295 tp!1035914))))

(declare-fun b!3307909 () Bool)

(declare-fun tp!1035915 () Bool)

(assert (=> b!3307909 (= e!2057295 (and (inv!21 (value!171540 (h!41947 (t!253872 tokens!494)))) e!2057292 tp!1035915))))

(assert (=> b!3307911 (= e!2057294 (and tp!1035913 tp!1035912))))

(assert (=> b!3307619 (= tp!1035801 e!2057293)))

(assert (= b!3307910 b!3307911))

(assert (= b!3307909 b!3307910))

(assert (= b!3307908 b!3307909))

(assert (= (and b!3307619 (is-Cons!36527 (t!253872 tokens!494))) b!3307908))

(declare-fun m!3634841 () Bool)

(assert (=> b!3307910 m!3634841))

(declare-fun m!3634843 () Bool)

(assert (=> b!3307910 m!3634843))

(declare-fun m!3634845 () Bool)

(assert (=> b!3307908 m!3634845))

(declare-fun m!3634847 () Bool)

(assert (=> b!3307909 m!3634847))

(declare-fun b_lambda!92487 () Bool)

(assert (= b_lambda!92471 (or b!3307617 b_lambda!92487)))

(declare-fun bs!549231 () Bool)

(declare-fun d!926690 () Bool)

(assert (= bs!549231 (and d!926690 b!3307617)))

(assert (=> bs!549231 (= (dynLambda!14988 lambda!119114 (h!41947 tokens!494)) (not (isSeparator!5301 (rule!7805 (h!41947 tokens!494)))))))

(assert (=> b!3307703 d!926690))

(declare-fun b_lambda!92489 () Bool)

(assert (= b_lambda!92483 (or b!3307617 b_lambda!92489)))

(assert (=> d!926660 d!926690))

(declare-fun b_lambda!92491 () Bool)

(assert (= b_lambda!92473 (or (and b!3307869 b_free!87023 (= (toChars!7304 (transformation!5301 (h!41948 (t!253873 rules!2135)))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))))) (and b!3307605 b_free!86999) (and b!3307911 b_free!87027 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))))) (and b!3307616 b_free!87003 (= (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))))) (and b!3307602 b_free!87007 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))) (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))))) b_lambda!92491)))

(declare-fun b_lambda!92493 () Bool)

(assert (= b_lambda!92479 (or (and b!3307602 b_free!87007) (and b!3307869 b_free!87023 (= (toChars!7304 (transformation!5301 (h!41948 (t!253873 rules!2135)))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307605 b_free!86999 (= (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307616 b_free!87003 (= (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307911 b_free!87027 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) b_lambda!92493)))

(declare-fun b_lambda!92495 () Bool)

(assert (= b_lambda!92485 (or (and b!3307602 b_free!87007) (and b!3307869 b_free!87023 (= (toChars!7304 (transformation!5301 (h!41948 (t!253873 rules!2135)))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307605 b_free!86999 (= (toChars!7304 (transformation!5301 (rule!7805 separatorToken!241))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307616 b_free!87003 (= (toChars!7304 (transformation!5301 (h!41948 rules!2135))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) (and b!3307911 b_free!87027 (= (toChars!7304 (transformation!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))) (toChars!7304 (transformation!5301 (rule!7805 (h!41947 tokens!494)))))) b_lambda!92495)))

(declare-fun b_lambda!92497 () Bool)

(assert (= b_lambda!92481 (or b!3307617 b_lambda!92497)))

(declare-fun bs!549232 () Bool)

(declare-fun d!926692 () Bool)

(assert (= bs!549232 (and d!926692 b!3307617)))

(assert (=> bs!549232 (= (dynLambda!14988 lambda!119114 (h!41947 (t!253872 tokens!494))) (not (isSeparator!5301 (rule!7805 (h!41947 (t!253872 tokens!494))))))))

(assert (=> d!926658 d!926692))

(push 1)

(assert (not b_next!87701))

(assert (not b!3307856))

(assert (not d!926686))

(assert (not b!3307806))

(assert b_and!226859)

(assert b_and!226811)

(assert (not b_next!87711))

(assert (not d!926664))

(assert (not b_next!87731))

(assert b_and!226861)

(assert (not b!3307831))

(assert (not b!3307895))

(assert (not b!3307867))

(assert (not b!3307875))

(assert (not tb!171793))

(assert (not d!926666))

(assert (not b!3307889))

(assert tp_is_empty!17379)

(assert (not d!926654))

(assert (not b!3307908))

(assert (not b!3307783))

(assert (not b!3307792))

(assert (not b!3307704))

(assert (not d!926652))

(assert b_and!226865)

(assert (not d!926688))

(assert (not b!3307844))

(assert (not d!926614))

(assert (not b!3307891))

(assert (not b!3307823))

(assert (not b!3307729))

(assert (not d!926644))

(assert (not b!3307718))

(assert (not d!926612))

(assert (not b!3307730))

(assert (not b!3307858))

(assert (not b!3307892))

(assert (not b!3307826))

(assert b_and!226855)

(assert b_and!226807)

(assert (not b!3307847))

(assert b_and!226867)

(assert (not b!3307874))

(assert (not b!3307888))

(assert (not b!3307803))

(assert (not b!3307910))

(assert (not b_next!87703))

(assert (not d!926676))

(assert (not d!926656))

(assert (not b!3307698))

(assert (not b_next!87725))

(assert (not b_next!87707))

(assert (not b_lambda!92489))

(assert (not b!3307822))

(assert (not b!3307808))

(assert (not b!3307857))

(assert (not b!3307809))

(assert (not d!926660))

(assert (not b!3307707))

(assert b_and!226857)

(assert (not b_lambda!92493))

(assert (not b_next!87709))

(assert (not b!3307805))

(assert (not b!3307868))

(assert (not b!3307897))

(assert (not d!926650))

(assert (not b!3307697))

(assert b_and!226815)

(assert (not b!3307852))

(assert (not b!3307834))

(assert (not b!3307810))

(assert (not b!3307807))

(assert (not b_next!87727))

(assert (not b_next!87729))

(assert (not b!3307832))

(assert (not b!3307909))

(assert (not d!926658))

(assert (not b_lambda!92497))

(assert (not b!3307829))

(assert (not d!926684))

(assert (not b!3307732))

(assert (not b!3307896))

(assert (not d!926648))

(assert (not b!3307893))

(assert (not b!3307824))

(assert (not tb!171775))

(assert (not b_next!87705))

(assert (not b_lambda!92487))

(assert (not b!3307804))

(assert (not b!3307713))

(assert (not d!926670))

(assert (not b_lambda!92491))

(assert (not b!3307842))

(assert (not d!926680))

(assert b_and!226863)

(assert (not b!3307811))

(assert (not d!926668))

(assert (not b!3307712))

(assert (not d!926618))

(assert (not d!926642))

(assert (not b!3307830))

(assert (not b_lambda!92495))

(assert (not b!3307887))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226859)

(assert (not b_next!87701))

(assert b_and!226865)

(assert b_and!226867)

(assert (not b_next!87703))

(assert b_and!226815)

(assert (not b_next!87705))

(assert b_and!226863)

(assert (not b_next!87711))

(assert b_and!226811)

(assert (not b_next!87731))

(assert b_and!226861)

(assert b_and!226855)

(assert b_and!226807)

(assert (not b_next!87725))

(assert (not b_next!87707))

(assert b_and!226857)

(assert (not b_next!87709))

(assert (not b_next!87727))

(assert (not b_next!87729))

(check-sat)

(pop 1)

