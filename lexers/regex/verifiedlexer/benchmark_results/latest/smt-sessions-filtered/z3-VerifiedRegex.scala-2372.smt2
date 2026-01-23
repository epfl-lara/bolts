; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118646 () Bool)

(assert start!118646)

(declare-fun b!1333700 () Bool)

(declare-fun b_free!32339 () Bool)

(declare-fun b_next!33043 () Bool)

(assert (=> b!1333700 (= b_free!32339 (not b_next!33043))))

(declare-fun tp!385700 () Bool)

(declare-fun b_and!89103 () Bool)

(assert (=> b!1333700 (= tp!385700 b_and!89103)))

(declare-fun b_free!32341 () Bool)

(declare-fun b_next!33045 () Bool)

(assert (=> b!1333700 (= b_free!32341 (not b_next!33045))))

(declare-fun tp!385691 () Bool)

(declare-fun b_and!89105 () Bool)

(assert (=> b!1333700 (= tp!385691 b_and!89105)))

(declare-fun b!1333718 () Bool)

(declare-fun b_free!32343 () Bool)

(declare-fun b_next!33047 () Bool)

(assert (=> b!1333718 (= b_free!32343 (not b_next!33047))))

(declare-fun tp!385699 () Bool)

(declare-fun b_and!89107 () Bool)

(assert (=> b!1333718 (= tp!385699 b_and!89107)))

(declare-fun b_free!32345 () Bool)

(declare-fun b_next!33049 () Bool)

(assert (=> b!1333718 (= b_free!32345 (not b_next!33049))))

(declare-fun tp!385697 () Bool)

(declare-fun b_and!89109 () Bool)

(assert (=> b!1333718 (= tp!385697 b_and!89109)))

(declare-fun b!1333707 () Bool)

(declare-fun b_free!32347 () Bool)

(declare-fun b_next!33051 () Bool)

(assert (=> b!1333707 (= b_free!32347 (not b_next!33051))))

(declare-fun tp!385698 () Bool)

(declare-fun b_and!89111 () Bool)

(assert (=> b!1333707 (= tp!385698 b_and!89111)))

(declare-fun b_free!32349 () Bool)

(declare-fun b_next!33053 () Bool)

(assert (=> b!1333707 (= b_free!32349 (not b_next!33053))))

(declare-fun tp!385690 () Bool)

(declare-fun b_and!89113 () Bool)

(assert (=> b!1333707 (= tp!385690 b_and!89113)))

(declare-fun b!1333685 () Bool)

(assert (=> b!1333685 true))

(assert (=> b!1333685 true))

(declare-fun b!1333719 () Bool)

(assert (=> b!1333719 true))

(declare-fun b!1333696 () Bool)

(assert (=> b!1333696 true))

(declare-fun bs!331812 () Bool)

(declare-fun b!1333697 () Bool)

(assert (= bs!331812 (and b!1333697 b!1333696)))

(declare-fun lambda!55829 () Int)

(declare-fun lambda!55828 () Int)

(assert (=> bs!331812 (not (= lambda!55829 lambda!55828))))

(assert (=> b!1333697 true))

(declare-fun b!1333672 () Bool)

(declare-datatypes ((Unit!19722 0))(
  ( (Unit!19723) )
))
(declare-fun e!854358 () Unit!19722)

(declare-fun Unit!19724 () Unit!19722)

(assert (=> b!1333672 (= e!854358 Unit!19724)))

(declare-fun b!1333673 () Bool)

(declare-fun e!854347 () Bool)

(declare-fun e!854334 () Bool)

(assert (=> b!1333673 (= e!854347 e!854334)))

(declare-fun res!601406 () Bool)

(assert (=> b!1333673 (=> (not res!601406) (not e!854334))))

(declare-datatypes ((C!7624 0))(
  ( (C!7625 (val!4372 Int)) )
))
(declare-datatypes ((List!13650 0))(
  ( (Nil!13584) (Cons!13584 (h!18985 C!7624) (t!119095 List!13650)) )
))
(declare-datatypes ((IArray!8957 0))(
  ( (IArray!8958 (innerList!4536 List!13650)) )
))
(declare-datatypes ((Conc!4476 0))(
  ( (Node!4476 (left!11666 Conc!4476) (right!11996 Conc!4476) (csize!9182 Int) (cheight!4687 Int)) (Leaf!6849 (xs!7191 IArray!8957) (csize!9183 Int)) (Empty!4476) )
))
(declare-datatypes ((BalanceConc!8892 0))(
  ( (BalanceConc!8893 (c!218454 Conc!4476)) )
))
(declare-fun lt!441637 () BalanceConc!8892)

(declare-fun size!11060 (BalanceConc!8892) Int)

(assert (=> b!1333673 (= res!601406 (> (size!11060 lt!441637) 0))))

(declare-datatypes ((List!13651 0))(
  ( (Nil!13585) (Cons!13585 (h!18986 (_ BitVec 16)) (t!119096 List!13651)) )
))
(declare-datatypes ((TokenValue!2443 0))(
  ( (FloatLiteralValue!4886 (text!17546 List!13651)) (TokenValueExt!2442 (__x!8715 Int)) (Broken!12215 (value!76667 List!13651)) (Object!2508) (End!2443) (Def!2443) (Underscore!2443) (Match!2443) (Else!2443) (Error!2443) (Case!2443) (If!2443) (Extends!2443) (Abstract!2443) (Class!2443) (Val!2443) (DelimiterValue!4886 (del!2503 List!13651)) (KeywordValue!2449 (value!76668 List!13651)) (CommentValue!4886 (value!76669 List!13651)) (WhitespaceValue!4886 (value!76670 List!13651)) (IndentationValue!2443 (value!76671 List!13651)) (String!16450) (Int32!2443) (Broken!12216 (value!76672 List!13651)) (Boolean!2444) (Unit!19725) (OperatorValue!2446 (op!2503 List!13651)) (IdentifierValue!4886 (value!76673 List!13651)) (IdentifierValue!4887 (value!76674 List!13651)) (WhitespaceValue!4887 (value!76675 List!13651)) (True!4886) (False!4886) (Broken!12217 (value!76676 List!13651)) (Broken!12218 (value!76677 List!13651)) (True!4887) (RightBrace!2443) (RightBracket!2443) (Colon!2443) (Null!2443) (Comma!2443) (LeftBracket!2443) (False!4887) (LeftBrace!2443) (ImaginaryLiteralValue!2443 (text!17547 List!13651)) (StringLiteralValue!7329 (value!76678 List!13651)) (EOFValue!2443 (value!76679 List!13651)) (IdentValue!2443 (value!76680 List!13651)) (DelimiterValue!4887 (value!76681 List!13651)) (DedentValue!2443 (value!76682 List!13651)) (NewLineValue!2443 (value!76683 List!13651)) (IntegerValue!7329 (value!76684 (_ BitVec 32)) (text!17548 List!13651)) (IntegerValue!7330 (value!76685 Int) (text!17549 List!13651)) (Times!2443) (Or!2443) (Equal!2443) (Minus!2443) (Broken!12219 (value!76686 List!13651)) (And!2443) (Div!2443) (LessEqual!2443) (Mod!2443) (Concat!6110) (Not!2443) (Plus!2443) (SpaceValue!2443 (value!76687 List!13651)) (IntegerValue!7331 (value!76688 Int) (text!17550 List!13651)) (StringLiteralValue!7330 (text!17551 List!13651)) (FloatLiteralValue!4887 (text!17552 List!13651)) (BytesLiteralValue!2443 (value!76689 List!13651)) (CommentValue!4887 (value!76690 List!13651)) (StringLiteralValue!7331 (value!76691 List!13651)) (ErrorTokenValue!2443 (msg!2504 List!13651)) )
))
(declare-datatypes ((Regex!3667 0))(
  ( (ElementMatch!3667 (c!218455 C!7624)) (Concat!6111 (regOne!7846 Regex!3667) (regTwo!7846 Regex!3667)) (EmptyExpr!3667) (Star!3667 (reg!3996 Regex!3667)) (EmptyLang!3667) (Union!3667 (regOne!7847 Regex!3667) (regTwo!7847 Regex!3667)) )
))
(declare-datatypes ((String!16451 0))(
  ( (String!16452 (value!76692 String)) )
))
(declare-datatypes ((TokenValueInjection!4546 0))(
  ( (TokenValueInjection!4547 (toValue!3584 Int) (toChars!3443 Int)) )
))
(declare-datatypes ((Rule!4506 0))(
  ( (Rule!4507 (regex!2353 Regex!3667) (tag!2615 String!16451) (isSeparator!2353 Bool) (transformation!2353 TokenValueInjection!4546)) )
))
(declare-datatypes ((Token!4368 0))(
  ( (Token!4369 (value!76693 TokenValue!2443) (rule!4098 Rule!4506) (size!11061 Int) (originalCharacters!3215 List!13650)) )
))
(declare-fun t2!34 () Token!4368)

(declare-fun charsOf!1325 (Token!4368) BalanceConc!8892)

(assert (=> b!1333673 (= lt!441637 (charsOf!1325 t2!34))))

(declare-fun b!1333674 () Bool)

(declare-fun e!854329 () Bool)

(declare-fun e!854326 () Bool)

(assert (=> b!1333674 (= e!854329 e!854326)))

(declare-fun res!601382 () Bool)

(assert (=> b!1333674 (=> res!601382 e!854326)))

(declare-datatypes ((List!13652 0))(
  ( (Nil!13586) (Cons!13586 (h!18987 Token!4368) (t!119097 List!13652)) )
))
(declare-datatypes ((IArray!8959 0))(
  ( (IArray!8960 (innerList!4537 List!13652)) )
))
(declare-datatypes ((Conc!4477 0))(
  ( (Node!4477 (left!11667 Conc!4477) (right!11997 Conc!4477) (csize!9184 Int) (cheight!4688 Int)) (Leaf!6850 (xs!7192 IArray!8959) (csize!9185 Int)) (Empty!4477) )
))
(declare-datatypes ((BalanceConc!8894 0))(
  ( (BalanceConc!8895 (c!218456 Conc!4477)) )
))
(declare-datatypes ((tuple2!13238 0))(
  ( (tuple2!13239 (_1!7505 BalanceConc!8894) (_2!7505 BalanceConc!8892)) )
))
(declare-fun lt!441646 () tuple2!13238)

(declare-fun lt!441628 () List!13652)

(declare-fun list!5158 (BalanceConc!8894) List!13652)

(assert (=> b!1333674 (= res!601382 (not (= (list!5158 (_1!7505 lt!441646)) lt!441628)))))

(assert (=> b!1333674 (= lt!441628 (Cons!13586 t2!34 Nil!13586))))

(declare-fun lt!441621 () BalanceConc!8892)

(declare-datatypes ((List!13653 0))(
  ( (Nil!13587) (Cons!13587 (h!18988 Rule!4506) (t!119098 List!13653)) )
))
(declare-fun rules!2550 () List!13653)

(declare-datatypes ((LexerInterface!2048 0))(
  ( (LexerInterfaceExt!2045 (__x!8716 Int)) (Lexer!2046) )
))
(declare-fun thiss!19762 () LexerInterface!2048)

(declare-fun lex!883 (LexerInterface!2048 List!13653 BalanceConc!8892) tuple2!13238)

(assert (=> b!1333674 (= lt!441646 (lex!883 thiss!19762 rules!2550 lt!441621))))

(declare-fun print!822 (LexerInterface!2048 BalanceConc!8894) BalanceConc!8892)

(declare-fun singletonSeq!952 (Token!4368) BalanceConc!8894)

(assert (=> b!1333674 (= lt!441621 (print!822 thiss!19762 (singletonSeq!952 t2!34)))))

(declare-fun b!1333675 () Bool)

(declare-fun Unit!19726 () Unit!19722)

(assert (=> b!1333675 (= e!854358 Unit!19726)))

(declare-fun lt!441622 () Unit!19722)

(declare-fun lt!441626 () List!13650)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!164 (Regex!3667 List!13650 C!7624) Unit!19722)

(declare-fun head!2359 (List!13650) C!7624)

(assert (=> b!1333675 (= lt!441622 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!164 (regex!2353 (rule!4098 t2!34)) lt!441626 (head!2359 lt!441626)))))

(assert (=> b!1333675 false))

(declare-fun b!1333676 () Bool)

(declare-fun res!601396 () Bool)

(assert (=> b!1333676 (=> (not res!601396) (not e!854347))))

(declare-fun rulesProduceIndividualToken!1017 (LexerInterface!2048 List!13653 Token!4368) Bool)

(assert (=> b!1333676 (= res!601396 (rulesProduceIndividualToken!1017 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1333677 () Bool)

(declare-fun res!601405 () Bool)

(assert (=> b!1333677 (=> (not res!601405) (not e!854347))))

(declare-fun isEmpty!8102 (List!13653) Bool)

(assert (=> b!1333677 (= res!601405 (not (isEmpty!8102 rules!2550)))))

(declare-fun b!1333678 () Bool)

(declare-fun res!601403 () Bool)

(assert (=> b!1333678 (=> (not res!601403) (not e!854334))))

(declare-fun sepAndNonSepRulesDisjointChars!726 (List!13653 List!13653) Bool)

(assert (=> b!1333678 (= res!601403 (sepAndNonSepRulesDisjointChars!726 rules!2550 rules!2550))))

(declare-fun e!854331 () Bool)

(declare-fun b!1333679 () Bool)

(declare-fun e!854342 () Bool)

(declare-fun tp!385694 () Bool)

(declare-fun inv!17917 (String!16451) Bool)

(declare-fun inv!17920 (TokenValueInjection!4546) Bool)

(assert (=> b!1333679 (= e!854342 (and tp!385694 (inv!17917 (tag!2615 (rule!4098 t2!34))) (inv!17920 (transformation!2353 (rule!4098 t2!34))) e!854331))))

(declare-fun b!1333680 () Bool)

(declare-fun res!601399 () Bool)

(assert (=> b!1333680 (=> (not res!601399) (not e!854347))))

(declare-fun t1!34 () Token!4368)

(assert (=> b!1333680 (= res!601399 (not (= (isSeparator!2353 (rule!4098 t1!34)) (isSeparator!2353 (rule!4098 t2!34)))))))

(declare-fun b!1333681 () Bool)

(declare-fun res!601375 () Bool)

(declare-fun e!854336 () Bool)

(assert (=> b!1333681 (=> res!601375 e!854336)))

(declare-fun contains!2475 (List!13653 Rule!4506) Bool)

(assert (=> b!1333681 (= res!601375 (not (contains!2475 rules!2550 (rule!4098 t2!34))))))

(declare-fun b!1333682 () Bool)

(declare-fun res!601398 () Bool)

(assert (=> b!1333682 (=> (not res!601398) (not e!854347))))

(declare-fun rulesInvariant!1918 (LexerInterface!2048 List!13653) Bool)

(assert (=> b!1333682 (= res!601398 (rulesInvariant!1918 thiss!19762 rules!2550))))

(declare-fun b!1333683 () Bool)

(declare-fun e!854339 () Bool)

(declare-fun e!854354 () Bool)

(assert (=> b!1333683 (= e!854339 e!854354)))

(declare-fun res!601392 () Bool)

(assert (=> b!1333683 (=> res!601392 e!854354)))

(declare-fun lt!441620 () Rule!4506)

(assert (=> b!1333683 (= res!601392 (or (isSeparator!2353 lt!441620) (isSeparator!2353 (rule!4098 t1!34))))))

(declare-fun lt!441642 () Regex!3667)

(assert (=> b!1333683 (= (regex!2353 lt!441620) lt!441642)))

(declare-fun b!1333684 () Bool)

(declare-fun res!601400 () Bool)

(assert (=> b!1333684 (=> res!601400 e!854329)))

(declare-fun lt!441641 () List!13650)

(declare-datatypes ((tuple2!13240 0))(
  ( (tuple2!13241 (_1!7506 Token!4368) (_2!7506 List!13650)) )
))
(declare-datatypes ((Option!2624 0))(
  ( (None!2623) (Some!2623 (v!21260 tuple2!13240)) )
))
(declare-fun maxPrefix!1058 (LexerInterface!2048 List!13653 List!13650) Option!2624)

(assert (=> b!1333684 (= res!601400 (not (= (maxPrefix!1058 thiss!19762 rules!2550 lt!441641) (Some!2623 (tuple2!13241 t1!34 Nil!13584)))))))

(declare-fun e!854352 () Bool)

(declare-fun e!854332 () Bool)

(assert (=> b!1333685 (= e!854352 (not e!854332))))

(declare-fun res!601407 () Bool)

(assert (=> b!1333685 (=> res!601407 e!854332)))

(declare-fun lambda!55825 () Int)

(declare-fun Exists!825 (Int) Bool)

(assert (=> b!1333685 (= res!601407 (not (Exists!825 lambda!55825)))))

(assert (=> b!1333685 (Exists!825 lambda!55825)))

(declare-fun lt!441617 () Unit!19722)

(declare-fun lt!441647 () Regex!3667)

(declare-fun lt!441643 () List!13650)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!143 (Regex!3667 List!13650) Unit!19722)

(assert (=> b!1333685 (= lt!441617 (lemmaPrefixMatchThenExistsStringThatMatches!143 lt!441647 lt!441643))))

(declare-fun res!601376 () Bool)

(assert (=> start!118646 (=> (not res!601376) (not e!854347))))

(get-info :version)

(assert (=> start!118646 (= res!601376 ((_ is Lexer!2046) thiss!19762))))

(assert (=> start!118646 e!854347))

(assert (=> start!118646 true))

(declare-fun e!854348 () Bool)

(assert (=> start!118646 e!854348))

(declare-fun e!854344 () Bool)

(declare-fun inv!17921 (Token!4368) Bool)

(assert (=> start!118646 (and (inv!17921 t1!34) e!854344)))

(declare-fun e!854355 () Bool)

(assert (=> start!118646 (and (inv!17921 t2!34) e!854355)))

(declare-fun b!1333686 () Bool)

(declare-fun e!854345 () Bool)

(assert (=> b!1333686 (= e!854345 true)))

(declare-fun lt!441636 () Bool)

(declare-fun lt!441633 () C!7624)

(declare-fun contains!2476 (List!13650 C!7624) Bool)

(declare-fun usedCharacters!218 (Regex!3667) List!13650)

(assert (=> b!1333686 (= lt!441636 (contains!2476 (usedCharacters!218 lt!441642) lt!441633))))

(declare-fun tp!385692 () Bool)

(declare-fun b!1333687 () Bool)

(declare-fun inv!21 (TokenValue!2443) Bool)

(assert (=> b!1333687 (= e!854355 (and (inv!21 (value!76693 t2!34)) e!854342 tp!385692))))

(declare-fun b!1333688 () Bool)

(declare-fun res!601394 () Bool)

(declare-fun e!854338 () Bool)

(assert (=> b!1333688 (=> res!601394 e!854338)))

(declare-fun lt!441627 () List!13650)

(declare-fun lt!441623 () C!7624)

(assert (=> b!1333688 (= res!601394 (not (contains!2476 lt!441627 lt!441623)))))

(declare-fun b!1333689 () Bool)

(declare-fun e!854333 () Bool)

(declare-fun tp!385693 () Bool)

(assert (=> b!1333689 (= e!854348 (and e!854333 tp!385693))))

(declare-fun b!1333690 () Bool)

(declare-fun e!854346 () Bool)

(declare-fun e!854337 () Bool)

(assert (=> b!1333690 (= e!854346 e!854337)))

(declare-fun res!601391 () Bool)

(assert (=> b!1333690 (=> res!601391 e!854337)))

(declare-fun lambda!55826 () Int)

(declare-datatypes ((List!13654 0))(
  ( (Nil!13588) (Cons!13588 (h!18989 Regex!3667) (t!119099 List!13654)) )
))
(declare-fun contains!2477 (List!13654 Regex!3667) Bool)

(declare-fun map!2996 (List!13653 Int) List!13654)

(assert (=> b!1333690 (= res!601391 (not (contains!2477 (map!2996 rules!2550 lambda!55826) lt!441642)))))

(declare-fun lambda!55827 () Int)

(declare-fun getWitness!300 (List!13654 Int) Regex!3667)

(assert (=> b!1333690 (= lt!441642 (getWitness!300 (map!2996 rules!2550 lambda!55826) lambda!55827))))

(declare-fun b!1333691 () Bool)

(declare-fun res!601383 () Bool)

(assert (=> b!1333691 (=> res!601383 e!854329)))

(declare-fun lt!441634 () tuple2!13238)

(declare-fun isEmpty!8103 (BalanceConc!8892) Bool)

(assert (=> b!1333691 (= res!601383 (not (isEmpty!8103 (_2!7505 lt!441634))))))

(declare-fun b!1333692 () Bool)

(declare-fun res!601395 () Bool)

(assert (=> b!1333692 (=> (not res!601395) (not e!854347))))

(assert (=> b!1333692 (= res!601395 (rulesProduceIndividualToken!1017 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1333693 () Bool)

(declare-fun e!854343 () Unit!19722)

(declare-fun Unit!19727 () Unit!19722)

(assert (=> b!1333693 (= e!854343 Unit!19727)))

(declare-fun e!854328 () Bool)

(declare-fun tp!385695 () Bool)

(declare-fun e!854335 () Bool)

(declare-fun b!1333694 () Bool)

(assert (=> b!1333694 (= e!854335 (and tp!385695 (inv!17917 (tag!2615 (rule!4098 t1!34))) (inv!17920 (transformation!2353 (rule!4098 t1!34))) e!854328))))

(declare-fun b!1333695 () Bool)

(declare-fun e!854357 () Bool)

(assert (=> b!1333695 (= e!854332 e!854357)))

(declare-fun res!601401 () Bool)

(assert (=> b!1333695 (=> res!601401 e!854357)))

(declare-fun ++!3470 (List!13650 List!13650) List!13650)

(declare-fun getSuffix!523 (List!13650 List!13650) List!13650)

(assert (=> b!1333695 (= res!601401 (not (= lt!441627 (++!3470 lt!441643 (getSuffix!523 lt!441627 lt!441643)))))))

(declare-fun pickWitness!130 (Int) List!13650)

(assert (=> b!1333695 (= lt!441627 (pickWitness!130 lambda!55825))))

(declare-fun e!854350 () Bool)

(assert (=> b!1333696 (= e!854337 e!854350)))

(declare-fun res!601380 () Bool)

(assert (=> b!1333696 (=> res!601380 e!854350)))

(declare-fun exists!408 (List!13653 Int) Bool)

(assert (=> b!1333696 (= res!601380 (not (exists!408 rules!2550 lambda!55828)))))

(assert (=> b!1333696 (exists!408 rules!2550 lambda!55828)))

(declare-fun lt!441648 () Unit!19722)

(declare-fun lemmaMapContains!96 (List!13653 Int Regex!3667) Unit!19722)

(assert (=> b!1333696 (= lt!441648 (lemmaMapContains!96 rules!2550 lambda!55826 lt!441642))))

(declare-fun e!854351 () Bool)

(assert (=> b!1333697 (= e!854336 e!854351)))

(declare-fun res!601378 () Bool)

(assert (=> b!1333697 (=> res!601378 e!854351)))

(declare-fun matchR!1669 (Regex!3667 List!13650) Bool)

(assert (=> b!1333697 (= res!601378 (not (matchR!1669 (regex!2353 (rule!4098 t1!34)) lt!441641)))))

(declare-fun lt!441629 () Unit!19722)

(declare-fun forallContained!604 (List!13653 Int Rule!4506) Unit!19722)

(assert (=> b!1333697 (= lt!441629 (forallContained!604 rules!2550 lambda!55829 (rule!4098 t2!34)))))

(declare-fun lt!441645 () Unit!19722)

(assert (=> b!1333697 (= lt!441645 (forallContained!604 rules!2550 lambda!55829 (rule!4098 t1!34)))))

(declare-fun lt!441640 () Unit!19722)

(assert (=> b!1333697 (= lt!441640 (forallContained!604 rules!2550 lambda!55829 lt!441620))))

(declare-fun b!1333698 () Bool)

(assert (=> b!1333698 (= e!854326 e!854336)))

(declare-fun res!601404 () Bool)

(assert (=> b!1333698 (=> res!601404 e!854336)))

(assert (=> b!1333698 (= res!601404 (not (= (maxPrefix!1058 thiss!19762 rules!2550 lt!441626) (Some!2623 (tuple2!13241 t2!34 Nil!13584)))))))

(declare-fun list!5159 (BalanceConc!8892) List!13650)

(assert (=> b!1333698 (= lt!441626 (list!5159 lt!441637))))

(declare-fun b!1333699 () Bool)

(assert (=> b!1333699 (= e!854334 e!854352)))

(declare-fun res!601402 () Bool)

(assert (=> b!1333699 (=> (not res!601402) (not e!854352))))

(declare-fun prefixMatch!180 (Regex!3667 List!13650) Bool)

(assert (=> b!1333699 (= res!601402 (prefixMatch!180 lt!441647 lt!441643))))

(declare-fun rulesRegex!238 (LexerInterface!2048 List!13653) Regex!3667)

(assert (=> b!1333699 (= lt!441647 (rulesRegex!238 thiss!19762 rules!2550))))

(assert (=> b!1333699 (= lt!441643 (++!3470 lt!441641 (Cons!13584 lt!441633 Nil!13584)))))

(declare-fun apply!3163 (BalanceConc!8892 Int) C!7624)

(assert (=> b!1333699 (= lt!441633 (apply!3163 lt!441637 0))))

(declare-fun lt!441632 () BalanceConc!8892)

(assert (=> b!1333699 (= lt!441641 (list!5159 lt!441632))))

(assert (=> b!1333699 (= lt!441632 (charsOf!1325 t1!34))))

(assert (=> b!1333700 (= e!854328 (and tp!385700 tp!385691))))

(declare-fun b!1333701 () Bool)

(declare-fun res!601390 () Bool)

(assert (=> b!1333701 (=> res!601390 e!854338)))

(assert (=> b!1333701 (= res!601390 (not (contains!2476 lt!441643 lt!441633)))))

(declare-fun tp!385689 () Bool)

(declare-fun b!1333702 () Bool)

(assert (=> b!1333702 (= e!854344 (and (inv!21 (value!76693 t1!34)) e!854335 tp!385689))))

(declare-fun b!1333703 () Bool)

(declare-fun res!601397 () Bool)

(assert (=> b!1333703 (=> res!601397 e!854336)))

(assert (=> b!1333703 (= res!601397 (not (contains!2475 rules!2550 lt!441620)))))

(declare-fun b!1333704 () Bool)

(declare-fun e!854353 () Bool)

(assert (=> b!1333704 (= e!854353 e!854339)))

(declare-fun res!601389 () Bool)

(assert (=> b!1333704 (=> res!601389 e!854339)))

(declare-fun lt!441625 () Bool)

(assert (=> b!1333704 (= res!601389 lt!441625)))

(declare-fun lt!441644 () Unit!19722)

(assert (=> b!1333704 (= lt!441644 e!854358)))

(declare-fun c!218452 () Bool)

(assert (=> b!1333704 (= c!218452 lt!441625)))

(assert (=> b!1333704 (= lt!441625 (not (contains!2476 (usedCharacters!218 (regex!2353 (rule!4098 t2!34))) lt!441633)))))

(declare-fun b!1333705 () Bool)

(declare-fun Unit!19728 () Unit!19722)

(assert (=> b!1333705 (= e!854343 Unit!19728)))

(declare-fun lt!441630 () Unit!19722)

(assert (=> b!1333705 (= lt!441630 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!164 (regex!2353 (rule!4098 t1!34)) lt!441641 (head!2359 lt!441641)))))

(assert (=> b!1333705 false))

(declare-fun b!1333706 () Bool)

(declare-fun e!854340 () Bool)

(declare-fun tp!385696 () Bool)

(assert (=> b!1333706 (= e!854333 (and tp!385696 (inv!17917 (tag!2615 (h!18988 rules!2550))) (inv!17920 (transformation!2353 (h!18988 rules!2550))) e!854340))))

(assert (=> b!1333707 (= e!854331 (and tp!385698 tp!385690))))

(declare-fun b!1333708 () Bool)

(declare-fun res!601381 () Bool)

(assert (=> b!1333708 (=> res!601381 e!854338)))

(assert (=> b!1333708 (= res!601381 (not (contains!2476 lt!441627 lt!441633)))))

(declare-fun b!1333709 () Bool)

(declare-fun res!601388 () Bool)

(assert (=> b!1333709 (=> res!601388 e!854329)))

(declare-fun lt!441631 () List!13652)

(declare-fun lt!441635 () BalanceConc!8892)

(declare-datatypes ((tuple2!13242 0))(
  ( (tuple2!13243 (_1!7507 List!13652) (_2!7507 List!13650)) )
))
(declare-fun lexList!586 (LexerInterface!2048 List!13653 List!13650) tuple2!13242)

(assert (=> b!1333709 (= res!601388 (not (= (lexList!586 thiss!19762 rules!2550 (list!5159 lt!441635)) (tuple2!13243 lt!441631 Nil!13584))))))

(declare-fun b!1333710 () Bool)

(declare-fun res!601379 () Bool)

(assert (=> b!1333710 (=> res!601379 e!854338)))

(assert (=> b!1333710 (= res!601379 (not (matchR!1669 lt!441647 lt!441627)))))

(declare-fun b!1333711 () Bool)

(assert (=> b!1333711 (= e!854354 e!854345)))

(declare-fun res!601385 () Bool)

(assert (=> b!1333711 (=> res!601385 e!854345)))

(declare-fun validRegex!1579 (Regex!3667) Bool)

(assert (=> b!1333711 (= res!601385 (not (validRegex!1579 lt!441642)))))

(assert (=> b!1333711 (not (contains!2476 (usedCharacters!218 (regex!2353 lt!441620)) lt!441633))))

(declare-fun lt!441639 () Unit!19722)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!8 (LexerInterface!2048 List!13653 List!13653 Rule!4506 Rule!4506 C!7624) Unit!19722)

(assert (=> b!1333711 (= lt!441639 (lemmaNonSepRuleNotContainsCharContainedInASepRule!8 thiss!19762 rules!2550 rules!2550 lt!441620 (rule!4098 t2!34) lt!441633))))

(declare-fun b!1333712 () Bool)

(declare-fun res!601372 () Bool)

(assert (=> b!1333712 (=> res!601372 e!854326)))

(assert (=> b!1333712 (= res!601372 (not (= (lexList!586 thiss!19762 rules!2550 (list!5159 lt!441621)) (tuple2!13243 lt!441628 Nil!13584))))))

(declare-fun b!1333713 () Bool)

(declare-fun res!601384 () Bool)

(assert (=> b!1333713 (=> res!601384 e!854329)))

(assert (=> b!1333713 (= res!601384 (not (contains!2475 rules!2550 (rule!4098 t1!34))))))

(declare-fun b!1333714 () Bool)

(assert (=> b!1333714 (= e!854351 e!854353)))

(declare-fun res!601373 () Bool)

(assert (=> b!1333714 (=> res!601373 e!854353)))

(declare-fun lt!441618 () Bool)

(assert (=> b!1333714 (= res!601373 lt!441618)))

(declare-fun lt!441619 () Unit!19722)

(assert (=> b!1333714 (= lt!441619 e!854343)))

(declare-fun c!218453 () Bool)

(assert (=> b!1333714 (= c!218453 lt!441618)))

(assert (=> b!1333714 (= lt!441618 (not (contains!2476 (usedCharacters!218 (regex!2353 (rule!4098 t1!34))) lt!441623)))))

(declare-fun b!1333715 () Bool)

(declare-fun res!601374 () Bool)

(assert (=> b!1333715 (=> (not res!601374) (not e!854334))))

(declare-fun separableTokensPredicate!331 (LexerInterface!2048 Token!4368 Token!4368 List!13653) Bool)

(assert (=> b!1333715 (= res!601374 (not (separableTokensPredicate!331 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1333716 () Bool)

(assert (=> b!1333716 (= e!854350 e!854329)))

(declare-fun res!601371 () Bool)

(assert (=> b!1333716 (=> res!601371 e!854329)))

(assert (=> b!1333716 (= res!601371 (not (= (list!5158 (_1!7505 lt!441634)) lt!441631)))))

(assert (=> b!1333716 (= lt!441631 (Cons!13586 t1!34 Nil!13586))))

(assert (=> b!1333716 (= lt!441634 (lex!883 thiss!19762 rules!2550 lt!441635))))

(assert (=> b!1333716 (= lt!441635 (print!822 thiss!19762 (singletonSeq!952 t1!34)))))

(declare-fun getWitness!301 (List!13653 Int) Rule!4506)

(assert (=> b!1333716 (= lt!441620 (getWitness!301 rules!2550 lambda!55828))))

(declare-fun b!1333717 () Bool)

(assert (=> b!1333717 (= e!854357 e!854338)))

(declare-fun res!601393 () Bool)

(assert (=> b!1333717 (=> res!601393 e!854338)))

(assert (=> b!1333717 (= res!601393 (not (contains!2476 lt!441643 lt!441623)))))

(assert (=> b!1333717 (= lt!441623 (apply!3163 lt!441632 0))))

(assert (=> b!1333718 (= e!854340 (and tp!385699 tp!385697))))

(assert (=> b!1333719 (= e!854338 e!854346)))

(declare-fun res!601377 () Bool)

(assert (=> b!1333719 (=> res!601377 e!854346)))

(declare-fun exists!409 (List!13654 Int) Bool)

(assert (=> b!1333719 (= res!601377 (not (exists!409 (map!2996 rules!2550 lambda!55826) lambda!55827)))))

(declare-fun lt!441638 () List!13654)

(assert (=> b!1333719 (exists!409 lt!441638 lambda!55827)))

(declare-fun lt!441624 () Unit!19722)

(declare-fun matchRGenUnionSpec!104 (Regex!3667 List!13654 List!13650) Unit!19722)

(assert (=> b!1333719 (= lt!441624 (matchRGenUnionSpec!104 lt!441647 lt!441638 lt!441627))))

(assert (=> b!1333719 (= lt!441638 (map!2996 rules!2550 lambda!55826))))

(declare-fun b!1333720 () Bool)

(declare-fun res!601386 () Bool)

(assert (=> b!1333720 (=> res!601386 e!854326)))

(assert (=> b!1333720 (= res!601386 (not (isEmpty!8103 (_2!7505 lt!441646))))))

(declare-fun b!1333721 () Bool)

(declare-fun res!601387 () Bool)

(assert (=> b!1333721 (=> res!601387 e!854351)))

(assert (=> b!1333721 (= res!601387 (not (matchR!1669 (regex!2353 (rule!4098 t2!34)) lt!441626)))))

(assert (= (and start!118646 res!601376) b!1333677))

(assert (= (and b!1333677 res!601405) b!1333682))

(assert (= (and b!1333682 res!601398) b!1333692))

(assert (= (and b!1333692 res!601395) b!1333676))

(assert (= (and b!1333676 res!601396) b!1333680))

(assert (= (and b!1333680 res!601399) b!1333673))

(assert (= (and b!1333673 res!601406) b!1333678))

(assert (= (and b!1333678 res!601403) b!1333715))

(assert (= (and b!1333715 res!601374) b!1333699))

(assert (= (and b!1333699 res!601402) b!1333685))

(assert (= (and b!1333685 (not res!601407)) b!1333695))

(assert (= (and b!1333695 (not res!601401)) b!1333717))

(assert (= (and b!1333717 (not res!601393)) b!1333688))

(assert (= (and b!1333688 (not res!601394)) b!1333701))

(assert (= (and b!1333701 (not res!601390)) b!1333708))

(assert (= (and b!1333708 (not res!601381)) b!1333710))

(assert (= (and b!1333710 (not res!601379)) b!1333719))

(assert (= (and b!1333719 (not res!601377)) b!1333690))

(assert (= (and b!1333690 (not res!601391)) b!1333696))

(assert (= (and b!1333696 (not res!601380)) b!1333716))

(assert (= (and b!1333716 (not res!601371)) b!1333691))

(assert (= (and b!1333691 (not res!601383)) b!1333709))

(assert (= (and b!1333709 (not res!601388)) b!1333684))

(assert (= (and b!1333684 (not res!601400)) b!1333713))

(assert (= (and b!1333713 (not res!601384)) b!1333674))

(assert (= (and b!1333674 (not res!601382)) b!1333720))

(assert (= (and b!1333720 (not res!601386)) b!1333712))

(assert (= (and b!1333712 (not res!601372)) b!1333698))

(assert (= (and b!1333698 (not res!601404)) b!1333681))

(assert (= (and b!1333681 (not res!601375)) b!1333703))

(assert (= (and b!1333703 (not res!601397)) b!1333697))

(assert (= (and b!1333697 (not res!601378)) b!1333721))

(assert (= (and b!1333721 (not res!601387)) b!1333714))

(assert (= (and b!1333714 c!218453) b!1333705))

(assert (= (and b!1333714 (not c!218453)) b!1333693))

(assert (= (and b!1333714 (not res!601373)) b!1333704))

(assert (= (and b!1333704 c!218452) b!1333675))

(assert (= (and b!1333704 (not c!218452)) b!1333672))

(assert (= (and b!1333704 (not res!601389)) b!1333683))

(assert (= (and b!1333683 (not res!601392)) b!1333711))

(assert (= (and b!1333711 (not res!601385)) b!1333686))

(assert (= b!1333706 b!1333718))

(assert (= b!1333689 b!1333706))

(assert (= (and start!118646 ((_ is Cons!13587) rules!2550)) b!1333689))

(assert (= b!1333694 b!1333700))

(assert (= b!1333702 b!1333694))

(assert (= start!118646 b!1333702))

(assert (= b!1333679 b!1333707))

(assert (= b!1333687 b!1333679))

(assert (= start!118646 b!1333687))

(declare-fun m!1491005 () Bool)

(assert (=> b!1333715 m!1491005))

(declare-fun m!1491007 () Bool)

(assert (=> b!1333713 m!1491007))

(declare-fun m!1491009 () Bool)

(assert (=> b!1333703 m!1491009))

(declare-fun m!1491011 () Bool)

(assert (=> b!1333706 m!1491011))

(declare-fun m!1491013 () Bool)

(assert (=> b!1333706 m!1491013))

(declare-fun m!1491015 () Bool)

(assert (=> b!1333674 m!1491015))

(declare-fun m!1491017 () Bool)

(assert (=> b!1333674 m!1491017))

(declare-fun m!1491019 () Bool)

(assert (=> b!1333674 m!1491019))

(assert (=> b!1333674 m!1491019))

(declare-fun m!1491021 () Bool)

(assert (=> b!1333674 m!1491021))

(declare-fun m!1491023 () Bool)

(assert (=> b!1333679 m!1491023))

(declare-fun m!1491025 () Bool)

(assert (=> b!1333679 m!1491025))

(declare-fun m!1491027 () Bool)

(assert (=> b!1333716 m!1491027))

(declare-fun m!1491029 () Bool)

(assert (=> b!1333716 m!1491029))

(declare-fun m!1491031 () Bool)

(assert (=> b!1333716 m!1491031))

(declare-fun m!1491033 () Bool)

(assert (=> b!1333716 m!1491033))

(assert (=> b!1333716 m!1491029))

(declare-fun m!1491035 () Bool)

(assert (=> b!1333716 m!1491035))

(declare-fun m!1491037 () Bool)

(assert (=> b!1333687 m!1491037))

(declare-fun m!1491039 () Bool)

(assert (=> b!1333692 m!1491039))

(declare-fun m!1491041 () Bool)

(assert (=> b!1333686 m!1491041))

(assert (=> b!1333686 m!1491041))

(declare-fun m!1491043 () Bool)

(assert (=> b!1333686 m!1491043))

(declare-fun m!1491045 () Bool)

(assert (=> b!1333705 m!1491045))

(assert (=> b!1333705 m!1491045))

(declare-fun m!1491047 () Bool)

(assert (=> b!1333705 m!1491047))

(declare-fun m!1491049 () Bool)

(assert (=> b!1333695 m!1491049))

(assert (=> b!1333695 m!1491049))

(declare-fun m!1491051 () Bool)

(assert (=> b!1333695 m!1491051))

(declare-fun m!1491053 () Bool)

(assert (=> b!1333695 m!1491053))

(declare-fun m!1491055 () Bool)

(assert (=> start!118646 m!1491055))

(declare-fun m!1491057 () Bool)

(assert (=> start!118646 m!1491057))

(declare-fun m!1491059 () Bool)

(assert (=> b!1333697 m!1491059))

(declare-fun m!1491061 () Bool)

(assert (=> b!1333697 m!1491061))

(declare-fun m!1491063 () Bool)

(assert (=> b!1333697 m!1491063))

(declare-fun m!1491065 () Bool)

(assert (=> b!1333697 m!1491065))

(declare-fun m!1491067 () Bool)

(assert (=> b!1333701 m!1491067))

(declare-fun m!1491069 () Bool)

(assert (=> b!1333676 m!1491069))

(declare-fun m!1491071 () Bool)

(assert (=> b!1333704 m!1491071))

(assert (=> b!1333704 m!1491071))

(declare-fun m!1491073 () Bool)

(assert (=> b!1333704 m!1491073))

(declare-fun m!1491075 () Bool)

(assert (=> b!1333691 m!1491075))

(declare-fun m!1491077 () Bool)

(assert (=> b!1333690 m!1491077))

(assert (=> b!1333690 m!1491077))

(declare-fun m!1491079 () Bool)

(assert (=> b!1333690 m!1491079))

(assert (=> b!1333690 m!1491077))

(assert (=> b!1333690 m!1491077))

(declare-fun m!1491081 () Bool)

(assert (=> b!1333690 m!1491081))

(declare-fun m!1491083 () Bool)

(assert (=> b!1333714 m!1491083))

(assert (=> b!1333714 m!1491083))

(declare-fun m!1491085 () Bool)

(assert (=> b!1333714 m!1491085))

(declare-fun m!1491087 () Bool)

(assert (=> b!1333696 m!1491087))

(assert (=> b!1333696 m!1491087))

(declare-fun m!1491089 () Bool)

(assert (=> b!1333696 m!1491089))

(declare-fun m!1491091 () Bool)

(assert (=> b!1333684 m!1491091))

(declare-fun m!1491093 () Bool)

(assert (=> b!1333720 m!1491093))

(declare-fun m!1491095 () Bool)

(assert (=> b!1333673 m!1491095))

(declare-fun m!1491097 () Bool)

(assert (=> b!1333673 m!1491097))

(declare-fun m!1491099 () Bool)

(assert (=> b!1333675 m!1491099))

(assert (=> b!1333675 m!1491099))

(declare-fun m!1491101 () Bool)

(assert (=> b!1333675 m!1491101))

(declare-fun m!1491103 () Bool)

(assert (=> b!1333688 m!1491103))

(declare-fun m!1491105 () Bool)

(assert (=> b!1333709 m!1491105))

(assert (=> b!1333709 m!1491105))

(declare-fun m!1491107 () Bool)

(assert (=> b!1333709 m!1491107))

(declare-fun m!1491109 () Bool)

(assert (=> b!1333694 m!1491109))

(declare-fun m!1491111 () Bool)

(assert (=> b!1333694 m!1491111))

(declare-fun m!1491113 () Bool)

(assert (=> b!1333699 m!1491113))

(declare-fun m!1491115 () Bool)

(assert (=> b!1333699 m!1491115))

(declare-fun m!1491117 () Bool)

(assert (=> b!1333699 m!1491117))

(declare-fun m!1491119 () Bool)

(assert (=> b!1333699 m!1491119))

(declare-fun m!1491121 () Bool)

(assert (=> b!1333699 m!1491121))

(declare-fun m!1491123 () Bool)

(assert (=> b!1333699 m!1491123))

(declare-fun m!1491125 () Bool)

(assert (=> b!1333685 m!1491125))

(assert (=> b!1333685 m!1491125))

(declare-fun m!1491127 () Bool)

(assert (=> b!1333685 m!1491127))

(declare-fun m!1491129 () Bool)

(assert (=> b!1333698 m!1491129))

(declare-fun m!1491131 () Bool)

(assert (=> b!1333698 m!1491131))

(declare-fun m!1491133 () Bool)

(assert (=> b!1333681 m!1491133))

(assert (=> b!1333719 m!1491077))

(declare-fun m!1491135 () Bool)

(assert (=> b!1333719 m!1491135))

(declare-fun m!1491137 () Bool)

(assert (=> b!1333719 m!1491137))

(assert (=> b!1333719 m!1491077))

(declare-fun m!1491139 () Bool)

(assert (=> b!1333719 m!1491139))

(assert (=> b!1333719 m!1491077))

(declare-fun m!1491141 () Bool)

(assert (=> b!1333712 m!1491141))

(assert (=> b!1333712 m!1491141))

(declare-fun m!1491143 () Bool)

(assert (=> b!1333712 m!1491143))

(declare-fun m!1491145 () Bool)

(assert (=> b!1333717 m!1491145))

(declare-fun m!1491147 () Bool)

(assert (=> b!1333717 m!1491147))

(declare-fun m!1491149 () Bool)

(assert (=> b!1333702 m!1491149))

(declare-fun m!1491151 () Bool)

(assert (=> b!1333708 m!1491151))

(declare-fun m!1491153 () Bool)

(assert (=> b!1333711 m!1491153))

(declare-fun m!1491155 () Bool)

(assert (=> b!1333711 m!1491155))

(assert (=> b!1333711 m!1491155))

(declare-fun m!1491157 () Bool)

(assert (=> b!1333711 m!1491157))

(declare-fun m!1491159 () Bool)

(assert (=> b!1333711 m!1491159))

(declare-fun m!1491161 () Bool)

(assert (=> b!1333721 m!1491161))

(declare-fun m!1491163 () Bool)

(assert (=> b!1333710 m!1491163))

(declare-fun m!1491165 () Bool)

(assert (=> b!1333682 m!1491165))

(declare-fun m!1491167 () Bool)

(assert (=> b!1333677 m!1491167))

(declare-fun m!1491169 () Bool)

(assert (=> b!1333678 m!1491169))

(check-sat (not b!1333715) (not b!1333674) (not b!1333689) (not b!1333695) (not b!1333681) (not b!1333711) (not b!1333696) (not b!1333688) (not b!1333704) (not b!1333701) (not b!1333678) (not b!1333699) (not b!1333694) (not b!1333708) (not b!1333682) (not b!1333702) (not b_next!33043) (not b!1333719) (not b!1333679) (not b!1333703) (not b!1333709) (not b!1333716) (not b!1333706) (not b!1333686) (not b_next!33053) (not b!1333712) b_and!89105 (not b_next!33049) (not b!1333690) (not b!1333685) (not b!1333698) (not b!1333684) (not b!1333717) (not b!1333720) (not b!1333675) (not b!1333673) b_and!89111 (not start!118646) (not b!1333705) (not b!1333687) b_and!89109 (not b_next!33051) (not b!1333697) (not b!1333714) (not b_next!33045) b_and!89103 (not b!1333676) (not b!1333677) (not b!1333692) b_and!89113 (not b_next!33047) (not b!1333721) (not b!1333713) (not b!1333710) b_and!89107 (not b!1333691))
(check-sat (not b_next!33043) (not b_next!33049) b_and!89111 b_and!89109 (not b_next!33051) (not b_next!33045) b_and!89103 b_and!89107 (not b_next!33053) b_and!89105 b_and!89113 (not b_next!33047))
