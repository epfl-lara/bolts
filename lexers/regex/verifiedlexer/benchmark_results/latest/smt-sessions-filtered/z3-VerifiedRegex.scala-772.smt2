; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43674 () Bool)

(assert start!43674)

(declare-fun b!459488 () Bool)

(declare-fun b_free!12833 () Bool)

(declare-fun b_next!12833 () Bool)

(assert (=> b!459488 (= b_free!12833 (not b_next!12833))))

(declare-fun tp!127225 () Bool)

(declare-fun b_and!49369 () Bool)

(assert (=> b!459488 (= tp!127225 b_and!49369)))

(declare-fun b_free!12835 () Bool)

(declare-fun b_next!12835 () Bool)

(assert (=> b!459488 (= b_free!12835 (not b_next!12835))))

(declare-fun tp!127233 () Bool)

(declare-fun b_and!49371 () Bool)

(assert (=> b!459488 (= tp!127233 b_and!49371)))

(declare-fun b!459502 () Bool)

(declare-fun b_free!12837 () Bool)

(declare-fun b_next!12837 () Bool)

(assert (=> b!459502 (= b_free!12837 (not b_next!12837))))

(declare-fun tp!127235 () Bool)

(declare-fun b_and!49373 () Bool)

(assert (=> b!459502 (= tp!127235 b_and!49373)))

(declare-fun b_free!12839 () Bool)

(declare-fun b_next!12839 () Bool)

(assert (=> b!459502 (= b_free!12839 (not b_next!12839))))

(declare-fun tp!127231 () Bool)

(declare-fun b_and!49375 () Bool)

(assert (=> b!459502 (= tp!127231 b_and!49375)))

(declare-fun b!459486 () Bool)

(declare-fun b_free!12841 () Bool)

(declare-fun b_next!12841 () Bool)

(assert (=> b!459486 (= b_free!12841 (not b_next!12841))))

(declare-fun tp!127236 () Bool)

(declare-fun b_and!49377 () Bool)

(assert (=> b!459486 (= tp!127236 b_and!49377)))

(declare-fun b_free!12843 () Bool)

(declare-fun b_next!12843 () Bool)

(assert (=> b!459486 (= b_free!12843 (not b_next!12843))))

(declare-fun tp!127227 () Bool)

(declare-fun b_and!49379 () Bool)

(assert (=> b!459486 (= tp!127227 b_and!49379)))

(declare-fun bs!57008 () Bool)

(declare-fun b!459487 () Bool)

(declare-fun b!459496 () Bool)

(assert (= bs!57008 (and b!459487 b!459496)))

(declare-fun lambda!13510 () Int)

(declare-fun lambda!13509 () Int)

(assert (=> bs!57008 (not (= lambda!13510 lambda!13509))))

(declare-fun b!459528 () Bool)

(declare-fun e!281394 () Bool)

(assert (=> b!459528 (= e!281394 true)))

(declare-fun b!459527 () Bool)

(declare-fun e!281393 () Bool)

(assert (=> b!459527 (= e!281393 e!281394)))

(declare-fun b!459526 () Bool)

(declare-fun e!281392 () Bool)

(assert (=> b!459526 (= e!281392 e!281393)))

(assert (=> b!459487 e!281392))

(assert (= b!459527 b!459528))

(assert (= b!459526 b!459527))

(declare-datatypes ((List!4468 0))(
  ( (Nil!4458) (Cons!4458 (h!9855 (_ BitVec 16)) (t!71768 List!4468)) )
))
(declare-datatypes ((TokenValue!889 0))(
  ( (FloatLiteralValue!1778 (text!6668 List!4468)) (TokenValueExt!888 (__x!3265 Int)) (Broken!4445 (value!28999 List!4468)) (Object!898) (End!889) (Def!889) (Underscore!889) (Match!889) (Else!889) (Error!889) (Case!889) (If!889) (Extends!889) (Abstract!889) (Class!889) (Val!889) (DelimiterValue!1778 (del!949 List!4468)) (KeywordValue!895 (value!29000 List!4468)) (CommentValue!1778 (value!29001 List!4468)) (WhitespaceValue!1778 (value!29002 List!4468)) (IndentationValue!889 (value!29003 List!4468)) (String!5524) (Int32!889) (Broken!4446 (value!29004 List!4468)) (Boolean!890) (Unit!8072) (OperatorValue!892 (op!949 List!4468)) (IdentifierValue!1778 (value!29005 List!4468)) (IdentifierValue!1779 (value!29006 List!4468)) (WhitespaceValue!1779 (value!29007 List!4468)) (True!1778) (False!1778) (Broken!4447 (value!29008 List!4468)) (Broken!4448 (value!29009 List!4468)) (True!1779) (RightBrace!889) (RightBracket!889) (Colon!889) (Null!889) (Comma!889) (LeftBracket!889) (False!1779) (LeftBrace!889) (ImaginaryLiteralValue!889 (text!6669 List!4468)) (StringLiteralValue!2667 (value!29010 List!4468)) (EOFValue!889 (value!29011 List!4468)) (IdentValue!889 (value!29012 List!4468)) (DelimiterValue!1779 (value!29013 List!4468)) (DedentValue!889 (value!29014 List!4468)) (NewLineValue!889 (value!29015 List!4468)) (IntegerValue!2667 (value!29016 (_ BitVec 32)) (text!6670 List!4468)) (IntegerValue!2668 (value!29017 Int) (text!6671 List!4468)) (Times!889) (Or!889) (Equal!889) (Minus!889) (Broken!4449 (value!29018 List!4468)) (And!889) (Div!889) (LessEqual!889) (Mod!889) (Concat!1980) (Not!889) (Plus!889) (SpaceValue!889 (value!29019 List!4468)) (IntegerValue!2669 (value!29020 Int) (text!6672 List!4468)) (StringLiteralValue!2668 (text!6673 List!4468)) (FloatLiteralValue!1779 (text!6674 List!4468)) (BytesLiteralValue!889 (value!29021 List!4468)) (CommentValue!1779 (value!29022 List!4468)) (StringLiteralValue!2669 (value!29023 List!4468)) (ErrorTokenValue!889 (msg!950 List!4468)) )
))
(declare-datatypes ((C!3104 0))(
  ( (C!3105 (val!1438 Int)) )
))
(declare-datatypes ((List!4469 0))(
  ( (Nil!4459) (Cons!4459 (h!9856 C!3104) (t!71769 List!4469)) )
))
(declare-datatypes ((IArray!3113 0))(
  ( (IArray!3114 (innerList!1614 List!4469)) )
))
(declare-datatypes ((Conc!1556 0))(
  ( (Node!1556 (left!3764 Conc!1556) (right!4094 Conc!1556) (csize!3342 Int) (cheight!1767 Int)) (Leaf!2329 (xs!4187 IArray!3113) (csize!3343 Int)) (Empty!1556) )
))
(declare-datatypes ((BalanceConc!3120 0))(
  ( (BalanceConc!3121 (c!92662 Conc!1556)) )
))
(declare-datatypes ((TokenValueInjection!1550 0))(
  ( (TokenValueInjection!1551 (toValue!1686 Int) (toChars!1545 Int)) )
))
(declare-datatypes ((String!5525 0))(
  ( (String!5526 (value!29024 String)) )
))
(declare-datatypes ((Regex!1091 0))(
  ( (ElementMatch!1091 (c!92663 C!3104)) (Concat!1981 (regOne!2694 Regex!1091) (regTwo!2694 Regex!1091)) (EmptyExpr!1091) (Star!1091 (reg!1420 Regex!1091)) (EmptyLang!1091) (Union!1091 (regOne!2695 Regex!1091) (regTwo!2695 Regex!1091)) )
))
(declare-datatypes ((Rule!1534 0))(
  ( (Rule!1535 (regex!867 Regex!1091) (tag!1127 String!5525) (isSeparator!867 Bool) (transformation!867 TokenValueInjection!1550)) )
))
(declare-datatypes ((List!4470 0))(
  ( (Nil!4460) (Cons!4460 (h!9857 Rule!1534) (t!71770 List!4470)) )
))
(declare-fun rules!1920 () List!4470)

(get-info :version)

(assert (= (and b!459487 ((_ is Cons!4460) rules!1920)) b!459526))

(declare-fun order!3963 () Int)

(declare-fun order!3961 () Int)

(declare-fun dynLambda!2716 (Int Int) Int)

(declare-fun dynLambda!2717 (Int Int) Int)

(assert (=> b!459528 (< (dynLambda!2716 order!3961 (toValue!1686 (transformation!867 (h!9857 rules!1920)))) (dynLambda!2717 order!3963 lambda!13510))))

(declare-fun order!3965 () Int)

(declare-fun dynLambda!2718 (Int Int) Int)

(assert (=> b!459528 (< (dynLambda!2718 order!3965 (toChars!1545 (transformation!867 (h!9857 rules!1920)))) (dynLambda!2717 order!3963 lambda!13510))))

(assert (=> b!459487 true))

(declare-fun b!459485 () Bool)

(declare-fun e!281370 () Bool)

(declare-fun e!281363 () Bool)

(assert (=> b!459485 (= e!281370 e!281363)))

(declare-fun res!204370 () Bool)

(assert (=> b!459485 (=> (not res!204370) (not e!281363))))

(declare-datatypes ((Token!1478 0))(
  ( (Token!1479 (value!29025 TokenValue!889) (rule!1562 Rule!1534) (size!3651 Int) (originalCharacters!910 List!4469)) )
))
(declare-datatypes ((List!4471 0))(
  ( (Nil!4461) (Cons!4461 (h!9858 Token!1478) (t!71771 List!4471)) )
))
(declare-datatypes ((IArray!3115 0))(
  ( (IArray!3116 (innerList!1615 List!4471)) )
))
(declare-datatypes ((Conc!1557 0))(
  ( (Node!1557 (left!3765 Conc!1557) (right!4095 Conc!1557) (csize!3344 Int) (cheight!1768 Int)) (Leaf!2330 (xs!4188 IArray!3115) (csize!3345 Int)) (Empty!1557) )
))
(declare-datatypes ((BalanceConc!3122 0))(
  ( (BalanceConc!3123 (c!92664 Conc!1557)) )
))
(declare-fun lt!204883 () BalanceConc!3122)

(declare-datatypes ((LexerInterface!753 0))(
  ( (LexerInterfaceExt!750 (__x!3266 Int)) (Lexer!751) )
))
(declare-fun thiss!17480 () LexerInterface!753)

(declare-fun rulesProduceEachTokenIndividually!545 (LexerInterface!753 List!4470 BalanceConc!3122) Bool)

(assert (=> b!459485 (= res!204370 (rulesProduceEachTokenIndividually!545 thiss!17480 rules!1920 lt!204883))))

(declare-fun tokens!465 () List!4471)

(declare-fun seqFromList!1099 (List!4471) BalanceConc!3122)

(assert (=> b!459485 (= lt!204883 (seqFromList!1099 tokens!465))))

(declare-fun e!281373 () Bool)

(assert (=> b!459486 (= e!281373 (and tp!127236 tp!127227))))

(declare-fun e!281384 () Bool)

(declare-fun e!281365 () Bool)

(assert (=> b!459487 (= e!281384 e!281365)))

(declare-fun res!204359 () Bool)

(assert (=> b!459487 (=> res!204359 e!281365)))

(declare-datatypes ((tuple2!5438 0))(
  ( (tuple2!5439 (_1!2935 Token!1478) (_2!2935 BalanceConc!3120)) )
))
(declare-datatypes ((Option!1168 0))(
  ( (None!1167) (Some!1167 (v!15510 tuple2!5438)) )
))
(declare-fun isDefined!1007 (Option!1168) Bool)

(declare-fun maxPrefixZipperSequence!432 (LexerInterface!753 List!4470 BalanceConc!3120) Option!1168)

(declare-fun seqFromList!1100 (List!4469) BalanceConc!3120)

(assert (=> b!459487 (= res!204359 (not (isDefined!1007 (maxPrefixZipperSequence!432 thiss!17480 rules!1920 (seqFromList!1100 (originalCharacters!910 (h!9858 tokens!465)))))))))

(declare-datatypes ((Unit!8073 0))(
  ( (Unit!8074) )
))
(declare-fun lt!204899 () Unit!8073)

(declare-fun forallContained!420 (List!4471 Int Token!1478) Unit!8073)

(assert (=> b!459487 (= lt!204899 (forallContained!420 tokens!465 lambda!13510 (h!9858 tokens!465)))))

(declare-fun lt!204881 () List!4469)

(assert (=> b!459487 (= lt!204881 (originalCharacters!910 (h!9858 tokens!465)))))

(declare-fun e!281374 () Bool)

(assert (=> b!459488 (= e!281374 (and tp!127225 tp!127233))))

(declare-fun b!459489 () Bool)

(declare-fun res!204369 () Bool)

(assert (=> b!459489 (=> (not res!204369) (not e!281370))))

(declare-fun isEmpty!3442 (List!4470) Bool)

(assert (=> b!459489 (= res!204369 (not (isEmpty!3442 rules!1920)))))

(declare-fun b!459490 () Bool)

(declare-fun e!281372 () Bool)

(declare-fun lt!204880 () List!4469)

(declare-fun isPrefix!519 (List!4469 List!4469) Bool)

(assert (=> b!459490 (= e!281372 (isPrefix!519 lt!204881 lt!204880))))

(declare-datatypes ((tuple2!5440 0))(
  ( (tuple2!5441 (_1!2936 Token!1478) (_2!2936 List!4469)) )
))
(declare-datatypes ((Option!1169 0))(
  ( (None!1168) (Some!1168 (v!15511 tuple2!5440)) )
))
(declare-fun lt!204887 () Option!1169)

(declare-fun maxPrefix!469 (LexerInterface!753 List!4470 List!4469) Option!1169)

(assert (=> b!459490 (= lt!204887 (maxPrefix!469 thiss!17480 rules!1920 lt!204880))))

(declare-fun lt!204888 () List!4469)

(declare-fun ++!1302 (List!4469 List!4469) List!4469)

(assert (=> b!459490 (isPrefix!519 lt!204881 (++!1302 lt!204881 lt!204888))))

(declare-fun lt!204891 () Unit!8073)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!404 (List!4469 List!4469) Unit!8073)

(assert (=> b!459490 (= lt!204891 (lemmaConcatTwoListThenFirstIsPrefix!404 lt!204881 lt!204888))))

(declare-fun lt!204885 () BalanceConc!3120)

(declare-fun filter!95 (List!4471 Int) List!4471)

(declare-fun list!1984 (BalanceConc!3122) List!4471)

(declare-datatypes ((tuple2!5442 0))(
  ( (tuple2!5443 (_1!2937 BalanceConc!3122) (_2!2937 BalanceConc!3120)) )
))
(declare-fun lex!545 (LexerInterface!753 List!4470 BalanceConc!3120) tuple2!5442)

(assert (=> b!459490 (= (filter!95 (list!1984 (_1!2937 (lex!545 thiss!17480 rules!1920 lt!204885))) lambda!13509) (t!71771 tokens!465))))

(declare-fun separatorToken!170 () Token!1478)

(declare-fun lt!204894 () Unit!8073)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!86 (LexerInterface!753 List!4470 List!4471 Token!1478) Unit!8073)

(assert (=> b!459490 (= lt!204894 (theoremInvertabilityFromTokensSepTokenWhenNeeded!86 thiss!17480 rules!1920 (t!71771 tokens!465) separatorToken!170))))

(declare-fun e!281359 () Bool)

(assert (=> b!459490 e!281359))

(declare-fun res!204380 () Bool)

(assert (=> b!459490 (=> res!204380 e!281359)))

(declare-fun isEmpty!3443 (List!4471) Bool)

(assert (=> b!459490 (= res!204380 (isEmpty!3443 tokens!465))))

(declare-fun lt!204893 () Unit!8073)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!268 (LexerInterface!753 List!4470 List!4471 Token!1478) Unit!8073)

(assert (=> b!459490 (= lt!204893 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!268 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!459491 () Bool)

(declare-fun res!204375 () Bool)

(assert (=> b!459491 (=> (not res!204375) (not e!281370))))

(declare-fun rulesInvariant!719 (LexerInterface!753 List!4470) Bool)

(assert (=> b!459491 (= res!204375 (rulesInvariant!719 thiss!17480 rules!1920))))

(declare-fun b!459492 () Bool)

(declare-fun res!204366 () Bool)

(assert (=> b!459492 (=> res!204366 e!281384)))

(declare-fun rulesProduceIndividualToken!502 (LexerInterface!753 List!4470 Token!1478) Bool)

(assert (=> b!459492 (= res!204366 (not (rulesProduceIndividualToken!502 thiss!17480 rules!1920 (h!9858 tokens!465))))))

(declare-fun b!459493 () Bool)

(declare-fun e!281378 () Bool)

(declare-fun e!281361 () Bool)

(assert (=> b!459493 (= e!281378 e!281361)))

(declare-fun res!204360 () Bool)

(assert (=> b!459493 (=> res!204360 e!281361)))

(declare-fun e!281376 () Bool)

(assert (=> b!459493 (= res!204360 e!281376)))

(declare-fun res!204368 () Bool)

(assert (=> b!459493 (=> (not res!204368) (not e!281376))))

(declare-fun lt!204898 () Bool)

(assert (=> b!459493 (= res!204368 (not lt!204898))))

(declare-fun lt!204882 () List!4469)

(assert (=> b!459493 (= lt!204898 (= lt!204880 lt!204882))))

(declare-fun b!459494 () Bool)

(declare-fun e!281366 () Bool)

(declare-fun e!281368 () Bool)

(declare-fun tp!127226 () Bool)

(assert (=> b!459494 (= e!281366 (and e!281368 tp!127226))))

(declare-fun b!459495 () Bool)

(assert (=> b!459495 (= e!281376 (not (= lt!204880 (++!1302 lt!204881 lt!204888))))))

(declare-fun res!204358 () Bool)

(assert (=> b!459496 (=> (not res!204358) (not e!281363))))

(declare-fun forall!1298 (List!4471 Int) Bool)

(assert (=> b!459496 (= res!204358 (forall!1298 tokens!465 lambda!13509))))

(declare-fun res!204367 () Bool)

(assert (=> start!43674 (=> (not res!204367) (not e!281370))))

(assert (=> start!43674 (= res!204367 ((_ is Lexer!751) thiss!17480))))

(assert (=> start!43674 e!281370))

(assert (=> start!43674 true))

(assert (=> start!43674 e!281366))

(declare-fun e!281382 () Bool)

(declare-fun inv!5541 (Token!1478) Bool)

(assert (=> start!43674 (and (inv!5541 separatorToken!170) e!281382)))

(declare-fun e!281369 () Bool)

(assert (=> start!43674 e!281369))

(declare-fun b!459497 () Bool)

(declare-fun res!204372 () Bool)

(assert (=> b!459497 (=> (not res!204372) (not e!281363))))

(declare-fun sepAndNonSepRulesDisjointChars!456 (List!4470 List!4470) Bool)

(assert (=> b!459497 (= res!204372 (sepAndNonSepRulesDisjointChars!456 rules!1920 rules!1920))))

(declare-fun b!459498 () Bool)

(declare-fun tp!127234 () Bool)

(declare-fun e!281383 () Bool)

(declare-fun inv!21 (TokenValue!889) Bool)

(assert (=> b!459498 (= e!281382 (and (inv!21 (value!29025 separatorToken!170)) e!281383 tp!127234))))

(declare-fun tp!127237 () Bool)

(declare-fun e!281360 () Bool)

(declare-fun b!459499 () Bool)

(declare-fun inv!5538 (String!5525) Bool)

(declare-fun inv!5542 (TokenValueInjection!1550) Bool)

(assert (=> b!459499 (= e!281360 (and tp!127237 (inv!5538 (tag!1127 (rule!1562 (h!9858 tokens!465)))) (inv!5542 (transformation!867 (rule!1562 (h!9858 tokens!465)))) e!281374))))

(declare-fun b!459500 () Bool)

(declare-fun e!281379 () Bool)

(declare-fun matchR!409 (Regex!1091 List!4469) Bool)

(assert (=> b!459500 (= e!281379 (matchR!409 (regex!867 (rule!1562 (h!9858 tokens!465))) lt!204881))))

(declare-fun b!459501 () Bool)

(declare-fun res!204361 () Bool)

(declare-fun e!281381 () Bool)

(assert (=> b!459501 (=> (not res!204361) (not e!281381))))

(declare-fun lt!204879 () List!4469)

(declare-fun list!1985 (BalanceConc!3120) List!4469)

(assert (=> b!459501 (= res!204361 (= (list!1985 (seqFromList!1100 lt!204880)) lt!204879))))

(declare-fun e!281375 () Bool)

(assert (=> b!459502 (= e!281375 (and tp!127235 tp!127231))))

(declare-fun b!459503 () Bool)

(assert (=> b!459503 (= e!281361 e!281384)))

(declare-fun res!204374 () Bool)

(assert (=> b!459503 (=> res!204374 e!281384)))

(declare-fun lt!204884 () List!4469)

(declare-fun lt!204889 () List!4469)

(assert (=> b!459503 (= res!204374 (or (not (= lt!204884 lt!204889)) (not (= lt!204889 lt!204881)) (not (= lt!204884 lt!204881))))))

(declare-fun printList!427 (LexerInterface!753 List!4471) List!4469)

(assert (=> b!459503 (= lt!204889 (printList!427 thiss!17480 (Cons!4461 (h!9858 tokens!465) Nil!4461)))))

(declare-fun lt!204901 () BalanceConc!3120)

(assert (=> b!459503 (= lt!204884 (list!1985 lt!204901))))

(declare-fun lt!204892 () BalanceConc!3122)

(declare-fun printTailRec!439 (LexerInterface!753 BalanceConc!3122 Int BalanceConc!3120) BalanceConc!3120)

(assert (=> b!459503 (= lt!204901 (printTailRec!439 thiss!17480 lt!204892 0 (BalanceConc!3121 Empty!1556)))))

(declare-fun print!478 (LexerInterface!753 BalanceConc!3122) BalanceConc!3120)

(assert (=> b!459503 (= lt!204901 (print!478 thiss!17480 lt!204892))))

(declare-fun singletonSeq!413 (Token!1478) BalanceConc!3122)

(assert (=> b!459503 (= lt!204892 (singletonSeq!413 (h!9858 tokens!465)))))

(declare-fun b!459504 () Bool)

(assert (=> b!459504 (= e!281363 e!281381)))

(declare-fun res!204362 () Bool)

(assert (=> b!459504 (=> (not res!204362) (not e!281381))))

(assert (=> b!459504 (= res!204362 (= lt!204880 lt!204879))))

(declare-fun printWithSeparatorTokenWhenNeededRec!426 (LexerInterface!753 List!4470 BalanceConc!3122 Token!1478 Int) BalanceConc!3120)

(assert (=> b!459504 (= lt!204879 (list!1985 (printWithSeparatorTokenWhenNeededRec!426 thiss!17480 rules!1920 lt!204883 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!434 (LexerInterface!753 List!4470 List!4471 Token!1478) List!4469)

(assert (=> b!459504 (= lt!204880 (printWithSeparatorTokenWhenNeededList!434 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!459505 () Bool)

(declare-fun res!204376 () Bool)

(assert (=> b!459505 (=> (not res!204376) (not e!281363))))

(assert (=> b!459505 (= res!204376 (isSeparator!867 (rule!1562 separatorToken!170)))))

(declare-fun b!459506 () Bool)

(declare-fun e!281385 () Bool)

(declare-fun lt!204902 () Option!1169)

(declare-fun get!1638 (Option!1169) tuple2!5440)

(declare-fun head!1122 (List!4471) Token!1478)

(assert (=> b!459506 (= e!281385 (= (_1!2936 (get!1638 lt!204902)) (head!1122 tokens!465)))))

(declare-fun tp!127228 () Bool)

(declare-fun b!459507 () Bool)

(assert (=> b!459507 (= e!281368 (and tp!127228 (inv!5538 (tag!1127 (h!9857 rules!1920))) (inv!5542 (transformation!867 (h!9857 rules!1920))) e!281373))))

(declare-fun b!459508 () Bool)

(assert (=> b!459508 (= e!281381 (not e!281378))))

(declare-fun res!204365 () Bool)

(assert (=> b!459508 (=> res!204365 e!281378)))

(assert (=> b!459508 (= res!204365 (not (= lt!204888 (list!1985 lt!204885))))))

(assert (=> b!459508 (= lt!204885 (printWithSeparatorTokenWhenNeededRec!426 thiss!17480 rules!1920 (seqFromList!1099 (t!71771 tokens!465)) separatorToken!170 0))))

(declare-fun lt!204895 () List!4469)

(assert (=> b!459508 (= lt!204895 lt!204882)))

(declare-fun lt!204897 () List!4469)

(assert (=> b!459508 (= lt!204882 (++!1302 lt!204881 lt!204897))))

(declare-fun lt!204886 () List!4469)

(assert (=> b!459508 (= lt!204895 (++!1302 (++!1302 lt!204881 lt!204886) lt!204888))))

(declare-fun lt!204900 () Unit!8073)

(declare-fun lemmaConcatAssociativity!604 (List!4469 List!4469 List!4469) Unit!8073)

(assert (=> b!459508 (= lt!204900 (lemmaConcatAssociativity!604 lt!204881 lt!204886 lt!204888))))

(declare-fun charsOf!510 (Token!1478) BalanceConc!3120)

(assert (=> b!459508 (= lt!204881 (list!1985 (charsOf!510 (h!9858 tokens!465))))))

(assert (=> b!459508 (= lt!204897 (++!1302 lt!204886 lt!204888))))

(assert (=> b!459508 (= lt!204888 (printWithSeparatorTokenWhenNeededList!434 thiss!17480 rules!1920 (t!71771 tokens!465) separatorToken!170))))

(assert (=> b!459508 (= lt!204886 (list!1985 (charsOf!510 separatorToken!170)))))

(declare-fun b!459509 () Bool)

(declare-fun res!204377 () Bool)

(assert (=> b!459509 (=> (not res!204377) (not e!281379))))

(declare-fun lt!204890 () tuple2!5440)

(declare-fun isEmpty!3444 (List!4469) Bool)

(assert (=> b!459509 (= res!204377 (isEmpty!3444 (_2!2936 lt!204890)))))

(declare-fun b!459510 () Bool)

(assert (=> b!459510 (= e!281359 e!281385)))

(declare-fun res!204379 () Bool)

(assert (=> b!459510 (=> (not res!204379) (not e!281385))))

(declare-fun isDefined!1008 (Option!1169) Bool)

(assert (=> b!459510 (= res!204379 (isDefined!1008 lt!204902))))

(assert (=> b!459510 (= lt!204902 (maxPrefix!469 thiss!17480 rules!1920 lt!204880))))

(declare-fun b!459511 () Bool)

(declare-fun res!204371 () Bool)

(assert (=> b!459511 (=> res!204371 e!281384)))

(declare-fun isEmpty!3445 (BalanceConc!3122) Bool)

(assert (=> b!459511 (= res!204371 (isEmpty!3445 (_1!2937 (lex!545 thiss!17480 rules!1920 (seqFromList!1100 lt!204881)))))))

(declare-fun e!281364 () Bool)

(declare-fun tp!127230 () Bool)

(declare-fun b!459512 () Bool)

(assert (=> b!459512 (= e!281369 (and (inv!5541 (h!9858 tokens!465)) e!281364 tp!127230))))

(declare-fun b!459513 () Bool)

(assert (=> b!459513 (= e!281365 e!281372)))

(declare-fun res!204363 () Bool)

(assert (=> b!459513 (=> res!204363 e!281372)))

(assert (=> b!459513 (= res!204363 lt!204898)))

(assert (=> b!459513 e!281379))

(declare-fun res!204364 () Bool)

(assert (=> b!459513 (=> (not res!204364) (not e!281379))))

(assert (=> b!459513 (= res!204364 (= (_1!2936 lt!204890) (h!9858 tokens!465)))))

(declare-fun lt!204896 () Option!1169)

(assert (=> b!459513 (= lt!204890 (get!1638 lt!204896))))

(assert (=> b!459513 (isDefined!1008 lt!204896)))

(assert (=> b!459513 (= lt!204896 (maxPrefix!469 thiss!17480 rules!1920 lt!204881))))

(declare-fun b!459514 () Bool)

(declare-fun res!204378 () Bool)

(assert (=> b!459514 (=> (not res!204378) (not e!281363))))

(assert (=> b!459514 (= res!204378 (rulesProduceIndividualToken!502 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!127232 () Bool)

(declare-fun b!459515 () Bool)

(assert (=> b!459515 (= e!281364 (and (inv!21 (value!29025 (h!9858 tokens!465))) e!281360 tp!127232))))

(declare-fun b!459516 () Bool)

(declare-fun res!204373 () Bool)

(assert (=> b!459516 (=> (not res!204373) (not e!281363))))

(assert (=> b!459516 (= res!204373 ((_ is Cons!4461) tokens!465))))

(declare-fun b!459517 () Bool)

(declare-fun tp!127229 () Bool)

(assert (=> b!459517 (= e!281383 (and tp!127229 (inv!5538 (tag!1127 (rule!1562 separatorToken!170))) (inv!5542 (transformation!867 (rule!1562 separatorToken!170))) e!281375))))

(assert (= (and start!43674 res!204367) b!459489))

(assert (= (and b!459489 res!204369) b!459491))

(assert (= (and b!459491 res!204375) b!459485))

(assert (= (and b!459485 res!204370) b!459514))

(assert (= (and b!459514 res!204378) b!459505))

(assert (= (and b!459505 res!204376) b!459496))

(assert (= (and b!459496 res!204358) b!459497))

(assert (= (and b!459497 res!204372) b!459516))

(assert (= (and b!459516 res!204373) b!459504))

(assert (= (and b!459504 res!204362) b!459501))

(assert (= (and b!459501 res!204361) b!459508))

(assert (= (and b!459508 (not res!204365)) b!459493))

(assert (= (and b!459493 res!204368) b!459495))

(assert (= (and b!459493 (not res!204360)) b!459503))

(assert (= (and b!459503 (not res!204374)) b!459492))

(assert (= (and b!459492 (not res!204366)) b!459511))

(assert (= (and b!459511 (not res!204371)) b!459487))

(assert (= (and b!459487 (not res!204359)) b!459513))

(assert (= (and b!459513 res!204364) b!459509))

(assert (= (and b!459509 res!204377) b!459500))

(assert (= (and b!459513 (not res!204363)) b!459490))

(assert (= (and b!459490 (not res!204380)) b!459510))

(assert (= (and b!459510 res!204379) b!459506))

(assert (= b!459507 b!459486))

(assert (= b!459494 b!459507))

(assert (= (and start!43674 ((_ is Cons!4460) rules!1920)) b!459494))

(assert (= b!459517 b!459502))

(assert (= b!459498 b!459517))

(assert (= start!43674 b!459498))

(assert (= b!459499 b!459488))

(assert (= b!459515 b!459499))

(assert (= b!459512 b!459515))

(assert (= (and start!43674 ((_ is Cons!4461) tokens!465)) b!459512))

(declare-fun m!727457 () Bool)

(assert (=> b!459485 m!727457))

(declare-fun m!727459 () Bool)

(assert (=> b!459485 m!727459))

(declare-fun m!727461 () Bool)

(assert (=> b!459492 m!727461))

(declare-fun m!727463 () Bool)

(assert (=> b!459508 m!727463))

(declare-fun m!727465 () Bool)

(assert (=> b!459508 m!727465))

(declare-fun m!727467 () Bool)

(assert (=> b!459508 m!727467))

(declare-fun m!727469 () Bool)

(assert (=> b!459508 m!727469))

(declare-fun m!727471 () Bool)

(assert (=> b!459508 m!727471))

(declare-fun m!727473 () Bool)

(assert (=> b!459508 m!727473))

(declare-fun m!727475 () Bool)

(assert (=> b!459508 m!727475))

(declare-fun m!727477 () Bool)

(assert (=> b!459508 m!727477))

(declare-fun m!727479 () Bool)

(assert (=> b!459508 m!727479))

(assert (=> b!459508 m!727463))

(declare-fun m!727481 () Bool)

(assert (=> b!459508 m!727481))

(assert (=> b!459508 m!727477))

(assert (=> b!459508 m!727469))

(declare-fun m!727483 () Bool)

(assert (=> b!459508 m!727483))

(declare-fun m!727485 () Bool)

(assert (=> b!459508 m!727485))

(declare-fun m!727487 () Bool)

(assert (=> b!459508 m!727487))

(assert (=> b!459508 m!727473))

(declare-fun m!727489 () Bool)

(assert (=> b!459498 m!727489))

(declare-fun m!727491 () Bool)

(assert (=> b!459509 m!727491))

(declare-fun m!727493 () Bool)

(assert (=> b!459501 m!727493))

(assert (=> b!459501 m!727493))

(declare-fun m!727495 () Bool)

(assert (=> b!459501 m!727495))

(declare-fun m!727497 () Bool)

(assert (=> b!459500 m!727497))

(declare-fun m!727499 () Bool)

(assert (=> b!459512 m!727499))

(declare-fun m!727501 () Bool)

(assert (=> b!459497 m!727501))

(declare-fun m!727503 () Bool)

(assert (=> b!459514 m!727503))

(declare-fun m!727505 () Bool)

(assert (=> b!459510 m!727505))

(declare-fun m!727507 () Bool)

(assert (=> b!459510 m!727507))

(declare-fun m!727509 () Bool)

(assert (=> b!459487 m!727509))

(assert (=> b!459487 m!727509))

(declare-fun m!727511 () Bool)

(assert (=> b!459487 m!727511))

(assert (=> b!459487 m!727511))

(declare-fun m!727513 () Bool)

(assert (=> b!459487 m!727513))

(declare-fun m!727515 () Bool)

(assert (=> b!459487 m!727515))

(declare-fun m!727517 () Bool)

(assert (=> start!43674 m!727517))

(declare-fun m!727519 () Bool)

(assert (=> b!459499 m!727519))

(declare-fun m!727521 () Bool)

(assert (=> b!459499 m!727521))

(declare-fun m!727523 () Bool)

(assert (=> b!459490 m!727523))

(declare-fun m!727525 () Bool)

(assert (=> b!459490 m!727525))

(declare-fun m!727527 () Bool)

(assert (=> b!459490 m!727527))

(declare-fun m!727529 () Bool)

(assert (=> b!459490 m!727529))

(declare-fun m!727531 () Bool)

(assert (=> b!459490 m!727531))

(declare-fun m!727533 () Bool)

(assert (=> b!459490 m!727533))

(assert (=> b!459490 m!727531))

(declare-fun m!727535 () Bool)

(assert (=> b!459490 m!727535))

(declare-fun m!727537 () Bool)

(assert (=> b!459490 m!727537))

(declare-fun m!727539 () Bool)

(assert (=> b!459490 m!727539))

(assert (=> b!459490 m!727507))

(declare-fun m!727541 () Bool)

(assert (=> b!459490 m!727541))

(assert (=> b!459490 m!727537))

(declare-fun m!727543 () Bool)

(assert (=> b!459503 m!727543))

(declare-fun m!727545 () Bool)

(assert (=> b!459503 m!727545))

(declare-fun m!727547 () Bool)

(assert (=> b!459503 m!727547))

(declare-fun m!727549 () Bool)

(assert (=> b!459503 m!727549))

(declare-fun m!727551 () Bool)

(assert (=> b!459503 m!727551))

(declare-fun m!727553 () Bool)

(assert (=> b!459511 m!727553))

(assert (=> b!459511 m!727553))

(declare-fun m!727555 () Bool)

(assert (=> b!459511 m!727555))

(declare-fun m!727557 () Bool)

(assert (=> b!459511 m!727557))

(declare-fun m!727559 () Bool)

(assert (=> b!459491 m!727559))

(declare-fun m!727561 () Bool)

(assert (=> b!459489 m!727561))

(declare-fun m!727563 () Bool)

(assert (=> b!459515 m!727563))

(declare-fun m!727565 () Bool)

(assert (=> b!459504 m!727565))

(assert (=> b!459504 m!727565))

(declare-fun m!727567 () Bool)

(assert (=> b!459504 m!727567))

(declare-fun m!727569 () Bool)

(assert (=> b!459504 m!727569))

(declare-fun m!727571 () Bool)

(assert (=> b!459513 m!727571))

(declare-fun m!727573 () Bool)

(assert (=> b!459513 m!727573))

(declare-fun m!727575 () Bool)

(assert (=> b!459513 m!727575))

(declare-fun m!727577 () Bool)

(assert (=> b!459517 m!727577))

(declare-fun m!727579 () Bool)

(assert (=> b!459517 m!727579))

(assert (=> b!459495 m!727537))

(declare-fun m!727581 () Bool)

(assert (=> b!459507 m!727581))

(declare-fun m!727583 () Bool)

(assert (=> b!459507 m!727583))

(declare-fun m!727585 () Bool)

(assert (=> b!459496 m!727585))

(declare-fun m!727587 () Bool)

(assert (=> b!459506 m!727587))

(declare-fun m!727589 () Bool)

(assert (=> b!459506 m!727589))

(check-sat (not b!459500) (not b!459485) (not b!459517) (not b!459491) (not b!459508) b_and!49371 (not b!459498) (not b!459499) (not b_next!12835) (not b!459512) (not b_next!12841) b_and!49375 (not b_next!12839) (not b!459509) (not b!459507) (not b!459490) (not b!459504) b_and!49379 (not b!459497) (not b!459526) (not b!459510) b_and!49369 (not b!459492) (not b!459515) (not b!459496) (not b!459506) b_and!49377 (not b_next!12833) (not b!459494) (not b!459514) (not b!459495) (not start!43674) (not b_next!12843) (not b_next!12837) (not b!459503) (not b!459511) (not b!459501) (not b!459513) b_and!49373 (not b!459489) (not b!459487))
(check-sat (not b_next!12839) b_and!49379 b_and!49369 (not b_next!12843) b_and!49371 (not b_next!12837) b_and!49373 (not b_next!12835) (not b_next!12841) b_and!49375 b_and!49377 (not b_next!12833))
